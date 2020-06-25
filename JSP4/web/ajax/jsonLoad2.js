const btn = document.querySelector('#btn');
const result = document.querySelector('#result');
btn.onclick = () => {
    const xhr = new XMLHttpRequest();
    xhr.open('GET', 'jsonType3.jsp');
    xhr.onreadystatechange = () => {
        if (xhr.status === 200 && xhr.readyState === 4) {
            const str = xhr.responseText;
            const json = JSON.parse(str);
            for (const jsonElement of json)
                result.innerHTML += `<li>serial : ${jsonElement.serial}</li><li>name : ${jsonElement.name}</li><li>subject : ${jsonElement.subject}</li><li>date : ${jsonElement.date}</li><li>hit : ${jsonElement.hit}</li><hr>`;
        }
    };
    xhr.send();
}