<?php
require_once('./includes/functions.inc.php');

$requested = explode('/', $_SERVER['REQUEST_URI']);

switch ($_SERVER['REQUEST_METHOD']) {
    case "POST":
		$postedJSON = file_get_contents('php://input');
		$decodedInput = json_decode($postedJSON, TRUE); //convert JSON to array
		// show posted data for debugging
		print_r($decodedInput);
		// some more input checks go here...
		// add student to database
		insert_student($decodedInput['student_name'],$decodedInput['student_number'],$decodedInput['student_age']);
        break;
    case "GET":
		if($requested[sizeof($requested)-1] == "students"){
			echo get_students();
		}else{
			echo get_student($requested[sizeof($requested)-1]);
		}
        break;
}

?>
