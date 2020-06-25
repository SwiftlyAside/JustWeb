<%--
  Date: 2020-06-25
  Time: 오후 2:38
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Board List</title>
</head>
<link href="${pageContext.request.contextPath}/globalStyle.css" rel="stylesheet">
<body>
<div id="board">
    <div id="input">
        <input type="text" id="findStr" value="findStr">
        <input type="button" id="btnFind" value="검색">
    </div>
    <div id="table">
        <div id="title">
            <span class="noTD">NO</span>
            <span class="idTD">ID</span>
            <span class="titleTD">TITLE</span>
            <span class="dateTD">WRITE</span>
        </div>
        <div id="list">
            <%for (int i = 0; i < 10; i++) {%>
            <div class="row">
                <span class="noTD">NO</span>
                <span class="idTD">ID</span>
                <span class="titleTD">TITLE</span>
                <span class="dateTD">WRITE</span>
            </div>
            <% } %>
        </div>
    </div>
</div>
</body>
</html>
