<?php
$db = mysqli_connect('localhost','root','','inventory');

// if there's an error, print the error and then kill the page
if (mysqli_connect_errno()) {
    echo 'Database connection failed with following errors: ' . mysqli_connect_error();
    die();
}