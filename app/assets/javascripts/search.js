$(function(){
  $("#flight_whole").on("change", "#origin", get_destinations);
  $("#flight_whole").on("focus", "#flight_date", get_date);

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

function get_date()
{
  $("#flight_date").datepicker({ dateFormat: 'yy-mm-dd' });
}