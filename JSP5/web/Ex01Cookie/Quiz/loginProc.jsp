<%@ page import="Bean.CookieGenerator" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<%
    String userId = request.getParameter("userId");
    String userPass = request.getParameter("userPass");

    if (userId.contentEquals(userPass)) {
        response.addCookie(CookieGenerator.createCookie("auth", userId));

%>
로그인에 성공했습니다.<br>
<%
} else {
%>
<script>
    alert('로그인 실패!')
</script>
<%
    }
%>
<a href="loginCheck.jsp">LoginCheck</a>
</body>