<?php
require('vendor/autoload.php');

// create account
use havaianas\Account;
if( $_SERVER['REQUEST_METHOD']=='POST' && $_POST['login'] == 'login' ){
  $email = $_POST['email'];
  $password = $_POST['password'];
  //create an instance of account class
  $acc = new Account();
  $login = $acc -> login( $email, $password );
  
}
else{
  $login='';
}

if( $_SERVER['REQUEST_METHOD']=='POST' && $_POST['register'] == 'register' ){
    $email = $_POST['email'];
    $password = $_POST['password'];
    //create an instance of account class
    $acc = new Account();
    $login = $acc -> register( $email, $password );
    
  }
  else{
    $login='';
  }

//create twig loader for templates
$loader = new Twig_Loader_Filesystem('templates');
//create twig environment
$twig = new Twig_Environment($loader);
//load a twig template
$template = $twig -> load('login.twig');
echo $template -> render( array(
    'login' => $login
) );

?>