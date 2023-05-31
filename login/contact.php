
<?php
 
error_reporting(E_ALL);

ini_set('display_errors', '1');

?>

<?php
 
// Run a select query from the database to get some of the top products that we have in the page
// Connect to the MySQL database script is required below:
 
include "storescripts/connect_to_mysql.php";
 
$dynamicList = "";

$sql = mysqli_query($con,"SELECT * FROM products ORDER BY date_added DESC LIMIT 2");

$productCount = mysqli_num_rows($sql); // count the output amount

if ($productCount > 0) {

	while($row = mysqli_fetch_array($sql)){
 
             $id = $row["id"];

			 $product_name = $row["product_name"];

			 $price = $row["price"];

       $date_added = date("F d, Y", strtotime($row["date_added"]));

			 $dynamicList .= '<table width="100%" border="0" cellspacing="0" cellpadding="10">

        <tr>

          <td width="17%" valign="top"><a href="product.php?id=' . $id . '"><img
 style="border:#666 1px solid;" src="inventory_images/' . $id . '.jpg" alt="' .
 $product_name . '" width="77" height="102" border="1" /></a></td>

          <td width="83%" valign="top">' . $product_name . '<br />

            $' . $price . '<br />

            <a href="product.php?id=' . $id . '">View Product Details</a></td>

        </tr>

      </table>';

    }

}
 
mysqli_close($con);

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Store Home Page</title>

<link rel="stylesheet" href="style/style.css" type="text/css" media="screen" />

</head>

<body>

<div align="center" id="mainWrapper">

  <?php include_once("template_header.php");?>

  <div id="pageContent">

  <table width="100%" border="0" cellspacing="0" cellpadding="10">

  <tr>

    <head>


    
    <font face ="comic sans ms">

    Contact us at 

    </font>

    </head>

    <body>

    <p>

    If you have any questions or concerns feel free to reach out to the owner:<br>

    Domingo Guzman:<br> guzmand8@montclair.edu<br>

    phone: <br> (201)-696-8185

    </body

    
      
  </div>

  <?php include_once("template_footer.php");?>

</div>

</body>

</html>