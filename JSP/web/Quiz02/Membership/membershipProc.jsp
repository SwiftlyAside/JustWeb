<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String usrName = request.getParameter("usrName");
    String usrId = request.getParameter("usrId");
    String usrPass = request.getParameter("usrPass");
    String usrPassOk = request.getParameter("usrPassOk");

    String forwardPage = "membershipForm.jsp";
    if (usrPass.contentEquals(usrPassOk))
        forwardPage = "../membershipOK.jsp";
%>
<jsp:forward page="<%=forwardPage%>"/>