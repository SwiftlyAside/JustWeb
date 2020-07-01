const upload = {}; // A literal Object
const selFiles = [];
$id = (id) => document.getElementById(id);
upload.start = (form, chooseId, sendId, apZone, url) => {
  const sendForm = $id(form);
  const btnChooseId = $id(chooseId);
  const btnSendId = $id(sendId);
  const appendZone = $id(apZone);
  const sendUrl = url;

  btnChooseId.onchange = (ev) => {
    const { files } = ev.target;
    for (const file of files) {
      upload.imageLoader(file, appendZone);
    }
  };

  appendZone.addEventListener('dragenter', (ev) => {
    ev.preventDefault();
    ev.stopPropagation();
  }, false);

  appendZone.addEventListener('dragover', (ev) => {
    ev.preventDefault();
    ev.stopPropagation();
  }, false);

  appendZone.addEventListener('drop', (ev) => {
    ev.preventDefault();
    ev.stopPropagation();
    const dt = ev.dataTransfer;
    const { files } = dt;
    for (const file of files) { upload.imageLoader(file, appendZone); }
  }, false);

  btnSendId.onclick = () => {
    btnChooseId.value = '';
    const data = new FormData(sendForm);
    const uploadCheck = document.getElementsByClassName('uploadCheck');
    for (let i = 0; i < selFiles.length; i++) {
      if (uploadCheck[i].checked) {
        const name = 'image_';
        data.append(name, selFiles[i]);
      }
    }

    const xhr = new XMLHttpRequest();
    xhr.open('POST', sendUrl);
    xhr.send(data);
    xhr.onreadystatechange = () => {
      if (xhr.status === 200 && xhr.readyState === 4) {
        alert(xhr.responseText);
      }
    };
  };
};

upload.imageLoader = (file, appendZone) => {
  selFiles.push(file);
  const reader = new FileReader();
  reader.onload = (ev) => {
    const img = document.createElement('img');
    img.setAttribute('style', 'width: 200px; height: 180px');
    img.src = ev.target.result;
    appendZone.append(imgDiv(img));
  };
  reader.readAsDataURL(file);
};

imgDiv = (img) => {
  const div = document.createElement('div');
  div.setAttribute('style', 'display:inline-block; position:relative');

  const btn = document.createElement('input');
  btn.setAttribute('type', 'checkBox');
  btn.setAttribute('class', 'uploadCheck');
  btn.setAttribute('checked', 'checked');
  div.appendChild(img);
  div.appendChild(btn);
  return div;
};
