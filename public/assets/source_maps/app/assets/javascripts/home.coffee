class Home
  @document_ready: ->
    $('#form').on('click', 'a[data-clear-form]', Home.clear_form)
    $('#reg_form').on('click', 'a[data-clear-form]', Home.clear_reg_form)

  @clear_form: (e) ->
    e.preventDefault()
    $('#form').empty()

  @clear_reg_form: (e) ->
    e.preventDefault()
    $("#reg_form").empty()

$(document).ready(Home.document_ready)
