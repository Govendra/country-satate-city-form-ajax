<?php
include "../app/config.php";
// echo"<option selected>Select Selected</option>"
$cId = $_GET["country"];

$qry = "SELECT * FROM city WHERE state_id = '$cId'";
$exe = mysqli_query($conn, $qry);

echo"<option> Select City </option>";
while($fetchCon = mysqli_fetch_assoc($exe)){ ?>
    <option value="<?php echo $fetchCon['id']?>"><?php echo $fetchCon['name']?></option>    
<?php }
?>