<?php

    include('connect.php');

    $sql ="select * from krish_user";
    $response = array();
    $res = mysqli_query($con,$sql);

    while($data = mysqli_fetch_array($res))
    {
      
          $row["id"] = $data["id"];
          $row["name"] = $data["name"];
          $row["email"] = $data["email"];
        

        array_push($response,$row);


    }
    echo json_encode($response);



?>

