<%--
  Created by IntelliJ IDEA.
  User: iveci
  Date: 2020-05-29
  Time: 오후 3:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String code = request.getParameter("code");
    String forwardPage = "viewModule/a.jsp";

    if ("A".contentEquals(code)) forwardPage = "viewModule/a.jsp";
    else if ("B".contentEquals(code)) forwardPage = "viewModule/b.jsp";
    else if ("C".contentEquals(code)) forwardPage = "viewModule/c.jsp";
%>
<jsp:forward page="<%=forwardPage%>"/>