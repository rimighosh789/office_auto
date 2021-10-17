<?php
session_start();
error_reporting(0);
?>
<!DOCTYPE html>
<html lang="en-US">
<head>
  <meta charset="utf-8">
   
 <title>List Of Employee</title>
  
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
 
   <link rel="stylesheet" href="#css/style.css">
<link rel="stylesheet" href="boostrap/css/bootstrap.css">
</head>
<body><br><br>
<div class="container table-responsive">
<?php
include 'connect.php';

 $sql = "SELECT  First_name,Last_name,Email FROM  login";
	 	
 $result = mysqli_query($con, $sql);

if(mysqli_num_rows($result) > 0 )
	 
{?>
    

 <table class="table table-bordered table-hover">
<thead>
 <tr>
<th colspan="3" style="text-align: center;">

                    <h1>LIST OF EMPLOYEE</h1>
                </th>
            </tr>
            
<tr>            <th style="font-size:20px">Employee Name</th>
                <th style="font-size:20px">Email Address</th>
                <th style="font-size:20px">Action</th>
            </tr>
         </thead>
         <tbody style="font-size:18px">
<?php $actual_link = explode("/",'http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF']);
        $url    =   $actual_link[0]."//".$actual_link[2]."/".$actual_link[3];
		while($rows = mysqli_fetch_assoc($result)) 
		{
            if($rows['Email'] != $_GET['user']){
                echo '<tr>';
                echo '<td>'.ucwords($rows["First_name"]).'&nbsp;'.ucwords($rows["Last_name"]).'</td>';
                echo '<td>'.$rows["Email"].'</td>';
                echo '<td><a style="float: left;margin-bottom: 4px;" class="btn btn-primary" href="message.php?action=add&email='.$rows['Email'].'&user='.$_GET['user'].'">Add Message</a>
                <a style="margin-left:5px;float:left;" class="btn btn-primary" href="message.php?action=view&user='.$_GET['user'].'">View Message</a></td>';
                echo '</tr>';
            }
            else{
            }
		}
	 }
	 else 
	 {
         echo '
            <tr>
                <td colspan="3">Employee Not added Yet</td>
            </tr>
            ';
      }?>
</tbody>
</table>
</div>
</body>
</html>