-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Nov 2019 pada 12.03
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

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
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`password`) VALUES
('sayangbirujingga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `type_id` int(6) NOT NULL,
  `email` varchar(127) NOT NULL,
  `quantity` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `category_id` int(6) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `category`
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
-- Struktur dari tabel `merk`
--

CREATE TABLE `merk` (
  `merk_id` int(6) NOT NULL,
  `merk_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `merk`
--

INSERT INTO `merk` (`merk_id`, `merk_name`) VALUES
(1, 'ATLANTIC'),
(2, 'TIME');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `order_id` varchar(9) NOT NULL,
  `email` varchar(127) NOT NULL,
  `dateOrder` date NOT NULL,
  `totalPrice` int(9) NOT NULL,
  `proofOfPayment` varchar(255) NOT NULL,
  `confirmation` tinyint(1) NOT NULL,
  `invoice` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
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
  `merk_id` int(6) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `startDateDiscount` date DEFAULT NULL,
  `lastDateDiscount` date DEFAULT NULL,
  `datePost` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `product_desc`, `product_price`, `product_img_1`, `product_img_2`, `product_img_3`, `category_id`, `merk_id`, `discount`, `startDateDiscount`, `lastDateDiscount`, `datePost`) VALUES
(1, 'CHE40 AWS A5.1 E6013 JIS Z 3211 D4313', 'CHE40 ATLANTIC WELDING ELECTRODES FOR MILD STEEL', 'CHE40  is  mild  steel  welding  electrode  with  high  titania  type  coating.  It  has excellent  welding  performance  such  as  arc  stability,  easy  slag  removal,  good re-striking, and shiny appearance and designed for all position welding. It has widely  used  for  general  purpose;  shipbuilding,  vehicles,  constructions,  and especially suitable for welding sheet steel and small work pieces. Current: AC, DC±. Approved grade 2 by: BKI, LR, ABS, BV, CCS, CWB, DNV, GL, NK.', 2000000, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2019-11-23'),
(2, 'CHE43 AWS A5.1 E6013 JIS Z 3211 D4313', 'CHE43 ATLANTIC WELDING ELECTRODES FOR MILD STEEL', 'CHE43  is  mild  steel  welding  electrode  with  iron  oxide  titania  (ilmenite),.  It  is suitable  for  welding  All  position,  especially  for  ?at  and  horizontal  ?llet.  It  is suitable  for  medium  and  thick  armor  plate  structure,  such  as  ships,  bridges, machinery and building, etc. Current: AC, DC±. Approved grade 2 by: LR, ABS, BV, CCS, GL, DNV, NK.', 1200000, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2019-11-23'),
(3, 'CHE56 AWS A5.1 E7016 JIS Z 3212 D5016', 'CHE56 ATLANTIC WELDING ELECTRODES FOR HIGH TENSILE STEEL', 'Kawat las kekuatan tinggi salutan low hydrogen, memiliki sifat tangguh dan tahan retak yang sangat baik. Digunakan secara luas untuk fabrikasi baja kekuatan tinggi 50 kgf/mm2, seperti; kapal, boiler, jembatan dan pressure vessel. Arus: AC, DC±. Approved', 1800000, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2019-11-23'),
(4, 'CHE58-1 AWS A5.1 E7018-1 AWS A5.1 E7018 JIS Z 3212 D5016', 'CHE58-1 ATLANTIC WELDING ELECTRODES FOR HIGH TENSILE STEEL', 'Kawat las kekuatan tinggi salutan iron powder low hydrogen, memiliki sifat tangguh pada suhu rendah dan tahan terhadap retak. Dengan kandungan iron powder meningkatkan efisiensi las sekitar 110%. Digunakan untuk fabrikasi baja kekuatan tinggi 50 kgf/mm2, seperti; high pressure vessels, jembatan, pembangkit listrik dan oshore drilling platforms. Arust: AC, DC', 2000000, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2019-11-23'),
(5, 'CHE505GX AWS A5.5 E7010-P1', 'CHE505GX ATLANTIC WELDING ELECTRODES FOR HIGH TENSILE STEEL', 'Kawat las kekuatan tinggi salutan cellulose sodium, memiliki mampu las yang sangat baik pada semua posisi las, termasuk vertikal turun. Menghasilkan dua sisi las pada pengelasan satu sisi seperti las root pass. Cocok untuk hot pass dan capping pada fabrikasi sambungan', 3000000, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2019-11-23'),
(6, 'CHS102 AWS A5.4 E308-16 JIS Z 3221 D308-16', 'CHS102 ATLANTIC WELDING ELECTRODES FOR STAINLESS STEEL', 'Kawat las baja tahan karat salutan titania dapat digunakan untuk semua posisi las dengan mampu las yang sangat baik; busur las stabil, terak mudah lepas, sedikit percikan dan salutan tahan panas. Digunakan secara luas untuk las material AISI / SUS 301, 302, 304, 308,', 2900000, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2019-11-23'),
(7, 'CHS002 AWS A5.4 E308L-16 JIS Z 3221 D308L-16', 'CHS002 ATLANTIC WELDING ELECTRODES FOR STAINLESS STEEL', 'CHS002 is lime titania type coating electrode for extra-low carbon stainless steel in all position welding. It has excellent resistance to inter-crystal corrosion. It is suitable for welding of AISI/SUS 304L stainless steel structures, which working conditions need to be resistance corrosion and working temperature is below 300°C.', 2000000, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2019-11-23'),
(8, 'CHS29.9 AWS A5.4 E312-16 JIS Z 3221 D312-16', 'CHS29.9 ATLANTIC WELDING ELECTRODES FOR DISSIMILAR AND PROBLEM STEEL', 'Kawat las salutan titania dengan logam las membentuk fasa duplex: ferritic-austenitic, dengan kandungan ferritic sekitar 40%, memiliki ketahanan retak yang sangat baik dan kekuatan tarik yang tinggi. Cocok untuk las baja cor, baja karbon tinggi, baja perkakas, baja sulit dilas dan baja berbeda jenis. Dan dapat digunakan sebagai dasar untuk las lapisan', 4000000, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2019-11-23'),
(9, 'CHS102MnMo AWS A5.4 E307-16', 'CHS102MnMo ATLANTIC WELDING ELECTRODES FOR HARD SURFACING', 'ATLANTIC WELDING ELECTRODES FOR HARD SURFACING moderate strength welds with good crack resistance between dissimilar steel, such austenitic manganese steel and carbon steel forgings or castings. It is suitable for welding structures made by ASTM307 stainless steel, also it can be used surfacing impingement and corrosion resisting steel and transition layers. Current: AC, DC+.', 1300000, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2019-11-23'),
(10, 'CHC308 AWS A5.15 ENi-CI JIS Z 3252 DFCNi', 'CHC308 ATLANTIC WELDING ELECTRODES FOR CAST IRON', 'pilihan terbaik untuk perbaikan keretakan dan penyambungan sesama besi cor dan dengan logam lain. Deposit las mudah dalam proses permesinan dengan ketangguhan dan ketahanan retak yang baik. Pada proses las, gunakan amper rendah dan lakukan peening setelah las. Arus:', 2200000, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '2019-11-23'),
(11, 'ZX7-160\r\n(PE20-160R)', 'ZX7-160 TIME Manual Metal Arc Welding Machine', 'MOSFET\r\ntechnology, invert frequency is 100 Hz.', 3100000, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, '2019-11-23'),
(12, 'ZX7-160\r\n(PE60-160)', 'ZX7-160 TIME Manual Metal Arc Welding Machine', 'MOSFET\r\ntechnology, invert frequency is 100 Hz.\r\nPlastic Case', 1200000, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, '2019-11-23'),
(13, 'ZX7-400\r\n(PE23-400)', 'ZX7-400 TIME Manual Metal Arc Welding Machine', 'Wireless/wire remote control is optional.\r\nPlastic Case', 4100000, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, '2019-11-23'),
(14, 'ZX7-400\r\n(PE50-400)', 'ZX7-400 TIME Manual Metal Arc Welding Machine', 'Wireless/wire remote control is optional. Two power characteristic: dropping characteristic and slanting\r\ncharacteristic.', 2500000, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, '2019-11-23'),
(15, 'ZX7-400\r\n(PE12-3 X 400)', 'ZX7-400 TIME Manual Metal Arc Welding Machine', 'It can be used as three welder independence and widely used\r\nin the ?eld of shipbuilding.', 4200000, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, '2019-11-23'),
(16, 'ZX7-500\r\n(PE10-500)', 'ZX7-500 TIME Manual Metal Arc Welding Machine', 'The cable can be lengthened.\r\nBe suitable for air carbon arc\r\ngouging ( lower than 520A/45V ).', 3300000, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, '2019-11-23'),
(17, 'ZX7-630\r\n(PE52-630 )', 'ZX7-630 TIME Manual Metal Arc Welding Machine', 'High e?ciency of air carbon arc gouging.\r\nSwitch for MMA/Gougin g on front panel. 100% duty cycle.', 2200000, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, '2019-11-23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `purchaseitem`
--

CREATE TABLE `purchaseitem` (
  `type_id` int(6) NOT NULL,
  `order_id` varchar(9) NOT NULL,
  `quantity` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `type_product`
--

CREATE TABLE `type_product` (
  `type_id` int(6) NOT NULL,
  `product_type` varchar(100) NOT NULL,
  `quota` int(3) NOT NULL,
  `description_type` varchar(255) NOT NULL,
  `product_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `type_product`
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
-- Struktur dari tabel `user`
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
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD KEY `email` (`email`),
  ADD KEY `idProduct` (`type_id`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `merk`
--
ALTER TABLE `merk`
  ADD PRIMARY KEY (`merk_id`);

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `merk_id` (`merk_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `purchaseitem`
--
ALTER TABLE `purchaseitem`
  ADD KEY `idOrder` (`order_id`),
  ADD KEY `idProduct` (`type_id`);

--
-- Indeks untuk tabel `type_product`
--
ALTER TABLE `type_product`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `type_id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `merk`
--
ALTER TABLE `merk`
  MODIFY `merk_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `purchaseitem`
--
ALTER TABLE `purchaseitem`
  MODIFY `type_id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `type_product`
--
ALTER TABLE `type_product`
  MODIFY `type_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `type_product` (`type_id`);

--
-- Ketidakleluasaan untuk tabel `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`);

--
-- Ketidakleluasaan untuk tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `merk_id` FOREIGN KEY (`merk_id`) REFERENCES `merk` (`merk_id`),
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Ketidakleluasaan untuk tabel `purchaseitem`
--
ALTER TABLE `purchaseitem`
  ADD CONSTRAINT `purchaseitem_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  ADD CONSTRAINT `purchaseitem_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `type_product` (`type_id`);

--
-- Ketidakleluasaan untuk tabel `type_product`
--
ALTER TABLE `type_product`
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
