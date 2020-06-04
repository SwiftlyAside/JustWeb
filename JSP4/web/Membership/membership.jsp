<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String state = request.getParameter("state");
    String userName = request.getParameter("userName");
    String userId = request.getParameter("userId");
    String userEmail = request.getParameter("userEmail");
    String title = "회원가입";
    String buttonName = "회원가입";
    String readonly = "";

    if (state == null) state = "membership";
    if (userName == null) userName = "";
    if (userId == null) userId = "";
    if (userEmail == null) userEmail = "";

    if ("modify".contentEquals(state)) {
        title = "정보수정";
        buttonName = "수정";
        readonly = "readonly";
    }
%>
<html>
<head>
    <title>MEMBERSHIP
    </title>
    <script>
        let isEmpty = function (value) {
            return value === "" || value == null || (typeof value == "object" && !Object.keys(value).length);
        };

        function check() {
            let userId = document.getElementById('userId');
            let userPass = document.getElementById('userPass');
            let userPassOk = document.getElementById('userPassOk');
            let userName = document.getElementById('userName');
            let userEmail = document.getElementById('userEmail');
            if (isEmpty(userId.value)) alert('아이디를 확인하세요.');
            else if (isEmpty(userPass.value) || isEmpty(userPassOk.value)) alert('비밀번호를 확인하세요.');
            else if (isEmpty(userName.value)) alert('이름을 확인하세요.');
            else if (isEmpty(userEmail.value)) alert('이메일을 확인하세요.');
            else if (!(userPass.value === userPassOk.value)) alert('비밀번호가 일치하지 않습니다.');
            else document.getElementById('mForm').submit();
        }
    </script>
</head>
<body>
<div>
    <br>
    <h1><%=title%>
    </h1>
    <hr>
</div>
<div>
    <form id="mForm" action="membershipProc.jsp" method="post">
        <input type="hidden" name="state" value="<%=state%>">
        <table>
            <tr>
                <td>
                    <div class="innerDiv">
                        <label for="userId">아이디</label>
                        <input type="text" id="userId" name="userId" value="<%=userId%>" <%=readonly%>>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="innerDiv">
                        <label for="userPass">비밀번호</label>
                        <input type="password" id="userPass" name="userPass">
                        <input type="password" id="userPassOk" name="userPassOk" placeholder="비밀번호 재확인">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="innerDiv">
                        <br>
                        <label for="userName">이름</label>
                        <input type="text" id="userName" name="userName" value="<%=userName%>">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="innerDiv">
                        <label for="userEmail">이메일 주소</label>
                        <input type="email" id="userEmail" name="userEmail" value="<%=userEmail%>">
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="button" value="<%=buttonName%>" onclick="check();">
                    <input type="reset" value="취소">
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
