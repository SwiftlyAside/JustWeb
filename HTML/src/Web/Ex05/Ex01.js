function ListClicked() {
    let list = document.getElementById('list');
    let liList = list.getElementsByTagName('li');
    for (let i = 0; i < liList.length; i++) {
        liList[i].addEventListener('click', activateList);
    }
}

function activateList() {
    if (this.className !== 'active')
        this.setAttribute('class', 'active');
    else
        this.removeAttribute('class', 'active');
}