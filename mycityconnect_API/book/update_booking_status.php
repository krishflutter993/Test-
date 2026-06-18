<?php
include "connect.php";

if (!isset($_POST['id']) || !isset($_POST['status'])) {
    echo json_encode([
        "status" => false,
        "message" => "ID and Status required"
    ]);
    exit;
}

$id = $_POST['id'];
$status = $_POST['status'];

$stmt = $conn->prepare("
UPDATE krish_bookings
SET status=?
WHERE id=?
");

$stmt->bind_param("si", $status, $id);

if ($stmt->execute()) {
    echo json_encode([
        "status" => true,
        "message" => "Status Updated"
    ]);
} else {
    echo json_encode([
        "status" => false,
        "message" => "Update Failed"
    ]);
}
?>