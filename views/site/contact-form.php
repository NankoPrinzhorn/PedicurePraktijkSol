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
							$actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

							$id = substr($actual_link, strrpos($actual_link, '/') + 1);
						?>
					
					<form  id="form--right" action="" method="post">
						<h3>Neem contact op</h3>
						<input name="firstname" style="width: 49%; float: left;" type="text" placeholder="Voornaam" required>
						<input name="lastname" style="width: 49%; float: right;" type="text" placeholder="Achternaam" required>
						<input name="email" type="email" placeholder="E-mailadres" required>
						<textarea name="textarea" cols="30" rows="10" placeholder="Wat wilt u vragen" required></textarea>
						<p id="form--msg">Door op versturen te drukken gaat u akkoord met onze <a href="#">voorwaarden</a></p>
						<button class="btn" id="sendContactForm" name="submit">Versturen</button>
					</form>
					</div>
					<?php

						$contact = "maurobertozzi11@gmail.com";
						$responseSubject = "Uw e-mail is ontvangen";
						$responseMessage = "Ik heb uw e-mail ontvangen.\nU kunt een reactie verwachten binnen 7 werkdagen";

						if (isset($_POST['email'])) {
							$to = $contact;
							$subject = "pedicure praktijk sol website";
							$firstname = $_POST['firstname'];
							$lastname = $_POST['lastname'];
							$name = $firstname . " " . $lastname.
							$email = $_POST['email'];
							$textarea = $_POST['textarea'];

						$email_message = "Ik ben " . $name . " " . "\n \n" . $textarea . " \n \n van " . $name . " \n Mijn e-mail is". $email;
						$email_response= "Beste " . $name ." " .  ",\n \n" . $responseMessage . " \n \n Met vriendelijk groet, \n Joke Sol" ;

						$headers = 'From: ' . $email . "\r\n" .
							'Reply-To: maurobertozzi11@gmail.com' . "\r\n" .
							'X-Mailer: PHP/' . phpversion();

						$mail = mail($to, $subject, $email_message, $headers);
						if ($mail) {
							$response = mail($email, $responseSubject, $email_response, $headers);
							header("/" .$id);
							$_SESSION["isMailSend"] = "verzonden";
						}else{
							header("/" .$id);
							$_SESSION["isMailSend"] = "nietVerzonden";
						}};
						?>
				</div>
			</div>
		</div>
	</div>
	
</section>