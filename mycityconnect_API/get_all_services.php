<?php
include "connect.php";

$result = $conn->query("SELECT * FROM krish_services");

$data = [];

while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}

echo json_encode([
    "status" => true,
    "data" => $data
]);
?>