<%@ page import="java.net.URLDecoder" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
    String email = request.getParameter("email");
    String authString = (String) session.getAttribute("authString");
    String errorLog = request.getParameter("errorLog");
    errorLog = errorLog == null ? "" : URLDecoder.decode(errorLog, "UTF-8");
%>
<div style="display: flex; justify-content: center">
    <form id="memberForm" action="<%=request.getContextPath()%>/index.jsp" method="post">
        <%=errorLog%>
        <table>
            <tr>
                <td align='right' height=40>아이디</td>
                <td>
                    <input type=text id="memberId" name='id' placeholder='id 입력'/>
                </td>
                <td align='right' width=120>성 별</td>
                <td>
                    <input type=radio name='gender' value='m' checked="checked"/>남자
                    <input type=radio name='gender' value='w'/>여자
                </td>
            </tr>
            <tr>
                <td align='right' height=40>패스워드</td>
                <td>
                    <input type=password id="memberPw" name='pw' placeholder='pw 입력'/>
                </td>
                <td align='right'>패스워드 확인</td>
                <td>
                    <input type=password id="memberPwOk" name='pwOk' placeholder='pw 입력'/>
                </td>
            </tr>
            <tr>
                <td align='right' height=40>E-Mail</td>
                <td>
                    <input type=email name='email' value="<%=email%>" readonly/>
                </td>
                <td align='right'>인증번호</td>
                <td>
                    <input type=text id="authNum" name='authNum' placeholder='인증번호 입력'/>
                </td>
            </tr>
            <tr>
                <td align='center' height=40 colspan=4>
                    <input type=button onclick="checkMember('<%=authString%>');" value='로그인' style="width: 120px; "/>
                    <input type=reset value='취소' style="width: 120px; "/>
                </td>
            </tr>
        </table>
    </form>
</div>