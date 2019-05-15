<?php 
$whitelist = array(
    '127.0.0.1',
    '::1'
);

if(in_array($_SERVER['REMOTE_ADDR'], $whitelist)){
    //localhost
    $sHost = "localhost";
    $sUser = "root";
    $sDb = 'pedicurepraktijksol';
    $password = 'root';
} else {
    //online
    $sHost = "localhost";
    $sUser = "Nanko";
    $sDb = 'pedicurepraktijdsol';
    $password = 'PedicureNanko';
}
?>