// console.log("dasdasdsadas");

$(document).on('ready page:load', function(){
// $(document).ready(function() {
  $('#product_search').keyup(function(){
    var value = $(this).val();
    console.log(value);

  $.ajax({
    // url: "/searchresult",
    url:"/searchresult?product+search=" + value,
    method: "get",
    // data: {'product search': value}
    dataType: "script"
  
  });



  });
});


