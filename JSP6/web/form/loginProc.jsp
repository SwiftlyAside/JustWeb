<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.sql.Connection" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/common/dbConnection.jspf" %>
<%
    String form = "login";
    String errorLog = "";
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");

    Connection connection = getConnection("192.168.0.108", "1521", "XE");

    if (connection == null) {
        errorLog = "DB에 접근하지 못했습니다.";
    } else {
        if (Select(connection, id, pw) == 1) {
            form = "home";
            session.setAttribute("userId", id);
        } else errorLog = "로그인 정보가 올바르지 않습니다.";
    }
%>
<jsp:forward page="/index.jsp">
    <jsp:param name="form" value="<%=form%>"/>
    <jsp:param name="errorLog" value='<%=URLEncoder.encode(errorLog, "UTF-8")%>'/>
</jsp:forward>