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
error_reporting(0);
echo 'welcome'.$_SESSION["Email"];
echo $_SESSION["Password"];

?><center>
<br>
<button type="button"><br><a href="list.php"><font color="red">list of employes</font></a></br></button></br>
<br>.</br>
<button type="button"><br><a href="update.php"><font color="red">update message</font></a></br></button></center>
</body>
