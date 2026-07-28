<?php

include "connect.php";

if ($_SERVER['REQUEST_METHOD'] != "GET") {
    echo json_encode([
        "status" => false,
        "message" => "Only GET Request Allowed"
    ]);
    exit;
}

if (!isset($_GET['firebase_uid']) || empty($_GET['firebase_uid'])) {
    echo json_encode([
        "status" => false,
        "message" => "Firebase UID Required"
    ]);
    exit;
}

$firebase_uid = trim($_GET['firebase_uid']);

$stmt = $conn->prepare("
SELECT *
FROM krish_images
WHERE firebase_uid=?
ORDER BY id DESC
");

$stmt->bind_param("s", $firebase_uid);

$stmt->execute();

$result = $stmt->get_result();

$data = [];

while ($row = $result->fetch_assoc()) {

    $row["image_url"] =
        "http://localhost/mycityconnect/api/uploads/" .
        $row["image_name"];

    $data[] = $row;
}

echo json_encode([
    "status" => true,
    "message" => "Success",
    "data" => $data
]);

$stmt->close();
$conn->close();

?>