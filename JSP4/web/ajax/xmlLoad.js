$id = id => document.getElementById(id);
$id('btn').onclick = () => {
    const url = `xmlData.jsp?findStr=${$id('findStr').value}`;
    const xhr = new XMLHttpRequest();
    xhr.open('GET', url);
    xhr.send();
    xhr.onreadystatechange = () => {
        if (xhr.status === 200 && xhr.readyState === 4) {
            const data = xhr.responseXML;
            const list = data.getElementsByTagName('product');
            let str = '';
            for (const listElement of list) {
                const id = listElement.getElementsByTagName('id').item(0).firstChild.nodeValue;
                const name = listElement.getElementsByTagName('name').item(0).firstChild.nodeValue;
                const unit = listElement.getElementsByTagName('unit').item(0).firstChild.nodeValue;
                str += `<li> ID : ${id}
                        <li> Name : ${name}
                        <li> Unit : ${unit}
                        <hr>`;
            }
            $id('result').innerHTML = str;
        }
    }
}