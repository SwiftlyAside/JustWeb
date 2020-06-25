<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String[][] temp = new String[][] {
            {"100", "Hong", "Ello.", "2020-06-25", "100"},
            {"200", "Kim", "Ello from korea", "2020-06-25", "111"},
            {"300", "Lee", "Ello from Russia", "2020-06-26", "300"}
    };
    StringBuilder str = new StringBuilder("[");
    String prefix = "";
    for (String[] strings : temp) {
        str.append(prefix);
        prefix = ",";
        str.append(String.format("{'serial':'%s','name':'%s','title':'%s','date':'%s','hit':'%s'}",
                strings[0], strings[1], strings[2], strings[3], strings[4]));
    }
    str.append("]");
    String str2 = str.toString().replaceAll("'", "\"");
    out.print(str2);
%>