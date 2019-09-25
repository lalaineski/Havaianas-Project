<?php
require('vendor/autoload.php');

//test for navigation after auth
//session_start();
//$_SESSION['auth'] = true;
//session_destroy();

// phpinfo();

use havaianas\Navigation;


use havaianas\Product;

$products = new Product();
$products_result = $products -> getProducts();


use havaianas\Category;

$cat = new Category();
$categories = $cat -> getCategories();

//print_r($categories);
//create twig loader
//$loader = new \twig\loader\filesystemloader('templates')
$loader = new Twig_Loader_Filesystem('templates');

//create twig environment
//$twig = new \twig\environment($loader);
$twig = new Twig_Environment($loader);

//load a twig template
$template = $twig -> load('home.twig');

//pass value to twig
echo $template -> render([
    'categories' => $categories,
    'products' => $products_result,
    'title' => 'Logo'
]);
?>