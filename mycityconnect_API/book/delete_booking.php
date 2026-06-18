<?php
include "connect.php";

if (!isset($_GET['id'])) {
    echo json_encode([
        "status" => false,
        "message" => "ID required"
    ]);
    exit;
}

$id = $_GET['id'];

$stmt = $conn->prepare("
DELETE FROM krish_bookings
WHERE id=?
");

$stmt->bind_param("i", $id);

if ($stmt->execute()) {
    echo json_encode([
        "status" => true,
        "message" => "Booking Deleted"
    ]);
} else {
    echo json_encode([
        "status" => false,
        "message" => "Delete Failed"
    ]);
}
?>