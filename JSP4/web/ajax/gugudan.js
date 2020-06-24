let xhr = new XMLHttpRequest();
let btn = document.getElementById('btn');
let result = document.getElementById('result');

btn.onclick = () => {
    let dan = document.getElementById('dan');
    xhr.open('GET', 'gugudanResult.jsp?dan=' + dan.value);
    xhr.send();
    xhr.onreadystatechange = () => {
        if (xhr.status === 200 && xhr.readyState === 4)
            result.innerHTML = xhr.responseText;
    };
};