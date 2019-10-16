<?php
require('vendor/autoload.php');
session_start();
use havaianas\Product;
$p = new Product();
$products = $p -> getProducts();

if(isset( $_SESSION['auth'])){$loggedin=true;}else{$loggedin=false;}
//create twig loader for templates
$loader = new Twig_Loader_Filesystem('templates');
//create twig environment
$twig = new Twig_Environment($loader);
//load a twig template
$template = $twig -> load('product.twig');
echo $template -> render( array(
    'products' => $products,
    'loggedin' => $loggedin
) );

?>