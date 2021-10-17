
<?php
session_start();
error_reporting(0);
require 'connect.php';
if(isset($_POST['bttlogin']))
    {
     $em  =  $_POST['Email'];
    $pass =  $_POST['password'];
    $result = mysqli_query($con,'SELECT email , password from chrman where Email ="'.$em.'" and Password="'.$pass.'"');
       if(mysqli_num_rows($result)==1){
       $_SESSION['Email']=$em;
	   $_SESSION['Password']=$pass;
	    

         header('Location: welcome.php');
}
else 
echo "Acount is invalid";
}
?>



