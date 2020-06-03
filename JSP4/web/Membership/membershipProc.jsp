<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="user" class="Beans.User" scope="session"/>
<jsp:setProperty name="user" property="*"/>
<%
    String forwardPage = "membership.jsp";
    String error = "";
    if (user.getUserId() == null) error = "id";
    else if (user.getUserPass() == null) error = "pw";
    else if (user.getUserName() == null) error = "name";
    else if (user.getUserEmail() == null) error = "email";
    else if (!user.getUserPass().contentEquals(user.getUserPassOk())) error = "pwNotMatch";
    else forwardPage = "membershipCheckAuth.jsp";

    request.setAttribute("user", user);
%>
<jsp:forward page="<%=forwardPage%>">
    <jsp:param name="error" value="<%=error%>"/>
</jsp:forward>