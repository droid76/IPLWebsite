<?php
    session_start();
     $conn=new mysqli("localhost","root","","ipl");
        if($conn->connect_error)
        {
            die("Connection failed");
        }

    $userName=$_POST['username']; 
    $passWord=$_POST['password']; 
    $query = "SELECT * FROM websiteusers WHERE userName = '$_POST[username]' AND pass = '$_POST[password]'";
   $result1=$conn->query($query);
    if($result1->num_rows==1)
    {
        $_SESSION['userName'] = $_POST['username'];
		$usr = $_POST['username'];
        header("Location: http://localhost/WT2Project/IPLWebsite/Stuff/welcome.html?usr=$usr");
	   
    }
    else 
    {
        echo "user name and password not found";
        // TODO - replace message with redirection to login page
        //  header("Location: securedpage.php");
    }
	
?>