-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2022 at 04:06 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4ever`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_receipt`
--

CREATE TABLE `detail_receipt` (
  `id` int(11) NOT NULL,
  `id_receipt` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(128) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `harga` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_receipt`
--

INSERT INTO `detail_receipt` (`id`, `id_receipt`, `id_produk`, `nama_produk`, `jumlah`, `harga`) VALUES
(1, 1, 3, 'Bouquet', 1, 2000000),
(2, 1, 16, 'Vas Bunga', 1, 700000),
(3, 1, 5, 'Fleur', 1, 1500000);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(1, 'Bouquet'),
(2, 'Fleur'),
(3, 'Dekorasi'),
(4, 'Vas');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `produk` varchar(128) NOT NULL,
  `keterangan` varchar(256) NOT NULL,
  `kategori` varchar(128) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `produk`, `keterangan`, `kategori`, `harga`, `stok`, `image`) VALUES
(1, 'Bouquet', 'Summery Bouquet', 'Bouquet', 1500000, 500, 'buket.jpg'),
(2, 'Bouquet', 'Madison Bouquet', 'Bouquet', 1350000, 200, 'buket1.jpg'),
(3, 'Bouquet', 'Hero Lily Bouquet', 'Bouquet', 2000000, 300, 'buket2.jpg'),
(4, 'Bouquet', 'Blooming Sunshine Bouquet', 'Bouquet', 2200000, 150, 'buket3.jpg'),
(5, 'Fleur', 'Red Velvet Fleur', 'Fleur', 1500000, 150, 'fleur.jpg'),
(6, 'Fleur', 'Chloe Sharing Box Fleur', 'Fleur', 500000, 399, 'fleur1.jpg'),
(7, 'Fleur', 'Happy Petals Bloom Box Fleur', 'Fleur', 1000000, 200, 'fleur2.jpg'),
(8, 'Fleur', 'The English Box Fleur', 'Fleur', 750000, 300, 'fleur3.jpg'),
(9, 'Bunga Dekorasi', 'Frozen White Decoration for Wedding', 'Dekorasi', 11500000, 999, 'dekor1.jpg'),
(10, 'Bunga Dekorasi', 'Rainbow Flowers Wedding Decoration', 'Dekorasi', 15500000, 999, 'dekor2.jpg'),
(11, 'Bunga Dekorasi', 'Flower Decoration for Funeral', 'Dekorasi', 8500000, 999, 'dekor3.jpg'),
(12, 'Bunga Dekorasi', 'Special Event Flower Decoration', 'Dekorasi', 9500000, 999, 'dekor4.jpg'),
(13, 'Vas Bunga', 'Wooden Vase', 'Vas', 500000, 400, 'vas.jpg'),
(14, 'Vas Bunga', 'Wooden Black Vase', 'Vas', 550000, 200, 'vas1.jpg'),
(15, 'Vas Bunga', 'Bloody Red Acrylic Vase', 'Vas', 650000, 200, 'vas2.jpg'),
(16, 'Vas Bunga', 'Bloody Red Glass Vase', 'Vas', 700000, 150, 'vas3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `id` int(11) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `alamat` varchar(256) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Muhammad Gunawan', 'Karadenan, Bogor, Jawa Barat', '2022-11-25 09:10:57', '2022-11-26 09:10:57');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `tanggal_input` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `image`, `password`, `role_id`, `is_active`, `tanggal_input`) VALUES
(1, 'Gunawan', '12211015@bsi.ac.id', 'default.png', '$2y$10$7OQkEv1gpU2j6Krdt0qwoubsDA9Q7bCL8CJRIqVxOA2awsv.ySX9O', 2, 1, 1669290389),
(3, 'Admin Gun', 'admin123@gmail.com', 'default.png', '$2y$10$ZM1Jmhh.CkDTIEzDDRyC7enYzPaIfHb/DSGAEBZeQsOohF6BBd6wi', 1, 1, 1669343760);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_receipt`
--
ALTER TABLE `detail_receipt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_receipt`
--
ALTER TABLE `detail_receipt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
