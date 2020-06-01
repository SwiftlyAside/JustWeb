<%--
  Created by IntelliJ IDEA.
  User: iveci
  Date: 2020-05-28
  Time: 오전 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%!
    public int add(int x, int y) {
        return x + y;
    }

    public int subtract(int x, int y) {
        return x - y;
    }
%>
<%
    int value1 = 3;
    int value2 = 9;
    int addResult = add(value1, value2);
    int subtractResult = subtract(value1, value2);
%>
<html>
<head>
    <title>Quiz02</title>
</head>
<body>
<h1><%=value1%> + <%=value2%> = <%=addResult%><br></h1>

<h1><%=value1%> - <%=value2%> = <%=subtractResult%>
</h1>
</body>
</html>
