<link rel="stylesheet" type="text/css" href="/css/admin/adminSidebar.css">
<script type="text/javascript">
    var ajaxListRequest;
</script>

<div id="sidebar">
    <div class="header">
        <h3 class="page" style="cursor: pointer;">Dashboard</h3>
        <br>
        <p>Hallo, <?=$_SESSION['name']?></p>
    </div>
	<div class="pages">
    <?php 
    $pages = array('Home' => "Home", 'Over mij' => "over-mij", 'Behandelingen' => "behandelingen", 'Tips' => "tips", 'Prijslijst' => "prijslijst", 'Contact' => "contact");

    foreach ($pages as $pageName => $page) {
        $active = "";
        if(!empty($_GET['currentActive'])) {
            $active = ($page == $_GET['currentActive']) ? "active" : "";
        }
        ?>
        <p class="page <?=$active?>" id="<?=$page?>"><?=$pageName?><i class="fas fa-plus"></i></p>
        <?php
    }
    if (!empty($_GET)) {
        $active = ("versieBeheer" == $_GET['currentActive']) ? "active" : "";
    }
    ?>
        <p class="page <?=$active?>" id="versieBeheer">Versie beheer<i class="fas fa-plus"></i></p>
    </div>
    <div class="showSite">
        <h3>Naar website</h3>
    </div>
    <div class="saveChanges">
        <h3>Publiceren</h3>
    </div>
    <div class="logout" id="logout">
        <h3>Uitloggen</h3>
    </div>
</div>
<?php 
foreach ($pages as $pageName => $page) {
    ?>
    <div class="panel <?=$page?>">
        <h1><?=$pageName?></h1>
        <?php 
        $db->generateCMSHTML($db->getPageInfo($page));
        ?>
    </div>
    <?php
}
?>
<div class="panel versieBeheer">
    <h1>Versie Beheer</h1>
    <?php 
    $versions = $db->fetchAll("SELECT `version`, `weergeven`, `updated_at` FROM `live`");

    $array = array();
    foreach ($versions as $version) {
        if (!in_array($version['version'], $array)) {
            $active = ($version['weergeven'] == 1) ? "(huidige versie)" : "";
            echo "<h2 class='updateVersieBeheer versie-".$version['version']."'>Versie ".$version['version']." from : ".$version['updated_at']." ".$active."</h2>";

            array_push($array, $version['version']);
        }
    }
    ?>
</div>
<script type="text/javascript" src="/js/admin/adminSidebar.js"></script>
<script type="text/javascript" >
$('#logout').on('click', function() {
    $.ajax({
        url:'/model/requests/logoutSubmit.php',
        method:'GET',
        data: {
            value:'logout'      
        },
        success: function(data) {
            console.log(data);
            if(data == "true") {
                window.location.href = "/admin";
            }
        }
    })
});

$('.updateVersieBeheer').on('click', function() {
    var versie = $(this).attr('class').split(' ')[1].split('-')[1];

    if (confirm("Weet u zeker dat u wilt veranderen van versie? Als u ja drukt zal versie "+versie+" zichtbaar worden voor alle gebruikers")) {
        ajaxListRequest = $.ajax({
            url:'/model/requests/changeVersion.php',
            data: {
                versie: versie
            },
            success: function(response) {
                if (response) {
                    alert("Versie is successvol aangepast!");
                    window.location.href = "/admin";
                } else {
                    alert("Er is iets fout gegaan, probeer het later nog eens");
                }
            }
        });
    }
});

$('.showSite').on('click', function () {
    console.log(window.location.search.substr(1).split('=')[1]);
    var currentPage = window.location.search.substr(1).split('=')[1].toLowerCase();
    window.location.href = "/" + currentPage;
});

$('.saveChanges').on('click', function () {
    console.log('lets publish!');
    if (confirm("Weet je zeker dat je de huidige veranderingen wilt publiceren?")) {
        ajaxListRequest = $.ajax({
            url:'/model/requests/publishConcept.php',
            data: {
                publish: true
            }, 
            success: function(response) {
                if (response) {
                    alert("Successvol gepubliceerd!");
                    window.location.href = "/admin";
                }
            }
        });
    } 
});

$('.page').on('click', function() {
    var currentActive = $(this).attr('id');
    if (currentActive != null) {
        history.pushState({}, null, "?currentActive="+currentActive);
    } else {
        history.pushState({}, null, "/admin");
    }
});
</script>


