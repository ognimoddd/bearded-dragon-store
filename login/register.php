<?php



	require('connect_to_mysql.php');

    // If the values are posted, insert them into the database.

    if (isset($_POST['username']) && isset($_POST['password'])){

        $username = $_POST['username'];

		$email = $_POST['email'];

        $password = $_POST['password'];


 
        $query = "INSERT INTO `users` (username, password, email) VALUES
 ('$username', '$password', '$email')";

        $result = mysqli_query($connection,$query);

        if($result){

            $msg = "User Created Successfully.";
        }
   
  }

     ?>

<!DOCTYPE html>

<html>

<head>

<title>Registation Page</title>

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

<h1>Register</h1>

<form action="" method="POST">

    <p><label>User Name : </label>

	<input id="username" type="text" name="username" placeholder="username" /></p>

	
	<p><label>E-Mail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : </label>

	 <input id="password" type="email" name="email" required placeholder="student@montclair.edu" /></p>

 
     <p><label>Password&nbsp;&nbsp; : </label>

	 <input id="password" type="password" name="password" placeholder="password" /></p>

 
    <a class="btn" href="login.php">Login</a>
 
   <input class="btn register" type="submit" name="submit" value="Register" />

    </form>

</div>

</body>

</html>