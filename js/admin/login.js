/**
 * ga naar wachtwoord vergeten tab
 */
$('#forgotPassword').click(function(){
	 $('#loginForm').css("left","-100%");
	 $('#forgotPasswordForm').css("left","calc(50vw - 325px)");

});

/**
 * ga naar feeback tab wanneer data correct is
 */
$('#iGotIt').click(function(){
	//check data ();
	$.ajax({
        url:'/model/requests/passwordReset.php',
        method:'GET',
        data: {
            email:$('.emailInput').val()
        },
        success: function(data) {
			console.log(data);
            if(data == true || data == "true") {
				console.log('test');
				$('.emailInput').css('border', '');
				$('#forgotPasswordForm').css("left","-100%");
				$('#emailSends').css("left","calc(50vw - 325px)");
				$('.urEmail').html($('.emailInput').val());
			} else {
				console.log('nope!');
				$('.emailInput').css('border', '1px solid red');
			}
        }
	});
});

/**
 * ga terug naar login tab
 */
$('#confirmButton').click(function(){
	$('#forgotPasswordForm').css("left","100%");
	$('#emailSends').css("left","100%");
	$('#loginForm').css("left","calc(50vw - 325px)");
});