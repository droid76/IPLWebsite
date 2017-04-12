<html>
	<head>
		<title>Match predictor </title>
		<script type = "text/javascript" src = "resources/jquery.min.js"> </script>
		<script type = "text/javascript" src = "resources/bootstrap.min.js"> </script>
		<link rel="stylesheet" type="text/css" href="resources/bootstrap.min.css" > 
		<link rel="stylesheet" type="text/css" href="resources/w3.css" > 
	<head>
	<body>
	<div class="container">
  	<span> <img src = "resources/images/images.png" height = "100px" style = "position:relative;left:500px"> </span>
  		<ul class="nav nav-pills nav-justified">
    		<li ><a href="index.html">Home</a></li>
    		<li><a href="#">Results</a></li>
    		<li><a href="#">Statistics</a></li>
    		<li><a href="#">Players</a></li>
     		<li><a href="#">Fantasy Teams</a></li>
    		<li><a href="#">Player Comparison</a></li>
     		<li class="active"><a href="predictor.html">Match Predictor</a></li>
    		</ul>
	 </div>
		<h3 style = "text-align:center"> Predict Matches </h3>
		<h2 style = "text-align:center"> Select Teams  </h2>
	<form action = "predict.php" method = "post">
		<select name = "team1" style = "display:inline-block">
		<option value = "dd"> Delhi Daredevils </option>
		<option value = "gj"> Gujarat Lions </option>
		<option value = "kkr"> Kolkata Knightriders </option>
		<option value = "kxi"> Kings XI Punjab </option>
		<option value = "mi"> Mumbai Indians </option>
		<option value = "rps"> Rising Pune Supergiants </option>
		<option value = "rcb"> Royal Challengers Bangalore </option>
		<option value = "srh"> Sunrisers Hyderabad </option>
		</select>
		<select name = "team2" style = "display:inline-block">
		<option value = "dd"> Delhi Daredevils </option>
		<option value = "gj"> Gujarat Lions </option>
		<option value = "kkr"> Kolkata Knightriders </option>
		<option value = "kxi"> Kings XI Punjab </option>
		<option value = "mi"> Mumbai Indians </option>
		<option value = "rps"> Rising Pune Supergiants </option>
		<option value = "rcb"> Royal Challengers Bangalore </option>
		<option value = "srh"> Sunrisers Hyderabad </option>
		</select>
		<br/>
		<br/>
	        <input type = "submit" class="btn btn-default" value = "Predict"> 
	</form>
	
	
	
	</body>


</html>
<?php
	$team1 = $_POST["team1"];
	$team2 = $_POST["team2"];
	
	$command = escapeshellcmd("sudo -u www-data /usr/bin/python /home/aki/Desktop/IPL/simulateLocal/sim-csv.py /home/aki/Desktop/IPL/simulateLocal/$team1.csv /home/aki/Desktop/IPL/simulateLocal/$team2.csv");
	
	
	$output = shell_exec($command);
echo $output;
	

?>
