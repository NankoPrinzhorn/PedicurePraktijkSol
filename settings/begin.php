<?php 
$whitelist = array(
    '127.0.0.1',
    '::1'
);

if(in_array($_SERVER['REMOTE_ADDR'], $whitelist)){
    // not valid
    $sHost = "localhost";
    $sUser = "root";
    $sDb = 'pedicurepraktijksol';
    $password = 'root';
} else {
    $sHost = "localhost";
    $sUser = "Nanko";
    $sDb = 'pedicurepraktijdsol';
    $password = 'PedicureNanko';
}
?>