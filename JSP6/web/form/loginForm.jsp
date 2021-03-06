<%@ page import="java.net.URLDecoder" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
    String errorLog = request.getParameter("errorLog");
    errorLog = errorLog == null ? "" : URLDecoder.decode(errorLog, "UTF-8");

    String next = request.getParameter("index") + "login";
%>
<script src="${pageContext.request.contextPath}/js/loginForm.js"></script>
<h3><%=errorLog%>
</h3>
<div class="formDiv" onload="checkLogin('<%=errorLog%>')">
    <form id="loginForm" action="${pageContext.request.contextPath}/form/loginProc.jsp" method="post">
        <input type="hidden" name="index" value="<%=next%>">
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
</div>