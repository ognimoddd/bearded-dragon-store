<!DOCTYPE html>

<html>

    <head>

        <script src="scripts/jquery.js"></script>

    </head>

     
    <body>

        <h1><font color="red">Payment Form</h1>
</font><br>------------------------------------------------------------------------------------------------------------------------------------------------
    
        <form id="buy-form" method="post" action="javascript:">

             
            <p class="form-label">First Name:</p>

            <input class="text" id="first-name" spellcheck="false"></input>
 
            
            <p class="form-label">Last Name:</p>

            <input class="text" id="last-name" spellcheck="false"></input>

             
            <p class="form-label">Email Address:</p>

            <input class="text" id="email" spellcheck="false"></input>
  
           
            <p class="form-label">Credit Card Number:</p>
 
           <input class="text" id="card-number" autocomplete="off"></input>
 
            
            <p class="form-label">Expiration Date:</p>
  
          <select id="expiration-month">
 
           <option value="1">January</option>

            <option value="2">February</option>
 
           <option value="3">March</option>

            <option value="4">April</option>
 
           <option value="5">May</option>

            <option value="6">June</option>
            <option value="7">July</option>

            <option value="8">August</option>
 
           <option value="9">September</option>
  
          <option value="10">October</option>
 
           <option value="11">November</option>

            <option value="12">December</option>
 
           </select>
 
            
            <select id="expiration-year">
   
             <?php
 
                    $yearRange = 20;

                    $thisYear = date('Y');

                    $startYear = ($thisYear + $yearRange);

                 
                    foreach (range($thisYear, $startYear) as $year)
 
                    {

                        if ( $year == $thisYear) {

                            print '<option value="'.$year.'" selected="selected">' . $year . '</option>';

                        } else {

                            print '<option value="'.$year.'">' . $year . '</option>';

                        }

                    }
 
               ?>
 

           </select>
 
            
            <p class="form-label">CVC:</p>

            <input class="text" id="card-security-code" autocomplete="off"></input>
 
            
    		<a href="thankyou.php"><br></br>Place the order</a>

        </form>
 
   </body>

</html>