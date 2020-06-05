<%@ page import="Bean.CookieGenerator" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    Cookie cookie1 = new Cookie("Domain", "apertureLab");
    cookie1.setDomain("www.aperture.co.kr");
    cookie1.setPath("/");
    response.addCookie(cookie1);
    cookie1.setDomain("lab.aperture.co.kr");
    cookie1.setPath("/");
    response.addCookie(cookie1);

    Cookie cookie2 = new Cookie("src", "image");
    cookie2.setPath("/");
    response.addCookie(cookie2);
%>
<html>
<head>
    <title>쿠키 생성</title>
</head>
<body>
<h2>다음 쿠키를 생성했습니다.</h2>
<%=cookie1.getName()%> : <%=cookie1.getValue()%><br>
[<%=cookie1.getDomain()%>]
</body>
</html>
