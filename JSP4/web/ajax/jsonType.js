let mnt = {"apple": "사과", "banana": "바나나", "melon": "멜론"};
console.table(mnt);
console.log('apple : ' + mnt.apple);
console.log('banana : ' + mnt.banana);
console.log('melon : ' + mnt.melon);

mnt = ["백두산", "지리산", "한라산", "설악산"];
for (const i of mnt)
    console.log(i);

const data = {
    "serial": "100", "subject": "요청하신 자료입니다.",
    "mdate": "2020-06-24", "mid": "홍철",
    "attfile": ["a.png", "b.png", "c.png"]
};

console.log('게시물번호 : ' + data.serial);
console.log('제목 : ' + data.subject);
console.log('작성일 : ' + data.mdate);
console.log('작성자 : ' + data.mid);
console.log('첨부파일 : ');
for (const datum of data.attfile) {
    console.log(datum);
}

