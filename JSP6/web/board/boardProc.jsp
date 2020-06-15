<%@ page import="Care.Lab.Board" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/common/dbConnection.jspf" %>
<%!
    public List<Board> Select(Connection connection, int start, int end) {
        List<Board> result = new ArrayList<>();
        PreparedStatement statement = null;
        ResultSet resultSet;
        String sql = "select * from (" +
                "select no, id, title, contents, writedate, ROWNUM as rn " +
                "from (" +
                "select * from BOARD order by no desc)) " +
                "where rn > ? and rn <= ?";

        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, start);
            statement.setInt(2, end);
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

    public int getTotal(Connection connection) {
        int result = 0;
        Statement statement = null;
        ResultSet resultSet;
        String sql = "select count(*) from BOARD";

        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);

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
    int pageNum = request.getParameter("pageNum") != null ?
            Integer.parseInt(request.getParameter("pageNum")) - 1 : 0;
    int blockSize = request.getParameter("block") != null ?
            Integer.parseInt(request.getParameter("block")) : 5;
    Connection connection = getConnection("192.168.0.108", "1521", "XE");
    if (connection != null) {
        List<Board> s = Select(connection, pageNum * blockSize, (pageNum + 1) * blockSize);
        request.setAttribute("boardList", s);
        request.setAttribute("total", getTotal(connection));
        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
<jsp:forward page="/index.jsp">
    <jsp:param name="form" value="board"/>
</jsp:forward>
