<%@ page import="java.net.URLDecoder" %>
<%--
  User: iveci
  Date: 2020-06-05
  Time: 오전 9:56
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Cookie & Cream</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    if (cookies != null && cookies.length > 0) {
        for (Cookie cookie : cookies) {
            out.print("<br>");
            out.print("<h2>"+URLDecoder.decode(cookie.getName(), "UTF-8") + "</h2><br>" +
                    URLDecoder.decode(cookie.getValue(), "UTF-8") + "<br>");
            out.print("<hr>");
        }
    }
%>
</body>
</html>
