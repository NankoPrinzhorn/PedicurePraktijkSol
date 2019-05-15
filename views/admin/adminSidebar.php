<?php
/**
 * TODO MAC TESTING!!!!!!!!!!!!!!!!!!!!!!
 * TODO toggleEdit not working
 */
?>

<link rel="stylesheet" type="text/css" href="/css/admin/adminSidebar.css">
<script type="text/javascript">
    var ajaxListRequest;
</script>

<div id="sidebar">
    <div class="header">
        <h3>Dashboard</h3>
        <br>
        <p>Hallo, <?=$_SESSION['name']?></p>
    </div>
	<div class="pages">
    <?php 
    $pages = array('Home' => "Home", 'Over mij' => "over-mij", 'Behandelingen' => "behandelingen", 'Tips' => "tips", 'Tarieven' => "tarieven", 'Contact' => "contact");

    foreach ($pages as $pageName => $page) {
        $active = "";
        if(!empty($_GET['currentActive'])) {
            $active = ($page == $_GET['currentActive']) ? "active" : "";
        }
        ?>
        <p class="page <?=$active?>" id="<?=$page?>"><?=$pageName?><i class="fas fa-plus"></i></p>
        <?php
    }
    ?>
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
<script type="text/javascript" src="/js/admin/adminSidebar.js"></script>
<script type="text/javascript" >
$('#logout').on('click', function() {
    console.log('TEST');
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

$('.page').on('click', function() {
    var currentActive = $(this).attr('id');

    history.pushState({}, null, "?currentActive="+currentActive);
})
</script>


