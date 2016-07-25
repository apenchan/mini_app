console.log("Hello there");
$(document).ready(function(){
$("#form101").load("./arrangements/order-form.html.erb");
console.log("I was hit");
	$.ajax({
		url: "http://localhost:3000/flowers/29/arrangements/40",
		type: 'GET',
		success: function(response){
			alert(response);
		},
		error: function(){
			console.log("error");
		}
	});
});

