<%@ page import="java.util.Random" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="mail" class="com.jin.mail.JinsMail"/>
<jsp:setProperty property="id" name="mail" value="deusta12@gmail.com"/>
<jsp:setProperty property="pw" name="mail" value="bsoektraqxhdfpks"/>
<%!
    public String generateAuthString() {
        StringBuilder temp = new StringBuilder();
        Random rnd = new Random();
        for (int i = 0; i < 8; i++) {
            // 0-9
            temp.append((rnd.nextInt(10)));
        }
        return temp.toString();
    }
%>
<%
    String email = request.getParameter("email");
    String authString = generateAuthString();
    mail.SendMail("ANOMALY", "deusta12@gmail.com", email, "인증 이메일",
            "인증번호입니다.<br><br>" + authString);
    application.setAttribute("authString", authString);
%>
<jsp:forward page="/index.jsp">
    <jsp:param name="form" value="member"/>
</jsp:forward>
