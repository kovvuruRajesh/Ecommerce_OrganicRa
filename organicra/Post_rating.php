<?php
 header("Access-Control-Allow-Origin:*");
 $conn=mysqli_connect("127.0.0.1","root","","organicra");
 if(!$conn)
 {
     die("connection error".mysqli_connect_error());
 }
 $user_id=$product_id='';
 if(isset($_POST["email"])){
    $email=$_POST['email'];
    $sql = "SELECT *FROM user_details where email='$email'";
    $res=$conn->query($sql);
    $details=mysqli_fetch_assoc($res);
    if($res){
        $user_id=$details['user_id'];
    }
    $product_id=$_POST['product_id'];
    $rating=$_POST['rating'];
    $sql="INSERT INTO rating (Rating,product_id,user_id) VALUES('$rating',$product_id,'$user_id')";
    $res=$conn->query($sql);
    if($res){
        echo true;
    }
    else{
        echo false;
    }
 }
?>