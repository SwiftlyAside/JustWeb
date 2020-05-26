function main() {
    let thumbImage = document.getElementsByClassName('thumb');
    let buttonClose = document.querySelector('.buttonClose');
    for (let i = 0; i < thumbImage.length; i++)
        thumbImage[i].addEventListener('click', openLightBox);
    buttonClose.addEventListener('click', closeLightBox)
}

function initImages(event) {
    let figure = document.querySelector('figure');
    let images = figure.children;
    for (let i = 0; i < images.length; i++)
        images[i].removeAttribute('class');
}

function openLightBox(event) {
    initImages(event);
    let lightBox = document.querySelector('#lightBox');
    lightBox.setAttribute('class', 'active');
    let block = document.querySelector('#block');
    block.setAttribute('class', 'active');
    let imageCar = document.querySelector('#' + event.target.id + 'b');
    imageCar.setAttribute('class', 'active');
}

function closeLightBox() {
    let lightBox = document.querySelector('#lightBox');
    lightBox.removeAttribute('class');
    let block = document.querySelector('#block');
    block.removeAttribute('class');
}