<%@ page import="Care.Lab.Board" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/common/dbConnection.jspf" %>
<%!
    public Board getView(Connection connection, int no) {
        Board result = null;
        PreparedStatement statement = null;
        ResultSet resultSet;
        String sql = "select no, id, title, contents, writedate " +
                "from BOARD " +
                "where no = ?";

        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, no);
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                result = new Board(
                        resultSet.getInt("no"),
                        resultSet.getString("id"),
                        resultSet.getString("title"),
                        resultSet.getString("contents"),
                        resultSet.getDate("writeDate")
                );
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
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return result;
    }
%>
<%
    int no = request.getParameter("no") != null ?
            Integer.parseInt(request.getParameter("no")) : -1;
    Connection connection = getConnection("localhost", "1521", "XE");
    if (connection != null && no != -1) {
        Board board = getView(connection, no);
        if (board != null) {
            request.setAttribute("board", board);
%>
<jsp:forward page="/index.jsp">
    <jsp:param name="form" value="view"/>
</jsp:forward>
<%
    }
} else {
%>
<jsp:forward page="/board/boardProc.jsp">
    <jsp:param name="index" value="russia"/>
</jsp:forward>
<%
    }
%>

