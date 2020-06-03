<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String error = request.getParameter("error");
    String state = request.getParameter("state");
    String buttonName = "회원가입";
    String userName = request.getParameter("userName");
    String userId = request.getParameter("userId");
    String userEmail = request.getParameter("userEmail");
    String readonly = "";

    if (error != null) {
        String errorMessage;
        switch (error) {
            case "id":
                errorMessage = "아이디를 입력하세요.";
                break;
            case "pw":
                errorMessage = "비밀번호를 입력하세요.";
                break;
            case "name":
                errorMessage = "이름을 입력하세요.";
                break;
            case "email":
                errorMessage = "이메일을 입력하세요.";
                break;
            case "pwNotMatch":
                errorMessage = "비밀번호가 일치하지 않아요.";
                break;
            default:
                errorMessage = "";
        }
        out.print(String.format("<script>alert('%s');</script>", errorMessage));
    }

    if ("modify".contentEquals(state)) {
        buttonName = "수정";
        readonly = "readonly";
    }
%>
<script src="membership.js"></script>
<div>
    <form action="membershipProc.jsp" method="post">
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
                <td><input type="password" name="userPassOk" placeholder="비밀번호 재확인"></td>
            </tr>
            <tr>
                <td><br>이름</td>
            </tr>
            <tr>
                <td><input type="text" name="userName" value="<%=userName%>"></td>
            </tr>
            <tr>
                <td>이메일 주소</td>
            </tr>
            <tr>
                <td><input type="email" name="userEmail" value="<%=userEmail%>"></td>
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