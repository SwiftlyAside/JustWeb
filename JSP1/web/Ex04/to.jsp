<%--
  Created by IntelliJ IDEA.
  User: iveci
  Date: 2020-05-29
  Time: 오후 3:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String data = request.getParameter("data");
    if ("".contentEquals(data))
        data = String.format("inputProc에서 설정한 값: %s", request.getAttribute("data"));
%>
<html>
<head>
    <title>TO</title>
</head>
<body>
전달받음 : <%=data%>
</body>
</html>
