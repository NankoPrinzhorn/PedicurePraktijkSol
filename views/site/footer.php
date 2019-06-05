<?php 
include_once $_SERVER['DOCUMENT_ROOT']."/model/site/footer.php";
?>
<link rel="stylesheet" type="text/css" href="/css/site/footer.css">

<html>
<body>

<!-- footer  -->
<footer class="footer">
<div class="container">
    <div class="row">
      <div class="col-md-12">

      <div class="col-md-4">
          <p><strong>Wilt u een afspraak maken of heeft u een vraag?</strong></p>
          <p>Pedicurepraktijk sol,</p>
          <a href="tel:<?=$footerdata[5]['text']?>"><p><i class="<?=$footerdata[5]['editID']?>"></i>Telefoon: <?=$footerdata[5]['text']?></p></a>
          <a href="mailto:<?=$footerdata[6]['text']?>"><p><i class="<?=$footerdata[6]['editID']?>"></i>Mail: <?=$footerdata[6]['text']?></p></a>
          <p class="<?=$footerdata[9]['editID']?>"><?=$footerdata[9]['text']?></p>
          <p><b>KVK: </b class="<?=$footerdata[7]['editID']?>"><?=$footerdata[7]['text']?></p>
          <p><b>Bank: </b class="<?=$footerdata[8]['editID']?>"><?=$footerdata[8]['text']?></p>
      </div>

      <div class="col-md-4">
        <div class="ruimte_boven1"></div>
          <p><strong>Praktijk aan huis</strong></p>
          <p class="<?=$footerdata[2]['editID']?>" style='white-space: pre-line'><?=$footerdata[2]['text']?></p>
             <iframe class="googlemaps" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2421.2016134793375!2d4.729247215361559!3d52.63827043521052!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47cf57bd042af8ad%3A0x7118242ce1a7bec5!2sBergerweg+57%2C+1816+BN+Alkmaar!5e0!3m2!1snl!2snl!4v1557823999388!5m2!1snl!2snl"
             width="100%"  height="275px" frameborder="0" style="border:0" allowfullscreen></iframe>
      </div>

      <div class="col-md-4">
        <div class="ruimte_boven2"></div>
          <p><strong>Aangesloten bij:</strong></p>
          <img class="provoet_logo" src="images/logo-provoet.svg" alt="ProVoet logo";>
          <img class="honk_logo" src="images/logo-honk.svg" alt="Honk logo";>
      </div>

        </div>

    </div>
</div>
</footer>
<!-- end footer -->

</body>
</html>
