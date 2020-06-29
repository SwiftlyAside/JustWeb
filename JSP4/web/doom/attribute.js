$id = id => document.getElementById(id);

$id('btnCreate').onclick = () => {
    $id('result').innerHTML = '';
    const label = document.createElement('label');
    label.innerHTML = 'option : ';

    const btn = document.createElement('input');
    btn.setAttribute('type', 'text');
    btn.setAttribute('id', 'btn');
    label.appendChild(btn)
    $id('result').appendChild(label);
}

$id('btnRadio').onclick = () => {
    $id('btn').setAttribute('type', 'radio');
}

$id('btnCheck').onclick = () => {
    $id('btn').setAttribute('type', 'checkBox');
}