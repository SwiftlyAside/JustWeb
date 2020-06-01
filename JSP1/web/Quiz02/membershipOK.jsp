<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String usrName = request.getParameter("usrName");

%>
<html>
<head>
    <title>Membership - OK</title>
</head>
<body>
<h2>회원가입이 완료되었습니다.</h2>
<form action="membershipForm.jsp" method="post">
    <input type="text" name="usrName" value="<%=usrName%>">
    <input type="submit" value="수정">
</form>
</body>
</html>
