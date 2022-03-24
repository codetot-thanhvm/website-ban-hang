-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2021 at 08:15 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_mvc_banhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminPass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(4, 'admin', 'admin@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_binhluan`
--

CREATE TABLE `tbl_binhluan` (
  `id_binhluan` int(11) NOT NULL,
  `ten_kh` varchar(50) NOT NULL,
  `sdt_kh` varchar(15) NOT NULL,
  `noidung` varchar(500) NOT NULL,
  `danhgia` int(2) NOT NULL,
  `trangthai` varchar(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_binhluan`
--

INSERT INTO `tbl_binhluan` (`id_binhluan`, `ten_kh`, `sdt_kh`, `noidung`, `danhgia`, `trangthai`) VALUES
(3, 'Vũ thanh', '0976694877', 'tôi không thích cách shop phục vụ khách hàng như tôi', 1, '1'),
(4, 'thanh minh', '0912334567', 'Tôi không được hỗ trợ tận tâm', 1, '1'),
(5, 'Tha Vu', '0912334567', 'Thật không thể chấp nhận được những hành vi phục vụ khách hàng không chu đáo ở shop\r\n', 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(16, 'F.O.G'),
(17, 'INF'),
(18, 'ARTIE'),
(19, 'POY'),
(20, 'LUONVUITUOI'),
(21, 'GUNCI'),
(22, 'ODVY'),
(23, 'ALSITA'),
(24, 'BOTTOM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(42, 34, '0qgu5db6n3rs1ss2qghe3njb32', 'Basic Coach Jacket', '480000', 1, '5ff208e479.jpg'),
(46, 42, '8kj7odmd2ffp1t9bamv0pa8n15', 'ADMIN TEST111', '600000', 1, '858267b035.jpg'),
(48, 50, '5v8itahqdfit1jhd0v5a2b8aip', 'upload', '600000', 1, 'bcbccac28a.jpg'),
(49, 50, '90bc8geqmjorosfvlq6d3gpai4', 'upload', '600000', 1, 'bcbccac28a.jpg'),
(50, 37, '90bc8geqmjorosfvlq6d3gpai4', 'Fear Of God ABC Hoodie', '680000', 1, '19ac978448.jpg'),
(52, 35, 's18av57inb9dhhftpcf9qisg38', 'ODVY Vision Varsity Jacket', '980000', 1, '76bb5211f2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(20, 'Áo'),
(21, 'Quần'),
(26, 'Phụ kiện');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chitietnhapkho`
--

CREATE TABLE `tbl_chitietnhapkho` (
  `id_chitietnhapkho` int(50) NOT NULL,
  `id_nhapkho` int(50) NOT NULL,
  `id_nvl` int(50) NOT NULL,
  `sl_nvl` int(50) NOT NULL,
  `ten_sp` varchar(50) NOT NULL,
  `img_sp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_chitietnhapkho`
--

INSERT INTO `tbl_chitietnhapkho` (`id_chitietnhapkho`, `id_nhapkho`, `id_nvl`, `sl_nvl`, `ten_sp`, `img_sp`) VALUES
(3, 10, 44, 1, 'test hình ảnh', '55449166bb.jpg'),
(4, 10, 39, 1, 'F.O.G Essentials', '67bdea731e.jpg'),
(5, 10, 31, 1, 'Essentials Half Zipper Sweater', '55f1cb06b0.jpg'),
(6, 10, 30, 1, 'F.O.G Essentials Bomber Jacket', 'ao1.jpg'),
(7, 10, 44, 1, 'test hình ảnh', '55449166bb.jpg'),
(8, 10, 39, 1, 'F.O.G Essentials', '67bdea731e.jpg'),
(9, 10, 31, 1, 'Essentials Half Zipper Sweater', '55f1cb06b0.jpg'),
(10, 10, 30, 1, 'F.O.G Essentials Bomber Jacket', 'ao1.jpg'),
(11, 14, 44, 1, 'test hình ảnh', '55449166bb.jpg'),
(12, 15, 31, 1, 'Essentials Half Zipper Sweater', '55f1cb06b0.jpg'),
(13, 16, 44, 1, 'test hình ảnh', '55449166bb.jpg'),
(14, 16, 36, 1, 'INF Out Of Space Shirt', 'd4fb9ef16c.jpg'),
(15, 16, 31, 1, 'Essentials Half Zipper Sweater', '55f1cb06b0.jpg'),
(16, 16, 30, 1, 'F.O.G Essentials Bomber Jacket', 'ao1.jpg'),
(17, 17, 44, 6, 'test hình ảnh', '55449166bb.jpg'),
(18, 18, 91, 2, 'Remakes Oversize Shirt', '9f03e68c00.jpg'),
(19, 19, 94, 20, 'ODVY Blackened Varsity Jacket', 'f8b6bf5da4.jpg'),
(20, 19, 95, 20, 'Crazy Varsity Jacket', '3faaf458f2.jpg'),
(21, 19, 93, 15, 'Line Track Pant With Zipper', 'b27125cf50.jpg'),
(22, 19, 91, 10, 'Remakes Oversize Shirt', '9f03e68c00.jpg'),
(23, 19, 86, 20, 'Natural Oversize Shirt', '005b369b2d.jpg'),
(24, 19, 87, 50, 'Oversize Retro Shirt', '46307dbee3.jpg'),
(25, 20, 95, 1, 'Crazy Varsity Jacket', '3faaf458f2.jpg'),
(26, 20, 94, 1, 'ODVY Blackened Varsity Jacket', 'f8b6bf5da4.jpg'),
(27, 20, 93, 1, 'Line Track Pant With Zipper', 'b27125cf50.jpg'),
(28, 20, 92, 1, 'The Trip Oversize Shirt', '0db6d7d1be.jpg'),
(29, 20, 91, 1, 'Remakes Oversize Shirt', '9f03e68c00.jpg'),
(30, 20, 90, 1, 'Regular Plaid Pants', '98cb7833dc.jpg'),
(31, 20, 89, 1, 'Prayer Oversize T-shirt', '2f0f9f6834.jpg'),
(32, 20, 88, 1, 'Peace World Oversize Shirt', '3c430179d8.jpg'),
(33, 20, 87, 1, 'Oversize Retro Shirt', '46307dbee3.jpg'),
(34, 20, 86, 1, 'Natural Oversize Shirt', '005b369b2d.jpg'),
(35, 20, 85, 1, 'Miror Oversize T-shirt', '22211c2205.jpg'),
(36, 20, 84, 1, 'INF Graddient Rabbit T-shirt', '80132a04fa.jpg'),
(37, 20, 83, 1, 'INF Follow Heard Shirt', 'a92df97b28.jpg'),
(38, 20, 82, 1, 'INF Earth Song Regular Trousers', '6598984169.jpg'),
(39, 20, 81, 1, 'Dynamic Lion T-shirt', '4b353d3547.jpg'),
(40, 20, 80, 1, 'Essentials Half Zipper Sweater', '7ce81a9b05.jpg'),
(41, 20, 79, 1, 'Cotton Line Track Pant', 'e6e54e72de.jpg'),
(42, 21, 95, 3, 'Crazy Varsity Jacket', '3faaf458f2.jpg'),
(43, 21, 94, 3, 'ODVY Blackened Varsity Jacket', 'f8b6bf5da4.jpg'),
(44, 21, 93, 5, 'Line Track Pant With Zipper', 'b27125cf50.jpg'),
(45, 21, 92, 5, 'The Trip Oversize Shirt', '0db6d7d1be.jpg'),
(46, 21, 91, 5, 'Remakes Oversize Shirt', '9f03e68c00.jpg'),
(47, 21, 90, 5, 'Regular Plaid Pants', '98cb7833dc.jpg'),
(48, 21, 89, 8, 'Prayer Oversize T-shirt', '2f0f9f6834.jpg'),
(49, 21, 88, 2, 'Peace World Oversize Shirt', '3c430179d8.jpg'),
(50, 21, 77, 6, 'Cargo Slim Fit Pant', 'a0fc9c4869.jpg'),
(51, 21, 86, 6, 'Natural Oversize Shirt', '005b369b2d.jpg'),
(52, 21, 85, 1, 'Miror Oversize T-shirt', '22211c2205.jpg'),
(53, 21, 84, 1, 'INF Graddient Rabbit T-shirt', '80132a04fa.jpg'),
(54, 21, 83, 1, 'INF Follow Heard Shirt', 'a92df97b28.jpg'),
(55, 21, 82, 1, 'INF Earth Song Regular Trousers', '6598984169.jpg'),
(56, 21, 81, 1, 'Dynamic Lion T-shirt', '4b353d3547.jpg'),
(57, 21, 80, 1, 'Essentials Half Zipper Sweater', '7ce81a9b05.jpg'),
(58, 21, 79, 1, 'Cotton Line Track Pant', 'e6e54e72de.jpg'),
(59, 21, 78, 1, 'Casual Baggy Slim Fit Jean', '2966b75c2e.jpg'),
(60, 21, 77, 6, 'Cargo Slim Fit Pant', 'a0fc9c4869.jpg'),
(61, 21, 92, 5, 'The Trip Oversize Shirt', '0db6d7d1be.jpg'),
(62, 21, 75, 1, 'Buttoned Cargo Pant', '4c73de44ef.jpg'),
(63, 21, 74, 1, 'Buttoned – Leg Jean', '509626213e.jpg'),
(64, 21, 73, 1, 'Button Leg Short Pant', 'b635bb6116.jpg'),
(65, 22, 51, 1, 'Ripped Fray Jeans', 'ac38335da0.jpg'),
(66, 22, 52, 1, 'ARTIE Basic Hoodie.', '3d5a704213.jpg'),
(67, 22, 53, 1, 'Artie Basic Regular Pant', 'ec61aa78e8.jpg'),
(68, 22, 54, 1, 'ARTIE Basic Tee', '4c347b0dbe.jpg'),
(69, 22, 56, 1, 'ARTIE Border Cut T-shirt', '4562650f13.jpg'),
(70, 22, 57, 1, 'ARTIE Buttoned-Leg Jogger Pant', 'da26f6cb1e.jpg'),
(71, 22, 58, 1, 'ARTIE Jogger Track Pant', 'c87809fbec.jpg'),
(72, 22, 59, 1, 'ARTIE Oversize Wash Pocket T-shirt', 'b31f9c262d.jpg'),
(73, 22, 60, 1, 'ARTIE Patch Regular Pant', 'eeb5f928fe.jpg'),
(74, 22, 61, 1, 'ARTIE Regular Cotton Short – Black', '466c80e332.jpg'),
(75, 22, 62, 1, 'ARTIE Regular Cotton Short – Light Grey', '05e71141b6.jpg'),
(76, 22, 63, 1, 'ALSITA Regular Cotton Short – Dark Grey', 'bb00ff976f.jpg'),
(77, 22, 64, 1, 'ARTIE Ripped Cotton Short – Black', 'ae347c0053.jpg'),
(78, 22, 65, 1, 'ARTIE Ripped Cotton Short – Old Green', '6ad7fbba7f.jpg'),
(79, 22, 66, 1, 'ARTIE Ripped Oversize T-shirt', '2f683abe96.jpg'),
(80, 22, 67, 1, 'Tye Die Long Sleeves', 'c8c0144999.jpg'),
(81, 22, 68, 1, 'POY Upside Down Long Sleeves', '37a37da301.jpg'),
(82, 22, 70, 1, 'Barbeux Varsity Jacket', '974590a897.jpg'),
(83, 22, 71, 1, 'Basic Coach Jacket', 'ab99de5244.jpg'),
(84, 22, 72, 1, 'Basic Skinny Jean', '6b958d329c.jpg'),
(85, 22, 73, 1, 'Button Leg Short Pant', 'b635bb6116.jpg'),
(86, 22, 74, 1, 'Buttoned – Leg Jean', '509626213e.jpg'),
(87, 22, 75, 1, 'Buttoned Cargo Pant', '4c73de44ef.jpg'),
(88, 22, 76, 1, 'Buttoned Track Pant', '6b0531b6d5.jpg'),
(89, 22, 77, 1, 'Cargo Slim Fit Pant', 'a0fc9c4869.jpg'),
(90, 22, 78, 1, 'Casual Baggy Slim Fit Jean', '2966b75c2e.jpg'),
(91, 22, 79, 1, 'Cotton Line Track Pant', 'e6e54e72de.jpg'),
(92, 22, 80, 1, 'Essentials Half Zipper Sweater', '7ce81a9b05.jpg'),
(93, 22, 81, 1, 'Dynamic Lion T-shirt', '4b353d3547.jpg'),
(94, 22, 82, 1, 'INF Earth Song Regular Trousers', '6598984169.jpg'),
(95, 22, 83, 1, 'INF Follow Heard Shirt', 'a92df97b28.jpg'),
(96, 22, 84, 1, 'INF Graddient Rabbit T-shirt', '80132a04fa.jpg'),
(97, 22, 85, 1, 'Miror Oversize T-shirt', '22211c2205.jpg'),
(98, 22, 86, 1, 'Natural Oversize Shirt', '005b369b2d.jpg'),
(99, 23, 95, 2, 'Crazy Varsity Jacket', '3faaf458f2.jpg'),
(100, 23, 94, 2, 'ODVY Blackened Varsity Jacket', 'f8b6bf5da4.jpg'),
(101, 23, 93, 4, 'Line Track Pant With Zipper', 'b27125cf50.jpg'),
(102, 23, 92, 3, 'The Trip Oversize Shirt', '0db6d7d1be.jpg'),
(103, 23, 51, 1, 'Ripped Fray Jeans', 'ac38335da0.jpg'),
(104, 23, 52, 1, 'ARTIE Basic Hoodie.', '3d5a704213.jpg'),
(105, 23, 53, 1, 'Artie Basic Regular Pant', 'ec61aa78e8.jpg'),
(106, 23, 54, 1, 'ARTIE Basic Tee', '4c347b0dbe.jpg'),
(107, 23, 56, 1, 'ARTIE Border Cut T-shirt', '4562650f13.jpg'),
(108, 23, 57, 1, 'ARTIE Buttoned-Leg Jogger Pant', 'da26f6cb1e.jpg'),
(109, 23, 58, 1, 'ARTIE Jogger Track Pant', 'c87809fbec.jpg'),
(110, 23, 59, 1, 'ARTIE Oversize Wash Pocket T-shirt', 'b31f9c262d.jpg'),
(111, 23, 60, 1, 'ARTIE Patch Regular Pant', 'eeb5f928fe.jpg'),
(112, 23, 61, 1, 'ARTIE Regular Cotton Short – Black', '466c80e332.jpg'),
(113, 23, 62, 1, 'ARTIE Regular Cotton Short – Light Grey', '05e71141b6.jpg'),
(114, 23, 63, 1, 'ALSITA Regular Cotton Short – Dark Grey', 'bb00ff976f.jpg'),
(115, 23, 64, 1, 'ARTIE Ripped Cotton Short – Black', 'ae347c0053.jpg'),
(116, 23, 65, 1, 'ARTIE Ripped Cotton Short – Old Green', '6ad7fbba7f.jpg'),
(117, 24, 95, 1, 'Crazy Varsity Jacket', '3faaf458f2.jpg'),
(118, 24, 94, 1, 'ODVY Blackened Varsity Jacket', 'f8b6bf5da4.jpg'),
(119, 24, 93, 1, 'Line Track Pant With Zipper', 'b27125cf50.jpg'),
(120, 24, 92, 1, 'The Trip Oversize Shirt', '0db6d7d1be.jpg'),
(121, 24, 91, 1, 'Remakes Oversize Shirt', '9f03e68c00.jpg'),
(122, 24, 90, 1, 'Regular Plaid Pants', '98cb7833dc.jpg'),
(123, 24, 89, 1, 'Prayer Oversize T-shirt', '2f0f9f6834.jpg'),
(124, 24, 88, 1, 'Peace World Oversize Shirt', '3c430179d8.jpg'),
(125, 24, 87, 1, 'Oversize Retro Shirt', '46307dbee3.jpg'),
(126, 24, 86, 1, 'Natural Oversize Shirt', '005b369b2d.jpg'),
(127, 24, 85, 1, 'Miror Oversize T-shirt', '22211c2205.jpg'),
(128, 24, 84, 1, 'INF Graddient Rabbit T-shirt', '80132a04fa.jpg'),
(129, 24, 83, 1, 'INF Follow Heard Shirt', 'a92df97b28.jpg'),
(130, 24, 82, 1, 'INF Earth Song Regular Trousers', '6598984169.jpg'),
(131, 24, 81, 1, 'Dynamic Lion T-shirt', '4b353d3547.jpg'),
(132, 24, 80, 1, 'Essentials Half Zipper Sweater', '7ce81a9b05.jpg'),
(133, 24, 79, 1, 'Cotton Line Track Pant', 'e6e54e72de.jpg'),
(134, 24, 78, 1, 'Casual Baggy Slim Fit Jean', '2966b75c2e.jpg'),
(135, 24, 77, 1, 'Cargo Slim Fit Pant', 'a0fc9c4869.jpg'),
(136, 24, 76, 1, 'Buttoned Track Pant', '6b0531b6d5.jpg'),
(137, 24, 75, 1, 'Buttoned Cargo Pant', '4c73de44ef.jpg'),
(138, 24, 74, 1, 'Buttoned – Leg Jean', '509626213e.jpg'),
(139, 24, 73, 1, 'Button Leg Short Pant', 'b635bb6116.jpg'),
(140, 24, 72, 1, 'Basic Skinny Jean', '6b958d329c.jpg'),
(141, 24, 71, 1, 'Basic Coach Jacket', 'ab99de5244.jpg'),
(142, 24, 70, 1, 'Barbeux Varsity Jacket', '974590a897.jpg'),
(143, 24, 68, 1, 'POY Upside Down Long Sleeves', '37a37da301.jpg'),
(144, 24, 67, 1, 'Tye Die Long Sleeves', 'c8c0144999.jpg'),
(145, 24, 66, 1, 'ARTIE Ripped Oversize T-shirt', '2f683abe96.jpg'),
(146, 24, 65, 1, 'ARTIE Ripped Cotton Short – Old Green', '6ad7fbba7f.jpg'),
(147, 24, 64, 1, 'ARTIE Ripped Cotton Short – Black', 'ae347c0053.jpg'),
(148, 24, 63, 1, 'ALSITA Regular Cotton Short – Dark Grey', 'bb00ff976f.jpg'),
(149, 24, 62, 1, 'ARTIE Regular Cotton Short – Light Grey', '05e71141b6.jpg'),
(150, 24, 61, 1, 'ARTIE Regular Cotton Short – Black', '466c80e332.jpg'),
(151, 24, 60, 1, 'ARTIE Patch Regular Pant', 'eeb5f928fe.jpg'),
(152, 24, 59, 1, 'ARTIE Oversize Wash Pocket T-shirt', 'b31f9c262d.jpg'),
(153, 24, 58, 1, 'ARTIE Jogger Track Pant', 'c87809fbec.jpg'),
(154, 24, 57, 1, 'ARTIE Buttoned-Leg Jogger Pant', 'da26f6cb1e.jpg'),
(155, 24, 56, 1, 'ARTIE Border Cut T-shirt', '4562650f13.jpg'),
(156, 24, 54, 1, 'ARTIE Basic Tee', '4c347b0dbe.jpg'),
(157, 24, 53, 1, 'Artie Basic Regular Pant', 'ec61aa78e8.jpg'),
(158, 24, 52, 1, 'ARTIE Basic Hoodie.', '3d5a704213.jpg'),
(159, 24, 51, 1, 'Ripped Fray Jeans', 'ac38335da0.jpg'),
(160, 25, 51, 1, 'Ripped Fray Jeans', 'ac38335da0.jpg'),
(161, 26, 87, 20, 'Oversize Retro Shirt', '46307dbee3.jpg'),
(162, 26, 94, 21, 'ODVY Blackened Varsity Jacket', 'f8b6bf5da4.jpg'),
(163, 26, 95, 12, 'Crazy Varsity Jacket', '3faaf458f2.jpg'),
(164, 26, 93, 21, 'Line Track Pant With Zipper', 'b27125cf50.jpg'),
(165, 26, 92, 21, 'The Trip Oversize Shirt', '0db6d7d1be.jpg'),
(166, 26, 91, 21, 'Remakes Oversize Shirt', '9f03e68c00.jpg'),
(167, 26, 53, 12, 'Artie Basic Regular Pant', 'ec61aa78e8.jpg'),
(168, 26, 52, 121, 'ARTIE Basic Hoodie.', '3d5a704213.jpg'),
(169, 27, 92, 1, 'The Trip Oversize Shirt', '0db6d7d1be.jpg'),
(170, 27, 91, 1, 'Remakes Oversize Shirt', '9f03e68c00.jpg'),
(171, 27, 90, 1, 'Regular Plaid Pants', '98cb7833dc.jpg'),
(172, 27, 59, 1, 'ARTIE Oversize Wash Pocket T-shirt', 'b31f9c262d.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `phone`, `email`, `password`) VALUES
(6, 'Hiếu Programming ', 'Số 1 Lê Duẩn, Bến Nghé, Quận 1, Hiệp Thành,Quận 12', 'Thành phố Hồ Chí Minh', '0932023992', 'truongngoctanhieu2018@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(7, 'Vũ Minh Tha', 'songtrongnoiso@gmail.com', 'Hà Nội', '0976694877', 'songtrongnoiso@gmail.com', '4297f44b13955235245b2497399d7a93'),
(8, 'Vũ Minh Thanh', 'Cách cổng làng Trung hậu đông 100m, Tiền phong, Mê Linh, Hà Nội', 'Hà Nội', '0976694877', 'song@gmail.com', '4297f44b13955235245b2497399d7a93'),
(9, 'Vũ Minh Thành', 'Cách cổng làng Trung hậu đông 100m, Tiền phong, Mê Linh, Hà Nội', 'Hà Nội', '0976694877', 'songtrongnoiso1@gmail.com', '4297f44b13955235245b2497399d7a93'),
(10, 'Vũ Minh Thành', 'Cách cổng làng Trung hậu đông 100m, Tiền phong, Mê Linh, Hà Nội', 'Hà Nội', '0976694877', 'songtrongnoiso123@gmail.com', '4297f44b13955235245b2497399d7a93'),
(11, 'Nguyễn văn A', 'Cổng Trường DH Mỏ - Địa Chất, Cổ nhuế, Hà nội', 'Hà Nội', '0923412342', 'chongiaubimat@gmail.com', '4297f44b13955235245b2497399d7a93');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nhapkho`
--

CREATE TABLE `tbl_nhapkho` (
  `id_nhapkho` int(50) NOT NULL,
  `ten_nhapkho` varchar(50) NOT NULL,
  `ngay_nhapkho` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_nhapkho`
--

INSERT INTO `tbl_nhapkho` (`id_nhapkho`, `ten_nhapkho`, `ngay_nhapkho`) VALUES
(20, 'Đơn hàng đầu tiên', '2021-11-27'),
(21, 'Đơn hàng thứ 2', '2021-11-27'),
(22, 'Đơn hàng đầu giờ chiều', '2021-11-27'),
(23, 'đơn hàng quận nhất', '2021-11-27'),
(24, 'đơn hàng thứ 5', '2021-11-27'),
(25, 'quần jeans', '2021-11-27'),
(26, 'đơn hàng OK', '2021-11-27'),
(27, 'Đơn hàng hết hàng', '2021-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(86, 73, 'Button Leg Short Pant', 10, 4, '1800000', 'b635bb6116.jpg', 1, '2021-11-29 10:54:27'),
(87, 73, 'Button Leg Short Pant', 10, 4, '1800000', 'b635bb6116.jpg', 1, '2021-11-29 10:56:04'),
(88, 59, 'ARTIE Oversize Wash Pocket T-shirt', 10, 1, '280000', 'b31f9c262d.jpg', 1, '2021-11-29 10:56:04'),
(93, 90, 'Regular Plaid Pants', 7, 1, '620000', '98cb7833dc.jpg', 0, '2021-12-16 20:02:31'),
(94, 80, 'Essentials Half Zipper Sweater', 7, 1, '580000', '7ce81a9b05.jpg', 0, '2021-12-16 20:02:31'),
(95, 92, 'The Trip Oversize Shirt', 7, 1, '520000', '0db6d7d1be.jpg', 2, '2021-12-16 20:02:31'),
(96, 82, 'INF Earth Song Regular Trousers', 11, 1, '450000', '6598984169.jpg', 2, '2021-12-19 00:53:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productQuantity` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_soldout` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(50) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`, `soluong`) VALUES
(51, 'Ripped Fray Jeans', '', '', '0', '', 21, 22, '<p><span>T&ecirc;n sản phẩm: Ripped Fray Jeans.</span><br /><span>Size: S / M / L / XL tương ứng 28/ 30 / 32 / 34.</span><br /><span>Chất liệu: Denim cotton.</span></p>', 1, '450000', 'ac38335da0.jpg', 5),
(52, 'ARTIE Basic Hoodie.', '', '', '0', '', 20, 18, '<p><span>Chất liệu: Nỉ l&oacute;t b&ocirc;ng d&agrave;y dặn 350g.</span><br /><span>? Hướng dẫn giặt:</span><br /><span>Sản phẩm c&oacute; thể giặt m&aacute;y.</span><br /><span>Để m&agrave;u vải bền hơn, bạn n&ecirc;n giặt tay hoặc giặt m&aacute;y ở chế độ vừa phải, , tr&aacute;nh giặt sấy kh&ocirc; sẽ l&agrave;m sợi cotton bị co.</span></p>', 1, '450000', '3d5a704213.jpg', 126),
(53, 'Artie Basic Regular Pant', '', '', '0', '', 21, 24, '<p><span>Quần nỉ ống xu&ocirc;ng của nh&agrave; Artie , form rộng r&atilde;i thoải m&aacute;i , chất liệu nỉ da c&aacute; mềm mại v&agrave; thấm mồ h&ocirc;i tốt.</span></p>', 1, '480000', 'ec61aa78e8.jpg', 18),
(54, 'ARTIE Basic Tee', '', '', '0', '', 20, 18, '<p>Mẫu basic tee 2021 đầu ti&ecirc;n đến từ nh&agrave; ARTIE, chất liệu cotton v&ocirc; c&ugrave;ng d&agrave;y dặn ( 250g ) .</p>\r\n<p>Size Ch&acirc;u &Acirc;u rộng r&atilde;i thoải m&aacute;i, fit từ 50-85kg.</p>', 1, '250000', '4c347b0dbe.jpg', 8),
(55, 'ARTIE Basic Wash Long Sleeves', '', '', '0', '', 0, 18, '<p><span>T&ecirc;n sản phẩm: ARTIE Basic Wash Long Sleeves.</span><br /><span>Size: M / L / XL us.</span><br /><span>Chất liệu: Cotton.</span><br /><span>? Hướng dẫn giặt:</span><br /><span>Sản phẩm c&oacute; thể giặt m&aacute;y.</span><br /><span>Để m&agrave;u vải bền hơn, bạn n&ecirc;n giặt tay hoặc giặt m&aacute;y ở chế độ vừa phải, , tr&aacute;nh giặt sấy kh&ocirc; sẽ l&agrave;m sợi cotton bị co.</span></p>', 1, '380000', 'f308bce883.jpg', 5),
(56, 'ARTIE Border Cut T-shirt', '', '', '0', '', 20, 18, '<p><span>Mẫu &aacute;o basic tee mới từ nh&agrave; ARTIE</span><br /><span>Vi&ecirc;n kh&ocirc;ng vắt sổ</span><br /><span>Chất liệu: 100% cotton.</span><br /><span>Miễn ph&iacute; đổi trả trong v&ograve;ng 5 ng&agrave;y.</span></p>', 1, '280000', '4562650f13.jpg', 4),
(57, 'ARTIE Buttoned-Leg Jogger Pant', '', '', '0', '', 21, 18, '<p><span>Mẫu quần nỉ mới nhất từ nh&agrave; ARTIE, chất lượng vẫn tuyệt vời như mọi khi.</span><br /><span>Quần c&oacute; khuy bấm chắc chắn ở ống.</span><br /><span>Th&ocirc;ng tin sản phẩm:</span><br /><span>Size: S / M / L / XL tương ứng 28/30/32/34.</span><br /><span>Chất liệu : Cotton da c&aacute;.</span><br /><span>M&agrave;u: N&acirc;u/ Đen / X&aacute;m đen.</span></p>', 1, '580000', 'da26f6cb1e.jpg', 4),
(58, 'ARTIE Jogger Track Pant', '', '', '0', '', 21, 18, '<p><span>T&ecirc;n sản phẩm: ARTIE Jogger Track Pant.</span><br /><span>Size: S / M / L / XL us.</span><br /><span>Chất liệu: Nỉ da c&aacute;</span><br /><span>? Hướng dẫn giặt:</span><br /><span>Sản phẩm c&oacute; thể giặt m&aacute;y hoặc giặt tay, tr&aacute;nh giặt sấy kh&ocirc; sẽ l&agrave;m sợi cotton bị co.</span></p>', 1, '620000', 'c87809fbec.jpg', 7),
(59, 'ARTIE Oversize Wash Pocket T-shirt', '', '', '0', '', 20, 18, '<p><span>Áo ph&ocirc;ng oversize tay lỡ có túi ngực đ&ecirc;́n từ nhà ARTIE</span><br /><span>Ch&acirc;́t li&ecirc;̣u 100% cotton dày dặn.</span></p>', 1, '280000', 'b31f9c262d.jpg', 0),
(60, 'ARTIE Patch Regular Pant', '', '', '0', '', 21, 18, '<p><span>Th&ocirc;ng tin:</span><br /><span>T&ecirc;n sản phẩm: ARTIE Patch Regular Pant</span><br /><span>Size: S / M / L / XL us.</span><br /><span>Chất liệu: Nỉ da c&aacute; được xử l&yacute; wash.</span><br /><span>? Hướng dẫn giặt:</span><br /><span>Sản phẩm c&oacute; thể giặt m&aacute;y hoặc giặt tay, tr&aacute;nh giặt sấy kh&ocirc; sẽ l&agrave;m sợi cotton bị co.</span></p>', 1, '620000', 'eeb5f928fe.jpg', 2),
(61, 'ARTIE Regular Cotton Short – Black', '', '', '0', '', 21, 18, '<p><span>Qu&acirc;̀n short cotton cao c&acirc;́p từ ARTIE.</span><br /><span>Form r&ocirc;̣ng rãi, eo qu&acirc;̀n chun r&acirc;́t d&ecirc;̃ fit ạ.(50-85kg).</span><br /><span>Ch&acirc;́t li&ecirc;̣u nỉ da cá dày dặn , th&acirc;́m hút m&ocirc;̀ h&ocirc;i t&ocirc;́t.</span><br /><span>Mi&ecirc;̃n phí đ&ocirc;̉i trả trong vòng 3 ngày từ khi nh&acirc;̣n hàng.</span></p>', 1, '260000', '466c80e332.jpg', 8),
(62, 'ARTIE Regular Cotton Short – Light Grey', '', '', '0', '', 21, 18, '<p><span>Qu&acirc;̀n short cotton cao c&acirc;́p từ ARTIE.</span><br /><span>Form r&ocirc;̣ng rãi, eo qu&acirc;̀n chun r&acirc;́t d&ecirc;̃ fit ạ.(50-85kg).</span><br /><span>Ch&acirc;́t li&ecirc;̣u nỉ da cá dày dặn , th&acirc;́m hút m&ocirc;̀ h&ocirc;i t&ocirc;́t.</span><br /><span>Mi&ecirc;̃n phí đ&ocirc;̉i trả trong vòng 3 ngày từ khi nh&acirc;̣n hàng.</span></p>', 1, '250000', '05e71141b6.jpg', 26),
(63, 'ALSITA Regular Cotton Short – Dark Grey', '', '', '0', '', 21, 23, '<p><span>Qu&acirc;̀n short cotton cao c&acirc;́p từ ARTIE.</span><br /><span>Form r&ocirc;̣ng rãi, eo qu&acirc;̀n chun r&acirc;́t d&ecirc;̃ fit ạ.(50-85kg).</span><br /><span>Ch&acirc;́t li&ecirc;̣u nỉ da cá dày dặn , th&acirc;́m hút m&ocirc;̀ h&ocirc;i t&ocirc;́t.</span><br /><span>Mi&ecirc;̃n phí đ&ocirc;̉i trả trong vòng 3 ngày từ khi nh&acirc;̣n hàng.</span></p>', 1, '280000', 'bb00ff976f.jpg', 3),
(64, 'ARTIE Ripped Cotton Short – Black', '', '', '0', '', 21, 18, '<p><span>Qu&acirc;̀n short cotton cao c&acirc;́p từ ARTIE.</span><br /><span>Form r&ocirc;̣ng rãi, eo qu&acirc;̀n chun r&acirc;́t d&ecirc;̃ fit ạ.(50-85kg).</span><br /><span>Ch&acirc;́t li&ecirc;̣u nỉ da cá dày dặn , th&acirc;́m hút m&ocirc;̀ h&ocirc;i t&ocirc;́t.</span><br /><span>Mi&ecirc;̃n phí đ&ocirc;̉i trả trong vòng 3 ngày từ khi nh&acirc;̣n hàng.</span></p>', 1, '250000', 'ae347c0053.jpg', 8),
(65, 'ARTIE Ripped Cotton Short – Old Green', '', '', '0', '', 21, 18, '<p><span>Qu&acirc;̀n short cotton cao c&acirc;́p từ ARTIE.</span><br /><span>Form r&ocirc;̣ng rãi, eo qu&acirc;̀n chun r&acirc;́t d&ecirc;̃ fit ạ.(50-85kg).</span><br /><span>Ch&acirc;́t li&ecirc;̣u nỉ da cá dày dặn , th&acirc;́m hút m&ocirc;̀ h&ocirc;i t&ocirc;́t.</span><br /><span>Mi&ecirc;̃n phí đ&ocirc;̉i trả trong vòng 3 ngày từ khi nh&acirc;̣n hàng.</span></p>', 1, '400000', '6ad7fbba7f.jpg', 26),
(66, 'ARTIE Ripped Oversize T-shirt', '', '', '0', '', 20, 18, '<p><span>Mẫu basic tee mới đến từ nh&agrave; ARITIE</span><br /><span>Size oversize rộng r&atilde;i fit tới 90kg</span><br /><span>Chất liệu 100% cotton d&agrave;y dặn.</span><br /><span>Mi&ecirc;̃n phí đ&ocirc;̉i trả trong vòng 3 ngày từ khi nh&acirc;̣n hàng.</span></p>', 1, '300000', '2f683abe96.jpg', 46),
(67, 'Tye Die Long Sleeves', '', '', '0', '', 20, 21, '<p><span>Th&ocirc;ng tin:</span><br /><span>T&ecirc;n sản phẩm: ARTIE Tye Die Long Sleeves</span><br /><span>Size: S / M / L / XL us.</span><br /><span>Chất liệu: Cotton, được xử l&yacute; wash.</span><br /><span>? Hướng dẫn giặt:</span><br /><span>Sản phẩm c&oacute; thể giặt m&aacute;y.</span><br /><span>Để m&agrave;u vải bền hơn, bạn n&ecirc;n giặt tay hoặc giặt m&aacute;y ở chế độ vừa phải, , tr&aacute;nh giặt sấy kh&ocirc; sẽ l&agrave;m sợi cotton bị co.</span></p>', 1, '380000', 'c8c0144999.jpg', 12),
(68, 'POY Upside Down Long Sleeves', '', '', '0', '', 20, 19, '<p><span>T&ecirc;n sản phẩm: ARTIE Upside Down Long Sleeves.</span><br /><span>Size: M / L / XL us.</span><br /><span>Chất liệu: Cotton được xử l&yacute; wash.</span><br /><span>? Hướng dẫn giặt:</span><br /><span>Sản phẩm c&oacute; thể giặt m&aacute;y.</span><br /><span>Để m&agrave;u vải bền hơn, bạn n&ecirc;n giặt tay hoặc giặt m&aacute;y ở chế độ vừa phải, , tr&aacute;nh giặt sấy kh&ocirc; sẽ l&agrave;m sợi cotton bị co.</span></p>', 0, '380000', '37a37da301.jpg', 15),
(69, 'FOG V-line Cotton Short', '', '', '0', '', 0, 16, '<p><span>Qu&acirc;̀n short cotton cao c&acirc;́p từ ARTIE</span><br /><span>Form r&ocirc;̣ng rãi, d&ecirc;̃ fit.</span></p>', 1, '450000', 'edab69fdd5.jpg', 25),
(70, 'Barbeux Varsity Jacket', '', '', '0', '', 20, 22, '<p><span>Th&ocirc;ng tin:</span><br /><span>T&ecirc;n sản phẩm: Barbeux Varsity Jacket.</span><br /><span>Size: M / L / XL us.</span><br /><span>Chất liệu: Th&acirc;n &aacute;o được may từ vải dạ, tay &aacute;o l&agrave; da PU n&ecirc;n giữ form tốt.</span><br /><span>B&ecirc;n trong l&agrave; một lớp vải d&ugrave; d&agrave;y dặn may đường quả tr&aacute;m.</span><br /><span>? Hướng dẫn giặt:</span><br /><span>Đối với &aacute;o c&oacute; chất liệu da 3T khuyến nghị kh&aacute;ch n&ecirc;n bỏ c&ocirc;ng sức ra giặt tay để giữ cho chất lượng &aacute;o được bền nhất nh&eacute;.</span></p>', 1, '950000', '974590a897.jpg', 235),
(71, 'Basic Coach Jacket', '', '', '0', '', 20, 20, '<p><span>T&ecirc;n sản phẩm: Basic Coach Jacket.</span><br /><span>Size: M / L / XL / XXL us.</span><br /><span>Chất liệu : 2 lớp , lớp ngo&agrave;i vải d&ugrave; , lớp trong l&agrave; nỉ.</span><br /><span>M&agrave;u: Đen / Camo.</span><br /><span>? Hướng dẫn giặt:</span><br /><span>Sản phẩm c&oacute; thể giặt m&aacute;y, tr&aacute;nh giặt v&agrave; sấy kh&ocirc; ở nhiệt độ cao sẽ l&agrave;m sợi cotton bị co.</span></p>', 1, '480000', 'ab99de5244.jpg', 23),
(72, 'Basic Skinny Jean', '', '', '0', '', 21, 21, '<p><span>&nbsp;</span><a href=\"https://3tstreetwear.com/product-tag/jeans/\" rel=\"tag\">jeans</a><span>,&nbsp;</span><a href=\"https://3tstreetwear.com/product-tag/skinny-jeans/\" rel=\"tag\">skinny jeans</a></p>', 0, '480000', '6b958d329c.jpg', 24),
(73, 'Button Leg Short Pant', '', '', '0', '', 21, 24, '<p><span>Quần short khuy si&ecirc;u hot đ&atilde; về h&agrave;ng</span><br /><span>Form r&ocirc;̣ng rãi, eo qu&acirc;̀n chun r&acirc;́t d&ecirc;̃ fit.</span><br /><span>Ch&acirc;́t li&ecirc;̣u nỉ da cá , th&acirc;́m hút m&ocirc;̀ h&ocirc;i t&ocirc;́t.</span><br /><span>Mi&ecirc;̃n phí đ&ocirc;̉i trả trong vòng 3 ngày từ khi nh&acirc;̣n hàng.</span></p>', 0, '450000', 'b635bb6116.jpg', 115),
(74, 'Buttoned – Leg Jean', '', '', '0', '', 21, 17, '<p><span>Mẫu slim fit jeans c&oacute; c&uacute;c bấm ở ống.</span><br /><span>Chất liệu: Denim</span><br /><span>Size: S / M / L / XL.</span><br /><span>Miễn ph&iacute; đổi trả trong v&ograve;ng 5 ng&agrave;y.</span></p>', 1, '480000', '509626213e.jpg', 26),
(75, 'Buttoned Cargo Pant', '', '', '0', '', 21, 24, '<p><span>Mẫu snap cargo pant mới về shop</span><br /><span>Th&ocirc;ng tin:</span><br /><span>T&ecirc;n sản phẩm: Buttoned Cargo Pant</span><br /><span>Size: M / L / XL tương ứng 30 / 32 / 34.</span><br /><span>Chất liệu: Denim cotton, c&oacute; do d&atilde;n nhẹ.</span></p>', 1, '650000', '4c73de44ef.jpg', 26),
(76, 'Buttoned Track Pant', '', '', '0', '', 21, 24, '<div class=\"woocommerce-product-details__short-description\">\r\n<p>Mẫu track pant c&oacute; khuy bấm v&agrave; zipper dọc theo ống, form slim fit vừa phải.</p>\r\n<div>&nbsp;</div>\r\n</div>', 1, '620000', '6b0531b6d5.jpg', 24),
(77, 'Cargo Slim Fit Pant', '', '', '0', '', 21, 17, '<p>&nbsp;&nbsp;</p>', 1, '620000', 'a0fc9c4869.jpg', 6),
(78, 'Casual Baggy Slim Fit Jean', '', '', '0', '', 21, 24, '<p><span>Mẫu baggy jeans được rỉ tai l&agrave; c&oacute; thể hack chiều cao.</span><br /><span>Form rất dễ mặc v&agrave; phối c&ugrave;ng c&aacute;c item kh&aacute;c mang vẻ cổ điển.</span><br /><span>Chất liệu jean kh&ocirc;ng co d&atilde;n.</span><br /><span>Miễn ph&iacute; đổi trả 5 ng&agrave;y từ khi nhận h&agrave;ng.</span></p>', 1, '450000', '2966b75c2e.jpg', 26),
(79, 'Cotton Line Track Pant', '', '', '0', '', 21, 22, '<p><span>Mẫu track pant d&aacute;ng xu&ocirc;ng mới về.</span><br /><span>Chất liệu: nỉ da c&aacute; tho&aacute;ng m&aacute;t, thấm h&uacute;t mồ h&ocirc;i.</span><br /><span>Miễn ph&iacute; đổi trả trong v&ograve;ng 5 ng&agrave;y.</span></p>', 1, '520000', 'e6e54e72de.jpg', 35),
(80, 'Essentials Half Zipper Sweater', '', '', '0', '', 20, 16, '<p><span>Th&ocirc;ng tin:</span><br /><span>T&ecirc;n sản phẩm: Essentials Half Zipper Sweater.</span><br /><span>Size: S / M / L</span><br /><span>Sản phẩm form oversize , size S / M / L tương đương với size M / L / XL c&aacute;c sản phẩm kh&aacute;c.</span><br /><span>Q&uacute;y kh&aacute;ch xem th&ecirc;m th&ocirc;ng số chi tiết trong bảng size , nếu cần hỗ trợ tư vấn size đừng nhần ngại gửi tin nhắn cho ch&uacute;ng tớ nh&eacute;.</span><br /><span>Chất liệu: Nỉ l&ocirc;ng cừu d&agrave;y dặn.</span><br /><span>? Hướng dẫn giặt:</span><br /><span>Sản phẩm c&oacute; thể giặt m&aacute;y, tr&aacute;nh giặt sấy kh&ocirc; ở nhiệt độ cao sẽ l&agrave;m sợi cotton bị co.</span></p>', 0, '580000', '7ce81a9b05.jpg', 6),
(81, 'Dynamic Lion T-shirt', '', '', '0', '', 20, 20, '<p>&nbsp;<span>Áo Graphics tee đ&ecirc;́n từ nhà INF.</span><br /><span>Size Ch&acirc;u &Acirc;u r&ocirc;̣ng rãi fit tới 85kg</span><br /><span>Kỹ thu&acirc;̣t in kỹ thu&acirc;̣t s&ocirc;́ hi&ecirc;̣n tại, hình ảnh in l&ecirc;n áo v&ocirc; cùng chi ti&ecirc;́t, nói kh&ocirc;ng với bong tróc ( k&ecirc;̉ cả những hình in phản quang).</span></p>', 1, '420000', '4b353d3547.jpg', 35),
(82, 'INF Earth Song Regular Trousers', '', '', '0', '', 21, 17, '<p><span>Th&ocirc;ng tin sản phẩm:</span><br /><span>T&ecirc;n sản phẩm : INF Earth Song Regular Trousers</span><br /><span>Size: S / M / L / XL tương ứng 28 / 30 / 32 / 34.</span><br /><span>Chất liệu: Polyester cao cấp, rất tho&aacute;ng m&aacute;t.</span><br /><span>Note: Quần c&oacute; xẻ nhỏ ở ống.</span></p>', 0, '450000', '6598984169.jpg', 23),
(83, 'INF Follow Heard Shirt', '', '', '0', '', 20, 17, '<p><span>Sơ mi họa ngắn tay họa ti&ecirc;́t by INF</span><br /><span>Ch&acirc;́t li&ecirc;̣u: Polyester cao c&acirc;́p r&acirc;́t thoáng mát.</span><br /><span>Cam k&ecirc;́t kh&ocirc;ng bay màu khi giặt</span></p>', 0, '520000', 'a92df97b28.jpg', 36),
(84, 'INF Graddient Rabbit T-shirt', '', '', '0', '', 20, 17, '<p><span>Áo Graphics tee đ&ecirc;́n từ nhà INF.</span><br /><span>Size Ch&acirc;u &Acirc;u r&ocirc;̣ng rãi fit tới 85kg</span><br /><span>Kỹ thu&acirc;̣t in kỹ thu&acirc;̣t s&ocirc;́ hi&ecirc;̣n tại, hình ảnh in l&ecirc;n áo v&ocirc; cùng chi ti&ecirc;́t, nói kh&ocirc;ng với bong tróc ( k&ecirc;̉ cả những hình in phản quang).</span><br /><span>Mi&ecirc;̃n phí đ&ocirc;̉i trả trong vòng 3 ngày từ khi nh&acirc;̣n hàng.</span></p>', 0, '380000', '80132a04fa.jpg', 24),
(85, 'Miror Oversize T-shirt', '', '', '0', '', 20, 20, '<p><span>Áo Graphics tee đ&ecirc;́n từ nhà INF.</span><br /><span>Size Ch&acirc;u &Acirc;u r&ocirc;̣ng rãi fit tới 85kg</span><br /><span>Kỹ thu&acirc;̣t in kỹ thu&acirc;̣t s&ocirc;́ hi&ecirc;̣n tại, hình ảnh in l&ecirc;n áo v&ocirc; cùng chi ti&ecirc;́t, nói kh&ocirc;ng với bong tróc ( k&ecirc;̉ cả những hình in phản quang).</span><br /><span>Mi&ecirc;̃n phí đ&ocirc;̉i trả trong vòng 3 ngày từ khi nh&acirc;̣n hàng.</span></p>', 0, '380000', '22211c2205.jpg', 20),
(86, 'Natural Oversize Shirt', '', '', '0', '', 20, 23, '<p><span>Nằm trong b&ocirc;̣ sưu t&acirc;̣p sơ mi ngắn tay mới nh&acirc;́t của INF</span><br /><span>Ch&acirc;́t li&ecirc;̣u: Polyester cao c&acirc;́p r&acirc;́t thoáng mát.</span><br /><span>Cam k&ecirc;́t kh&ocirc;ng bay màu khi giặt.</span></p>', 0, '520000', '005b369b2d.jpg', 6),
(87, 'Oversize Retro Shirt', '', '', '0', '', 20, 23, '<p><span>Sơ mi họa ngắn tay họa ti&ecirc;́t retro</span><br /><span>Ch&acirc;́t li&ecirc;̣u: Polyester cao c&acirc;́p r&acirc;́t thoáng mát.</span><br /><span>Cam k&ecirc;́t kh&ocirc;ng bay màu khi giặt</span></p>', 0, '580000', '46307dbee3.jpg', 20),
(88, 'Peace World Oversize Shirt', '', '', '0', '', 20, 22, '<p><span>Sơ mi họa ngắn tay oversize họa ti&ecirc;́t từ nh&agrave; INF</span><br /><span>Ch&acirc;́t li&ecirc;̣u: Polyester cao c&acirc;́p r&acirc;́t thoáng mát.</span><br /><span>Cam k&ecirc;́t kh&ocirc;ng bay màu khi giặt.</span></p>', 0, '520000', '3c430179d8.jpg', 2),
(89, 'Prayer Oversize T-shirt', '', '', '0', '', 20, 17, '<p><span>Áo Graphics tee đ&ecirc;́n từ nhà INF.</span><br /><span>Size Ch&acirc;u &Acirc;u r&ocirc;̣ng rãi fit tới 85kg</span><br /><span>Kỹ thu&acirc;̣t in kỹ thu&acirc;̣t s&ocirc;́ hi&ecirc;̣n tại, hình ảnh in l&ecirc;n áo v&ocirc; cùng chi ti&ecirc;́t, nói kh&ocirc;ng với bong tróc ( k&ecirc;̉ cả những hình in phản quang).</span></p>', 1, '300000', '2f0f9f6834.jpg', 8),
(90, 'Regular Plaid Pants', '', '', '0', '', 21, 17, '<p><span>T&ecirc;n sản phẩm: INF Regular Plaid Pants.</span><br /><span>Size: S / M / L / XL.</span><br /><span>Chất liệu: Polyester x Viscose</span><br /><span>Chất liệu cao cấp mặc rất nhẹ thoải m&aacute;i m&agrave; vẫn giữ được độ ấm nhất định cho m&ugrave;a thu đ&ocirc;ng.</span><br /><span>? Hướng dẫn giặt:</span><br /><span>Sản phẩm c&oacute; thể giặt m&aacute;y, tr&aacute;nh giặt sấy kh&ocirc; ở nhiệt độ cao.</span></p>', 0, '620000', '98cb7833dc.jpg', 0),
(91, 'Remakes Oversize Shirt', '', '', '0', '', 20, 21, '<p>&nbsp; &nbsp;</p>', 0, '520000', '9f03e68c00.jpg', 1),
(92, 'The Trip Oversize Shirt', '', '', '0', '', 20, 19, '<p><span>Nằm trong b&ocirc;̣ sưu t&acirc;̣p sơ mi ngắn tay mới nh&acirc;́t của INF</span><br /><span>Ch&acirc;́t li&ecirc;̣u: Polyester cao c&acirc;́p r&acirc;́t thoáng mát.</span><br /><span>Cam k&ecirc;́t kh&ocirc;ng bay màu khi giặt.</span></p>', 1, '520000', '0db6d7d1be.jpg', 0),
(93, 'Line Track Pant With Zipper', '', '', '0', '', 21, 23, '<p><span>Mẫu quần track pant ống su&ocirc;ng đa dụng</span><br /><span>Size: S / M / L / XL</span><br /><span>C&oacute; zipper ở ống quần.</span><br /><span>Miễn ph&iacute; đổi trả trong v&ograve;ng 5 ng&agrave;y từ khi nhận h&agrave;ng.</span></p>', 1, '480000', 'b27125cf50.jpg', 30),
(94, 'ODVY Blackened Varsity Jacket', '', '', '0', '', 20, 22, '<p><span>Th&ocirc;ng tin:</span><br /><span>T&ecirc;n sản phẩm: ODVY Blackened Varsity Jacket.</span><br /><span>Size: M / L / XL oversized.</span><br /><span>Chất liệu: Cotton x PU</span><br /><span>Th&acirc;n &aacute;o được may từ da lộn, tay &aacute;o l&agrave;m từ da PU , b&ecirc;n trong l&oacute;t một lớp phao vừa phải, &aacute;o chắc chắn, mặc rất c&oacute; độ đầm.</span><br /><span>? Hướng dẫn giặt:</span><br /><span>Đối với &aacute;o c&oacute; chất liệu da 3T khuyến nghị kh&aacute;ch n&ecirc;n bỏ c&ocirc;ng sức ra giặt tay để giữ cho chất lượng &aacute;o được bền nhất nh&eacute;.</span></p>', 0, '980000', 'f8b6bf5da4.jpg', 13),
(95, 'Crazy Varsity Jacket', '', '', '0', '', 20, 21, '<p><span>Th&ocirc;ng tin:</span><br /><span>T&ecirc;n sản phẩm: ODVY Crazy Varsity Jacket.</span><br /><span>Size: S / M / L / XL ( Form &aacute;o oversize rất lớn, qu&yacute; kh&aacute;ch lưu &yacute; xem bảng size hoặc nhắn tin để 3T tư vấn trước khi đặt h&agrave;ng).</span><br /><span>Chất liệu: Cotton x PU</span><br /><span>Th&acirc;n &aacute;o được may từ da lộn, tay &aacute;o l&agrave;m từ da PU , b&ecirc;n trong l&oacute;t một lớp phao vừa phải, &aacute;o chắc chắn, mặc rất c&oacute; độ đầm.</span><br /><span>? Hướng dẫn giặt:</span><br /><span>Đối với &aacute;o c&oacute; chất liệu da 3T khuyến nghị kh&aacute;ch n&ecirc;n bỏ c&ocirc;ng sức ra giặt tay để giữ cho chất lượng &aacute;o được bền nhất nh&eacute;.</span></p>', 1, '980000', '3faaf458f2.jpg', 18);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_spnhapkho`
--

CREATE TABLE `tbl_spnhapkho` (
  `id_nhapkhosp` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `ten_sp` varchar(50) NOT NULL,
  `img_sp` varchar(50) NOT NULL,
  `sl_sp` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_warehouse`
--

CREATE TABLE `tbl_warehouse` (
  `id_warehouse` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `sl_nhap` varchar(50) NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_warehouse`
--

INSERT INTO `tbl_warehouse` (`id_warehouse`, `id_sanpham`, `sl_nhap`, `sl_ngaynhap`) VALUES
(1, 22, '5', '2019-07-16 18:31:22'),
(2, 21, '10', '2019-07-16 18:32:03'),
(3, 21, '3', '2019-07-16 18:42:59'),
(4, 20, '5', '2019-07-16 18:51:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(12, 9, 94, 'ODVY Blackened Varsity Jacket', '980000', 'f8b6bf5da4.jpg'),
(14, 10, 73, 'Button Leg Short Pant', '450000', 'b635bb6116.jpg'),
(15, 7, 73, 'Button Leg Short Pant', '450000', 'b635bb6116.jpg'),
(16, 7, 91, 'Remakes Oversize Shirt', '520000', '9f03e68c00.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_binhluan`
--
ALTER TABLE `tbl_binhluan`
  ADD PRIMARY KEY (`id_binhluan`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_chitietnhapkho`
--
ALTER TABLE `tbl_chitietnhapkho`
  ADD PRIMARY KEY (`id_chitietnhapkho`);

--
-- Indexes for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_nhapkho`
--
ALTER TABLE `tbl_nhapkho`
  ADD PRIMARY KEY (`id_nhapkho`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- Indexes for table `tbl_spnhapkho`
--
ALTER TABLE `tbl_spnhapkho`
  ADD PRIMARY KEY (`id_nhapkhosp`);

--
-- Indexes for table `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD PRIMARY KEY (`id_warehouse`);

--
-- Indexes for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_binhluan`
--
ALTER TABLE `tbl_binhluan`
  MODIFY `id_binhluan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_chitietnhapkho`
--
ALTER TABLE `tbl_chitietnhapkho`
  MODIFY `id_chitietnhapkho` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_nhapkho`
--
ALTER TABLE `tbl_nhapkho`
  MODIFY `id_nhapkho` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_spnhapkho`
--
ALTER TABLE `tbl_spnhapkho`
  MODIFY `id_nhapkhosp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  MODIFY `id_warehouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
