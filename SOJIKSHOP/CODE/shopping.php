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
?>
<table>
                                          <thead>
                                              <!-- <tr>

                                                  <th>Product Name Name</th>
                                                  <th>Company No.</th>
                                                  <th>Company address</th>
                                                  <th>Contact Person</th>
                                                  <th>Contact Person No.</th>
                                                  <th>Status</th>
                                                  <th>Option</th>
                                              </tr> -->
                                          </thead>
                                          <tbody>
                                            <?php
                                            $query = mysqli_query($conn, "SELECT * FROM `products`");

                                              if(mysqli_num_rows($query) > 0){
                                            while ($row = mysqli_fetch_array($query)){
                                              $product_id = $row['product_id'];
                                              $name = $row['name'];
                                              $description = $row['description'];
                                              $image_loc = $row['image_loc'];
                                              $product_price = $row['product_price'];
                                              $status = $row['active'];

                                            echo "<tr>";
                                            echo"<td><font color='black'>" . $name ."</font></td>";
                                            echo"<td><font color='black'>". $description. "</font></td>";
                                            echo"<td><img src='".$image_loc."' width='150' height='200'></td>";
                                            echo"<td><font color='black'>". $product_price. "</font></td>";
                                            echo"<td><font color='black'>"; if($status == 1) echo "Active"; else echo"Deactivated"; echo"</font></td>";
                                            echo'<td>
                                                  <a type="button"  href ="add_to_cart.php?product_id='.$product_id.'" class="btn btn-success"> Add To Cart</a>
                                                  </td>';
                                              
                                              }
                                            }

                                            ?>
                                        </tbody>
                                      </table>