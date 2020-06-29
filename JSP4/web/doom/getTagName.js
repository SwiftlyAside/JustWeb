const btn = document.getElementById('btn');
const result = document.getElementById('result');

btn.onclick = () => {
    // form 태그를 통하여 자식 node 선택
    const form = document.form;
    let chk = form.hobby;
    let str = getEle(chk);
    // getElementsByTagName 을 이용하여 node 선택
    str += '<h2>getElementsByTagName</h2>';

    chk = document.getElementsByTagName('input');
    str += getEle(chk);
    result.innerHTML = str;
}

function getEle(chk) {
    let str = '';
    for (const chkElement of chk) {
        if (chkElement.checked) {
            str += `<li>type : ${chkElement.type}`;
            str += `<li>name : ${chkElement.name}`;
            str += `<li>value : ${chkElement.value}`;
            str += `<li>id : ${chkElement.id}`;
            str += `<li>class : ${chkElement.className}`;
            str += '<hr>';
        }
    }
    return str;
}
