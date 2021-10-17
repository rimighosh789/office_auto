<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "imran_web");
 if(isset($_POST['bttlogin'])){
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Escape user inputs for security

$F_name= mysqli_real_escape_string($link, $_POST['First_name']);
$L_name= mysqli_real_escape_string($link, $_POST['Last_name']);
$em = mysqli_real_escape_string($link, $_POST['Email']);
$pass = mysqli_real_escape_string($link, $_POST['password']);


// attempt insert query execution
$sql = "INSERT INTO login (First_name,Last_name,Email,Password) VALUES ( '$F_name','$L_name','$em','$pass')";
if(mysqli_query($link, $sql)){
    echo "Records added successfully.";
	       header('Location: index.php');
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// close connection
mysqli_close($link);
} else {
 echo 'error';
 }
?>

