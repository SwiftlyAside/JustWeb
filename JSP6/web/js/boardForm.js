function submitForm(actionPath, index) {
    let form = document.getElementById('form');
    form.action = actionPath;
    form.index.value = index;
}

function selectAllCheckBoxes() {
    let allCB = document.getElementById('allCB');
    let boxes = document.querySelectorAll('input[type=checkbox]');
    for (let box of boxes) {
        box.checked = allCB.checked;
    }
}

function toSearchForm() {
    let searchBy = document.getElementById('searchBy');
    let searchValue = document.getElementById('searchValue');
    let hiddenSearchBy = document.getElementById('hiddenSearchBy');
    let hiddenSearchValue = document.getElementById('hiddenSearchValue');
    if (checkField('searchValue', '검색할 값을 입력하세요.')) {
        hiddenSearchBy.value = searchBy.value;
        hiddenSearchValue.value = searchValue.value;
        document.getElementById('searchForm').submit();
    }
}