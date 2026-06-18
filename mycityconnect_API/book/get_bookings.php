<?php
include "connect.php";

$result = $conn->query("
SELECT *
FROM krish_bookings
ORDER BY id DESC
");

$data = [];

while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}

echo json_encode([
    "status" => true,
    "data" => $data
]);
?>