<?php
include_once "adminSidebar.php"; 
?>

    <?php
    foreach ($pages as $page) {
        $active = "";
        if(!empty($_GET['currentActive'])) {
            $active = ($page == $_GET['currentActive']) ? "full active_panel" : "";
        }
    ?>
    <div class="fake_body <?=$page?> <?=$active?>">
    <?php
        include_once $_SERVER['DOCUMENT_ROOT']."/views/site/".strToLower($page).".php";
    ?>
    </div>
    <?php
    }
    ?>
    <div class="fake_body versieBeheer" style="padding: 100px;">
        <h1>Versie Beheer</h1>
        <?php 
        $versions = $db->fetchAll("SELECT `version`, `weergeven`, `updated_at` FROM `live`");

        $array = array();
        foreach ($versions as $version) {
            if (!in_array($version['version'], $array)) {
                $active = ($version['weergeven'] == 1) ? "(huidige versie)" : "";
                echo "
                <div class='row'>
                    <div class='col-md-4'>
                    <h2 class='updateVersieBeheer versie-".$version['version']."'>Versie ".$version['version']."
                    </div>
                    <div class='col-md-4'>
a
                    </div>
                    <div class='col-md-4'>
a
                    </div>
                </div>
                ";


                // echo "<h2 class='updateVersieBeheer versie-".$version['version']."'>Versie ".$version['version']." from : ".$version['updated_at']." ".$active."</h2>";

                array_push($array, $version['version']);
            }
        }
        ?>
    </div>
</div>
<div class="fake_body active_panel full cmsExplanation">
    <link rel="stylesheet" href="/css/site/framework.css">    
    <div class="menuExplanation">
        <div class="container">
            <div class="col-md-12 explanation-a">
                <h1>Handleiding cms Pedicure Praktijk Sol</h1>
                <hr class="mainHR">
                <a href="#uitlegCms">Uitleg cms</a> <span>|</span>
                <a href="#uitlegMenu">Uitleg menu</a> <span>|</span>
                <a href="#uitlegTitel">Uitleg titel</a> <span>|</span>
                <a href="#uitlegTextarea">Uitleg tekstarea</a> <span>|</span>
                <a href="#uitlegItems">Uitleg items</a> <span>|</span>
                <a href="#uitlegAfbeelding">Uitleg afbeeldingen</a> <span>|</span>
            </div>
            <div class="container">
                <div class="col-md-12" id="uitlegCms">
                    <h2>Uitleg cms (knoppen)</h2>
                    <div class="col-md-6 explanationtext">
                        <p>Links onderin ziet u drie knoppen naar website, publiceren en uitloggen. De knop "naar website" zorgt ervoor dat u terug gaat naar de live website</p>
                        <br>
                        <p>Alle aanpassingen die u maakt in het cms worden opgeslagen als concept.</p>
                        <p>Als u op de knop "publiceren" klikt worden al u aanpassingen overgezet naar de live site.</p>                    
                    </div>
                    <div class="col-md-6">
                        <img class="uitlegImg" src="/images/knoppen-cms.png" alt="">
                    </div>
                    <hr class="mainHR">
                </div>

                <div class="col-md-12" id="uitlegMenu">
                    <h2>Uitleg menu</h2>
                    <div class="col-md-6 explanationtext">
                        <p> de eerste keer dat u op het plusje drukt krijgt u een preview van de website te zien. Als u daarna nog een keer op het plusje drukt komt er een scherm uitgeschoven waarin u alle informatie kunt aanpassen.<P><p> Ook kunt u links boven op het woord "dashboard" klikken zodat U terug gaat naar de uitleg</p>
                        <p>U kunt daarna een derde keer op het plusje drukken om het cms weer weg te schuiven</p>                    
                    </div>
                    <div class="col-md-6">
                    <img class="uitlegImg" src="/images/cmsMenu.jpeg" alt="">
                    </div>
                    <hr class="mainHR">
                </div>

                <div class="col-md-12" id="uitlegTitel">
                    <h2>Uitleg titel</h2>
                    <div class="col-md-6 explanationtext">
                        <p>U kunt de titel aanpassen door op het invoer veld te klikken met de tekst die u wilt aanpassen. Er zit een limiet van 50 karakters op</p>
                    </div>
                    <div class="col-md-6">
                    <img class="uitlegImg" src="/images/titel-cms.png" alt="">
                    </div>
                    <hr class="mainHR">
                </div>

                <div class="col-md-12" id="uitlegTextarea">
                    <h2>Uitleg tekstarea</h2>
                    <div class="col-md-6 explanationtext">
                        <p>U kunt de tekst onder de titel aanpassen door op het tekst veld velt te klikken met de tekst die u wilt aanpassen. Er zit een limiet van 450 karakters op</p>
                    </div>
                    <div class="col-md-6">
                    <img class="uitleg Img" src="/images/textarea-cms.png" alt="">
                    </div>
                    <hr class="mainHR">
                </div>

                <div class="col-md-12" id="uitlegItems">
                    <h2>Uitleg items (Behandelingen)</h2>
                    <div class="col-md-6 explanationtext">
                        <p>boven elk item(behandelingen op de homepagina) zit de tekst weergeven met daarachter 2 knoppen ja & nee. Hiermee kunt u kiezen of u de gekozen behandeling wilt laten zien op de website of niet. Dit kan handig zijn als u bijvoorbeeld nog niet klaar bent met het aanpassen van de bepaalde behandeling en u wilt deze nog niet live zetten.</p>
                        <p>Ook kunt u op het kruisje klikken om de desbetreffende item(behandeling) te verwijderen</p>
                    </div>
                    <div class="col-md-6">
                    <img class="uitlegImg" src="/images/item-cms.png" alt="">
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-6 explanationtext">
                        <br>
                        <p>Als u helemaal naar beneden scollt bij de inputs ziet u deze knop hiermee kan u nieuwe items(behandelingen) toevoegen</p>
                    </div>
                    <div class="col-md-6">
                    <img class="uitlegImg" src="/images/newItem-cms.png" alt="">
                    </div>
                    <hr class="mainHR">
                </div>

                <div class="col-md-12" id="uitlegAfbeelding">
                    <h2>Uitleg afbeelding</h2>
                    <div class="col-md-6 explanationtext">
                        <br>
                        <p>Als u in het cms een afbeelding ziet kunt u daarop klikken U kunt dan op uw computer een andere afbeelding kiezen die dan de orginele afbeelding vervangt</p>
                    </div>
                    <div class="col-md-6">
                    <img class="uitlegImg" src="/images/afbeelding-cms.png" alt="">
                    </div>
                    <hr class="mainHR">
                </div>
            </div>
        </div>
    </div>
</div>