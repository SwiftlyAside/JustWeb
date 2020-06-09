<%@ page import="Bean.Orders" %>
<%@ page import="Ex01.FileReader" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String filePath = "E:/Google Drive/123/Orders.txt";
    FileReader fileReader = new FileReader();

    List<String> list = fileReader.getFileContents(filePath);
    List<Orders> ordersList = fileReader.getOrdersList(list);

    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
    } catch (ClassNotFoundException e) {
        System.out.println("드라이버를 로드할 수 없음.");
        e.printStackTrace();
    }

    String jdbcDriver = "jdbc:oracle:thin:@192.168.0.108:1521:XE";
    String dbUser = "c##swiftly";
    String dbPass = "iehfur9274";

    String sql = "insert into ORDERS VALUES(?, ?, ?, ?, ?)";

    try {
        Connection connect = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
        PreparedStatement statement = connect.prepareStatement(sql);
        for (Orders order : ordersList) {
            statement.clearParameters();
            statement.setInt(1, order.getOrderId());
            statement.setInt(2, order.getCustomerId());
            statement.setInt(3, order.getEmployeeId());
            statement.setString(4, order.getOrderDate());
            statement.setInt(5, order.getShipperId());
            statement.execute();
        }
        out.print("Insert Orders: 이거 잘됨");
        statement.close();
        connect.close();
    } catch (SQLException e) {
        out.print("이거 안됨");
        e.printStackTrace();
    }
%>