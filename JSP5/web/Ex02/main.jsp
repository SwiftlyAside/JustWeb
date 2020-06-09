<%--
  User: iveci
  Date: 2020-06-09
  Time: 오후 3:07
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String tableName = request.getParameter("tableName");
    String forwardPage = "viewProc.jsp";
    if (tableName == null) forwardPage = "viewProc.jsp";
    else if ("Categories".contentEquals(tableName)) {
        forwardPage = "viewProc2.jsp";
    }
%>
<html>
<head>
    <title>THIS IS WEB</title>
</head>
<body>
<jsp:include page="viewer.jsp"/>
<hr>
<%--<jsp:include page="<%=forwardPage%>"/>--%>
<jsp:include page="viewProcAlt.jsp"/>
</body>
</html>
