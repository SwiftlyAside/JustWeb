<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>getTagName</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/globalStyle.css">
<body>
<h2>getTagName</h2>
<form name="form" method="post">
    <label>취미</label>
    <label><input type="checkbox" name="hobby" value="축구">축구</label>
    <label><input type="checkbox" name="hobby" value="야구">야구</label>
    <label><input type="checkbox" name="hobby" value="농구">농구</label>
    <label><input type="checkbox" name="hobby" value="배구">배구</label>
    <label><input type="checkbox" name="hobby" value="탁구">탁구</label>
    <p></p>
    <input type="button" id="btn" value="체크">
</form>
<fieldset>
    <legend>RESULT</legend>
    <div id="result"></div>
</fieldset>
<script src="${pageContext.request.contextPath}/doom/getTagName.js"></script>
</body>
</html>
