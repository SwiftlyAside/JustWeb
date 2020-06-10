<%@ page contentType="text/html; charset=UTF-8" %>
<div style="display: flex; justify-content: center">
    <form id="authForm" action="<%=request.getContextPath()%>/membership/authProc.jsp" method="post">
        <table>
            <tr>
                <td>
                    <label>
                        E-Mail
                        <input type=email id="email" name='email' placeholder='email 입력' style="width: 200px; "/>
                    </label>
                    <input type=button onclick="checkEmail()" value='인증번호 전송' style="width: 120px; "/>
                </td>
            </tr>
        </table>
    </form>
</div>
