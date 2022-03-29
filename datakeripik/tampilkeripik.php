<?php
require_once('../koneksi.php');

if(isset($_GET['id_barang'])){

 $id_barang = $_GET['id_barang'];
 }
$result = array();
$query = mysqli_query($con,"SELECT * FROM tbl_barang ORDER BY id_barang DESC");
while($row = mysqli_fetch_assoc($query)){
  $result[] = $row;
}
echo json_encode(array('result'=>$result));
?>