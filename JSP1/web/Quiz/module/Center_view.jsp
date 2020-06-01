<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String title = request.getParameter("title");
    String writer = request.getParameter("writer");
    String contents = request.getParameter("contents");%>
<br>
<table style="width: 800px; margin: auto; text-align: center">
    <tr>
        <td>
            <h1 style="text-align: center"><b><%=title%>
            </b></h1>
            <hr>
        </td>
    </tr>
    <tr>
        <td><h5>
            <%@ include file="includee.jspf" %>
            <%=copyRight%>
        </h5></td>
    </tr>
    <tr>
        <td>
            <pre><%=contents%></pre>
        </td>
    </tr>
</table>