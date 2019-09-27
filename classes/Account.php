<?php
namespace havaianas;

use havaianas\Database;

class Account extends Database{

    public function __construct(){
        parent::__construct();
    }

        public function register( $first_name, $last_name, $email, $password ){
            $query = "
            INSERT INTO account ( account_id, First_name, Last_name, email, password, created, accessed, updated)
            VALUES ( UNHEX(?),?,?, ?, ?,NOW(), NOW(), NOW()) 
            ";

            $register_errors = array();
            $response = array();

            if( strlen($password) < 8 ){
                $register_errors['password'] = "minimum 8 characters";
            }

            if( filter_var($email, FILTER_VALIDATE_EMAIL ) == false ){
                $register_errors['email'] = "email address not valid!"; 
            }
            //if there are no errors with email and password
            if( count( $register_errors) == 0 ){
                //hash the password
                $hash = password_hash( $password, PASSWORD_DEFAULT );
                $account_id = $this -> createAccountId();
                
               
                try{
                    if( !$statement = $this -> connection -> prepare( $query ) ){
                        throw( new Exception('query error') );
                    }
                    
                    

                    $statement-> bind_param('sssss',$account_id, $first_name, $last_name, $email, $hash);
                    
                    if ( $statement -> execute() == false ){
                        throw( new Exception('failed to execute') );
                    }
                    else{
                        //account is created in database
                        
                        $response['success'] = true;
                        
                    }
                }
                catch( Exception $exc ){
                    error_log( $exc -> getMessage() );
                }
            }
            else{
                $response['errors'] = $register_errors;
                $register['success'] = false;
            }
        }
        private function createAccountId(){
            //get random bytes
            $bytes = openssl_random_pseudo_bytes(16);
            //convert to hexadecimal
            $str = bin2hex( $bytes );
            return $str;
        }
        
  public function login( $email, $password ){
    $response = array();
    $errors = array();
    $query = "
      SELECT HEX( account_id ) as account_id,email,password
      FROM account
      WHERE email = ?
    ";
    try{
      $statement = $this -> connection -> prepare( $query );
      if( $statement == false ){
        throw new Exception('query error');
      }
      if( $statement -> bind_param('s', $email ) == false ){
        throw new Exception('parameter error');
      }
      if( $statement -> execute() == false ){
        throw new Exception('execution error');
      }
    }
    catch( Exception $exc ){
      error_log( $exc -> getMessage() );
      $errors['system'] = 'We are sorry, something is terribly wrong';
      $response['errors'] = $errors;
      $response['success'] = false;
      return $response;
    }
    //process result of query
    $result = $statement -> get_result();
    $account = $result -> fetch_assoc();
    try{
      if( $result -> num_rows == 0 ){
        throw new Exception('Credentials supplied do not match our system');
      }
      if( password_verify( $password, $account['password'] ) == false ){
        throw new Exception('Credentials supplied do not match our system');
      }
    }
    catch( Exception $exc ){
      $errors['account'] = $exc -> getMessage();
    }
    // check if there are errors
    if( count($errors) > 0 ){
      $response['success'] = false;
      $response['errors'] = $errors;
    }
    else{
      $response['success'] = true;
      $this -> setUserSession( $account['account_id'] );
    }
    return $response;

  }
  private function setUserSession( $account_id ){
    if( session_status() == PHP_SESSION_NONE ){
      session_start();
    }
    $_SESSION['auth'] = $account_id;
  }
  public function logout(){
    if( session_status() == PHP_SESSION_NONE ){
      session_start();
    }
    unset( $_SESSION['auth'] );
  }
    }
?>