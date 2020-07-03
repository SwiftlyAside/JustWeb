$(() => {
  $('#result').css({
    width: '500px',
    border: '2px solid #aaa',
    'border-radius': '10px',
    'box-shadow': 'inset 1px 1px 2px rgba(0, 0, 0, 0.1)',
  });

  $('#btnFind').click(() => {
    /*
    // Ajax
    $.ajax({
      type: 'get',
      dataType: 'json',
      url: `/jsp4/ajax/productSuggestResult.jsp?findStr=${$('#findStr').val()}`,
      success(json) {
        const $result = $('#result');
        $result.html('');
        for (const jsonElement of json) {
          $result.append(`<li>ID: ${jsonElement.id}</li><li>NAME: ${jsonElement.name}</li>`);
        }
      },
    }); */

    /*
    // Get
    $.get('/jsp4/ajax/productSuggestResult.jsp', $('#findStr').val(), (json) => {
      const $result = $('#result');
      $result.html('');
      for (const jsonElement of json) {
        $result.append(`<li>ID: ${jsonElement.id}</li><li>NAME: ${jsonElement.name}</li>`);
      }
    }, 'json'); */

    // Post
    $.post('/jsp4/ajax/productSuggestResult.jsp', `findStr=${$('#findStr').val()}`, (json) => {
      const $result = $('#result');
      $result.html('');
      for (let i = 0; i < json.length; i += 1) {
        $result.append(`<li>ID: ${json[i].id}</li><li>NAME: ${json[i].name}</li>`);
      }
    }, 'json');
  });
});
