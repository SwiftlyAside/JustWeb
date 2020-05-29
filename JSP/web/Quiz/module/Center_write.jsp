<%@ page contentType="text/html;charset=UTF-8" %>
<style type="text/css">
    #contents {
        width: 725px;
        height: 300px;
    }

    #write {
        border-spacing: 3px;
    }

</style>
<br>
<h1>WRITE</h1>
<hr>
<div style="width: auto; margin: auto">
    <form action="home.jsp" method="get">
        <input type="hidden" name="centerPage" value="view">
        <table id=write>
            <tr>
                <td width=100>제 목</td>
                <td width=600><input type=text name=title size=100/></td>
            </tr>
            <tr>
                <td>작성자</td>
                <td><input type=text name=writer width=600/></td>
            </tr>
            <tr>
                <td colspan=2><textarea id=contents name=contents wrap="hard"></textarea></td>
            </tr>
            <tr>
                <td colspan=2 align=center><input type=submit value=글쓰기></td>
            </tr>
        </table>
    </form>
</div>