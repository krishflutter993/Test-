<?php

// importing db connection
include 'connect.php';

// upload folder
$upload_path = 'uploads/';

// upload url
$protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') ? 'https://' : 'http://';
$upload_url = $protocol . $_SERVER['SERVER_NAME'] . dirname($_SERVER['REQUEST_URI']) . '/uploads/';

// getting data from request
$firebase_uid = $_REQUEST['firebase_uid'];
$item_id = $_REQUEST['item_id'];

// getting file info
$fileinfo = pathinfo($_FILES["file"]["name"]);

// getting extension
$extension = $fileinfo["extension"];

// random file name
$random = 'file_' . rand(1000,9999);

// original file name
$original_name = $_FILES["file"]["name"];

// file size
$file_size = $_FILES["file"]["size"];

// file name to save
$file_name = $random . '.' . $extension;

// file url
$file_url = $upload_url . $file_name;

// file path
$file_path = $upload_path . $file_name;

// upload file
move_uploaded_file($_FILES["file"]["tmp_name"], $file_path);

// insert into your SQL table
$sql = "INSERT INTO krish_attachments
(firebase_uid, item_id, original_name, file_name, file_type, file_size)
VALUES
(
'$firebase_uid',
'$item_id',
'$original_name',
'$file_name',
'$extension',
'$file_size'
)";

$ex = mysqli_query($con, $sql);

if ($ex) {
    echo json_encode([
        "status" => true,
        "message" => "File Uploaded Successfully",
        "file_url" => $file_url
    ]);
} else {
    echo json_encode([
        "status" => false,
        "message" => mysqli_error($con)
    ]);
}

// closing connection
mysqli_close($con);

?>