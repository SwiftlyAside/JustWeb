<%@ page import="Care.Common.BoardTools" %>
<%@ page import="Care.Lab.Board" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
    List<Board> boardList = (List<Board>) request.getAttribute("boardList");
    int total = (int) request.getAttribute("total");
    int pageNum = (int) request.getAttribute("pageNum");
    int block = (int) request.getAttribute("block");
    String search = request.getParameter("search");
    String searchBy = request.getParameter("searchBy");
    String url = request.getContextPath() + "/board/boardProc.jsp?index=russia&block=" + block + "&pageNum=";
    if (search != null) {
        url = request.getContextPath() + "/board/searchProc.jsp?index=russia&search=" +
                search + "&searchBy=" + searchBy + "&block=" + block + "&pageNum=";
    }
    String urlV = request.getContextPath() + "/board/viewProc.jsp?index=russia&no=";
%>
<script src="${pageContext.request.contextPath}/js/boardForm.js"></script>
<div class="formDiv">
    <form id="writeForm" action="${pageContext.request.contextPath}/index.jsp" method="post">
        <input type="hidden" name="form" value="write">
    </form>
    <form id="deleteForm" action="${pageContext.request.contextPath}/board/deleteProc.jsp" method="post">
        <input type="hidden" name="index" value="russia">
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
                for (Board board : boardList) {
            %>
            <tr>
                <td class='checkTD'>
                    <input type='checkbox' name="delNo" value=<%=board.getNo()%>>
                </td>
                <td class='titleTD'><a href="<%=urlV + board.getNo()%>"><%=board.getTitle()%>
                </a>
                </td>
                <td class='writerTD'><%=board.getId()%>
                </td>
                <td class='dateTD'><%=board.getWriteDate()%>
                </td>
                <td class='numberTD'><%=board.getNo()%>
                </td>
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
                <td colspan=2 style="text-align: left">
                    <input type="checkbox" id="allCB" onchange="selectAllCheckBoxes()"/>전체선택
                </td>
                <td colspan=3 style="text-align: right">
                    <input type="button" value='삭제' style="width: 100px; "
                           onclick="document.getElementById('deleteForm').submit()"/>
                    <input type="button" value='글쓰기' style="width: 100px; "
                           onclick="document.getElementById('writeForm').submit()"/>
                </td>
            </tr>
            <tr>
                <td colspan=5>
                    <hr/>
                </td>
            </tr>
            <tr>
                <td colspan="5" style="text-align: center;">
                    <%=BoardTools.getNavigation(pageNum, block, total, url)%>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <%
                        String scriptFunctionName = "toSearchForm()";
                        Map<String, String> map = new HashMap<>();
                        map.put("전체", "all");
                        map.put("제목", "title");
                        map.put("작성자", "writer");
                    %>
                    <%=BoardTools.getSearchWord(map, scriptFunctionName)%>
                </td>
            </tr>
        </table>
    </form>
    <form id="searchForm" action="${pageContext.request.contextPath}/board/searchProc.jsp?index=russia" method="post">
        <input type="hidden" id="hiddenSearchBy" name="searchBy">
        <input type="hidden" id="hiddenSearchValue" name="search">
    </form>
</div>
