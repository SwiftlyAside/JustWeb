<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  User: iveci
  Date: 2020-06-05
  Time: 오후 2:34
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    Date date = new Date();
    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

%>
<html>
<head>
    <title>Session</title>
</head>
<body>
Date : <%=date%><br>
format : <%=formatter.format(date)%>
<br>
<%
    date.setTime(session.getCreationTime());
    out.print("세션 생성 시간 : " + formatter.format(date) + "<br>");
    date.setTime(session.getLastAccessedTime());
    out.print("최근 접근 시간 : " + formatter.format(date) + "<br>");
%>
</body>
</html>
