<%@ page import="Care.Lab.Board" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/common/dbConnection.jspf" %>
<%!
    private final String SEARCH_ALL = "all";
    private final String SEARCH_TITLE = "title";
    private final String SEARCH_WRITER = "writer";

    public List<Board> Select(Connection connection, String search, String searchBy, int start, int end) {
        List<Board> result = new ArrayList<>();
        PreparedStatement statement = null;
        ResultSet resultSet;
        String subsql = null;
        if (SEARCH_ALL.contentEquals(searchBy))
            subsql = "select * from BOARD where ID = ? or TITLE like ? order by no desc";
        else if (SEARCH_TITLE.contentEquals(searchBy))
            subsql = "select * from BOARD where TITLE like ? order by no desc";
        else if (SEARCH_WRITER.contentEquals(searchBy))
            subsql = "select * from BOARD where ID = ? order by no desc";
        String sql = "select * from (" +
                "select no, id, title, contents, writedate, ROWNUM as rn " +
                "from (" +
                subsql + ")) " +
                "where rn > ? and rn <= ?";

        try {
            statement = connection.prepareStatement(sql);
            if (SEARCH_ALL.contentEquals(searchBy)) {
                statement.setString(1, search);
                statement.setString(2, "%" + search + "%");
                statement.setInt(3, start);
                statement.setInt(4, end);
            } else if (SEARCH_TITLE.contentEquals(searchBy)) {
                statement.setString(1, "%" + search + "%");
                statement.setInt(2, start);
                statement.setInt(3, end);
            } else if (SEARCH_WRITER.contentEquals(searchBy)) {
                statement.setString(1, search);
                statement.setInt(2, start);
                statement.setInt(3, end);
            }
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                result.add(new Board(
                        resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getString(4),
                        resultSet.getDate(5)
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return result;
    }

    public int getTotal(Connection connection,String search, String searchBy) {
        int result = 0;
        PreparedStatement statement = null;
        ResultSet resultSet;
        String subsql = null;
        if (SEARCH_ALL.contentEquals(searchBy))
            subsql = "where ID = ? or TITLE like ?";
        else if (SEARCH_TITLE.contentEquals(searchBy))
            subsql = "where TITLE like ?";
        else if (SEARCH_WRITER.contentEquals(searchBy))
            subsql = "where ID = ?";
        String sql = "select count(*) from BOARD " + subsql;

        try {
            statement = connection.prepareStatement(sql);
            if (SEARCH_ALL.contentEquals(searchBy)) {
                statement.setString(1, search);
                statement.setString(2, "%" + search + "%");
            }
            else if (SEARCH_TITLE.contentEquals(searchBy)) {
                statement.setString(1, "%" + search + "%");
            }
            else if (SEARCH_WRITER.contentEquals(searchBy)) {
                statement.setString(1, search);
            }
            resultSet = statement.executeQuery();

            if (resultSet.next()) {
                result = resultSet.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return result;
    }
%>
<%
    String searchBy = request.getParameter("searchBy");
    String search = request.getParameter("search");
    if (searchBy == null) searchBy = SEARCH_ALL;
    int pageNum = request.getParameter("pageNum") != null ?
            Integer.parseInt(request.getParameter("pageNum")) - 1 : 0;
    int blockSize = request.getParameter("block") != null ?
            Integer.parseInt(request.getParameter("block")) : 5;
    Connection connection = getConnection("localhost", "1521", "XE");
    if (connection != null) {
        List<Board> s = Select(connection, search, searchBy, pageNum * blockSize, (pageNum + 1) * blockSize);
        request.setAttribute("boardList", s);
        request.setAttribute("total", getTotal(connection, search, searchBy));
        System.out.println(s.size());
        request.setAttribute("block", blockSize);
        request.setAttribute("pageNum", pageNum + 1);
        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
<jsp:forward page="/index.jsp">
    <jsp:param name="form" value="board"/>
    <jsp:param name="searchBy" value="<%=searchBy%>"/>
    <jsp:param name="search" value="<%=search%>"/>
</jsp:forward>