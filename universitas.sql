-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Des 2022 pada 03.35
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `universitas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alumni`
--

CREATE TABLE `alumni` (
  `nim` char(10) NOT NULL,
  `nm_alumni` varchar(30) NOT NULL,
  `prodi` enum('Sistem Informasi','Teknik Informatika','Manajemen Informatika','Komputerisasi Akuntansi','Bisnis Digital') NOT NULL,
  `tmpt_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `thn_lulus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alumni`
--

INSERT INTO `alumni` (`nim`, `nm_alumni`, `prodi`, `tmpt_lahir`, `tgl_lahir`, `alamat`, `no_hp`, `thn_lulus`) VALUES
('0711500096', 'Rio Saputra', 'Teknik Informatika', 'Jakarta', '1980-07-11', 'Jl. Raya Bogor no. 625, Jakarta Timur', '08924256178', 2011),
('0911500142', 'Trihandoko', 'Teknik Informatika', 'Bandung', '1987-01-05', 'Jl. Ahmad Yani no. 77A, Surabaya', '082189102019', 2013),
('1022300001', 'Septiawan', 'Manajemen Informatika', 'Cimahi', '1990-08-31', 'Jl. Pahlawan, Semarang', '08118210981', 2016),
('1111510082', 'Yura Johansen', 'Teknik Informatika', 'Serang', '1979-12-13', 'Boulevard St., New York, USA', '25718981', 2013),
('1222501272', 'Annisa Melati', 'Sistem Informasi', 'Kediri', '1996-03-24', 'Jl. Riau no. 152, Bandung', '081261829182', 2016),
('1444300025', 'Berliana Hertianti', 'Komputerisasi Akuntansi', 'Purwakarta', '1999-02-13', 'Jl. Depati Amir no. 98, Pangkalpinang', '081271782910', 2017);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
