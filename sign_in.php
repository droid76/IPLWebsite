<?php
	$user = $_POST["username"];
	$password = $_POST["password"];
	$file = fopen("credentials.txt","r");
	echo(fread($file));
	$present= false;
	while(($f=fgets($file))!=null)
	{
		$f=trim($f);
		$f=explode(":",$f);
		$u=$f[0];
		$p=$f[1];
		if($u==$username && $p==$password)
		{
			$present=true;
			break;
		}
	}
	if(!$present)
		fwrite($file,$username.":".$password."\n");
	fclose($file);
?>
<html>
	<head>
	
		<title> Welcome to IPL </title>
		
		<script type = "text/javascript" src = "resources/jquery.min.js"> </script>
		<script type = "text/javascript" src = "resources/bootstrap.min.js"> </script>
		
		<link rel="stylesheet" type="text/css" href="resources/bootstrap.min.css" > 
		<link rel="stylesheet" type="text/css" href="resources/w3.css" > 
		
		<style>
			
		</style>
	</head>
	
	<body onload = 'getInfo()'>
		<span> <img src = "resources/images/profile.png" height = "50px" width = "50px" style = "left:0px> </span>
		<p id="usr">Welcome, <?php echo $username?></p>
		<span> <img src = "resources/images/images.png" height = "100px" width = "200px" style = "position:relative;left:600px"> </span>
		<div class="container">
		  	<ul class="nav nav-pills nav-justified">
			<li class="active"><a href="index.html">Home</a></li>
			<li><a href="#">Results</a></li>
			<li><a href="#">Statistics</a></li>
			<li><a href="#">Players</a></li>
			<li><a href="#">Fantasy Teams</a></li>
			<li><a href="#">Player Comparison</a></li>
			<li><a href="predictor.html">Match Predictor</a></li>
			<li class="active"><a href = "login.html"> Login </a></li>
			</ul>
			
	 	</div>
		<p>Your Fantasy Team list : </p>
		<div style="border: thin solid black; width: 200px">
			<ul>
				<li onclick="myfunction(this)"><p>Player 1</p></li>
				<li onclick="myfunction(this)"><p>Player 2</p></li>
				<li onclick="myfunction(this)"><p>Player 3</p></li>
				<li onclick="myfunction(this)"><p>Player 4</p></li>
				<li onclick="myfunction(this)"><p>Player 5</p></li>
				<li onclick="myfunction(this)"><p>Player 6</p></li>
				<li onclick="myfunction(this)"><p>Player 7</p></li>
				<li onclick="myfunction(this)"><p>Player 8</p></li>
				<li onclick="myfunction(this)"><p>Player 9</p></li>
				<li onclick="myfunction(this)"><p>Player 10</p></li>
				<li onclick="myfunction(this)"><p>Player 11</p></li>
			</ul>
		</div>	
		
	</body>
	
</html>
