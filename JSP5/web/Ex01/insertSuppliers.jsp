<%@ page import="Bean.Suppliers" %>
<%@ page import="Ex01.FileReader" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String filePath = "E:/Google Drive/123/Suppliers.txt";
    FileReader fileReader = new FileReader();

    List<String> list = fileReader.getFileContents(filePath);
    List<Suppliers> suppliersList = fileReader.getSuppliersList(list);

    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
    } catch (ClassNotFoundException e) {
        System.out.println("드라이버를 로드할 수 없음.");
        e.printStackTrace();
    }

    String jdbcDriver = "jdbc:oracle:thin:@192.168.0.108:1521:XE";
    String dbUser = "c##swiftly";
    String dbPass = "iehfur9274";

    String sql = "insert into SUPPLIERS VALUES(?, ?, ?, ?, ?, ?, ?, ?)";

    try {
        Connection connect = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
        PreparedStatement statement = connect.prepareStatement(sql);
        for (Suppliers supplier : suppliersList) {
            statement.clearParameters();
            statement.setInt(1, supplier.getSupplierId());
            statement.setString(2, supplier.getSupplierName());
            statement.setString(3, supplier.getContactName());
            statement.setString(4, supplier.getAddress());
            statement.setString(5, supplier.getCity());
            statement.setString(6, supplier.getPostalCode());
            statement.setString(7, supplier.getCountry());
            statement.setString(8, supplier.getPhone());
            statement.execute();
        }
        statement.close();
        connect.close();
    } catch (SQLException e) {
        System.out.println("DB와 연결할 수 없음.");
        e.printStackTrace();
    }
%>