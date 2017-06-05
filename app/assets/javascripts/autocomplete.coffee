@autoComplete = ->
  $('.autocomplete').each ->
    $(this).autocomplete
      source: $(this).data('source')
      minLength: 2
    $(this).autocomplete('instance')._renderItem = (ul, item) ->
      $('<li>').append(item.label).appendTo ul
$(document).on('turbolinks:load', @autoComplete);