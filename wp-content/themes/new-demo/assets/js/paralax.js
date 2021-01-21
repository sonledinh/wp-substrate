  (function($) {

      "use strict"

      

  })(jQuery); 


$(function() {
          function scrollBanner() {
              $(document).scroll(function() {
                  var scrollPos = $(this).scrollTop();
                  $('.info-banner').css({
                      // 'top': (-scrollPos / 3) + 'px',
                      // 'top': (-50) + 'px', 
                      'opacity': 1 - (scrollPos / 450)
                  });
                  $('.link-banner').css({
                      'opacity': 1 - (scrollPos / 450)
                  });
                  $('.build-1').css({
                      'opacity': 1 - (scrollPos / 1000),
                      'top': (-scrollPos / 5) + 'px',
                  });
                  $('.build-2').css({
                      'opacity': 1 - (scrollPos / 1000),
                      'top': (scrollPos / 5) + 'px',
                  });
                  $('.box-banner .anim-effect').css({
                      'opacity': 1 - (scrollPos / 750),
                      // 'transform': 'scale()',  
                  });
              });
          }
          scrollBanner();

      }); 
