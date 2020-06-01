function ListClick() {
    let list = document.getElementById('list');
    list.addEventListener('click', activateList);
}

function activateList(event) {
    let title = document.getElementById('title');
    let liList = event.target.parentElement.children;
    for (let i = 0; i < liList.length; i++)
        liList[i].removeAttribute('class')

    title.innerText = event.target.innerText;
    event.target.setAttribute('class', 'active');
}

function buttonClick() {
    let addButton = document.getElementById('addButton');
    addButton.addEventListener('click', () => {
        let inputText = prompt('추가할 내용을 입력하세요.');
        let list = document.getElementById('list');
        let li = document.createElement('li');
        li.innerText = inputText;
        list.appendChild(li);
    });
}