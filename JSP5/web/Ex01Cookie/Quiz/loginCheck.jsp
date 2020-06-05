<%@ page import="Bean.CookieGenerator" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>LoginCheck</title>
</head>
<body>
<%
    Cookie cookie = CookieGenerator.getCookie(request, "auth");
    if (cookie != null) {
        out.print("아이디 : " + cookie.getValue() + "로 로그인한 상태");
    }
    else  {
        out.print("로그아웃 상태");
    }
%><br>
<a href="logout.jsp">Logout</a>
</body>