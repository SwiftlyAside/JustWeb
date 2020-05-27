function setTime() {
    let currentDate = new Date();
    const hours = currentDate.getHours();
    const minutes = currentDate.getMinutes();
    const seconds = currentDate.getSeconds();
    document.getElementById('timeView').innerHTML =
        `${setNoon(hours)} ${(convertHour(hours))}:${setPad(minutes)}:${setPad(seconds)}`;
}

function setNoon(num) {
    return num < 12 ? `오전 ` : `오후 `;
}

function convertHour(hours) {
    return hours % 12 === 0 ? 12 : setPad(hours % 12);
}

function setPad(num) {
    return num < 10 ? `0${num}` : num;
}

function getYearMonth(currentDate) {
    const years = currentDate.getFullYear();
    const months = currentDate.getMonth() + 1;
    return `${years}년 ${months}월`;
}

function setTimeDateView(currentDate) {
    let days = ['일', '월', '화', '수', '목', '금', '토'];
    const date = currentDate.getDate();
    const day = days[currentDate.getDay()];
    document.getElementById('timeDateView').innerHTML =
        `${getYearMonth(currentDate)} ${date}일 ${day}요일`;
}

function setCalenderYearMonth(currentDate) {
    document.getElementById('calendarYearMonth').innerHTML =
        getYearMonth(currentDate);
}

function setCalendarDate(currentDate) {
    let calendar = document.getElementById('calendarDate');
    calendar.innerHTML = '';
    calendar.appendChild(createTable(currentDate));
}

function getCurrentCalendar(currentDate) {
    return {
        start: new Date(currentDate.getFullYear(), currentDate.getMonth(), 1).getDay(),
        last: new Date(currentDate.getFullYear(), currentDate.getMonth() + 1, 0).getDate()
    };
}

function createTable(currentDate) {
    let days = ['일', '월', '화', '수', '목', '금', '토'];
    let dayCount = 0;
    let table = document.createElement('table');
    let {start, last} = getCurrentCalendar(currentDate);
    let tr = document.createElement('tr');
    for (let j = 0; j < days.length; j++) {
        let td = document.createElement('td');
        td.innerHTML = days[j];
        tr.appendChild(td);
    }
    table.appendChild(tr);
    tr = document.createElement('tr');
    for (let i = 0; i < start; i++) {
        let td = document.createElement('td');
        tr.appendChild(td);
        dayCount++;
    }

    for (let i = 1; i <= last; i++) {
        let td = document.createElement('td');
        td.innerHTML = `${i}`;
        if (i === currentDate.getDate())
            td.setAttribute('class', 'active');
        tr.appendChild(td);
        dayCount++;
        if (dayCount % 7 === 0) {
            table.appendChild(tr);
            tr = document.createElement('tr');
        }
    }
    table.appendChild(tr);
    return table;
}

function getCalYearMon() {
    let calendarYearMonth = document.getElementById('calendarYearMonth');
    let yearMonth = calendarYearMonth.innerText.split('년');
    alert(`${yearMonth[0]} : ${yearMonth[1]}`);
}

function calendar() {
    let currentDate = new Date();
    setTime();
    setTimeDateView(currentDate);
    setCalenderYearMonth(currentDate);
    setCalendarDate(currentDate);
    setInterval(setTime, 500);
    getCalYearMon();
}