function ListClick() {
    let list = document.getElementById('list');
    let liList = list.getElementsByTagName('li');
    for (let i = 0; i < liList.length; i++)
        liList[i].addEventListener('click', activateList);
}

function activateList(event) {
    let title = document.getElementById('title');
    let liList = event.target.parentElement.children;

    title.innerText = this.innerText;
    for (let i = 0; i < liList.length; i++)
        liList[i].removeAttribute('class')
    this.setAttribute('class', 'active');
}

function buttonClick() {
    let addButton = document.getElementById('addButton');
    addButton.addEventListener('click', event => {
        let inputText = prompt('추가할 내용을 입력하세요.');

        let list = document.getElementById('list');
        list.innerHTML += '<li>' + inputText + '</li>';
    });
}