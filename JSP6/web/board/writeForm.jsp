<%@ page contentType="text/html; charset=UTF-8" %>
<%
    String userId = (String) session.getAttribute("userId");
    String no = request.getParameter("modifyNo");
    String title = request.getParameter("modifyTitle");
    String contents = request.getParameter("modifyContents");
    String buttonName = "수정";

    if (no == null || "".contentEquals(no)) {
        no = "";
        title = "";
        contents = "";
        buttonName = "글쓰기";
    }
    String in = request.getParameter("index") + "write";
%>
<script src="${pageContext.request.contextPath}/js/writeForm.js"></script>
<div class="formDiv">
    <form id="writeForm" action="${pageContext.request.contextPath}/board/writeProc.jsp?index=<%=in%>" method="post"
          enctype="multipart/form-data">
        <input type="hidden" id="modded" name="modifyNo" value="<%=no%>">
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
                    <input type=text id="title" name='title' style="width: 500px; " value="<%=title%>"/>
                </td>
            </tr>
            <tr>
                <td colspan=2 align="right"><textarea id="contents" name="contents"
                                                      style="width: 650px; height: 300px"><%=contents%></textarea></td>
            </tr>
            <tr>
                <td style='text-align: center' height=40 colspan=2>
                    <input type=file name="uploadFile" style="width: 300px; "/>
                </td>
            </tr>
            <tr>
                <td style="text-align: center" height=40 colspan=2>
                    <input type=button onclick="checkWrite('<%=no%>')" value='<%=buttonName%>' style="width: 120px; "/>
                    <input type=reset value='취소' style="width: 120px; "/>
                </td>
            </tr>
        </table>
    </form>
</div>