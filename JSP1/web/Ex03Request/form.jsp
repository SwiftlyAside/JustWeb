<%--
  Created by IntelliJ IDEA.
  User: iveci
  Date: 2020-05-28
  Time: 오전 11:34
  To change this template use File | Settings | File Templates.
--%>
<%--
form tag를 이용하여 Server로 내부의 정보를 전송하라.
전송 주소는 action에 작성한다. /프로젝트명/폴더명/데이터를 받을 파일명 순서.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>REQUEST: FORM</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/Ex03Request/view.jsp" method="post">
    이름: <input type="text" name="name" size="10"><br>
    주소: <input type="text" name="address" size="30"><br>
    좋아하는 동물 :
    <input type="checkbox" name="pet" value="dog">개
    <input type="checkbox" name="pet" value="cat">고양이
    <input type="checkbox" name="pet" value="pig">돼지
    <br>
    <input type="submit" value="전송">
</form>
</body>
</html>
