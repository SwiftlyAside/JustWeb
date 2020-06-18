function checkWrite(modded) {
    if (!checkField('title', '제목을 입력하세요.')) return;
    if (!checkField('contents', '내용을 입력하세요.')) return;
    if (!isEmpty(modded)) {
        let mod = document.getElementById('modded');
        mod.value = 1;
    }
    document.getElementById('writeForm').submit();
}