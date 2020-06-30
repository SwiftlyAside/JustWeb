<%@ page import="java.util.regex.Pattern" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="dbConnection.jspf" %>
<%
    String findStr = request.getParameter("findStr");
    Connection connection = getConnection("localhost", "1521", "XE");
    String sql = "select PRODUCTID, PRODUCTNAME " +
            "from PRODUCT " +
            "where PRODUCTID = ?";
    try (PreparedStatement statement = connection.prepareStatement(sql)) {
        statement.setString(1, findStr);
        try (ResultSet rs = statement.executeQuery()) {
            StringBuffer json = new StringBuffer("{");
            if (rs.next()) {
                json.append(String.format("'id':'%s','name':'%s'",
                        rs.getString("PRODUCTID"), rs.getString("PRODUCTNAME").replaceAll("'","‘")));
            }
            json.append("}");
            out.print(Pattern.compile("'").matcher(json).replaceAll("\""));
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>