let isEmpty = function (value) {
    return value === "" || value == null || (typeof value == "object" && !Object.keys(value).length);
};

function checkLogin() {
    let id = document.getElementById('id');
    let pw = document.getElementById('pw');
    if (isEmpty(id.value)) alert('아이디를 입력하세요.');
    else if (isEmpty(pw.value)) alert('패스워드를 입력하세요.');
    else document.getElementById('loginForm').submit();
}

function checkEmail() {
    let email = document.getElementById('email');
    if (isEmpty(email.value)) alert('이메일을 입력하세요.');
    else if (!isEmail(email.value)) alert('이메일 형식이 올바르지 않습니다.');
    else document.getElementById('authForm').submit();
}

function isEmail(asValue) {
    const regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
    return regExp.test(asValue); // 형식에 맞는 경우 true 리턴
}

function checkMember(authString) {
    let id = document.getElementById('memberId');
    let pw = document.getElementById('memberPw');
    let pwOk = document.getElementById('memberPwOk');
    let authNum = document.getElementById('authNum');
    let auth = authString.toString();

    if (isEmpty(id.value)) alert('아이디를 입력하세요.');
    else if (isEmpty(pw.value) || isEmpty(pwOk.value)) alert('비밀번호를 입력하세요.');
    else if (isEmpty(authNum.value)) alert('인증번호를 입력하세요.');
    else if (pw.value !== pwOk.value) {
        alert('비밀번호가 일치하지 않습니다.');
        pw.focus();
    }
    else if (authNum.value !== auth) {
        alert('인증번호가 일치하지 않습니다.');
        authNum.focus();
    }
    else document.getElementById('memberForm').submit();
}