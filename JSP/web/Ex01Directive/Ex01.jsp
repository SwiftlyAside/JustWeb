<%--
  Created by IntelliJ IDEA.
  User: iveci
  Date: 2020-05-28
  Time: 오전 9:44
  To change this template use File | Settings | File Templates.
--%>
<%--This is Directive, that refers info of the page.--%>
<%@ page contentType="text/html; ISO-8859-1;charset=UTF-8" pageEncoding="UTF-8"
         import="java.util.Calendar, java.util.Date" %>
<%
    Date now = new Date();
    Calendar calendar = Calendar.getInstance();
%>
<html>
<head>
    <title>Ilan Bluestone</title>
</head>
<body>
<h1>현재 시각: <%=now%>
</h1>
<h3>오늘은
    <%=calendar.get(Calendar.YEAR)%>년
    <%=calendar.get(Calendar.MONTH)%>월
    <%=calendar.get(Calendar.DATE)%>일.
</h3>
</body>
</html>
