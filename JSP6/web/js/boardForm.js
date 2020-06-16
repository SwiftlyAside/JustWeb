function selectAllCheckBoxes() {
    let allCB = document.getElementById('allCB');
    let boxes = document.querySelectorAll('input[type=checkbox]');
    for (let box of boxes) {
        box.checked = allCB.checked;
    }
}