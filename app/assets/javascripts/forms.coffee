# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'click', 'form .add_fields', (event) ->
  # time = new Date().getTime()
  # regexp = new RegExp($(this).data('id'), 'g')
  $(".form").append($(this).data('fields'))
  event.preventDefault()
