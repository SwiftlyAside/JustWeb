<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String state = request.getParameter("state");
    String buttonName = "회원가입";
    String userName = request.getParameter("userName");
    String userId = request.getParameter("userId");
    String userEmail = request.getParameter("userEmail");
    String readonly = "";

    if ("modify".contentEquals(state)) {
        buttonName = "수정";
        readonly = "readonly";
    }
%>
<div>
    <form id="mForm" action="membershipProc.jsp" method="post">
        <input type="hidden" name="state" value="<%=state%>">
        <table>
            <tr>
                <td>
                    <div style="width: 300px; text-align: left">
                        <label for="userId">아이디</label>
                        <input type="text" id="userId" name="userId" value="<%=userId%>" <%=readonly%>>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div style="width: 300px; text-align: left">
                        <label for="userPass">비밀번호</label>
                        <input type="password" id="userPass" name="userPass">
                    </div>
                </td>
            </tr>
            <tr>
                <td><input type="password" id="userPassOk" name="userPassOk" placeholder="비밀번호 재확인"></td>
            </tr>
            <tr>
                <td><br>이름</td>
            </tr>
            <tr>
                <td><input type="text" id="userName" name="userName" value="<%=userName%>"></td>
            </tr>
            <tr>
                <td>이메일 주소</td>
            </tr>
            <tr>
                <td><input type="email" id="userEmail" name="userEmail" value="<%=userEmail%>"></td>
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