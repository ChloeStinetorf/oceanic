$(function(){
  $("#flight_form").on("change", "#origin", get_destinations);
});

function get_destinations()
{
  var oid = $("#origin").val();
  var token = $("input[name=authenticity_token]").val();
  $.ajax({
    dataType: 'script',
    type: "post",
    url: "/flights/destinations",
    data: {authenticity_token:token, origin:oid}
  }).done();
}