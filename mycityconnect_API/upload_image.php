<?php
header('Content-Type: application/json');

if (isset($_FILES['image'])) {

    $file = $_FILES['image'];

    $fileName = time() . "_" . basename($file['name']);
    $uploadDir = __DIR__ . "/uploads/";

    if (!is_dir($uploadDir)) {
        mkdir($uploadDir, 0777, true);
    }

    $uploadPath = $uploadDir . $fileName;

    if (move_uploaded_file($file['tmp_name'], $uploadPath)) {

        $base_url = "http://" . $_SERVER['HTTP_HOST'] . "/api/";

        echo json_encode([
            "status" => true,
            "message" => "Image Uploaded",
            "image_url" => $base_url . "uploads/" . $fileName
        ]);

    } else {
        echo json_encode([
            "status" => false,
            "message" => "Upload Failed",
            "error" => $file['error']
        ]);
    }

} else {
    echo json_encode([
        "status" => false,
        "message" => "No Image Found"
    ]);
}
?>