-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2022 at 07:18 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `keripik`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id_barang` int(11) NOT NULL,
  `jeniskeripik` varchar(50) NOT NULL,
  `rasakeripik` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `jeniskeripik`, `rasakeripik`, `harga`) VALUES
(1, 'Singkong', 'Balado', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penjualan`
--

CREATE TABLE `tbl_penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlahtersedia` int(50) NOT NULL,
  `jumlahterjual` int(60) NOT NULL,
  `stokakhir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_penjualan`
--

INSERT INTO `tbl_penjualan` (`id_penjualan`, `id_barang`, `jumlahtersedia`, `jumlahterjual`, `stokakhir`) VALUES
(2, 1, 20, 5, 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD UNIQUE KEY `jeniskeripik` (`jeniskeripik`);

--
-- Indexes for table `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD UNIQUE KEY `id_barang` (`id_barang`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  ADD CONSTRAINT `tbl_penjualan_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `tbl_barang` (`id_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
