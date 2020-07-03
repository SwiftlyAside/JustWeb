$(() => {
  $('#btnFind').click(() => {
    $.get(`saleList.jsp?findStr=${$('#findStr').val()}`, (json) => {
    }, 'json');
  });

  $('#sel').selected(() => {
    $.get(`saleView.jsp?productId=${$('#id').val()}`, (data) => {
      const xml = $.parseXML(data);
    });
  });

  $('#btnSale').click(() => {
    $('#result').load(`saleResult.jsp?productId=${$('#pid').val()}&ea=${$('#ea').val()}`);
  });
});
