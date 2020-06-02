<%@ page contentType="text/html;charset=UTF-8" %>
<%
    JavaBean.Test.Member member = (JavaBean.Test.Member) request.getAttribute("member");
%>
<html>
<head>
    <title>권한</title>
</head>
<body>
<div>
    <h4>
        id : <%=member.getId()%><br>
        pw : <%=member.getPw()%><br>
    </h4>
    <form action="login.jsp" method="post">
        <input type="submit" value="로그아웃">
    </form>
</div>
</body>
</html>
