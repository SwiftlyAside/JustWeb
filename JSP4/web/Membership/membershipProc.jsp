<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<jsp:useBean id="user" class="Beans.User" scope="session"/>
<jsp:setProperty name="user" property="*"/>
<%
    request.setCharacterEncoding("UTF-8");
    String forwardPage = "membership.jsp";
    String error = "";
    if (user.getUserId() == null) error = "id";
    else if (user.getUserPass() == null || user.getUserPassOk() == null) error = "pw";
    else if (user.getUserName() == null) error = "name";
    else if (user.getUserEmail() == null) error = "email";
    else if (!user.getUserPass().contentEquals(user.getUserPassOk())) error = "pwNotMatch";
    else {
        request.setAttribute("user", user);
        forwardPage = "membershipCheckAuth.jsp";
    }
%>
<jsp:forward page="<%=forwardPage%>">
    <jsp:param name="error" value="<%=error%>"/>
</jsp:forward>