const btn = document.querySelector('#btn');
const result = document.querySelector('#result');
btn.onclick = () => {
    const xhr = new XMLHttpRequest();
    xhr.open('GET', 'jsonType2.jsp');
    xhr.onreadystatechange = () => {
        if (xhr.status === 200 && xhr.readyState === 4) {
            const str = xhr.responseText;
            const json = JSON.parse(str);
            result.innerHTML = `<li>name : ${json.name}</li><li>subject : ${json.subject}</li><li>date : ${json.date}</li>`;
        }
    };
    xhr.send();
}