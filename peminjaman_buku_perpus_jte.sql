-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Agu 2021 pada 17.02
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peminjaman_buku_perpus_jte`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `Kode_buku` int(11) NOT NULL,
  `judul_buku` varchar(20) NOT NULL,
  `penerbit` varchar(30) NOT NULL,
  `tahun_terbit` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`Kode_buku`, `judul_buku`, `penerbit`, `tahun_terbit`) VALUES
(1, 'Pengenalan Matlab', 'Multimedia Nusantara', '2011-07-05'),
(2, 'Sinyal Sistem', 'CV. Andi', '1991-01-07'),
(3, 'Programable Logic Co', 'Firma. Andy', '2001-12-24'),
(4, 'Statistik Itu Mudah', 'FMIPA UGM', '2012-08-07'),
(5, 'Pengantar Elektro', 'PLN Media', '2014-03-11'),
(6, 'Indahnya Mengkoding', 'AMIKOM', '2005-10-31'),
(7, 'Menaklukan Phyton', 'PT.IndahLestari', '2021-05-12'),
(8, 'Reneawable Energy', 'YoBerbagi', '1990-09-02'),
(9, 'Kecerdasan Buatan', 'FT.Untirta', '2021-08-01'),
(10, 'Pedoman Kalkulus', 'GrafindoNusantara', '2013-02-05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nama_mhs` varchar(50) NOT NULL,
  `alamat_mhs` text NOT NULL,
  `no_hp` int(50) NOT NULL,
  `nim` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nama_mhs`, `alamat_mhs`, `no_hp`, `nim`) VALUES
('Naga Tunggal', 'Jln.Pangeran Diponogor No. 11', 833175222, 0),
('Muhammad Figo', 'komp.Pci Blok D 98 No. 3', 833328765, 1),
('Ridho Tri putra Nanda Muhammad', 'Komp.Pci D 85 No. 9', 821170848, 3),
('Randy Elanor', 'Komp.BSD Tangerang selatan', 89994123, 4),
('Tubagus Arya Rudiansyah', 'komp. Dago No. 97', 89765412, 5),
('Yasmin Maulida', 'Jln. Oxigen no31 komp.Ks', 82567488, 7),
('Rizqi Maulana', 'Kamp.Apel No. 26', 84442788, 8),
('Adrian Ikhsanul', 'BBS 2 Jln. Tuang no21', 877765421, 9),
('Yumna Huwaida', 'Komp.TCI blok f No. 13', 821198554, 10),
('Muhammad Farid Ridho', 'Komp.Gedong damai no 81', 874446521, 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `nim_mhs` int(50) NOT NULL,
  `judul_buku` varchar(20) NOT NULL,
  `kode_buku` int(15) NOT NULL,
  `kode_peminjaman` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`nim_mhs`, `judul_buku`, `kode_buku`, `kode_peminjaman`) VALUES
(0, 'Pedoman Kalkulus', 10, 1),
(0, 'Kecerdasan Buatan', 9, 2),
(0, 'Reneawable Energy', 8, 3),
(0, 'Menaklukan Phyton', 7, 4),
(0, 'Indahnya Mengkoding', 6, 5),
(0, 'Pengantar Elektro', 5, 6),
(0, 'Statistk Itu Mudah', 4, 7),
(0, 'Programable Logic Co', 3, 8),
(0, 'Sinyal Sistem', 2, 9),
(0, 'Pengenalan Matlab', 1, 10),
(1, 'Pedoman Kalkulus', 10, 11),
(1, 'Kecerdasan Buatan', 9, 12),
(1, 'Reneawable Energy', 8, 13),
(1, 'Menaklukan Phyton', 7, 14),
(1, 'Indahnya Mengkoding', 6, 15),
(1, 'Pengantar Elektro', 5, 16),
(1, 'Statistk Itu Mudah', 4, 17),
(1, 'Programable Logic Co', 3, 18),
(1, 'Sinyal Sistem', 2, 19),
(1, 'Pengenalan Matlab', 1, 20),
(3, 'Pedoman Kalkulus', 10, 21),
(3, 'Kecerdasan Buatan', 9, 22),
(3, 'Reneawable Energy', 8, 23),
(3, 'Menaklukan Phyton', 7, 24),
(3, 'Indahnya Mengkoding', 6, 25),
(3, 'Pengantar Elektro', 5, 26),
(3, 'Statistk Itu Mudah', 4, 27),
(3, 'Programable Logic Co', 3, 28),
(3, 'Sinyal Sistem', 2, 29),
(3, 'Pengenalan Matlab', 1, 30),
(4, 'Pedoman Kalkulus', 10, 31),
(4, 'Kecerdasan Buatan', 9, 32),
(4, 'Reneawable Energy', 8, 33),
(4, 'Menaklukan Phyton', 7, 34),
(4, 'Indahnya Mengkoding', 6, 35),
(4, 'Pengantar Elektro', 5, 36),
(4, 'Statistk Itu Mudah', 4, 37),
(4, 'Programable Logic Co', 3, 38),
(4, 'Sinyal Sistem', 2, 39),
(4, 'Pengenalan Matlab', 1, 40),
(5, 'Pedoman Kalkulus', 10, 41),
(5, 'Kecerdasan Buatan', 9, 42),
(5, 'Reneawable Energy', 8, 43),
(5, 'Menaklukan Phyton', 7, 44),
(5, 'Indahnya Mengkoding', 6, 45),
(5, 'Pengantar Elektro', 5, 46),
(5, 'Statistk Itu Mudah', 4, 47),
(5, 'Programable Logic Co', 3, 48),
(5, 'Sinyal Sistem', 2, 49),
(5, 'Pengenalan Matlab', 1, 50),
(7, 'Pedoman Kalkulus', 10, 51),
(7, 'Kecerdasan Buatan', 9, 52),
(7, 'Reneawable Energy', 8, 53),
(7, 'Menaklukan Phyton', 7, 54),
(7, 'Indahnya Mengkoding', 6, 55),
(7, 'Pengantar Elektro', 5, 56),
(7, 'Statistk Itu Mudah', 4, 57),
(7, 'Programable Logic Co', 3, 58),
(7, 'Sinyal Sistem', 2, 59),
(7, 'Pengenalan Matlab', 1, 60),
(8, 'Pedoman Kalkulus', 10, 61),
(8, 'Kecerdasan Buatan', 9, 62),
(8, 'Reneawable Energy', 8, 63),
(8, 'Menaklukan Phyton', 7, 64),
(8, 'Indahnya Mengkoding', 6, 65),
(8, 'Pengantar Elektro', 5, 66),
(8, 'Statistk Itu Mudah', 4, 67),
(8, 'Programable Logic Co', 3, 68),
(8, 'Sinyal Sistem', 2, 69),
(8, 'Pengenalan Matlab', 1, 70),
(9, 'Pedoman Kalkulus', 10, 71),
(9, 'Kecerdasan Buatan', 9, 72),
(9, 'Reneawable Energy', 8, 73),
(9, 'Menaklukan Phyton', 7, 74),
(9, 'Indahnya Mengkoding', 6, 75),
(9, 'Pengantar Elektro', 5, 76),
(9, 'Statistk Itu Mudah', 4, 77),
(9, 'Programable Logic Co', 3, 78),
(9, 'Sinyal Sistem', 2, 79),
(9, 'Pengenalan Matlab', 1, 80),
(10, 'Pedoman Kalkulus', 10, 81),
(10, 'Kecerdasan Buatan', 9, 82),
(10, 'Reneawable Energy', 8, 83),
(10, 'Menaklukan Phyton', 7, 84),
(10, 'Indahnya Mengkoding', 6, 85),
(10, 'Pengantar Elektro', 5, 86),
(10, 'Statistk Itu Mudah', 4, 87),
(10, 'Programable Logic Co', 3, 88),
(10, 'Sinyal Sistem', 2, 89),
(10, 'Pengenalan Matlab', 1, 90),
(11, 'Pedoman Kalkulus', 10, 91),
(11, 'Kecerdasan Buatan', 9, 92),
(11, 'Reneawable Energy', 8, 93),
(11, 'Menaklukan Phyton', 7, 94),
(11, 'Indahnya Mengkoding', 6, 95),
(11, 'Pengantar Elektro', 5, 96),
(11, 'Statistk Itu Mudah', 4, 97),
(11, 'Programable Logic Co', 3, 98),
(11, 'Sinyal Sistem', 2, 99),
(11, 'Pengenalan Matlab', 1, 100);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`Kode_buku`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`kode_peminjaman`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `Kode_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `nim` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `kode_peminjaman` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
