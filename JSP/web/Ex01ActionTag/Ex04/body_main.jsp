<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
    <title>body_main</title>
</head>
<body>
include 전 name : <%=request.getParameter("name")%>
<hr>
<jsp:include page="body_sub.jsp">
    <jsp:param name="name" value="우선처리"/>
</jsp:include>
<hr>
include 전 name : <%=request.getParameter("name")%>
</body>
</html>
