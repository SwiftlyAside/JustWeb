<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>getXMLHttpRequest</title>
</head>
<link rel="stylesheet" href="https://necolas.github.io/normalize.css/latest/normalize.css">
<style>
    #result {
        width: 400px;
        height: 80px;
        border: 2px solid #aaa;
        border-radius: 0 20px 20px 0;
        margin-top: 5px;
        padding: 10px;
        box-sizing: border-box;
        font-size: 20pt;
    }
</style>
<body>
<input type="button" id="btn" value="실행">
<div id="result"></div>
<script src="${pageContext.request.contextPath}/ajax/script.js"></script>
</body>
</html>
