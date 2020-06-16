function toDelete() {
    if (confirm('정말로 삭제할까요?')) {
        document.getElementById('toDeleteForm').submit();
    }
}