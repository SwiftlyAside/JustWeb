<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String state = request.getParameter("state");
    Integer level = (Integer) request.getAttribute("level");
    String title = "로그인";

    if (state == null) state = "login";

    if ("level".contentEquals(state))
        title = String.format("레벨 %d 권한", level);
%>
<div>
    <br>
    <h1><%=title%></h1>
    <hr>
</div>