<%@ page contentType="text/html;charset=UTF-8" %>
<%
    Cookie cookie = new Cookie("path", "/jsp5/Ex01Cookie/Ex02");
    cookie.setPath("/jsp5/Ex01Cookie/Ex02");
    response.addCookie(cookie);
%>
<html>
<head>
    <title>쿠키 생성</title>
</head>
<body>
<h2>다음 쿠키를 생성했습니다.</h2>
<%=cookie.getName()%> : <%=cookie.getValue()%><br>
[<%=cookie.getPath()%>]
</body>
</html>
