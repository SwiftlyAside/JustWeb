<%@ page import="Bean.CookieGenerator" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    response.addCookie(CookieGenerator.expiredCookie("auth","",0));
%>
<html>
<head>
    <title>Logout</title>
</head>
<body>
로그아웃 하였습니다.
<br>
<a href="login.jsp">Login</a>
</body>