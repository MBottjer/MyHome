// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready(function(){
  $(".show-video").click(function(){
    $(this).next().toggle("slow");
  });
});

$("#btn_get_repos").click(function() {
    $.ajax({
        type: "GET",
        url: "https://api.github.com/users/MBottjer/repos",
        dataType: "json",
        success: function(result) {
            for( i in result ) {
                $("#repo_list").append(
                    "<li><a href='" + result[i].html_url + "' target='_blank'>" +
                    result[i].name + "</a></li>"
                );
                console.log("i: " + i);
            }
            console.log(result);
            $("#repo_count").append("Total Repos: " + result.length);
        }
    });
});

