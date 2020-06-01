function dateTest() {
    setInterval(function () {
        document.getElementById('clock').innerHTML = new Date();
    }, 1000);

    let currentDate = new Date();
    let days = ['일', '월', '화', '수', '목', '금', '토']
    const month = currentDate.getMonth();
    const hours = currentDate.getHours();
    const minutes = currentDate.getMinutes();
    const seconds = currentDate.getSeconds();
    document.write(currentDate.getFullYear() + '년');
    document.write((month + 1) + '월');
    document.write(currentDate.getDate() + '일');
    document.write(days[currentDate.getDay()] + '요일');
    document.write(` ${
        hours < 10 ? `0${hours}` : hours}:${
        minutes < 10 ? `0${minutes}` : minutes}:${
        seconds < 10 ? `0${seconds}` : seconds}`
    );
    document.write('<hr><br>');
    for (let i = 1; i < 13; i++) {
        let date = new Date(new Date().getFullYear(), i, 0);
        document.write((date.getMonth() + 1) + '월 ' + date.getDate() + '일<br>');
    }
}