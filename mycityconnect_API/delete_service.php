<?php
include "connect.php";

// ID check
if (!isset($_GET['id'])) {
    echo json_encode([
        "status" => false,
        "message" => "ID is required"
    ]);
    exit;
}

$id = $_GET['id'];

// Prepare statement (safe)
$stmt = $conn->prepare("DELETE FROM krish_services WHERE id = ?");
$stmt->bind_param("i", $id);

if ($stmt->execute()) {
    if ($stmt->affected_rows > 0) {
        echo json_encode([
            "status" => true,
            "message" => "Service deleted successfully"
        ]);
    } else {
        echo json_encode([
            "status" => false,
            "message" => "Service not found"
        ]);
    }
} else {
    echo json_encode([
        "status" => false,
        "message" => "Delete failed"
    ]);
}
?>