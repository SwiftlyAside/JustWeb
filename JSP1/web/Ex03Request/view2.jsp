<%--
  Created by IntelliJ IDEA.
  User: iveci
  Date: 2020-05-28
  Time: 오전 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String ip = request.getRemoteAddr();
    String[] values = request.getParameterValues("pet");
%>

<html>
<head>
    <title>REQUEST: VIEW</title>
</head>
<body>
<h1><b>Results</b></h1>
Name = <%=name%><br>
Address = <%=address%><br>
Pets = <%
    if (values != null) {
        for (String value : values) {
%><%=value%>
<%
        }
    }
%><br>
Your IP = <%=ip%>
</body>
</html>
