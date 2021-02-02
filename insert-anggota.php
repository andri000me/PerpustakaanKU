<?php

include "conn.php";
$no_induk = $_POST['no_induk'];
$nama = $_POST['nama'];
$username = $_POST['username'];
$password = $_POST['password'];
$jk = $_POST['jk'];
$kelas = $_POST['kelas'];
$ttl = $_POST['ttl'];
$alamat = $_POST['alamat'];

$sql = "INSERT INTO data_anggota(id,no_induk,nama,username,password,jk,kelas,ttl,alamat,foto) VALUES
            ('','$no_induk','$nama','$username','$password','$jk','$kelas','$ttl','$alamat','')";
$res = mysqli_query($conn, $sql) or die(mysqli_error($conn));
echo "Data anda telah berhasil diinput, Masukkan Username dan password anda di <span><a href='login.html'><b> Disini </b></a></span>";
echo "<h3><a href='login.html'>Klik Disini</a>  untuk Login </h3>";
