-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Mar 2023 pada 09.00
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tio_ukk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(4, 'Prasarana Umum'),
(5, 'Lingkungan Hidup'),
(6, 'Perhubungan'),
(7, 'Kesehatan'),
(8, 'Pelanggaran Peraturan Daerah'),
(9, 'Perizinan'),
(10, 'Sosial'),
(11, 'Perpajakan'),
(12, 'Komunikasi dan Informatika'),
(13, 'Kepegawaian'),
(14, 'Pelayanan Kecamatan Kelurahan'),
(15, 'Pendidikan'),
(16, 'Sarana Umum'),
(17, 'Saluran Air'),
(18, 'Kejahatan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `masyarakat`
--

CREATE TABLE `masyarakat` (
  `id` int(11) NOT NULL,
  `nik` int(16) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(128) NOT NULL,
  `telepon` varchar(13) NOT NULL,
  `active` enum('active','suspend') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `masyarakat`
--

INSERT INTO `masyarakat` (`id`, `nik`, `nama`, `username`, `password`, `telepon`, `active`) VALUES
(13, 2147483647, 'tono', 'tono', '$2y$10$j1zpmEwI9Pn9fHnir63RX.Q.KifpX5tdCxRrwHhgHUyPz45H9ubBe', '08454675756', 'active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `tanggal_pengaduan` date NOT NULL,
  `nik` varchar(16) NOT NULL,
  `kategori` varchar(128) NOT NULL,
  `subkategori` varchar(128) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('0','proses','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tanggal_pengaduan`, `nik`, `kategori`, `subkategori`, `isi_laporan`, `foto`, `status`) VALUES
(7, '2023-02-14', '234728934', ' 2', '4', 'gyuyut87', 'Adit-PBO.PNG', 'proses'),
(9, '2023-02-08', '234728934', ' 2', '4', 'asdwa312', 'tool_bar1.PNG', 'proses'),
(10, '2023-02-02', '234728934', ' 3', '6', 'adqasd123', 'Silver_Surfer.jpg', 'proses'),
(11, '2023-02-20', '234728934', ' 2', '4', 'asd21312asd', 'SIKEL_SENG_KIWO_NOMER_2.png', 'proses'),
(12, '2023-03-14', '2147483647', ' 4', '10', 'rumah bocor ', '1-removebg-preview1.png', 'proses'),
(13, '2023-03-14', '2147483647', ' 5', '12', '123as', '1-removebg-preview11.png', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(128) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `level` enum('admin','petugas') NOT NULL,
  `active` enum('active','suspend') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp`, `level`, `active`) VALUES
(15, 'tio', 'tio', '$2y$10$0Zueu.ihXv3T1dVu2vdzKeSHln4cqm67T.NIE5NbRXCJ/cOgcr6MW', '08556744', 'admin', 'active'),
(16, 'azis', 'azis', '$2y$10$vWfQXcuUzkEaD7Xc/yWuAOV2Ib.l0JE2rJ2XwLlEk87VggC5Xi/Ne', '0855445676', 'petugas', 'active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subkategori`
--

CREATE TABLE `subkategori` (
  `id_subkategori` int(128) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `sub_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `subkategori`
--

INSERT INTO `subkategori` (`id_subkategori`, `id_kategori`, `sub_kategori`) VALUES
(1, 1, 'asdasdads'),
(2, 1, 'asdasd'),
(3, 2, 'dsasdasdasdasd'),
(4, 2, '213123213'),
(5, 3, 'Jambret'),
(6, 3, 'Maling asd'),
(7, 4, 'Penerangan Jalan Umum'),
(8, 4, 'Jalan'),
(9, 4, 'Jembatan'),
(10, 4, 'Saluran Air Hujan'),
(11, 5, 'Sampah'),
(12, 5, 'Limbah Industri'),
(13, 6, 'Gangguan Trafic Light'),
(14, 6, 'Kemacetan'),
(15, 6, 'Pelanggaran Parkir'),
(16, 14, 'Kecamatan Gondomanan'),
(17, 7, 'Wabah Kesrupan'),
(18, 14, 'Calo'),
(19, 18, 'Jambret');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(14, 7, '2023-02-20', 'kasian dek', 11),
(15, 9, '2023-02-20', 'aisodjoiwwoasd', 11),
(16, 11, '2023-02-21', 'asd2w13sdfsd', 11),
(17, 10, '2023-02-21', 'd213as123', 14),
(18, 10, '2023-02-21', 'sdfsdfse', 11),
(19, 12, '2023-03-14', 'oke', 15);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `subkategori`
--
ALTER TABLE `subkategori`
  ADD PRIMARY KEY (`id_subkategori`);

--
-- Indeks untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `masyarakat`
--
ALTER TABLE `masyarakat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `subkategori`
--
ALTER TABLE `subkategori`
  MODIFY `id_subkategori` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
