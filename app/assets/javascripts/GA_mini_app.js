$(document).ready(function(){

	$.ajax({
		url: "https://api.imgur.com/3/gallery/search/time/1",
		headers:{
			'Authorization': IMGUR_CLIENT_ID
		},
		type: 'GET',
		success: function(response){
			alert(response);
		},
		error: function(){
			console.log("error");
		}
	});
});