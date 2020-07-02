$(document).ready(() => {
  const back = ['#faa', '#afa', '#aaf', '#ffa', '#aff', '#faf'];
  $('li').each(function (index) {
    const pos = index % back.length;
    $(this).css('color', back[pos]);
  });
});
