    <!-- <?php
    global $nis;
    global $namasiswa;
    global $jk;
    global $alamat;
   
if($_SERVER['REQUEST_METHOD']=='POST'){
    //MEndapatkan Nilai Dari Variable
    $nis = $_POST['nis'];
    $namasiswa = $_POST['namasiswa'];
    $jk = $_POST['jk'];
    $alamat = $_POST['alamat'];
}

    //import file koneksi database
    require_once('../koneksi.php');

    //Membuat SQL Query
    $sql = "UPDATE siswa SET 
        namasiswa = '$namasiswa',
        jk = '$jk',
        alamat= '$alamat' 
        WHERE nis = '$nis';";

    //Meng-update Database
    if(mysqli_query($con,$sql)){
    echo 'Berhasil Update Data Siswa';
    }else{
    echo 'Gagal Update Data Siswa';
    }
    mysqli_close($con);
    
    ?> -->
