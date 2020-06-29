<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="dbConnection.jspf" %>
<%
    request.setCharacterEncoding("utf-8");
    String findStr = request.getParameter("findStr");
    Connection connection = getConnection("localhost", "1521", "XE");
    String sql = "select no, title, id, to_char(writeDate, 'yyyy-mm-dd') writeDate " +
            "from BOARD " +
            "where title like ? ";
    try (PreparedStatement statement = connection.prepareStatement(sql)) {
        statement.setString(1, "%" + findStr + "%");
        try (ResultSet rs = statement.executeQuery()) {
            String json = "{";
            if (rs.next()) {
                json += String.format("'no':'%s','title':'%s','id':'%s','writeDate':'%s'",
                        rs.getString("no"), rs.getString("title"), rs.getString("id"), rs.getString("writeDate"));
            }
            json += "}";
            out.print(json.replaceAll("'","\""));
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>