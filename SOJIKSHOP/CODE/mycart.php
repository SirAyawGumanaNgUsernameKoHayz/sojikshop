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
<table border="1">
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
                                            $total_amount = 0;
                                            $total_quantity = 0;
                                            $query = mysqli_query($conn, "SELECT cd.cart_details_id,cd.product_id,cd.quantity,p.name,p.product_price,p.image_loc FROM cart_details cd
                                                                            LEFT JOIN products p ON p.product_id = cd.product_id WHERE user_id = 1 AND paid = 0");

                                              if(mysqli_num_rows($query) > 0){
                                            while ($row = mysqli_fetch_array($query)){
                                                $cart_details_id = $row['cart_details_id'];
                                              $product_id = $row['product_id'];
                                              $name = $row['name'];
                                            //   $description = $row['description'];
                                              $image_loc = $row['image_loc'];
                                              $product_price = $row['product_price'];
                                              $quantity = $row['quantity'];

                                            echo "<tr>";
                                            echo"<td><img src='".$image_loc."' width='150' height='200'></td>";
                                            echo"<td><font color='black'>" . $name ."</font></td>";
                                            echo"<td><font color='black'>" . $quantity ."</font></td>";
                                            echo"<td><font color='black'>". $product_price. " Php</font></td>";
                                            echo"<td><font color='black'>". $product_price * $quantity. " Php</font></td>";
                                            echo'<td>
                                            <a type="button"  href ="update_from_cart.php?cart_details_id='.$cart_details_id.'" class="btn btn-success"> Update Quantity</a>
                                            </td>';
                                            echo'<td>
                                                  <a type="button"  href ="remove_from_cart.php?cart_details_id='.$cart_details_id.'" class="btn btn-success"> Remove From Cart</a>
                                                  </td>';

                                              $total_amount = $total_amount + ($product_price * $quantity);
                                              $total_quantity = $total_quantity + $quantity;
                                              }
                                            }else{
                                                echo "<h1>Cart is Empty!</h1>";
                                            }

                                            ?>
                                        </tbody>
                                      </table>


 <?php if($total_amount != 0){
 echo "<br>TOTAL AMOUNT:" .$total_amount." Php <br>";
 echo "TOTAL QUANITY:" .$total_quantity;
 
   ?>
 <div style="text-align: center;">
        <div id="paypal-button-container"></div>
      </div>

<script src="https://www.paypal.com/sdk/js?client-id=sb&currency=PHP" data-sdk-integration-source="button-factory"></script>
  <script>
    function initPayPalButton() {
      paypal.Buttons({
        style: {
          shape: 'rect',
          color: 'gold',
          layout: 'vertical',
          label: 'paypal',
          
        },

        createOrder: function(data, actions) {
          return actions.order.create({
            purchase_units: [{"description":"SojiKshop Purchase","amount":{"currency_code":"PHP","value": <?php echo $total_amount?>}}]
          });
        },

        onApprove: function(data, actions) {
          return actions.order.capture().then(function(details) {
            alert('Transaction completed by ' + details.payer.name.given_name + '!');
            window.location = "paid_empty_cart.php";
          });
        },
        onCancel: function (data) {
          alert('aw cancel');
        },

        onError: function(err) {
          console.log(err);
        }
      }).render('#paypal-button-container');
    }
    initPayPalButton();
  </script>
                                      
       <?php } ?>                              