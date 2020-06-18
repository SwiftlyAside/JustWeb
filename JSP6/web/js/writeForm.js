function checkWrite() {
    if (!checkField('title', '제목을 입력하세요.')) return;
    if (!checkField('contents', '내용을 입력하세요.')) return;
    document.getElementById('writeForm').submit();
}