function ListClick() {
    let lst = document.getElementById('lst');
    let liLst = lst.getElementsByTagName('li');

    for (let i = 0; i < liLst.length; i++) {
        liLst[i].addEventListener('click', activeLst);
    }
}

function activeLst(event) {
    let title = document.getElementById('title');
    title.innerText = this.innerText;

    let liLst = event.target.parentElement.children;
    for (let i = 0; i < liLst.length; i++)
        liLst[i].removeAttribute('class');

    this.setAttribute('class', 'active');
}

function btnClick() {
    let addBtn = document.getElementById('addBtn');
    addBtn.addEventListener('click', () => {
        const inputTxt = prompt('추가 내용 입력');
        let lst = document.getElementById('lst');
        let li = document.createElement('li');

        li.innerText = inputTxt;
        li.addEventListener('click', activeLst);
        lst.appendChild(li);
    });
}