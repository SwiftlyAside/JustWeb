<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
    Date time = new Date();

    SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddhhmmss");
    String form = request.getParameter("form");
    if (form == null || "home".contentEquals(form))
        form = "/form/home.jsp";
    else if ("logout".contentEquals(form))
        form = "/form/logoutProc.jsp";
    else if ("member".contentEquals(form) || "auth".contentEquals(form))
        form = "/membership/" + form + "Form.jsp";
    else if ("board".contentEquals(form) || "view".contentEquals(form) || "write".contentEquals(form))
        form = "/board/" + form + "Form.jsp";
    else form = "/form/" + form + "Form.jsp";
    request.setAttribute("index", "russia");
%>
<html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.9-1/crypto-js.min.js"></script>
<script src="${pageContext.request.contextPath}/js/globalScript.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Julius+Sans+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=Nanum+Myeongjo&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/globalStyle.css?v=<%=fmt.format(time)%>">
<body>
<div class="formDiv">
    <table style="width:800px;">
        <tr>
            <td style="height:100px;">
                <%@ include file="/common/top.jsp" %>
            </td>
        </tr>
        <tr>
            <td style="height:400px;">
                <jsp:include page="<%=form%>">
                    <jsp:param name="index" value="russia"/>
                </jsp:include>
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