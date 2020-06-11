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
    const regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
    let email = document.getElementById('email');
    if (isEmpty(email.value)) alert('이메일을 입력하세요.');
    else if (!regExp.test(email.value)) alert('이메일 형식이 올바르지 않습니다.');
    else document.getElementById('authForm').submit();
}

function checkMember(authString) {
    let ids = ['memberId', 'memberPw', 'memberPwOk', 'authNum'];
    for (const id of ids)
        if (!checkField(id)) return;
    if (!checkPassword(ids[1], ids[2])) return;
    if (checkAuth(ids[3], authString))
        document.getElementById('memberForm').submit();
}

function checkField(textField) {
    let id = document.getElementById(textField);
    if (isEmpty(id.value)) {
        alert('필수 항목이 비어있습니다.');
        id.focus();
        return false;
    }
    return true;
}

function checkPassword(password, passwordOk) {
    let pw = document.getElementById(password);
    let pwOk = document.getElementById(passwordOk);
    if (pw.value !== pwOk.value) {
        alert('비밀번호가 일치하지 않습니다.');
        pw.value = '';
        pwOk.value = '';
        pw.focus();
        return false;
    } else return true;
}

function checkAuth(authNum, authString) {
    let auth = document.getElementById('authNum');
    let authTarget = authString.toString();

    let authCredentialBefore = CryptoJS.SHA512(auth.value);
    let authCredential = CryptoJS.enc.Hex.stringify(authCredentialBefore);
    console.log('Target: ' + authTarget);
    console.log('Resource: ' + authCredential);
    if (authCredential !== authTarget) {
        alert('인증번호가 일치하지 않습니다.');
        auth.focus();
        return false;
    } else return true;
}