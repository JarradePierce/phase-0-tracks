$(document).ready(function(){

	$("#sign-up-html").hide();
	$("#sign-up-css").hide();


    $("#header").click(function(){
        $(this).hide();
    });

    $("#html-button").click(function(){
    	$("#sign-up-html").show();
    });

    $("#css-button").click(function(){
    	$("#sign-up-css").show();
    }); 
});