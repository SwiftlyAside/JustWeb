<%--
  User: iveci
  Date: 2020-06-03
  Time: 오전 9:40
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="mail" class="com.jin.mail.JinsMail"/>
<jsp:setProperty property="id" name="mail" value="deusta12@gmail.com"/>
<jsp:setProperty property="pw" name="mail" value="bsoektraqxhdfpks"/>
<html>
<head>
    <title>Auth test</title>
</head>
<body>
<%=mail.SendMail("KEVIN DE BRUYNE",
        "kdb@naver.com", "ivecis@live.co.kr", "YOU HAVE BEEN CHOSEN!",
        request.getParameter("id") + ", YOU HAVE BEEN CHOSEN!") %>
</body>
</html>