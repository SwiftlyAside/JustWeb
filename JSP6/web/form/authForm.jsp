<%@ page contentType="text/html; charset=UTF-8" %>

<div style="display: flex; justify-content: center">
    <form action="index.jsp" method="post">
        <input type="hidden" name="form" value="member">
        <table>
            <tr>
                <td>
                    <label>
                        E-Mail
                        <input type=email name='email' placeholder='email 입력' style="width: 200px; "/>
                    </label>
                    <input type=submit value='인증번호 전송' style="width: 120px; "/>
                </td>
            </tr>
        </table>
    </form>
</div>
