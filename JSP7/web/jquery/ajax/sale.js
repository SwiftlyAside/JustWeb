$(() => {
  $('#btnFind').click(() => {
    $.get(`saleList.jsp?findStr=${$('#findStr').val()}`, (json) => {
      for (const jsonElement of json) {
        $('#sel').append(new Option(jsonElement.name, jsonElement.id));
      }
    }, 'json');
  });

  $('#sel').change(function () {
    $.get(`saleView.jsp?productId=${$(this).val()}`, (xml) => {
      const $info = $('#info');
      const p = $(xml).find('product');
      $info.html(`<li id="pid" value="${$(p).find('id').text()}">ID: ${$(p).find('id').text()}</li>
                      <li>Name: ${$(p).find('name').text()}</li>
                      <li id="ea" value="${$(p).find('ea').text()}">EA: ${$(p).find('ea').text()}</li>`);
    }, 'xml');
  });

  $('#btnSale').click(() => {
    $('#result').load(`saleResult.jsp?productId=${$('#pid').val()}&ea=${$('#ea').val()}`);
  });
});
