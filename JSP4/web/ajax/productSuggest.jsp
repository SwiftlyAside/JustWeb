<%--
  Date: 2020-06-29
  Time: 오후 5:59
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>productSuggest</title>
</head>
<link rel="stylesheet" href="https://necolas.github.io/normalize.css/latest/normalize.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/globalStyle.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/ajax/autocomplete.css">
<body>
<h2>Product Suggest</h2>
<div id="div">
    <input type="text" size="30" id="findStr">
    <input type="button" value="검색" id="btn">
    <br>
    <select size="10" id="suggest"></select>
</div>
<div id="result"></div>
<script src="${pageContext.request.contextPath}/ajax/productSuggest.js"></script>
</body>
</html>
