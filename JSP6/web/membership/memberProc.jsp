<%@ page import="java.net.URLEncoder" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="member" class="Care.Lab.Member"/>
<jsp:setProperty name="member" property="*"/>
<%
    String authNum = request.getParameter("authNum");
    String authString = (String) session.getAttribute("authString");
    String form = "member";
    String errorLog = "인증번호가 일치하지 않습니다.";

    if (authNum.contentEquals(authString))
        form = "login";
%>
<jsp:forward page="/index.jsp">
    <jsp:param name="form" value="<%=form%>"/>
    <jsp:param name="errorLog" value='<%=URLEncoder.encode(errorLog,"UTF-8")%>'/>
</jsp:forward>
