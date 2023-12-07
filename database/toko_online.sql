-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2023 at 12:53 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(1, 'Baju Pria'),
(2, 'Baju Wanita'),
(3, 'Hoodie'),
(4, 'Jam Tangan'),
(5, 'Tas'),
(8, 'Sepatu');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `ketersediaan_stok` enum('habis','tersedia') DEFAULT 'tersedia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kategori_id`, `nama`, `harga`, `foto`, `detail`, `ketersediaan_stok`) VALUES
(4, 1, 'Kemeja Lengan Pendek Putih', 50000, 'bhaQ8ufyXnptXysiEciv.jpg', 'Warna putih\r\nBahan katun streach\r\nAdem dan bisa melar\r\nGood quality', 'tersedia'),
(5, 1, 'Kemeja Lengan Pendek Hitam', 50000, 'jh9FPrH1AcZnRev8yJoE.jpg', 'Warna hitam\r\nBahan katun streach\r\nAdem dan bisa melar\r\nGood quality', 'tersedia'),
(6, 1, 'Kemeja Lengan Panjang Putih', 60000, 'UCaw8AlYG573J3WazW1U.jpg', 'Warna putih\r\nLengan Panjang\r\nBahan katun streach\r\nAdem dan bisa melar\r\nGood quality', 'tersedia'),
(7, 1, 'Kemeja Lengan Panjang Abu-Abu', 60000, 'vlpbcWfqskWEh66mNaQ2.jpg', 'Warna abu-abu\r\nLengan panjang\r\nBahan katun streach\r\nAdem dan bisa melar\r\nGood quality', 'tersedia'),
(8, 1, 'Kemeja Lengan Panjang Biru Dongker', 60000, 'gDvK7wcr17sGd8N3loCU.jpg', 'Warna biru dongker\r\nLengan panjang\r\nBahan katun streach\r\nAdem dan bisa melar\r\nGood quality', 'tersedia'),
(9, 3, 'Sweater Hijau Mint', 100000, 'u8v2YqWrCChQFyCK8jME.jpg', 'Warna hijau mint\r\nMaterial fleece gramasi 280\r\nOriginal brand\r\nMade in Indonesia', 'tersedia'),
(10, 3, 'Sweater Mocca', 100000, 'DdVyMygjxFs0WcO120fu.jpg', 'Warna mocca\r\nMaterial fleece gramasi 280\r\nOriginal brand\r\nMade in Indonesia', 'tersedia'),
(11, 4, 'Jam Casio', 400000, '8W742zOpny6GEIR76Xfj.jpg', 'Leather Band\r\nMineral Glass\r\nWater Resistant\r\nRegular timekeeping\r\nAnalog: 3 hands (hour, minute, second)\r\nAccuracy: ±20 seconds per month\r\nApprox. battery life: 3 years on SR626SW', 'tersedia'),
(12, 4, 'Jam JIMS Honey', 300000, 'UaS23VMA3Eif0YiP9LDZ.jpg', 'Warna : Coklat\r\nStrap : Kulit sintetis grade A\r\nDiameter : 4 cm \r\nBerat : 100 gr \r\nPackaging : Carton Box with magnet\r\nInclude baterai jam\r\nWater resistant aman untuk wudhu / cuci tangan', 'tersedia'),
(13, 4, 'Jam Haylou', 400000, 'A0o4ctNHLnB8Q0GaEt6W.jpg', 'Device: RT2 LS10\r\nShape: Round\r\nDimension: 45.7*45.7*12.1mm\r\nWeight: 55g\r\nColors: Black\r\nDisplay: TFT\r\nScreen Size: 1.32 Inch\r\nScreen Resolution: 360*360 pixels', 'tersedia'),
(14, 4, 'Jam SKMEI', 80000, 'wCD3YBu3JH8oSccELwy7.jpg', 'Jam Dual Time \r\nAnalog &amp; Digital Seri Explore\r\n\r\nWaterproof dengan design explore untuk kegiatan Outdoor mendaki, traveling, hiking ', 'tersedia'),
(15, 4, 'Jam Lanccelot', 800000, '6dvkcZAf3Ex0THhdnkSK.jpg', 'Case Size: 32 (mm)\r\nCase Thickness: 7 (mm)\r\nCase Material: Double Plated Ion Stainless Steel 316L\r\nGlass Material: Sapphire Glass with Scratch Resistant\r\nMovement: Japanese Quartz Movement 3 Hands with Calender\r\nStrap: Silver Mesh Strap\r\nStrap Width: 14 (mm)', 'tersedia'),
(16, 5, 'Tas Polo', 80000, '5oBaR5FLmAbdnkEgLF9t.jpg', 'Size Ransel 18 Inch\r\nPOLO GIVES 1865\r\nMicro Halus Dilapis Busa\r\nTerdiri dari 2 kompartemen utama dan 1 kompartemen tambahan dengan volume hingga 40L', 'tersedia'),
(17, 5, 'Navy Club', 200000, 'ksBdwTiHg3vz1taauOTN.jpg', 'Navy Club tas ransel kasual berbahan polyester\r\nPada kolom utama dilengkapi\r\nSekat untuk file dan bisa untuk membawa laptop max.14 inch serta sekat organizer', 'tersedia'),
(18, 5, 'School Ransel', 90000, 'ybL5OtrjuRcQ3749UjM1.jpg', '                        Material : BIMO\r\n[ Kantong / Sekat ]\r\n2 x Kantong Depan dengan resleting\r\n2 x kantong samping \r\n1 x Kantong Utama dilengkapi dengan 1 slot laptop dan 1 kantong kecil beresleting\r\n1 x Kantong depan yg bisa digunakan untuk laptop dilengkapi dengan Resleting dan penutup  dengan 2 buckle                    ', 'tersedia'),
(19, 5, 'Tas PU Leather', 90000, '4pw9JcORJjWFPRUvQ97c.jpg', 'Bahan Berkualitas\r\n\r\nTas ransel japan style ini tidak hanya memberikan kesan yang maskulin dan sporty, namun dilapisi dengan bahan kulit berkualitas terbaik yang dapat bertahan hingga bertahun-tahun pemakaian.', 'tersedia'),
(20, 8, 'Sepatu Dassom', 100000, 'prGCXBhcO1krpUBC56PQ.jpg', 'Sepatu Sneakers Wanita Fashion Import 2221\r\n\r\nTersedia warna : Hitam dan Putih\r\nReady size 36-40\r\nBahan : SIntetis\r\nOutsole : Karet', 'tersedia'),
(21, 8, 'Sepatu BHZPE', 50000, '9NTsoUSqhFCLaj1IMA8b.jpg', 'Produksi lokal\r\nBahan : Semi Leather, Canvas\r\nSol : PVC (Polivinil Clorida)\r\nWarna Pilihan 3 Warna\r\nUkuran Pilihan 39-41', 'tersedia'),
(22, 8, 'Sepatu Starpick', 100000, 'MQtp4dPXdjyx5j5icjWD.jpg', 'Tipe : Sepatu Olahraga\r\nTinggi : Rendah', 'tersedia'),
(23, 8, 'Sepatu Perayu', 100000, 'XKvP4ZafZbxWu4FkXxn8.jpg', '- Shoes Material\r\n- Upper : canvas\r\n- Sole : Rubber\r\n- Insole : Jersey Foam\r\n- Construction : Vulcanize', 'tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$KfjYEjy04FzmR/9X0qxAWehvLLuHuzPwsei0J0ODrqKpU9BSptrHe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama` (`nama`),
  ADD KEY `kategori_produk` (`kategori_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `kategori_produk` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
