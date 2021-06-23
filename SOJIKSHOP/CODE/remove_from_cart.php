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

var_dump($_GET['cart_details_id']);

if (isset($_GET['cart_details_id']))
{
		$check_error = 0;
		$cart_details_id = $_GET['cart_details_id'];

	if ($check_error == 0){
		$sql = "DELETE FROM cart_details WHERE cart_details_id='$cart_details_id'";
		
		if (mysqli_query($conn, $sql)) {

					echo '<script language="javascript">';
					echo 'alert("Remove from cart Success.")';
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