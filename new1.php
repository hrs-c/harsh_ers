<html>
	<head>
		<script>
			function add(){ <?php
				$n1=$_POST["num1"]; 
				$n2=$_POST["num2"];
				$ans=$n1+$n2;
				echo $n1+$n2;
			 ?>
			}
			function sub(){ <?php
				$n1=$_POST["num1"]; 
				$n2=$_POST["num2"];
				$ans=$n1-$n2;
				echo $n1-$n2;
			 ?>
			}
		</script>
		
		<form method="post">
			<label>number 1</label>
			<input type="text" name="num1"> <br>
			
			<label>number 2</label>
			<input type="text" name="num2"> <br>
			
			<label>Answer</label>
			<input type="text" name="ans" value="<?php echo $ans; ?>"> <br>
			
			<input type="submit" value="ADD" name="addbtn" onclick="add()"> 
			<input type="submit" value="SUB" name="subbtn" onclick="sub()">
		</form>
		
	</head>
</html>