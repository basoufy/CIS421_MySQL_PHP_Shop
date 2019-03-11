<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Shaunta's Boutique</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<!-- Top Nav Bar -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <a href="index.php" class="navbar-brand">Shaunta's Boutique</a>
        <ul class="nav navbar-nav">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Men<span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                    <li><a href="#">Shirts</a></li>
                    <li><a href="#">Pants</a></li>
                    <li><a href="#">Shoes</a></li>
                    <li><a href="#">Accessories</a></li>

                </ul>
            </li>
        </ul>
    </div>
</nav>

<!-- Header -->
<div id="headerWrapper">
    <div id="back-flower"></div>
    <div id="logotext"></div>
    <div id="fore-flower"></div>
</div>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate dolorem eaque praesentium? Dignissimos eius eum excepturi incidunt Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus magnam molestias porro quae quidem repellat saepe sint! Accusamus aperiam beatae est et iste maiores quibusdam quisquam, repellat sapiente tempore veritatis. lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit. A architecto atque blanditiis consectetur doloremque eius enim, et laborum nisi omnis possimus quasi qui quod, ratione reiciendis sequi temporibus totam vero! ilorempsa nam obcaecati, sint vero! Dolore ducimus, eaque expedita facilis perspiciatis quia tempora?</p>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate dolorem eaque praesentium? Dignissimos eius eum excepturi incidunt Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus magnam molestias porro quae quidem repellat saepe sint! Accusamus aperiam beatae est et iste maiores quibusdam quisquam, repellat sapiente tempore veritatis. lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit. A architecto atque blanditiis consectetur doloremque eius enim, et laborum nisi omnis possimus quasi qui quod, ratione reiciendis sequi temporibus totam vero! ilorempsa nam obcaecati, sint vero! Dolore ducimus, eaque expedita facilis perspiciatis quia tempora?</p>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate dolorem eaque praesentium? Dignissimos eius eum excepturi incidunt Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus magnam molestias porro quae quidem repellat saepe sint! Accusamus aperiam beatae est et iste maiores quibusdam quisquam, repellat sapiente tempore veritatis. lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit. A architecto atque blanditiis consectetur doloremque eius enim, et laborum nisi omnis possimus quasi qui quod, ratione reiciendis sequi temporibus totam vero! ilorempsa nam obcaecati, sint vero! Dolore ducimus, eaque expedita facilis perspiciatis quia tempora?</p>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate dolorem eaque praesentium? Dignissimos eius eum excepturi incidunt Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus magnam molestias porro quae quidem repellat saepe sint! Accusamus aperiam beatae est et iste maiores quibusdam quisquam, repellat sapiente tempore veritatis. lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit. A architecto atque blanditiis consectetur doloremque eius enim, et laborum nisi omnis possimus quasi qui quod, ratione reiciendis sequi temporibus totam vero! ilorempsa nam obcaecati, sint vero! Dolore ducimus, eaque expedita facilis perspiciatis quia tempora?</p>


<script>
    jQuery(window).scroll(function(){
        var vscroll = jQuery(this).scrollTop();
        //console.log(vscroll);
        jQuery('#logotext').css({
            "transform" : "translate(0px, "+vscroll/2+"px)"
        });

        var vscroll = jQuery(this).scrollTop();
        //console.log(vscroll);
        jQuery('#back-flower').css({
            "transform" : "translate("+vscroll/5+"px, -"+vscroll/12+"px)"
        });

        var vscroll = jQuery(this).scrollTop();
        //console.log(vscroll);
        jQuery('#fore-flower').css({
            "transform" : "translate(0px, -"+vscroll/2+"px)"
        });
    });
</script>
</body>
</html>














