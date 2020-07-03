<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="dbConnection.jspf" %>
<%
    String findStr = request.getParameter("findStr");
    String sql = "select PRODUCTID, PRODUCTNAME from PRODUCT " +
            "where PRODUCTNAME like ? ";
    Connection connection = getConnection("localhost", "1521", "XE");
    try (PreparedStatement statement = connection.prepareStatement(sql)) {
        statement.setString(1, "%" + findStr + "%");
        try (ResultSet rs = statement.executeQuery()) {

            while (rs.next()) { %>

<%
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>