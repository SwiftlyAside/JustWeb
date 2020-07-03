<%@ page import="java.sql.Connection" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="dbConnection.jspf"%>
<%
    boolean success = false;
    String ea = request.getParameter("ea");
    String productId = request.getParameter("productId");
    String sql = "update PRODUCT set EA = EA - ? where PRODUCTID = ? ";
    Connection connection = getConnection("localhost", "1521", "XE");
    try (PreparedStatement ps = connection.prepareStatement(sql)) {
        ps.setInt(1, Integer.parseInt(ea));
        ps.setInt(2, Integer.parseInt(productId));
        success = ps.execute();
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
<%=success ? "잘 팔렸다!" : "이거 안팔린다!"%>