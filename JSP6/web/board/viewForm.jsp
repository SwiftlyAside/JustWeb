<%@ page import="Care.Lab.Board" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
    Board board = (Board) request.getAttribute("board");
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
                       onclick="document.getElementById('toReplyForm').submit()"/>
                <input type=button style="width: 60px; " value='수정' onclick="toModify()"/>
                <input type=button style="width: 60px; " value='삭제'
                       onclick="toDelete()"/>
                <input type=button style="width: 60px; " value='목록'
                       onclick="document.getElementById('toBoardForm').submit()"/>
                <form id="toWriteForm" action="${pageContext.request.contextPath}/index.jsp" method="post">
                    <input type="hidden" name="form" value="write">
                    <input type="hidden" name="todo">
                </form>
                <form id="toReplyForm" action="${pageContext.request.contextPath}/board/boardProc.jsp?index=russia"
                      method="post"></form>
                <form action="${pageContext.request.contextPath}/board/boardProc.jsp?index=russia" method="post"></form>
                <form id="toDeleteForm" action="${pageContext.request.contextPath}/board/boardProc.jsp?index=russia"
                      method="post">
                    <input type="hidden" name="delNo" value="<%=board.getNo()%>">
                </form>
                <form id="toBoardForm" action="${pageContext.request.contextPath}/board/boardProc.jsp?index=russia"
                      method="post"></form>
            </td>
        </tr>
    </table>
</div>