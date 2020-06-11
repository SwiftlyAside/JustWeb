<%@ page import="java.net.URLEncoder" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="member" class="Care.Lab.Member"/>
<jsp:setProperty name="member" property="*"/>
<%@include file="/common/dbConnection.jspf" %>
<%
    String form = "member";
    String errorLog = "미상의 에러";
    Connection connection = getConnection("192.168.0.108", "1521", "XE");

    if (connection == null) {
        errorLog = "DB에 접근하지 못했습니다.";
    } else {
        if (Insert(connection, member))
            form = "login";
        else errorLog = "ID가 존재합니다.";
    }

%>
<jsp:forward page="/index.jsp">
    <jsp:param name="form" value="<%=form%>"/>
    <jsp:param name="errorLog" value='<%=URLEncoder.encode(errorLog, "UTF-8")%>'/>
</jsp:forward>
