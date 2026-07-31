<?php

header("Content-Type: application/json");

include "connect.php";

if ($_SERVER["REQUEST_METHOD"] != "POST") {

    echo json_encode([
        "status" => false,
        "message" => "Only POST Request Allowed"
    ]);

    exit;
}

if (!isset($_POST["attachment_id"]) || empty($_POST["attachment_id"])) {

    echo json_encode([
        "status" => false,
        "message" => "Attachment ID Required"
    ]);

    exit;
}

if (!isset($_POST["firebase_uid"]) || empty($_POST["firebase_uid"])) {

    echo json_encode([
        "status" => false,
        "message" => "Firebase UID Required"
    ]);

    exit;
}

$attachment_id = intval($_POST["attachment_id"]);
$firebase_uid = trim($_POST["firebase_uid"]);

// Check attachment belongs to this user
$stmt = $conn->prepare("
SELECT file_name
FROM krish_attachments
WHERE id = ?
AND firebase_uid = ?
");

$stmt->bind_param("is", $attachment_id, $firebase_uid);

$stmt->execute();

$result = $stmt->get_result();

if ($result->num_rows == 0) {

    echo json_encode([
        "status" => false,
        "message" => "Attachment Not Found"
    ]);

    exit;
}

$row = $result->fetch_assoc();

$file = "uploads/" . $row["file_name"];

// Delete file from uploads folder
if (file_exists($file)) {
    unlink($file);
}

// Delete database record
$stmt = $conn->prepare("
DELETE FROM krish_attachments
WHERE id = ?
AND firebase_uid = ?
");

$stmt->bind_param("is", $attachment_id, $firebase_uid);

if ($stmt->execute()) {

    echo json_encode([
        "status" => true,
        "message" => "Attachment Deleted Successfully"
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