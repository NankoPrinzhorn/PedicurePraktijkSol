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
						echo '<li><a href="#behandeling--'.$count.'"><span class="'.$behandeling[0]['editID'].'">'.$behandeling[0]['text'].'</span></a></li>';
						$count++;
					}
					
					?>
					<li><a href="#behandeling--5"><span>Specialistische technieken</span></a></li>
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
							<h3 class="'.$behandeling[0]['editID'].'">'.$behandeling[0]['text'].'</h3>
							<p class="'.$behandeling[1]['editID'].'">'.$behandeling[1]['text'].'</p>
						</div>

						<div class="image--big" style="background-image: url(/images/behandeling.png);"></div>

					</div>
					';
					$count++;
				}
				?>
				<div id="behandeling--5" class="col-xs-12 col-sm-12 col-md-12 col-lg-12 behandeling--case">
					<div class="behandeling--left">

						<span style="margin-top: 76px;" class="behandeling--number">5</span>
						<h3>Specialistische technieken</h3>

						<?php 
						foreach ($technieken as $techniek) {
							$pdfFile = str_replace("", '%20', $techniek[3]['text']);
							if(!empty($pdfFile)){
								$pdfLink = 	'<a class="behandeling--left-link '.$techniek[3]['editID'].'" href="/images/uploads/'.$pdfFile.'" target=blank>Bekijk het informatieblad over deze
								behandeling</a>';
							}else{
								$pdfLink = '<a class="behandeling--left-link dontShow" href="" target=blank>Bekijk het informatieblad over deze
								behandeling</a>';
							}

							echo '
							<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
								<h4 class="'.$techniek[0]['editID'].'">'.$techniek[0]['text'].'</h4>
								<p class="techniektext--case '.$techniek[1]['editID'].'">'.$techniek[1]['text'].'</p>
								'.$pdfLink.'
								<div class="behandeling--case--img '.$techniek[2]['editID'].'" style="background-image: url(/images/uploads/'.$techniek[2]['text'].');">
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
<script src="/js/site/smoothscroll.js"></script>