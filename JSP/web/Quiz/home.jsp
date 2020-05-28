<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String centerPage = request.getParameter("centerPage");

    if (centerPage == null || "home".contentEquals(centerPage))
        centerPage = "module/Center_home.jsp";
    else if ("write".contentEquals(centerPage))
        centerPage = "module/Center_write.jsp";
%>
<html>
<head>
    <title>Home</title>
</head>
<body>
<tr>
    <td colspan="2">
        <jsp:include page="module/top.jsp" flush="false"/>
    </td>
</tr>
<tr>
    <td width="100" valign="top">
        <jsp:include page="<%=centerPage%>"/>
        <br>
    </td>
</tr>
<tr>
    <td colspan="2">
        <jsp:include page="module/bottom.jsp" flush="false"/>
    </td>
</tr>

</body>
</html>
