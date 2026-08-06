<?php

include 'connect.php';

$firebase_uid = $_GET['firebase_uid'];
$item_id = $_GET['item_id'];

$sql = "SELECT * FROM krish_attachments
        WHERE firebase_uid='$firebase_uid'
        AND item_id='$item_id'
        ORDER BY id DESC";

$result = mysqli_query($con, $sql);

$data = array();

while($row = mysqli_fetch_assoc($result)){

    $row['file_url'] = "uploads/" . $row['file_name'];

    $data[] = $row;
}

if(count($data) > 0){

    echo json_encode([
        "status" => true,
        "data" => $data
    ]);

}else{

    echo json_encode([
        "status" => false,
        "message" => "No Attachments Found"
    ]);

}

mysqli_close($con);

?>