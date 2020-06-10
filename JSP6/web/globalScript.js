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