-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2023 at 08:20 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtukti_muhammadrizaldyfauzan`
--

-- --------------------------------------------------------

--
-- Table structure for table `penerbit_muhammadrizaldyfauzan`
--

CREATE TABLE `penerbit_muhammadrizaldyfauzan` (
  `id_penerbit` int(11) NOT NULL,
  `nama_penerbit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penerbit_muhammadrizaldyfauzan`
--

INSERT INTO `penerbit_muhammadrizaldyfauzan` (`id_penerbit`, `nama_penerbit`) VALUES
(1, 'Institusi'),
(2, 'Jurusan Teknik Sipil'),
(3, 'Jurusan Teknik Mesin'),
(4, 'Jurusan Teknik Elektro'),
(5, 'Jurusan Akuntansi'),
(6, 'Jurusan Administrasi Bisnis');

-- --------------------------------------------------------

--
-- Table structure for table `pengesahan_muhammadrizaldyfauzan`
--

CREATE TABLE `pengesahan_muhammadrizaldyfauzan` (
  `id_pengesahan` int(11) NOT NULL,
  `nama_pengesahan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengesahan_muhammadrizaldyfauzan`
--

INSERT INTO `pengesahan_muhammadrizaldyfauzan` (`id_pengesahan`, `nama_pengesahan`) VALUES
(10, 'Direktur'),
(11, 'Ketua Jurusan Teknik Sipil'),
(12, 'Ketua Jurusan Teknik Mesin'),
(13, 'Ketua Jurusan Teknik Elektro'),
(14, 'Ketua Jurusan Akuntansi'),
(15, 'Ketua Jurusan Administrasi Bisnis');

-- --------------------------------------------------------

--
-- Table structure for table `suratkeluar_muhammadrizaldyfauzan`
--

CREATE TABLE `suratkeluar_muhammadrizaldyfauzan` (
  `nosurat_keluar` int(11) NOT NULL,
  `nama_pengirim` varchar(255) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `lampiran` varchar(255) NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `nama_penerima` varchar(255) NOT NULL,
  `isi_surat` varchar(255) NOT NULL,
  `id_penerbit` varchar(255) NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `id_pengesahan` varchar(255) NOT NULL,
  `tembusan` varchar(255) NOT NULL,
  `file_scan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suratmasuk_muhammadrizaldyfauzan`
--

CREATE TABLE `suratmasuk_muhammadrizaldyfauzan` (
  `nosurat_masuk` int(11) NOT NULL,
  `nama_pengirim` varchar(50) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `lampiran` varchar(50) NOT NULL,
  `perihal` varchar(50) NOT NULL,
  `nama_penerima` varchar(50) NOT NULL,
  `isi_surat` varchar(50) NOT NULL,
  `id_penerbit` varchar(50) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `id_pengesahan` varchar(50) NOT NULL,
  `tembusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suratmasuk_muhammadrizaldyfauzan`
--

INSERT INTO `suratmasuk_muhammadrizaldyfauzan` (`nosurat_masuk`, `nama_pengirim`, `waktu`, `lampiran`, `perihal`, `nama_penerima`, `isi_surat`, `id_penerbit`, `tempat`, `id_pengesahan`, `tembusan`) VALUES
(10000, 'Budi', '14 Agustu 2023', '1', 'Ujian', 'Poliban', 'UJIKOM', '5', 'Banjar', '14', 'LSP'),
(12222, 'Ijul', '14 Agustu 2023', '1', 'Ujian', 'Poliban', 'UJIKOM', '5', 'Banjar', '14', 'LSP'),
(12223, 'Budi', '14 Agustu 2023', '2', 'Ujian', 'Poliban', 'UJIKOM', '1', 'Banjar', '10', 'LSP');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `id_level`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `penerbit_muhammadrizaldyfauzan`
--
ALTER TABLE `penerbit_muhammadrizaldyfauzan`
  ADD PRIMARY KEY (`id_penerbit`);

--
-- Indexes for table `pengesahan_muhammadrizaldyfauzan`
--
ALTER TABLE `pengesahan_muhammadrizaldyfauzan`
  ADD PRIMARY KEY (`id_pengesahan`);

--
-- Indexes for table `suratkeluar_muhammadrizaldyfauzan`
--
ALTER TABLE `suratkeluar_muhammadrizaldyfauzan`
  ADD PRIMARY KEY (`nosurat_keluar`);

--
-- Indexes for table `suratmasuk_muhammadrizaldyfauzan`
--
ALTER TABLE `suratmasuk_muhammadrizaldyfauzan`
  ADD PRIMARY KEY (`nosurat_masuk`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
