$(function () {
    $('#myCarousel').carousel({
        interval:4000,
        pause: "false"
    });

});

$(document).ready(function(e) {
         
          $(".left").click(function(){ 
            $(".carousel").carousel('prev');
          });
          $(".right").click(function(){ 
            $(".carousel").carousel('next');
          });
});



$(document).ready(function(){
    var scrollTop = 0;
    var win = $(window).height();
    var nabar = $('#nav').height();
        
    $(window).scroll(function(){
    scrollTop = $(window).scrollTop();
    if (scrollTop >= win - nabar) {
      $('#nav').addClass('affix');
    } else if (scrollTop < win) {
      $('#nav').removeClass('affix');
    } 
    });
});


