<?php

    include('connect.php');

    $p_name = $_POST['p_name'];
    $p_price = $_POST['p_price'];
$p_des = $_POST['p_des'];
    if($p_name=="" && $p_price=="" && $p_des=="")
    {
        echo '0';
    }
    else
    {
        $sql = "insert into krish_products (p_name,P_price,p_des)values('$p_name','$p_price','$p_des')";
        mysqli_query($con,$sql);
    }

?>
