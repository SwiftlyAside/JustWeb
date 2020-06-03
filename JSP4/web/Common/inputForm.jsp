<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String state = request.getParameter("state");
    String buttonName = "회원가입";
    String userName = request.getParameter("userName");
    String userId = request.getParameter("userId");
    String readonly = "";

    if ("modify".contentEquals(state)) {
        buttonName = "수정";
        readonly = "readonly";
    }
%>
<div>
    <form action="membershipProc.jsp" method="post">
        <input type="hidden" name="state" value="<%=state%>">
        <table>
            <tr>
                <td>아이디</td>
            </tr>
            <tr>
                <td><input type="text" name="userId" value="<%=userId%>" <%=readonly%>></td>
            </tr>
            <tr>
                <td>비밀번호</td>
            </tr>
            <tr>
                <td><input type="password" name="userPass"></td>
            </tr>
            <tr>
                <td><input type="password" name="userPassOk" placeholder="비밀번호 재확인"><br></td>
            </tr>
            <tr>
                <td>이름</td>
            </tr>
            <tr>
                <td><input type="text" name="userName" value="<%=userName%>"></td>
            </tr>
            <tr>
                <td>이메일 주소</td>
            </tr>
            <tr>
                <td><input type="text" name="userEmail"></td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="<%=buttonName%>">
                    <input type="button" value="취소">
                </td>
            </tr>
        </table>
    </form>
</div>