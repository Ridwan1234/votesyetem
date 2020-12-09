<?php
	include 'includes/session.php';
	include 'includes/slugify.php';

	if(isset($_POST['next'])){
		if(count($_POST) == 1){
			$_SESSION['error'][] = 'Please vote atleast one candidate';
			header('location: home.php');
		}
		else{
			$_SESSION['post'] = $_POST;
			$sql = "SELECT * FROM positions WHERE description NOT LIKE '%sra%' ORDER BY priority ASC";
			$query = $conn->query($sql);
			$error = false;
			$sql_array = array();
			while($row = $query->fetch_assoc()){
				$position = slugify($row['description']);
				$pos_id = $row['id'];
				if(isset($_POST[$position])){
					if($row['max_vote'] > 1){
						if(count($_POST[$position]) > $row['max_vote']){
							$error = true;
							$_SESSION['error'][] = 'You can only choose '.$row['max_vote'].' candidates for '.$row['description'];
						}
						else{
							foreach($_POST[$position] as $key => $values){
								$sql_array[] = "INSERT INTO votes (voters_id, voters_dept, candidate_id, position_id) VALUES ('".$voter['id']."', '".$voter['dept']."', '$values', '$pos_id')";
							}
						}
					}
					else{
						$candidate = $_POST[$position];
						$sql_array[] = "INSERT INTO votes (voters_id, voters_dept, candidate_id, position_id) VALUES ('".$voter['id']."', '".$voter['dept']."', '$candidate', '$pos_id')";
					}
				}
			}

			if(!$error){
				foreach($sql_array as $sql_row){
					$conn->query($sql_row);
				}
				unset($_SESSION['post']);
				$_SESSION['success'] = 'Ballot Submitted';
			}
			header('location: reps.php');
		}
	}

	if(isset($_POST['vote'])){
		if(count($_POST) == 1){
			$_SESSION['error'][] = 'Please vote atleast one candidate';
			header('location: reps.php');
		}
		else{
			$_SESSION['post'] = $_POST;
			$sql = "SELECT * FROM positions  WHERE description LIKE '%$dept%' ORDER BY priority ASC";
			$query = $conn->query($sql);
			$error = false;
			$sql_array = array();
			while($row = $query->fetch_assoc()){
				$position = slugify($row['description']);
				$pos_id = $row['id'];
				if(isset($_POST[$position])){
					if($row['max_vote'] > 1){
						if(count($_POST[$position]) > $row['max_vote']){
							$error = true;
							$_SESSION['error'][] = 'You can only choose '.$row['max_vote'].' candidates for '.$row['description'];
						}
						else{
							foreach($_POST[$position] as $key => $values){
								$sql_array[] = "INSERT INTO votes (voters_id, voters_dept, candidate_id, position_id) VALUES ('".$voter['id']."', '".$voter['dept']."', '$values', '$pos_id')";
							}
						}
					}
					else{
						$candidate = $_POST[$position];
						$sql_array[] = "INSERT INTO votes (voters_id, voters_dept, candidate_id, position_id) VALUES ('".$voter['id']."', '".$voter['dept']."', '$candidate', '$pos_id')";
					}
				}
			}

			if(!$error){
				foreach($sql_array as $sql_row){
					$conn->query($sql_row);
				}
				unset($_SESSION['post']);
				$_SESSION['success'] = 'Ballot Submitted';
			}
			header('location: home.php');
		}
	}

?>
