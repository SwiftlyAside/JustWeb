<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%!
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

    public String DisplayCustomer(ResultSet rs) {
        StringBuilder tableTag = new StringBuilder();
        tableTag.append("<table>");
        tableTag.append("<tr>");
        tableTag.append("<td>customerID</td>");
        tableTag.append("<td>customerName</td>");
        tableTag.append("<td>ContactName</td>");
        tableTag.append("<td>Address</td>");
        tableTag.append("<td>City</td>");
        tableTag.append("<td>PostalCode</td>");
        tableTag.append("<td>Country</td>");
        try {
            while (rs.next()) {
                tableTag.append("<tr>");
                tableTag.append("<td>").append(rs.getString("customerID")).append("</td>");
                tableTag.append("<td>").append(rs.getString("customerName")).append("</td>");
                tableTag.append("<td>").append(rs.getString("ContactName")).append("</td>");
                tableTag.append("<td>").append(rs.getString("Address")).append("</td>");
                tableTag.append("<td>").append(rs.getString("City")).append("</td>");
                tableTag.append("<td>").append(rs.getString("PostalCode")).append("</td>");
                tableTag.append("<td>").append(rs.getString("Country")).append("</td>");
                tableTag.append("</tr>");
            }
        } catch (Exception e) {
            tableTag = new StringBuilder("<tr><td>Exception</td></tr>");
        }
        tableTag.append("</table>");

        return tableTag.toString();
    }

    public String DisplayCategories(ResultSet rs) {
        StringBuilder tableTag = new StringBuilder("<table>");
        tableTag.append("<tr>");
        tableTag.append("<td>CategoryID</td>");
        tableTag.append("<td>CategoryName</td>");
        tableTag.append("<td>Description</td>");

        try {
            while (rs.next()) {
                tableTag.append("<tr>");
                tableTag.append("<td>").append(rs.getString("CategoryID")).append("</td>");
                tableTag.append("<td>").append(rs.getString("CategoryName")).append("</td>");
                tableTag.append("<td>").append(rs.getString("Description")).append("</td>");
                tableTag.append("</tr>");
            }
        } catch (Exception e) {
            tableTag.append("Exception");
        }
        tableTag.append("</table>");

        return tableTag.toString();
    }
%>
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
        Connection connect = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
        //커서를 이동시키기 위해서 사용됨
        //ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE
        PreparedStatement statement = connect.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
        ResultSet rs = statement.executeQuery();

        out.println("Number of Records : " + getRowCount(rs) + "<br/>");
        if ("Customers".equals(tableName)) {
            out.println(DisplayCustomer(rs));
        } else if ("Categories".equals(tableName)) {
            out.println(DisplayCategories(rs));
        }
        rs.close();
        statement.close();
        connect.close();

    } catch (Exception e) {
        e.printStackTrace();
    }

%>
