$(window).scroll(function(){
    parallax();
})


function parallax(){
  var wScroll = $(window).scrollTop();

  $('.parralax--bg').css('background-position', 'center '+(wScroll/3)+'px');

}
