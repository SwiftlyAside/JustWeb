
function toReply(parentNo) {
    let param1 = document.getElementById('replyParentNo');
    param1.value = parentNo;
    document.getElementById('toWriteForm').submit();
}

function toModify(no, title, contents) {
    let param1 = document.getElementById('modifyNo');
    let param2 = document.getElementById('modifyTitle');
    let param3 = document.getElementById('modifyContents');
    param1.value = no;
    param2.value = title;
    param3.value = contents;
    document.getElementById('toWriteForm').submit();
}

function toDelete(delNum) {
    if (confirm('정말로 삭제할까요?')) {
        let param1 = document.getElementById('delNo');
        param1.value = delNum;
        document.getElementById('toBoardForm').submit();
    }
}