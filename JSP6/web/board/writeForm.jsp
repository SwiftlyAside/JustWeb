<%@ page contentType="text/html; charset=UTF-8" %>
<%
    String userId = (String) session.getAttribute("userId");
%>
<script src="${pageContext.request.contextPath}/js/writeForm.js"></script>
<div class="formDiv">
    <form id="writeForm" action="${pageContext.request.contextPath}/index.jsp" method="post"
          enctype="multipart/form-data">
        <input type="hidden" name="index" value="<%=request.getParameter("index")%>">
        <input type="hidden" name="form" value="board">
        <table style="width: 650px; ">
            <tr>
                <td style="width: 80px; height:40px;text-align: right">작성자</td>
                <td style="width: 570px; height:40px;">
                    <input type=text name='writer' value="<%=userId%>" readonly/>
                </td>
            </tr>
            <tr>
                <td style="width: 80px; height:40px;text-align: right">제 목</td>
                <td style="width: 570px; height:40px;">
                    <input type=text id="title" name='title' style="width: 500px; "/>
                </td>
            </tr>
            <tr>
                <td colspan=2 align="right"><textarea id="contents" name="contents"
                                                      style="width: 650px; height: 300px"></textarea></td>
            </tr>
            <tr>
                <td style='text-align: center' height=40 colspan=2>
                    <input type=file style="width: 300px; "/>
                </td>
            </tr>
            <tr>
                <td style="text-align: center" height=40 colspan=2>
                    <input type=button onclick="checkWrite()" value='글쓰기' style="width: 120px; "/>
                    <input type=reset value='취소' style="width: 120px; "/>
                </td>
            </tr>
        </table>
    </form>
</div>