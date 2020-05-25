function Calculate() {
    let list = document.getElementsByTagName('input');
    document.getElementById('result').value = 0;
    for (let i = 0; i < list.length; i++) {
        list[i].addEventListener('click', buttonAction);
    }
}

function buttonAction() {
    let result = document.getElementById('result');
    if (this.value === 'c')
        result.value = 0;
    else if (result.value === '0')
        result.value = this.value;
    else if (this.value === '<')
        result.value = result.value.substr(0, result.value.length - 1);
    else
        result.value += this.value;
}