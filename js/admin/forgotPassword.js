/**
 * ga naar wachtwoord vergeten tab
 */
$('#forgotPassword').click(function(){
	 $('#loginForm').css("left","-100%");
	 $('#forgotPasswordForm').css("left","calc(50vw - 325px)");

});

/**
 * ga terug naar login tab
 */
$('#iGotIt').click(function(){
	 $('#forgotPasswordForm').css("left","100%");
	 $('#loginForm').css("left","calc(50vw - 325px)");

});