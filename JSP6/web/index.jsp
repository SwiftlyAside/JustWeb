<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="/common/header.jspf" %>
<%
    Date time = new Date();

    SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddhhmmss");
    String form = request.getParameter("form");
    String id = request.getParameter("id");
    if (form == null || "home".contentEquals(form))
        form = "/form/home.jsp";
    else if ("member".contentEquals(form) || "auth".contentEquals(form))
        form = "/membership/" + form + "Form.jsp";
    else form = "/form/" + form + "Form.jsp";

    if (id != null) session.setAttribute("id", id);
%>
<html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.9-1/crypto-js.min.js"></script>
<script src="${pageContext.request.contextPath}/js/globalScript.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/globalStyle.css?v=<%=fmt.format(time)%>">
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