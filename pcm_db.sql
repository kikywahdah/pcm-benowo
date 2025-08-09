-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 29, 2025 at 05:12 AM
-- Server version: 8.0.43
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pcm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `aset`
--

CREATE TABLE `aset` (
  `id_aset` int NOT NULL,
  `id_pengguna` int DEFAULT NULL,
  `nama_aset` varchar(100) NOT NULL,
  `jenis_aset` varchar(50) DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `luas` varchar(50) DEFAULT NULL,
  `status_kepemilikan` varchar(100) DEFAULT NULL,
  `tahun_perolehan` year DEFAULT NULL,
  `nilai_aset` decimal(18,2) DEFAULT NULL,
  `keterangan` text,
  `tanggal_dibuat` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `aset`
--

INSERT INTO `aset` (`id_aset`, `id_pengguna`, `nama_aset`, `jenis_aset`, `lokasi`, `luas`, `status_kepemilikan`, `tahun_perolehan`, `nilai_aset`, `keterangan`, `tanggal_dibuat`) VALUES
(5, 1, 'Teh', 'Ba', 'Medan', '10m2', 'Publik', 2011, '20000000.00', 'bagus', '2025-07-29 01:46:59'),
(6, 1, 'Mobil', 'Kendaraan', 'Jl.Pettarani', '5m2', 'Milik Sendiri', 2010, '350000000.00', 'Kendaraan bermobil', '2025-07-29 02:13:13'),
(7, 1, 'Ruko', 'Bangunan', 'Jl.Perintis Kemerdekaan', '100m2', 'Sewa', 2024, '2000000000.00', 'Bangunan Ruko', '2025-07-29 02:24:49');

-- --------------------------------------------------------

--
-- Table structure for table `impor_excel`
--

CREATE TABLE `impor_excel` (
  `id_impor` int NOT NULL,
  `id_pengguna` int DEFAULT NULL,
  `nama_file` varchar(255) DEFAULT NULL,
  `tanggal_impor` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) DEFAULT NULL,
  `log` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laporan_pdf`
--

CREATE TABLE `laporan_pdf` (
  `id_laporan` int NOT NULL,
  `id_pengguna` int DEFAULT NULL,
  `tanggal_ekspor` datetime DEFAULT CURRENT_TIMESTAMP,
  `jenis_laporan` varchar(50) DEFAULT NULL,
  `lokasi_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modal`
--

CREATE TABLE `modal` (
  `id_modal` int NOT NULL,
  `id_pengguna` int DEFAULT NULL,
  `sumber_modal` varchar(100) DEFAULT NULL,
  `jumlah` decimal(18,2) NOT NULL,
  `tanggal_terima` date DEFAULT NULL,
  `keterangan` text,
  `tanggal_dibuat` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `modal`
--

INSERT INTO `modal` (`id_modal`, `id_pengguna`, `sumber_modal`, `jumlah`, `tanggal_terima`, `keterangan`, `tanggal_dibuat`) VALUES
(2, 1, 'Pribadi', '62000000.00', '2025-07-02', 'Modal Usaha Laundry', '2025-07-29 01:53:06'),
(3, 1, 'Pribadi', '500000000.00', '2025-07-17', 'Modal bank', '2025-07-29 02:16:11');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int NOT NULL,
  `email` varchar(100) NOT NULL,
  `kata_sandi` varchar(255) NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `tanggal_dibuat` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `email`, `kata_sandi`, `nama_lengkap`, `tanggal_dibuat`) VALUES
(1, 'Admin@go.id', '$2y$12$srmDcYpAKpWOWcd7L5GJwe3/OShtG25QsMPlZh5YoTKSQ/Lo9nigO', 'Admin PCM', '2025-07-29 01:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `statistik_ringkasan`
--

CREATE TABLE `statistik_ringkasan` (
  `id_statistik` int NOT NULL,
  `id_pengguna` int DEFAULT NULL,
  `total_nilai_aset` decimal(18,2) DEFAULT NULL,
  `jumlah_usaha` int DEFAULT NULL,
  `total_nilai_modal` decimal(18,2) DEFAULT NULL,
  `tanggal_dihitung` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usaha`
--

CREATE TABLE `usaha` (
  `id_usaha` int NOT NULL,
  `id_pengguna` int DEFAULT NULL,
  `nama_usaha` varchar(100) NOT NULL,
  `jenis_usaha` varchar(50) DEFAULT NULL,
  `keterangan` text,
  `tanggal_dibuat` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `usaha`
--

INSERT INTO `usaha` (`id_usaha`, `id_pengguna`, `nama_usaha`, `jenis_usaha`, `keterangan`, `tanggal_dibuat`) VALUES
(2, 1, 'Laundry', 'UMKM', 'Tempat Cuci Pakaian', '2025-07-29 02:23:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aset`
--
ALTER TABLE `aset`
  ADD PRIMARY KEY (`id_aset`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `impor_excel`
--
ALTER TABLE `impor_excel`
  ADD PRIMARY KEY (`id_impor`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `laporan_pdf`
--
ALTER TABLE `laporan_pdf`
  ADD PRIMARY KEY (`id_laporan`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `modal`
--
ALTER TABLE `modal`
  ADD PRIMARY KEY (`id_modal`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `statistik_ringkasan`
--
ALTER TABLE `statistik_ringkasan`
  ADD PRIMARY KEY (`id_statistik`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `usaha`
--
ALTER TABLE `usaha`
  ADD PRIMARY KEY (`id_usaha`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aset`
--
ALTER TABLE `aset`
  MODIFY `id_aset` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `impor_excel`
--
ALTER TABLE `impor_excel`
  MODIFY `id_impor` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laporan_pdf`
--
ALTER TABLE `laporan_pdf`
  MODIFY `id_laporan` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modal`
--
ALTER TABLE `modal`
  MODIFY `id_modal` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `statistik_ringkasan`
--
ALTER TABLE `statistik_ringkasan`
  MODIFY `id_statistik` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usaha`
--
ALTER TABLE `usaha`
  MODIFY `id_usaha` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aset`
--
ALTER TABLE `aset`
  ADD CONSTRAINT `aset_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`);

--
-- Constraints for table `impor_excel`
--
ALTER TABLE `impor_excel`
  ADD CONSTRAINT `impor_excel_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`);

--
-- Constraints for table `laporan_pdf`
--
ALTER TABLE `laporan_pdf`
  ADD CONSTRAINT `laporan_pdf_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`);

--
-- Constraints for table `modal`
--
ALTER TABLE `modal`
  ADD CONSTRAINT `modal_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`);

--
-- Constraints for table `statistik_ringkasan`
--
ALTER TABLE `statistik_ringkasan`
  ADD CONSTRAINT `statistik_ringkasan_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`);

--
-- Constraints for table `usaha`
--
ALTER TABLE `usaha`
  ADD CONSTRAINT `usaha_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
