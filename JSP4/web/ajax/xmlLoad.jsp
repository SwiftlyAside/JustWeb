<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>xmlLoad</title>
</head>
<link rel="stylesheet" href="https://necolas.github.io/normalize.css/latest/normalize.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/globalStyle.css">
<body>
<div id="xml">
    <input type="text" id="findStr">
    <input type="button" id="btn" value="검색">
    <br>
    <div id="result"></div>
</div>
<script src="${pageContext.request.contextPath}/ajax/xmlLoad.js"></script>
</body>
</html>