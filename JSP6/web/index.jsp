<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="/common/header.jspf" %>
<%
    String form = request.getParameter("form");
    if (form == null || "home".contentEquals(form)) form = "form/home.jsp";
    else if ("login".contentEquals(form)) form = "form/loginForm.jsp";
    else if ("auth".contentEquals(form)) form = "form/authForm.jsp";
    else if ("board".contentEquals(form)) form = "form/boardForm.jsp";
%>
<html>
<link rel="stylesheet" href="globalStyle.css">
<body>
<div style="display: flex; justify-content: center">
    <table style="width:800px;">
        <tr>
            <td style="height:100px;">
                <%@ include file="/common/top.jsp" %>
            </td>
        </tr>
        <tr>
            <td style="height:400px;">
                <jsp:include page="<%=form%>"/>
            </td>
        </tr>
        <tr>
            <td style="height:50px;">
                <%@ include file="/common/footer.jspf" %>
            </td>
        </tr>
    </table>
</div>
</body>
</html>