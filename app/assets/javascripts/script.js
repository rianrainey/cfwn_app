$(document).ready(function(){

	wysihtmlfive();

  $("#entry_date_performed").datepicker({
                                       dateFormat: 'yy-mm-dd'});
});

// Apply wysihtml5 to appropriate text areas
function wysihtmlfive() {
  $('.wysihtml5').each(function(i, elem) {
    $(elem).wysihtml5();
  });
}
