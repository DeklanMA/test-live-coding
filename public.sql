-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 04 Des 2025 pada 05.16
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `public`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artis`
--

CREATE TABLE `artis` (
  `id_artis` varchar(100) NOT NULL,
  `nm_artis` varchar(100) NOT NULL,
  `jk` varchar(100) NOT NULL,
  `bayaran` int NOT NULL,
  `award` int NOT NULL,
  `negara` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `artis`
--

INSERT INTO `artis` (`id_artis`, `nm_artis`, `jk`, `bayaran`, `award`, `negara`) VALUES
('A001', 'Robert Down jr', 'pria', 7000000, 2, 'AS'),
('A002', 'Angelina', 'wanita', 6000000, 1, 'AS'),
('A003', 'JAckie', 'pria', 2000000, 7, 'HK'),
('A004', 'Joe Taslim', 'pria', 3500000, 1, 'ID'),
('A005', 'Chelsea Islan', 'wanita', 3000000, 0, 'ID');

-- --------------------------------------------------------

--
-- Struktur dari tabel `film`
--

CREATE TABLE `film` (
  `id_film` varchar(10) NOT NULL,
  `nm_film` varchar(50) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `artis` varchar(50) NOT NULL,
  `produser` varchar(50) NOT NULL,
  `pendapatan` int NOT NULL,
  `nominasi` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `film`
--

INSERT INTO `film` (`id_film`, `nm_film`, `genre`, `artis`, `produser`, `pendapatan`, `nominasi`) VALUES
('F001', 'IRON MAN', 'G001', 'A001', 'PD01', 20000000, 3),
('F002', 'IRON MAN 2', 'G001', 'A001', 'PD01', 18000000, 2),
('F003', 'IRON MAN 3', 'G001', 'A001', 'PD01', 12000000, 0),
('F005', 'POLICE STORY', 'G001', 'A003', 'PD02', 72000000, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `genre`
--

CREATE TABLE `genre` (
  `id_genre` varchar(50) NOT NULL,
  `nm_genre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `genre`
--

INSERT INTO `genre` (`id_genre`, `nm_genre`) VALUES
('G001', 'ACTION'),
('G002', 'HORROR'),
('G003', 'COMEDY'),
('G004', 'DRAMA'),
('G005', 'THRILLER'),
('G006', 'FICTION');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `id` int NOT NULL,
  `nama` varchar(55) NOT NULL,
  `id_propinsi` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`id`, `nama`, `id_propinsi`) VALUES
(1, 'Jakarta', 1),
(2, 'Bandung', 2),
(3, 'Sumedang', 3),
(4, 'makasar', 4),
(5, 'surabay', 5),
(6, 'medan', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `negara`
--

CREATE TABLE `negara` (
  `id_negara` varchar(100) NOT NULL,
  `nm_negara` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `negara`
--

INSERT INTO `negara` (`id_negara`, `nm_negara`) VALUES
('AS', 'Amerika Serikat'),
('HK', 'Hongkong'),
('ID', 'INDONESIA'),
('IN', 'INDIA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int NOT NULL,
  `umur` int NOT NULL,
  `nama` varchar(55) NOT NULL,
  `status` varchar(15) NOT NULL,
  `gapok` mediumint NOT NULL,
  `tunjangan` int NOT NULL,
  `gaji_terima` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `umur`, `nama`, `status`, `gapok`, `tunjangan`, `gaji_terima`) VALUES
(1, 30, 'nugroho', 'T', 500, 200, 700),
(2, 22, 'bagus', 'M', 500, 0, 500),
(3, 21, 'dudi', 'M', 500, 0, 500),
(4, 12, 'dino', 'M', 500, 0, 500),
(5, 0, 'dono', 'M', 500, 0, 500);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produser`
--

CREATE TABLE `produser` (
  `kd_produser` varchar(50) NOT NULL,
  `nm_produser` varchar(50) NOT NULL,
  `internasional` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `produser`
--

INSERT INTO `produser` (`kd_produser`, `nm_produser`, `internasional`) VALUES
('PD01', 'marvel', 'YA'),
('PD02', 'Hongkong cinema', 'YA'),
('PD03', 'rapi film', 'TIDAK'),
('PD04', 'Parkit', 'TIDAK'),
('PD05', 'PARAMON Cinema', 'YA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `propinsi`
--

CREATE TABLE `propinsi` (
  `id` int NOT NULL,
  `nama` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `propinsi`
--

INSERT INTO `propinsi` (`id`, `nama`) VALUES
(1, 'DKI Jakarta'),
(2, 'Jawa Barat'),
(3, 'Papua Barat'),
(4, 'Sulawesi Selatan'),
(5, 'Jawa Timur');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artis`
--
ALTER TABLE `artis`
  ADD PRIMARY KEY (`id_artis`);

--
-- Indeks untuk tabel `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id_film`);

--
-- Indeks untuk tabel `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Indeks untuk tabel `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `negara`
--
ALTER TABLE `negara`
  ADD PRIMARY KEY (`id_negara`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `produser`
--
ALTER TABLE `produser`
  ADD PRIMARY KEY (`kd_produser`);

--
-- Indeks untuk tabel `propinsi`
--
ALTER TABLE `propinsi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kota`
--
ALTER TABLE `kota`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `propinsi`
--
ALTER TABLE `propinsi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
