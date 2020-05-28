<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: iveci
  Date: 2020-05-28
  Time: 오전 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>REQUEST: VIEW2</title>
</head>
<body>
<h1>입력한 정보</h1>
<hr>
<%
    Enumeration<String> names = request.getParameterNames();
    while (names.hasMoreElements()) {
        String element = names.nextElement();
        String[] parameterValues = request.getParameterValues(element);
        out.print(String.format("%s: %s<br>",
                element.equals("name") ?
                        "이름" :
                        element.equals("address") ?
                                "주소" :
                                "동물",
                parameterValues.length == 1 ? parameterValues[0] : Arrays.toString(parameterValues)));
    }
%>
</body>
</html>
