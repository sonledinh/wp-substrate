if($(window).innerWidth() > 767){}

$(document).ready(function(){
   $(window).bind('scroll', function() {
   // var navHeight = $( window ).height() - 70;  
         if ($(window).scrollTop() > 200) {
             $('.btn-scroll').addClass('scroll');
         }
         else {
             $('.btn-scroll').removeClass('scroll');
         }
    });
});

$('.slide-text-loop').slick({
    autoplay: true,
    autoplaySpeed: 2000,
    arrow: false,
    dots: false,
    slidesToShow: 1,
    vertical: true,
    verticalSwiping: true,
    prevArrow: '',
    nextArrow: '',
}); 


// $('.slide-svg').slick({
//     autoplay: true,
//     autoplaySpeed: 1500,
//     arrow: false,
//     dots: false,
//     fade: true, 
//     slidesToShow: 1,
//     prevArrow: '',
//     nextArrow: '',
// }); 


$('.btn-scroll a').click(function(e){
  e.preventDefault();
  var target = $($(this).attr('href')); 
  if(target.length){
    var scrollTo = target.offset().top;
    $('body, html').animate({scrollTop: scrollTo+'px'}, 800);
  }
});

jQuery(function($) {
  var doAnimations = function() {
    var offset = $(window).scrollTop() + $(window).height(),
        $animatables = $('.list-part ul li');
    if ($animatables.length == 0) {
      $(window).off('scroll', doAnimations);
    }
    $animatables.each(function(i) {
       var $animatable = $(this);
      if (($animatable.offset().top + $animatable.height() - 20) < offset) {
            $animatable.addClass('active');
      }
      else {
        $animatable.removeClass('active');
      }
    }); 
  };
  $(window).on('scroll', doAnimations);
  $(window).trigger('scroll');
}); 