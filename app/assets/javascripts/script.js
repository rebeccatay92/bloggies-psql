$(document).on('turbolinks:load', function () {
  //check if we are at static pages
  $(".static").ready(function() {
    alert('run ajax for static pages only')
  })

  $(".posts").ready(function() {
    alert('run ajax for posts pages only')
  })

})
