<?php 
	include 'Connection.php'; 
	session_start();
	$session_id = session_id();
    $result = mysqli_query($conn, 'SELECT qid FROM questions');
	$qidList = [];

    while($row = mysqli_fetch_assoc($result)) {
       $qidList [$row["qid"]] = $row["qid"];
    }
    $oldQId = $qidList;
    if(session_id() == $_SESSION['sess_id']){
	    $keyList = array_rand($qidList,20); //number of question ex 2
    }
    foreach ($keyList as $key => $value) {
    	$questionIdList[] = $oldQId[$value];
    }
    $qestList = [];
    $arrQid = implode(',', $questionIdList);
    $qest = mysqli_query($conn, 'SELECT * FROM questions WHERE qid IN ('.$arrQid. ')');
    while($rowL = mysqli_fetch_assoc($qest)) {
       $qestfiled['qid'] = $rowL['qid'];
       $qestfiled['question'] = $rowL['question'];
       $qestfiled['correct_answer'] = $rowL['ans_id'];
	   $ans = mysqli_query($conn, 'SELECT * FROM answers WHERE q_id = '.$rowL['qid']);
	   $ansList = $ansData = [];
	   while($ansL = mysqli_fetch_assoc($ans)) {
	   		$ansData [$ansL['aid']]['answer'] = $ansL['answer'];
	       	$ansList = $ansData;
	   }
       $qestfiled['answers'] = $ansList;
       $qestList [$rowL['qid']] = $qestfiled;
    }
?>

<?php 
if(isset($_POST['submit'])) {
	$uId = $_SESSION['u_id'];
	foreach ($_POST as $resp => $listD) {
		if($resp != 'submit'){
			$quest_id = str_replace('answer','',$resp);
			$correct_answer = 0;
			if($listD == $qestList[$quest_id]['correct_answer']){
				$correct_answer = +1;
			}
			$query = "INSERT INTO user_answers (q_id, ans_id, user_id, correct_answer) 
	        VALUES('$quest_id','$listD','$uId','$correct_answer')";
	        $result=mysqli_query($conn, $query);
		}
	}

	header('location:thankyou.php');

    /*$query1 = "select * from user_answers where user_id = '$uId' AND correct_answer = '1' ";
    $result1 = mysqli_query($conn, $query1);

    $num = mysqli_num_rows($result1);

    if(count($num)){
    	echo "total"; print_r(count($num)); exit;
    }*/
}
?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="css/style3.css">
<div class="navbar"> 
	<h2> Welcome <?php echo $_SESSION['username']; ?> Best of Luck For The Test.</h2>
</div>

		<!-- <a href="logout.php"> Logout</a> -->

		<div style="font-weight: bold" id="quiz-time-left"></div>
		<script type="text/javascript">
		var total_seconds =60*30;
		var c_minutes = parseInt(total_seconds/60);
		var c_seconds = parseInt(total_seconds%60);
		function CheckTime(){
    	document.getElementById("quiz-time-left").innerHTML='Time Left : '+ c_minutes + ' minutes ' + c_seconds + ' seconds-' ;
    		if(total_seconds <=0){
        		document.getElementById("myBtn").click();
    	}else{
        	total_seconds = total_seconds -1;
        	c_minutes = parseInt(total_seconds/60);
        	c_seconds =parseInt(total_seconds%60);
        	setTimeout("CheckTime()",1000);
    }
}    

setTimeout("CheckTime()",1000);


</script>

	<div class="question">
	<?php
		$i = 1;
		echo '<form action="" method="post">';
		foreach ($qestList as $key => $value) {
			echo "<div>";
			echo $i. " : " .$value['question'];
			echo "<ul>";
			foreach ($value['answers'] as $k => $val) {
				echo '<input type="radio" id="a'.$k.'" value="'.$k.'" name="answer'.$value['qid'].'" />';
				echo '<label for="a'.$k.'">'.$val['answer'].'</label> <br>';
			}
			echo "</ul>";
			echo "</div></br>";

			$i = $i + 1;
		}
		echo '<div class="final">';
		echo '<input type="submit" name="submit" value="Submit" id="button" /></form>';
		echo '</div>';
		exit();
	?>
		
</div>

<script>
    document.onkeydown = function() {    
        switch (event.keyCode) { 
            case 116 : //F5 button
                event.returnValue = false;
                event.keyCode = 0;
                return false; 
            case 82 : //R button
                if (event.ctrlKey) { 
                    event.returnValue = false; 
                    event.keyCode = 0;  
                    return false; 
                } 
        }
    }
    </script>

</body>
</html>