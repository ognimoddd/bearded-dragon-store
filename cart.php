<?php

//***
session_start(); // Starts session first thing in script
error_reporting(E_ALL);

ini_set('display_errors', '1');

// Connect to the MySQL database! yay!
include "storescripts/connect_to_mysql.php";
 
?>

<?php


//if something is added to the cart from the product page

if (isset($_POST['pid'])) {

    $pid = $_POST['pid'];

	$wasFound = false;

	$i = 0;

	// this is the session for how to set up a cart

	if (!isset($_SESSION["cart_array"]) || count($_SESSION["cart_array"]) < 1) {
 
	    // RUN IF THE CART IS EMPTY OR NOT SET

		$_SESSION["cart_array"] = array(0 => array("item_id" => $pid, "quantity" => 1));

	}else {


	    // runs if our cart has more than 1 item in it

		foreach ($_SESSION["cart_array"] as $each_item) {
 
		      $i++;
     
		      //while (list($key, $value) = each($each_item)) {
		      foreach((Array) $each_item as $key => $value) {
				  if ($key == "item_id" && $value == $pid) {

					  // That item is in cart already so let's adjust its quantity using array_splice()

					  array_splice($_SESSION["cart_array"], $i-1, 1, array(array("item_id" => $pid, "quantity" => $each_item['quantity'] + 1)));

					  $wasFound = true;

				  } 
			   }
		      //} 

	       } 

		   if ($wasFound == false) {

			   array_push($_SESSION["cart_array"], array("item_id" => $pid, "quantity" => 1));

		   }

	}

	header("location: cart.php");
 
    exit();

}

?>

<?php



//if users wanna get rid of whatever is in their shopping cart

if (isset($_GET['cmd']) && $_GET['cmd'] == "emptycart") {

    unset($_SESSION["cart_array"]);

}

?>

<?php

 

//how to adjust the quantity of the items

if (isset($_POST['item_to_adjust']) && $_POST['item_to_adjust'] != "") {


    
	$item_to_adjust = $_POST['item_to_adjust'];

	$quantity = $_POST['quantity'];

	$quantity = preg_replace('#[^0-9]#i', '', $quantity); //forces only to accept numbers for quantity

	if ($quantity >= 100) { $quantity = 99; }

	if ($quantity < 1) { $quantity = 1; }

	if ($quantity == "") { $quantity = 1; }

	$i = 0;

	foreach ($_SESSION["cart_array"] as $each_item) {
 
		      $i++;

		      //while (list($key, $value) = each($each_item)) {
		      foreach((Array) $each_item as $key => $value) {

				  if ($key == "item_id" && $value == $item_to_adjust) {

					  // code to help adjust the number of items in the cart


					  array_splice($_SESSION["cart_array"], $i-1, 1, array(array("item_id" => $item_to_adjust, "quantity" => $quantity)));

				  }
 
		      } 

	} 

}
?>

<?php
 
   
   function asDollars($value) {

  return '$' . number_format($value, 2);

}



//how to remove item from the cart

if (isset($_POST['index_to_remove']) && $_POST['index_to_remove'] != "") {

    // code to remove the items from our cart or array

 	$key_to_remove = $_POST['index_to_remove'];

	if (count($_SESSION["cart_array"]) <= 1) {

		unset($_SESSION["cart_array"]);

	} else {

		unset($_SESSION["cart_array"]["$key_to_remove"]);

		sort($_SESSION["cart_array"]);

	}

}

?>

<?php

//code to help show the cart to customer



$cartOutput = "";

$cartTotal = "";

$pp_checkout_btn = '';

$product_id_array = '';

//code for if the cart is empty

if (!isset($_SESSION["cart_array"]) || count($_SESSION["cart_array"]) < 1) {

    $cartOutput = "<h2 align='center'>Your shopping cart is empty</h2>";

} 
else {

	//

	 $pp_checkout_btn .= '<form action="codd.cs.montclair.edu" method="post">

    <input type="hidden" name="cmd" value="_cart">

    <input type="hidden" name="upload" value="1">

    <input type="hidden" name="business" value="you@youremail.com">';

	// Start the For Each loop

	$i = 0;
 
    foreach ($_SESSION["cart_array"] as $each_item) {
 
		$item_id = $each_item['item_id'];

		$sql = mysqli_query($con,"SELECT * FROM products WHERE id='$item_id' LIMIT 1");

		while ($row = mysqli_fetch_array($sql)) {

			$product_name = $row["product_name"];

			$price = $row["price"];
	
		$details = $row["details"];

		}

		$pricetotal = $price * $each_item['quantity'];

		$cartTotal = (int)$pricetotal + (int)$cartTotal;

		setlocale(LC_MONETARY, "en_US");

       // $pricetotal = money_format("%10.2n", $pricetotal); // enable for your mac money format is undifine on wundows so I am going to change it so it works for my laptop 
		// Dynamic Checkout Btn Assembly


           
          $pricetotal = asDollars($pricetotal);



		$x = $i + 1;

		$pp_checkout_btn .= '<input type="hidden" name="item_name_' . $x . '" value="' . $product_name . '">

        <input type="hidden" name="amount_' . $x . '" value="' . $price . '">

        <input type="hidden" name="quantity_' . $x . '" value="' . $each_item['quantity'] . '">  ';

		// Create the product array variable

		$product_id_array .= "$item_id-".$each_item['quantity'].","; 

		// Dynamic table row assembly

		$cartOutput .= "<tr>";

		$cartOutput .= '<td><a href="product.php?id=' . $item_id . '">' .
 $product_name . '</a><br /><img src="inventory_images/' . $item_id . '.jpg" alt="' .
 $product_name. '" width="40" height="52" border="1" /></td>';

		$cartOutput .= '<td>' . $details . '</td>';

		$cartOutput .= '<td>$' . $price . '</td>';

		$cartOutput .= '<td><form action="cart.php" method="post">

		<input name="quantity" type="text" value="' . $each_item['quantity'] .
 '" size="1" maxlength="2" />

		<input name="adjustBtn' . $item_id . '" type="submit" value="change" />


		<input name="item_to_adjust" type="hidden" value="' . $item_id . '" />

		</form></td>';

		//$cartOutput .= '<td>' . $each_item['quantity'] . '</td>';

		$cartOutput .= '<td>' . $pricetotal . '</td>';

		$cartOutput .= '<td><form action="cart.php" method="post"><input name="deleteBtn' . $item_id . '" type="submit" value="X" /><input name="index_to_remove" type="hidden" value="' . $i . '" /></form></td>';

		$cartOutput .= '</tr>';

		$i++;
 
    }
 
	setlocale(LC_MONETARY, "en_US");

    $cartTotal = asDollars($cartTotal);

	$cartTotal = "<div style='font-size:18px; margin-top:12px;' align='right'>Cart Total : ".$cartTotal." USD</div>";

    
	$pp_checkout_btn .= '<input type="hidden" name="custom" value="' . $product_id_array . '">

	
	</form>';

}



?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Your Cart</title>

<link rel="stylesheet" href="style/style.css" type="text/css" media="screen" />

</head>

<body>

<div align="center" id="mainWrapper">

  <?php include_once("template_header.php");?>

  <div id="pageContent">

    <div style="margin:24px; text-align:left;">


	
    <br />


    <table width="50%" border="1" cellspacing="0" cellpadding="6">

      <tr>

        <td width="18%" bgcolor="#C5DFFA"><strong>Product</strong></td>

        <td width="45%" bgcolor="#C5DFFA"><strong>Product Description</strong></td>

        <td width="10%" bgcolor="#C5DFFA"><strong>Unit Price</strong></td>

        <td width="9%" bgcolor="#C5DFFA"><strong>Quantity</strong></td>

        <td width="9%" bgcolor="#C5DFFA"><strong>Total</strong></td>

        <td width="9%" bgcolor="#C5DFFA"><strong>Remove</strong></td>

      </tr>

     <?php echo $cartOutput; ?>

     <!-- <tr>

        <td>&nbsp;</td>

        <td>&nbsp;</td>

        <td>&nbsp;</td>

        <td>&nbsp;</td>

        <td>&nbsp;</td>

        <td>&nbsp;</td>

      </tr> -->

    </table>
    <?php echo $cartTotal; ?>

    <br />

<br />

<?php //echo $pp_checkout_btn; ?>

    <br />


    
    <a href="checkout.php">Submit Order here!</a>

    <br />

    <a href="cart.php?cmd=emptycart">Click Here to Empty Your Shopping Cart</a>
 
   </div>

   <br />

  </div>

  <?php include_once("template_footer.php");?>

</div>

</body>

</html>