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
    $pages = ['homepagina', 'Over_mij', 'Behandelingen', 'Tips', 'Tarieven', 'Contact'];

    foreach ($pages as $page) {
        ?>
        <p class="page" id="<?=$page?>"><?=$page?><i class="fas fa-plus"></i></p>
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

<!-- here comes the pages || for now its static! -->
<!-- <p id="Siteyeet1"></p> -->
<script type="text/javascript" src="/js/admin/adminSidebar.js"></script>


