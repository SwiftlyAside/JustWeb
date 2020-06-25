<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSONLOAD</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/globalStyle.css"/>
<body>
<h3>JSON TYPE DATA LOAD</h3>
<input type="button" value="JSON LOAD" id="btn">
<input type="button" value="JSON LOAD2" id="btn2">
<div class="formDiv">
    <fieldset class="fs1">
        <legend>LOAD DATA</legend>
        <div id="result"></div>
    </fieldset>
    <fieldset class="fs2">
        <legend>LOAD DATA2</legend>
        <div id="result2"></div>
    </fieldset>
</div>

<script src="${pageContext.request.contextPath}/ajax/jsonLoad.js"></script>
</body>
</html>
