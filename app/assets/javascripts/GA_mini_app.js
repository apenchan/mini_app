$(document).ready(function(){

	var imgur = "https://api.imgur.com/3/gallery/search/time/1"
	$.ajax({
		url: imgur,
		headers:{
			'Authorization':'Client-ID ' + IMGUR_CLIENT_ID
		},
		type: 'GET',
		dateType: 'json',
		success: function(response){
			alert(response);
		},
		error: function(){
			console.log("error");
		}
	});
});