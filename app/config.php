<?php
// $conn = new mysqli("localhost", "root", "", "int_task");
try{
$conn = new mysqli("localhost", "root", "", "int_task");    
}catch(Exception $err){
    echo "Error in db connection";
    echo $err->getMessage();
}

?>