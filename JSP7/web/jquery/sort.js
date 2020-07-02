$(document).ready(() => {
  $('#sortable').sortable();

  $('#btn').click(() => {
    $('li').each(function (index) {
      console.log($(this).text());
    });
  });
});
