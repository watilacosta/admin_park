$(document).on 'turbolinks:load', ->
  $('.dropdown-trigger').dropdown()
  $('select').formSelect();
  return