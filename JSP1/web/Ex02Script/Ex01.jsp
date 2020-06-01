<%--
  Created by IntelliJ IDEA.
  User: iveci
  Date: 2020-05-28
  Time: 오전 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Ilan Bluestone</title>
</head>
<body>
<%
    for (int i = 0; i < 10; i++) {
        out.println(i);
%><br>
<%
    }
    for (int i = 10; i < 20; i++)
        out.println(i + "<br>");
%>


<h1>THIS IS JSP</h1>
</body>
</html>
