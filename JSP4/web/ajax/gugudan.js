const xhr = new XMLHttpRequest();
const btn = document.getElementById('btn');
const result = document.getElementById('result');

btn.onclick = () => {
  const dan = document.getElementById('dan');
  xhr.open('GET', `gugudanResult.jsp?dan=${dan.value}`);
  xhr.send();
  xhr.onreadystatechange = () => {
    if (xhr.status === 200 && xhr.readyState === 4) { result.innerHTML = xhr.responseText; }
  };
};
