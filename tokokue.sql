-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2021 at 12:28 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokokue`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL DEFAULT 125000,
  `stok` int(5) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Replika Top Quality',
  `berat` double(8,2) NOT NULL DEFAULT 0.25,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `nama_barang`, `gambar`, `harga`, `stok`, `keterangan`, `berat`, `created_at`, `updated_at`) VALUES
(1, 'Mango Cake', 'mango.jpeg', 250000, 2, 'Ukuran 20x20', 8.00, '2021-06-26 18:55:29', '2021-06-27 11:58:11'),
(2, 'Blueberry Cake', 'blueberry.jpeg', 300000, 10, 'Ukuran 20X20', 8.00, '2021-05-03 18:28:25', '2021-05-04 18:28:25'),
(3, 'Green Blossom Cake', 'greenblossom.jpeg', 350000, 5, 'Ukuran 20X20', 8.00, '2021-04-07 18:38:57', '2021-06-27 11:58:11'),
(4, 'Unicorn cake', 'unicorn.jpeg', 300000, 7, 'Ukuran 20x20', 8.00, '2021-05-13 18:54:29', '2021-06-27 11:58:11'),
(5, 'Green Cake', 'green.jpeg', 250000, 1, ' Ukuran 20x20', 8.00, '2021-06-14 18:55:35', '2021-06-27 09:01:20'),
(6, 'Strawberry Cake', 'strawberry.jpeg', 300000, 4, 'Ukuran 20x20', 8.00, '2021-06-09 18:55:15', '2021-06-27 09:32:52'),
(7, 'Chocolate Cake', 'black.jpeg', 280000, 0, 'Ukuran 20x20', 8.00, '2021-05-05 18:55:46', '2021-06-27 07:09:40'),
(9, 'Cappucino Cake', 'cappucino.jpeg', 280000, 1, 'Ukuran 20x20', 8.00, '2021-05-14 18:55:58', '2021-06-27 11:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_06_13_025103_create_barangs_table', 1),
(5, '2021_06_13_025513_create_pesanan_details_table', 1),
(6, '2021_06_13_025333_create_pesanans_table', 2),
(8, '2021_06_27_123541_transaksis', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesanans`
--

CREATE TABLE `pesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanans`
--

INSERT INTO `pesanans` (`id`, `user_id`, `tanggal`, `status`, `kode`, `jumlah_harga`, `created_at`, `updated_at`) VALUES
(36, 6, '2021-06-27', '2', 235, 250000, '2021-06-27 09:00:26', '2021-06-27 09:06:33'),
(37, 7, '2021-06-27', '2', 894, 550000, '2021-06-27 09:31:54', '2021-06-27 09:45:19'),
(38, 8, '2021-06-27', '2', 416, 860000, '2021-06-27 09:50:57', '2021-06-27 09:52:40'),
(39, 6, '2021-06-27', '2', 268, 1180000, '2021-06-27 11:57:24', '2021-06-27 11:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_details`
--

CREATE TABLE `pesanan_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `barang_id` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanan_details`
--

INSERT INTO `pesanan_details` (`id`, `barang_id`, `pesanan_id`, `jumlah`, `jumlah_harga`, `created_at`, `updated_at`) VALUES
(53, 5, 36, 1, 250000, '2021-06-27 09:00:26', '2021-06-27 09:00:26'),
(54, 1, 37, 1, 300000, '2021-06-27 09:31:54', '2021-06-27 09:31:54'),
(55, 8, 37, 1, 250000, '2021-06-27 09:32:46', '2021-06-27 09:32:46'),
(56, 10, 38, 1, 300000, '2021-06-27 09:50:57', '2021-06-27 09:50:57'),
(57, 9, 38, 2, 560000, '2021-06-27 09:51:12', '2021-06-27 09:51:12'),
(58, 9, 39, 1, 280000, '2021-06-27 11:57:24', '2021-06-27 11:57:24'),
(59, 1, 39, 1, 250000, '2021-06-27 11:57:39', '2021-06-27 11:57:39'),
(60, 4, 39, 1, 300000, '2021-06-27 11:57:52', '2021-06-27 11:57:52'),
(61, 3, 39, 1, 350000, '2021-06-27 11:58:03', '2021-06-27 11:58:03');

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti_transaksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`id`, `user_id`, `barang_id`, `pesanan_id`, `jumlah_barang`, `alamat`, `bukti_transaksi`, `created_at`, `updated_at`) VALUES
(31, 6, 5, 36, 1, 'Perumahan Wisata Semanggi', 'bri.png', '2021-06-27 09:06:33', '2021-06-27 09:06:33'),
(32, 7, 5, 36, 1, 'Lamongan', 'resi-mandiri-online.png', '2021-06-27 09:45:18', '2021-06-27 09:45:18'),
(33, 8, 5, 36, 1, 'Perumahan Wisata Semanggi', 'resi1.png', '2021-06-27 09:52:40', '2021-06-27 09:52:40'),
(34, 6, 5, 36, 1, 'Perumahan Wisata Semanggi', 'resi-mandiri-online.png', '2021-06-27 11:58:53', '2021-06-27 11:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nohp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `alamat`, `nohp`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'admin', 'admin@gmail.com', NULL, '$2y$10$sGec/zeRfMYcFzEPd6NqZOZUg9d8k.GiwN1VhYh5li6YwCJdO8Ogq', NULL, NULL, 'gCOispJ7VsVpXngmM83AM1F9Ca8hr2dNhxAF52jrW5Fk46qVxEUtISf2urSz', '2021-06-27 01:32:10', '2021-06-27 01:32:10'),
(6, 'suarti', 'suarti35@gmail.com', NULL, '$2y$10$u7KQKr3YkhT/GFBH2O5aqeK6j3vddIMuJIHb4XhhQOreYzMVxeo/q', 'Perumahan Wisata Semanggi', '085151215122', 'u5tj30vrHB9A043CsJtQ5Nvvyp2feIiiHsVEUwM26c6rOy3pPyZueG8tGd2k', '2021-06-27 08:44:06', '2021-06-27 09:01:05'),
(7, 'Ezzania', 'ezzania@gmail.com', NULL, '$2y$10$uDuGPsugsmHdphe2IiXRYueZMdhArXd3OVoQDfU9mTAPMg6Ix0GBm', 'Lamongan', '081456143298', NULL, '2021-06-27 09:31:43', '2021-06-27 09:32:30'),
(8, 'Lisa', 'lisa@gmail.com', NULL, '$2y$10$nFCBTc4.UD8Ng0qppzbIjuMnRyKDBAQ.bDztQ4F5HR60d54VPvijO', 'Perumahan Wisata Semanggi', '081100025001', NULL, '2021-06-27 09:50:27', '2021-06-27 09:52:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pesanans`
--
ALTER TABLE `pesanans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan_details`
--
ALTER TABLE `pesanan_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pesanans`
--
ALTER TABLE `pesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `pesanan_details`
--
ALTER TABLE `pesanan_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
