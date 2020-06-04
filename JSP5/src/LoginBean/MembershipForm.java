package LoginBean;

public class MembershipForm {
    public final int NAME = 1;
    public final int EMAIL = 2;
    public final int AUTH = 4;

    public String CreateMembershipForm(String id, int addTag) {
        String tag = "<table>";
        tag += "<tr>";
        tag += "<td>" + id + "</td>";
        tag += "<td><input type='text' name='id' placeholder='아이디' size='40'/></td>";
        tag += "</tr>";
        tag += "<tr>";
        tag += "<td>비밀번호</td>";
        tag += "<td><input type='password' name='pw' placeholder='비밀번호(8자 이상)' size='40'/></td>";
        tag += "</tr>";
        tag += "<tr>";
        tag += "<td>비밀번호 재확인</td>";
        tag += "<td><input type='password' name='pwOk' placeholder='비밀번호 재확인' size='40'/></td>";
        tag += "</tr>";
        if ((addTag & NAME) == NAME) {
            tag += "<tr>";
            tag += "<td>이름</td>";
            tag += "<td><input type='text' name='name' placeholder='이름' size='40'/></td>";
            tag += "</tr>";
        }
        if ((addTag & EMAIL) == EMAIL) {
            tag += "<tr>";
            tag += "<td>이메일 주소</td>";
            tag += "<td>";
            tag += "<input type='text' name='email' placeholder='본인확인용 이메일(선택)' size='30'/>";
            tag += "<input type='submit' value='인증'/>";
            tag += "</td>";
            tag += "</tr>";
        }
        if ((addTag & AUTH) == AUTH) {
            tag += "<tr>";
            tag += "<td>인증번호</td>";
            tag += "<td><input type='text' name='authNum' placeholder='인증번호(10분 동안 유효)' size='40'/></td>";
            tag += "</tr>";
        }
        tag += "</table>";

        return tag;
    }
}
