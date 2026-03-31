-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 31, 2026 at 01:23 PM
-- Server version: 5.7.39
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_profile`
--

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL,
  `sertifikat` varchar(255) DEFAULT NULL,
  `tahun` varchar(20) DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `sertifikat`, `tahun`, `gambar`) VALUES
(1, 'Akselerasi Pengenalan Lingkungan Kampus Anggota Divisi Kesehatan & Konsumsi INFORSA ', '2025', 'Sertifikasi Aplikasi.jpeg'),
(2, 'INSEVENT Panitia  INFORSA  ', '2025', 'Sertifikat Insevent.jpg'),
(3, 'Kuliah Umum \r\nPeserta \r\nUniversitas Mulawarman  ', '2024', 'Sertifikat Kuliah Umum.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(11) NOT NULL,
  `pengalaman` varchar(255) DEFAULT NULL,
  `tahun` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `pengalaman`, `tahun`) VALUES
(1, 'Kepengurusan INFORSA - Anggota Departemen ADWEL, berperan dalam mendukung pelaksanaan program kerja organisasi.', '2025'),
(2, 'Akselerasi Pengenalan Lingkungan Kampus Sistem Informasi - Anggota Divisi Kesehatan & Konsumsi.', '2025'),
(3, 'Desain X-Banner Kegiatan Mahasiswa - Project Design, mendesain media publikasi kegiatan menggunakan Canva.', '2025');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `bio` text,
  `about` text,
  `hobi` varchar(100) DEFAULT NULL,
  `skill` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `nama`, `bio`, `about`, `hobi`, `skill`) VALUES
(1, 'Jihan Alya Naflah', 'Mahasiswa aktif Program Studi Sistem Informasi semester 4 di Universitas Mulawarman.', 'Saya merupakan mahasiswa aktif Program Studi Sistem Informasi semester 4 di Universitas Mulawarman. Saya menikmati proses belajar dan mengeksplorasi hal baru, terutama dalam bidang teknologi. Bagi saya, setiap proses pembelajaran adalah kesempatan untuk berkembang dan meningkatkan kemampuan diri.', 'Membaca Buku, Menonton Film, Mendengarkan Musik', 'HTML, MySQL, Python');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
