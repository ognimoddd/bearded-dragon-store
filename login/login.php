<?php  //Start the Session

session_start();

 require('connect_to_mysql.php');

//3. If the form is submitted or not.

//3.1 If the form is submitted

if (isset($_POST['username']) and isset($_POST['password'])){

//3.1.1 Assigning posted values to variables.

$username = $_POST['username'];

$password = $_POST['password'];

//3.1.2 Checking the values are existing in the database or not

$query = "SELECT * FROM `users` WHERE username='$username' and password='$password'";



$result = mysqli_query($connection,$query) or die(mysqli_error());

$count = mysqli_num_rows($result);

//3.1.2 If the posted values are equal to the database values, then session will be created for the user.

if ($count == 1){
$_SESSION['username'] = $username;

}
else{

//3.1.3 If the login credentials doesn't match, he will be shown with an error message.

echo "Invalid Login Credentials.";

}

}


//3.1.4 if the user is logged in Greets the user with message

if (isset($_SESSION['username'])){
$username = $_SESSION['username'];

echo "Hello " . $username . " Thank you for logging in";

echo "<br>";

echo "This is the Members Area";

echo "<br>";

echo "<a href='logout.php'>Logout</a>";

echo "<br>";

echo "<a href='..\index2.php'>Home Page</a>";

 
}else{

//3.2 When the user visits the page first time, simple login form will be displayed.

?>

<!DOCTYPE html>



<tr>

    <td width="32%"><a href="index.php"><center><img src="logo2.png" alt="Logo" width="400" height="200" border="0" /></a></td>

  </tr>

 <head>

<title>Log in Page</title>

<link rel="stylesheet" type="text/css" href="style.css" />

</head>

<body>

<!-- Form for logging in the users -->



<div class="register-form">

<?php

	if(isset($msg) & !empty($msg)){

		echo $msg;

	}

 ?>

<h1>Domingo's Bearded Dragon Store</h1>
<h2>Login</h2>

<form action="" method="POST">

    <p><label>User Name : </label>

	<input id="username" type="text" name="username" placeholder="username" /></p>

 
     <p><label>Password&nbsp;&nbsp; : </label>

	 <input id="password" type="password" name="password"
 placeholder="password" /></p>

 
    <a class="btn" href="register.php">Signup</a>

    <input class="btn register" type="submit" name="submit" value="Login" />

    </form>

</div>

<?php } ?>

</body>

</html>