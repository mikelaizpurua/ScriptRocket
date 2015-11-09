// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).on('ready page:load', ready);


var ready = function() {
    console.log("document is ready!");

    $('#jsModalButton').click(function(){
        console.log("Button clicked!");
        $('#myModal').modal()
    });

    $('#jsdropdownmenu').click(function(){
        console.log('dropdown button clicked');
        $('.dropdown-menu').toggle('dropdown')
    });
}

$(document).on('ready page:load', function() {
    $(".player").mb_YTPlayer();
});


$(document).ready(function(){
  $(document).mousemove(function(e){
     TweenLite.to($('#signinbody'), 
        .5, 
        { css: 
            {
                backgroundPosition: ""+ parseInt(event.pageX/8) + "px "+parseInt(event.pageY/'12')+"px, "+parseInt(event.pageX/'15')+"px "+parseInt(event.pageY/'15')+"px, "+parseInt(event.pageX/'30')+"px "+parseInt(event.pageY/'30')+"px"
            }
        });
  });
});


