<?php

defined ('DB_HOST') or define('DB_HOST' , 'localhost');
defined ('DB_USER') or define('DB_USER' , 'root');
defined ('DB_PASS') or define('DB_PASS' , '');
defined ('DB_NAME') or define('DB_NAME' , 'test');

$link = mysqli_connect(DB_HOST,DB_USER,DB_PASS,DB_NAME);
/*
$username = $_POST['form-register-username'];
$password = $_POST['form-register-password'];
$email = $_POST['form-register-email'];
$firstname = $_POST['form-register-first-name'];
$surname = $_POST['form-register-surname'];
$photo = $_POST['form-register-photo'];

if($link){
	echo "connected";
	$query = "INSERT INTO `sign_up_data` (`username`, `firstname`, `surname`, `email`, `password`, `imagepath`) VALUES ('".$username."', '".$firstname."', '".$surname."', '".$email."', '".$password."', '".$photo."')";
	$result = mysqli_query($link,$query);
}

else{
	die("ERROR" . mysqli_connect_error());
}

*/

$name = mysqli_real_escape_string($_FILES["image"]["name"]);
$image = mysqli_real_escape_string(file_get_contents($_FILES["image"]["tmp_name"]));

$query = "INSERT INTO `img` VALUES('".$name."','".$image."')";

$result = mysqli_query($link,$query);

if ($result) {
	echo "Inserted";
}
else{
	echo "Not Inserted";
}

?>