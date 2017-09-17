$(document).ready(function() {

  $('.carousel').carousel();

  // Disables right-clicking on images in the body element
  $('body').on('contextmenu', 'img', function(e) {
    return false;
  });

});
