function setTime() {
    let currentDate = new Date();
    let days = ['일', '월', '화', '수', '목', '금', '토'];
    const years = currentDate.getFullYear();
    const months = currentDate.getMonth() + 1;
    const date = currentDate.getDate();
    const day = days[currentDate.getDay()];
    const hours = currentDate.getHours();
    const minutes = currentDate.getMinutes();
    const seconds = currentDate.getSeconds();
    document.getElementById('timeView').innerHTML =
        `${pad(hours)}:${pad(minutes)}:${pad(seconds)}`;
    document.getElementById('timeDateView').innerHTML =
        `${years}년 ${months}월 ${date}일 ${day}요일`;
}

function pad(num) {
    return num < 10 ? `0${num}` : num;
}

function calendar() {
    setInterval(setTime, 500);
}