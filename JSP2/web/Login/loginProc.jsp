<%@ page contentType="text/html;charset=UTF-8" %>
<%!
    public String getGroup(String id) {
        String group = "";
        if ("ilanbluestone".contentEquals(id)) group = "read";
        else if ("jin".contentEquals(id)) group = "readWrite";
        else if ("admin".contentEquals(id)) group = "admin";
        return group;
    }
%>
<%
    String userId = request.getParameter("userId");
    String userPass = request.getParameter("userPass");
    String group = getGroup(userId);

    String[] userIdOk = {"ilanbluestone", "jin", "admin"};
    String[] userPassOk = {"123", "456", "789"};
    String forwardPage = "login.jsp";

    request.setAttribute("state", "level");
    if ("read".contentEquals(group)) request.setAttribute("level", 1);
    else if ("readWrite".contentEquals(group)) request.setAttribute("level", 2);
    else if ("admin".contentEquals(group)) request.setAttribute("level", 3);

    for (int i = 0; i < userIdOk.length; i++) {
        if (userIdOk[i].contentEquals(userId) && userPassOk[i].contentEquals(userPass)) {
            forwardPage = "level.jsp";
            break;
        }
    }
%>
<jsp:forward page="<%=forwardPage%>"/>