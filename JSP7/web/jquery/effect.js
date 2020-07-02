$(document).ready(() => {
  $('fieldset').css({
    display: 'inline-block',
    width: '300px',
  });

  $('#btnHide').click(() => {
    $('.ani1').hide(1000, () => alert('사라짐'));
  });
  $('#btnShow').click(() => {
    $('.ani1').show(1000);
  });
  $('#btnToggle').click(() => {
    $('.ani1').toggle('fast');
  });
});
