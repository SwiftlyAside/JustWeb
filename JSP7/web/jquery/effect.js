$(document).ready(() => {
  $('fieldset').css({
    display: 'inline-block',
    width: '300px',
  });

  function al(alarm) {
    alert(alarm);
  }

  $('#btnHide').click(() => {
    $('.ani1').hide(2000, () => al('this is alarm'));
  });
  $('#btnShow').click(() => {
    $('.ani1').show(2000);
  });
  $('#btnToggle').click(() => {
    $('.ani1').toggle(3000);
  });
  $('#btnSlideUp').click(() => {
    $('.ani2').slideUp(3000);
  });
  $('#btnSlideDown').click(() => {
    $('.ani2').slideDown(3000);
  });
  $('#btnSlideToggle').click(() => {
    $('.ani2').slideToggle(3000);
  });
  $('#btnFadeIn').click(() => {
    $('.ani3').fadeIn(3000);
  });
  $('#btnFadeOut').click(() => {
    $('.ani3').fadeOut(3000);
  });
  $('#btnFadeTo').click(() => {
    $('.ani3').fadeTo(3000, 0.5);
  });
});
