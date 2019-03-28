<?php

function get_students() {
	// this function gets all student records
	require('connection.php');
	$rows = array();
	$sql = $connection->prepare("SELECT * FROM student ORDER BY student_name");
	$sql->execute();
	$result = $sql->get_result();
	if($result->num_rows === 0) exit('No results');
	while($row = $result->fetch_assoc()) {
		$rows[] = $row;
	}
	$sql->close();
	
	return json_encode($rows);
}

function get_student($id){
	// this function retrieves a single student record
	require('connection.php');
	$rows = array();
	$sql = $connection->prepare("SELECT * FROM student WHERE id = ? LIMIT 1");
	$sql->bind_param("i", $id);
	$sql->execute();
	$result = $sql->get_result();
	if($result->num_rows === 0) exit('No results');
	while($row = $result->fetch_assoc()) {
		$rows[] = $row;
	}
	$sql->close();
	
	return json_encode($rows);
}

function insert_student($studentName, $studentNumber, $studentAge){
	// this function adds a student to the database
	// checking if student already exits has not been added but would normaly be done first
	require('connection.php');
	$sql = $connection->prepare("INSERT INTO student (student_name, student_number, student_age) VALUES (?, ?, ?)");
	$sql->bind_param("sii", $studentName, $studentNumber, $studentAge);
	$sql->execute();
	if($sql->affected_rows === 0) exit('No rows updated');
	$sql->close();
}


?>
