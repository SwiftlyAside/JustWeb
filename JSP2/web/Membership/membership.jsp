<%--
  Created by IntelliJ IDEA.
  User: iveci
  Date: 2020-06-01
  Time: 오전 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String type = (String) session.getAttribute("state");
    String title = "회원가입";
    String submit = "회원가입";
    String userName = "";
    String userId = "";

    if (type != null && "modify".contentEquals(type)) {
        title = "정보수정";
        submit = "수정";
        userName = (String) session.getAttribute("userName");
        userId = (String) session.getAttribute("userId");

    }
%>
<html>
<head>
    <title><%=title%>
    </title>
</head>
<body>
<form action="joinProc.jsp" method="post">
    <table style="width: auto; margin: auto; text-align: right; table-layout: fixed">
        <tr>
            <td colspan="2">
                <h2 style="text-align: center"><%=title%>
                </h2>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <hr>
            </td>
        </tr>
        <tr>
            <td >이름</td>
            <td><input type="text" name="userName" style="border-collapse: collapse" value="<%=userName%>"></td>
        </tr>
        <tr>
            <td>아이디</td>
            <td><input type="text" name="userId" value="<%=userId%>"></td>
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
                <input type="submit" value="<%=submit%>">
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
