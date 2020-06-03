<%@ page import="java.util.Random" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="mail" class="com.jin.mail.JinsMail"/>
<jsp:setProperty property="id" name="mail" value="deusta12@gmail.com"/>
<jsp:setProperty property="pw" name="mail" value="bsoektraqxhdfpks"/>
<%!
    public String generateAuthString() {
        StringBuilder temp = new StringBuilder();
        Random rnd = new Random();
        for (int i = 0; i < 20; i++) {
            int rIndex = rnd.nextInt(3);
            switch (rIndex) {
                case 0:
                    // a-z
                    temp.append((char) (rnd.nextInt(26) + 97));
                    break;
                case 1:
                    // A-Z
                    temp.append((char) (rnd.nextInt(26) + 65));
                    break;
                case 2:
                    // 0-9
                    temp.append((rnd.nextInt(10)));
                    break;
            }
        }
        return temp.toString();
    }
%>
<%
    String receivedString = request.getParameter("auth");
    String authString = (String) application.getAttribute("authString");
    Beans.User user = (Beans.User) request.getAttribute("user");

    // 다른 인증키 => 회원가입 페이지로 이동
    if (user == null) {
        pageContext.forward("membership.jsp");
    }
    if (receivedString == null) receivedString = "";

    if (authString == null) { // 인증키가 생성되지 않음 => 메일을 전송하지 않음
        authString = generateAuthString();
        mail.SendMail("ANOMALY", "deusta12@gmail.com", user.getUserEmail(), "인증 이메일",
                "다음 주소를 클릭하세요.<br><br>" + "http://localhost:8080/jsp4/Membership/membershipProc.jsp?auth=" + authString +
                        "&userId=" + user.getUserId() + "&userName=" + user.getUserName());
        application.setAttribute("authString", authString);
    } else if (authString.contentEquals(receivedString)) { // 인증키 일치
        session.setAttribute("userName",user.getUserName());
        request.removeAttribute("user");
        application.removeAttribute("authString");
        pageContext.forward("membershipOk.jsp");
    }
%>
<html>
<head>
    <title>MEMBERSHIP
    </title>
</head>
<body>
<div>
    <br>
    <h1>메일 인증
    </h1>
    <hr>
</div>
<div style="display: flex; height: 300px; justify-content: center; align-items: center">
    <h2>
        <%=user.getUserEmail()%>로 이메일을 보냈습니다.<br>메일을 확인해 주세요.</h2>
</div>
</body>