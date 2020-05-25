function isExcept(dan) {
    if (dan === '' || dan === null) {
        alert('값을 입력해야 합니다.');
        return false;
    } else if (isNaN(dan)) {
        alert('숫자를 입력해야 합니다.');
        return false;
    } else if (dan < 2 || dan > 9) {
        alert('2 ~ 9 사이의 숫자만 입력하세요.')
        return false;
    }
    return true;
}

function gugudan() {
    let num = '';
    do num = prompt('숫자를 입력하세요.');
    while (!isExcept(num));
    let txt = makeTitle();
    txt += makeGugudan(num);
    document.write(txt);
}

function makeTitle() {
    return '<div style="text-align: center"><h3>' +
        '===============================<br>' +
        'gugudan<br>' +
        '===============================<br>' +
        '</h3>';
}

function makeGugudan(dan) {
    let txt = '<div class="divTable" style="display: table;width: 50%;margin: auto">';
    txt += '<div class="divRow" style="display: table-row">';
    txt += '<div class="divCell" style="display: table-cell;width: 10%;text-align: center">';
    txt += '<hr style="width: 90%"><h4>' + dan + 'dan</h4><hr style="width: 90%">'
    for (let i = 1; i < 10; i++)
        txt += dan + 'x' + i + '=' + dan * i + '<br>';

    txt += '</div>' // Cell Close
    txt += '</div>' // Row Close
    txt += '</div>' // Table Close
    txt += '</div>' // Div close
    return txt;
}