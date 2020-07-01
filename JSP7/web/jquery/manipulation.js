$(document).ready(() => {
  const $here = $('#here');
  $here.css({
    border: '1px solid #f66',
    padding: '20px',
    'box-sizing': 'border-box',
    'border-radius': '10px',
  });

  $('#btnWrap').click(() => {
    const $this = '<div style="background-color: #fee"></div>';
    $here.wrap($this);
  });

  $('#btnAppend').click(() => {
    const $this = '<input type="text">';
    $here.append($this);
  });
});
