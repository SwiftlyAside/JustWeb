<%@ page import="Bean.Products" %>
<%@ page import="Ex01.FileReader" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.List" %>
<%@ page import="Bean.Shippers" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String filePath = "E:/Google Drive/123/Shippers.txt";
    FileReader fileReader = new FileReader();

    List<String> list = fileReader.getFileContents(filePath);
    List<Shippers> shippersList = fileReader.getShippersList(list);

    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
    } catch (ClassNotFoundException e) {
        System.out.println("드라이버를 로드할 수 없음.");
        e.printStackTrace();
    }

    String jdbcDriver = "jdbc:oracle:thin:@192.168.0.108:1521:XE";
    String dbUser = "c##swiftly";
    String dbPass = "iehfur9274";

    String sql = "insert into SHIPPERS VALUES(?, ?, ?)";

    try {
        Connection connect = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
        PreparedStatement statement = connect.prepareStatement(sql);
        for (Shippers shipper : shippersList) {
            statement.clearParameters();
            statement.setInt(1, shipper.getShipperId());
            statement.setString(2, shipper.getShipperName());
            statement.setString(3, shipper.getPhone());
            statement.execute();
        }
        out.print("Insert Shippers: 이거 잘됨");
        statement.close();
        connect.close();
    } catch (SQLException e) {
        out.print("이거 안됨");
        e.printStackTrace();
    }
%>