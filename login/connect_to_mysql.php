<?php
/*  
1: "die()" will exit the script and show an error statement if something goes wrong with the "connect" or "select" functions. 

    2: A "mysql_connect()" error usually means your username/password are wrong  

    3: A "mysql_select_db()" error usually means the database does not exist. 

*/ 


// Place db host name. Sometimes "localhost" but  

// sometimes looks like this: >>      ???mysql??.someserver.net 
$db_host = "localhost"; 

// Place the username for the MySQL database here 

$db_username = "root"; 
//"ranaw_admin";  

// Place the password for the MySQL database here 

$db_pass = "";  

// Place the name for the MySQL database here 

$db_name = "beardeddragonstore"; 


// Run the actual connection here  

$connection = mysqli_connect("$db_host","$db_username","$db_pass") or die("could not connect to mysql");


mysqli_select_db($connection,"$db_name") or die("no database");             

?>
