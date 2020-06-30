<?xml version="1.0" encoding="utf-8" ?>
<%@ page contentType="text/xml;charset=UTF-8" %>
<%@include file="dbConnection.jspf" %>
<%
    String sql = "select * from PRODUCT";
    PreparedStatement ps;
    try (Connection connection = getConnection("localhost", "1521", "XE")) {
        ps = connection.prepareStatement(sql);
        out.print("<products>");
        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                out.print("<product>");
                out.print("<id>" + rs.getInt("productid") + "</id>");
                out.print("<name>" + rs.getString("productname") + "</name>");
                out.print("</product>");
            }
        }
        out.print("<products>");
    } catch (SQLException e) {
        e.printStackTrace();
    }


%>