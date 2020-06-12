<%@ page import="Care.Lab.ADMSHA512Hash" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.sql.Connection" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/common/dbConnection.jspf" %>
<%!
    public Integer Select(Connection connection, String id, String pw) {
        int result = 0;
        PreparedStatement statement = null;
        ResultSet resultSet;
        String sql = "select count(*) " +
                "from MEMBER " +
                "where ID = ? and PW = ?";

        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            statement.setString(2, ADMSHA512Hash.hashToHex(pw, "UTF-8"));
            resultSet = statement.executeQuery();
            if (resultSet.next())
                result = resultSet.getInt(1);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return result;
    }

%>
<%
    if (!request.getParameter("index").contains("login")) {
%>
<script>alert('Abnormal access!')</script>
<%
        return;
    }
%>
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