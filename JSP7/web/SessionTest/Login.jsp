<%@ page import="com.x.SessionTest" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
    session.setAttribute("userId", "swiftly");
    SessionTest.getSessions();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>LOGIN</title>
</head>
<body>
<h2>LOGIN</h2>
<a href="${pageContext.request.contextPath}/SessionTest/Logout.jsp">Logout</a>
</body>
</html>