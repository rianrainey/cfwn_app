# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


# Apply wysihtml5 to appropriate text areas
  $(".wysihtml5").each (i, elem) ->
    $(elem).wysihtml5()


