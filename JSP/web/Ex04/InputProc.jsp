<%--
  Created by IntelliJ IDEA.
  User: iveci
  Date: 2020-05-29
  Time: 오후 3:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String data = request.getParameter("data");

    if ("".contentEquals(data))
        request.setAttribute("data", "비어있읍니다.");
%>
<jsp:forward page="to.jsp"/>