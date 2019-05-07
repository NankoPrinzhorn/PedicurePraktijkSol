<?php 
include_once $_SERVER['DOCUMENT_ROOT']."/model/site/home.php";
?>
<link rel="stylesheet" type="text/css" href="/css/site/home.css">

<section class="home-hero">
  <div class="container">
    <div class="row">
      <div class="intro col-md-12">
        <div class="col-md-12">
        <h1 class="<?=$data[0]['editID']?>"><?=$data[0]['text']?></h1>
        <p class="<?=$data[1]['editID']?>"><?=$data[1]['text']?></p>
        <button>Meer informatie</button>
        <button>Neem contact op</button>
        </div>
      </div>
  </div>
</section>

<section class="home-blocks">
  <div class="container">
    <div class="row">
      <div class="col-md-12">

        <div class="col-md-4">
          <div class="col-md-12 case">
            <img src="../../images/logo-provoet.svg">
            <p>Lidmaatschap ProVoet, de brancheorganisatie van pedicures</p>
          </div>
        </div>

        <div class="col-md-4">
          <div class="col-md-12 case">
            <img src="../../images/logo-ham.png">
            <p>In de praktijk wordt gewerkt volgens de HAM-code (normen Hygiëne, Arbo en Milieu)</p>
          </div>
        </div>

        <div class="col-md-4">
          <div class="col-md-12 case">
            <img src="../../images/logo-honk.svg">
            <p>Aangesloten bij de zorggroep HONK waardoor veel diabetespatiënten verzekerd zijn van vergoeding van behandeling</p>
          </div>
        </div>

      </div>
    </div>
  </div>
</section>

<section class="home-behandelingen">
  <div class="row">
    <div class="col-md-12">
      <h2>Behandelingen</h2>

    </div>
  </div>
</section>

