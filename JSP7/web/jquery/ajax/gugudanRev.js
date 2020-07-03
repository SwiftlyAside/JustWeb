$(document).ready(() => {
  $('#btnClick').click(() => {
    $.ajax({
      type: 'post',
      url: `/jsp4/ajax/gugudanResult.jsp?dan=${$('#dan').val()}`,
      dataType: 'html',
      success(data) {
        $('#result').html(data);
      },
    });
  });
});
