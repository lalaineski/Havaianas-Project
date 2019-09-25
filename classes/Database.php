<?php
namespace havaianas;
class Database{
    protected $connection;
    public function __construct(){
        $this -> connection = mysqli_connect('localhost', 'user', 'password', 'havaianas-project');
    }
}
?>