<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="user" class="Beans.User" scope="session"/>
<jsp:setProperty name="user" property="*"/>
<%
    String forwardPage = user.getUserPass().contentEquals(user.getUserPassOk()) ?
            "membershipCheckAuth.jsp" : "membership.jsp";
    request.setAttribute("user", user);
%>
<jsp:forward page="<%=forwardPage%>"/>