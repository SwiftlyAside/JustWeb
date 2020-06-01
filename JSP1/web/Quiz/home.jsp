<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String centerPage = request.getParameter("centerPage");
    if (centerPage == null) centerPage = "home";
    centerPage = String.format("module/Center_%s.jsp", centerPage);
%>
<html>
<head>
    <title>Home</title>
</head>
<body>
<table style="width: auto; margin: auto">
    <tr>
        <td colspan="2">
            <jsp:include page="module/top.jsp" flush="false"/>
        </td>
    </tr>
    <tr>
        <td valign="top">
            <jsp:include page="<%=centerPage%>"/>
            <br>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <jsp:include page="module/bottom.jsp" flush="false"/>
        </td>
    </tr>
</table>

</body>
</html>
