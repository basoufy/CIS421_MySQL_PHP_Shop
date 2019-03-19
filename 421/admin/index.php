<?php
    require_once '../core/init.php';
    if(!is_logged_in()){
        header('Location: login.php');
    }
    include 'includes/head.php';
    include 'includes/navigation.php';
//session_destroy();
?>

<h1 class="text-center text-success">Admin Page</h1><hr>
<p class="text-center">This page will populate with order information once credit card processing is implemented.</p>
<p class="text-center">For now, it will serve as a dummy page.</p>
<p class="text-center">If we ever decide to implement credit card transactions, we'll put some widgets showing customer order information.</p>
<p class="text-center">For now, enjoy the rest of the site!</p>

<?php
include 'includes/footer.php'; ?>
