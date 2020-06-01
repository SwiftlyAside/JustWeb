<%--
  Created by IntelliJ IDEA.
  User: iveci
  Date: 2020-05-29
  Time: 오전 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String url = request.getParameter("url");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>Insert title here</title>
</head>
<body>
<%=id %>로 로그인 하셨습니다.<br/>
패스워드는 <%=pw %>입니다.<br/>
URL에 직접 입력한 값 : <%=url%>
</body>
</html>