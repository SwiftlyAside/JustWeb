function toModify() {
    let param = document.getElementById('modify');
    param.value = 1;
    document.getElementById('toWriteForm').submit();
}

function toDelete() {
    if (confirm('정말로 삭제할까요?')) {
        document.getElementById('toDeleteForm').submit();
    }
}