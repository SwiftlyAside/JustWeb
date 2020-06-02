<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String authority = "- 읽기";
    Integer level = (Integer) request.getAttribute("level");

    switch (level) {
        case 3:
            authority += "<br>- 회원탈퇴";
        case 2:
            authority += "<br>- 쓰기";
    }
%>
<html>
<head>
    <title>권한</title>
</head>
<body>
<jsp:include page="../Common/title_login.jsp">
    <jsp:param name="state" value="level"/>
</jsp:include>
<div>
    <h4>
        <%=authority%>
    </h4>
    <form action="login.jsp" method="post">
        <input type="submit" value="로그아웃">
    </form>
</div>
</body>
</html>
