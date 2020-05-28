<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String company = "MAN GmbH";
%>
<html>
<head>
    <title>include Directive</title>
</head>
<body>
<h1>A Good Corp</h1>
<hr>
<h3>Very good Corp</h3>
<hr>
<%@include file="includee.jspf" %>
<%=copyRight%>
</body>
</html>
