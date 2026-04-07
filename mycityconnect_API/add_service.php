<?php
include "connect.php";

if (!isset($_POST['name'], $_POST['category'])) {
    echo json_encode(["status" => false, "message" => "Name and Category are required"]);
    exit;
}

$name = $_POST['name'];
$category = $_POST['category'];
$rating = $_POST['rating'] ?? '0';
$phone = $_POST['phone'] ?? '';
$description = $_POST['description'] ?? '';

// Handle image
$image = "";
if (isset($_FILES['image']) && $_FILES['image']['error'] == 0) {
    if (!is_dir("uploads")) {
        mkdir("uploads", 0777, true);
    }
    $file_name = time() . "_" . basename($_FILES["image"]["name"]);
    $target_file = "uploads/" . $file_name;
    if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
        $image = $target_file;
    }
} else if (isset($_POST['image'])) {
    $image = $_POST['image'];
}

$stmt = $conn->prepare("INSERT INTO krish_services (name, category, image, rating, phone, description) VALUES (?, ?, ?, ?, ?, ?)");
$stmt->bind_param("ssssss", $name, $category, $image, $rating, $phone, $description);

if ($stmt->execute()) {
    echo json_encode(["status" => true, "message" => "Service Added"]);
} else {
    echo json_encode(["status" => false, "message" => "Error: " . $conn->error]);
}
?>