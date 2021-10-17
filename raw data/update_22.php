<?php
       include 'connect.php';
	    
		// CHECK IF UPDATE
        if( isset($_POST['update']) ) 
	   	{
	     	$fn   = $_POST['message'];
		  
		
	    	$query = "UPDATE msg SET firstname='".$fn."'";

			if (mysqli_query($con, $query)) 
			{
				header("location: web/table.php"); 
			} 
			else 
			 {
			   echo "Error updating record: " . mysqli_error($con);
			 }
		}
		
			$user_id 	= $_GET['id'];
			$query 		= "SELECT * FROM msg WHERE id='".$user_id."'";
			$result 	= mysqli_query($con, $query);
			$result 	= mysqli_fetch_array($result);
		
		
?>

    <form action="" method="post">
          
          Message <br>
          <input type="text" name="msg" value="<?php echo $result['msg']; ?>" /><br />
          <input  type="submit" name="submit" value="update" />
       </form>
     