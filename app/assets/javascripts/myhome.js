// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready(function(){
  $(".show-video").click(function(){
    $(this).next().toggle("slow");
  });
});

var sort_by = function(field, reverse, primer){
   var key = function (x) {return primer ? primer(x[field]) : x[field]};

   return function (a,b) {
    var A = key(a), B = key(b);
    return ( (A < B) ? -1 : ((A > B) ? 1 : 0) ) * [-1,1][+!!reverse];                  
   }
}



$("#my_repos").click(function() {
    $.ajax({
        type: "GET",
        url: "https://api.github.com/users/MBottjer/repos",
        dataType: "json",
        success: function(result) {
            // result.sort(function(a,b){ return Date.parse(a.pushed_at) - Date.parse(b.pushed_at)})
            result.sort(sort_by('created_at', false, Date.parse));

            // result is an array of objects
            for( object in result ) {
              // iterate through array of objects choosing specific object via normal array method
              console.log(result[object])
              console.log(result[object].created_at > "2013-12-01T00:00:00Z" )
              // potentially could limit the repos shown as done below
              if (result[object].created_at >= "2013-11-20T00:00:00Z"){
                $("#repo_list").append(
                    "<li id='repos_list'><a href='" + result[object].html_url + "' target='_blank'>" +
                    result[object].name + "</a></li>"
                );
              }
            }

            $("#repo_count").append("Total Repos: " + result.length);
        }
    });
});

