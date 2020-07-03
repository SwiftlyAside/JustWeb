<?xml version="1.0" encoding="UTF-8" ?>
<%@ page contentType="text/xml;charset=UTF-8" %>
<%@ include file="dbConnection.jspf" %>

<%
    int id = Integer.parseInt(request.getParameter("productId"));
    String sql = "select * from PRODUCT where  PRODUCTID = ?";
    Connection connection = getConnection("localhost", "1521", "XE");

    try (PreparedStatement ps = connection.prepareStatement(sql)) {
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
%>
<products>
    <product>
        <id><%=rs.getInt("productId")%></id>
        <name><%=rs.getString("productName")%></name>
        <ea><%=rs.getInt("ea")%></ea>
    </product>
</products>
<%
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>