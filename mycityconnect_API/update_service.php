<?php
include "connect.php";

if (!isset($_POST['id'])) {
    echo json_encode(["status" => false, "message" => "ID is required"]);
    exit;
}

$id = $_POST['id'];

// Get existing data
$stmt = $conn->prepare("SELECT * FROM services WHERE id = ?");
$stmt->bind_param("i", $id);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows === 0) {
    echo json_encode(["status" => false, "message" => "Service not found"]);
    exit;
}

$existing = $result->fetch_assoc();

$name = $_POST['name'] ?? $existing['name'];
$category = $_POST['category'] ?? $existing['category'];
$rating = $_POST['rating'] ?? $existing['rating'];
$phone = $_POST['phone'] ?? $existing['phone'];
$description = $_POST['description'] ?? $existing['description'];

$image = $existing['image'];
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

$update_stmt = $conn->prepare("UPDATE krish_services SET name=?, category=?, image=?, rating=?, phone=?, description=? WHERE id=?");
$update_stmt->bind_param("ssssssi", $name, $category, $image, $rating, $phone, $description, $id);

if ($update_stmt->execute()) {
    echo json_encode(["status" => true, "message" => "Updated"]);
} else {
    echo json_encode(["status" => false, "message" => "Update failed"]);
}
?>