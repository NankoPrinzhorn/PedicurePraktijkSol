<?php 
include_once $_SERVER['DOCUMENT_ROOT']."/model/site/tips.php";
?>
<link rel="stylesheet" type="text/css" href="/css/site/tips.css">

<section class="tips-hero parralax--bg" style="background-position: center 0px">
  <div class="container">
    <div class="row">
      <div class="intro col-md-12">
				<h1 class="<?=$data[0]['editID']?>"><?=$data[0]['text']?></h1>
				<p class="<?=$data[1]['editID']?>"><?=$data[1]['text']?></p>
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

            echo "<li class=\"tips_link\"><a href=\"#tips-".($count+1)."\"><span><u class='".$tip[0]['editID']."'>".$tip[0]['text']."</u></span></a></li>";

            

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
			    <div id="tips-'.$count.'" class="col-md-12 tips-box">
                    <div class="col-md-12 tips-vak">
					    <span class="tips-titel"><p class="'.$tip[0]['editID'].'">'.$tip[0]['text'].'</p></span>
					    <p class="'.$tip[1]['editID'].'" style="white-space: pre-line">'.$tip[1]['text'].'</p>
				    </div>
			    </div>
		    </div>
            ';
            $count++;
        }
        ?>
</div>

<?php
	include_once $_SERVER['DOCUMENT_ROOT']."/views/site/contact-form.php";
?>