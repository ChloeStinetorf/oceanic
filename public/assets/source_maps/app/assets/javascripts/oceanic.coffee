class Home
  @document_ready: ->
    $('#plane_form').on('click', 'a[data-clear-form]', Home.clear_form)
    $('#flight_form').on('click', 'a[data-clear-form]', Home.clear_form)

  @clear_form: (e) ->
    e.preventDefault()
    $('#plane_form').empty()
    $('#flight_form').empty()

$(document).ready(Home.document_ready)

