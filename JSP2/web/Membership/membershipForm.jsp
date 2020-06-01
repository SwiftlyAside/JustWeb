<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<html>
<head>
    <title>Membership</title>
</head>
<body>
<h1>회원가입</h1>
<hr>

<form action="membershipOK.jsp" method="post">
    <table>
        <tr>
            <td align="right">이름</td>
            <td><input type=text name="usrName"/></td>
        </tr>
        <tr>
            <td align="right">아이디</td>
            <td><input type=text name="usrId"/></td>
        </tr>
        <tr>
            <td align="right">패스워드</td>
            <td><input type=password name="usrPass"/></td>
        </tr>
        <tr>
            <td align="right">패스워드 확인</td>
            <td><input type=password name="usrPassOk"/></td>
        </tr>
        <tr>
            <td align="right"><input type=submit value="회원가입"/></td>
            <td align="center"><input type=reset value="취소"/></td>
        </tr>
    </table>
</form>
<hr>
Copyright @ Anomaly Co. All rights reserved.
</body>
</html>











