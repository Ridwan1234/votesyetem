<?php
	include 'includes/session.php';

	$return = 'home.php';
	if(isset($_GET['return'])){
		$return = $_GET['return'];
	}

	if(isset($_POST['save'])){
		$title = $_POST['title'];
		$time = $_POST['time'];
		$date = strtotime($_POST['date']);
		$new_date = date("Y-m-d", $date);

		$file = 'config.ini';
		$content = 'election_title = '.$title;
		$content .= "\ndate = ". $new_date;
		$content .= "\ntime = ". $time;

		//
		file_put_contents($file, $content);
		$_SESSION['success'] = "Election title and date updated successfully";
		//
		// function config_read($config_file) {
    // return parse_ini_file($config_file, true);
// }

// function config_set($config_data, $section, $key, $value) {
// 		$config_data[$section][$key] = $value;
// }

// Serializes inifile config data back to disk.
// function config_write($config_data, $config_file) {
//     $new_content = '';
//     foreach ($config_data as $section => $section_content) {
//         $section_content = array_map(function($value, $key) {
//             return "$key=$value";
//         }, array_values($section_content), array_keys($section_content));
//         $section_content = implode("\n", $section_content);
//         $new_content .= "[$section]\n$section_content\n";
//     }
//     file_put_contents($config_file, $new_content);
// // }

		// $config_data = config_read('config.ini');
		// $file = 'config.ini';
// Set multiple values
// config_set($config_data, "election_title", "value", "electioning");
// config_set($config_data, "elapse", "value", "locate");
// Save
// config_write($config_data, $config_file);

		// $_SESSION['success'] = 'Election title updated successfully';

	}
	else{
		$_SESSION['error'] = "Fill up config form first";
	}

	header('location: '.$return);

?>
