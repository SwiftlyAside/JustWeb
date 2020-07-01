const btn = document.querySelector('#btn');
const btn2 = document.querySelector('#btn2');
const result = document.querySelector('#result');
const result2 = document.querySelector('#result2');
btn.onclick = () => {
  const xhr = new XMLHttpRequest();
  xhr.open('GET', 'jsonType2.jsp');
  xhr.onreadystatechange = () => {
    if (xhr.status === 200 && xhr.readyState === 4) {
      const str = xhr.responseText;
      const json = JSON.parse(str);
      result.innerHTML = `<li>name : ${json.name}</li><li>subject : ${json.subject}</li><li>date : ${json.date}</li>`;
    }
  };
  xhr.send();
};

btn2.onclick = () => {
  const xhr = new XMLHttpRequest();
  xhr.open('GET', 'jsonType3.jsp');
  xhr.onreadystatechange = () => {
    if (xhr.status === 200 && xhr.readyState === 4) {
      result2.innerHTML = '';
      const str = xhr.responseText;
      const json = JSON.parse(str);
      for (const jsonElement of json) {
        result2.innerHTML += `<li>serial : ${jsonElement.serial}</li>
                                    <li>name : ${jsonElement.name}</li>
                                    <li>subject : ${jsonElement.subject}</li>
                                    <li>date : ${jsonElement.date}</li>
                                    <li>hit : ${jsonElement.hit}</li>
                                    <hr>`;
      }
      localStorage.setItem('jason', JSON.stringify(json));
    }
  };
  xhr.send();
};
