<?php
    // connecting to database
    $con = mysqli_connect('localhost', 'root', '', 'ajax_country'); 
    if(!$con){
        die('error occured');
    }
?>