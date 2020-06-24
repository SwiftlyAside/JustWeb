<%@ page contentType="text/html;charset=UTF-8" %>
<%
    int dan = Integer.parseInt(request.getParameter("dan"));
    int r;
    out.print(String.format("%d 단<br>", dan));
    for (int i = 1; i < 10; i++) {
        r = dan * i;
        out.print(String.format("%d * %d = %d<br>", dan, i, r));
    }
%>