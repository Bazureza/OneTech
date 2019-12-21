-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2019 at 05:46 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onetech`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`password`) VALUES
('kucing');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `type_id` int(6) NOT NULL,
  `email` varchar(127) NOT NULL,
  `quantity` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`type_id`, `email`, `quantity`) VALUES
(22, 'robert.unix98@gmail.com', 4);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(6) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Welding'),
(2, 'Rubber'),
(3, 'Paint'),
(4, 'New Category 1'),
(5, 'New Category 2'),
(6, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `merk`
--

CREATE TABLE `merk` (
  `merk_id` int(6) NOT NULL,
  `merk_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merk`
--

INSERT INTO `merk` (`merk_id`, `merk_name`) VALUES
(1, 'ATLANTIC'),
(2, 'TIME');

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `order_id` int(9) NOT NULL,
  `email` varchar(127) NOT NULL,
  `dateOrder` date NOT NULL,
  `totalPrice` int(9) NOT NULL,
  `proofOfPayment` varchar(255) NOT NULL,
  `confirmation` tinyint(1) NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `logistic_price` int(7) DEFAULT NULL,
  `unique_price` int(3) NOT NULL,
  `address_order` varchar(256) DEFAULT NULL,
  `phonenumber_order` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderitem`
--

INSERT INTO `orderitem` (`order_id`, `email`, `dateOrder`, `totalPrice`, `proofOfPayment`, `confirmation`, `invoice`, `logistic_price`, `unique_price`, `address_order`, `phonenumber_order`) VALUES
(1, 'robert.unix98@gmail.com', '2019-12-16', 1000, '', 0, '', 1000, 999, 'Jl Sigura-gura V no 31, 65145 Malang', '0895396100000');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(6) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` text NOT NULL,
  `product_price` int(15) NOT NULL,
  `product_img_1` text DEFAULT NULL,
  `product_img_2` text DEFAULT NULL,
  `product_img_3` text DEFAULT NULL,
  `category_id` int(6) NOT NULL,
  `subcategory_id` int(6) NOT NULL,
  `merk_id` int(6) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `startDateDiscount` date DEFAULT NULL,
  `lastDateDiscount` date DEFAULT NULL,
  `datePost` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `product_desc`, `product_price`, `product_img_1`, `product_img_2`, `product_img_3`, `category_id`, `subcategory_id`, `merk_id`, `discount`, `startDateDiscount`, `lastDateDiscount`, `datePost`) VALUES
(1, 'CHE40 AWS A5.1 E6013 JIS Z 3211 D4313', 'CHE40 ATLANTIC WELDING ELECTRODES FOR MILD STEEL', 'CHE40  is  mild  steel  welding  electrode  with  high  titania  type  coating.  It  has excellent  welding  performance  such  as  arc  stability,  easy  slag  removal,  good re-striking, and shiny appearance and designed for all position welding. It has widely  used  for  general  purpose;  shipbuilding,  vehicles,  constructions,  and especially suitable for welding sheet steel and small work pieces. Current: AC, DC±. Approved grade 2 by: BKI, LR, ABS, BV, CCS, CWB, DNV, GL, NK.', 2000000, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '2019-11-23'),
(2, 'CHE43 AWS A5.1 E6013 JIS Z 3211 D4313', 'CHE43 ATLANTIC WELDING ELECTRODES FOR MILD STEEL', 'CHE43  is  mild  steel  welding  electrode  with  iron  oxide  titania  (ilmenite),.  It  is suitable  for  welding  All  position,  especially  for  ?at  and  horizontal  ?llet.  It  is suitable  for  medium  and  thick  armor  plate  structure,  such  as  ships,  bridges, machinery and building, etc. Current: AC, DC±. Approved grade 2 by: LR, ABS, BV, CCS, GL, DNV, NK.', 1200000, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '2019-11-23'),
(3, 'CHE56 AWS A5.1 E7016 JIS Z 3212 D5016', 'CHE56 ATLANTIC WELDING ELECTRODES FOR HIGH TENSILE STEEL', 'Kawat las kekuatan tinggi salutan low hydrogen, memiliki sifat tangguh dan tahan retak yang sangat baik. Digunakan secara luas untuk fabrikasi baja kekuatan tinggi 50 kgf/mm2, seperti; kapal, boiler, jembatan dan pressure vessel. Arus: AC, DC±. Approved', 1800000, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '2019-11-23'),
(4, 'CHE58-1 AWS A5.1 E7018-1 AWS A5.1 E7018 JIS Z 3212 D5016', 'CHE58-1 ATLANTIC WELDING ELECTRODES FOR HIGH TENSILE STEEL', 'Kawat las kekuatan tinggi salutan iron powder low hydrogen, memiliki sifat tangguh pada suhu rendah dan tahan terhadap retak. Dengan kandungan iron powder meningkatkan efisiensi las sekitar 110%. Digunakan untuk fabrikasi baja kekuatan tinggi 50 kgf/mm2, seperti; high pressure vessels, jembatan, pembangkit listrik dan oshore drilling platforms. Arust: AC, DC', 2000000, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '2019-11-23'),
(5, 'CHE505GX AWS A5.5 E7010-P1', 'CHE505GX ATLANTIC WELDING ELECTRODES FOR HIGH TENSILE STEEL', 'Kawat las kekuatan tinggi salutan cellulose sodium, memiliki mampu las yang sangat baik pada semua posisi las, termasuk vertikal turun. Menghasilkan dua sisi las pada pengelasan satu sisi seperti las root pass. Cocok untuk hot pass dan capping pada fabrikasi sambungan', 3000000, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '2019-11-23'),
(6, 'CHS102 AWS A5.4 E308-16 JIS Z 3221 D308-16', 'CHS102 ATLANTIC WELDING ELECTRODES FOR STAINLESS STEEL', 'Kawat las baja tahan karat salutan titania dapat digunakan untuk semua posisi las dengan mampu las yang sangat baik; busur las stabil, terak mudah lepas, sedikit percikan dan salutan tahan panas. Digunakan secara luas untuk las material AISI / SUS 301, 302, 304, 308,', 2900000, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '2019-11-23'),
(7, 'CHS002 AWS A5.4 E308L-16 JIS Z 3221 D308L-16', 'CHS002 ATLANTIC WELDING ELECTRODES FOR STAINLESS STEEL', 'CHS002 is lime titania type coating electrode for extra-low carbon stainless steel in all position welding. It has excellent resistance to inter-crystal corrosion. It is suitable for welding of AISI/SUS 304L stainless steel structures, which working conditions need to be resistance corrosion and working temperature is below 300°C.', 2000000, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '2019-11-23'),
(8, 'CHS29.9 AWS A5.4 E312-16 JIS Z 3221 D312-16', 'CHS29.9 ATLANTIC WELDING ELECTRODES FOR DISSIMILAR AND PROBLEM STEEL', 'Kawat las salutan titania dengan logam las membentuk fasa duplex: ferritic-austenitic, dengan kandungan ferritic sekitar 40%, memiliki ketahanan retak yang sangat baik dan kekuatan tarik yang tinggi. Cocok untuk las baja cor, baja karbon tinggi, baja perkakas, baja sulit dilas dan baja berbeda jenis. Dan dapat digunakan sebagai dasar untuk las lapisan', 4000000, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '2019-11-23'),
(9, 'CHS102MnMo AWS A5.4 E307-16', 'CHS102MnMo ATLANTIC WELDING ELECTRODES FOR HARD SURFACING', 'ATLANTIC WELDING ELECTRODES FOR HARD SURFACING moderate strength welds with good crack resistance between dissimilar steel, such austenitic manganese steel and carbon steel forgings or castings. It is suitable for welding structures made by ASTM307 stainless steel, also it can be used surfacing impingement and corrosion resisting steel and transition layers. Current: AC, DC+.', 1300000, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '2019-11-23'),
(10, 'CHC308 AWS A5.15 ENi-CI JIS Z 3252 DFCNi', 'CHC308 ATLANTIC WELDING ELECTRODES FOR CAST IRON', 'pilihan terbaik untuk perbaikan keretakan dan penyambungan sesama besi cor dan dengan logam lain. Deposit las mudah dalam proses permesinan dengan ketangguhan dan ketahanan retak yang baik. Pada proses las, gunakan amper rendah dan lakukan peening setelah las. Arus:', 2200000, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, '2019-11-23'),
(11, 'ZX7-160\r\n(PE20-160R)', 'ZX7-160 TIME Manual Metal Arc Welding Machine', 'MOSFET\r\ntechnology, invert frequency is 100 Hz.', 3100000, NULL, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, '2019-11-23'),
(12, 'ZX7-160\r\n(PE60-160)', 'ZX7-160 TIME Manual Metal Arc Welding Machine', 'MOSFET\r\ntechnology, invert frequency is 100 Hz.\r\nPlastic Case', 1200000, NULL, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, '2019-11-23'),
(13, 'ZX7-400\r\n(PE23-400)', 'ZX7-400 TIME Manual Metal Arc Welding Machine', 'Wireless/wire remote control is optional.\r\nPlastic Case', 4100000, NULL, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, '2019-11-23'),
(14, 'ZX7-400\r\n(PE50-400)', 'ZX7-400 TIME Manual Metal Arc Welding Machine', 'Wireless/wire remote control is optional. Two power characteristic: dropping characteristic and slanting\r\ncharacteristic.', 2500000, NULL, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, '2019-11-23'),
(15, 'ZX7-400\r\n(PE12-3 X 400)', 'ZX7-400 TIME Manual Metal Arc Welding Machine', 'It can be used as three welder independence and widely used\r\nin the ?eld of shipbuilding.', 4200000, NULL, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, '2019-11-23'),
(16, 'ZX7-500\r\n(PE10-500)', 'ZX7-500 TIME Manual Metal Arc Welding Machine', 'The cable can be lengthened.\r\nBe suitable for air carbon arc\r\ngouging ( lower than 520A/45V ).', 3300000, NULL, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, '2019-11-23'),
(17, 'ZX7-630\r\n(PE52-630 )', 'ZX7-630 TIME Manual Metal Arc Welding Machine', 'High e?ciency of air carbon arc gouging.\r\nSwitch for MMA/Gougin g on front panel. 100% duty cycle.', 2200000, NULL, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, '2019-11-23');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseitem`
--

CREATE TABLE `purchaseitem` (
  `type_id` int(6) NOT NULL,
  `order_id` int(9) NOT NULL,
  `quantity` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchaseitem`
--

INSERT INTO `purchaseitem` (`type_id`, `order_id`, `quantity`) VALUES
(24, 1, 5),
(31, 1, 1),
(30, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `sub-category`
--

CREATE TABLE `sub-category` (
  `subcategory_id` int(6) NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `category_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub-category`
--

INSERT INTO `sub-category` (`subcategory_id`, `subcategory_name`, `category_id`) VALUES
(1, 'Welding Rod', 1),
(2, 'Welding Machine', 1),
(3, 'Welding 3', 1),
(4, 'Welding 4', 1),
(5, 'Rubber Hose', 2),
(6, 'Rubber Marine', 2),
(7, 'Rubber Sheet', 2),
(8, 'Rubber 4', 2),
(9, 'Paint 1', 3),
(10, 'Paint 2', 3),
(11, 'Paint 3', 3),
(12, 'Paint 4', 3),
(13, 'NC 1', 4),
(14, 'NC 2', 4),
(15, 'NC 3', 4),
(16, 'NC 4', 4),
(17, 'NC 1', 5),
(18, 'NC 2', 5),
(19, 'NC 3', 5),
(20, 'NC 4', 5),
(21, 'Others 1', 6),
(22, 'Others 2', 6),
(23, 'Others 3', 6),
(24, 'Others 4', 6);

-- --------------------------------------------------------

--
-- Table structure for table `type_product`
--

CREATE TABLE `type_product` (
  `type_id` int(6) NOT NULL,
  `product_type` varchar(100) NOT NULL,
  `quota` int(3) NOT NULL,
  `description_type` varchar(255) NOT NULL,
  `product_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_product`
--

INSERT INTO `type_product` (`type_id`, `product_type`, `quota`, `description_type`, `product_id`) VALUES
(1, 'Current 40~80 Ampere | 2.0 mm', 8, 'Lorem Ipsum', 1),
(2, 'Current 50~90 Ampere | 2.5 mm', 6, 'Lorem Ipsum', 1),
(3, 'Current 80~130 Ampere | 3.2 mm', 11, 'Lorem Ipsum', 1),
(4, 'Current 130~190 Ampere | 4.0 mm', 12, 'Lorem Ipsum', 1),
(5, 'Current 180~250 Ampere | 5.0 mm', 13, 'Lorem Ipsum', 1),
(6, 'Current 50~80 Ampere | 2.5 mm', 13, 'Lorem Ipsum', 2),
(7, 'Current 90~140 Ampere | 3.2 mm', 4, 'Lorem Ipsum', 2),
(8, 'Current 150~200 Ampere | 4.0 mm', 6, 'Lorem Ipsum', 2),
(9, 'Current 190~240 Ampere | 5.0 mm', 8, 'Lorem Ipsum', 2),
(10, 'Current 50~110 Ampere | 2.5 mm', 10, 'Lorem Ipsum', 3),
(11, 'Current 80~140 Ampere | 3.2 mm', 3, 'Lorem Ipsum', 3),
(12, 'Current 130~180 Ampere | 4.0 mm', 5, 'Lorem Ipsum', 3),
(13, 'Current 180~230 Ampere | 5.0 mm', 8, 'Lorem Ipsum', 3),
(14, 'Current 60~100 Ampere | 2.5 mm', 4, 'Lorem Ipsum', 4),
(15, 'Current 80~140 Ampere | 3.2 mm', 19, 'Lorem Ipsum', 4),
(16, 'Current 130~170 Ampere | 4.0 mm', 10, 'Lorem Ipsum', 4),
(17, 'Current 190~240 Ampere | 5.0 mm', 18, 'Lorem Ipsum', 4),
(18, 'Current 50~90 Ampere | 2.5 mm', 16, 'Lorem Ipsum', 5),
(19, 'Current 60~110 Ampere | 3.2 mm', 12, 'Lorem Ipsum', 5),
(20, 'Current 100~150 Ampere | 4.0 mm', 6, 'Lorem Ipsum', 5),
(21, 'Current 30~50 Ampere | 2.0 mm', 7, 'Lorem Ipsum', 6),
(22, 'Current 80~130 Ampere | 3.2 mm', 11, 'Lorem Ipsum', 6),
(23, 'Current 100~170 Ampere | 4.0 mm', 3, 'Lorem Ipsum', 6),
(24, 'Current 30~50 Ampere | 2.0 mm', 4, 'Lorem Ipsum', 7),
(25, 'Current 80~130 Ampere | 3.2 mm', 5, 'Lorem Ipsum', 7),
(26, 'Current 100~170 Ampere | 4.0 mm', 7, 'Lorem Ipsum', 7),
(27, 'Current 50~90 Ampere | 2.5 mm', 6, 'Lorem Ipsum', 8),
(28, 'Current 80~130 Ampere | 3.2 mm', 17, 'Lorem Ipsum', 8),
(29, 'Current 100~170 Ampere | 4.0 mm', 16, 'Lorem Ipsum', 8),
(30, 'Current 50~90 Ampere | 2.5 mm', 15, 'Lorem Ipsum', 9),
(31, 'Current 80~130 Ampere | 3.2 mm', 14, 'Lorem Ipsum', 9),
(32, 'Current 110~170 Ampere | 4.0 mm', 18, 'Lorem Ipsum', 9),
(33, 'Current 60~90 Ampere | 2.5 mm', 5, 'Lorem Ipsum', 10),
(34, 'Current 90~110 Ampere | 3.2 mm', 7, 'Lorem Ipsum', 10),
(35, 'Current 120~150 Ampere | 4.0 mm', 9, 'Lorem Ipsum', 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email` varchar(127) NOT NULL,
  `password` varchar(16) NOT NULL,
  `first_name` varchar(127) NOT NULL,
  `last_name` varchar(127) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  `activeStatus` tinyint(1) NOT NULL,
  `accountType` varchar(10) NOT NULL,
  `typeOfInstitution` varchar(15) DEFAULT NULL,
  `institutionName` varchar(127) DEFAULT NULL,
  `institutionAddress` varchar(255) DEFAULT NULL,
  `npwp` varchar(20) DEFAULT NULL,
  `hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `password`, `first_name`, `last_name`, `address`, `phoneNumber`, `activeStatus`, `accountType`, `typeOfInstitution`, `institutionName`, `institutionAddress`, `npwp`, `hash`) VALUES
('robert.unix98@gmail.com', '123', 'Robertus Dwi', 'Ari Utomo', 'Jl. Sigura gura V no.31', '0895396106041', 1, 'personal', '', '', '', '', 'e506f85b012b21df66808f7b6fe0bacb');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `email` (`email`),
  ADD KEY `idProduct` (`type_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `merk`
--
ALTER TABLE `merk`
  ADD PRIMARY KEY (`merk_id`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `merk_id` (`merk_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `subcategory_id` (`subcategory_id`);

--
-- Indexes for table `purchaseitem`
--
ALTER TABLE `purchaseitem`
  ADD KEY `idOrder` (`order_id`),
  ADD KEY `idProduct` (`type_id`);

--
-- Indexes for table `sub-category`
--
ALTER TABLE `sub-category`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `type_product`
--
ALTER TABLE `type_product`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `type_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `merk`
--
ALTER TABLE `merk`
  MODIFY `merk_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orderitem`
--
ALTER TABLE `orderitem`
  MODIFY `order_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `purchaseitem`
--
ALTER TABLE `purchaseitem`
  MODIFY `type_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sub-category`
--
ALTER TABLE `sub-category`
  MODIFY `subcategory_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `type_product`
--
ALTER TABLE `type_product`
  MODIFY `type_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `type_product` (`type_id`);

--
-- Constraints for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `merk_id` FOREIGN KEY (`merk_id`) REFERENCES `merk` (`merk_id`),
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`subcategory_id`) REFERENCES `sub-category` (`subcategory_id`);

--
-- Constraints for table `purchaseitem`
--
ALTER TABLE `purchaseitem`
  ADD CONSTRAINT `purchaseitem_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orderitem` (`order_id`),
  ADD CONSTRAINT `purchaseitem_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `type_product` (`type_id`);

--
-- Constraints for table `sub-category`
--
ALTER TABLE `sub-category`
  ADD CONSTRAINT `sub-category_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `type_product`
--
ALTER TABLE `type_product`
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
