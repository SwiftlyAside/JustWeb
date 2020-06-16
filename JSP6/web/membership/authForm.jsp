<%@ page contentType="text/html; charset=UTF-8" %>
<%
    String email = request.getParameter("email");
    if (email == null) email = "";
%>
<script src="${pageContext.request.contextPath}/js/authForm.js"></script>
<div class="formDiv">
    <form id="authForm" action="<%=request.getContextPath()%>/membership/authProc.jsp" method="post">
        <input type="hidden" name="index" value="<%=request.getParameter("index")%>">
        <table>
            <tr>
                <td>
                    <label>
                        E-Mail
                        <input type=email id="email" name='email' placeholder='email 입력' value="<%=email%>"
                               style="width: 200px; "/>
                    </label>
                    <input type=button onclick="checkEmail()" value='인증번호 전송' style="width: 120px; "/>
                </td>
            </tr>
        </table>
    </form>
</div>