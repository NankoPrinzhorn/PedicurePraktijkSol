<?php 
include_once $_SERVER['DOCUMENT_ROOT']."/model/site/home.php";
?>
<link rel="stylesheet" type="text/css" href="/css/site/home.css">

<section class="home-hero parralax--bg" style="background: url(/images/home-background.jpg) center 0px;">
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
                        <img src="/images/logo-provoet.svg">
                        <p>Lidmaatschap ProVoet, de brancheorganisatie van pedicures</p>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="col-md-12 case">
                        <img src="/images/logo-ham.png">
                        <p>In de praktijk wordt gewerkt volgens de HAM-code (normen Hygiëne, Arbo en Milieu)</p>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="col-md-12 case">
                        <img src="/images/logo-honk.svg">
                        <p>Aangesloten bij de zorggroep HONK waardoor veel diabetespatiënten verzekerd zijn van
                            vergoeding van
                            behandeling</p>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

<section class="home-behandelingen">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Behandelingen</h2>
                <?php
                
                foreach ($behandelingen as $behandeling) {
                    echo "
                    <div class=\"col-md-12\">
                        <div class=\"behandeling col-md-12\">
                            <div class=\"behandeling-text col-md-7\">
                                <div class=\"content\">
                                    <h3 class='".$behandeling[2]['editID']."'>".$behandeling[2]['text']."</h3>
                                    <p class='".$behandeling[3]['editID']."'>".$behandeling[3]['text']."</p>
                                </div>
                            </div>
                            <div class=\"behandeling-img col-md-5 ".$behandeling[4]['editID']."\" style='background-image: url(/images/uploads/".str_replace(" ", "%20", $behandeling[4]['text']).")'>
                            </div>
                        </div>
                    </div>
                    ";
                }
                ?>
            </div>
        </div>
    </div>
</section>

<section class="home-tip">
    <div class="inner-tip">
        <div class="container">
            <div class="row">
                <div class="col-md-12 tip">
                    <h4>Kom op schoenen die u al enige tijd heeft/draagt, ze geven informatie over drukpunten en hoe u de voeten belast.</h4>
                    <p>- Joke Sol</p>
                </div>
            </div>
        </div>
    </div>
</section>