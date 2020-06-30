<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>fileUpload</title>
</head>
<link rel="stylesheet" href="https://necolas.github.io/normalize.css/latest/normalize.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/globalStyle.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/ajax/fileUpload.css">
<script src="${pageContext.request.contextPath}/ajax/fileUpload.js"></script>
<body onload="upload.start('form', 'btnAttach', 'btnSend', 'attachList', 'fileUploadResult.jsp')">
<div id="upload">
    <h1>File Upload</h1>
    <form name="form" id="form" method="post" enctype="multipart/form-data">
        <label>작성자</label>
        <input type="text" name="id" value="hongChul">
        <br>
        <label>첨부 이미지</label>
        <input type="file" name="attach" id="btnAttach" multiple accept="image/*">
        <div id="attachList"></div>
        <p></p>
        <input type="button" id="btnSend" value="전송">
    </form>
</div>
</body>
</html>
