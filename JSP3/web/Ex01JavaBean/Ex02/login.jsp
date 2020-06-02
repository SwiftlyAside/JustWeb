<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>LOGIN</title>
</head>
<body>
<form action="loginProc.jsp" method="get">
    <table>
        <tr>
            <td>아이디</td>
            <td><input type="text" name="id"></td>
        </tr>
        <tr>
            <td>패스워드</td>
            <td><input type="password" name="pw"></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <input type="submit" value="로그인">
                <input type="reset" value="취소">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
