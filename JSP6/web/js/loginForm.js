function checkLogin() {
    if (!checkField('id', '아이디를 입력하세요.')) return;
    if (!checkField('pw', '패스워드를 입력하세요.')) return;
    document.getElementById('loginForm').submit();
}

function checkError(errorMessage) {
    if (!isEmpty(errorMessage))
        alert(errorMessage);
}