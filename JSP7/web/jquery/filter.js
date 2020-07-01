$(document).ready(() => {
  // $('#filter > #form input:focus').css('background-color', '#9cf');
  /* 지워도됨
    $('#filter > #form input').focus(() => {
            $(this).css('background-color', '#ace');
        });
        */
  $('#filter > #list > .table').css('display', 'table');
  $('#filter > #list > .table > .row div').css({
    display: 'table-cell',
    width: '100px',
  });
  $('#filter > #list > .table > .row:even').css({
    'background-color': '#ddd',
    margin: '4px 0',
  });
});
