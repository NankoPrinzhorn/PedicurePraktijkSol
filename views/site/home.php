<?php 
include_once $_SERVER['DOCUMENT_ROOT']."/model/site/home.php";
?>
<link rel="stylesheet" type="text/css" href="/css/site/home.css">

<div id="header">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <h1>Test</h1>
      </div>
    </div>
  </div>
</div>


</body>


<p style="white-space: pre-wrap;" class="<?=$data[1]['id']."-".str_replace(" ", "_", $data[1]['htmlID'])?>"><?=$data[1]['content']?></p>