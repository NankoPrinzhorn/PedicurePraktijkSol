<link rel="stylesheet" type="text/css" href="/css/admin/adminSidebar.css">
<script type="text/javascript">
    var ajaxListRequest;
</script>

<div id="sidebar">
    <div class="header">
        <h3>Dashboard</h3>
        <p id="logout">Uitloggen</p>
    </div>
	<div class="pages">
    <?php 
    $pages = ['Home' => "Home", 'Over mij' => "over-mij", 'Behandelingen' => "behandelingen", 'Tips' => "tips", 'Tarieven' => "tarieven", 'Contact' => "contact"];

    foreach ($pages as $pageName => $page) {
        ?>
        <p class="page" id="<?=$page?>"><?=$pageName?><i class="fas fa-plus"></i></p>
        <?php
    }
    ?>
    </div>
    <div class="saveChanges">
        <h3>Opslaan</h3>
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
</script>


