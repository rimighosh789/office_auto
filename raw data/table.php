<?php
	
	include 'connect.php';
	
	$query 	= "SELECT * FROM msg";
	$result	= mysqli_query($con, $query);

			while($row = mysqli_fetch_array($result)) {
				
                 echo $row['message'];
			}
                	
    ?>
	        <html>
				<body>
				<a href="update_22.php?id=<?php echo $row['id'];?>" Edit</a>
				</body>
			</html>
			
   
 