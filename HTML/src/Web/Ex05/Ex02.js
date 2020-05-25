function Calculate() {
    let list = document.getElementsByTagName('input');
    document.getElementById('result').value = 0;
    for (let i = 0; i < list.length; i++) {
        list[i].addEventListener('click', activateList);
    }
}

function activateList(event) {
    if (this.value === 'c')
        document.getElementById('result').value = 0;
    else if (document.getElementById('result').value === '0')
        document.getElementById('result').value = this.value;
    else
        document.getElementById('result').value += this.value;
}