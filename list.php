<?php
require('vendor/autoload.php');
//get user's wishlist total
use havaianas\WishList;
$wish = new WishList();
if( $_SERVER['REQUEST_METHOD'] == 'GET' && isset( $_GET['action'] ) ){
    $product_id = $_GET['product_id'];
    if( $_GET['action'] == 'delete' ){
      $delete = $wish -> removeItem( $product_id );
    }
  }
$wish_total = $wish -> getWishListTotal();
$wish_items = $wish -> getWishListItems();
// create navigation
//use havaianas\Navigation;
//$nav = new Navigation();
//$navigation = $nav -> getNavigation();
//create twig loader for templates

if(isset( $_SESSION['auth'])){$loggedin=true;}else{$loggedin=false;}
$loader = new Twig_Loader_Filesystem('templates');
//create twig environment and pass the loader
$twig = new Twig_Environment($loader);
//call a twig template
$template = $twig -> load('wishlist.twig');
//output the template and pass the data
echo $template -> render( array(
  //  'navigation' => $navigation,
    'wish' => $wish_total,
    'wish_items' => $wish_items,
    'loggedin' => $loggedin,
    'title' => "Wish List"
  ) );
?>