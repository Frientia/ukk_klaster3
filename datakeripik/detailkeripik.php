<?php
global $id_barang;

//koneksi database
require_once('../koneksi.php');
if (isset($_GET['id_barang'])){
    $id_barang=$_GET['id_barang'];
}
$result=array();
$sql="SELECT * FROM tbl_barang WHERE id_barang='$id_barang';";
$query=mysqli_query($con,$sql);
while($row=mysqli_fetch_assoc($query)){
    $result[]=$row;
}
echo json_encode(array('result'=>$result));
?>