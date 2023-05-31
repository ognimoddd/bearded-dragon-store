
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

			 //$date_added = strftime("%b %d, %Y", strtotime($row["date_added"]));
       $date_added = date("%b %d %Y", strtotime($row["date_added"]));

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

    <td width="32%" valign="top"><h1><font color="red">Welcome to Domingo's Bearded Dragon Store!</h1>

</font><br><hr style="height:4px;border-width:0;color:black;background-color:black"><br>      <p><strong>Exotic reptiles have become increasingly popular house pets for families throughout the country and world. Snakes and lizards have grown exponentially in popularity for their easy maintenance and docile demeanor. One of the highest sought after exotic pets in this category is the beautiful Bearded Dragon. These gentle creatures are known for their enticing appearance and dangerous name. Here at Domingo's Bearded Dragon Store, we pride ourselves on being among the top exotic reptile online stores around in the U.S.A. Pledging our services for the care and compassion of our reptiles, we supply pet stores and hobbyists worldwide with healthy, high quality Bearded Dragons. Our staff is passionate about our caring for our reptiles, and as a Bearded Dragon breeder, their health is our highest priority.<br><br><br> When thinking about purchasing your first Bearded Dragons, there are a few things you should know. Also known by their scientific name Pogona Vitticeps, Bearded Dragons originate in the wild continent of Australia. Typically recognized for their triangular shaped heads containing rows of spikes that resemble thorns, these medium-sized lizards rarely get more than one to two feet in size as a fully grown adult. These spikes, though dangerous in appearance, are actually soft and flexible. As an omnivore, the Bearded Dragon eats both insects and plants. They can also be very adept climbers as they reside in areas with branches, bushes, rocks, or stumps. Here is a list of some of the benefits to owning your own Bearded Dragon:<br><br><br>

    1) Docile, gentle temperament<br>
    2) Easy to maintain<br>
    3) Small to medium size<br>
    4) Inexpensive initial and care costs<br>
    5) 12-14 general max lifespan<br>
    6) Beautiful and come in a variety of colors<br>
    7) They don't smell<br>
    8) They're not messy<br>
<br/></strong></p>

        </td>

    
      
        </p>

      <p>

        <td width="35%" valign="top"><h3><font color="red"><center>Most popular Bearded Dragons in our store</center></h3><hr style="height:2px;border-width:0;color:black;background-color:black">

      <p><center><b><?php echo $dynamicList; ?><br /></center>

        </p>

      </p></td>

  </tr>

</table>


  </div>

  <?php include_once("template_footer.php");?>

</div>

</body>

</html>