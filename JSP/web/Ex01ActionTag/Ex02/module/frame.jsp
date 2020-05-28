<%--
  Created by IntelliJ IDEA.
  User: iveci
  Date: 2020-05-28
  Time: 오후 2:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table width="400" border="1" cellpadding="0" cellspacing="0">
    <tr>
        <td colspan="2">
            <jsp:include page="top.jsp" flush="false"/>
        </td>
    </tr>
    <tr>
        <td width="100" valign="top">
            <jsp:include page="left.jsp" flush="false"/>
        </td>
        <td width="100" valign="top">
            레이아웃1<br><br><br>
        </td>
        <td colspan="2">
            <jsp:include page="bottom.jsp" flush="false"/>
        </td>
    </tr>
</table>
</body>
</html>
