<%@ page contentType="text/html;charset=UTF-8" %>
<%
    out.print("현재 프로젝트 이름 : " + request.getContextPath());
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/Ex05/view.jsp" method="post">
    보고 싶은 페이지 :
    <select name="code">
        <option value="A">Page A</option>
        <option value="B">Page B</option>
        <option value="C">Page C</option>
    </select>
    <input type="submit" value="전송">
</form>
</body>
</html>
