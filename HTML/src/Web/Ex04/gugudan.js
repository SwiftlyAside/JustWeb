function gugudan() {
    const num = prompt('숫자를 입력하세요.');
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