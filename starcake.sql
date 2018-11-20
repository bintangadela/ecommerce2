-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2018 at 05:36 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `starcake`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` int(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama_lengkap`, `username`, `password`, `status`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(10) NOT NULL,
  `judul` varchar(250) DEFAULT NULL,
  `content` text,
  `gambar` varchar(250) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `lastupdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `content`, `gambar`, `createdate`, `lastupdate`, `status`) VALUES
(1, 'kue', 'kue paling diminati :)', 'b.png', '2018-10-12 11:29:09', '2018-10-12 04:29:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` int(10) NOT NULL,
  `nama_bank` varchar(50) DEFAULT NULL,
  `nama_akun` varchar(50) DEFAULT NULL,
  `no_rekening` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id`, `nama_bank`, `nama_akun`, `no_rekening`) VALUES
(1, 'BANK BCA', 'Bintang', '8680.3634.56'),
(2, 'BANK MANDIRI', 'Adela', '8680.3634.56');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(1, 'Special Cakes'),
(2, 'Cake Slices'),
(3, 'Gist & Sweets'),
(4, 'Breads'),
(5, 'Occassions'),
(6, 'Traditional Cakes');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `id` int(10) NOT NULL,
  `order_id` int(10) DEFAULT NULL,
  `member_id` int(10) DEFAULT NULL,
  `bank_id` int(10) DEFAULT NULL,
  `tgl_transfer` datetime DEFAULT NULL,
  `nominal` float(15,2) DEFAULT NULL,
  `nama_bank` varchar(50) DEFAULT NULL,
  `nama_akun` varchar(50) DEFAULT NULL,
  `no_rekening` varchar(50) DEFAULT NULL,
  `gambar` varchar(250) DEFAULT NULL,
  `status` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`id`, `order_id`, `member_id`, `bank_id`, `tgl_transfer`, `nominal`, `nama_bank`, `nama_akun`, `no_rekening`, `gambar`, `status`) VALUES
(1, 1, 1, 1, '2018-10-21 23:40:07', 43900.00, 'BANK BCA', 'Bintang', '8680.3634.56', NULL, 2),
(2, 4, 1, 1, '2018-11-05 00:00:00', 110700.00, 'BANK BCA', 'Bintang', '8680.3634.56', 'asset/upload/0b1d2f5fcea10bac00a0eeb6566f8aa7.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(10) NOT NULL,
  `nama_lengkap` varchar(250) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL DEFAULT 'L',
  `email` varchar(50) DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `kode_pos` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` int(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `nama_lengkap`, `tgl_lahir`, `jenis_kelamin`, `email`, `telepon`, `kota`, `kode_pos`, `alamat`, `username`, `password`, `status`) VALUES
(1, 'Nathan', '2000-06-27', 'L', 'khafidli@ymail.com', '088801129001', 'Tangerang', '15143', 'Jl Rasuna Said No.55', 'member', 'aa08769cdcb26674c6706093503ff0a3', 1),
(2, 'atwinda', '0000-00-00', 'P', 'nda.kembar@yahoo.com', '021 5516521', 'tangerang', '15132', 'jl.garuda 4 no 25', 'nda.kembar@yahoo.com', 'bec2d332fb6019ca4042ceee13a68633', 1),
(3, 'fahmi', '2015-05-25', 'L', 'fahmi_the_eted@yahoo.co.id', '32435435435435', 'ertertertert', '34234234', '4545245fdgdfg', 'fahmi', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(4, 'fahmi', '2015-05-19', 'L', 'fahmi_the_eted@yahoo.co.id', '32435435435435', 'ertertertert', '34234234', 'gfgfgcg', 'user', 'e10adc3949ba59abbe56e057f20f883e', 1),
(5, 'Bintang', '1998-08-11', 'P', 'bintangadelasaris@gmail.com', '081361382655', 'medan', '20118', 'jl belanga', 'bintang', '801dc3c9e3bcd2a3cf428f3b79b312b6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(10) NOT NULL,
  `no_order` varchar(10) DEFAULT NULL,
  `tgl_order` datetime DEFAULT NULL,
  `tgl_expired` datetime DEFAULT NULL,
  `member_id` int(10) DEFAULT NULL,
  `total_order` int(15) DEFAULT '0',
  `catatan` text,
  `status` int(11) DEFAULT '1' COMMENT '1 = PENDING, 2 = COMPLETED, -1 = CANCELLED'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `no_order`, `tgl_order`, `tgl_expired`, `member_id`, `total_order`, `catatan`, `status`) VALUES
(1, 'INV000001', '2018-11-19 09:27:10', NULL, 5, 40000, 'Pelayanan yang baikk :)))', 2),
(2, 'INV000002', '2018-11-19 09:42:34', NULL, 5, 16500, 'mantapp', 1),
(3, 'INV000003', '2018-11-19 09:46:49', NULL, 5, 1000, 'mantappp', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `detail_id` int(10) NOT NULL,
  `order_id` int(10) DEFAULT NULL,
  `produk_id` int(10) DEFAULT NULL,
  `atribut_id` int(10) DEFAULT '0',
  `satuan` varchar(50) DEFAULT NULL,
  `harga` int(10) DEFAULT '0',
  `diskon` int(10) DEFAULT '0',
  `qty` int(10) NOT NULL DEFAULT '1',
  `subtotal` int(15) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`detail_id`, `order_id`, `produk_id`, `atribut_id`, `satuan`, `harga`, `diskon`, `qty`, `subtotal`) VALUES
(1, 1, 12, 3, 'PCS', 21000, 10, 1, 18900),
(2, 1, 11, 0, 'PCS', 25000, 0, 1, 25000),
(3, 2, 12, 3, 'PCS', 21000, 10, 1, 18900),
(4, 2, 11, 0, 'PCS', 25000, 0, 2, 50000),
(7, 4, 12, 3, 'PCS', 21000, 10, 3, 56700),
(8, 4, 10, 0, 'PCS', 20000, 10, 3, 54000),
(9, 5, 7, 0, 'PCS', 21000, 0, 1, 21000),
(10, 5, 11, 0, 'PCS', 25000, 0, 1, 25000),
(11, 6, 11, 0, 'PCS', 25000, 0, 2, 50000),
(12, 6, 3, 0, 'PCS', 22000, 10, 3, 59400),
(13, 7, 12, 3, 'PCS', 75000, 0, 1, 75000),
(14, 7, 11, 0, 'PCS', 2000, 0, 10, 20000),
(15, 8, 7, 0, 'pcs', 1, 0, 1, 1),
(16, 1, 18, 0, 'item', 20000, 0, 2, 40000),
(17, 2, 13, 0, 'pcs', 5500, 0, 3, 16500),
(18, 3, 17, 0, 'item', 1000, 0, 1, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(10) NOT NULL,
  `kategori_id` int(10) DEFAULT NULL,
  `kode` varchar(10) DEFAULT NULL,
  `nama` varchar(250) DEFAULT NULL,
  `keterangan_singkat` tinytext,
  `keterangan_lengkap` text,
  `gambar` varchar(250) DEFAULT NULL,
  `harga` int(10) DEFAULT NULL,
  `diskon` int(10) DEFAULT '0',
  `satuan` varchar(50) DEFAULT '0',
  `createdate` datetime DEFAULT NULL,
  `lastupdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(2) DEFAULT '1' COMMENT '1= available, 0 = non aktif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kategori_id`, `kode`, `nama`, `keterangan_singkat`, `keterangan_lengkap`, `gambar`, `harga`, `diskon`, `satuan`, `createdate`, `lastupdate`, `status`) VALUES
(1, 1, 'P000001', 'Sus Cake', 'Murah', '', 'l.png', 1000, 0, 'item', '2018-06-15 10:42:49', '2018-11-18 16:46:06', 1),
(2, 1, 'P000002', 'Brownies', 'Murah', '', 'k.png', 50000, 0, 'kotak', '2018-05-01 10:43:17', '2018-11-01 03:43:17', 1),
(3, 1, 'P000003', 'Donat', 'Murah', '', 'j.png', 2000, 0, 'item', '2018-05-01 10:43:36', '2018-05-01 03:44:49', 1),
(4, 1, 'P000004', 'Bread Slices', 'Murah', '', 'a.jpg', 1500, 0, 'slice', '2018-12-01 10:43:52', '2018-11-18 15:25:00', 1),
(5, 5, 'P000005', 'Sweet Delights', 'Lezat', '', 'd.png', 500000, 0, 'item', '2018-12-11 10:44:14', '2018-11-18 14:39:04', 1),
(6, 1, 'P000006', 'Cupcake', 'Murah', '', 'j.jpg', 3000, 0, 'item', '2018-09-01 10:45:15', '2018-12-01 03:45:15', 1),
(7, 1, 'P000007', 'Wedding Cake', 'Murah & Lezat', '', 'i.jpg', 1000000, 0, 'item', '2018-05-01 10:45:35', '2018-11-18 15:17:06', 1),
(8, 1, 'P000008', 'Christmas Cake', 'Murah', '', 'h1.png', 200000, 0, 'item', '2018-11-01 10:46:41', '2018-11-18 15:05:03', 1),
(9, 1, 'P000009', 'Mint Cake', 'Murah', '', 'g.png', 100000, 0, 'item', '2018-05-01 10:47:09', '2018-11-01 03:47:09', 1),
(10, 1, 'P000010', 'Choco Cake', 'Murah', '', 'f.png', 150000, 0, 'item', '2018-05-01 10:47:39', '2018-11-01 03:47:39', 1),
(13, 3, 'P000013', 'Sweet Potato Cake', 'Murah', '', 'c.png', 5500, 0, 'pcs', '2018-12-01 10:49:28', '2018-12-01 03:49:28', 1),
(14, 4, 'P000014', 'Bread Slices', 'Murah', '', 'a.jpg', 1500, 0, 'pcs', '2018-12-01 10:49:58', '2018-11-18 12:53:33', 1),
(15, 6, 'P000015', 'Onde-onde', 'Murah', '', 'm.jpg', 1000, 0, 'item', '2018-11-18 23:54:16', '2018-11-18 16:54:16', 1),
(16, 6, 'P000016', 'Lapis Sagu Santan', 'Murah', '', 'n.jpg', 1000, 0, 'item', '2018-11-18 23:56:39', '2018-11-18 16:56:39', 1),
(17, 6, 'P000017', 'Ape Pandan', 'Murah', '', 'o.jpg', 1000, 0, 'item', '2018-11-18 23:58:35', '2018-11-18 16:58:35', 1),
(18, 4, 'P000018', 'the fluffiest white bread', 'lezat', '', 'p.png', 20000, 0, 'item', '2018-11-19 00:01:47', '2018-11-18 17:01:47', 1),
(19, 2, 'P000019', 'Red Velvet', '', '&lt;p&gt;LEZAT&lt;/p&gt;', 'b.png', 200000, 10, 'item', '2018-11-19 12:14:04', '2018-11-19 05:14:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `produk_atribut`
--

CREATE TABLE `produk_atribut` (
  `id` int(10) NOT NULL,
  `produk_id` int(10) NOT NULL DEFAULT '0',
  `nama` varchar(50) DEFAULT NULL,
  `harga` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_atribut`
--

INSERT INTO `produk_atribut` (`id`, `produk_id`, `nama`, `harga`) VALUES
(3, 12, 'Rasa Coklat', 75000),
(4, 12, 'Rasa Strawbery', 75000);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(10) NOT NULL,
  `member_id` int(10) NOT NULL DEFAULT '0',
  `komentar` text NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `member_id`, `komentar`, `createdate`, `status`) VALUES
(1, 1, 'Saya selalu beli kue ultah\rdisini, selain harganya murah \rjuga rasanya enak\rT.O.P banget (^^) ', '2018-11-20 00:03:46', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk_atribut`
--
ALTER TABLE `produk_atribut`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `detail_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `produk_atribut`
--
ALTER TABLE `produk_atribut`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
