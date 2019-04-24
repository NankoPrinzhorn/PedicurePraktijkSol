<?php 
include_once $_SERVER['DOCUMENT_ROOT']."/model/site/home.php";
?>
<link rel="stylesheet" type="text/css" href="/css/site/home.css">
<body>
  <nav class="navbar">
    <span class="navbar-toggle" id="js-navbar-toggle">
            <i class="fas fa-bars"></i>
        </span>
    <a href="#" class="logo <?=$data[0]['id']."-".str_replace(" ", "_", $data[0]['htmlID'])?>"><?=$data[0]['content']?></a>
    <ul class="main-nav" id="js-menu">
      <li>
        <a href="#" class="nav-links">Home</a>
      </li>
      <li>
        <a href="#" class="nav-links">Products</a>
      </li>
      <li>
        <a href="#" class="nav-links">About Us</a>
      </li>
      <li>
        <a href="#" class="nav-links">Contact Us</a>
      </li>
      <li>
        <a href="#" class="nav-links">Blog</a>
      </li>
    </ul>
  </nav>
</body>
<script type="text/javascript" src="/js/site/home.js"></script>

<p style="white-space: pre-wrap;" class="<?=$data[1]['id']."-".str_replace(" ", "_", $data[1]['htmlID'])?>"><?=$data[1]['content']?></p>