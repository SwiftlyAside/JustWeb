<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/common/dbConnection.jspf" %>
<%!
    public boolean Delete(Connection connection, int no) {
        boolean result = true;
        PreparedStatement statement = null;
        String sql = "delete from BOARD where NO = ?";
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, no);
            statement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
            result = false;
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
    StringBuilder errorLog = new StringBuilder();
    String[] delNos = request.getParameterValues("delNo");
    Connection connection = getConnection("localhost", "1521", "XE");
    if (connection != null) {
        for (String delNo : delNos) {
            if (!Delete(connection, Integer.parseInt(delNo))) {
                errorLog.append("다음 글은 삭제가 정상적으로 처리되지 않았습니다.: ").append(delNo).append("<br>");
            }
        }
        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
<jsp:forward page="/board/boardProc.jsp?index=russia">
    <jsp:param name="errorLog" value="<%=errorLog.toString()%>"/>
</jsp:forward>