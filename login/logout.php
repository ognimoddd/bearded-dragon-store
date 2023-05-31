<?php

session_start();

?>

<!DOCTYPE html>

<html>

<body>


<?php

// remove all session variables

session_unset();

 

// destroy the session
 
session_destroy();
 
?>



</body>

</html>



<?php

//***





echo "You have logged out!";

echo "<br>";

echo "If you would like to log back in please click here";

//echo "<br>";

echo "<a href='login.php'>Login</a>";



?>