<%@ page import="com.oreilly.servlet.MultipartRequest, com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String path = "C:/Program Files/Apache Software Foundation/Tomcat 9.0/webapps/jsp4/ajax/upload/";
    int maxSize = 1024 * 1024 * 100; // is 100MB
    MultipartRequest req = new MultipartRequest(request, path, maxSize, "utf-8", new DefaultFileRenamePolicy());

%>
파일 전송이 성공적으로 종료되었습니다.