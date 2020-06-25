$id = id => document.getElementById(id);
const list = $id('list');
$id('btnFind').onclick = () => {
    const xhr = new XMLHttpRequest();
    const url = 'boardResult.jsp?findStr=' + $id('findStr').value;
    xhr.open('GET', url);
    xhr.onreadystatechange = () => {
        if (xhr.status === 200 && xhr.readyState === 4) {
            const data = JSON.parse(xhr.responseText);
            let str = '';
            for (const datum of data) {
                str += '<div class="row">';
                str += '<span class="noTD">' + datum.no + '</span>';
                str += '<span class="idTD">' + datum.id + '</span>';
                str += '<span class="titleTD">' + datum.title + '</span>';
                str += '<span class="dateTD">' + datum.writeDate + '</span>';
                str += '</div>';
            }
            list.innerHTML = str;
        }
    };
    xhr.send();
}