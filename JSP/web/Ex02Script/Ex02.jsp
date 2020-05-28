<%--
  Created by IntelliJ IDEA.
  User: iveci
  Date: 2020-05-28
  Time: 오전 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int sum = 0;
    for (int i = 1; i <= 10; i++)
        sum += i;
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>sum = <%=sum%>
</h1>
<input type="text" name="sum" value="10"><br>
<input type="text" name="sum" value="<%=sum%>"><br>
2 + 3 = <%=2 + 3%>
</body>
</html>
