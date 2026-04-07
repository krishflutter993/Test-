<?php
include "connect.php";

// check category parameter
if (!isset($_GET['category'])) {
    echo json_encode([
        "status" => false,
        "message" => "Category is required"
    ]);
    exit;
}

$category = $_GET['category'];

// secure query
$stmt = $conn->prepare("SELECT * FROM krish_services WHERE category = ?");
$stmt->bind_param("s", $category);
$stmt->execute();

$result = $stmt->get_result();

$data = [];

while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}

if (count($data) > 0) {
    echo json_encode([
        "status" => true,
        "data" => $data
    ]);
} else {
    echo json_encode([
        "status" => false,
        "message" => "No services found"
    ]);
}
?>