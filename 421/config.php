<?php

define('BASEURL', $_SERVER['DOCUMENT_ROOT'].'/421/');
define('CART_COOKIE', 'CIS421_SAEED_QAYED_ASOUFY_ALHAIDI');
// saves cookie on client computer for 30 days
define('CART_COOKIE_EXPIRE',time() + (86400 * 30));
define('TAXRATE', 0.06); // sales tax rate. Set to 0 if you aren't charging tax

//for payment
define('CURRENCY', 'usd');
//change test to live when you are ready to go live
define('CHECKOUTMODE', 'TEST');

if(CHECKOUTMODE == 'TEST'){
    define('STRIPE_PRIVATE','sk_test_3F5tOA0RFE7KwMDKTbZf1u2s');
    define('STRIPE_PUBLIC','pk_test_KsNNPi8ZikvGrcnLpDadgHuc');
}

if(CHECKOUTMODE == 'LIVE'){
    define('STRIPE_PRIVATE','xxx');
    define('STRIPE_PUBLIC','xxx');
}