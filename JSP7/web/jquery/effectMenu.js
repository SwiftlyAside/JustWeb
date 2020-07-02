function webLoad(url, content) {
  const xhr = new XMLHttpRequest();
  xhr.open('get', url);
  xhr.onreadystatechange = () => {
    if (xhr.status === 200 && xhr.readyState === 4) {
      $(content).html(xhr.responseText);
    }
  };
  xhr.send();
}

$(document).ready(() => {
  /*
    $('#body').css({
      width: '800px',
      margin: '10px auto',
    }); */
  /*
  $('#menu').css({
    background: '#ddd',
    padding: '8px',
    'box-sizing': 'border-box',
    display: 'table',
  }); */
  /*
  $('#menu > div').css({
    display: 'table-cell',
    position: 'relative',
  }); */
  /*
  $('#menu li').css({
    'list-style': 'none',
    cursor: 'pointer',
  }); */
  /*
  $('#menu li').hover(function f() {
    $(this).css({
      background: '#aaf',
      color: 'black',
      'border-radius': '5px',
    });
  }, function f() {
    $(this).css({
      background: '',
    });
  }); */
  /*
  $('#m1, #m2, #m3').css({
    background: '#aaa',
    padding: '5px',
    display: 'flex',
    'justify-content': 'center',
    'box-sizing': 'border-box',
    cursor: 'pointer',
  }); */
  /*
  $('.sub1, .sub2, .sub3').css({
    'backdrop-filter': 'blur(5px)',
    'border-radius': '5px',
    display: 'none',
    position: 'absolute',
    background: '#ccc',
    padding: '15px',
    'margin-left': '2px',
    opacity: '0.8',
  }); */

  $('#m1').click(() => {
    $('.sub2, .sub3').slideUp('fast');
    $('.sub1').toggle('fast');
  });
  $('#m2').click(() => {
    $('.sub2').toggle('fast', () => {
      $('.sub1, .sub3').slideUp('fast');
    });
  });
  $('#m3').click(() => {
    $('.sub1, .sub2').slideUp('fast');
    $('.sub3').toggle('fast');
  });

  $('#sm1').click(() => {
    webLoad('effectMenuSub1.html', '#content');
  });
  $('#sm2').click(() => {
    webLoad('effectMenuSub2.html', '#content');
  });
});
