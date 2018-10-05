<?php 

  include 'Connection.php'; 
  session_start();

  if(isset($_POST['register'])){


    $username = $_POST["username"];
    $roll_no = $_POST["roll_no"]; 
    $email = $_POST["email"];
    $password = $_POST["password"];
    $phone_no = $_POST["phone_no"];
    $languages = $_POST["languages"];
    $reason = $_POST["reason"];

  	
    /*$query1 = "select * from users where username = '$username'";
    $result1 = mysqli_query($conn, $query1);

    $num = mysqli_num_rows($result1);

    if(count($num)){
      echo "All Ready Registerd please Enter Another username";
      header ('location:register.php');
    }else{*/
      $query = "INSERT INTO users (username, roll_no, email, password, phone_no, languages, reason) 
        VALUES('$username','$roll_no','$email','$password','$phone_no','$languages','$reason')";
        $result=mysqli_query($conn, $query);

        if(!$result){
          echo "Error please check the field";
        }else{
          header ('location:login.php');

          echo "THANKS FOR REGISTRATION...";
          }
    

  		/*$query = "INSERT INTO users (username, roll_no, email, password, phone_no, languages, reason) 
  			VALUES('$username','$roll_no','$email','$password','$phone_no','$languages','$reason')";
  			$result=mysqli_query($conn, $query);*/
      }
        
    //}
  //mysqli_close($conn);

?>