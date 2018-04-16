<?php
session_start();

	include 'connect.php';
	$myusername = $_POST['username'];
	$mypassword = $_POST['password'];
	
	$query = "select * from login where id=\"$myusername\"";
	$result = mysqli_query($dbh,$query) 
				or die ('Error executing the query'.mysqli_error($dbh));
	
	if(mysqli_num_rows($result) != 1)
		die("Wrong credentials!");

	$row = mysqli_fetch_array($result);
// $row['id'] $row['password'] $row['section'] $row[voted']


	if($row['password'] == $mypassword)
	{
		$_SESSION['sec'] = $row['section'];
		header('Location:vote.html');
		//echo('Successfully logged in');
	}
	else
		header('Location:login_error.html');
?>





