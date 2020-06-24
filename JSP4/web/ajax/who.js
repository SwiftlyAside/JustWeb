$id = id => document.getElementById(id);
const form = $id('form');
const btn = $id('btn');
const result = $id('result');
btn.onclick = () => {
    const xhr = new XMLHttpRequest();
    const data = `whoResult.jsp?mID=${form.mID.value}&pwd=${form.pwd.value}`;
    xhr.open('GET', data);
    xhr.onreadystatechange = () => {
        if (xhr.status === 200 && xhr.readyState === 4)
            result.innerHTML = xhr.responseText;
    }
    xhr.send();
}