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

var_dump($_GET['product_id']);

if (isset($_GET['product_id']))
{
		$check_error = 0;
		$product_id = $_GET['product_id'];

	if ($check_error == 0){
		$sql = "INSERT INTO cart_details (user_id,product_id,quantity, active, created_by, created_at )
		VALUES (1,'$product_id',1,1,1,now())";
		
		if (mysqli_query($conn, $sql)) {

					echo '<script language="javascript">';
					echo 'alert("Add To Cart Success.")';
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