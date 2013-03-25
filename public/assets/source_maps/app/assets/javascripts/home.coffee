class Home
  @document_ready: ->
    $('#flight_whole').on('click', 'a[data-clear-form]', Home.clear_form)
    $('#plane_form').on('click', 'a[data-clear-form]', Home.clear_form)
    $('#reg_form').on('click', 'a[data-clear-form]', Home.clear_reg_form)
    $("#reg_form").hide()

  @clear_form: (e) ->
    e.preventDefault()
    $('#flight_form').empty()
    $("#plane_form").empty()

  @clear_reg_form: (e) ->
    e.preventDefault()
    $("#reg_form").hide("fold", 1000)

$(document).ready(Home.document_ready)
