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
        PreparedStatement statement = null;
        String sql = "insert into BOARD " +
                "(no, id, title, contents, writeDate) " +
                "values ((select nvl(max(no), 0) + 1 from BOARD), ?, ?, ?, current_timestamp)";

        try {
            statement = connection.prepareStatement(sql);
            statement.setString(1, board.getId());
            statement.setString(2, board.getTitle());
            statement.setString(3, board.getContents());
            statement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
            result = false;
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
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

    String form = "write";
    String errorLog = "DB에 접근하지 못했습니다.";
    Connection connection = getConnection("192.168.0.108", "1521", "XE");

    if (connection != null && Insert(connection, board)) {
%>
<jsp:forward page="/board/boardProc.jsp"/>
<%
    } else
        errorLog = "새 글을 작성하지 못했습니다.";
%>
<jsp:forward page="/index.jsp">
    <jsp:param name="form" value="<%=form%>"/>
    <jsp:param name="index" value='<%=request.getParameter("index")%>'/>
    <jsp:param name="errorLog" value='<%=URLEncoder.encode(errorLog,"UTF-8")%>'/>
</jsp:forward>