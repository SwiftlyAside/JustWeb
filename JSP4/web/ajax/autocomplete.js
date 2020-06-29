$id = id => document.getElementById(id);

function findFunc() {
    const findStr = $id('findStr').value;
    const url = `autocompleteResult.jsp?findStr=${findStr}`;
    const xhr = new XMLHttpRequest();
    const sel = $id('suggest');

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
                sel.options.add(new Option(datum, datum));
        }
    }
    xhr.send();
}

$id('findStr').onkeyup = ev => {
    // 입력 키가 enter 인 경우 함수 실행
    const key = ev.key;
    if (key === 'Enter')
        findFunc();
}
$id('btn').onclick = findFunc;