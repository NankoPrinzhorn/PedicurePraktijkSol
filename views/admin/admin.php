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
</div>
<div class="fake_body active_panel full cmsExplanation">
    <link rel="stylesheet" href="/css/site/framework.css">
    <h1>Handleiding cms Pedicure Praktijk Sol</h1>
    
    <div class="menuExplanation">
        <div class="container">
            <div class="container">
                <div class="col-md-12">
                    <h2>Uitleg menu</h2>
                    <div class="col-md-6">
                    <img src="/images/cmsMenu.jpeg" alt="">
                    </div>
                    <div class="col-md-6">
                        <p> de eerste keer dat u op het plusje drukt krijgt u een preview van de website te zien. Als u daarna nog een keer op het plusje drukt komt er een scherm uitgeschoven waarin u alle informatie kunt aanpassen.<P><p> Ook kunt u links boven op het woord "dashboard" klikken zodat U terug gaat naar de uitleg</p>
                    </div>
                </div>

                <div class="col-md-12">
                    <h2>Uitleg titel</h2>
                    <div class="col-md-6">
                    <img src="/images/titel-cms.png" alt="">
                    </div>
                    <div class="col-md-6">
                        <p>U kunt de titel aanpassen door op het invoer velt te klikken met de tekst die u wilt aanpassen. Er zit een limiet van 50 karakters op</p>
                    </div>
                </div>

                <div class="col-md-12">
                    <h2>Uitleg tekstarea</h2>
                    <div class="col-md-6">
                    <img src="/images/textarea-cms.png" alt="">
                    </div>
                    <div class="col-md-6">
                        <p>U kunt de tekst onder de titel aanpassen door op het tekst veld velt te klikken met de tekst die u wilt aanpassen. Er zit een limiet van 450 karakters op</p>
                    </div>
                </div>

                <div class="col-md-12">
                    <h2>Uitleg items(Behandelingen)</h2>
                    <div class="col-md-6">
                    <img src="/images/item-cms.png" alt="">
                    </div>
                    <div class="col-md-6">
                        <p>boven elk item(behandelingen op de homepagina) zit de tekst weergeven met daarachter 2 knoppen ja & nee. Hiermee kunt u kiezen of u de gekozen behandeling wilt laten zien op de website of niet. Dit kan handig zijn als u bijvoorbeeld nog niet klaar bent met het aanpassen van de bepaalde behandeling en u wilt deze nog niet live zetten.</p>
                        <p>Ook kunt u op het kruisje klikken om de desbetreffende item(behandeling) te verwijderen</p>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-6">
                    <img src="/images/newItem-cms.png" alt="">
                    </div>
                    <div class="col-md-6">
                        <br>
                        <p>Als u helemaal naar beneden scollt bij de inputs ziet u deze knop hiermee kan u nieuwe items(behandelingen) toevoegen</p>
                    </div>
                </div>

                <div class="col-md-12">
                    <h2>Uitleg Images</h2>
                    <div class="col-md-6">
                    <img src="/images/afbeelding-cms.png" alt="">
                    </div>
                    <div class="col-md-6">
                        <br>
                        <p>Als u in het cms een afbeelding ziet kunt u daarop klikken U kunt dan op uw computer een andere afbeelding kiezen die dan de orginele afbeelding vervangt</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>