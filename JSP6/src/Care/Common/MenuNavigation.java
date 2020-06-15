package Care.Common;

public class MenuNavigation {
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
}
