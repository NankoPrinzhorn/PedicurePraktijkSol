<?php 
include_once $_SERVER['DOCUMENT_ROOT']."/model/site/home.php";
?>
<link rel="stylesheet" type="text/css" href="/css/site/home.css">
<div class="container">
    <div class="row">
        <div class="bootstrap-test col-md-6">col-md-6</div>
        <div class="bootstrap-test col-md-4">col-md-4</div>
        <div class="bootstrap-test col-md-1">col-md-1</div>
        <div class="bootstrap-test col-md-1">col-md-1</div>
    </div>
</div>

</body>


<p style="white-space: pre-wrap;" class="<?=$data[1]['id']."-".str_replace(" ", "_", $data[1]['htmlID'])?>">
    <?=$data[1]['content']?></p>
<script type="text/javascript" src="/js/site/home.js"></script>