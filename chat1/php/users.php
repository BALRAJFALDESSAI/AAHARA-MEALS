<?php
    session_start();
    include_once "config.php";
    $user_data = check_login($con);
    $outgoing_id = $_SESSION['unique_id'];
    $sql = "SELECT * FROM user WHERE NOT unique_id = {$outgoing_id} ORDER BY u_id DESC";
    $query = mysqli_query($conn, $sql);
    $output = "";
    if(mysqli_num_rows($query) == 0){
        $output .= "No users are available to chat";
    }elseif(mysqli_num_rows($query) > 0){
        include_once "data.php";
    }
    echo $output;
?>