<%--
  User: iveci
  Date: 2020-06-09
  Time: 오후 2:36
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%!
    public String Select(String[] opts, String tagName, String value) {
        StringBuilder selectStr;
        selectStr = new StringBuilder("<select name=" + tagName + ">");
        for (String opt : opts) {
            selectStr.append("<option value=").append(opt);
            if (opt.equals(value))
                selectStr.append(" selected='selected'");
            selectStr.append(">").append(opt).append("</option>");
        }
        selectStr.append("</select>");
        return selectStr.toString();
    }
%>
<%
    String tableName = request.getParameter("tableName");
    String[] opts = {"Customers", "Categories", "Employees", "OrderDetails",
            "Orders", "Products", "Shippers", "Suppliers"};
    String selectStr = Select(opts, "tableName", tableName);
%>
<form action="main.jsp" method="post">
    <%=selectStr%>
    <input type="submit" value="GAZA">
</form>
