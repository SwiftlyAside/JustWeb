<%@ page import="Care.Lab.Board" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
    Board board = (Board) session.getAttribute("board");
%>
<script src="${pageContext.request.contextPath}/js/viewForm.js"></script>
<div class="formDiv">
    <table style="width: 650px; ">
        <tr>
            <td style="width: 300px; height:40px;  text-align: left; vertical-align: middle"><h2><%=board.getTitle()%>
            </h2></td>
            <td style="width: 350px; height:40px; text-align: right; vertical-align: bottom"><%=board.getWriteDate()%>
            </td>
        </tr>
        <tr>
            <td colspan=2>
                <hr/>
            </td>
        </tr>
        <tr>
            <td style="width: 300px; height:40px;  text-align: left; vertical-align: top"><%=board.getId()%>
            </td>
            <td style="width: 350px; height:40px; text-align: right; vertical-align: top">첨부파일</td>
        </tr>
        <tr>
            <td colspan=2 style="width: 650px; height: 300px; vertical-align: top">
		<pre style="width: 650px; white-space: pre-wrap;">
<%=board.getContents()%>
		</pre>
            </td>
        </tr>
        <tr>
            <td colspan=2>
                <hr/>
            </td>
        </tr>
        <tr>
            <td colspan=2>
                <input type=button style="width: 60px; " value='글쓰기'
                       onclick="document.getElementById('toWriteForm').submit()"/>
                <input type=button style="width: 60px; " value='답글'
                       onclick="toReply('<%=board.getNo()%>')"/>
                <input type=button style="width: 60px; " value='수정'
                       onclick="toModify('<%=board.getNo()%>','<%=URLEncoder.encode(board.getTitle(), "UTF-8")%>','<%=URLEncoder.encode(board.getContents(), "UTF-8")%>')"/>
                <input type=button style="width: 60px; " value='삭제'
                       onclick="toDelete('<%=board.getNo()%>')"/>
                <input type=button style="width: 60px; " value='목록'
                       onclick="document.getElementById('toBoardForm').submit()"/>
                <form id="toWriteForm" action="${pageContext.request.contextPath}/index.jsp?form=write" method="post">
                    <input type="hidden" id="replyParentNo" name="replyParentNo">
                    <input type="hidden" id="modifyNo" name="modifyNo">
                    <input type="hidden" id="modifyTitle" name="modifyTitle">
                    <input type="hidden" id="modifyContents" name="modifyContents">
                </form>
                <form id="toBoardForm" action="${pageContext.request.contextPath}/board/boardProc.jsp?index=russia"
                      method="post">
                    <input type="hidden" id="delNo" name="delNo">
                </form>
            </td>
        </tr>
    </table>
</div>