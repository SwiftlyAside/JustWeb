<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/common/dbConnection.jspf" %>
<jsp:useBean id="board" class="Care.Lab.Board"/>
<%
    //서버의 실제 경로
    String uploadFilePath = request.getServletContext().getRealPath("uploadFile");
    int maxSize = 1024 * 1024 * 10;   //10MB

    MultipartRequest multiReq = new MultipartRequest(
            request, uploadFilePath, maxSize, "utf-8",
            new DefaultFileRenamePolicy());
    out.print("파일경로 : " + uploadFilePath + "<br/>");
    out.print("작성자 : " + multiReq.getParameter("writer") + "<br/>");
    out.print("제목 : " + multiReq.getParameter("title") + "<br/>");
    out.print("내용 : " + multiReq.getParameter("contents") + "<br/>");
    out.print("파일 : " + multiReq.getParameter("uploadFile") + "<br/>"); //null 값을 갖는다.
    out.print("업로드파일명 : " + multiReq.getFilesystemName("uploadFile") + "<br/>");
    out.print("원래파일명 : " + multiReq.getOriginalFileName("uploadFile") + "<br/>");

    out.print("<a href='" + uploadFilePath + "/" +
            multiReq.getFilesystemName("uploadFile") + "'>" +
            multiReq.getFilesystemName("uploadFile") + "</a>" + "<br/>");
    out.print("<a href='" + request.getContextPath() + "/uploadFile/" +
            multiReq.getFilesystemName("uploadFile") + "'>" +
            multiReq.getFilesystemName("uploadFile") + "</a>");


    board.setId(multiReq.getParameter("writer"));
    board.setTitle(multiReq.getParameter("title"));
    board.setContents(multiReq.getParameter("contents"));

    String form = "write";
    Connection connection = getConnection("192.168.0.108", "1521", "XE");

    if (connection == null) {
        out.print("DB에 접근하지 못했습니다.");
    } else {
        if (Insert(connection, board))
            form = "board";
        else out.print("ID가 존재합니다.");
    }
%>
<jsp:forward page="/index.jsp">
    <jsp:param name="form" value="<%=form%>"/>
    <jsp:param name="index" value='<%=request.getParameter("index")%>'/>
</jsp:forward>