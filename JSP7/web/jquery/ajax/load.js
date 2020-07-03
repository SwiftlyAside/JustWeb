$(() => {
  $('#btnTest').click(() => {
    $('#test').load('test.jsp');
  });

  $('#btnDan').click(() => {
    $('#gugudan').load('/jsp4/ajax/gugudanResult.jsp', `dan=${$('#dan').val()}`);
  });

  $('#btnLoadA').click(() => {
    $('#test').load('loadPart.html #a');
  });

  $('#btnLoadB').click(() => {
    $('#test').load('loadPart.html #b');
  });

  $('#btnLoadC').click(() => {
    $('#test').load('loadPart.html #c');
  });
});
