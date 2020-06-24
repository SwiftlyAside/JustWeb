<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String mID = request.getParameter("mID");
    String pwd = request.getParameter("pwd");
    String msg;
    if ("hong".contentEquals(mID) && "chul".contentEquals(pwd))
        msg = "당신은 관리자이다.";
    else if ("kim".contentEquals(mID) && "1234".contentEquals(pwd))
        msg = "당신은 우수회원이다.";
    else
        msg = "당신은 손님이다.";

    out.print(msg);
%>