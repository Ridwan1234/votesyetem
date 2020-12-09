<?php
	include 'includes/conn.php';
	session_start();

	if(isset($_SESSION['voter'])){
		$sql = "SELECT * FROM voters WHERE id = '".$_SESSION['voter']."'";
		$query = $conn->query($sql);
		$voter = $query->fetch_assoc();

		$voter_dept = $voter['dept'];
		$dept_query = $conn->query("SELECT * FROM departments WHERE id = '$voter_dept'");
		$dept_row = $dept_query->fetch_assoc();
		$dept = $dept_row['name'];
	}
	else{
		header('location: index.php');
		exit();
	}

?>
