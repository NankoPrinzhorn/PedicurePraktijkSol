<link rel="stylesheet" type="text/css" href="/css/admin/adminSidebar.css">

<script type="text/javascript">
    var ajaxListRequest;
</script>

<div id="sidebar">
	<h1>CMS</h1>
    <?php 
    $pages = ['homepagina', 'tips'];

    foreach ($pages as $page) {
    ?>
    <button class="accordion" id="<?=$page?>"><?=$page?></button>
	<div class="panel <?=$page?>">
        <?php 
            $data = $db->getPageInfo($page);
            $db->generateCMSHTML($data);
        ?>
	</div>
    <?
    }
    ?>
</div>


<!-- here comes the pages || for now its static! -->
<p id="Siteyeet1"></p>
<script type="text/javascript" src="/js/admin/adminSidebar.js"></script>


