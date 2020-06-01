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
                <td>이름</td>
                <td><input type="text" name="userName" value="<%=userName%>"></td>
            </tr>
            <tr>
                <td>아이디</td>
                <td><input type="text" name="userId" value="<%=userId%>" <%=readonly%>></td>
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
                    <input type="submit" value="<%=buttonName%>">
                </td>
                <td>
                    <input type="button" value="취소">
                </td>
            </tr>
        </table>
    </form>
</div>