<?php
	// Include database configuration
	include_once 'config.php';

	// Create record
	function createRecord(){
		global $conn;

		$name = $_POST['name'];
		$email = $_POST['email'];
		$phone = $_POST['phone'];

		// Prepare statement
		$stmt = $conn->prepare("INSERT INTO users (name, email, phone) VALUES (?, ?, ?)");

		// Bind parameters
		$stmt->bind_param("sss", $name, $email, $phone);

		// Execute statement
		if($stmt->execute()){
			echo "Record created successfully";
		}else{
			echo "Error: " . $stmt->error;
		}
	}

	
	if (isset($_GET['id'])) {
			
		// Get the id of the user to delete
		$id = $_GET['id'];
		$action = $_GET['action'];

		if ($action == 'delete') {
		$sql = "DELETE FROM `items` WHERE `id`='$id'";
		$result = $conn->query($sql);
		if ($result == TRUE) {
			echo "Sikeres törlés!";
			
		}else{
			echo "Error:" . $sql . "<br>" . $conn->error;
		}
	}
	if ($action == 'update') {
		$sql = "DELETE FROM `items` WHERE `id`='$id'";
		$result = $conn->query($sql);
		if ($result == TRUE) {
			echo "Sikeres törlés!";
			
		}else{
			echo "Error:" . $sql . "<br>" . $conn->error;
		}
	}

}


?>
