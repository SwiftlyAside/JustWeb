<%@ page contentType="text/html;charset=UTF-8" %>
<%
    Cookie cookie = new Cookie("id", "APERTURE-www");
    cookie.setDomain("www.aperture.co.kr");
    response.addCookie(cookie);
%>
<html>
<head>
    <title>쿠키 생성</title>
</head>
<body>
<h2>다음 쿠키를 생성했습니다.</h2>
<%=cookie.getName()%> : <%=cookie.getValue()%><br>
[<%=cookie.getDomain()%>]
</body>
</html>
