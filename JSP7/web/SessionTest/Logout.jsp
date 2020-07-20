<%@ page contentType="text/html; charset=UTF-8" %>
<%
    session.removeAttribute("userId");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>LOG OUT</title>
</head>
<body>
<h2>LOG OUT</h2>
<a href="${pageContext.request.contextPath}/SessionTest/Login.jsp">Login</a>
</body>
</html>