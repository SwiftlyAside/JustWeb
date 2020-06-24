<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="Care.Common.BoardTools" %>
<%@ page import="Care.Lab.Board" %>
<%@ page import="Care.Lab.Hits" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
    Map<Board, Hits> boardList = (Map<Board, Hits>) session.getAttribute("boardList");

    int total = (int) session.getAttribute("total");
    int pageNum = (int) session.getAttribute("pageNum");
    int block = (int) session.getAttribute("block");
    String search = request.getParameter("search");
    String searchBy = request.getParameter("searchBy");
    String url = request.getContextPath() + "/board/boardProc.jsp?index=russia&block=" + block + "&pageNum=";
    if (search != null) {
        url = request.getContextPath() + "/board/boardProc.jsp?index=russia&search=" +
                search + "&searchBy=" + searchBy + "&block=" + block + "&pageNum=";
    }
    String urlV = request.getContextPath() + "/board/viewProc.jsp?index=russia&no=";
%>
<script src="${pageContext.request.contextPath}/js/boardForm.js"></script>
<div class="formDiv">
    <form id="writeForm" action="${pageContext.request.contextPath}/index.jsp" method="post">
        <input type="hidden" name="form" value="write">
    </form>
    <form id="deleteForm" action="${pageContext.request.contextPath}/board/boardProc.jsp" method="post">
        <input type="hidden" name="index" value="russia">
        <table style="width: 650px; ">
            <thead>
            <tr>
                <th style="width: 40px; height:20px; text-align: center">선택</th>
                <th style="width: 330px; height:20px; text-align: center">제 목</th>
                <th style="width: 80px; height:20px; text-align: center">작성자</th>
                <th style="width: 120px; height:20px; text-align: center">작성일</th>
                <th style="width: 80px; height:20px; text-align: center">조회수</th>
            </tr>
            </thead>
            <tr>
                <td style="width: 40px; height:20px; text-align: center">
                    <hr/>
                </td>
                <td style="width: 330px; height:20px; text-align: center">
                    <hr/>
                </td>
                <td style="width: 80px; height:20px; text-align: center">
                    <hr/>
                </td>
                <td style="width: 120px; height:20px; text-align: center">
                    <hr/>
                </td>
                <td style="width: 80px; height:20px; text-align: center">
                    <hr/>
                </td>
            </tr>
            <%
                for (Map.Entry<Board, Hits> entry : boardList.entrySet()) {
                    StringBuilder reply = new StringBuilder();
                    Integer level = entry.getKey().getLevel();
                    if (level > 1)
                        reply.append("<img style='padding-left:")
                                .append(10 * (level - 1)).append("px' ")
                                .append("src='").append(request.getContextPath()).append("/icon_reply.png' ")
                                .append("width='8' height='8' alt='답글'>&nbsp;");
            %>
            <tr>
                <td class='checkTD'>
                    <input type='checkbox' name="delNo" value=<%=entry.getKey().getNo()%>>
                </td>
                <td class='titleTD'><a href="<%=urlV + entry.getKey().getNo()%>"><%=reply + entry.getKey().getTitle()%>
                </a>
                </td>
                <td class='writerTD'><%=entry.getKey().getId()%>
                </td>
                <td class='dateTD'><%=entry.getKey().getWriteDate()%>
                </td>
                <td class='numberTD'><%=entry.getKey().getHit()%>
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
        <table style="display: flex; justify-content: center">
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
    <form id="searchForm" action="${pageContext.request.contextPath}/board/boardProc.jsp?index=russia" method="post">
        <input type="hidden" id="hiddenSearchBy" name="searchBy">
        <input type="hidden" id="hiddenSearchValue" name="search">
    </form>
</div>