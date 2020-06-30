<?xml version="1.0" encoding="utf-8" ?>
<%@ page contentType="text/xml;charset=UTF-8" %>
<%@include file="dbConnection.jspf" %>
<%
    String findStr = request.getParameter("findStr");
    String sql = "select * from PRODUCT where PRODUCTNAME like ? ";

    try (Connection connection = getConnection("localhost", "1521", "XE");
         PreparedStatement ps = connection.prepareStatement(sql)) {
        ps.setString(1, "%" + findStr + "%");
        out.print("<products>");
        try (ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                out.print("<product>");
                out.print("<id>" + rs.getInt("productid") + "</id>");
                out.print("<name>" + rs.getString("productname") + "</name>");
                out.print("<unit>1 nyan</unit>");
                out.print("</product>");
            }
        }
        out.print("</products>");
    } catch (SQLException e) {
        e.printStackTrace();
    }


%>