<%@ page import="Ex01.FileReader" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String filePath = request.getParameter("filePath");
    FileReader fileReader = new FileReader();

    List<String> list = fileReader.getFileContents(filePath);

    for (String str : list)
        out.print(str + "<br>");
%>