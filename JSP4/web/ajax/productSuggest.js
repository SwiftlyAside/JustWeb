$id = id => document.getElementById(id);

function select(ev) {
    const sel = $id('suggest');
    sel.style.display = 'none';
    const val = ev.target.value;
    const url = `productView.jsp?findStr=${val}`;
    const xhr = new XMLHttpRequest();
    xhr.open('GET', url);
    xhr.onreadystatechange = () => {
        if (xhr.status === 200 && xhr.readyState === 4) {
            const data = JSON.parse(xhr.responseText);
            $id('result').innerHTML = `
                        <li>no : ${data.no}
                        <li>title : ${data.title}
                        <li>id : ${data.id}
                        <li>writeDate : ${data.writeDate}`;
        }
    }
    xhr.send();
}

function findFunc() {
    const findStr = $id('findStr').value;
    const url = `productSuggestResult.jsp?findStr=${findStr}`;
    const xhr = new XMLHttpRequest();
    const sel = $id('suggest');
    sel.ondblclick = select;

    xhr.open('GET', url);
    xhr.onreadystatechange = () => {
        if (xhr.status === 200 && xhr.readyState === 4) {
            const data = JSON.parse(xhr.responseText);
            // select 상자에 있던 기존 자료는 비움
            sel.length = 0;

            // 수신된 data에 자료가 있는 경우 select 상자를 표시
            if (!(data === "" || data == null || (typeof data == "object" && !Object.keys(data).length)))
                sel.style.display = 'block';
            else
                sel.style.display = 'none';

            // 응답된 JSON 타입 데이터를 select 상자에 표시
            for (const datum of data)
                sel.options.add(new Option(datum.name, datum.id));
        }
    }
    xhr.send();
}

$id('findStr').onkeyup = () => {
    findFunc();
}
$id('btn').onclick = findFunc;