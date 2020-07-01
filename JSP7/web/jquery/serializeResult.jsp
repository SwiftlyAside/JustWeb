<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String[] hobby = request.getParameterValues("hobby");

%>
<ul>
    <li>ID : <%=id%>
    </li>
    <li>Name : <%=name%>
    </li>
    <li>Gender : <%=gender%>
    </li>
    <% for (int i = 0; i < hobby.length; i++) {%>
    <li><%=hobby[i]%>
    </li>
    <%}%>
</ul>
