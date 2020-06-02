<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="member" class="JavaBean.Test.Member" scope="application"/>
<jsp:useBean id="mail" class="com.jin.mail.JinsMail"/>
<jsp:setProperty name="mail" property="id" value="deusta12@gmail.com"/>
<jsp:setProperty name="mail" property="pw" value="bsoektraqxhdfpks"/>

<html>
<head>
    <title>권한</title>
</head>
<body>
id :
<jsp:getProperty name="member" property="id"/>
<br>
pw :
<jsp:getProperty name="member" property="pw"/>
<br>
<%=mail.SendMail("Kevin De Bruyne","no-reply@jetbrains.com", "deusta12@gmail.com", "Test message.",
        request.getParameter("id") + ", YOU HAVE BEEN CHOSEN!")%>
<form action="logout.jsp" method="get">
    <input type="submit" value="로그아웃">
</form>
</body>
</html>
