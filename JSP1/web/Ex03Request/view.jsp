<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
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
    request.setCharacterEncoding("UTF-8");
    Enumeration<String> names = request.getParameterNames();
    Map<String, String[]> params = request.getParameterMap();
    Map<String, String> map = new HashMap<>();
    map.put("name", "이름");
    map.put("address", "주소");
    map.put("pet", "동물");
    while (names.hasMoreElements()) {
        String element = names.nextElement();
        if (params.get(element).length == 1)
            out.print(map.get(element) + ": " + params.get(element)[0] + "<br>");
        else
            out.print(map.get(element) + ": " + Arrays.toString(params.get(element)).replace(",", "][") + "<br>");
    }
%>
</body>
</html>
