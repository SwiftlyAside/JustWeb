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
        `${getYearMonth(currentDate) + date}일 ${day}요일`;
}

function setCalenderYearMonth(currentDate) {
    document.getElementById('calendarYearMonth').innerHTML =
        getYearMonth(currentDate);
}

function getToday() {
    let calendarYearMonth = getCalendarYearMonth('calendarYearMonth');
    let timeDateView = getCalendarYearMonth('timeDateView');
    return calendarYearMonth.year === timeDateView.year &&
    calendarYearMonth.month === timeDateView.month ? timeDateView.date : 0;
}

function setCalendarDate(currentDate) {
    let calendar = document.getElementById('calendarDate');
    let currentCalendar = getCurrentCalendar(currentDate);
    calendar.innerHTML = '';
    calendar.appendChild(createTable(currentCalendar.start, currentCalendar.last, getToday()));
}

function getCurrentCalendar(currentDate) {
    return {
        start: new Date(currentDate.getFullYear(), currentDate.getMonth(), 1).getDay(),
        last: new Date(currentDate.getFullYear(), currentDate.getMonth() + 1, 0).getDate()
    };
}

function createTable(currentDate, lastDate, today) {
    let days = ['일', '월', '화', '수', '목', '금', '토'];
    let dayCount = 0;
    let table = document.createElement('table');
    let tr = document.createElement('tr');
    for (let j = 0; j < days.length; j++) {
        let td = document.createElement('td');
        td.innerHTML = days[j];
        tr.appendChild(td);
    }
    table.appendChild(tr);
    tr = document.createElement('tr');
    for (let i = 0; i < currentDate; i++) {
        let td = document.createElement('td');
        tr.appendChild(td);
        dayCount++;
    }

    for (let i = 1; i <= lastDate; i++) {
        let td = document.createElement('td');
        td.innerHTML = `${i}`;
        if (i === today)
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

function getCalendarYearMonth(id) {
    let calendarYearMonth = document.getElementById(id);
    let yearMonth = calendarYearMonth.innerText.split(' ');
    return {
        year: parseInt(yearMonth[0]),
        month: parseInt(yearMonth[1]),
        date: parseInt(yearMonth[2])
    };
}

function moveCalendar(event) {
    let yearMonth = getCalendarYearMonth('calendarYearMonth');
    let moveDate = new Date(yearMonth.year, (yearMonth.month - 1) + parseInt(event.target.className), 1);
    setCalenderYearMonth(moveDate);
    setCalendarDate(moveDate);
}

function setMoveButton() {
    let beforeButton = document.getElementById('calendarBeforeBtn');
    let afterButton = document.getElementById('calendarAfterBtn');

    beforeButton.addEventListener('click', moveCalendar);
    afterButton.addEventListener('click', moveCalendar);
}

function calendar() {
    let currentDate = new Date();
    setTime();
    setTimeDateView(currentDate);
    setCalenderYearMonth(currentDate);
    setCalendarDate(currentDate);
    setMoveButton();
    setInterval(setTime, 500);
}