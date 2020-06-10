<%@ page contentType="text/html; charset=UTF-8" %>
<div style="display: flex; justify-content: center">
    <form id="loginForm" action="${pageContext.request.contextPath}/index.jsp" method="post">
        <table>
            <tr>
                <td>아이디</td>
                <td><input type=text name='id' id="id" placeholder='ID 입력'/></td>
            </tr>
            <tr>
                <td>패스워드</td>
                <td><input type=password name='pw' id="pw" placeholder='PW 입력'/></td>
            </tr>
            <tr>
                <td colspan=2 align='center'>
                    <input type=button onclick="checkLogin()" value='로그인' style="width: 86px; "/>
                    <input type=reset value='취소' style="width: 86px; "/>
                </td>
            </tr>
        </table>
    </form>
    </h3>
</div>
