<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="member" class="JavaBean.Test.Member" scope="application"/>
<html>
<head>
    <title>권한</title>
</head>
<body>
id :
<jsp:getProperty name="member" property="id"/>
<br>
</body>
</html>
