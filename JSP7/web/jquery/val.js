$(document).ready(() => {
  const tag = '<label style="color: red; size: 7pt">KIM</label>';
  $('#btnText').click(() => {
    $('#result').text(tag);
    $('#id').val('.text() 함수 실행');
  });
  $('#btnHtml').click(() => {
    $('#result').html(tag);
    $('#id').val('.html() 함수 실행');
  });
});
