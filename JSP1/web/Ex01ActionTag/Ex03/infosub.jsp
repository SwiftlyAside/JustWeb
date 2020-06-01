<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String type = request.getParameter("type");
%>
<table style="width: 60%; border: 1px solid">
    <tr>
        <td>타입</td>
        <td><b><%=type%>
        </b></td>
    </tr>
    <tr>
        <td>특징</td>
        <td>
            <%
                if ("A".contentEquals(type)) out.print("강한 내구성.");
                else if ("B".contentEquals(type)) out.print("뛰어난 대처 능력.");
            %>
        </td>
    </tr>
</table>