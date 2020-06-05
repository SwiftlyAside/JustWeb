<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.net.URLEncoder" %><%--
  User: iveci
  Date: 2020-06-05
  Time: 오전 9:38
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if ("code".contentEquals(cookie.getName())) {
                Cookie c = new Cookie("code", "00290902");
//                c.setMaxAge(0);
                response.addCookie(c);
            }
            if ("mean".contentEquals(cookie.getName())) {
                Cookie c = new Cookie("mean", URLEncoder.encode("야 가서 커피좀 타와라", "UTF-8"));
//                c.setMaxAge(0);
                response.addCookie(c);
            }
        }
    }
%>
<html>
<head>
    <title>쿠키 생성</title>
</head>
<body>
<i>처리 끝났습니다.</i>
</body>
</html>
