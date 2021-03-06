<?php
namespace havaianas;
use havaianas\Database;

    class Product extends Database{
        public function __construct() {
            parent::__construct();
        }

        public function getProducts(){
            $query = "SELECT
            @product_id := product.product_id as product_id,
            product.product_name,
            product.description,
            product.price,
            @image_id := ( SELECT image_id FROM product_image WHERE product_id = @product_id LIMIT 1) as image_id,
            ( SELECT image_name FROM image WHERE image_id = @image_id ) as image
            FROM product
            ";

            if( isset($_GET['category_id']) ){
                $query = $query . " ". "INNER JOIN product_category
                ON product.product_id = product_category.product_id
                WHERE product_category.category_id = ?";
            }
$query=$query . " ". " group by PRODUCT_ID, product_name, description,price";

            $statement = $this -> connection -> prepare( $query );

            if( isset($_GET['category_id']) ){
                $statement -> bind_param('i', $_GET['category_id']);
            }

            if( $statement -> execute() ){
                $result = $statement -> get_result();
                $product_array = array();
                while( $row = $result -> fetch_assoc()){
                    array_push( $product_array, $row );
                }
                return $product_array;
            }
        }
    }
?>