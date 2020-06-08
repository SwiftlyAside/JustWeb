<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%--
  User: iveci
  Date: 2020-06-08
  Time: 오후 12:05
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        out.print("드라이버 불러오기 완료.<br><br>");
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
        out.print("드라이버를 로드할 수 없음.<br><br>");
    }
    String message = null;
    String jdbcDriver = "jdbc:oracle:thin:@192.168.0.108:1521:XE";
    String dbUser = "c##swiftly";
    String dbPass = "iehfur9274";

    try {
        Connection connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
        out.print(dbUser + " 계정으로 접속이 되었습니다.<br><br>");
        connection.close();
        message = "접속 종료됨<br><br>";
    } catch (SQLException e) {
        e.printStackTrace();
        message = "접속 실패<br><br>";
    }
    out.print(message);


%>
<html>
<head>
    <title>DBConnect</title>
</head>
<body>

</body>
</html>
