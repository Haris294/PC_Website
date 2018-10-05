<?php 

  include 'Connection.php'; 
  session_start();

  if(isset($_POST['login'])){


    $username = $_POST["username"];
    $password = $_POST["password"];

  	
  	$query = "select * from users where username = '$username' AND password = '$password'";
  	$result=mysqli_query($conn, $query);

    if(count(mysqli_num_rows($result))){
      $_SESSION['username'] = $username;
      while($user = mysqli_fetch_assoc($result)) {
        $_SESSION['u_id'] = $user['uid'];
      }
      $_SESSION['sess_id'] = session_id();

      header('location:home.php');
    }else{
      header('location:login.php');
    }
			
			/*if(!$result){
    			echo "Error please check the field";
    		}else{//header('location:login.php');
    			echo "THANKS FOR REGISTRATION...";
    			}*/

        
    }

?>