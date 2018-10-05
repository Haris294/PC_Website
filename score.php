<?php 

	include 'Connection.php';
	session_start();
	 /*$query1 = "select * from user_answers where user_id = '$uId' AND correct_answer = '1' ";
    $result1 = mysqli_query($conn, $query1);

    $num = mysqli_num_rows($result1);

    if(count($num)){
    	echo "total"; print_r(count($num)); exit;
    }*/

    $uId = $_SESSION['u_id'];
	$query = "SELECT SUM(correct_answer) as score,user_id FROM `user_answers` group by user_id";
	//$query = "SELECT count(*) as countData FROM user_answers where user_id = '$uId' AND correct_answer = '1' ";
	$result = mysqli_query($conn,$query);

	/*while ($row = mysqli_fetch_assoc("SELECT count(*) as countData FROM user_answers where user_id = '$uId' AND correct_answer = '1' ")) {
		echo "user_id=".$user_id. print_r($row['countData']);exit;
	}*/

	while($row = mysqli_fetch_array($result)) {
//		echo "total = "; print_r($row['countData']);exit;
		echo 'score = '.$row['score']." userid = ".$row['user_id'].'<br>';
   	}
   


 ?>

