<?php
	if(isset($_POST["btn"])){
		$fn = $_POST["first"];
		$ln = $_POST["last"];
		
		//echo "$fn";
		//echo "$ln";
		
		$host="localhost";
		$user="root";
		$password="";
		$db="trial";
		
		$conn=mysqli_connect($host,$user,$password,$db);
		
		//INSERT INTO `names`(`id`, `fname`, `lname`) VALUES ([value-1],[value-2],[value-3])
		
		if($conn)
		{
			$sql="INSERT INTO `names`(`fname`, `lname`) VALUES ('$fn','$ln')";
			$result = mysqli_query($conn,$sql);
			echo $sql;
			
		}
		
	}
?>
<html>
	<form method="POST">
		first name 
		<input type="text" id="first" name="first" >
		
		last name
		<input type="text" id="last" name="last">
		
		<input type="submit" value="enter" id="btn" name="btn">
	<form/>
<html/>