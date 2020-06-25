<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String[] temp = new String[]{"홍철","is Legend.","2020-06-24"};

    String str = String.format("{'name':'%s', 'subject':'%s', 'date':'%s'}", temp[0], temp[1], temp[2]);
    str = str.replaceAll("'","\"");
    out.print(str);
%>