<%--
  Created by IntelliJ IDEA.
  User: iveci
  Date: 2020-05-28
  Time: 오전 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    public int Multiply(int x, int y) {
        return x * y;
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>10 * 20 = <%=Multiply(10, 20)%>
</h1>
</body>
</html>
