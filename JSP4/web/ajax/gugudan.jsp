<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>gugudan</title>
</head>
<body>
<h3>THE AJAX GUGUDAN SERIES</h3>
<input type="number" id="dan" name="dan" value="5">
<input type="button" id="btn" value="구구단 실행">
<p></p>
<div id="result"></div>
<script src="${pageContext.request.contextPath}/ajax/gugudan.js"></script>
</body>
</html>
