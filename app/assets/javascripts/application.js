// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree .

$(function(){ $(document).foundation(); });

window.onload = function () {

  var timestamp = document.getElementById("timestamp");

  timestamp.appendChild(document.createTextNode(new Date().toLocaleDateString()));

// timestamp.onclick = function() { this.innerHTML = new Date().toString(); }

};

// $(document).ready(function() {
//   $('.show-comments').click(function(){
//     var collapse_content_selector = $(this).attr('href');
//     var toggle_switch = $(this);
//     $(collapse_content_selector).toggle(function(){
//       if($(this).css('display')=='none'){
//         toggle_switch.html('Show Video')
//       }else{
//         toggle_switch.html('Hide Video');
//       }
//     });
//   });
// });


