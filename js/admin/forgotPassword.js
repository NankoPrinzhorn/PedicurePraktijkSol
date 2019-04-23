$('#forgotPassword').click(function(){
	 $('#loginForm').css("left","-100%");
	 $('#forgotPasswordForm').css("left","calc(50vw - 325px)");

});

$('#iGotIt').click(function(){
	 $('#forgotPasswordForm').css("left","100%");
	 $('#loginForm').css("left","calc(50vw - 325px)");

});