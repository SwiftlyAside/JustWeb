function main() {
    let thumbImage = document.getElementsByClassName('thumb');
    let buttonClose = document.querySelector('.buttonClose');
    for (let i = 0; i < thumbImage.length; i++)
        thumbImage[i].addEventListener('click', openLightBox);
    buttonClose.addEventListener('click', closeLightBox)
}

function getImages() {
    let figure = document.querySelector('figure');
    return figure.children;
}

function initImages(images) {
    for (let i = 0; i < images.length; i++)
        images[i].removeAttribute('class');
}

function changeImage(event) {
    let images = getImages();
    let index = event.target.id - 1;
    initImages(images);
    images[index].setAttribute('class', 'active');
    setCarInfo(index);
}

function openLightBox(event) {
    changeImage(event);
    let lightBox = document.querySelector('#lightBox');
    lightBox.setAttribute('class', 'active');
    let block = document.querySelector('#block');
    block.setAttribute('class', 'active');
}

function closeLightBox() {
    let lightBox = document.querySelector('#lightBox');
    lightBox.removeAttribute('class');
    let block = document.querySelector('#block');
    block.removeAttribute('class');
}

function setCarInfo(index) {
    let carNameArray = [
        '어큐라 NSX GT3',
        '포르쉐 911 GT2 RS 클럽에디션',
        '람보르기니 SC18 콘셉트'
    ];
    let carDataArray = [
        ['GT3', '3501cc', '정보없음', '정보없음', '465,000유로'],
        ['3.8가솔린', '3800cc', '700hp', '11.8l/100km', '가격정보없음'],
        ['SC18', '6,498cc', '770hp', '정보없음', '가격정보없음']
    ];

    let carName = document.querySelector('#carName');
    carName.innerHTML = carNameArray[index];

    let carData = document.querySelector('#carData').children;
    for (let i = 0; i < carData.length; i++)
        carData[i].innerHTML = carDataArray[index][i];
}