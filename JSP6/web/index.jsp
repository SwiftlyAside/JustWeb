<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="/common/header.jspf" %>
<%
    String form = request.getParameter("form");
    String id = request.getParameter("id");
    if (form == null || "home".contentEquals(form)) form = "form/home.jsp";
    else form = "form/" + form + "Form.jsp";

    if (id != null) session.setAttribute("id", id);
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