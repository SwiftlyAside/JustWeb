function setTime() {
    let currentDate = new Date();
    let days = ['일', '월', '화', '수', '목', '금', '토'];
    const years = currentDate.getFullYear();
    const months = currentDate.getMonth() + 1;
    const date = currentDate.getDate();
    const hours = currentDate.getHours();
    const minutes = currentDate.getMinutes();
    const seconds = currentDate.getSeconds();
    document.getElementById('timeView').innerHTML = `${
        hours < 10 ? `0${hours}` : hours}:${
        minutes < 10 ? `0${minutes}` : minutes}:${
        seconds < 10 ? `0${seconds}` : seconds}`;
    document.getElementById('timeDateView').innerHTML =
        years + '년 ' + months + '월 ' + date + '일';
}

function pad() {

}

function calendar() {
    setInterval(setTime, 500);
}