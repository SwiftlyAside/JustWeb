<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: iveci
  Date: 2020-05-29
  Time: 오후 4:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Calendar calendar = Calendar.getInstance();
    request.setAttribute("time", calendar);
%>
<jsp:forward page="to.jsp"/>