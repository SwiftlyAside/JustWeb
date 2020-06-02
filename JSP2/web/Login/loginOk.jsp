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
<div>
    <br>
    <h1>레벨 <%=level%> 권한</h1>
</div>
<div>
    <hr>
    <h4>
        <%=authority%>
    </h4>
    <form action="login.jsp" method="post">
        <input type="submit" value="로그아웃">
    </form>
</div>
</body>
</html>
