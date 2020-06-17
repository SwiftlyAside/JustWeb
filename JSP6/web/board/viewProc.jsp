<%@ page import="Care.Lab.Board" %>
<%@ page import="Care.Lab.Hits" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/common/dbConnection.jspf" %>
<%!
    private void setHits(Connection connection, int no) {
        PreparedStatement statement = null;
        ResultSet resultSet;
        String sql = "select * " +
                "from HITS " +
                "where NO = ?";

        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, no);
            resultSet = statement.executeQuery();
            if (resultSet.next()) updateHits(connection, no);
            else insertHits(connection, no);
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
    }

    private void insertHits(Connection connection, int no) {
        PreparedStatement statement = null;
        String sql =
                "insert into HITS values (?, 1)";
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, no);
            statement.execute();
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
    }

    private void updateHits(Connection connection, int no) {
        PreparedStatement statement = null;
        String sql =
                "update HITS set READNO = READNO + 1 " +
                        "where NO = ?";
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, no);
            statement.execute();
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
    }
%>
<%
    int no = request.getParameter("no") != null ?
            Integer.parseInt(request.getParameter("no")) : -1;

    Connection connection = getConnection("localhost", "1521", "XE");
    Map<Board, Hits> boardList = (Map<Board, Hits>) session.getAttribute("boardList");

    for (Board board : boardList.keySet()) {
        if (no == board.getNo()) {
            request.setAttribute("board", board);
            setHits(connection, board.getNo());
            break;
        }
    }
    if (connection != null) {
        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
<jsp:forward page="/index.jsp">
    <jsp:param name="form" value="view"/>
</jsp:forward>