<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="member" class="JavaBean.Test.Member" scope="application"/>
<html>
<head>
    <title>권한</title>
</head>
<body>
id :
<jsp:getProperty name="member" property="id"/>
<br>
pw :
<jsp:getProperty name="member" property="pw"/>
<br>
<form action="logout.jsp" method="get">
    <input type="submit" value="로그아웃">
</form>
</body>
</html>
