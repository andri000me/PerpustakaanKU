-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2021 at 10:31 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpuspro`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(2) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(15) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `gambar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `fullname`, `gambar`) VALUES
(1, 'operator', 'operator', 'Petugas', 'gambar_admin/avatar5.png'),
(2, 'mihrawardana', 'mihrawardana', 'Mihra Wardana', 'gambar_admin/foto.jpg'),
(3, 'admin', 'admin', 'Admin PerpustakaanKU', 'gambar_admin/ssamson.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `data_anggota`
--

CREATE TABLE `data_anggota` (
  `id` int(4) NOT NULL,
  `no_induk` varchar(100) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(25) NOT NULL,
  `jk` varchar(2) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `ttl` varchar(100) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `foto` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_anggota`
--

INSERT INTO `data_anggota` (`id`, `no_induk`, `nama`, `username`, `password`, `jk`, `kelas`, `ttl`, `alamat`, `foto`) VALUES
(1, 'mihrawardana@gmail.com', 'Mihra Wardana', 'mihrawardana', 'mihrawardana', 'P', '19', 'Kendari, 29 10 2001', 'Ranomeeto', 'gambar_anggota/fotoo.jpg'),
(2, 'anggota@gmail.com', 'anggota', 'anggota', 'anggota', 'P', '10', 'Konawe, 12 09 1999', 'Semarang', 'gambar_anggota/IMG-20191104-WA0043.jpg'),
(20, 'user@gmail.com', 'user', 'user', 'user', 'L', '39', 'Mandonga, 28 03 1887', 'Mandonga', ''),
(21, 'avwingsb@gmail.com', 'Dwi Hardiansyah', 'awing', '12345678', 'L', '18', 'unaaha, 2001-05-05', 'kendari', '');

-- --------------------------------------------------------

--
-- Table structure for table `data_buku`
--

CREATE TABLE `data_buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `pengarang` varchar(250) NOT NULL,
  `th_terbit` varchar(4) NOT NULL,
  `penerbit` varchar(250) NOT NULL,
  `isbn` varchar(25) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `jumlah_buku` int(2) NOT NULL,
  `asal` varchar(50) NOT NULL,
  `tgl_input` varchar(75) NOT NULL,
  `gambar` text NOT NULL,
  `link_buku` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_buku`
--

INSERT INTO `data_buku` (`id`, `judul`, `pengarang`, `th_terbit`, `penerbit`, `isbn`, `kategori`, `jumlah_buku`, `asal`, `tgl_input`, `gambar`, `link_buku`) VALUES
(1, 'Pemrograman Web Hosting', 'Mihra Wardana', '2019', '-', '-', 'Laporan', 61, 'Koleksi PerpustakaanKU', '2021/01/31', 'gambar_buku/ssamson.jpg', 'https://drive.google.com/file/d/1F7IttU4rMNuCvuQlhAGGAGFDQ76LAvLg/view?usp=sharing'),
(8, 'Menjadi Perempuan Terdidik dan Feminisme', 'Dr. Wiyatmi, M.hum', '2013', 'UNY Press', '978-602-7981-02-7', 'Novel', 325, 'Koleksi PerpustakaanKU', '2021/02/01', 'gambar_buku/18ea2ec6-87a6-4af2-ac1f-be6d89dac9c1.jpg', 'https://drive.google.com/file/d/1FtanKL1PhyffVYM0WHjKRUmy_AWeiEvU/view?usp=sharing'),
(9, 'Perempuan di titik nol', 'Nawal el - Saadawi', '1989', 'Yayasan Pustaka Obor Indonesi', '978-979-461-867-7', 'Novel', 201, 'Koleksi PerpustakaanKU', '2021/02/01', 'gambar_buku/54b21d38-348b-4a8a-890f-7eb267d692be.jpg', 'https://drive.google.com/file/d/1Fr5ajsbd_f2Tcg4mzd2gF3PXk5-30T4q/view?usp=sharing'),
(10, 'Matinya Socrates', 'Plato', '2015', 'Narasi', '(10)979-16844-8 / (13) 97', 'Kisah', 307, 'Koleksi PerpustakaanKU', '2021/02/01', 'gambar_buku/c7001ce9-e0dc-4e86-8581-3a814bd91c23.jpg', 'https://drive.google.com/file/d/1CK0jW2bmO03-JUNRjR4YdCoUuNDGi8hD/view?usp=sharing'),
(11, 'filsafat perselingkuhan ', 'Reza A.A Wattimena', '2010', 'PT Evolireta', '978-602-8861-76-2', 'Filsafat', 160, 'Koleksi PerpustakaanKU', '2021/02/01', 'gambar_buku/641d9600-0a0f-43ab-8d74-fee32cbe5dd3.jpg', 'https://drive.google.com/file/d/1Cm9dvFPs_xG6R7odecyn35UXY5sKXp0r/view?usp=sharing'),
(12, 'Perempuan Berbicara Kretek', 'Abmi Handayani, dkk', '2012', 'Indonesia Berdikari', '978-602-99292-1-8', 'Novel', 334, 'Koleksi PerpustakaanKU', '2021/02/01', 'gambar_buku/a3ccaab6-0a24-4c92-bfc0-0c7e4eaf82ac.jpg', 'https://drive.google.com/file/d/1Fszlh7k9sXO_4RJMOPVbFUU1nCXRdThs/view?usp=sharing'),
(13, 'Perempuan Yang Dihapus Namanya', 'Avianti Armand', '2017', 'PT Gramedia Pustaka Utama', '978-602-0337-135', 'Puisi', 90, 'Koleksi PerpustakaanKU', '2021/02/01', 'gambar_buku/ed7d3a96-54af-4cc4-8bb3-af2aa8877b9c.jpg', 'https://drive.google.com/file/d/1D4jjMpjGzXFEbza4Q1m46rDiyuS5MVxz/view?usp=sharing'),
(14, 'Filsafat Islam Masa Awal', 'Drs.H. Ibrahim, M.Pd', '2016', 'PKBM Rumah Buku Carabaca Makassar', '978-602-1175-14-9', 'Filsafat', 159, 'Koleksi PerpustakaanKU', '2021/02/01', 'gambar_buku/89e4850b-99b0-42bb-bc54-9014ad7cb2e6.jpg', 'https://drive.google.com/file/d/1CrF90oxr8Hq4pAX54dk8wCyhWd4LNC4W/view?usp=sharing'),
(15, 'Teologi dan Falsafah Hijab', 'Murtadha Muthahhari', '2011', 'Rausyanfikr Institute', '978-602-1602-08-9', 'Filsafat', 192, 'Koleksi PerpustakaanKU', '2021/02/01', 'gambar_buku/9820c58c-e249-4c99-a762-502559f74b46.jpg', 'https://drive.google.com/file/d/1DE4tr2EHw8WyoW_BEVuMcZlQLUFc1Yxg/view?usp=sharing'),
(16, 'Agama Jawa', 'Abangan, Santri, Priyayi', '2014', 'Komunitas Bambu', '978-602-9402-12-4', 'Filsafat', 640, 'Koleksi PerpustakaanKU', '2021/02/01', 'gambar_buku/14e9999b-4cff-4b9a-a570-58f4e85c7942.jpg', 'https://drive.google.com/file/d/1DZkte6KAPKwfbx7nkWlgEVrnSxsPQdA7/view?usp=sharing'),
(17, 'Pulang', 'Leila S. Chudori', '2012', 'PT Gramedia Jakarta', '978-979-91-0515-8', 'Novel', 476, 'Koleksi PerpustakaanKU', '2021/02/01', 'gambar_buku/fea0ab63-c12a-4ed1-9223-0022aedde99b.jpg', 'https://drive.google.com/file/d/1DPuIjYBqeysldiYjw835d6y9qNY4A6r8/view?usp=sharing'),
(18, 'Teknologi Informasi', 'Abdul Qadil & Terra Ch. Triwahyuni', '2013', 'CV. Andi Offset', '-', 'Komputer', 26, 'Koleksi PerpustakaanKU', '2021/02/01', 'gambar_buku/6c7016ba-fa2a-4c39-b553-72b6079f5810.jpg', 'https://drive.google.com/file/d/1BIh0-onGwxuhINjmmfWKa_BJ-bACIUoG/view?usp=sharing'),
(19, 'Petani dan Penguasa', 'Noer Fauzi', '1999', 'INSIST, KPA, bekerja sama dengan Pustaka Pelajar', '979-9289-04-1', 'Novel', 330, 'Koleksi PerpustakaanKU', '2021/02/01', 'gambar_buku/88fa64d4-7641-4f42-a103-9f7286fe42f8.jpg', 'https://drive.google.com/file/d/1HGTHHlARiDkf7au0K17_rjBimSD2fex7/view?usp=sharing'),
(20, 'Perempuan Yang Mengantarkan surga', 'Haris Priyatna & Lisdy Rahayu', '2014', 'PT Mizan Pustaka', '978-602-1337-32-5', 'Novel', 278, 'Koleksi PerpustakaanKU', '2021/02/01', 'gambar_buku/e6462ec0-ad5b-48c0-82f8-1998daee4e57.jpg', 'https://drive.google.com/file/d/1HMRV3bFz019hR7fGsF7A8lE3NJt4V2kc/view?usp=sharing'),
(21, 'Desain dan Pemrograman Multimedia Pembelajaran Interaktif', 'Wandah Wibawanto, S.Sn., M.Ds', '2017', 'Penerbit cerdas Ulet Kreatif', '978-602-7534-26-1', 'Komputer', 195, 'Koleksi PerpustakaanKU', '2021/02/01', 'gambar_buku/37acf42b-2b3b-4fdb-a8cf-3a6c608c4d98.jpg', 'https://drive.google.com/file/d/1H8U7pVR7AKaFcjf_mlbWf54_4_MfVOp9/view?usp=sharing'),
(22, 'Kebenaran yang hilang', 'Farag Fouda', '2007', 'Balai peneltian dan pengembangan agama jakarta', '-', 'Politik', 216, 'Koleksi PerpustakaanKU', '2021/02/01', 'gambar_buku/9beecc09-6d1e-4ed0-b3bb-ff66d34377b5.jpg', 'https://drive.google.com/file/d/1H62-4ftUeOnopDBXTdEAI3yiBEIEB4g-/view?usp=sharing'),
(23, 'Covid 19 & disrupsi', 'Syafarudi, Erna Rochana, Erizal barnawi, Bagus Wardianto', '-', 'Pusaka Media', '978-623-6569-62-7', 'Umum', 0, 'Koleksi PerpustakaanKU', '2021/02/01', 'gambar_buku/92fd4697-bbf3-48e0-93dd-181aa1986f88.jpg', 'https://drive.google.com/file/d/1H-o5FHjnC_CsihxKg76jGyPhKksWmo-K/view?usp=sharing'),
(24, 'Buku Pertama Belajar Pemrograman JAVA', 'Abdul Kadir', '2013', 'Mediakom', '(10) 979-877-368-3 / (13)', 'Komputer', 444, 'Koleksi PerpustakaanKU', '2021/02/01', 'gambar_buku/IMG_20210201_210025.jpg', 'https://drive.google.com/file/d/1BMZgBjcoZlx9zdKvBrqUUxmeSihX4AxB/view?usp=sharing');

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--

CREATE TABLE `pengunjung` (
  `id` int(8) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jk` varchar(2) NOT NULL,
  `kelas` varchar(17) NOT NULL,
  `perlu1` varchar(15) NOT NULL,
  `cari` varchar(255) NOT NULL,
  `saran` varchar(255) NOT NULL,
  `tgl_kunjung` date NOT NULL,
  `jam_kunjung` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengunjung`
--

INSERT INTO `pengunjung` (`id`, `nama`, `jk`, `kelas`, `perlu1`, `cari`, `saran`, `tgl_kunjung`, `jam_kunjung`) VALUES
(10, 'Mihra Wardana', 'P', '19', 'Mencari referen', 'Buku yang berkaitan dengan komputer', 'Agar menyediakan lebih banyak buku referensi, sehingga kami dapat menemukan referensi sesuai kebutuhan kami', '2021-02-01', '14:35:53'),
(11, 'Wardana', 'P', '21', 'Membaca', 'Novel', 'Sebaiknya jumlah  referensi lebih ditingkatkan', '2021-02-01', '14:43:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `data_anggota`
--
ALTER TABLE `data_anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_buku`
--
ALTER TABLE `data_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_anggota`
--
ALTER TABLE `data_anggota`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `data_buku`
--
ALTER TABLE `data_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
