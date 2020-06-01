<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String userName = (String) session.getAttribute("userName");
    String userId = (String) session.getAttribute("userId");
%>
<html>
<head>
    <title>정보수정</title>
</head>
<body>
<form action="joinProc.jsp" method="post">
    <table style="width: auto; margin: auto; text-align: right; table-layout: fixed">
        <tr>
            <td colspan="2">
                <h2 style="text-align: center">정보수정</h2>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <hr>
            </td>
        </tr>
        <tr>
            <td>이름</td>
            <td><input type="text" readonly name="userName" value="<%=userName%>"></td>
        </tr>
        <tr>
            <td>아이디</td>
            <td><input type="text" readonly name="userId" value="<%=userId%>"></td>
        </tr>
        <tr>
            <td>패스워드</td>
            <td><input type="password" name="userPass"></td>
        </tr>
        <tr>
            <td>패스워드 확인</td>
            <td><input type="password" name="userPassOk"></td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="수정">
            </td>
            <td>
                <input type="button" value="취소">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <hr>
            </td>
        </tr>
        <tr>
            <td colspan="2">Copyright @ Anomaly Co. All rights reserved.</td>
        </tr>
    </table>
</form>
</body>
</html>
