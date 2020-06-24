<%--
  User: iveci
  Date: 2020-06-24
  Time: 오후 2:58
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>WHO</title>
</head>
<body>
<h3>아이디와 암호를 입력하세요</h3>
<form name="form" id="form" method="post">
    <label>아이디<input type="text" name="mID" value="hong"></label>
    <br>
    <label>암호<input type="password" name="pwd" value="chul"></label>
    <br>
    <input type="button" id="btn" value="체크">
</form>
<p></p>
<div id="result"></div>
<script src="${pageContext.request.contextPath}/ajax/who.js"></script>
</body>
</html>
