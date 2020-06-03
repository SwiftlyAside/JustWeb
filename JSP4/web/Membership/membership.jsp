<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String state = request.getParameter("state");
    String userName = request.getParameter("userName");
    String userId = request.getParameter("userId");
    String userEmail = request.getParameter("userEmail");

    if (state == null) state = "membership";
    if (userName == null) userName = "";
    if (userId == null) userId = "";
    if (userEmail == null) userEmail = "";
%>
<html>
<head>
    <title>MEMBERSHIP
    </title>
</head>
<body>
<jsp:include page="../Common/title.jsp">
    <jsp:param name="state" value="<%=state%>"/>
</jsp:include>
<jsp:include page="../Common/inputForm.jsp">
    <jsp:param name="state" value="<%=state%>"/>
    <jsp:param name="userName" value="<%=userName%>"/>
    <jsp:param name="userId" value="<%=userId%>"/>
    <jsp:param name="userEmail" value="<%=userEmail%>"/>
</jsp:include>
</body>
</html>
