<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String userName = request.getParameter("userName");
    String userId = request.getParameter("userId");
    String userPass = request.getParameter("userPass");
    String userPassOk = request.getParameter("userPassOk");

    String forward = "membership.jsp";

    if (userPass.contentEquals(userPassOk))
        forward = "joinComplete.jsp";
%>
<jsp:forward page="<%=forward%>"/>