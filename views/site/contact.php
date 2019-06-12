<?php 
include_once $_SERVER['DOCUMENT_ROOT']."/model/site/contact.php";
?>
<link rel="stylesheet" type="text/css" href="/css/site/contact.css">

<section class="contact-hero parralax--bg">
  <div class="container">
    <div class="row">
      <div class="intro col-md-12">
      	<!-- <small>Over mij &mdash;</small> -->
        <h1 class="<?=$data[0]['editID']?>"><?=$data[0]['text']?></h1>


        <div class="header-buttons col-md-12">
            <a href="https://tinyurl.com/y6fh4xwv" target="blank"><button>Bekijk de locatie</button></a>
            <!-- <a href="mailto:gebruikersnaam@emailadres.nl"><button>Neem direct contact op</button></a> -->
        </div>
      </div>
  </div>
</section>

<section class="contact-info">
	<div class="container">
		<div class="col-md-6">
            <div class="alkmaar col-xs-12 col-sm-12 col-md-12 col-lg-12">
                
            
            <h4 class="<?=$data[1]['editID']?>"><?=$data[1]['text']?></h4>
            <p class="info-alkmaar <?=$data[2]['editID']?>" style='white-space: pre-line'><?=$data[2]['text']?></p>
            <a href="https://tinyurl.com/y6fh4xwv" target="blank"><u>Kijk op de kaart</u></a>
            </div>	
		</div>

		<div class="col-md-6">
            <div class="castricum col-xs-12 col-sm-12 col-md-12 col-lg-12">
                
           
            <h4 class="<?=$data[3]['editID']?>"><?=$data[3]['text']?></h4> 
            <p class="info-castricum <?=$data[4]['editID']?>"><?=$data[4]['text']?></p> 
            <a href="https://tinyurl.com/y3g5urow" target="blank"><u>Kijk op de kaart</u></a>	
             </div>
        </div>
	</div>
</section>


<section class="contact-information">
	<div class="contact-informationInline">
		<div class="container">
			<div class="col-md-12 contactAppointment">
                <div class="col-md-6">
                    <h2>Wilt u een afspraak maken of heeft u een vraag?</h2>
                    <p>Pedicurepraktijk Sol,</p>
                    <a href="tel:<?=$data[5]['text']?>"><p><i class="fas fa-phone <?=$data[5]['editID']?>"></i><?=$data[5]['text']?></p></a>
                    <a href="mailto:<?=$data[6]['text']?>"><p><i class="fas fa-envelope <?=$data[6]['editID']?>"></i><?=$data[6]['text']?></p></a>

                    <div class="reviewInformation">
                    <h4 class="<?=$data[9]['editID']?>"><?=$data[9]['text']?></h4>
					    <p class="reviewName <?=$data[10]['editID']?>"> - <?=$data[10]['text']?></p>
                    </div>
                    
                    <div class="otherData">
                        <h4>Overige algemene gegevens</h4>
                        <p><b>KVK:</b class="<?=$data[7]['editID']?>"><?=$data[7]['text']?></p>
                        <p><b>Bank:</b class="<?=$data[8]['editID']?>"><?=$data[8]['text']?></p>
                    </div>
                </div>   

                <div class="col-md-6 contactForm">
                <form id="form--right" action="/views/site/mail.php" method="post">
                    <h4>Neem contact op</h4>
                    <input class="firstname" type="text" name="firstname" placeholder="Voornaam" required>
                    <input class="lastname" type="text" name="lastname" placeholder="Achternaam" required>
                    <input class="email" type="email" name="email" placeholder="E-mailadres" required>
                    <textarea class="textarea" name="textarea"rows="4" cols="50" placeholder="Wat wilt u vragen" required></textarea>
                    <div class="col-md-6">
                        <p>Door op versturen te drukken gaat u akkoord met onze <a href="/images/privacy-verklaring.pdf" target="blank">voorwaarden</a></p>
                    </div>
                    <div class="col-md-6">
                        <button type="submit">Versturen</button>
                    </div>
                    </form>
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