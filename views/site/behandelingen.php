<?php 
include_once $_SERVER['DOCUMENT_ROOT']."/model/site/behandelingen.php";
?>


<link rel="stylesheet" type="text/css" href="/css/site/behandelingen.css">

<section class="parralax--bg" id="behandelingen-hero"
	style="background: url(/images/behandelingen-background.jpg) center 0px; background-size: cover;">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<div class="col-xs-12 col-sm-12 col-md-7 col-lg-7">
					<h1 class="<?=$data[0]['editID']?>"><?=$data[0]['text']?></h1>
					<p class="<?=$data[1]['editID']?>"><?=$data[1]['text']?></p>
				</div>
			</div>
		</div>
	</div>
</section>

<section id="section-2">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 after-header col-md-offset-2">
					<p class="<?=$data[2]['editID']?>"><?=$data[2]['text']?></p>
				</div>
			</div>
		</div>
	</div>
</section>

<section id="behandelingen--section">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<h2 class="g-txt">Behandelingen</h2>

			</div>
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<ul id="behandelingen--items">
					<?php 
					$count = 1;
					foreach ($behandelingen as $behandeling) {
						echo '<li><a href="#behandeling--'.$count.'"><span class="'.$behandeling[2]['editID'].'">'.$behandeling[2]['text'].'</span></a></li>';
						$count++;
					}
					?>
				</ul>
			</div>
		</div>
	</div>
</section>
<section>
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<?php 
				$count = 1;
				foreach ($behandelingen as $behandeling) {
					echo '
					<div id="behandeling--'.$count.'" class="col-xs-12 col-sm-12 col-md-12 col-lg-12 behandeling--case">
						<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 behandeling--left">
							<span class="behandeling--number">'.$count.'</span>
							<h3 class="'.$behandeling[2]['editID'].'">'.$behandeling[2]['text'].'</h3>
							<p class="'.$behandeling[3]['editID'].'">'.$behandeling[3]['text'].'</p>
						</div>

						<div class="image--big" style="background-image: url(/images/behandeling.png);"></div>

					</div>
					';
					$count++;
				}
				?>
				<div id="behandeling--4" class="col-xs-12 col-sm-12 col-md-12 col-lg-12 behandeling--case">
					<div class="behandeling--left">

						<span style="margin-top: 76px;" class="behandeling--number">4</span>
						<h3>Specialistische technieken</h3>

						<?php 
						foreach ($technieken as $techniek) {
							echo '
							<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
								<h4>'.$techniek[2]['text'].'</h4>
								<p>Een nagelbeugel is een op maat gemaakt hulpmiddel om uw nagelgroei te reguleren. Ze
									begeleidt als het ware de groei van de nagel in de juiste richting. Er zijn
									verschillende typen nagelbeugels. Afhankelijk van uw nagels en uw situatie wordt voor de
									meest geschikte beugel gekozen.</p>
								<a class="behandeling--left-link" href="#">Bekijk het informatieblad over deze
									behandeling</a>
								<div class="behandeling--case--img" style="background-image: url(/images/behandeling.png);">
								</div>
							</div>
							';
						}
						?>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<script src="/js/site/behandelingen.js"></script>