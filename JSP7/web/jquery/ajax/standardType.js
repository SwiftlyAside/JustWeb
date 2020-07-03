$(document).ready(() => {
  $.ajax({
    type: 'post',
    url: 'test.jsp',
    dataType: 'html',
    success(data) {
      $('#result').append(data);
    },
    error(status) {
      console.log(status);
    },
  });
});
