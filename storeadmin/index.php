<?php
 
//***

//this is the session for the manager's index

session_start();

if (!isset($_SESSION["manager"])) {

    header("location: admin_login.php");
 
    exit();

}

// Be sure to check that this manager SESSION value is in fact in the database

$managerID = preg_replace('#[^0-9]#i', '', $_SESSION["id"]);
 
$manager = preg_replace('#[^A-Za-z0-9]#i', '', $_SESSION["manager"]);
 
$password = preg_replace('#[^A-Za-z0-9]#i', '', $_SESSION["password"]);
 
// Run mySQL query to be sure that this person is an admin and that their password matches the info that is on the database



// Connect to the MySQL database

// the same script code used for everything
  
include "../storescripts/connect_to_mysql.php";
 
$sql = mysqli_query($con,"SELECT * FROM admin WHERE id='$managerID' AND username='$manager' AND password='$password' LIMIT 1"); // query the person


$existCount = mysqli_num_rows($sql);
 
if ($existCount == 0) {
 
	 echo "Your login session data is not on record in the database.";

     exit();

}

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Store Admin Area</title>

<link rel="stylesheet" href="../style/style.css" type="text/css" media="screen" />

</head>



<body>

<div align="center" id="mainWrapper">

  <?php include_once("../template_header.php");?>

  <div id="pageContent"><br />

    <div align="left" style="margin-left:24px;">

      <h2>Hi Store Manager!</h2>

      <p><a href="inventory_list.php">Manage Inventory</a><br />
 
     <a href="https://codd.cs.montclair.edu:2083/cpsess8435536735/3rdparty/phpMyAdmin/index.php">PHP MyAdmin - SuperUser Only</a></p>

    </div>

    <br />

  <br />

  <br />

  </div>

  <?php include_once("../template_footer.php");?>

</div>

</body>

</html>