<?php 
include_once $_SERVER['DOCUMENT_ROOT']."/model/site/prijslijst.php";
?>
<link rel="stylesheet" type="text/css" href="/css/site/prijslijst.css">


<section id="hero--prijslijst" class="parralax--bg"
	style="background: url(/images/behandelingen-background.jpg) center 0px;">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<h1 class="<?=$data[0]['editID']?>"><?=$data[0]['text']?></h1>
				<p class="<?=$data[1]['editID']?>"><?=$data[1]['text']?></p>
			</div>
		</div>
	</div>
</section>

<section id="underheader--prijslijst">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<div id="header--box" class="col-xs-12 col-sm-12 col-md-8 col-lg-8 col-md-offset-2">
					<p class="<?=$data[2]['editID']?>" style="white-space: pre-line"><?=$data[2]['text']?></p>
				</div>
			</div>
		</div>
	</div>
</section>

<section id="prijslijst--section">
	<div class="container">
		<div class="row">
			<div id="title" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" align="center">
				<h1 id="PrijslijstH1">PRIJSLIJST</h1>
				<a href="/contact"><button id="prijslijst--btn">Maak nu een afspraak</button></a>
			</div>
			<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 col-md-offset-2">
				<?php 
				foreach ($prijzen as $prijs) {
					echo '
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 prijs--col">
						<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
							<p class="'.$prijs[0]['editID'].'">'.$prijs[0]['text'].'</p>
						</div>
						<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
							<p class="prijs">&#8364;<span class="'.$prijs[1]['editID'].'">'.$prijs[1]['text'].'</span></p>
						</div>
					</div>
					';
				}
				?>
			</div>
		</div>
		<p class="prijzenDisclaimer col-md-offset-2">* Prijzen zijn inclusief BTW</p>
	</div>
</section>

<section id="zorgverzekering--section">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 col-md-offset-2" align="center">
					<h2 class="<?=$data[4]['editID']?>"><?=$data[4]['text']?></h2>
					<p class="<?=$data[5]['editID']?>" style="white-space: pre-line"><?=str_replace("www.zorgwijzer.nl/vergoedingen/pedicure", "<a href='www.zorgwijzer.nl/vergoedingen/pedicure'>zorgwijzer.nl</a>", $data[5]['text'])?></p>
				</div>
			</div>
		</div>
	</div>
</section>

<?php
	include_once $_SERVER['DOCUMENT_ROOT']."/views/site/contact-form.php";
?>