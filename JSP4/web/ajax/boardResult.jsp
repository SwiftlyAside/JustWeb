<%@ page import="java.util.regex.Pattern" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="dbConnection.jspf" %>
<%
    String findStr = request.getParameter("findStr");
    String prefix = "";
    String sql = "select no, id, title, to_char(writeDate, 'yyyy-mm-dd') writeDate from BOARD " +
            "where title like ? or contents like ? " +
            "order by NO desc ";
    try (Connection connection = getConnection("localhost", "1521", "XE");
         PreparedStatement ps = connection.prepareStatement(sql)) {
        ps.setString(1, "%" + findStr + "%");
        ps.setString(2, "%" + findStr + "%");
        try (ResultSet rs = ps.executeQuery()) {
            StringBuffer sb = new StringBuffer("[");
            while (rs.next()) {
                sb.append(prefix);
                prefix = ",";
                String json = String.format("{'no':'%d','id':'%s','title':'%s','writeDate':'%s'}",
                        rs.getInt("no"), rs.getString("id"), rs.getString("title"), rs.getString("writeDate"));
                sb.append(json);
            }
            sb.append("]");
            out.print(Pattern.compile("'").matcher(sb).replaceAll("\""));
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>