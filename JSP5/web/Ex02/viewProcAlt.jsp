<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%!
    public Map<String, List<String>> setColumns() {
        Map<String, List<String>> map = new HashMap<>();
        List<String> lst = new ArrayList<>();
        lst.add("customerID");
        lst.add("customerName");
        lst.add("ContactName");
        lst.add("Address");
        lst.add("City");
        lst.add("PostalCode");
        lst.add("Country");
        map.put("Customers", lst);

        lst = new ArrayList<>();
        lst.add("CategoryID");
        lst.add("CategoryName");
        lst.add("Description");

        map.put("Categories", lst);

        lst = new ArrayList<>();
        lst.add("EmployeeID");
        lst.add("LastName");
        lst.add("FirstName");
        lst.add("BirthDate");
        lst.add("Photo");
        lst.add("Notes");

        map.put("Employees", lst);

        lst = new ArrayList<>();
        lst.add("OrderDetailID");
        lst.add("OrderID");
        lst.add("ProductID");
        lst.add("Quantity");

        map.put("OrderDetails", lst);

        lst = new ArrayList<>();
        lst.add("OrderID");
        lst.add("CustomerID");
        lst.add("EmployeeID");
        lst.add("OrderDate");
        lst.add("ShipperID");

        map.put("Orders", lst);

        lst = new ArrayList<>();
        lst.add("ProductID");
        lst.add("ProductName");
        lst.add("SupplierID");
        lst.add("CategoryID");
        lst.add("Unit");
        lst.add("Price");

        map.put("Products", lst);

        lst = new ArrayList<>();
        lst.add("ShipperID");
        lst.add("ShipperName");
        lst.add("Phone");

        map.put("Shippers", lst);

        lst = new ArrayList<>();
        lst.add("SupplierID");
        lst.add("SupplierName");
        lst.add("ContactName");
        lst.add("Address");
        lst.add("City");
        lst.add("PostalCode");
        lst.add("Country");
        lst.add("Phone");
        map.put("Suppliers", lst);

        return map;
    }

    public int getRowCount(ResultSet rs) {
        int rowCnt;
        try {
            rs.last();
            rowCnt = rs.getRow();
            rs.beforeFirst();
        } catch (Exception e) {
            rowCnt = 0;
        }
        return rowCnt;
    }

    public String DisplayTable(ResultSet rs, List<String> list) {
        StringBuilder tableTag = new StringBuilder();
        tableTag.append("<tr>");
        for (String s : list)
            tableTag.append("<td>").append(s).append("</td>");
        try {
            while (rs.next()) {
                tableTag.append("<tr>");
                for (String s : list)
                    tableTag.append("<td>").append(rs.getString(s)).append("</td>");
                tableTag.append("</tr>");
            }
        } catch (Exception e) {
            tableTag = new StringBuilder("<tr><td>Exception</td></tr>");
        }
        return tableTag.toString();
    }

%>
<table>
    <%
        String tableName = request.getParameter("tableName");

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        String jdbcDriver = "jdbc:oracle:thin:@192.168.0.108:1521:XE";
        String dbUser = "c##swiftly";
        String dbPass = "iehfur9274";
        String sql = "SELECT * FROM " + tableName;

        try {
            Map<String, List<String>> map = setColumns();
            Connection connect = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
            //커서를 이동시키기 위해서 사용됨
            //ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE
            PreparedStatement statement = connect.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
            ResultSet rs = statement.executeQuery();

            out.println("Number of Records : " + getRowCount(rs) + "<br/>");
            out.println(DisplayTable(rs, map.get(tableName)));

            rs.close();
            statement.close();
            connect.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</table>