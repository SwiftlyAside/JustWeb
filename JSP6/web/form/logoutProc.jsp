<%@ page contentType="text/html;charset=UTF-8" %>
<%
    session.removeAttribute("userId");
%>
<jsp:forward page="/index.jsp">
    <jsp:param name="form" value="home"/>
</jsp:forward>