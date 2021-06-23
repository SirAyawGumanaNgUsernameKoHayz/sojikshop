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

		$check_error = 0;

	if ($check_error == 0){
		$sql = "UPDATE cart_details set paid = 1 WHERE user_id = 1";
		
		if (mysqli_query($conn, $sql)) {

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


?>