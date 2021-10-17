<?php
include("check_session.php");
include("connection.php");
if(isset($_GET['action']) && $_GET['action']!="" && $_GET['action']=='delete')
{
$message_id=$_GET['message_id'];

/*this is delet quer*/
mysqli_query($connection,"delete from messages where message_id='$message_id'")or die("query is incorrect...");
}
$a=0;
$user_id=$_SESSION['user_id'];
$query=mysqli_query($connection,"select user_name from user_login where user_id='$user_id'")or die ("query 1 incorrect.......");
list($username)=mysqli_fetch_array($query);
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Messages For <?php echo "$username";?></title>

        
        <link rel="stylesheet" href="boostrap/css/bootstrap.css">
        
  </head>
<body><br>
<div class="container">
<h1 align="center" style="font-size:42px">MESSAGES<strong style="color:red;"></strong></h1><br>
  <div class="col-lg-12" style="margin-bottom:50px">
		<div id="chat_box">
		<div id="chat"></div>
        <table class="table table-bordered table-hover ">
        <?php 		
$user_id=$_SESSION['user_id'];
$query=mysqli_query($connection,"select user_name from user_login where user_id='$user_id'")or die ("query 1 incorrect.......");
list($username)=mysqli_fetch_array($query);

$result=mysqli_query($connection,"select message_id, sender, message, time from messages where reciver like '%$username%' ") or die ("Query 2 is inncorrect........");
while(list($message_id,$sender,$message,$time)= mysqli_fetch_array($result))
{
	$a=1;	
	echo "
	<tr><td><span style='color:green;'>$sender</span>:
	<span style='color:brown;'>$message</span>
	<p class='pull-right'>$time</p>
	</td>
	<td class='pull-right'><a href='show_message.php?message_id=$message_id&action=delete'' class='btn btn-danger'>Delete</a></td>
	</tr>";
}
if($a==0)
{echo"<h1 align='center' style='color:red'>Sorry No Messages</h1>";}
else
{}
		?></table>
  	<h1 align="center"><a href="welcome.php" class="btn btn-primary">GO BACK</a></h1>
</div></div>
</body>
</html>