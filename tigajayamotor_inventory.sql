-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2025 at 07:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tigajayamotor_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id`, `nama`) VALUES
(1, 'Aki'),
(2, 'Busi'),
(158, 'Cairan Rem'),
(168, 'CM Kit'),
(159, 'Filter Oli'),
(161, 'Filter Udara'),
(171, 'Kampas Rem'),
(167, 'Karet Rem'),
(4, 'Lampu'),
(155, 'Oli'),
(157, 'Pembersih Carburator'),
(153, 'Radiator'),
(162, 'Rantai Motor'),
(156, 'Saringan Bahan Bakar'),
(160, 'Tie Rod'),
(154, 'Wiper');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembelian`
--

CREATE TABLE `tbl_pembelian` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `total_biaya` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `merek` varchar(100) NOT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `harga` decimal(10,2) NOT NULL,
  `stok` int(11) NOT NULL DEFAULT 0,
  `min_stok` int(11) NOT NULL DEFAULT 1,
  `barcode` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`id`, `nama`, `merek`, `kategori_id`, `harga`, `stok`, `min_stok`, `barcode`, `created_at`, `updated_at`) VALUES
(1, 'Aki NS70', 'Incoe', 1, 950000.00, 25, 1, NULL, '2025-02-15 12:14:34', '2025-10-27 12:58:11'),
(2, 'Busi Jazz ZFR5F', 'NGX', 2, 35000.00, 24, 5, NULL, '2025-03-25 17:43:28', '2025-10-25 12:52:30'),
(3, 'Lampu mobil t20', 'Tokai', 4, 15000.00, 11, 5, NULL, '2025-03-27 15:56:17', '2025-10-29 13:43:02'),
(4, 'Lampu 12v double kuning', 'Stanlee', 4, 7500.00, 9, 3, NULL, '2025-03-27 15:57:10', '2025-04-08 23:23:31'),
(5, 'Lampu 12v engkel kecil', 'Stanlee', 4, 7500.00, 8, 3, NULL, '2025-03-27 15:58:34', '2025-03-27 20:22:21'),
(6, 'Lampu 24v double', 'Osram', 4, 15000.00, 35, 3, NULL, '2025-03-27 15:58:59', '2025-10-29 14:00:51'),
(7, 'Lampu kota T10 12v led putih', 'Luminos', 4, 25000.00, 3, 3, NULL, '2025-03-27 15:59:32', '2025-03-27 15:59:32'),
(8, 'Lampu kota T10 12v led biru', 'Luminos', 4, 25000.00, 23, 3, NULL, '2025-03-27 16:00:10', '2025-10-13 13:39:27'),
(9, 'Master kit kopling atas (kijang, saurus)', 'Seiken', 168, 85000.00, 6, 3, NULL, '2025-03-27 16:00:46', '2025-04-08 23:16:58'),
(10, 'Master kit kopling bawah', 'Seiken', 168, 75000.00, 6, 3, NULL, '2025-03-27 16:02:13', '2025-04-08 23:26:46'),
(11, 'Master kit kopling atas (fe/135ps)', 'Seiken', 168, 145000.00, 34, 3, NULL, '2025-03-27 16:02:47', '2025-10-29 14:00:23'),
(12, 'Karet rem depan (fe/ps)', 'Seiken', 167, 15000.00, 28, 10, NULL, '2025-03-27 16:03:20', '2025-10-29 13:56:25'),
(13, 'Karet rem belakang (fe/ps)', 'Seiken', 167, 12500.00, 28, 10, NULL, '2025-03-27 16:03:44', '2025-10-13 13:40:02'),
(14, 'Tie rod panther23', 'Three Five', 160, 300000.00, 26, 1, NULL, '2025-03-27 16:05:04', '2025-10-24 12:50:20'),
(15, 'Tie rod (st100, ss, futura)', 'Three Five', 160, 150000.00, 6, 1, NULL, '2025-03-27 16:05:37', '2025-04-08 23:11:58'),
(16, 'Oli meditran s 5L(diesel)', 'Pertamina', 155, 235000.00, 31, 5, NULL, '2025-03-28 12:29:25', '2025-10-28 12:59:18'),
(17, 'Oli prima xp 4l (bensin) SAE20W-50', 'Pertamina', 155, 215000.00, 8, 5, NULL, '2025-03-28 12:29:48', '2025-04-08 23:26:07'),
(18, 'SAE10W-40 (bensin)', 'Pertamina', 155, 250000.00, 19, 3, NULL, '2025-03-28 12:30:11', '2025-10-29 13:04:54'),
(19, 'Oli HX7+ 5W-40', 'Shell Helix', 155, 400000.00, 5, 1, NULL, '2025-03-28 12:30:34', '2025-10-23 12:45:11'),
(20, 'Oli power steering (946ml)', 'Prestone', 155, 85000.00, 3, 5, NULL, '2025-03-28 12:31:29', '2025-03-28 12:31:29'),
(21, 'Minyak rem merah (300ml)', 'Prestone', 158, 30000.00, 30, 5, NULL, '2025-03-28 12:32:00', '2025-09-15 13:37:35'),
(22, 'Minyak rem putih (300ml)', 'Prestone', 158, 30000.00, 5, 5, NULL, '2025-03-28 12:32:19', '2025-04-08 23:14:14'),
(23, 'Minyak rem netral', 'Jumbo', 158, 25000.00, 8, 5, NULL, '2025-03-28 12:32:49', '2025-04-08 23:26:14'),
(24, 'Anti karat', 'WD40', 157, 85000.00, 22, 5, NULL, '2025-03-28 12:34:58', '2025-10-29 13:04:07'),
(25, 'Carburator cleaner 500ml', 'Prestone', 157, 50000.00, 22, 5, NULL, '2025-03-28 12:36:06', '2025-10-22 12:28:33'),
(26, 'Carburator cleaner 500ml', 'Redex', 157, 40000.00, 17, 5, NULL, '2025-03-28 12:42:08', '2025-10-29 13:03:54'),
(27, 'Busi Jazz ZFR5F', 'NGK', 2, 35000.00, 17, 10, NULL, '2025-03-28 13:59:02', '2025-04-08 23:17:41'),
(28, 'Busi zebra BKR6E', 'NGK', 2, 30000.00, 42, 10, NULL, '2025-03-28 13:59:23', '2025-10-22 12:29:09'),
(29, 'Busi ST100 W16EX', 'Denso', 2, 22500.00, 14, 10, NULL, '2025-03-28 13:59:46', '2025-04-08 23:25:28'),
(30, 'Busi W16EX', 'Bosch', 2, 22500.00, 19, 5, NULL, '2025-03-28 14:00:17', '2025-10-22 12:28:19'),
(31, 'Tutup radiator xenia avanza', 'Denso', 153, 45000.00, 5, 5, NULL, '2025-03-28 14:00:59', '2025-03-28 14:00:59'),
(32, 'Tutup radiator kijang', 'Denso', 153, 45000.00, 24, 5, NULL, '2025-03-28 14:01:18', '2025-09-15 13:35:24'),
(33, 'Fuel filter solar ryno 125 FC1109', 'Sakura', 156, 95000.00, 7, 3, NULL, '2025-03-28 14:01:43', '2025-04-08 23:16:08'),
(34, 'Fuel filter solar innova F1111', 'Sakura', 156, 225000.00, 41, 3, NULL, '2025-03-28 14:02:15', '2025-10-29 14:00:34'),
(35, 'Fuel filter fe/ps F1002', 'Sakura', 156, 35000.00, 2, 5, NULL, '2025-03-28 14:02:58', '2025-03-28 14:02:58'),
(36, 'Fuel filter fuso fc1003', 'Sakura', 156, 75000.00, 7, 3, NULL, '2025-03-28 14:03:18', '2025-04-08 23:16:39'),
(37, 'Filter Oli Innova', 'Sakura', 159, 65000.00, 2, 3, NULL, '2025-03-28 14:03:48', '2025-03-28 14:03:48'),
(38, 'Filter Oli HiAce', 'Sakura', 159, 65000.00, 4, 3, NULL, '2025-03-28 14:04:09', '2025-04-08 23:14:36'),
(39, 'Filter Oli honda wonder', 'Sakura', 159, 95000.00, 6, 3, NULL, '2025-03-28 14:07:28', '2025-04-08 23:23:49'),
(40, 'Filter oli yaris vios', 'Sakura', 159, 50000.00, 17, 3, NULL, '2025-03-28 14:07:57', '2025-10-23 12:46:36'),
(41, 'Set wiper 18nch frameless', 'Bosch', 154, 100000.00, 4, 3, NULL, '2025-03-28 14:15:36', '2025-03-28 14:15:36'),
(42, 'Set wiper  12inch', 'Bosch', 154, 50000.00, 27, 3, NULL, '2025-03-28 14:16:03', '2025-10-29 13:56:11'),
(43, 'Set wiper 14inch', 'Bosch', 154, 50000.00, 4, 3, NULL, '2025-03-28 14:16:28', '2025-03-28 14:16:28'),
(44, 'Set wiper 16 inch', 'Bosch', 154, 50000.00, 2, 3, NULL, '2025-03-28 14:16:53', '2025-03-28 14:16:53'),
(45, 'Set wiper 20inch', 'Bosch', 154, 60000.00, 3, 3, NULL, '2025-03-28 14:18:50', '2025-03-28 14:18:50'),
(46, 'Set wiper 22inch', 'Bosch', 154, 75000.00, 3, 3, NULL, '2025-03-28 14:19:14', '2025-03-28 14:19:14'),
(47, 'Set wiper 24inch', 'Bosch', 154, 75000.00, 4, 3, NULL, '2025-03-28 14:19:52', '2025-03-28 14:19:52'),
(48, 'Set wiper 18inch', 'Bosch', 154, 55000.00, 5, 3, NULL, '2025-03-28 14:20:23', '2025-03-28 14:20:23'),
(49, 'Air aki 1l', 'Yuasa', 1, 10000.00, 34, 5, NULL, '2025-03-28 14:21:04', '2025-10-22 12:38:37'),
(50, 'Radiator coolant (hijau, merah) 1l', 'Vegacool', 153, 20000.00, 4, 5, NULL, '2025-03-28 14:21:42', '2025-10-29 13:43:54'),
(51, 'Radiator coolant (hijau, merah) 5l', 'Vegacool', 153, 60000.00, 4, 5, NULL, '2025-03-28 14:22:06', '2025-03-28 14:22:06'),
(53, 'aki mobil', 'Denso', 1, 20000.00, 27, 5, NULL, '2025-05-09 01:56:53', '2025-10-22 12:26:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_riwayat_keluar`
--

CREATE TABLE `tbl_riwayat_keluar` (
  `id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_riwayat_keluar`
--

INSERT INTO `tbl_riwayat_keluar` (`id`, `produk_id`, `jumlah`, `tanggal`) VALUES
(1, 1, 1, '2025-02-26 14:56:42'),
(2, 1, 1, '2025-02-26 15:19:15'),
(3, 1, 1, '2025-02-26 15:19:35'),
(4, 1, 2, '2025-02-27 06:25:13'),
(5, 3, 2, '2025-04-08 23:17:33'),
(6, 27, 3, '2025-04-08 23:17:41'),
(7, 28, 2, '2025-04-08 23:17:52'),
(8, 13, 4, '2025-04-08 23:18:00'),
(9, 4, 1, '2025-04-08 23:23:32'),
(10, 13, 2, '2025-04-08 23:23:38'),
(11, 39, 3, '2025-04-08 23:23:49'),
(12, 50, 2, '2025-04-08 23:23:58'),
(13, 13, 2, '2025-04-08 23:25:12'),
(14, 28, 4, '2025-04-08 23:25:21'),
(15, 29, 5, '2025-04-08 23:25:28'),
(16, 10, 4, '2025-04-08 23:26:46'),
(17, 12, 6, '2025-04-08 23:26:53'),
(18, 3, 1, '2025-10-29 13:43:02'),
(19, 50, 1, '2025-10-29 13:43:54'),
(20, 42, 1, '2025-10-29 13:56:12'),
(21, 12, 1, '2025-10-29 13:56:25'),
(22, 6, 1, '2025-10-29 14:00:19'),
(23, 11, 1, '2025-10-29 14:00:23'),
(24, 34, 1, '2025-10-29 14:00:34'),
(25, 6, 1, '2025-10-29 14:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_riwayat_masuk`
--

CREATE TABLE `tbl_riwayat_masuk` (
  `id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_riwayat_masuk`
--

INSERT INTO `tbl_riwayat_masuk` (`id`, `produk_id`, `jumlah`, `tanggal`) VALUES
(1, 1, 1, '2025-02-26 14:39:25'),
(2, 1, 1, '2025-02-26 14:48:49'),
(3, 1, 1, '2025-02-26 14:56:22'),
(4, 1, 1, '2025-02-26 15:19:03'),
(5, 1, 2, '2025-02-27 06:21:07'),
(6, 1, 3, '2025-03-03 01:32:08'),
(7, 1, 4, '2025-03-03 01:32:42'),
(8, 2, 5, '2025-03-27 16:29:36'),
(9, 15, 5, '2025-04-08 23:11:58'),
(10, 18, 4, '2025-04-08 23:13:59'),
(11, 19, 6, '2025-04-08 23:14:06'),
(12, 22, 3, '2025-04-08 23:14:14'),
(13, 26, 2, '2025-04-08 23:14:24'),
(14, 38, 3, '2025-04-08 23:14:36'),
(15, 33, 6, '2025-04-08 23:16:09'),
(16, 34, 5, '2025-04-08 23:16:20'),
(17, 39, 8, '2025-04-08 23:16:28'),
(18, 36, 6, '2025-04-08 23:16:40'),
(19, 9, 4, '2025-04-08 23:16:59'),
(20, 11, 3, '2025-04-08 23:17:06'),
(21, 14, 5, '2025-04-08 23:17:13'),
(22, 16, 6, '2025-04-08 23:17:23'),
(23, 10, 7, '2025-04-08 23:25:59'),
(24, 17, 6, '2025-04-08 23:26:07'),
(25, 23, 4, '2025-04-08 23:26:14'),
(26, 25, 6, '2025-04-08 23:26:22'),
(27, 6, 32, '2025-08-19 13:27:27'),
(28, 12, 25, '2025-09-12 13:28:51'),
(29, 32, 20, '2025-09-15 13:35:25'),
(30, 42, 25, '2025-09-15 13:35:40'),
(31, 21, 25, '2025-09-15 13:37:35'),
(32, 8, 20, '2025-10-13 13:39:27'),
(33, 13, 15, '2025-10-13 13:40:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stok_gudang`
--

CREATE TABLE `tbl_stok_gudang` (
  `id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `tipe` enum('Masuk','Keluar') NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kontak` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_total` decimal(10,2) NOT NULL,
  `diskon` decimal(10,2) DEFAULT 0.00,
  `pembayaran` decimal(10,2) NOT NULL,
  `kembalian` decimal(10,2) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `metode_pembayaran` enum('Cash','QRIS','Transfer Bank','Lainnya') NOT NULL DEFAULT 'Cash'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id`, `produk_id`, `jumlah`, `harga_total`, `diskon`, `pembayaran`, `kembalian`, `tanggal`, `metode_pembayaran`) VALUES
(1, 1, 1, 950000.00, 0.00, 1000000.00, 50000.00, '2025-03-04 01:09:11', 'Cash'),
(2, 1, 2, 1900000.00, 0.00, 2000000.00, 100000.00, '2025-03-04 01:28:31', 'Cash'),
(3, 1, 3, 2850000.00, 0.00, 3000000.00, 150000.00, '2025-03-04 02:22:16', 'Cash'),
(4, 1, 1, 950000.00, 0.00, 1000000.00, 50000.00, '2025-03-25 18:01:23', 'Cash'),
(5, 15, 1, 150000.00, 0.00, 200000.00, 50000.00, '2025-04-08 19:35:48', 'QRIS'),
(6, 2, 1, 35000.00, 0.00, 45000.00, 10000.00, '2025-04-08 19:37:56', 'Transfer Bank'),
(7, 3, 1, 15000.00, 0.00, 20000.00, 5000.00, '2025-03-04 20:17:52', 'Cash'),
(8, 29, 1, 22500.00, 0.00, 23000.00, 500.00, '2025-03-04 20:18:12', 'Cash'),
(9, 49, 3, 30000.00, 0.00, 100000.00, 70000.00, '2025-03-12 20:19:00', 'Cash'),
(10, 3, 2, 30000.00, 0.00, 50000.00, 20000.00, '2025-03-12 20:20:18', 'QRIS'),
(11, 13, 4, 50000.00, 0.00, 50000.00, 0.00, '2025-03-15 20:21:35', 'Cash'),
(12, 5, 2, 15000.00, 0.00, 15000.00, 0.00, '2025-03-27 20:22:25', 'QRIS'),
(13, 3, 2, 30000.00, 0.00, 40000.00, 10000.00, '2025-03-02 20:23:04', 'Cash'),
(14, 12, 3, 45000.00, 0.00, 100000.00, 55000.00, '2025-03-13 20:24:56', 'Cash'),
(15, 12, 6, 90000.00, 0.00, 100000.00, 10000.00, '2025-03-13 20:26:03', 'Cash'),
(16, 13, 5, 62500.00, 0.00, 100000.00, 37500.00, '2025-03-13 22:38:22', 'Cash'),
(17, 14, 1, 300000.00, 0.00, 300000.00, 0.00, '2025-03-28 22:39:46', 'Cash'),
(18, 15, 1, 150000.00, 0.00, 150000.00, 0.00, '2025-03-14 22:41:25', 'Cash'),
(19, 3, 4, 60000.00, 0.00, 70000.00, 10000.00, '2025-03-14 22:44:08', 'Cash'),
(20, 12, 10, 150000.00, 0.00, 150000.00, 0.00, '2025-03-14 22:44:35', 'Cash'),
(21, 3, 1, 15000.00, 0.00, 15000.00, 0.00, '2025-04-08 22:54:57', 'Cash'),
(22, 3, 1, 15000.00, 0.00, 15000.00, 0.00, '2025-04-09 00:07:53', 'Cash'),
(23, 2, 2, 70000.00, 0.00, 100000.00, 30000.00, '2025-04-09 00:08:51', 'Cash'),
(24, 2, 2, 70000.00, 0.00, 100000.00, 30000.00, '2025-04-09 13:49:28', 'Cash'),
(25, 3, 1, 15000.00, 0.00, 20000.00, 5000.00, '2025-05-09 01:55:29', 'Cash'),
(26, 2, 1, 35000.00, 0.00, 40000.00, 5000.00, '2025-09-24 05:08:53', 'Cash'),
(27, 3, 2, 30000.00, 0.00, 50000.00, 20000.00, '2025-10-10 09:12:06', 'Cash'),
(28, 6, 1, 15000.00, 0.00, 20000.00, 5000.00, '2025-10-22 12:25:40', 'Cash'),
(29, 2, 3, 105000.00, 0.00, 105000.00, 0.00, '2025-10-22 12:36:40', 'QRIS'),
(30, 2, 4, 140000.00, 0.00, 145000.00, 5000.00, '2025-10-22 12:38:04', 'Cash'),
(31, 49, 4, 40000.00, 0.00, 40000.00, 0.00, '2025-10-22 12:38:37', 'QRIS'),
(32, 19, 1, 400000.00, 0.00, 400000.00, 0.00, '2025-10-22 12:39:31', 'QRIS'),
(33, 16, 1, 235000.00, 0.00, 235000.00, 0.00, '2025-10-23 12:41:01', 'Cash'),
(34, 1, 1, 950000.00, 0.00, 1000000.00, 50000.00, '2025-10-23 12:41:12', 'Cash'),
(35, 19, 1, 400000.00, 0.00, 400000.00, 0.00, '2025-10-23 12:45:11', 'Cash'),
(36, 16, 1, 235000.00, 0.00, 235000.00, 0.00, '2025-10-23 12:49:04', 'Cash'),
(37, 1, 1, 950000.00, 0.00, 950000.00, 0.00, '2025-10-24 12:50:06', 'Cash'),
(38, 14, 1, 300000.00, 0.00, 300000.00, 0.00, '2025-10-24 12:50:20', 'Cash'),
(39, 34, 4, 900000.00, 0.00, 900000.00, 0.00, '2025-10-25 12:51:29', 'Cash'),
(40, 2, 1, 35000.00, 0.00, 35000.00, 0.00, '2025-10-25 12:52:30', 'Cash'),
(41, 11, 2, 290000.00, 0.00, 290000.00, 0.00, '2025-10-25 12:53:27', 'Cash'),
(42, 11, 2, 290000.00, 0.00, 290000.00, 0.00, '2025-10-25 12:53:49', 'Cash'),
(43, 18, 2, 500000.00, 0.00, 500000.00, 0.00, '2025-10-26 12:55:20', 'Cash'),
(44, 34, 1, 225000.00, 0.00, 225000.00, 0.00, '2025-10-26 12:55:42', 'Cash'),
(45, 18, 4, 1000000.00, 0.00, 1000000.00, 0.00, '2025-10-27 12:57:56', 'Cash'),
(46, 1, 2, 1900000.00, 0.00, 19000000.00, 17100000.00, '2025-10-27 12:58:11', 'QRIS'),
(47, 16, 5, 1175000.00, 0.00, 1175000.00, 0.00, '2025-10-28 12:59:18', 'QRIS'),
(48, 24, 1, 85000.00, 0.00, 90000.00, 5000.00, '2025-10-28 12:59:46', 'Cash'),
(49, 11, 6, 870000.00, 0.00, 870000.00, 0.00, '2025-10-29 13:03:20', 'QRIS'),
(50, 3, 1, 15000.00, 0.00, 15000.00, 0.00, '2025-10-29 13:03:40', 'Cash'),
(51, 26, 1, 40000.00, 0.00, 40000.00, 0.00, '2025-10-29 13:03:54', 'Cash'),
(52, 24, 1, 85000.00, 0.00, 85000.00, 0.00, '2025-10-29 13:04:07', 'Cash'),
(53, 12, 1, 15000.00, 0.00, 15000.00, 0.00, '2025-10-29 13:04:34', 'Cash'),
(54, 18, 1, 250000.00, 0.00, 250000.00, 0.00, '2025-10-29 13:04:54', 'Cash'),
(55, 50, 1, 20000.00, 0.00, 20000.00, 0.00, '2025-10-29 13:05:12', 'Cash'),
(56, 3, 1, 15000.00, 0.00, 15000.00, 0.00, '2025-10-29 13:08:25', 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('Admin','Kasir','Gudang') NOT NULL DEFAULT 'Kasir',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `nama`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'Admin', 'admin@inventory.com', 'admin123', 'Admin', '2025-02-15 10:24:37'),
(2, 'Kasir', 'kasir1@inventory.com', 'kasir123', 'Kasir', '2025-02-15 10:24:37'),
(3, 'Gudang', 'gudang1@inventory.com', 'gudang123', 'Gudang', '2025-02-15 10:24:37'),
(4, '', 'admin2@tigajayamotor.com', 'admin2', 'Admin', '2025-02-15 11:31:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `barcode` (`barcode`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `tbl_riwayat_keluar`
--
ALTER TABLE `tbl_riwayat_keluar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produk_id` (`produk_id`);

--
-- Indexes for table `tbl_riwayat_masuk`
--
ALTER TABLE `tbl_riwayat_masuk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produk_id` (`produk_id`);

--
-- Indexes for table `tbl_stok_gudang`
--
ALTER TABLE `tbl_stok_gudang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produk_id` (`produk_id`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produk_id` (`produk_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=865;

--
-- AUTO_INCREMENT for table `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tbl_riwayat_keluar`
--
ALTER TABLE `tbl_riwayat_keluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_riwayat_masuk`
--
ALTER TABLE `tbl_riwayat_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_stok_gudang`
--
ALTER TABLE `tbl_stok_gudang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  ADD CONSTRAINT `tbl_pembelian_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `tbl_supplier` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD CONSTRAINT `tbl_produk_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `tbl_kategori` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tbl_riwayat_keluar`
--
ALTER TABLE `tbl_riwayat_keluar`
  ADD CONSTRAINT `tbl_riwayat_keluar_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `tbl_produk` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_riwayat_masuk`
--
ALTER TABLE `tbl_riwayat_masuk`
  ADD CONSTRAINT `tbl_riwayat_masuk_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `tbl_produk` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_stok_gudang`
--
ALTER TABLE `tbl_stok_gudang`
  ADD CONSTRAINT `tbl_stok_gudang_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `tbl_produk` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD CONSTRAINT `tbl_transaksi_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `tbl_produk` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
