$(document).ready(() => {
  $('.drag').css({
    display: 'inline-block',
    width: '100px',
    height: '100px',
    background: '#aaf',
    'border-radius': '5px',
  });
  $('.drop').css({
    display: 'inline-block',
    width: '500px',
    height: '400px',
    border: '5px solid #faa',
    'border-radius': '5px',
  });

  $('#drag').draggable();
  $('#drop').resizable();
  $('#drop').droppable({
    drop: function () {
      $(this).html('Very good');
    },
  });
});
