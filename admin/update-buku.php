<?php
$namafolder = "gambar_buku/"; //tempat menyimpan file

include "../conn.php";

if (!empty($_FILES["nama_file"]["tmp_name"])) {
   $jenis_gambar = $_FILES['nama_file']['type'];
   $id = $_POST['id'];
   $judul = $_POST['judul'];
   $pengarang = $_POST['pengarang'];
   $th_terbit = $_POST['th_terbit'];
   $penerbit = $_POST['penerbit'];
   $isbn = $_POST['isbn'];
   $kategori = $_POST['kategori'];
   $jumlah_buku = $_POST['jumlah_buku'];
   $asal = $_POST['asal'];
   $tgl_input = $_POST['tgl_input'];
   $link_buku = $_POST['link_buku'];

   if ($jenis_gambar == "image/jpeg" || $jenis_gambar == "image/jpg" || $jenis_gambar == "image/gif" || $jenis_gambar == "image/x-png") {
      $gambar = $namafolder . basename($_FILES['nama_file']['name']);
      if (move_uploaded_file($_FILES['nama_file']['tmp_name'], $gambar)) {
         $sql = "UPDATE data_buku SET judul='$judul', pengarang='$pengarang', th_terbit='$th_terbit', penerbit='$penerbit', isbn='$isbn', kategori='$kategori', jumlah_buku='$jumlah_buku', asal='$asal', tgl_input='$tgl_input', gambar='$gambar', link_buku='$link_buku' WHERE id='$id'";
         $res = mysqli_query($conn, $sql) or die(mysqli_error($conn));
         echo "Gambar berhasil dikirim ke direktori" . $gambar;
         header('location:buku.php');
      } else {
         echo "<p>Gambar gagal dikirim</p>";
      }
   } else {
      echo "Jenis gambar yang anda kirim salah. Harus .jpg .gif .png";
   }
} else {
   echo "Anda belum memilih gambar";
}
