let $id = id => document.getElementById(id);

$id('btn').onclick = () => {
    let xhr = new XMLHttpRequest();
    $id('result').innerHTML = xhr ? '객체가 정상적으로 생성됨.' : '객체 생성중 오류 발생.';
};