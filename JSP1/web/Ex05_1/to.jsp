<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>FORWARD: TO</title>
</head>
<body>
<%
    Calendar calendar = (Calendar) request.getAttribute("time");
%>
현재 시간은 <%=calendar.get(Calendar.HOUR)%>시 <%=calendar.get(Calendar.MINUTE)%>분 <%=calendar.get(Calendar.SECOND)%>초.
</body>
</html>
