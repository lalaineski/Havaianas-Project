<?php
require('vendor/autoload.php');
//initialise user's wishlist
use havaianas\WishList;
$wish_list = new WishList();
//initialise user's cart total
use havaianas\ShoppingCart;
$cart = new ShoppingCart();
if( $_SERVER['REQUEST_METHOD'] == 'GET' && isset( $_GET['action'] ) ){
  $product_id = $_GET['product_id'];
  if( $_GET['action'] == 'delete' ){
    //$delete = $cart -> removeItem( $product_id );
  }
  if( $_GET['action'] == 'checkout' ){
    print_r($_GET);
  }
}
if( $_SERVER['REQUEST_METHOD'] == 'GET' && isset( $_GET['update'] ) ){
  print_r($_GET);
}
if( $_SERVER['REQUEST_METHOD'] == 'GET' && isset( $_GET['update'] ) ){
  print_r($_GET);
}

// get the total wishlist items for the navigation
$wish_total = $wish_list -> getWishListTotal();
// get the total cart items for the page
$cart_total = $cart -> getCartTotal();
// get the cart_id
$cart_id = $cart -> getCartId();
// get the cart items
$cart_items = $cart -> getCartItems( $cart_id );
// $wish_items = $wish_list -> getWishListItems();
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
$template = $twig -> load('cart.twig');
//output the template and pass the data
echo $template -> render( array(
  'wish_count' => $wish_total,
  'cart_count' => $cart_total,
  'cart_items' => $cart_items,
  'loggedin' => $loggedin,
  'title' => "Shopping Cart"
) );
?>