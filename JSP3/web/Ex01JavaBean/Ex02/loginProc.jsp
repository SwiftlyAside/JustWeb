<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="member" class="JavaBean.Test.Member"/>
<jsp:setProperty name="member" property="*"/>
<jsp:forward page="LoginSuccess.jsp"/>