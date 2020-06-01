<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="membershipProc.jsp" method="post">
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