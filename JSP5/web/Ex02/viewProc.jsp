<%@ page import="java.sql.*" %><%--
  User: iveci
  Date: 2020-06-09
  Time: 오후 2:36
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<table>
    <tr style="text-align: left">
        <th>CustomerID</th>
        <th>CustomerName</th>
        <th>ContactName</th>
        <th>Address</th>
        <th>City</th>
        <th>PostalCode</th>
        <th>Country</th>
    </tr>
    <%
        String tableName = request.getParameter("tableName");

        if (tableName != null) {
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }

            String jdbcDriver = "jdbc:oracle:thin:@192.168.0.108:1521:XE";
            String dbUser = "c##swiftly";
            String dbPass = "iehfur9274";

            String sql = "select * from " + tableName;

            try (
                    Connection connect = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
                    PreparedStatement statement = connect.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
                    ResultSet result = statement.executeQuery()) {

                result.last();
                out.print("Number of Records : " + result.getRow() + "<br>");
                result.beforeFirst();
                while (result.next()) {
                    out.print("<tr>");
                    out.print("<td>" + result.getString("customerId") + "</td>");
                    out.print("<td>" + result.getString("customerName") + "</td>");
                    out.print("<td>" + result.getString("contactName") + "</td>");
                    out.print("<td>" + result.getString("address") + "</td>");
                    out.print("<td>" + result.getString("city") + "</td>");
                    out.print("<td>" + result.getString("postalCode") + "</td>");
                    out.print("<td>" + result.getString("country") + "</td>");
                    out.print("</tr>");
                }

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    %>
</table>