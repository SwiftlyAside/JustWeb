<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String userName = request.getParameter("userName");
    String userId = request.getParameter("userId");
    String userPass = request.getParameter("userPass");
    String userPassOk = request.getParameter("userPassOk");

    String forward = "join.jsp";

    if (userPass.contentEquals(userPassOk)) {
        session.setAttribute("userName", userName);
        session.setAttribute("userId", userId);
        forward = "joinComplete.jsp";
    }
%>
<jsp:forward page="<%=forward%>">
    <jsp:param name="userName" value="<%=userName%>"/>
    <jsp:param name="userId" value="<%=userId%>"/>
</jsp:forward>