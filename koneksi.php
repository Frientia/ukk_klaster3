<?php
$server="localhost";
$user="root";
$password="";
$db="keripik";
$con = mysqli_connect($server,$user,$password,$db);
if (mysqli_connect_errno()){
    echo "Gagal terhubung dataBase:".mysqli_connect_error();
}
