<?php 
$servername = "localhost";
$db_username = "root";
$db_password = "";
$dbname = "sojikshop";
// Create connection
$conn = mysqli_connect($servername, $db_username, $db_password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}else{
	// echo ("<SCRIPT LANGUAGE='JavaScript'>
	// window.alert('WOWOWOWE')
	// </SCRIPT>");
}

$cart_details_id = $_GET['cart_details_id'];

$query = mysqli_query($conn, "SELECT cd.cart_details_id,cd.product_id,cd.quantity,p.name,p.product_price,p.image_loc FROM cart_details cd
LEFT JOIN products p ON p.product_id = cd.product_id WHERE cart_details_id = '$cart_details_id'");

if(mysqli_num_rows($query) > 0){
    while ($row = mysqli_fetch_array($query)){
    $cart_details_id = $row['cart_details_id'];
    $product_id = $row['product_id'];
    $name = $row['name'];
    $product_price = $row['product_price'];
    $quantity = $row['quantity'];
    }
}

?>

<form action="" method="post">
  <label for="fname">Product Name:</label><br>
  <input type="text" id="name" value="<?php echo $name; ?>" readonly><br>
  <label for="lname">Quantity:</label><br>
  <input type="text" id="quantity" name="quantity" value="<?php echo $quantity; ?>"><br><br>
  <input type="submit" value="submit" name="update">
</form> 

<?php
if (isset($_POST['update']))
{
	var_dump($_POST);

		$check_error = 0;
		$new_quantity = $_POST['quantity'];


	if ($check_error == 0){
		$sql = "UPDATE cart_details set quantity ='$new_quantity' WHERE cart_details_id = '$cart_details_id'";
		
		if (mysqli_query($conn, $sql)) {

					echo '<script language="javascript">';
					echo 'alert("Quantity Update Success")';
					echo '</script>';
					echo '<script language="javascript">';
					echo 'window.location.href="mycart.php"';
					echo '</script>';

					exit;
	} else {
	    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
			exit;
	}
	mysqli_close($conn);

	}
}
?>