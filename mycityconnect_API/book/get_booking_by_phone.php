<?php
include "connect.php";

if (!isset($_GET['phone'])) {
    echo json_encode([
        "status" => false,
        "message" => "Phone required"
    ]);
    exit;
}

$phone = $_GET['phone'];

$stmt = $conn->prepare("
SELECT *
FROM krish_bookings
WHERE phone=?
ORDER BY id DESC
");

$stmt->bind_param("s", $phone);
$stmt->execute();

$result = $stmt->get_result();

$data = [];

while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}

echo json_encode([
    "status" => true,
    "data" => $data
]);
?>