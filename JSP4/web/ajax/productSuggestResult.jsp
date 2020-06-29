<%@ page import="java.util.regex.Pattern" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="dbConnection.jspf" %>
<%
    Connection connection = getConnection("localhost", "1521", "XE");
    String findStr = request.getParameter("findStr");
    String sql = "select PRODUCTID, PRODUCTNAME from PRODUCT " +
            "where PRODUCTNAME like ? ";
    try (PreparedStatement statement = connection.prepareStatement(sql)) {
        statement.setString(1, "%" + findStr + "%");
        try (ResultSet resultSet = statement.executeQuery()) {
            StringBuffer sb = new StringBuffer("[");
            String prefix = "";
            while (resultSet.next()) {
                sb.append(prefix);
                prefix = ",";
                sb.append(String.format("{'id':'%s','name':'%s'}", resultSet.getString("PRODUCTID"), resultSet.getString("PRODUCTNAME")));
            }
            sb.append("]");
            out.print(Pattern.compile("'").matcher(sb).replaceAll("\""));
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>