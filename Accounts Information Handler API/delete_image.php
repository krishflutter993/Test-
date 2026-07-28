<?php

include "connect.php";

if ($_SERVER['REQUEST_METHOD'] != "POST") {
    echo json_encode([
        "status" => false,
        "message" => "Only POST Request Allowed"
    ]);
    exit;
}

if (!isset($_POST['id']) || empty($_POST['id'])) {
    echo json_encode([
        "status" => false,
        "message" => "Image ID Required"
    ]);
    exit;
}

if (!isset($_POST['firebase_uid']) || empty($_POST['firebase_uid'])) {
    echo json_encode([
        "status" => false,
        "message" => "Firebase UID Required"
    ]);
    exit;
}

$id = intval($_POST['id']);
$firebase_uid = trim($_POST['firebase_uid']);

// Check image belongs to this user
$stmt = $conn->prepare("
SELECT image_name
FROM krish_images
WHERE id = ? AND firebase_uid = ?
");

$stmt->bind_param("is", $id, $firebase_uid);
$stmt->execute();

$result = $stmt->get_result();

if ($result->num_rows == 0) {

    echo json_encode([
        "status" => false,
        "message" => "Image Not Found"
    ]);

    exit;
}

$row = $result->fetch_assoc();

$file = "uploads/" . $row["image_name"];

// Delete image from folder
if (file_exists($file)) {
    unlink($file);
}

// Delete database record
$stmt = $conn->prepare("
DELETE FROM krish_images
WHERE id = ? AND firebase_uid = ?
");

$stmt->bind_param("is", $id, $firebase_uid);

if ($stmt->execute()) {

    echo json_encode([
        "status" => true,
        "message" => "Image Deleted Successfully"
    ]);

} else {

    echo json_encode([
        "status" => false,
        "message" => "Delete Failed"
    ]);
}

$stmt->close();
$conn->close();

?>