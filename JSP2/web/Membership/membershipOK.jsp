<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%
    String usrName = request.getParameter("usrName");
    String usrId = request.getParameter("usrId");
%>
<html>
<body>
<h1>
    회원가입이<br/>
    되었습니다.<br/>
</h1>
<form action="membershipModifyForm.jsp" method="get">
    <input type="hidden" name="usrName" value="<%=usrName%>">
    <input type="hidden" name="usrId" value="<%=usrId%>">
    <input type="submit" value="수정"/>
</form>
</body>
</html>








