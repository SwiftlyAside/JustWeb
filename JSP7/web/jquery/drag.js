$(document).ready(() => {
  const color = ['rgba(255,100,101,0.4)', 'rgba(100,255,101,0.4)', 'rgba(101,101,255,0.4)'];
  const $drag = $('.drag');
  $drag.css({
    width: '100px',
    height: '100px',
    'border-radius': '50px',
  });

  $drag.each(function (index) {
    $(this).css({
      background: color[index],
      'backdrop-filter': 'blur(3px)',
    });
  });

  $('#drag').draggable();
  $('#drag2').draggable();
  $('#drag3').draggable();
});
