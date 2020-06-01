<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String state = request.getParameter("state");
    String title = "회원가입";

    if (state == null) state = "membership";
    if ("modify".contentEquals(state))
        title = "정보수정";
%>
<div>
    <br>
    <h1><%=title%>
    </h1>
    <hr>
</div>