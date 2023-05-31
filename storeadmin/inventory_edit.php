<?php
 
//***
include "../storescripts/connect_to_mysql.php"; 
$con = mysqli_connect("$db_host","$db_username","$db_pass") or die ("could not connect to mysql");

mysqli_select_db($con,"$db_name") or die ("no database");

session_start();

if (!isset($_SESSION["manager"])) {

    header("location: admin_login.php");
 
    exit();

}

//checks that this manager session is in our database

$managerID = preg_replace('#[^0-9]#i', '', $_SESSION["id"]); // filter everything but numbers and letters

$manager = preg_replace('#[^A-Za-z0-9]#i', '', $_SESSION["manager"]); // filter everything but numbers and letters

$password = preg_replace('#[^A-Za-z0-9]#i', '', $_SESSION["password"]); // filter everything but numbers and letters

// mySQL query that checks the admin info on database
// Connect to the MySQL database
  
include "../storescripts/connect_to_mysql.php";
 
$sql = mysqli_query($con,"SELECT * FROM admin WHERE id='$managerID' AND username='$manager' AND password='$password' LIMIT 1"); // query the person



$existCount = mysqli_num_rows($sql);

if ($existCount == 0) {
 
	 echo "Your login session data is not on record in the database.";

     exit();

}

?>

<?php
 
// Script Error Reporting?

error_reporting(E_ALL);

ini_set('display_errors', '1');

?>

<?php
 
// add inventory to the database

if (isset($_POST['product_name'])) {

	
	$pid = mysqli_real_escape_string($con, $_POST['thisID']);

    $product_name = mysqli_real_escape_string($con, $_POST['product_name']);

	$price = mysqli_real_escape_string($con, $_POST['price']);

	$category = mysqli_real_escape_string($con, $_POST['category']);

	$subcategory = mysqli_real_escape_string($con, $_POST['subcategory']);

	$details = mysqli_real_escape_string($con, $_POST['details']);

	// checks to see if there are double products in our inventory

	$sql = mysqli_query($con,"UPDATE products SET product_name='$product_name',
 price='$price', details='$details', category='$category', subcategory='$subcategory' WHERE id='$pid'");

	if ($_FILES['fileField']['tmp_name'] != "") {

	    // Place image in the folder
 
	    $newname = "$pid.jpg";

	    move_uploaded_file($_FILES['fileField']['tmp_name'], "../inventory_images/$newname");

	}

	header("location: inventory_list.php");
 
    exit();

}

?>

<?php
 
// gets product info if we want to edit some of the information

if (isset($_GET['pid'])) {

	$targetID = $_GET['pid'];

    $sql = mysqli_query($con,"SELECT * FROM products WHERE id='$targetID' LIMIT 1");

    $productCount = mysqli_num_rows($sql);
 
    if ($productCount > 0) {

	    while($row = mysqli_fetch_array($sql)){

 
             
			 $product_name = $row["product_name"];
			         $price = $row["price"];

			         $category = $row["category"];

			         $subcategory = $row["subcategory"];

			         $details = $row["details"];

			         $date_added = strftime("%b %d, %Y", strtotime($row["date_added"]));

        }

    }
 else {

	    echo "Something weird happened, reload the last page.";

		exit();

    }

}

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Inventory List</title>

<link rel="stylesheet" href="../style/style.css" type="text/css" media="screen" />
</head>



<body>

<div align="center" id="mainWrapper">

  <?php include_once("../template_header.php");?>

  <div id="pageContent"><br />
 
   <div align="right" style="margin-right:32px;"><a
 href="inventory_list.php#inventoryForm">+ Add New Inventory Item</a></div>

<div align="left" style="margin-left:24px;">

      <h2>Inventory list</h2>

    </div>

    <hr />

    <a name="inventoryForm" id="inventoryForm"></a>

    <h3>

    &darr; Add New Inventory Item Form &darr;

    </h3>

    <form action="inventory_edit.php" enctype="multipart/form-data" name="myForm" id="myform" method="post">

    <table width="90%" border="0" cellspacing="0" cellpadding="6">

      <tr>

        <td width="20%" align="right">Product Name</td>

        <td width="80%"><label>
 
         <input name="product_name" type="text" id="product_name" size="64" value="<?php echo $product_name; ?>" />

        </label></td>

      </tr>

      <tr>

        <td align="right">Product Price</td>

        <td><label>
          $

          <input name="price" type="text" id="price" size="12" value="<?php echo
 $price; ?>" />

        </label></td>

      </tr>

      <tr>
 
       <td align="right">Category</td>

        <td><label>
          <select name="category" id="category">
          <option value=""></option>
          <option value="Bearded Dragon">Bearded Dragon</option>
          <option value="Tanks">Tanks</option>
          <option value="Accessories">Accessories</option>
          <option value="Food">Food</option>
          <option value="Cleaning">Cleaning</option>
          </select>
 
       </label></td>

      </tr>

      <tr>
 
       <td align="right">Subcategory</td>

        <td><select name="subcategory" id="subcategory">
         <option value="<?php echo $subcategory; ?>"><?php echo $subcategory; ?></option>

         <option value="Citrus">Citrus</option>
          <option value="Normal">Normal</option>
          <option value="Orange">Orange</option>
          <option value="White">White</option>
          <option value="Brown">Brown</option>
          <option value="Red">Red</option>
          <option value="Small">Small</option>
          <option value="Medium">Medium</option>
          <option value="Large">Large</option>
          <option value="Extra Large">Extra Large</option>
          <option value="Lighting">Lighting</option>
          <option value="Decorations">Decorations</option>
          <option value="Hideouts">Hideouts</option>
          <option value="Branches">Branches</option>
          <option value="Bowls">Bowls</option>
          <option value="Backgrounds">Backgrounds</option>
         </select></td>
   
   </tr>
 
     <tr>
 
       <td align="right">Product Details</td>

        <td><label>

          <textarea name="details" id="details" cols="64" rows="5"><?php echo $details; ?></textarea>

        </label></td>

      </tr>
 
     <tr>
 
       <td align="right">Product Image</td>

        <td><label>
 
         <input type="file" name="fileField" id="fileField" />
   
     </label></td>
 
     </tr> 
     
      <tr>
  
      <td>&nbsp;</td>

        <td><label>

          <input name="thisID" type="hidden" value="<?php echo $targetID; ?>" />

          <input type="submit" name="button" id="button" value="Make Changes" />

        </label></td>

      </tr>

    </table>

    </form>

    <br />

  <br />

  </div>

  <?php include_once("../template_footer.php");?>

</div>

</body>

</html>