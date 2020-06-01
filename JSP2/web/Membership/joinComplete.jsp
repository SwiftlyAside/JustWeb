<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.setAttribute("state", "modify");
%>
<html>
<head>
    <title>회원가입 완료</title>
</head>
<body>
<form action="membership.jsp" method="post">
    <table style="width: 300px; margin: auto; text-align: center">
        <tr>
            <td style="height: 200px">
                <h2>회원가입이<br>완료되었습니다.</h2>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="수정">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
