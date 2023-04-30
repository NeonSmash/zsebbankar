<?php 
include "config.php"; 
if (isset($_GET['id'])) {
    $item_id = $_GET['id'];
    $sql = "DELETE FROM `items` WHERE `id`='$item_id'";
     $result = $conn->query($sql);
     if ($result == TRUE) {
        echo "Sikeres törlés!";
    }else{
        echo "Error:" . $sql . "<br>" . $conn->error;
    }
} 
?>