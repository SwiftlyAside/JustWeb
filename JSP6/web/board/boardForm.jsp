<%@ page import="Care.Lab.Board" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<div class="formDiv">
    <form action="${pageContext.request.contextPath}/index.jsp" method="post">
        <input type="hidden" name="form" value="write">
        <table style="width: 650px; ">
            <thead>
            <tr>
                <th style="width: 40px; height:20px;" align="center">선택</th>
                <th style="width: 330px; height:20px;" align="center">제 목</th>
                <th style="width: 80px; height:20px;" align="center">작성자</th>
                <th style="width: 120px; height:20px;" align="center">작성일</th>
                <th style="width: 80px; height:20px;" align="center">조회수</th>
            </tr>
            </thead>
            <tr>
                <td style="width: 40px; height:20px;" align="center">
                    <hr/>
                </td>
                <td style="width: 330px; height:20px;" align="center">
                    <hr/>
                </td>
                <td style="width: 80px; height:20px;" align="center">
                    <hr/>
                </td>
                <td style="width: 120px; height:20px;" align="center">
                    <hr/>
                </td>
                <td style="width: 80px; height:20px;" align="center">
                    <hr/>
                </td>
            </tr>
            <%
                List<Board> boardList = (List<Board>) request.getAttribute("boardList");
                for (Board board : boardList)
                {
            %>
            <tr>
                <td class='checkTD'><input type='checkbox' value=<%=board.getNo()%>></td>
                <td class='titleTD'><%=board.getTitle()%></td>
                <td class='writerTD'><%=board.getId()%></td>
                <td class='dateTD'><%=board.getWriteDate()%></td>
                <td class='numberTD'><%=board.getNo()%></td>
            </tr>
            <%
                }
            %>
            <tr>
                <td colspan=5>
                    <hr/>
                </td>
            </tr>
            <tr>
                <td colspan=2 style="text-align: right"><input type="checkbox"/>전체선택</td>
                <td colspan=3 style="text-align: right">
                    <input type="button" value='삭제' style="width: 100px; "/>
                    <input type="submit" value='글쓰기' style="width: 100px; "/>
                </td>
            </tr>
            <tr>
                <td colspan=5>
                    <hr/>
                </td>
            </tr>
        </table>
        이전 1 2 3 4 다음
        <table>
            <tr>
                <td>
                    <select>
                        <option>전체</option>
                        <option>제목</option>
                        <option>작성자</option>
                    </select>
                    <input type=text name='search'/>
                    <input type=button name='searchBtn' value='검색' style="width: 80px; "/>
                </td>
            </tr>
        </table>
    </form>
</div>