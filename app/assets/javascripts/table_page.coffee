# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'click', 'button', ->
  $('#result').text('生成中……')

  data = ''
  for row in [1..$('.number_row').length]
    row_data = []
    for col in [1..4]
      row_data.push($("#row#{row} #numbers_col#{col}").val())

    data += row_data.join(',') + '\n'

  $('#result').text(data)

  if data then $('#export_area').show() else $('#export_area').hide()

  csv =
    "data:text/csv;base64,#{window.btoa(unescape(encodeURIComponent(data)))}"

  $('#export_area a').attr 'href', csv
