<%@ page contentType="text/html; charset=UTF-8" %>
<script>
    let isEmpty = function (value) {
        return value === "" || value == null || (typeof value == "object" && !Object.keys(value).length);
    };

    function check() {
        let id = document.getElementById('id');
        let pw = document.getElementById('pw');
        if (isEmpty(id.value)) alert('아이디를 입력하세요.');
        else if (isEmpty(pw.value)) alert('패스워드를 입력하세요.');
        else document.getElementById('loginForm').submit();
    }
</script>
<div style="display: flex; justify-content: center">
    <form id="loginForm" action="index.jsp" method="post">
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
                    <input type=button onclick="check()" value='로그인' style="width: 86px; "/>
                    <input type=reset value='취소' style="width: 86px; "/>
                </td>
            </tr>
        </table>
    </form>
    </h3>
</div>
