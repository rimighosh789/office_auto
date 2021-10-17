<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Login Form</title>
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="boostrap/css/bootstrap.css">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,700">
</head>
<body>
<div class="container" align="center"><br><br>
<img src="images/logo.jpg" alt="">
<br>

<div class="well">
      <form action="inde.php" method="post">
  
          <input class="input-lg" type="text"  placeholder="Email" name="Email" required>
<br><br>
          <input class="input-lg" type="password"  placeholder="Password"name="password" required><br><br>
        
             <input class="btn btn-primary" type="submit" name="bttlogin" value="Login"/>


     <a class="btn btn-primary" href="register.php">Sign Up</a>
</form>    
</div>
<a class="btn btn-danger" href="index.html" >Back</a> 
    
</div>    
</body>
</html>
