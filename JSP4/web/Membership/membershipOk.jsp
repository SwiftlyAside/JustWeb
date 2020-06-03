<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String userName = request.getParameter("userName");
    String userId = request.getParameter("userId");
%>
<html>
<head>
    <title>회원가입 완료</title>
</head>
<body>
<div>
    <br>
    <h1>가입 완료
    </h1>
    <hr>
</div>
<h2>아이디 <%=userId%>로<br>회원가입이 완료되었습니다.</h2>
<div>
    <form action="membership.jsp" method="post">
        <input type="hidden" name="state" value="modify">
        <input type="hidden" name="userName" value="<%=userName%>">
        <input type="hidden" name="userId" value="<%=userId%>">
        <input type="submit" value="수정">
    </form>
</div>
</body>
</html>
