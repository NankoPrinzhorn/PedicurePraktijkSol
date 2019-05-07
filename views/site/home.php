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
          <div class="col-md-12 case" style="background: white; padding-top: 20px; padding-bottom: 20px;">
            <h3>Test</h3>
            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quidem, dolor!</p>
          </div>
        </div>



      </div>
    </div>
  </div>
</section>

