-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2026 at 03:41 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yan_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(4) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `fullname` varchar(40) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `gambar` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `fullname`, `hp`, `gambar`) VALUES
(3, 'admin', 'admin', 'Admin Geraldi', '085694984803', 'gambar_admin/Chrysanthemum.jpg'),
(12, 'Shelly', 'Shelly', 'Shelly Wulansari', '081779970642', 'gambar_admin/ass.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(4) NOT NULL,
  `tanggal` date NOT NULL,
  `judul` varchar(300) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `isi` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `tanggal`, `judul`, `kategori`, `isi`) VALUES
(1, '2016-05-22', 'Maintenance', 'Ducting', 'Maintenance Ducting Kitchen');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `info_gb` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `gambar`, `info_gb`) VALUES
(1, '../admin/gambar_gallery/IMG-20240709-WA0007.jpg', 'Gambar Toko Bagian Depan'),
(2, '../admin/gambar_gallery/IMG-20240709-WA0011.jpg', 'Gambar Toko Bagian Rak'),
(5, '../admin/gambar_gallery/sabun.jpg', 'Rak Sabun');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_karyawan`
--

CREATE TABLE `jadwal_karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama_karyawan` varchar(100) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal_karyawan`
--

INSERT INTO `jadwal_karyawan` (`id_karyawan`, `nama_karyawan`, `pekerjaan`, `waktu`) VALUES
(1, 'Shelly Wulansari', 'Menjaga Toko dan Kasir', '2024-07-03 21:00:00'),
(2, 'Nani Kusumawati', 'Pemilik Toko', '2024-08-01 11:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id`, `name`, `phone`, `email`, `message`) VALUES
(1, 'sasa', 0, 'sasa@sasa.com', 'Apakah ada telur?'),
(2, 'Sciel', 111, '11@gmail.com', 'Tes Pesan Masuk'),
(3, 'As', 0, 'assajigeraldi@gmail.com', 'Pesan Masuk Dari Mamas Aldi'),
(4, 'Lavinia', 2147483647, 'ScielLaSyracusan@gmail.com', 'Pesan Masuk Dari Sciel');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(4) NOT NULL,
  `img` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `info_produk` varchar(100) NOT NULL,
  `Kategori` enum('Sembako','Listrik','KeperluanRT','') NOT NULL,
  `Harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `img`, `nama_produk`, `info_produk`, `Kategori`, `Harga`) VALUES
(1, '../admin/gambar_product/Sembako1.jpg', 'Sembako', 'Tersedia beberapa aneka sembako, seperti beras, mi', 'Sembako', 0),
(14, 'gambar_product/MieGoreng.jpeg', 'Mie Indomie', 'Tersedia aneka mie, Indomie Goreng Original, Indomie Goreng Rendang, Indomie Goreng Cabe Ijo, Indomi', 'Sembako', 3000),
(17, 'gambar_product/Paring.jpeg', 'Pisau Dapur', 'Pisau Dapur Tajam', 'KeperluanRT', 0),
(18, 'gambar_product/Lamp.jpg', 'Lampu', 'Lampu Penerang Ruangan', 'Listrik', 0),
(19, 'gambar_product/AnekaSnacks.jpg', 'A', '1', 'Sembako', 1),
(20, 'gambar_product/AnekaSnacks.jpg', 'AS', '2', 'Sembako', 1),
(21, 'gambar_product/Knife.jpg', 'SAS', 're', 'Sembako', 2121),
(22, 'gambar_product/Paring.jpeg', '123', '123', 'Listrik', 12),
(23, 'gambar_product/Knife.jpg', 'AAAA', '12', 'Sembako', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `jadwal_karyawan`
--
ALTER TABLE `jadwal_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `jadwal_karyawan`
--
ALTER TABLE `jadwal_karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
