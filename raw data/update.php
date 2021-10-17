<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Login Form</title>
    
    
    
    
        <link rel="stylesheet" href="css/styles.css">

    
    
    
  </head>

  <body>

    <html lang="en-US">
<head>
  <meta charset="utf-8">
    <title>Login</title>
    
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,700">

</head> <body>

    <html lang="en-US">
<head>
  <meta charset="utf-8">
    <title>Login</title>
    
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,700">

</head>
<?php
session_start();
$link = mysqli_connect("localhost", "root", "", "web");
 
if(isset($_POST['bttlogin'])){
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Attempt update query execution
$username=$_POST['user'];
//$oak=$_SESSION['username'];
$sql = "UPDATE msg SET message='".$username."' WHERE id=1";
if(mysqli_query($link, $sql)){
    echo "Records were updated successfully.";
} else {
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// Close connection
mysqli_close($link);
}


else 
{
echo "Acount is invalid";
}

?>
  <body>

    <html lang="en-US">
<head>
  <meta charset="utf-8">
    <title>Login</title>
    
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,700">

</head>
    <div id="login">
      <form action="update.php" method="post">
        <span class="fontawesome-user"></span>
          <input type="text"  placeholder="message" name="user">
       


<input type="submit" name="bttlogin" value="Submit"/>
</form>




