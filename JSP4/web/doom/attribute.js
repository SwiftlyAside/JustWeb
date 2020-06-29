$id = id => document.getElementById(id);

$id('btnCreate').onclick = () => {
    const btn = document.createElement('input');
    btn.setAttribute('type', 'text');
    btn.setAttribute('id', 'btn');
    $id('result').appendChild(btn);
}

$id('btnRadio').onclick = () => {
    $id('btn').setAttribute('type', 'radio');
}

$id('btnCheck').onclick = () => {
    $id('btn').setAttribute('type', 'checkBox');
}