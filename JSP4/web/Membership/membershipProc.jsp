<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<jsp:useBean id="user" class="Beans.User" scope="session"/>
<jsp:setProperty name="user" property="*"/>
<%
    request.setAttribute("user", user);
%>
<jsp:forward page="membershipCheckAuth.jsp"/>