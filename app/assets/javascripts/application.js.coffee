#= require jquery
#= require jquery_ujs
#= require_tree .
#= require jquery
#= require bootstrap-sprockets

$(document).ready ->
  setTimeout (->
    $('p.alert').hide 'slow'
    return
  ), 3000
  return