<html>
	<head>
    <script type = "text/javascript" src = "resources/jquery.min.js"> </script>
		<script type = "text/javascript" src = "resources/bootstrap.min.js"> </script>
		<script src = "resources/script.js">  </script>
		<link rel="stylesheet" type="text/css" href="resources/bootstrap.min.css" > 
		<link rel="stylesheet" type="text/css" href="resources/w3.css" > 
		<link rel="stylesheet" type="text/css" href="resources/home.css" > 
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script type="text/javascript" src="script.js"></script>
    </head>
    <body>
		 <div class = "container"
		
		  	<span> <img src = "resources/images/images.png" height = "100px" style = "position:relative;left:500px"> </span>
		  	<ul class="nav nav-pills nav-justified">
			<li ><a href="index.html">Home</a></li>
			<li><a href="results.html">Results</a></li>
			<li class = "active"><a href="stats.html">Player Statistics</a></li>
			<li><a href="Stuff/welcome.html">Fantasy Teams</a></li>
			<li><button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button></li>
			</ul>
			
	 	</div>

</body>



</html>
<?php
	$name = $_GET["player"];
	if($name)
	{
        
        display($name);
    }
    else
    {
       
        echo("<script>alert('Enter Name of player to start searching');</script>");
    }
    function display($name)
    {
        $conn=new mysqli("localhost","root","","ipl");
        if($conn->connect_error)
        {
            die("Connection failed");
        }
        #echo "$name";
        $sql = "select * from batsmen where Player regexp '[a-z]*[A-Z]*$name\[a-z]*[A-Z]*'";
     	 $result=$conn->query($sql);
        
        if($result->num_rows>0)
        {
             echo("<script>createBatTable()</script>");
             while($row=$result->fetch_assoc())
             {
             		$pos = $row["Pos"];
             		$player = $row["Player"];
             		$mat = $row["Mat"];
             		$inns = $row["Inns"];
             		$no = $row["NO"];
             		$runs = $row["Runs"];
             		$hs = $row["HS"];
             		$avg = $row["Avg"];
             		$bf = $row["BF"];
             		$sr = $row["SR"];
             		$hundreds = $row["Hundreds"];
             		$fifties = $row["Fifties"];
             		$fours = $row["Fours"];
             		$sixes = $row["Sixes"];
             		$team = $row["Team"];
            }
        	echo("<script>insertBatData('$pos','$player','$mat','$inns','$no','$runs','$hs','$avg','$bf','$sr','$hundreds','$fifties','$fours','$sixes','$team');</script>");
        }
        else
        {
        	 $sql1 = "select * from bowlers where Player regexp '[a-z]*[A-Z]*$name\[a-z]*[A-Z]*'";
     	 	$result1=$conn->query($sql1);
             if($result1->num_rows>0)
	        {
	             echo("<script>createBowlTable()</script>");
	             while($row=$result1->fetch_assoc())
             	{
             		$pos = $row["Pos"];
             		$player = $row["Player"];
             		$mat = $row["Mat"];
             		$inns = $row["Inns"];
             		$overs = $row["Overs"];
             		$runs = $row["Runs"];
             		$wkts = $row["Wkts"];
             		$avg = $row["Avg"];
             		$econ = $row["Econ"];
             		$sr = $row["SR"];
             		$fourw = $row["FourW"];
             		$fivew = $row["FiveW"];
             		$team = $row["Team"];

             	}
      
        	    echo("<script>insertBowlData('$pos','$player','$mat','$inns','$overs','$runs','$wkts','$avg','$econ','$sr','$fourw','$fivew','$team');</script>");
        	}
            else
            	echo("<script>alert('No data found');</script>");
        
        }

     }







?>