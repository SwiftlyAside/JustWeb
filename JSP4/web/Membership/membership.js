let isEmpty = function (value) {
    return value === "" || value == null || (typeof value == "object" && !Object.keys(value).length);
};

function check() {
    let userId = document.getElementById('userId');
    if (isEmpty(userId)) alert('아이디를 확인하라.');
}

