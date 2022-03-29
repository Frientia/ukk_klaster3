<?php
if($_SERVER['REQUEST_METHOD']=='POST'){

 //Mendapatkan Nilai Variable
 $id_barang = $_POST['id_barang'];
 $jeniskeripik = $_POST['jeniskeripik'];
 $rasakeripik = $_POST['rasakeripik'];
 $harga = $_POST['harga'];

 //Pembuatan Syntax SQL
 $sql = "INSERT INTO tbl_barang (id_barang,jeniskeripik,rasakeripik,harga) VALUES
('$id_barang','$jeniskeripik','$rasakeripik','$harga')";

 //Import File Koneksi database
 require_once('../koneksi.php');

 //Eksekusi Query database
 if(mysqli_query($con,$sql)){
 echo 'Berhasil Menambahkan Keripik';
 }else{
 echo 'Gagal Menambahkan Keripik';
 }
 mysqli_close($con);
}
