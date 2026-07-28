<?php

include "connect.php";

if ($_SERVER['REQUEST_METHOD'] != "POST") {
    echo json_encode([
        "status" => false,
        "message" => "Only POST Request Allowed"
    ]);
    exit;
}

// Check firebase_uid
if (!isset($_POST['firebase_uid']) || empty($_POST['firebase_uid'])) {
    echo json_encode([
        "status" => false,
        "message" => "Firebase UID Required"
    ]);
    exit;
}

// Check image
if (!isset($_FILES['image'])) {
    echo json_encode([
        "status" => false,
        "message" => "Image Required"
    ]);
    exit;
}

$firebase_uid = trim($_POST['firebase_uid']);

$uploadDir = "uploads/";

if (!is_dir($uploadDir)) {
    mkdir($uploadDir, 0777, true);
}

$image = $_FILES['image'];

$allowedTypes = ["jpg", "jpeg", "png", "gif", "webp"];

$extension = strtolower(pathinfo($image["name"], PATHINFO_EXTENSION));

if (!in_array($extension, $allowedTypes)) {
    echo json_encode([
        "status" => false,
        "message" => "Only JPG, JPEG, PNG, GIF, WEBP Allowed"
    ]);
    exit;
}

// Max 5MB
if ($image["size"] > 5 * 1024 * 1024) {
    echo json_encode([
        "status" => false,
        "message" => "Image size should be less than 5MB"
    ]);
    exit;
}

$fileName = uniqid("IMG_") . "." . $extension;

$target = $uploadDir . $fileName;

if (!move_uploaded_file($image["tmp_name"], $target)) {

    echo json_encode([
        "status" => false,
        "message" => "Image Upload Failed"
    ]);
    exit;
}

$stmt = $conn->prepare("
INSERT INTO krish_images
(firebase_uid, image_name)
VALUES (?, ?)
");

$stmt->bind_param("ss", $firebase_uid, $fileName);

if ($stmt->execute()) {

    echo json_encode([
        "status" => true,
        "message" => "Image Uploaded Successfully",
        "image_name" => $fileName
    ]);

} else {

    if (file_exists($target)) {
        unlink($target);
    }

    echo json_encode([
        "status" => false,
        "message" => "Database Error"
    ]);
}

$stmt->close();
$conn->close();

?>