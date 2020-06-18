<%@ page import="Care.Lab.Board" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/common/dbConnection.jspf" %>
<%!
    public MultipartRequest getMultiRequest(HttpServletRequest request, String uploadFile, int max) {
        int maxSize = 1024 * 1024 * max;
        String uploadFilePath = request.getServletContext().getRealPath(uploadFile);

        MultipartRequest multiReq = null;
        try {
            multiReq = new MultipartRequest(
                    request, uploadFilePath, maxSize, "utf-8",
                    new DefaultFileRenamePolicy());
        } catch (IOException e) {
            e.printStackTrace();
        }
        return multiReq;
    }

    public Board setBoard(MultipartRequest multipartRequest) {
        Board board = new Board();
        board.setId(multipartRequest.getParameter("writer"));
        board.setTitle(multipartRequest.getParameter("title"));
        board.setContents(multipartRequest.getParameter("contents"));
        return board;
    }

    public boolean Insert(Connection connection, Board board) {
        boolean result = true;
        String sql = "insert into BOARD " +
                "(no, id, title, contents, writeDate) " +
                "values ((select nvl(max(no), 0) + 1 from BOARD), ?, ?, ?, current_timestamp)";

        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, board.getId());
            statement.setString(2, board.getTitle());
            statement.setString(3, board.getContents());
            statement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
            result = false;
        } finally {
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return result;
    }

    private boolean Update(Connection connection, Board board) {
        boolean result = true;
        String sql = "update BOARD " +
                "set TITLE = ?, CONTENTS = ?, WRITEDATE = current_timestamp " +
                "where NO = ?";

        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, board.getTitle());
            statement.setString(2, board.getContents());
            statement.setInt(3, board.getNo());
            statement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
            result = false;
        } finally {
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return result;
    }
%>
<%
    MultipartRequest multipartRequest = getMultiRequest(request, "uploadFile", 100);
    Board board = setBoard(multipartRequest);

    String errorLog = "새 글을 작성하지 못했습니다.";
    Connection connection = getConnection("localhost", "1521", "XE");
    String modifyNo = multipartRequest.getParameter("modifyNo");
    boolean success = false;
    if (connection != null) {
        if (!"".contentEquals(modifyNo)) {
            board.setNo(Integer.parseInt(modifyNo));
            success = Update(connection, board);
        } else
            success = Insert(connection, board);
    }
    if (success) {
%>
<jsp:forward page="/board/boardProc.jsp"/>
<%
} else
%>
<jsp:forward page="/index.jsp">
    <jsp:param name="form" value="write"/>
    <jsp:param name="errorLog" value='<%=URLEncoder.encode(errorLog,"UTF-8")%>'/>
</jsp:forward>