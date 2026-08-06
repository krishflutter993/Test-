<?php

include 'connect.php';

$id = $_POST['id'];

$sql = "SELECT * FROM krish_attachments WHERE id='$id'";
$result = mysqli_query($con, $sql);

if(mysqli_num_rows($result)>0){

    $row = mysqli_fetch_assoc($result);

    $file = "uploads/" . $row['file_name'];

    if(file_exists($file)){
        unlink($file);
    }

    mysqli_query($con,"DELETE FROM krish_attachments WHERE id='$id'");

    echo json_encode([
        "status"=>true,
        "message"=>"Attachment Deleted Successfully"
    ]);

}else{

    echo json_encode([
        "status"=>false,
        "message"=>"Attachment Not Found"
    ]);

}

mysqli_close($con);

?>