-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Agu 2022 pada 21.59
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajarci4`
--

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
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(30, 'asal', 'asal', 'asd', 'aqaqa', 'Kurisu.jpg', '2022-08-07 11:09:40', '2022-08-07 11:09:40'),
(31, 'Eye Shield', 'eye-shield', 'asd', 'aaaA', '1659888869_9a0bf539e4280e400c3c.jpg', '2022-08-07 11:14:29', '2022-08-07 12:48:49'),
(32, 'Naruto Shippuden', 'naruto-shippuden', 'Masashi Kishimoto', 'Shounen Jump', 'default.jpg', '2022-08-07 11:55:58', '2022-08-07 11:55:58');

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
(1, '2022-08-07-200556', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1659903693, 1),
(2, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1659984671, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Yusuf Luluh Hakim S.Pd', 'Psr. Bhayangkara No. 596, Serang 93713, Lampung', '2012-03-05 06:59:36', '2022-08-07 18:53:57'),
(2, 'Kawaya Kariman Pratama', 'Jr. Ters. Jakarta No. 81, Padangpanjang 29133, Jambi', '2019-01-11 13:03:22', '2022-08-07 18:53:57'),
(3, 'Natalia Novitasari', 'Dk. Basudewo No. 617, Kediri 22068, Bengkulu', '2022-08-02 23:05:21', '2022-08-07 18:53:57'),
(4, 'Paulin Agustina', 'Jln. Ters. Pasir Koja No. 949, Cilegon 17755, Sumbar', '1995-01-30 02:31:16', '2022-08-07 18:53:57'),
(5, 'Vanesa Nasyiah', 'Jln. Laswi No. 689, Tangerang Selatan 85241, Papua', '1978-06-04 01:27:32', '2022-08-07 18:53:57'),
(6, 'Among Sirait', 'Psr. Raya Ujungberung No. 512, Bogor 76116, Kaltara', '2019-08-22 22:16:33', '2022-08-07 18:53:57'),
(7, 'Mulyanto Jailani', 'Jr. Veteran No. 978, Tidore Kepulauan 59584, Bengkulu', '2018-01-07 21:32:52', '2022-08-07 18:53:57'),
(8, 'Kasiyah Laksmiwati M.M.', 'Ds. Ters. Pasir Koja No. 333, Kendari 74580, DKI', '2006-08-16 06:29:35', '2022-08-07 18:53:57'),
(9, 'Salwa Lili Halimah', 'Ki. Industri No. 182, Sukabumi 65032, Banten', '2019-06-07 06:12:36', '2022-08-07 18:53:57'),
(10, 'Cornelia Mardhiyah', 'Psr. Bakau Griya Utama No. 308, Palopo 71027, Papua', '1989-04-06 16:30:04', '2022-08-07 18:53:57'),
(11, 'Wira Maryadi', 'Ki. Bawal No. 371, Tanjung Pinang 23897, Aceh', '1997-05-19 12:23:07', '2022-08-07 18:53:57'),
(12, 'Rahmi Andriani S.E.I', 'Dk. Pattimura No. 388, Bandung 49664, Bali', '1980-06-05 11:29:09', '2022-08-07 18:53:57'),
(13, 'Qori Nova Anggraini', 'Kpg. Qrisdoren No. 501, Kupang 16800, Sumsel', '1991-08-14 13:24:09', '2022-08-07 18:53:57'),
(14, 'Galang Tamba', 'Dk. Teuku Umar No. 110, Palangka Raya 92235, Jambi', '1988-02-13 13:58:58', '2022-08-07 18:53:57'),
(15, 'Yunita Andriani S.Sos', 'Dk. Astana Anyar No. 558, Gorontalo 58081, Maluku', '1977-10-23 15:44:20', '2022-08-07 18:53:57'),
(16, 'Gilda Farida', 'Jln. Qrisdoren No. 823, Administrasi Jakarta Selatan 42930, Jambi', '2001-12-01 20:41:41', '2022-08-07 18:53:57'),
(17, 'Harjaya Pangestu S.Farm', 'Dk. Baja No. 756, Ambon 28679, Gorontalo', '1996-04-28 20:25:17', '2022-08-07 18:53:57'),
(18, 'Alika Melani', 'Psr. Barasak No. 693, Balikpapan 99728, Aceh', '2004-12-16 20:14:59', '2022-08-07 18:53:57'),
(19, 'Virman Marbun M.M.', 'Gg. Halim No. 948, Kediri 52151, NTB', '1990-01-03 23:42:04', '2022-08-07 18:53:58'),
(20, 'Uli Hamima Purwanti S.Sos', 'Jln. Cikapayang No. 741, Jambi 13886, DIY', '1970-08-02 09:55:58', '2022-08-07 18:53:58'),
(21, 'Samiah Dewi Rahimah S.H.', 'Ds. B.Agam Dlm No. 717, Ambon 51979, Bali', '1975-10-06 03:33:07', '2022-08-07 18:53:58'),
(22, 'Puspa Yuniar', 'Ds. Baranang Siang No. 947, Palu 36832, Kalteng', '1976-01-25 14:47:06', '2022-08-07 18:53:58'),
(23, 'Lalita Wulandari M.M.', 'Jln. Bakaru No. 690, Batu 23212, NTT', '1974-11-07 07:45:14', '2022-08-07 18:53:58'),
(24, 'Yuliana Fujiati', 'Jr. Daan No. 810, Tarakan 58985, Sumut', '1984-03-30 23:20:35', '2022-08-07 18:53:58'),
(25, 'Candra Kasiran Najmudin S.Sos', 'Ki. Astana Anyar No. 578, Administrasi Jakarta Selatan 27777, Pabar', '2022-01-28 03:03:34', '2022-08-07 18:53:58'),
(26, 'Hairyanto Maheswara', 'Dk. Gegerkalong Hilir No. 171, Kendari 12490, Sumut', '2000-11-19 05:12:29', '2022-08-07 18:53:58'),
(27, 'Kasiyah Tina Wahyuni', 'Ki. Ahmad Dahlan No. 361, Cirebon 97453, Jatim', '2001-02-16 23:15:50', '2022-08-07 18:53:58'),
(28, 'Nadine Yuliarti', 'Jr. Basuki No. 667, Padangsidempuan 63568, Jateng', '1991-01-05 14:14:13', '2022-08-07 18:53:58'),
(29, 'Zahra Nurdiyanti', 'Ds. Kartini No. 361, Singkawang 29991, Banten', '2009-04-21 08:43:22', '2022-08-07 18:53:58'),
(30, 'Ratih Susanti', 'Kpg. Bagis Utama No. 634, Payakumbuh 42345, Jambi', '1983-07-28 10:29:21', '2022-08-07 18:53:58'),
(31, 'Amelia Ira Widiastuti S.Psi', 'Ds. Otto No. 206, Serang 28800, Lampung', '1979-03-13 15:28:13', '2022-08-07 18:53:58'),
(32, 'Ellis Mayasari', 'Ki. Abdul Muis No. 34, Pagar Alam 43411, Bali', '2003-12-07 08:38:46', '2022-08-07 18:53:58'),
(33, 'Jarwa Sihombing', 'Jln. Yosodipuro No. 605, Lubuklinggau 78992, Jateng', '1985-09-23 09:36:19', '2022-08-07 18:53:58'),
(34, 'Rafi Marpaung', 'Psr. Zamrud No. 893, Parepare 49001, Jabar', '2009-08-03 01:04:02', '2022-08-07 18:53:58'),
(35, 'Hamzah Ibrani Gunarto S.H.', 'Dk. Pattimura No. 531, Administrasi Jakarta Pusat 44187, Aceh', '1972-11-27 07:41:08', '2022-08-07 18:53:58'),
(36, 'Imam Sinaga S.Sos', 'Gg. PHH. Mustofa No. 6, Probolinggo 47558, Sumsel', '1999-04-21 23:03:50', '2022-08-07 18:53:58'),
(37, 'Arsipatra Gatot Siregar', 'Ds. Setia Budi No. 245, Bima 77696, Kaltim', '2014-10-25 08:41:49', '2022-08-07 18:53:58'),
(38, 'Capa Saiful Situmorang M.TI.', 'Ds. Abdullah No. 685, Metro 90196, Jambi', '2011-09-16 22:43:11', '2022-08-07 18:53:58'),
(39, 'Titin Laksmiwati M.M.', 'Psr. Taman No. 170, Sabang 16799, Kaltim', '1972-11-13 16:23:55', '2022-08-07 18:53:58'),
(40, 'Kayun Mustofa', 'Dk. Setia Budi No. 617, Banjarbaru 69904, Aceh', '1984-07-18 09:09:32', '2022-08-07 18:53:58'),
(41, 'Ulya Hastuti', 'Jr. Gatot Subroto No. 213, Bandar Lampung 99788, DIY', '2019-07-26 23:18:38', '2022-08-07 18:53:58'),
(42, 'Zahra Titi Novitasari', 'Gg. Abdul No. 220, Surakarta 61865, Sumut', '1976-12-03 20:35:44', '2022-08-07 18:53:58'),
(43, 'Uli Oliva Utami M.Farm', 'Ki. Basoka Raya No. 549, Ambon 90460, Bali', '1983-05-12 19:33:15', '2022-08-07 18:53:58'),
(44, 'Ella Laksmiwati', 'Dk. Basuki No. 30, Tomohon 52591, NTB', '2017-07-05 17:30:00', '2022-08-07 18:53:58'),
(45, 'Darmanto Hartana Adriansyah', 'Dk. Soekarno Hatta No. 483, Padangpanjang 95294, Sulsel', '2020-01-11 14:27:02', '2022-08-07 18:53:59'),
(46, 'Agus Hidayat M.TI.', 'Kpg. Kartini No. 443, Bandung 66532, Malut', '2003-04-09 02:57:00', '2022-08-07 18:53:59'),
(47, 'Asmuni Niyaga Wasita M.Ak', 'Kpg. Adisumarmo No. 653, Denpasar 70514, Pabar', '1976-05-10 01:07:46', '2022-08-07 18:53:59'),
(48, 'Jasmani Nababan', 'Ds. Gegerkalong Hilir No. 109, Kendari 99427, Sumsel', '1992-12-20 20:36:49', '2022-08-07 18:53:59'),
(49, 'Yessi Gilda Andriani', 'Ki. Abdullah No. 444, Cilegon 21311, Riau', '2002-05-02 04:34:37', '2022-08-07 18:53:59'),
(50, 'Intan Farida', 'Dk. Wora Wari No. 322, Payakumbuh 62363, DIY', '1971-08-21 23:33:05', '2022-08-07 18:53:59'),
(51, 'Artawan Hidayanto', 'Kpg. Bambu No. 744, Subulussalam 30064, Jabar', '1977-03-12 04:06:44', '2022-08-07 18:53:59'),
(52, 'Kasiyah Yuliarti', 'Kpg. Raden Saleh No. 947, Dumai 90529, Gorontalo', '2002-11-15 00:17:22', '2022-08-07 18:53:59'),
(53, 'Radika Jailani S.I.Kom', 'Ki. S. Parman No. 282, Pematangsiantar 50983, DIY', '1986-06-04 12:33:22', '2022-08-07 18:53:59'),
(54, 'Yessi Namaga', 'Kpg. K.H. Wahid Hasyim (Kopo) No. 284, Salatiga 16830, Sumut', '2001-12-23 15:26:07', '2022-08-07 18:53:59'),
(55, 'Putri Zelda Andriani M.Ak', 'Kpg. Baing No. 519, Tegal 15243, Kepri', '2013-09-23 21:13:12', '2022-08-07 18:53:59'),
(56, 'Gawati Mayasari S.I.Kom', 'Ki. Ronggowarsito No. 425, Cimahi 12588, Kepri', '2017-03-08 02:20:14', '2022-08-07 18:53:59'),
(57, 'Janet Novitasari M.Ak', 'Gg. Baja No. 89, Madiun 22157, Kalbar', '1999-03-03 02:53:13', '2022-08-07 18:53:59'),
(58, 'Zalindra Yuni Rahmawati', 'Ki. Yohanes No. 705, Denpasar 76523, Kaltara', '2005-08-13 21:57:07', '2022-08-07 18:53:59'),
(59, 'Shania Indah Mardhiyah', 'Dk. Juanda No. 314, Sungai Penuh 22703, Gorontalo', '1999-01-03 22:07:19', '2022-08-07 18:53:59'),
(60, 'Kezia Febi Winarsih S.Pd', 'Ki. Hasanuddin No. 674, Depok 44373, Gorontalo', '2007-10-21 21:23:21', '2022-08-07 18:54:00'),
(61, 'Hartana Zulkarnain', 'Ds. Mahakam No. 112, Kotamobagu 18154, Kepri', '2006-03-06 22:00:30', '2022-08-07 18:54:00'),
(62, 'Kasim Heru Budiman S.Ked', 'Ki. Madiun No. 420, Padang 34193, Kepri', '1986-03-21 04:35:42', '2022-08-07 18:54:00'),
(63, 'Kenari Marpaung', 'Jr. Reksoninten No. 590, Yogyakarta 30980, Sulteng', '1981-02-28 05:34:38', '2022-08-07 18:54:00'),
(64, 'Prasetya Kenzie Hidayanto S.Pd', 'Ki. Samanhudi No. 421, Administrasi Jakarta Barat 39657, Jabar', '2020-06-28 08:42:58', '2022-08-07 18:54:00'),
(65, 'Victoria Anggraini S.Psi', 'Kpg. Camar No. 826, Bima 51285, Sulbar', '2000-08-01 07:29:40', '2022-08-07 18:54:00'),
(66, 'Panca Waluyo', 'Psr. Rajawali Barat No. 362, Sawahlunto 74609, Jatim', '2021-06-30 11:44:12', '2022-08-07 18:54:00'),
(67, 'Pardi Dabukke', 'Ki. Abdul No. 649, Prabumulih 70564, Jatim', '1972-08-28 22:08:04', '2022-08-07 18:54:00'),
(68, 'Cahyadi Utama', 'Ki. S. Parman No. 908, Bengkulu 41803, Pabar', '1986-03-15 05:48:01', '2022-08-07 18:54:00'),
(69, 'Usman Saefullah', 'Gg. Industri No. 139, Tangerang 84154, Sumsel', '1982-12-23 23:09:04', '2022-08-07 18:54:00'),
(70, 'Cengkal Narpati', 'Jr. Industri No. 545, Cimahi 31300, Kaltara', '2001-08-31 04:04:48', '2022-08-07 18:54:00'),
(71, 'Nova Halima Nasyidah S.I.Kom', 'Ki. Tangkuban Perahu No. 44, Sukabumi 14994, Babel', '2016-08-19 00:34:27', '2022-08-07 18:54:00'),
(72, 'Eka Yolanda', 'Psr. Abdul Rahmat No. 488, Padangsidempuan 76257, Bengkulu', '1976-03-30 05:00:12', '2022-08-07 18:54:00'),
(73, 'Rina Wahyuni S.Gz', 'Psr. Abdul Rahmat No. 83, Magelang 33229, Jatim', '2008-10-05 11:03:47', '2022-08-07 18:54:00'),
(74, 'Padma Padmasari', 'Dk. Suprapto No. 410, Pasuruan 87648, Kalsel', '1971-04-09 15:41:27', '2022-08-07 18:54:01'),
(75, 'Ozy Cemani Budiyanto S.E.', 'Ki. Baranangsiang No. 733, Bima 70757, DIY', '2020-04-13 04:09:58', '2022-08-07 18:54:01'),
(76, 'Langgeng Harto Prakasa', 'Psr. Rajawali No. 661, Serang 25748, Sulteng', '1999-08-01 18:47:09', '2022-08-07 18:54:01'),
(77, 'Michelle Lestari M.M.', 'Jln. Gremet No. 183, Salatiga 29614, Kalteng', '1973-07-27 11:26:41', '2022-08-07 18:54:01'),
(78, 'Cengkir Dongoran S.E.', 'Gg. Barat No. 252, Kendari 39261, Sulbar', '1995-03-30 16:13:44', '2022-08-07 18:54:01'),
(79, 'Simon Sinaga S.Kom', 'Jln. Villa No. 84, Subulussalam 71963, Kepri', '2020-03-29 21:43:22', '2022-08-07 18:54:01'),
(80, 'Adikara Hari Firmansyah', 'Jln. Karel S. Tubun No. 406, Binjai 60795, Babel', '1976-08-24 00:07:17', '2022-08-07 18:54:01'),
(81, 'Jessica Winarsih', 'Dk. Perintis Kemerdekaan No. 779, Tomohon 49501, Banten', '2013-11-05 07:48:54', '2022-08-07 18:54:01'),
(82, 'Gasti Andriani', 'Ds. Bayan No. 882, Sawahlunto 77936, DKI', '1986-02-10 07:11:24', '2022-08-07 18:54:01'),
(83, 'Marwata Saefullah', 'Dk. Ki Hajar Dewantara No. 162, Ternate 76826, Sumbar', '1983-07-28 12:49:11', '2022-08-07 18:54:01'),
(84, 'Jessica Farah Haryanti', 'Ds. Gading No. 160, Surakarta 65937, DKI', '2004-05-26 12:04:45', '2022-08-07 18:54:01'),
(85, 'Prakosa Hardiansyah', 'Jln. Setia Budi No. 556, Cimahi 90226, Riau', '1993-06-20 08:27:54', '2022-08-07 18:54:01'),
(86, 'Estiono Pradipta', 'Jr. Tambak No. 597, Kotamobagu 60416, Sumsel', '2005-05-11 18:42:15', '2022-08-07 18:54:01'),
(87, 'Maryadi Gamblang Sihombing S.Ked', 'Gg. Sugiono No. 29, Tanjung Pinang 15594, Pabar', '2001-01-12 09:51:49', '2022-08-07 18:54:01'),
(88, 'Nabila Nurdiyanti', 'Jln. Jambu No. 208, Solok 46077, Bali', '2006-05-31 09:41:49', '2022-08-07 18:54:01'),
(89, 'Keisha Palastri', 'Ds. Antapani Lama No. 492, Ternate 17716, Sumsel', '2022-01-12 19:51:20', '2022-08-07 18:54:01'),
(90, 'Bahuraksa Najmudin S.T.', 'Ds. Mulyadi No. 576, Balikpapan 47703, Kalteng', '1989-06-28 05:09:03', '2022-08-07 18:54:01'),
(91, 'Pardi Indra Siregar', 'Gg. S. Parman No. 432, Kupang 31992, Sumut', '1981-08-15 10:33:12', '2022-08-07 18:54:02'),
(92, 'Kasiran Cecep Megantara S.E.I', 'Ds. Basket No. 103, Pontianak 40299, Sumsel', '1991-06-04 01:32:57', '2022-08-07 18:54:02'),
(93, 'Vanesa Fujiati', 'Kpg. Sam Ratulangi No. 484, Metro 13844, Jateng', '2005-06-11 09:51:50', '2022-08-07 18:54:02'),
(94, 'Upik Darimin Tampubolon', 'Kpg. Sutan Syahrir No. 485, Tarakan 44020, Papua', '2012-10-07 19:37:23', '2022-08-07 18:54:03'),
(95, 'Diah Fitria Suryatmi', 'Ki. Bhayangkara No. 724, Tanjungbalai 65487, Aceh', '1973-06-28 14:26:29', '2022-08-07 18:54:03'),
(96, 'Hesti Padmasari', 'Kpg. Aceh No. 649, Tanjung Pinang 58482, Sulut', '2017-08-01 04:58:45', '2022-08-07 18:54:03'),
(97, 'Joko Baktiono Megantara S.E.', 'Jr. Abdullah No. 119, Pekalongan 84503, Aceh', '2010-01-01 22:19:26', '2022-08-07 18:54:03'),
(98, 'Gatra Edison Najmudin', 'Jr. Baranang No. 151, Banjarmasin 96537, Sumsel', '2003-11-07 10:48:17', '2022-08-07 18:54:03'),
(99, 'Citra Nasyiah', 'Gg. Pasteur No. 243, Surabaya 83602, Sulut', '1971-01-16 12:18:47', '2022-08-07 18:54:03'),
(100, 'Puji Sadina Zulaika M.M.', 'Ds. Achmad Yani No. 18, Medan 41038, Sumsel', '1970-08-30 17:57:28', '2022-08-07 18:54:03');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
