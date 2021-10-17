<?php 
$connection=mysqli_connect("localhost","root","","off_db");
/*check connection*/
if(mysqli_connect_errno())
{
echo"Connection Fail". mysqli_connect_error();
}
?>