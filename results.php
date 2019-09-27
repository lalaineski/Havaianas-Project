<?php
require('vendor/autoload.php');
use havaianas\Search;
if( isset($_GET['query']) ){
  $search = new Search();
  $result = $search -> getSearchResult();
}
else{
  $result = '';
}
// create navigation

//create twig loader for templates
$loader = new Twig_Loader_Filesystem('templates');
//create twig environment and pass the loader
$twig = new Twig_Environment($loader);
//call a twig template
$template = $twig -> load('results.twig');
//output the template and pass the data
echo $template -> render( array(
  'result' => $result
) );
?>