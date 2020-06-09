<%@ page import="Bean.Categories" %>
<%@ page import="Ex01.FileReader" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String filePath = "E:/Google Drive/123/Categories.txt";
    FileReader fileReader = new FileReader();

    List<String> list = fileReader.getFileContents(filePath);
    List<Categories> categoriesList = fileReader.getCategoriesList(list);

    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
    } catch (ClassNotFoundException e) {
        System.out.println("드라이버를 로드할 수 없음.");
        e.printStackTrace();
    }

    String jdbcDriver = "jdbc:oracle:thin:@192.168.0.108:1521:XE";
    String dbUser = "c##swiftly";
    String dbPass = "iehfur9274";

    String sql = "insert into CATEGORIES VALUES(?, ?, ?)";

    try {
        Connection connect = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
        PreparedStatement statement = connect.prepareStatement(sql);
        for (Categories category : categoriesList) {
            statement.clearParameters();
            statement.setInt(1, category.getCategoryId());
            statement.setString(2, category.getCategoryName());
            statement.setString(3, category.getDescription());
            statement.execute();
        }
        statement.close();
        connect.close();
    } catch (SQLException e) {
        System.out.println("DB와 연결할 수 없음.");
        e.printStackTrace();
    }
%>