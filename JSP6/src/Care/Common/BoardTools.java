package Care.Common;

import java.util.Map;

public class BoardTools {
    public static String getNavigation(int currentPage, int pageBlock, int totalPage, String url) {
        int blockCnt = totalPage / pageBlock;
        if (totalPage % pageBlock > 0) blockCnt++;
        StringBuilder result = new StringBuilder();
        if (currentPage != 1)
            result.append("<a href='").append(url).append(currentPage - 1).append("'> [이전] </a>");
        for (int i = 1; i <= blockCnt; i++) {
            if (currentPage == i)
                result.append("<a class='clearText' href='").append(url).append(i).append("'> ").append(i).append(" </a>");
            else result.append("<a href='").append(url).append(i).append("'> ").append(i).append(" </a>");
        }
        if (currentPage != blockCnt)
            result.append("<a href='").append(url).append(currentPage + 1).append("'> [다음] </a>");
        return result.toString();
    }

    public static String getSearchWord(Map<String, String> map, String scriptFunctionName) {
        StringBuilder tag = new StringBuilder("<select id = 'searchBy' name = 'searchBy' >");
        for (Map.Entry<String, String> entry : map.entrySet())
            tag.append("<option value='").append(entry.getValue()).append("'>").append(entry.getKey()).append("</option>");
        tag.append("</select>");
        tag.append("<input type = 'text' id = 'searchValue' name = 'search' />");
        tag.append("<input type = 'button' name = 'searchBtn' value = '검색' onclick ='").append(scriptFunctionName).append("' style = 'width: 80px; ' />");
        return tag.toString();
    }
}
