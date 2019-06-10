<?php 
include_once $_SERVER['DOCUMENT_ROOT']."/model/site/over-mij.php";
?>
<link rel="stylesheet" type="text/css" href="/css/site/over-mij.css">
<section class="over-mij-hero parralax--bg" style="background: url(/images/over-mij-background.jpg) center 0px;">
  <div class="container">
    <div class="row">
      <div class="intro col-md-12">
      	<!-- <small>Over mij &mdash;</small> -->
        <h1 class="<?=$data[0]['editID']?>"><?=$data[0]['text']?></h1>
        <p class="<?=$data[1]['editID']?>" style="white-space: pre-line"><?=$data[1]['text']?></p>
      </div>
  </div>
</section>

<section class="over-mij-info">
	<div class="container">
		<div class="col-md-12 overMijBlock">
		<div class="col-md-6 loopbaanswitch">
			<h2 class="<?=$data[2]['editID']?>"><?=$data[2]['text']?></h2>
			<p class="<?=$data[3]['editID']?>" style="white-space: pre-line"><?=$data[3]['text']?></p>			
		</div>
		<div class="overmij-image col-md-6">
			<img src="/images/uploads/<?=$data[4]['text']?>" class="<?=$data[4]['editID']?>" alt="loopbaanswitch afbeelding">
		</div>
		</div>
	</div>
</section>

<section class="review">
	<div class="reviewInline">
		<div class="container">
			<div class="col-md-12">
				<div class="reviewInformation">
					<h4>Een afspraak bij Joke is deskundige voetverzorging en een fijn gesprek in &#233;&#233;n. Zij is heel zorgvuldig en boezemt vertrouwen in</h4>
					<p class="reviewName">- Riny Tehupeiory</p>
				</div>		
			</div>
		</div>
	</div>
</section>

<section class="affiliatedWith">
	<div class="container">
		<div class="col-md-12">
			<h2 class="affiliatedWith">Aangesloten bij:</h2>
		</div>
		<div class="col-md-12">
			<img src="\images/logo-provoet-brancheorganisatie-voor-de-pedicure.png" alt="logo provoet">
		</div>
		<div class="col-md-12 avgPrivacy">
			<a class="avgPrivacyLink" href="/images/privacy-verklaring.pdf" target="blank">Klik hier voor AVG/privacy</a>
		</div>
	</div>
</section>

<?php
	include_once $_SERVER['DOCUMENT_ROOT']."/views/site/contact-form.php";
?>