function checkEmail() {
    if (!checkField('email', '이메일을 입력하세요.')) return;
    if (!isValidEmail('email')) return;
    document.getElementById('authForm').submit();
}

function isValidEmail(id) {
    const regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
    let email = document.getElementById(id);
    if (!regExp.test(email.value)) {
        alert('이메일 형식이 올바르지 않습니다.');
        return false;
    } else return true;
}