function toModify() {
    console.log('아직 때가 아니다.');
}

function toDelete() {
    if (confirm('정말로 삭제할까요?')) {
        document.getElementById('toDeleteForm').submit();
    }
}