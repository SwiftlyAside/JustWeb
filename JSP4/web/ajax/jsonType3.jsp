<%@ page import="java.util.regex.Pattern" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    public static String replaceAll(StringBuilder sb, String find, String replace){
        return Pattern.compile(find).matcher(sb).replaceAll(replace);
    }
%>
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
        str.append(String.format("{'serial':'%s','name':'%s','subject':'%s','date':'%s','hit':'%s'}",
                strings[0], strings[1], strings[2], strings[3], strings[4]));
    }
    str.append("]");
    out.print(replaceAll(str,"'","\""));
%>