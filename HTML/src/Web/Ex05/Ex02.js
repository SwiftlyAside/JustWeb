function Calculate() {
    let list = document.getElementsByTagName('input');
    document.getElementById('result').value = 0;
    for (let i = 0; i < list.length; i++) {
        list[i].addEventListener('click', buttonAction);
    }
}

function buttonAction() {
    let result = document.getElementById('result');
    if (result.value === '0')
        result.value = '';
    if (this.value === 'c')
        result.value = 0;
    else if (this.value === '<') {
        result.value = result.value.substr(0, result.value.length - 1);
        if (result.value === '') result.value = 0;
    } else if (this.value === '=')
        result.value = eval(result.value);
    else
        result.value += this.value;
}