$(document).ready(() => {
    // 모든 div, 외곽선 추가
    $('div').css('border', '1px solid #00f');
    $('#selector1 > div').css('background-color', '#99f');
    $('#selector2 > .span1').css('color', '#f00');
    $('#selector3 > input[type=text]').css('background-color', '#aaf');
    $('#selector3 > input[type=password]').css('background-color', '#faa');

});