$(document).ready(() => {
  //  filter
  $('li').filter((index) => (index % 2 === 0 || index % 5 === 0)).css('color', '#f00');

  // Slice
  $('li').slice(2, 5).css('font-weight', 'bold');
});
