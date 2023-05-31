<?php 
//***
include "../template_header.php";
include "../storescripts/connect_to_mysql.php"; 
$con = mysqli_connect("$db_host","$db_username","$db_pass") or die ("could not connect to mysql");

mysqli_select_db($con,"$db_name") or die ("no database");
session_start();
if (!isset($_SESSION["manager"])) {
    header("location: admin_login.php"); 
    exit();
}
// checks out the manager session
$managerID = preg_replace('#[^0-9]#i', '', $_SESSION["id"]); // forces to accept numbers and letters only
$manager = preg_replace('#[^A-Za-z0-9]#i', '', $_SESSION["manager"]); // same as above
$password = preg_replace('#[^A-Za-z0-9]#i', '', $_SESSION["password"]); // same as above
// Run mySQL query to be sure that this person is an admin and that their password session is in database

// Connect to MySQL database  
include "../storescripts/connect_to_mysql.php"; 
$sql = mysqli_query($con,"SELECT * FROM admin WHERE id='$managerID' AND username='$manager' AND password='$password' LIMIT 1"); // query the person
// makes sure this person is legit
$existCount = mysqli_num_rows($sql); // count the row nums
if ($existCount == 0) { // evaluate the count
	 echo "Your login session data is not on record.";
     exit();
}
?>
<?php 
// Error reporting
error_reporting(E_ALL);
ini_set('display_errors', '1');
?>
<?php 
// Delete Item Question for the admin
if (isset($_GET['deleteid'])) {
	echo 'Do you really want to delete product with ID of ' . $_GET['deleteid'] . '? <a href="inventory_list.php?yesdelete=' . $_GET['deleteid'] . '">Yes</a> | <a href="inventory_list.php">No</a>';
	exit();
}
if (isset($_GET['yesdelete'])) {
	// remove item and deletes picture
	$id_to_delete = $_GET['yesdelete'];
	$sql = mysqli_query($con,"DELETE FROM products WHERE id='$id_to_delete' LIMIT 1") or die (mysqli_error());
	
	
    $pictodelete = ("../inventory_images/$id_to_delete.jpg");
    if (file_exists($pictodelete)) {
       		    unlink($pictodelete);
    }
	header("location: inventory_list.php"); 
    exit();
}
?>
<?php 
// the script for adding new inventory to the database
if (isset($_POST['product_name'])) {
	
  $product_name = mysqli_real_escape_string($con, $_POST['product_name']);
	$price = mysqli_real_escape_string($con, $_POST['price']);
	$category = mysqli_real_escape_string($con, $_POST['category']);
	$subcategory = mysqli_real_escape_string($con, $_POST['subcategory']);
	$details = mysqli_real_escape_string($con, $_POST['details']);
	// See if that product name is an identical match to another product in the system
	$sql = mysqli_query($con,"SELECT id FROM products WHERE product_name='$product_name' LIMIT 1");
	$productMatch = mysqli_num_rows($sql); // count the output amount
    if ($productMatch > 0) {
		echo 'Sorry you tried to place a duplicate "Product Name" into the system, <a href="inventory_list.php">click here</a>';
		exit();
	}
	// ADD NOW! 
	$sql = mysqli_query($con,"INSERT INTO products (product_name, price, details, category, subcategory, date_added) 
        VALUES('$product_name','$price','$details','$category','$subcategory',now())") or die (mysqli_error());
     $pid = mysqli_insert_id($con);
	// Place image in the folder 
	$newname = "$pid.jpg";
	move_uploaded_file( $_FILES['fileField']['tmp_name'], "../inventory_images/$newname");
	header("location: inventory_list.php"); 
    exit();
}
?>
<?php 
// so we can see what is in the database
$product_list = "";
$sql = mysqli_query($con,"SELECT * FROM products ORDER BY date_added DESC");
$productCount = mysqli_num_rows($sql); 
if ($productCount > 0) {
	while($row = mysqli_fetch_array($sql)){ 
             $id = $row["id"];
			 $product_name = $row["product_name"];
			 $price = $row["price"];
       $date_added = date("F d, Y", strtotime($row["date_added"]));
			 $product_list .= "Product ID: $id - <strong>$product_name</strong> - $$price - <em>Added $date_added</em> &nbsp; &nbsp; &nbsp; <a href='inventory_edit.php?pid=$id'>edit</a> &bull; <a href='inventory_list.php?deleteid=$id'>delete</a><br />";
    }
} else {
	$product_list = "You have no products listed in your store yet";
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
    <div align="right" style="margin-right:32px;"><a href="inventory_list.php#inventoryForm">+ Add New Inventory Item</a></div>
<div align="left" style="margin-left:24px;">
      <h2>Inventory list</h2>
      <?php echo $product_list; ?>
    </div>
    <hr />
    <a name="inventoryForm" id="inventoryForm"></a>
    <h3>
    &darr; Add New Inventory Item Form &darr;
    </h3>
    <form action="inventory_list.php" enctype="multipart/form-data" name="myForm" id="myform" method="post">
    <table width="90%" border="0" cellspacing="0" cellpadding="6">
      <tr>
        <td width="20%" align="right">Product Name</td>
        <td width="80%"><label>
          <input name="product_name" type="text" id="product_name" size="64" />
        </label></td>
      </tr>
      <tr>
        <td align="right">Product Price</td>
        <td><label>
          $
          <input name="price" type="text" id="price" size="12" />
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
        <option value=""></option>
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
          <textarea name="details" id="details" cols="64" rows="5"></textarea>
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
          <input type="submit" name="button" id="button" value="Add This Item Now" />
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