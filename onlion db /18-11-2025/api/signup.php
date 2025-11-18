<?php

    include('connect.php');

   $name = $_POST['name'];
   $email = $_POST['email'];
   $pass = $_POST['password'];
$mobile = $_POST['mobile'];
    if($name=="" && $email=="" && $pass== "" && $mobile=="")
    {
        echo '0';
    }
    else
    {
        $sql = "insert into krish_user (email,password,name,mobile)values('$email','$pass','$name','$mobile')";
        mysqli_query($con,$sql);
    }

?>

