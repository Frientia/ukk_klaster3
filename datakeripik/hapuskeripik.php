<?php
global $id_barang;
//Import File Koneksi Database
require_once('../koneksi.php');
if (isset($_GET['id_barang'])){
    $id_barang=$_GET['id_barang']; 
}
//Membuat SQL Query
$sql = "DELETE FROM tbl_barang WHERE id_barang='$id_barang';";
//Menghapus Nilai pada Database
if(mysqli_query($con,$sql)){
echo 'Berhasil Menghapus data Keripik';
}else{
echo 'Gagal Menghapus data Keripik';
}
mysqli_close($con);
?>