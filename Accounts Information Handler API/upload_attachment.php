<?php

header("Content-Type: application/json");

include "connect.php";

if ($_SERVER["REQUEST_METHOD"] != "POST") {

    echo json_encode([
        "status"=>false,
        "message"=>"Only POST Request Allowed"
    ]);

    exit;
}

if(!isset($_POST["firebase_uid"])){

    echo json_encode([
        "status"=>false,
        "message"=>"Firebase UID Required"
    ]);

    exit;
}

if(!isset($_POST["item_id"])){

    echo json_encode([
        "status"=>false,
        "message"=>"Item ID Required"
    ]);

    exit;
}

if(!isset($_FILES["file"])){

    echo json_encode([
        "status"=>false,
        "message"=>"File Required"
    ]);

    exit;
}

$firebase_uid=trim($_POST["firebase_uid"]);

$item_id=trim($_POST["item_id"]);

$file=$_FILES["file"];

$allowedExtensions=[
"jpg",
"jpeg",
"png",
"gif",
"webp",
"pdf",
"doc",
"docx",
"xls",
"xlsx",
"ppt",
"pptx",
"txt",
"zip"
];

$extension=strtolower(pathinfo($file["name"],PATHINFO_EXTENSION));

if(!in_array($extension,$allowedExtensions)){

    echo json_encode([
        "status"=>false,
        "message"=>"File Type Not Allowed"
    ]);

    exit;
}

$maxSize=20*1024*1024;

if($file["size"]>$maxSize){

    echo json_encode([
        "status"=>false,
        "message"=>"Maximum File Size is 20MB"
    ]);

    exit;
}

$uploadDir="uploads/";

if(!is_dir($uploadDir)){

    mkdir($uploadDir,0775,true);
}

$newFileName=uniqid()."_".time().".".$extension;

$target=$uploadDir.$newFileName;

if(!move_uploaded_file($file["tmp_name"],$target)){

    echo json_encode([
        "status"=>false,
        "message"=>"Upload Failed"
    ]);

    exit;
}

$fileType=$extension;

$stmt=$conn->prepare("

INSERT INTO krish_attachments

(firebase_uid,item_id,original_name,file_name,file_type,file_size)

VALUES

(?,?,?,?,?,?)

");

$stmt->bind_param(

"sssssi",

$firebase_uid,

$item_id,

$file["name"],

$newFileName,

$fileType,

$file["size"]

);

if($stmt->execute()){

    echo json_encode([

        "status"=>true,

        "message"=>"Attachment Uploaded Successfully",

        "data"=>[

            "id"=>$conn->insert_id,

            "file_name"=>$newFileName,

            "original_name"=>$file["name"],

            "file_type"=>$fileType,

            "file_size"=>$file["size"],

            "file_url"=>"https://prakrutitech.xyz/krish/uploads/".$newFileName

        ]

    ]);

}else{

    if(file_exists($target)){

        unlink($target);

    }

    echo json_encode([

        "status"=>false,

        "message"=>"Database Error"

    ]);
}

$stmt->close();

$conn->close();

?>