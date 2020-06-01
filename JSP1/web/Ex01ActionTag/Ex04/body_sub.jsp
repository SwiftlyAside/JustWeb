<%@ page contentType="text/html;charset=UTF-8" language="java" %>
body_sub의 name : <%=request.getParameter("name")%>
<br>
<ul>
    <%
        String[] names = request.getParameterValues("name");
        for (String name : names)
            out.print("<li>" + name + "</li>");
    %>
</ul>
