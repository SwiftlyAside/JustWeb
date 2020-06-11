<%@ page contentType="text/html; charset=UTF-8" %>
<%
    String sessionId = (String) session.getAttribute("userId");
%>
<table style="width:800px">
    <tr>
        <td style="text-align: center" colspan=5><h1>CARE Lab</h1></td>
    </tr>
    <tr style="text-align: right">
        <td style="width: 600px"></td>
        <td><a href="<%=request.getContextPath()%>/index.jsp?form=home">홈</a></td>
        <%
            if (sessionId == null) {
        %>
        <td><a href="<%=request.getContextPath()%>/index.jsp?form=login">로그인</a></td>
        <td><a href="<%=request.getContextPath()%>/index.jsp?form=auth">회원가입</a></td>
        <%
        } else {
        %>
        <td><a href="<%=request.getContextPath()%>/index.jsp?form=logout"><%=sessionId%> 로그아웃</a></td>
        <td><a href="<%=request.getContextPath()%>/index.jsp?form=board">게시판</a></td>
        <%
            }
        %>
    </tr>
    <tr>
        <td style="text-align: center" colspan=5>
            <hr/>
        </td>
    </tr>
</table>

