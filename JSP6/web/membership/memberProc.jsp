<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="member" class="Care.Lab.Member"/>
<jsp:setProperty name="member" property="*"/>
<%!
    public Connection getConnection(String url, String port, String db) {
        Connection connection = null;
        String jdbcDriver = String.format("jdbc:oracle:thin:@%s:%s:%s", url, port, db);
        String dbUser = "c##jin";
        String dbPass = "jin1234";

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }
%>
<%
    String form = "";
    String errorLog = "미상의 에러";
    Connection connection = getConnection("192.168.0.108", "1521", "XE");

    if (connection == null) {
        errorLog = "DB에 접근하지 못했습니다.";
        form = "member";
    }

%>
<jsp:forward page="/index.jsp">
    <jsp:param name="form" value="<%=form%>"/>
    <jsp:param name="errorLog" value="<%=URLEncoder.encode(errorLog, "UTF-8")%>"/>
</jsp:forward>
