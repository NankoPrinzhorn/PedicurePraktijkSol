<?php 
include_once $_SERVER['DOCUMENT_ROOT']."/model/site/tips.php";
?>
<link rel="stylesheet" type="text/css" href="/css/site/tips.css">

<section class="tips-hero">
  <div class="container">
    <div class="row">
      <div class="intro col-md-12">
				<h1><?=$data[0]['text']?></h1>
				<p><?=$data[1]['text']?></p>
      </div>
  </div>
</section>

<section class="tips-info">
	<div class="container tipsBlock">
        <?php 
        $count = 0;
        foreach ($tips as $tip) {
            if ($count % 2 == 0 && $count > 0) {
                echo "
                        </ul>
                    </div>
                </div>
                ";
            }
            if ($count % 2 == 0 && $count == 0) {
                echo "
                <div class=\"row\">
                    <div class=\"col-md-12 nav_titels\">
                        <ul style=\"list-style-type:none\">
                ";
            } elseif ($count % 2 == 0) {
                echo "
                <div class=\"row\">
                    <div class=\"col-md-12\">
                        <ul style=\"list-style-type:none\">
                ";
            }

            echo "<li class=\"tips_link\"><a href=\"#tips-".$count."\"><span><u>".$tip[2]['text']."</u></span></a></li>";

            

            $count++;
        }
        ?>
	</div>
</section>

<div class="row">
  <div class="col-md-12 tips-titel">
    <h1>Tips</h1>
  </div>
</div>

<div class="container">
        <?php 
        $count = 1;
        foreach ($tips as $tip) {
            echo '
            <div class="row">
			    <div id="tips-1" class="col-md-12 tips-box">
                    <div class="col-md-12 tips-vak">
					    <span class="tips-titel"><p class="'.$tip[2]['editID'].'">'.$tip[2]['text'].'</p></span>
					    <p class="'.$tip[3]['editID'].'" style="white-space: pre-line">'.$tip[3]['text'].'</p>
				    </div>
			    </div>
		    </div>
            ';
        }
        ?>
</div>

<?php
	include_once $_SERVER['DOCUMENT_ROOT']."/views/site/contact-form.php";
?>