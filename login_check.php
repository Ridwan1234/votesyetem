<?php
	session_start();
	include 'includes/conn.php';

	if(isset($_POST['login'])){
		$voter = $_POST['voter'];
		$password = $_POST['password'];

		$elapse_time = parse_ini_file('admin/config.ini', FALSE, INI_SCANNER_RAW);
		$elapse = $elapse_time['time'];

		$actual_time = time();
		$formatedLastDay = strtotime($elapse);

		$sql = "SELECT * FROM voters WHERE voters_id = '$voter'";
		$query = $conn->query($sql);

		if($query->num_rows < 1){
			$_SESSION['error'] = 'Cannot find voter with the ID';
		}
		else{
			$row = $query->fetch_assoc();
			if(password_verify($password, $row['password'])){
				if ($actual_time >= $formatedLastDay) {
					$_SESSION['elapse'] = "Oops voting time has elapse";
				// $_SESSION['error'] = 'True'. date("H:i", $actual_time). date("H:i", $formatedLastDay);
			}
			$_SESSION['voter'] = $row['id'];
			}
			else{
				$_SESSION['error'] = 'Incorrect password';
			}
		}
	}
	else{
		$_SESSION['error'] = 'Input voter credentials first';
	}

	header('location: login.php');

?>
