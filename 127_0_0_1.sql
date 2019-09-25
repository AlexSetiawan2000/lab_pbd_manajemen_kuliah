-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2019 at 10:56 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `manajemen_universitas`
--
CREATE DATABASE IF NOT EXISTS `manajemen_universitas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `manajemen_universitas`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_agama`
--

CREATE TABLE `tb_agama` (
  `id_agama` int(11) DEFAULT NULL,
  `agama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_agama`
--

INSERT INTO `tb_agama` (`id_agama`, `agama`) VALUES
(1, 'Buddha'),
(2, 'Kristen'),
(3, 'Islam'),
(4, 'Hindu'),
(5, 'Katolik'),
(6, 'Kong Hu Cu');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dosen`
--

CREATE TABLE `tb_dosen` (
  `nik` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `id_prodi` int(11) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dosen`
--

INSERT INTO `tb_dosen` (`nik`, `nama`, `id_prodi`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `no_hp`) VALUES
(344324675, 'Liliana Swastina, S.Kom, M.Kom', 61, 'Tanggerang', '23 Desember', 'Perempuan', 'Jalan Kembang Sari no 17', '087366526354'),
(1234423422, 'Indra Pranata, S.Kom, M.Kom', 51, 'Surabaya', '19 Mei', 'Laki-Laki', 'Jalan Mawar no 14', '081255387654'),
(1234434667, 'Rahmat Hidayat, S.Kom', 43, 'Aceh', '21 April', 'Laki-Laki', 'Jalan Air Mancur no 1', '081277683546'),
(1234443446, 'Siti Cholifah S.Kom, M.Kom', 42, 'Jakarta', '22 September', 'Perempuan', 'Jalan Api no 25', '081266736546'),
(1235647556, 'Adi Sucipto, S.Kom.', 41, 'Batam', '21 Juli', 'Laki-Laki', 'Jalan Pekalongan no 5', '081277839485'),
(2122332112, 'Husnul Abdi, S.Kom, M.Kom ', 11, 'Banten', '12 Januari', 'Laki-Laki', 'Jalan Pelangi no 12', '081277654421');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `npm` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `id_prodi` int(11) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `id_agama` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`npm`, `nama`, `id_prodi`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `no_hp`, `id_agama`) VALUES
(1652253, 'Guntur', 21, 'Batam', '11 Maret', 'Laki-Laki', 'Greenland no 7', '081277654356', 3),
(1831121, 'Alex', 51, 'Cilacap', '21 Maret', 'Laki-Laki', 'Citra Indah no 32', '081266413361', 1),
(1831129, 'Felnando', 31, 'Batam', '10 Januari', 'Perempuan', 'Orchid Park no 10', '081266423281', 1),
(1831130, 'Rayson', 31, 'Batam', '35 Februari', 'Perempuan', 'BCS no 101', '081266213281', 1),
(1831131, 'Deren', 43, 'Bandung', '24 Maret', 'Perempuan', 'Bengkong no 9', '081266243281', 2),
(1831140, 'Jeremy', 43, 'Blitar', '21 Februari', 'Laki-Laki', 'Teluk Tering no 54', '081266443281', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_prodi`
--

CREATE TABLE `tb_prodi` (
  `id_prodi` int(11) NOT NULL,
  `prodi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_prodi`
--

INSERT INTO `tb_prodi` (`id_prodi`, `prodi`) VALUES
(11, 'Teknik Sipil'),
(21, 'Teknik Elektro'),
(31, 'Sistem Informasi'),
(41, 'Manajemen'),
(42, 'Akuntansi'),
(43, 'Pariwisata'),
(51, 'Ilmu Hukum'),
(61, 'Pendidikan Bahasa Inggris');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dosen`
--
ALTER TABLE `tb_dosen`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`npm`);

--
-- Indexes for table `tb_prodi`
--
ALTER TABLE `tb_prodi`
  ADD PRIMARY KEY (`id_prodi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
