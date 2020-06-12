<%@ page import="Care.Lab.ADMSHA512Hash" %>
<%@ page import="Care.Lab.Member" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="member" class="Care.Lab.Member"/>
<jsp:setProperty name="member" property="*"/>
<%@include file="/common/dbConnection.jspf" %>
<%!
    public boolean Insert(Connection connection, Member member) {
        boolean result = true;
        PreparedStatement statement = null;
        String sql = "insert into MEMBER " +
                "(id, pw, gender, email) " +
                "values (?, ?, ?, ?)";

        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, member.getId());
            statement.setString(2, ADMSHA512Hash.hashToHex(member.getPw(), "UTF-8"));
            statement.setString(3, member.getGender());
            statement.setString(4, member.getEmail());
            statement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
            result = false;
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
    String form = "member";
    String errorLog = "";
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
