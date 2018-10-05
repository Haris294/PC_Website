<!DOCTYPE html>

<?php 
	
	include 'Connection.php';
	session_start();

 ?>
<html>
<head>
	<title></title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="css/style3.css">

<h2>Thank you..! <?php echo $_SESSION['username']; ?> </h2>

</body>
</html>