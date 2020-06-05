<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form action="loginProc.jsp" method="post">
    <label>
        아이디
        <input type="text" name="userId">
    </label>
    <label>
        암호
        <input type="password" name="userPass">
    </label>
    <input type="submit" value="로그인">
</form>
</body>
</html>
