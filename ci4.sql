-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jun 2021 pada 01.19
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', '550f97bbb9221502e4e2561ad43e51a9', '2021-06-10 10:13:04'),
(2, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', '550f97bbb9221502e4e2561ad43e51a9', '2021-06-10 10:14:13'),
(3, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', 'a040353d3c7c5fce4cde7104121c79b0', '2021-06-10 10:18:18'),
(4, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', 'a040353d3c7c5fce4cde7104121c79b0', '2021-06-10 10:20:05'),
(5, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', 'a040353d3c7c5fce4cde7104121c79b0', '2021-06-10 10:23:56'),
(6, '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', 'e8a947a7481d95112cfbdff578afac9b', '2021-06-10 10:27:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'yandrizal299@gmail.com', 1, '2021-06-10 09:52:34', 0),
(2, '::1', 'yandrizal299@gmail.com', 1, '2021-06-10 09:52:35', 0),
(3, '::1', 'yandrizal299@gmail.com', 3, '2021-06-10 10:13:40', 0),
(4, '::1', 'yandrizal299@gmail.com', 4, '2021-06-10 10:19:17', 1),
(5, '::1', 'yandrizal299@gmail.com', 4, '2021-06-10 10:19:17', 1),
(6, '::1', 'yandrizal299@gmail.com', 4, '2021-06-10 10:19:57', 1),
(7, '::1', 'yandrizal299@gmail.com', 6, '2021-06-10 10:30:54', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(2, 'One Piece', 'one-piece', 'Eichiro Oda', 'Gramedia', 'onepiece.jpg', '2021-06-09 01:12:34', '2021-06-09 04:56:46'),
(3, 'Black Clover', 'black-clover', 'Yuki Tabata', 'Shonen Jump', '1623247866_0400f92f1bfdffb56cca.jpg', '2021-06-09 03:18:52', '2021-06-09 09:11:06'),
(5, 'Naruto', 'naruto', 'Masashi Kishimoto', 'Shounen Jump', 'naruto.jpg', '2021-06-09 04:22:44', '2021-06-09 08:33:19'),
(19, 'fdf', 'fdf', 'gfg', 'fgfg', 'default.jpg', '2021-06-09 08:59:40', '2021-06-09 08:59:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-06-09-141808', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1623248912, 1),
(2, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1623328357, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Yessi Namaga', 'Ds. Kyai Mojo No. 641, Tual 53398, DKI', '1974-12-11 03:35:57', '2021-06-09 18:53:19'),
(2, 'Edison Saptono', 'Jln. Ahmad Dahlan No. 145, Kupang 76094, Kalsel', '1977-09-04 21:16:06', '2021-06-09 18:53:20'),
(3, 'Kayla Yuliarti S.E.', 'Dk. Wahid No. 765, Manado 85808, Sulut', '1987-07-19 23:54:47', '2021-06-09 18:53:20'),
(4, 'Ian Rahmat Situmorang', 'Gg. Wahidin No. 501, Palembang 35573, Jateng', '2014-01-18 00:08:35', '2021-06-09 18:53:20'),
(5, 'Eli Talia Nuraini', 'Ds. Moch. Yamin No. 387, Palu 25426, Kepri', '1973-01-14 21:47:00', '2021-06-09 18:53:20'),
(6, 'Vivi Nurdiyanti M.Farm', 'Ki. B.Agam Dlm No. 331, Ternate 19437, Kaltim', '1975-06-25 22:33:42', '2021-06-09 18:53:20'),
(7, 'Bagya Cengkal Suryono S.Pd', 'Psr. Aceh No. 896, Tasikmalaya 32087, Banten', '1972-09-25 12:20:59', '2021-06-09 18:53:20'),
(8, 'Qori Halimah', 'Jln. Abdul Muis No. 997, Blitar 87522, Jabar', '1980-10-28 23:20:00', '2021-06-09 18:53:20'),
(9, 'Irma Zulfa Mulyani', 'Ki. K.H. Maskur No. 50, Yogyakarta 91767, Sumut', '2016-06-28 07:38:01', '2021-06-09 18:53:20'),
(10, 'Maya Dalima Nasyiah', 'Psr. B.Agam 1 No. 476, Pagar Alam 28222, Bengkulu', '2011-09-22 08:18:05', '2021-06-09 18:53:20'),
(11, 'Rahmat Prayoga', 'Ds. Rajawali Barat No. 616, Payakumbuh 28387, DIY', '1997-06-07 11:59:55', '2021-06-09 18:53:20'),
(12, 'Hamima Carla Melani S.Farm', 'Jln. Salatiga No. 461, Administrasi Jakarta Pusat 62348, Babel', '2013-03-23 13:30:39', '2021-06-09 18:53:20'),
(13, 'Ganjaran Gunarto', 'Kpg. Tentara Pelajar No. 49, Sibolga 39964, Sumsel', '1989-11-25 15:46:35', '2021-06-09 18:53:20'),
(14, 'Balangga Kajen Wahyudin M.Farm', 'Ds. Kartini No. 943, Pekanbaru 22178, Maluku', '1993-11-21 16:17:10', '2021-06-09 18:53:20'),
(15, 'Laswi Cemeti Sihombing S.Gz', 'Jr. Imam Bonjol No. 946, Palembang 91611, Maluku', '2012-09-04 08:49:52', '2021-06-09 18:53:20'),
(16, 'Dipa Prasetyo', 'Ki. Arifin No. 64, Banjarmasin 59660, Babel', '1993-12-07 22:50:04', '2021-06-09 18:53:20'),
(17, 'Tania Paulin Mandasari S.H.', 'Kpg. Kartini No. 306, Bima 67623, Malut', '1973-09-09 00:46:17', '2021-06-09 18:53:20'),
(18, 'Dariati Usman Waluyo', 'Gg. Lembong No. 386, Bontang 29036, NTT', '1972-07-03 07:38:03', '2021-06-09 18:53:20'),
(19, 'Prayoga Nababan', 'Jr. Tentara Pelajar No. 262, Surabaya 24728, Jateng', '1992-03-22 12:05:11', '2021-06-09 18:53:20'),
(20, 'Ika Kayla Rahmawati S.Pt', 'Jr. Jamika No. 496, Bukittinggi 69998, Riau', '1987-04-05 01:09:40', '2021-06-09 18:53:20'),
(21, 'Anom Bagus Jailani M.Kom.', 'Ki. Badak No. 824, Metro 23658, DKI', '2016-02-24 22:40:32', '2021-06-09 18:53:20'),
(22, 'Ajiono Prasetya M.M.', 'Dk. Ikan No. 229, Tegal 39496, DIY', '2001-08-18 13:33:30', '2021-06-09 18:53:20'),
(23, 'Makara Dalimin Sinaga', 'Jln. HOS. Cjokroaminoto (Pasirkaliki) No. 179, Tanjungbalai 32437, Sulut', '2015-03-19 19:32:57', '2021-06-09 18:53:20'),
(24, 'Dalima Rachel Lestari M.Ak', 'Kpg. Daan No. 679, Palangka Raya 12338, Kalbar', '1985-10-20 07:51:34', '2021-06-09 18:53:20'),
(25, 'Heru Emas Kurniawan S.H.', 'Jr. Gambang No. 158, Solok 49461, NTT', '1994-08-26 06:32:35', '2021-06-09 18:53:20'),
(26, 'Iriana Nasyidah', 'Ds. Bakaru No. 221, Cimahi 93888, Sumut', '1990-01-03 03:58:13', '2021-06-09 18:53:21'),
(27, 'Uchita Astuti', 'Dk. Industri No. 912, Subulussalam 47370, Kalbar', '2011-10-17 22:07:31', '2021-06-09 18:53:21'),
(28, 'Dodo Wibowo', 'Ki. Bakit  No. 475, Serang 36682, Pabar', '2012-11-05 23:47:47', '2021-06-09 18:53:21'),
(29, 'Gangsar Gada Budiyanto', 'Jln. Babadan No. 484, Bima 96316, Sulut', '1979-04-16 09:55:00', '2021-06-09 18:53:21'),
(30, 'Laras Pertiwi', 'Jln. Achmad Yani No. 896, Mataram 70298, DKI', '1988-12-02 17:29:54', '2021-06-09 18:53:21'),
(31, 'Nilam Endah Aryani', 'Dk. Sunaryo No. 733, Bima 43944, Bali', '2015-11-11 17:47:05', '2021-06-09 18:53:21'),
(32, 'Betania Olivia Mardhiyah', 'Kpg. Muwardi No. 122, Tarakan 26146, Maluku', '1972-02-26 01:38:02', '2021-06-09 18:53:21'),
(33, 'Dimaz Dimas Mansur M.Pd', 'Dk. Barat No. 701, Jambi 66448, Maluku', '2014-12-28 13:17:53', '2021-06-09 18:53:21'),
(34, 'Garda Winarno', 'Psr. Kebangkitan Nasional No. 136, Depok 75399, Sulbar', '1978-01-10 13:48:53', '2021-06-09 18:53:21'),
(35, 'Arsipatra Pratama S.E.', 'Psr. Rajiman No. 774, Bau-Bau 52925, Sumsel', '1996-11-03 13:28:28', '2021-06-09 18:53:21'),
(36, 'Atma Wasis Hutasoit M.M.', 'Jr. Basuki No. 458, Bengkulu 63148, Sulut', '1978-07-23 06:14:54', '2021-06-09 18:53:21'),
(37, 'Puput Kezia Palastri', 'Kpg. Bakit  No. 24, Bitung 22763, Kalteng', '2010-11-26 22:25:25', '2021-06-09 18:53:21'),
(38, 'Joko Uwais', 'Jln. Industri No. 913, Padangsidempuan 44641, Kepri', '1997-05-06 02:58:38', '2021-06-09 18:53:21'),
(39, 'Silvia Karen Rahmawati M.Pd', 'Dk. Veteran No. 379, Mojokerto 72851, DKI', '1984-01-15 18:59:22', '2021-06-09 18:53:21'),
(40, 'Yuni Yulia Melani M.M.', 'Jr. Teuku Umar No. 222, Bandung 72315, Kaltim', '2014-10-22 09:25:24', '2021-06-09 18:53:21'),
(41, 'Kardi Pangestu', 'Dk. Ekonomi No. 500, Pekanbaru 61554, Sumsel', '1976-09-09 04:03:23', '2021-06-09 18:53:21'),
(42, 'Kawaya Winarno', 'Ki. Banceng Pondok No. 643, Pekanbaru 24485, Kaltim', '1973-05-15 22:03:33', '2021-06-09 18:53:21'),
(43, 'Dina Titi Purwanti', 'Ds. Tentara Pelajar No. 116, Bau-Bau 67644, Kaltim', '1971-04-25 06:58:44', '2021-06-09 18:53:21'),
(44, 'Yunita Kani Rahayu S.Sos', 'Jr. Wahidin Sudirohusodo No. 450, Samarinda 32809, Kepri', '1995-02-19 05:14:48', '2021-06-09 18:53:21'),
(45, 'Rika Pratiwi', 'Ds. Ters. Buah Batu No. 766, Samarinda 91328, DKI', '1970-08-21 22:22:57', '2021-06-09 18:53:21'),
(46, 'Raden Zulkarnain', 'Gg. Mahakam No. 36, Bandar Lampung 76210, Sulsel', '2015-02-10 04:21:19', '2021-06-09 18:53:22'),
(47, 'Ratih Widiastuti', 'Ki. Gegerkalong Hilir No. 403, Tomohon 27591, Pabar', '2002-07-14 00:05:10', '2021-06-09 18:53:22'),
(48, 'Maman Jamal Tamba', 'Psr. Cikutra Timur No. 954, Tarakan 31302, Sulut', '1984-10-22 17:40:15', '2021-06-09 18:53:22'),
(49, 'Kuncara Dartono Haryanto', 'Kpg. Sutarjo No. 930, Bitung 13266, Babel', '1973-08-30 04:57:21', '2021-06-09 18:53:22'),
(50, 'Wulan Andriani S.Farm', 'Gg. Babadak No. 333, Madiun 19796, Bali', '2014-03-12 01:05:57', '2021-06-09 18:53:22'),
(51, 'Siska Puspasari', 'Dk. Bappenas No. 661, Padangpanjang 92316, Sultra', '1980-03-21 10:09:16', '2021-06-09 18:53:22'),
(52, 'Vivi Clara Wastuti S.T.', 'Ds. Jend. Sudirman No. 947, Singkawang 22014, Malut', '2018-11-05 19:34:04', '2021-06-09 18:53:22'),
(53, 'Olivia Tami Nuraini S.Gz', 'Jr. B.Agam Dlm No. 226, Cirebon 18363, Pabar', '2001-01-31 04:56:12', '2021-06-09 18:53:22'),
(54, 'Lega Sihotang', 'Ki. Baan No. 87, Jayapura 88756, Pabar', '1992-09-07 04:44:21', '2021-06-09 18:53:22'),
(55, 'Kajen Pradana', 'Ki. W.R. Supratman No. 503, Bima 74286, Malut', '2007-12-15 10:34:18', '2021-06-09 18:53:22'),
(56, 'Kayla Wijayanti', 'Jln. Baranang No. 78, Cilegon 89320, DIY', '1996-01-09 08:45:22', '2021-06-09 18:53:22'),
(57, 'Purwanto Damanik', 'Gg. Moch. Toha No. 159, Tegal 26034, Sumut', '2010-03-06 20:23:41', '2021-06-09 18:53:22'),
(58, 'Kamaria Namaga', 'Ds. Achmad No. 777, Solok 51800, Jabar', '1995-05-28 22:45:33', '2021-06-09 18:53:22'),
(59, 'Lamar Damanik', 'Jln. Casablanca No. 798, Parepare 16444, Maluku', '2019-11-23 21:05:32', '2021-06-09 18:53:22'),
(60, 'Saiful Jasmani Saputra S.Pd', 'Gg. Salam No. 996, Bengkulu 17053, Bengkulu', '2020-06-01 13:15:26', '2021-06-09 18:53:22'),
(61, 'Raihan Budiman M.M.', 'Ds. Panjaitan No. 694, Payakumbuh 64201, Kaltara', '1986-04-18 19:46:19', '2021-06-09 18:53:22'),
(62, 'Agnes Hafshah Mulyani', 'Gg. K.H. Wahid Hasyim (Kopo) No. 91, Bima 90326, Kaltim', '1975-07-25 13:55:48', '2021-06-09 18:53:22'),
(63, 'Uchita Ina Hariyah M.Kom.', 'Gg. Soekarno Hatta No. 263, Samarinda 17527, Jabar', '2009-04-07 16:33:33', '2021-06-09 18:53:22'),
(64, 'Ella Usada', 'Psr. Dr. Junjunan No. 989, Bitung 57658, Kalteng', '1995-02-16 16:45:31', '2021-06-09 18:53:22'),
(65, 'Suci Prastuti', 'Jr. Babah No. 378, Dumai 44791, NTT', '1983-11-01 21:23:47', '2021-06-09 18:53:22'),
(66, 'Wani Bella Rahimah S.Ked', 'Gg. Sugiono No. 435, Bitung 45083, Maluku', '2019-09-28 10:36:01', '2021-06-09 18:53:22'),
(67, 'Hardana Setya Maheswara', 'Dk. Suprapto No. 115, Kendari 24435, Sumsel', '2001-12-03 09:33:56', '2021-06-09 18:53:22'),
(68, 'Maria Permata', 'Kpg. Halim No. 209, Ternate 66736, Aceh', '2005-12-30 03:41:55', '2021-06-09 18:53:22'),
(69, 'Ayu Wijayanti', 'Kpg. HOS. Cjokroaminoto (Pasirkaliki) No. 196, Kediri 81185, Pabar', '1983-12-16 06:55:19', '2021-06-09 18:53:22'),
(70, 'Zulaikha Rahayu Hassanah S.IP', 'Psr. Dipenogoro No. 699, Bengkulu 64272, Sulut', '1994-08-06 21:08:25', '2021-06-09 18:53:22'),
(71, 'Reksa Kurniawan', 'Jln. Ki Hajar Dewantara No. 27, Tual 81727, Sumut', '2014-03-19 03:15:14', '2021-06-09 18:53:22'),
(72, 'Shania Diana Farida', 'Psr. Juanda No. 792, Pariaman 86352, Malut', '1990-12-31 08:31:53', '2021-06-09 18:53:23'),
(73, 'Gina Susanti', 'Ki. Badak No. 903, Sukabumi 56897, Bali', '2012-03-05 11:57:57', '2021-06-09 18:53:23'),
(74, 'Prasetya Gandi Saragih', 'Jln. Suniaraja No. 329, Pariaman 97709, Bali', '1977-06-13 20:56:14', '2021-06-09 18:53:23'),
(75, 'Almira Hilda Laksmiwati M.Ak', 'Dk. Bahagia No. 285, Bandung 96886, Kaltara', '2018-07-26 06:30:16', '2021-06-09 18:53:23'),
(76, 'Cemani Kayun Januar S.Pt', 'Jr. Basoka Raya No. 245, Tasikmalaya 16231, Gorontalo', '2005-12-05 03:37:46', '2021-06-09 18:53:23'),
(77, 'Maya Padmasari', 'Jln. Basmol Raya No. 569, Lubuklinggau 90657, DKI', '2017-09-16 16:56:54', '2021-06-09 18:53:23'),
(78, 'Paramita Suryatmi', 'Ki. Wora Wari No. 701, Bengkulu 48911, Sumsel', '1993-07-11 21:46:53', '2021-06-09 18:53:23'),
(79, 'Mustika Januar', 'Psr. Ujung No. 879, Tangerang Selatan 54309, Sumsel', '1989-06-06 18:25:51', '2021-06-09 18:53:23'),
(80, 'Anggabaya Kalim Megantara', 'Psr. Basuki Rahmat  No. 481, Cirebon 53624, Maluku', '1998-05-07 18:14:43', '2021-06-09 18:53:23'),
(81, 'Sabrina Lintang Oktaviani', 'Jr. Fajar No. 258, Manado 72694, Jateng', '2003-08-02 03:49:57', '2021-06-09 18:53:23'),
(82, 'Prayogo Budiman', 'Ds. Kalimantan No. 972, Pagar Alam 45043, NTT', '1971-02-10 07:51:35', '2021-06-09 18:53:23'),
(83, 'Balijan Sirait M.Ak', 'Gg. Casablanca No. 182, Tidore Kepulauan 32636, Aceh', '1990-01-22 06:30:34', '2021-06-09 18:53:23'),
(84, 'Dina Riyanti S.T.', 'Jln. Supomo No. 906, Ternate 62574, Babel', '1976-12-23 10:19:40', '2021-06-09 18:53:23'),
(85, 'Adinata Pranowo', 'Kpg. Suniaraja No. 108, Manado 33081, Riau', '2011-10-25 08:58:16', '2021-06-09 18:53:23'),
(86, 'Dono Wibowo', 'Dk. Warga No. 799, Bandung 26627, Kaltara', '2017-08-11 12:45:31', '2021-06-09 18:53:23'),
(87, 'Bakti Catur Prasetya', 'Ds. Bakti No. 660, Jambi 12221, Jatim', '2021-05-23 22:45:24', '2021-06-09 18:53:23'),
(88, 'Cakrawala Saputra', 'Kpg. Astana Anyar No. 138, Tangerang Selatan 92093, Sulteng', '1998-08-31 00:35:03', '2021-06-09 18:53:23'),
(89, 'Zulaikha Safitri', 'Kpg. Basoka No. 375, Bau-Bau 16829, Maluku', '2017-04-13 17:55:20', '2021-06-09 18:53:23'),
(90, 'Ira Talia Hartati S.E.I', 'Ki. Moch. Toha No. 522, Probolinggo 14219, Kalsel', '1988-03-31 11:59:49', '2021-06-09 18:53:23'),
(91, 'Puti Farida', 'Gg. R.E. Martadinata No. 832, Padangpanjang 21080, NTB', '2006-01-13 23:59:29', '2021-06-09 18:53:23'),
(92, 'Imam Megantara', 'Jln. Villa No. 110, Batu 30819, Kepri', '2019-04-05 13:03:48', '2021-06-09 18:53:23'),
(93, 'Calista Maryati', 'Jln. Cokroaminoto No. 472, Tangerang Selatan 17281, Kalteng', '2001-03-04 02:35:47', '2021-06-09 18:53:23'),
(94, 'Gamani Lurhur Santoso S.Ked', 'Dk. Villa No. 253, Administrasi Jakarta Pusat 58838, Jabar', '1998-07-28 23:38:34', '2021-06-09 18:53:23'),
(95, 'Restu Maimunah Uyainah M.M.', 'Psr. Baranang Siang No. 424, Cirebon 52331, Sulut', '1985-07-08 12:42:51', '2021-06-09 18:53:23'),
(96, 'Maryanto Hadi Dabukke', 'Gg. Ciumbuleuit No. 473, Samarinda 41774, Bali', '2008-02-16 17:35:09', '2021-06-09 18:53:24'),
(97, 'Jono Situmorang', 'Ki. Kyai Gede No. 344, Tebing Tinggi 39876, Babel', '1995-11-08 07:28:37', '2021-06-09 18:53:24'),
(98, 'Lili Zizi Suryatmi', 'Ds. Ters. Pasir Koja No. 532, Pekanbaru 36371, Kaltara', '1985-12-23 02:41:15', '2021-06-09 18:53:24'),
(99, 'Rina Juli Melani', 'Jr. Yohanes No. 381, Cirebon 46823, Kalsel', '1994-05-29 13:29:45', '2021-06-09 18:53:24'),
(100, 'Laksana Napitupulu', 'Gg. Sugiono No. 362, Sawahlunto 39891, DKI', '2003-04-30 18:24:10', '2021-06-09 18:53:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'yandrizal299@gmail.com', 'admin1', '$2y$10$4NfelOo/80wefgbb9Y3QVOHUkHt2sl3JGK3sd/I.vbZoMzWP1FJSu', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-06-10 10:30:45', '2021-06-10 10:30:45', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
