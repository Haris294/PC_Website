
<!DOCTYPE html>

<html>
<head>
	<title>Welcome To the Prograamers club</title>
</head>
<body background="image1.jpg">
<link rel="stylesheet" type="text/css" href="css/style.css">
<div class="header">
	<h1>Welcome to The Programmers Club</h1>
</div>

<form action="validation.php" method="post" id="login">
<div class="loginbox">
<img src="avatar.png" class="avatar">
	<table>
		<tr>
			<td>Username:</td>
			<td><input type="text" name="username" placeholder="Enter Your Full Name." required="required"></td>
		</tr>
		<tr>
			<td>Password:</td>
			<td><input type="Password" name="password" placeholder="Enter Your Password." required="required"></td>
		</tr>
		<tr>
			<td><p>
                    Not yet a member? <a href="register.php">Sign up</a>
                </p></td>
			<td> <input type="submit" name="login" value="Login"> </td>
			
		</tr>


	</table>
	</div>
</form>

</body>
</html>