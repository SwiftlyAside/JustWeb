<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>INFO</title>
</head>
<body>
<table style="width: 60%; border: 1px solid">
    <tr>
        <td>제품번호</td>
        <td>1080</td>
    </tr>
    <tr>
        <td>가격</td>
        <td>10,000원</td>
    </tr>
</table>
<jsp:include page="infosub.jsp">
    <jsp:param name="type" value="A"/>
</jsp:include>
</body>
</html>
