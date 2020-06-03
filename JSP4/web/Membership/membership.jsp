<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String state = request.getParameter("state");
    String userName = request.getParameter("userName");
    String userId = request.getParameter("userId");
    String userEmail = request.getParameter("userEmail");

    if (state == null) state = "membership";
    if (userName == null) userName = "";
    if (userId == null) userId = "";
    if (userEmail == null) userEmail = "";
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
<jsp:include page="../Common/title.jsp">
    <jsp:param name="state" value="<%=state%>"/>
</jsp:include>
<jsp:include page="../Common/inputForm.jsp">
    <jsp:param name="state" value="<%=state%>"/>
    <jsp:param name="userName" value="<%=userName%>"/>
    <jsp:param name="userId" value="<%=userId%>"/>
    <jsp:param name="userEmail" value="<%=userEmail%>"/>
</jsp:include>
</body>
</html>
