<%@ page import="Care.Lab.Board" %>
<%@ page import="Care.Lab.Hits" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.util.LinkedHashMap" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/common/dbConnection.jspf" %>
<%!
    public Map<Board, Hits> Select(Connection connection, int start, int end, String conditional) {
        Map<Board, Hits> results = new LinkedHashMap<>();
        PreparedStatement statement = null;
        ResultSet resultSet;
        String sql = "select * from (" +
                "select no, id, title, contents, writedate, READNO, ROWNUM as rn " +
                "from (" +
                "select b.NO, b.ID, b.TITLE, b.CONTENTS, b.WRITEDATE, NVL(H.READNO, 0) as READNO " +
                "from BOARD b left join HITS H on b.NO = H.NO " +
                conditional +
                " order by no desc)) " +
                "where rn > ? and rn <= ?";

        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, start);
            statement.setInt(2, end);
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                results.put(new Board(
                                resultSet.getInt(1),
                                resultSet.getString(2),
                                resultSet.getString(3),
                                resultSet.getString(4),
                                resultSet.getDate(5),
                                resultSet.getInt(6)
                        ),
                        getHits(connection, resultSet.getInt(1)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return results;
    }

    public Hits getHits(Connection connection, int no) {
        Hits hits = new Hits();
        Statement statement = null;
        ResultSet resultSet;
        String sql = "select * from HITS where NO = " + no;
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);

            if (resultSet.next()) {
                hits.setNo(resultSet.getInt(1));
                hits.setReadNo(resultSet.getInt(2));
            } else {
                hits.setNo(no);
                hits.setReadNo(0);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return hits;
    }

    public int getTotal(Connection connection, String conditional) {
        int result = 0;
        Statement statement = null;
        ResultSet resultSet;
        String sql = "select count(*) from BOARD " + conditional;

        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);

            if (resultSet.next()) {
                result = resultSet.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return result;
    }

    public String getConditional(String searchBy, String search) {
        if (searchBy != null) {
            if ("writer".contentEquals(searchBy))
                return "where ID like '%" + search + "%'";
            else if ("title".contentEquals(searchBy))
                return "where TITLE like '%" + search + "%'";
            else if ("all".contentEquals(searchBy))
                return "where ID '%" + search + "%' or like TITLE like '%" + search + "%'";
        }
        return "";
    }

    private boolean Delete(Connection connection, int no) {
        boolean result = true;
        PreparedStatement statement = null;
        String sql = "delete from BOARD where NO = ?";
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, no);
            statement.execute();
        } catch (SQLException e) {
            e.printStackTrace();
            result = false;
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return result;
    }
%>
<%
    String searchBy = request.getParameter("searchBy");
    String search = request.getParameter("search");
    String conditional = getConditional(searchBy, search);
    String[] delNos = request.getParameterValues("delNo");
    int pageNum = request.getParameter("pageNum") != null ?
            Integer.parseInt(request.getParameter("pageNum")) - 1 : 0;
    int blockSize = request.getParameter("block") != null ?
            Integer.parseInt(request.getParameter("block")) : 5;
    Connection connection = getConnection("localhost", "1521", "XE");
    if (connection != null) {
        if (delNos != null) {
            for (String delNo : delNos) {
                if (!Delete(connection, Integer.parseInt(delNo))) {
                    System.out.println("다음 글은 삭제가 정상적으로 처리되지 않았습니다.: " + delNo);
                }
            }
        }
        Map<Board, Hits> s = Select(connection, pageNum * blockSize, (pageNum + 1) * blockSize, conditional);
        session.setAttribute("boardList", s);
        session.setAttribute("total", getTotal(connection, conditional));
        session.setAttribute("block", blockSize);
        session.setAttribute("pageNum", pageNum + 1);
        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
<jsp:forward page="/index.jsp">
    <jsp:param name="form" value="board"/>
</jsp:forward>
