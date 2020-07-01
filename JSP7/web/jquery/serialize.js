$(document).ready(() => {
  $('#btnSend').click(() => {
    const data = $('#form').serialize();
    const xhr = new XMLHttpRequest();
    xhr.open('get', `serializeResult.jsp?${data}`);
    xhr.send();
    xhr.onreadystatechange = () => {
      if (xhr.status === 200 && xhr.readyState === 4) {
        $('#result').html(xhr.responseText);
      }
    };
  });
});
