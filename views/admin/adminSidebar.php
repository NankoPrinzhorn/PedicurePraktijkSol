<link rel="stylesheet" type="text/css" href="/css/admin/adminSidebar.css">
<script type="text/javascript">
    var ajaxListRequest;
</script>

<div id="sidebar">
    <div class="header">
        <h3>Dashboard</h3>
        <a href="#">Uitloggen</a>
    </div>
	<div class="pages">
    <?php 
    $pages = ['Home' => "home", 'Over mij' => "over-mij", 'Behandelingen' => "behandelingen", 'Tips' => "tips", 'Tarieven' => "tarieven", 'Contact' => "contact"];

    foreach ($pages as $pageName => $page) {
        ?>
        <p class="page" id="<?=$page?>"><?=$pageName?><i class="fas fa-plus"></i></p>
        <?
    }
    ?>
    </div>
    <div class="saveChanges">
        <h3>Opslaan</h3>
    </div>
</div>
<?php 
foreach ($pages as $page) {
    ?>
    <div class="panel <?=$page?>">
        <h1><?=$page?></h1>
    </div>
    <?
}
?>
<script type="text/javascript" src="/js/admin/adminSidebar.js"></script>


