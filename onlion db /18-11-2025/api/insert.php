<?php

include('connect.php');

// Upload folder (inside api/)
$upload_path = 'images/';

// Localhost URL (must be http)
$upload_url = 'http://' . $_SERVER['SERVER_NAME'] . "/api/" . $upload_path;

// Request fields
$p_name  = $_POST['p_name'];
$p_price = $_POST['p_price'];
$p_des   = $_POST['p_des'];

// File info
$fileinfo = pathinfo($_FILES["p_img"]["p_name"]);
$extension = $fileinfo["extension"];
$random = 'image_' . rand(1000, 9999);

// File name
$file_name = $random . '.' . $extension;

// Final save location
$server_path = $upload_path . $file_name;

// Final URL stored in DB
$file_url = $upload_url . $file_name;

// Move file to images/
if (move_uploaded_file($_FILES["p_img"]["tmp_name"], $server_path)) {

    // Insert into database
    $sql = "INSERT INTO krish_products (p_name, p_price, p_des, p_img)
            VALUES ('$p_name', '$p_price', '$p_des', '$file_url')";
    
    mysqli_query($con, $sql);

    echo "Uploaded Successfully";

} else {
    echo "Upload Failed";
}

mysqli_close($con);
?>
