-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2020 at 11:49 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skb_pajak`
--

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_skb`
--

CREATE TABLE `pengajuan_skb` (
  `id_data` int(11) NOT NULL,
  `nama_wajib_pajak` varchar(255) NOT NULL,
  `npwp` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `list_kpp` varchar(255) NOT NULL,
  `list_pajak` varchar(255) NOT NULL,
  `statuss` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengajuan_skb`
--

INSERT INTO `pengajuan_skb` (`id_data`, `nama_wajib_pajak`, `npwp`, `alamat`, `list_kpp`, `list_pajak`, `statuss`) VALUES
(1, '1', 'User', 'Malang', 'Malang KPP', 'Tunai', 'Diajukan');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `npwp` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `nama_lengkap`, `alamat`, `pekerjaan`, `npwp`, `username`, `password`) VALUES
(1, 'User', 'Malang ', 'Swasta', '111', 'A', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `status_skb`
--

CREATE TABLE `status_skb` (
  `status` enum('disetujui','tidak disetujui') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengajuan_skb`
--
ALTER TABLE `pengajuan_skb`
  ADD PRIMARY KEY (`id_data`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD KEY `npwp` (`npwp`),
  ADD KEY `username` (`username`),
  ADD KEY `password` (`password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengajuan_skb`
--
ALTER TABLE `pengajuan_skb`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
