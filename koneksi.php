<?php

// Membuat koneksi untuk menyambukan ke Database
$server = "localhost";
$user = "root";
$password = "";
$nmdatabase = "newspaper";

$conn = mysqli_connect($server, $user, $password, $nmdatabase) or die ("ada yang salah $php_errormsg");

// Untuk memilih database newspaper
$db = mysqli_select_db($conn, $nmdatabase) or die ("terjadi kesalahan :".mysqli_error($conn));


if($db){
    echo "<script>console.log('Berhasil menghubungkan database')</script>";
} else {
    echo "<script>console.log('Gagal menghubungkan database')</script>";
}

?>