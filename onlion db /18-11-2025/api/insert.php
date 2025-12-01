<?php

include('connect.php');

// Upload folder
$upload_path = 'images/';

// Generate upload URL
$upload_url = 'https://' . $_SERVER['SERVER_NAME'] . "/api/" . $upload_path;

// Request fields
$p_name  = $_POST['p_name'];
$p_price = $_POST['p_price'];
$p_des   = $_POST['p_des'];

// File information
$fileinfo = pathinfo($_FILES["p_img"]["p_name"]);

// File extension
$extension = $fileinfo["extension"];

// Random file name
$random = 'image_' . rand(1000, 9999);

// URL stored in database
$file_url = $upload_url . $random . '.' . $extension;

// Server upload path
$file_path = $upload_path . $random . '.' . $extension;

// Upload file
move_uploaded_file($_FILES["p_img"]["tmp_name"], $file_path);

// SQL INSERT
$sql = "INSERT INTO krish_products(p_name, p_price, p_des, p_img) 
        VALUES ('$p_name', '$p_price', '$p_des', '$file_url')";

mysqli_query($con, $sql);

// Close connection
mysqli_close($con);

?>
