<link rel="stylesheet" type="text/css" href="/css/site/contact-form.css">
<section id="contactform--section">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
					<h2>Wilt u een afspraak maken of heeft u een vraag?</h2>
					<ul>
						<li>Pedicurepraktijk Sol</li>
						<a href="tel:+31651304651"><li>+31 6 51304651</li></a>
						<a href="mailto:pedicurepraktijksol@gmail.com"><li>pedicurepraktijksol@gmail.com</li></a>
						<li>www.pedicurepraktijksol.nl</li>
					</ul>
					<div id="slogan--contactform">
					<h3>Voor een behandeling in Castricum kunt u ook bij de medewerkers van Cosmo Hairstyling een afspraak maken.</h3>
					<span id="slogan--name">Joke Sol</span>
					</div>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<?php
							$actual_link = "https://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

							$id = substr($actual_link, strrpos($actual_link, '/') + 1);
						?>
					
					<form  id="form--right" action="/views/site/mail.php" method="post">
						<h3>Neem contact op</h3>
						<input class="firstname" name="firstname" style="width: 49%; float: left;" type="text" placeholder="Voornaam" required>
						<input class="lastname" name="lastname" style="width: 49%; float: right;" type="text" placeholder="Achternaam" required>
						<input class="email" name="email" type="email" placeholder="E-mailadres" required>
						<textarea class="textarea" name="textarea" cols="30" rows="10" placeholder="Wat wilt u vragen" required></textarea>
						<p id="form--msg">Door op versturen te drukken gaat u akkoord met onze <a href="/images/privacy-verklaring.pdf" target="_blank">voorwaarden</a></p>
						<button class="btn" id="sendContactForm" name="submit">Versturen</button>
					</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<script>
$('#form--right').submit(function(e) {
	//check if all fields are filled
	var firstName = $('.firstname');
	var lastName = $('.lastname');
	var email = $('.email');
	var textArea = $('.textarea');
	var bool = true;

	if (firstName.val() == "") {
		bool = false;
		firstName.css('border', '1px solid red');	
	}

	if (lastName.val() == "") {
		bool = false;
		lastName.css('border', '1px solid red');	
	}

	if (email.val() == "") {
		bool = false;
		email.css('border', '1px solid red');	
	}

	if (textArea.val() == "") {
		bool = false;
		textArea.css('border', '1px solid red');	
	}

	return bool;
});
</script>