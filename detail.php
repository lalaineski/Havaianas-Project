<?php
require('vendor/autoload.php');

use havaianas\ProductDetail;

//get the product id from url parameter
if( isset( $_GET['product_id'] ) ==false ){
    echo "no parameter set";
    exit();
}

use havaianas\WishList;
$wish = new WishList();
if( $_SERVER['REQUEST_METHOD'] == 'GET' && isset( $_GET['add'] ) ){
    $product_id = $_GET['product_id'];
    //if 'add' == 'list' means the wishlist button has been clicked
    if( $_GET['add'] == 'list' ){
        $add = $wish -> addItem($product_id);
    }
}

$wish_total = $wish -> getWishListTotal();

//create an instance of ProductDetail class
$pd = new ProductDetail();
$detail = $pd -> getProductDetail( $_GET['product_id']);
//print_r($detail);


//initialise twig template
$loader = new Twig_Loader_Filesystem('templates');

//create twig environment
$twig = new Twig_Environment($loader);

//load a twig template
$template = $twig -> load('detail.twig');

//pass value to twig
echo $template -> render([
    'detail' => $detail,
    'title' => $detail['product']['product_name'],
    'wish' => $wish_total,

]);
?>