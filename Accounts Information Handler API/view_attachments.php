<?php

header("Content-Type: application/json");

include "connect.php";

if ($_SERVER["REQUEST_METHOD"] != "GET") {

    echo json_encode([
        "status" => false,
        "message" => "Only GET Request Allowed"
    ]);

    exit;
}

if (!isset($_GET["firebase_uid"]) || empty($_GET["firebase_uid"])) {

    echo json_encode([
        "status" => false,
        "message" => "Firebase UID Required"
    ]);

    exit;
}

if (!isset($_GET["item_id"]) || empty($_GET["item_id"])) {

    echo json_encode([
        "status" => false,
        "message" => "Item ID Required"
    ]);

    exit;
}

$firebase_uid = trim($_GET["firebase_uid"]);
$item_id = trim($_GET["item_id"]);

$stmt = $conn->prepare("
SELECT
    id,
    original_name,
    file_name,
    file_type,
    file_size,
    created_at
FROM krish_attachments
WHERE firebase_uid = ?
AND item_id = ?
ORDER BY id DESC
");

$stmt->bind_param("ss", $firebase_uid, $item_id);

$stmt->execute();

$result = $stmt->get_result();

$data = [];

while ($row = $result->fetch_assoc()) {

    $row["file_url"] =
        "https://prakrutitech.xyz/krish/uploads/" .
        $row["file_name"];

    $data[] = $row;
}

echo json_encode([
    "status" => true,
    "message" => "Success",
    "total" => count($data),
    "data" => $data
]);

$stmt->close();
$conn->close();

?>