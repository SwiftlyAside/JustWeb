<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="dbConnection.jspf" %>
<%

    String findStr = request.getParameter("findStr");
    String sql = "select * from BOARD " +
            "where title like ? or contents like ? " +
            "order by NO desc ";
    try (Connection connection = getConnection("localhost", "1521", "XE");
         PreparedStatement ps = connection.prepareStatement(sql)) {
        ps.setString(1, "%" + findStr + "%");
        ps.setString(2, "%" + findStr + "%");
        try (ResultSet rs = ps.executeQuery()) {
            StringBuilder sb = new StringBuilder();
            while (rs.next()) {
                out.print(rs.getInt("no") + "-");
                out.print(rs.getString("title"));
                out.print("<br>");
            }
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

%>