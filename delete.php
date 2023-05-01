<?php
	// Include database configuration
	include_once 'config.php';

	if (isset($_GET['id'])) {
			
		// Get the id of the user to delete
		$id = $_GET['id'];
		$action = $_GET['action'];
		$table = $_GET['table'];

		if ($action == 'delete') {
		$sql = "DELETE FROM $table WHERE `id`='$id'";
		$result = $conn->query($sql);
		if ($result == TRUE) {
			echo "Sikeres törlés!";
			
		}else{
			echo "Error:" . $sql . "<br>" . $conn->error;
		}
	}


}


?>
