<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.net.URLDecoder" %>
<%--
  User: iveci
  Date: 2020-06-05
  Time: 오전 9:38
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    Map<String, String> cookieMap = new HashMap<>();
    cookieMap.put("code", "091032");
    cookieMap.put("mean", URLEncoder.encode("공부열심히", "UTF-8"));

    for (Map.Entry<String, String> cookieInfo : cookieMap.entrySet()) {
        Cookie cookie = new Cookie(cookieInfo.getKey(), cookieInfo.getValue());
        response.addCookie(cookie);
    }
%>
<html>
<head>
    <title>쿠키 MAN</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            out.print("<br>");
            out.print("<h2>"+URLDecoder.decode(cookie.getName(), "UTF-8") + "</h2><br>" +
                    URLDecoder.decode(cookie.getValue(), "UTF-8") + "<br>");
            out.print("<hr>");
        }
    }
    else {
        out.print("<h1>쿠키 없음.</h1>");
    }
%>
</body>
</html>
