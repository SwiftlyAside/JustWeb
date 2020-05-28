<%--
  Created by IntelliJ IDEA.
  User: iveci
  Date: 2020-05-28
  Time: 오전 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Quiz01</title>
</head>
<body>
<%
    for (int i = 1; i < 7; i++)
        out.print(String.format("<h%d>Hello JSP</h%d><br>", i, i));
%>
</body>
</html>
