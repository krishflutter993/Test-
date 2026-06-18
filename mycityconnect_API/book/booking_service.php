<?php
include "connect.php";

if (
    !isset(
    $_POST['service_id'],
    $_POST['service_name'],
    $_POST['customer_name'],
    $_POST['phone'],
    $_POST['email'],
    $_POST['address'],
    $_POST['booking_date']
)
) {
    echo json_encode([
        "status" => false,
        "message" => "Required fields missing"
    ]);
    exit;
}

$service_id = $_POST['service_id'];
$service_name = $_POST['service_name'];
$customer_name = $_POST['customer_name'];
$phone = $_POST['phone'];
$email = $_POST['email'];
$address = $_POST['address'];
$booking_date = $_POST['booking_date'];
$booking_time = $_POST['booking_time'] ?? '';
$notes = $_POST['notes'] ?? '';

$stmt = $conn->prepare("
INSERT INTO krish_bookings
(
service_id,
service_name,
customer_name,
phone,
email,
address,
booking_date,
booking_time,
notes
)
VALUES
(?,?,?,?,?,?,?,?,?)
");

$stmt->bind_param(
    "issssssss",
    $service_id,
    $service_name,
    $customer_name,
    $phone,
    $email,
    $address,
    $booking_date,
    $booking_time,
    $notes
);

if ($stmt->execute()) {
    echo json_encode([
        "status" => true,
        "message" => "Booking Successful"
    ]);
} else {
    echo json_encode([
        "status" => false,
        "message" => $conn->error
    ]);
}
?>