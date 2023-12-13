-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2023 at 08:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newspaper`
--

-- --------------------------------------------------------

--
-- Table structure for table `isi_berita`
--

CREATE TABLE `isi_berita` (
  `id_berita` varchar(5) NOT NULL,
  `id_kategori` varchar(5) NOT NULL,
  `judul` varchar(40) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `waktu` time DEFAULT NULL,
  `gambar` longtext DEFAULT NULL,
  `isi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `isi_berita`
--

INSERT INTO `isi_berita` (`id_berita`, `id_kategori`, `judul`, `tanggal`, `waktu`, `gambar`, `isi`) VALUES
('00001', '1', 'E-KTP Masuk Semarang Timur', '2012-05-08', '21:30:30', 'gambar/ektp.jpg', 'sekarang ini e-ktp telah memasuki semarang timur warga semarang timur diharapkan datang untuk merekam data sesuai jadwal yang telah ditetapkan oleh masing-masing\r\nkelurahan dan ketua rt masing-masing. \"semarang timur diharapkan datang untuk merekam data lebih cepat dan akurat \"kata kepala kecamatan semarang timur;\"');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` varchar(5) NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
('1', 'Politik'),
('2', 'Ekonomi');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_user` varchar(5) NOT NULL,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `hak_akses` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_user`, `username`, `password`, `hak_akses`) VALUES
('1', 'admin', 'admin', '1'),
('2', 'zidan', 'herlangga', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `isi_berita`
--
ALTER TABLE `isi_berita`
  ADD PRIMARY KEY (`id_berita`,`id_kategori`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
