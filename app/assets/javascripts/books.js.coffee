# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $(document).on "ajax:error", (xhr, status, error) ->
    console.log status.responseText
    console.log error
