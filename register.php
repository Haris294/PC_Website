
<!DOCTYPE html>

<html>
<head>
	<title>Welcome To the Prograamers club</title>
</head>

<body background="image1.jpg">
<link rel="stylesheet" type="text/css" href="css/style2.css">
<div class="header">
	<h1>Welcome to The Programmers Club</h1>
</div>

<form action="registration.php" method="post" id="registration">
	<table>
		<tr>
			<td>Username:</td>
			<td><input type="text" name="username" placeholder="Enter Your Full Name." required="required"></td>
		</tr>
		<tr>
			<td>Roll_No:</td>
			<td><input type="text" name="roll_no" placeholder="Enter Your roll_no." required="required"></td>
		</tr>
		<tr>
			<td>Email:</td>
			<td><input type="Email" name="email" placeholder="Enter Your Email_id." required="required"></td>
		</tr>
		<tr>
			<td>Password:</td>
			<td><input type="Password" name="password" placeholder="Enter Your Password." required="required"></td>
		</tr>
		<tr>
			<td>Phone No:</td>
			<td><input type="text" name="phone_no" placeholder="Enter Your Phone no." required="required"></td>
		</tr>
		<tr>
			<td>Programming Languages Known:</td>
			<td><textarea name="languages" placeholder="Enter Your Programming skills & Programmming Language." required="required"></textarea></td>
		</tr>
		<tr>
			<td>Reason:</td>
			<td><textarea name="reason" placeholder="Enter the Reason To come in Programmers Club." required="required"></textarea></td>
		</tr>
		<tr>
			<td><p>
                    Already a member?<a href="login.php">Sign in</a>
                </p></td>
			<td> <input type="submit" name="register" value="Register"> </td>
			
		</tr>


	</table>
</form>

</body>
</html>