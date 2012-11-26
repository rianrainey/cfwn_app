$(document).ready(function(){

	wysihtmlfive();
});

// Apply wysihtml5 to appropriate text areas
function wysihtmlfive() {
  $('.wysihtml5').each(function(i, elem) {
    $(elem).wysihtml5();
  });
}