<?php
include("check_session.php");
include("connection.php");
$id=$_GET['id'];
$query=mysqli_query($connection,"select user_name from user_login where user_id='$id'")or die ("query 1 incorrect...");
list($username)=mysqli_fetch_array($query);

if(isset($_GET['action']) && $_GET['action']!="" && $_GET['action']=='delete')
{
$id=$_GET['id'];

/*this is delet quer*/
mysqli_query($connection,"delete from time_table where time_table_id='$id'")or die("query is incorrect...");
}
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Timetable of <?php echo "$username";?></title>

        
        <link rel="stylesheet" href="boostrap/css/bootstrap.css">
        
  </head>
<body><br>
<div class="container">
<h1 align="center" style="font-size:42px">TIME TABLE<strong style="color:red;"></strong></h1><br>
  <div class="col-lg-12" style="margin-bottom:50px">
		<div id="chat_box">
		<div id="chat"></div>
        <div class="table-responsive">
        <table class="table table-bordered table-hover ">
        <tr><th>Day</th><th>Class</th><th>Time</th><th>Date</th></tr>
        <?php 		

$id=$_GET['id'];
$result=mysqli_query($connection,"select user_name from user_login where user_id='$id'")or die ("query 1 incorrect...");
list($teacher_name)=mysqli_fetch_array($result);

$result=mysqli_query($connection,"select time_table_id,day,time,class from time_table where teacher like '%$teacher_name%' ") or die ("Query 2 is inncorrect........");
while(list($time_table_id,$day,$time,$class)= mysqli_fetch_array($result))
{	
	echo"<tr><td>$day</td><td>$time</td><td>$class</td>
	<td>
	<a href='time_table.php?id=$time_table_id&action=delete'>Delete</a>
	</td>
	</tr>";
	
}

		?>
        </table></div>
  	<h1 align="center"><a href="welcome.php" class="btn btn-primary">GO BACK</a></h1>
    
</div></div>
</body>
</html>