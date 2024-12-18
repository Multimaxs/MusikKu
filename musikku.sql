-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2024 at 03:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musikku`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:2;', 1733125896),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1733125896;', 1733125896),
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1733125740),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1733125740;', 1733125740);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_18_103555_create_sections_table', 1),
(5, '2024_11_21_161034_create_pendengar_table', 1),
(6, '2024_11_23_142418_create_sections_table', 2),
(7, '2024_11_23_142741_create_songs_table', 3),
(8, '2024_11_23_144836_modify_songs_table', 4),
(10, '2024_11_25_135634_modify_pendengar_table', 5),
(11, '2024_11_25_144657_create_pendengar_song_table', 6),
(12, '2024_11_25_144804_create_pendengar_section_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pendengar`
--

CREATE TABLE `pendengar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `song_id` bigint(20) UNSIGNED DEFAULT NULL,
  `artis_id` varchar(255) DEFAULT NULL,
  `genre_id` varchar(255) DEFAULT NULL,
  `mood_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pendengar`
--

INSERT INTO `pendengar` (`id`, `profile_picture`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `song_id`, `artis_id`, `genre_id`, `mood_id`) VALUES
(1, 'profile_pictures/ngFGup8Vr5vAODeoHpkgVPb1vAbySnQGbjpOLTEk.jpg', 'test', 'test@gmail.com', NULL, '$2y$12$/u01CP/dN3xKLU4dIRvmx.68gHqAeI.ajoWrhOjmLcxLolyoGyAC6', NULL, '2024-11-22 11:25:30', '2024-12-02 00:46:54', NULL, NULL, NULL, NULL),
(2, NULL, 'Dyo Xiphos', 'dyoxiphos@gmail.com', NULL, '$2y$12$UTmZ6RK9M4pA8LnMnBjnVuui4teOmHZsTJx.pfO9Hv8UB7Uq37wC.', NULL, '2024-11-30 23:46:50', '2024-11-30 23:46:50', NULL, NULL, NULL, NULL),
(3, NULL, 'JORDI ABRAR SATRIA', 'jordiabrar@gmail.com', NULL, '$2y$12$VOfhehtaUBmdJwScP/X9MeQvWbycTtPejB2HqQbdIX/DyBzLLWXSS', NULL, '2024-12-01 07:42:58', '2024-12-01 07:42:58', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pendengar_section`
--

CREATE TABLE `pendengar_section` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pendengar_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` varchar(255) NOT NULL,
  `type` enum('ARTIS','GENRE','MOOD') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pendengar_section`
--

INSERT INTO `pendengar_section` (`id`, `pendengar_id`, `section_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'A01', 'ARTIS', '2024-11-25 09:19:03', '2024-11-25 09:19:03'),
(2, 1, 'G01', 'GENRE', '2024-11-25 09:56:55', '2024-11-25 09:56:55'),
(3, 1, 'M01', 'MOOD', '2024-11-25 10:02:11', '2024-11-25 10:02:11'),
(5, 1, 'A19', 'ARTIS', '2024-12-02 00:46:20', '2024-12-02 00:46:20');

-- --------------------------------------------------------

--
-- Table structure for table `pendengar_song`
--

CREATE TABLE `pendengar_song` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pendengar_id` bigint(20) UNSIGNED NOT NULL,
  `song_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pendengar_song`
--

INSERT INTO `pendengar_song` (`id`, `pendengar_id`, `song_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-11-25 09:35:13', '2024-11-25 09:35:13'),
(2, 1, 2, '2024-11-25 10:02:26', '2024-11-25 10:02:26'),
(3, 1, 4, '2024-11-26 07:53:40', '2024-11-26 07:53:40'),
(5, 1, 5, '2024-12-02 00:46:25', '2024-12-02 00:46:25');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `tipe_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `post_as` enum('ARTIS','MOOD','GENRE') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`tipe_id`, `title`, `thumbnail`, `content`, `post_as`, `created_at`, `updated_at`) VALUES
('A01', 'Cigarretes After Sex', '01JDCQFYQA1DRKN4MAYX6DWETY.jpg', '<p>Cigarettes After Sex adalah sebuah band indie pop asal El Paso, Texas, yang dikenal karena musiknya yang ambient, dreamy, dan sensual. Musik mereka didominasi oleh vokal Greg Gonzalez yang lembut dan melodi yang sederhana, sering kali dengan tempo lambat dan atmosfer yang intim. Meskipun namanya terdengar provokatif, musik mereka lebih fokus pada suasana hati dan emosi daripada tema seksual yang eksplisit. Mereka terkenal dengan pertunjukan live yang tenang dan menawan.</p>', 'ARTIS', '2024-11-23 07:40:55', '2024-11-30 21:01:04'),
('A02', 'Rose', '01JDKADRTN9R84D5GRMFD4CTRV.jpg', '<p>Rose adalah penyanyi utama dari grup idola K-Pop terkenal, Blackpink. Nama aslinya adalah Park Chae-young, dan ia dikenal karena vokalnya yang kuat dan unik, serta kemampuannya dalam menari. Ia juga populer karena visualnya dan kepribadiannya yang ceria.</p>', 'ARTIS', '2024-11-25 21:07:13', '2024-11-30 21:01:44'),
('A03', 'Billie Eilish', '01JDMDXN3NQE4B4YXX2VWYCC0A.jpg', '<p>Billie Eilish Pirate Baird O\'Connell, lebih dikenal sebagai Billie Eilish, adalah seorang penyanyi dan penulis lagu Amerika. Dia dikenal karena suaranya yang unik, musiknya yang gelap dan eksperimental, dan gaya penampilannya yang khas. Dia meraih kesuksesan global dengan cepat dan telah memenangkan banyak penghargaan, termasuk tujuh Grammy Awards. Musiknya sering kali mengeksplorasi tema-tema kegelisahan, depresi, dan kegelapan, tetapi juga sering kali mengandung pesan harapan dan pemberdayaan.</p>', 'ARTIS', '2024-11-26 07:27:34', '2024-11-30 21:02:28'),
('A04', 'Taylor Swift', '01JDME7HEPF5TAZNZ2EF6VZ1MJ.jpg', '<p>Taylor Swift adalah seorang penyanyi-penulis lagu Amerika yang sangat sukses dan berpengaruh. Dia dikenal karena kemampuan menulis lagunya yang kuat, yang sering kali menceritakan kisah-kisah pribadi dan hubungan romantis. Musiknya telah berevolusi dari country pop di awal karirnya menjadi berbagai genre pop, termasuk pop alternatif dan indie pop. Dia telah memenangkan banyak penghargaan, termasuk Grammy Awards dan American Music Awards, dan memiliki basis penggemar yang sangat besar dan setia di seluruh dunia. Taylor Swift juga dikenal karena kemampuannya dalam bisnis musik dan kemampuannya untuk menghubungkan dengan penggemarnya secara personal.</p>', 'ARTIS', '2024-11-26 07:32:58', '2024-11-30 21:03:01'),
('A05', 'Kanye Barat', '01JDWG3TX27HVHRMQSN42JJT5F.jpg', '<p>Kanye West, yang sekarang dikenal sebagai Ye, adalah seorang rapper, penyanyi, penulis lagu, produser rekaman, desainer mode, dan pengusaha Amerika. Ia dikenal luas karena pengaruhnya yang besar pada musik hip hop dan budaya populer secara umum. Ia telah memenangkan banyak penghargaan Grammy dan diakui karena gaya musiknya yang inovatif dan kemampuan produksi yang luar biasa. Selain karir musiknya, ia juga mendirikan merek fesyen Yeezy dan terlibat dalam berbagai usaha bisnis lainnya. Namun, dalam beberapa tahun terakhir, ia juga menjadi kontroversial karena pernyataannya dan perilakunya di publik.</p>', 'ARTIS', '2024-11-29 10:39:49', '2024-11-30 21:00:18'),
('A06', 'Tame Impala', '01JDZ2G6V77ANDQFJBXETN6GKB.jpg', '<p>Tame Impala adalah proyek musik psychedelic rock dari Australia yang dipimpin oleh Kevin Parker. Meskipun secara teknis merupakan proyek solo, Tame Impala sering kali tampil live dengan band pendukung. Musik mereka dikenal karena suaranya yang kaya, penggunaan efek psychedelic yang ekstensif, dan lirik yang introspektif. Mereka telah merilis beberapa album yang sangat sukses secara kritis dan komersial, mendapatkan banyak penggemar di seluruh dunia.&nbsp;</p>', 'ARTIS', '2024-11-30 10:39:37', '2024-11-30 10:39:37'),
('A07', 'Bring Me The Horizon', '01JDZ2MVH9EN4SPY8NECM014TF.jpg', '<p>Bring Me the Horizon adalah band metalcore asal Sheffield, Inggris. Mereka awalnya dikenal karena suara metalcore mereka yang berat, namun seiring waktu telah bereksperimen dan berevolusi, mengintegrasikan elemen-elemen dari genre lain seperti elektronik, pop, dan alternatif rock ke dalam musik mereka. Band ini terdiri dari beberapa anggota, dengan Oli Sykes sebagai vokalis utamanya yang paling dikenal publik. Mereka telah mencapai kesuksesan internasional yang signifikan dan dikenal karena penampilan live mereka yang energik dan karya-karya mereka yang terus berevolusi.</p>', 'ARTIS', '2024-11-30 10:42:10', '2024-11-30 10:42:10'),
('A08', 'My Chemical Romance', '01JDZ2T1ZJW4R7DXV8SWSF6CTF.jpg', '<p>My Chemical Romance adalah band rock asal Newark, New Jersey, Amerika Serikat. Mereka terkenal karena musik mereka yang emo dan post-hardcore, dengan lirik yang seringkali gelap, dramatis, dan bertemakan fiksi. Band ini dipimpin oleh vokalis Gerard Way, dan dikenal karena penampilan panggung yang teatrikal dan basis penggemar yang sangat loyal. Meskipun telah bubar pada tahun 2013, mereka tetap menjadi band yang sangat berpengaruh di genre mereka dan telah mengalami kebangkitan popularitas dalam beberapa tahun terakhir.</p>', 'ARTIS', '2024-11-30 10:45:00', '2024-11-30 10:45:00'),
('A09', 'KSHMR', '01JDZ2WJ113PCPQD2R4K96G357.jpg', '<p>KSHMR (diucapkan \"Kashmir\") adalah nama panggung dari Niles Hollowell-Dhar, seorang DJ, produser rekaman, dan musisi Amerika Serikat. Ia dikenal karena musiknya yang bergenre progressive house dan big room, yang sering kali menggabungkan elemen-elemen dari musik India dan Timur Tengah. Ia juga dikenal karena visual panggungnya yang spektakuler selama pertunjukan live.</p>', 'ARTIS', '2024-11-30 10:46:22', '2024-11-30 10:46:22'),
('A10', 'Juicy Luicy', '01JDZ372MTNRZN6KNXN76473C2.jpg', '<p>Juicy Luicy merupakan sebuah grup musik asal Bandung, Indonesia yang dibentuk pada tahun 2006. Grup musik ini beranggotakan 5 orang yaitu Julian Kaisar (Vokal), Denis Ligia (Gitar Elektrik), Zamzam Y.M (Saxsophone, Gitar Akustik), Dwi Nugroho (Drum), dan Bina Bagja (Bass). Genre musik ini adalah pop dan R&amp;B.</p>', 'ARTIS', '2024-11-30 10:52:07', '2024-11-30 10:52:07'),
('A11', 'Aimer', '01JDZ3C6N9FGP393QNCA3NTSB4.jpg', '<p>Aimer (エメ, Eme, [eme]) (nama asli: Fujimoto Emi, 藤本恵実, lahir 7 September 1990) adalah seorang penyanyi pop dan penulis lirik Jepang di bawah Sacra Music dan dikelola oleh agehasprings. Nama panggungnya berasal dari kata \"Aimer\" dalam bahasa Perancis yang memiliki arti \"mencintai\".</p>', 'ARTIS', '2024-11-30 10:54:55', '2024-11-30 10:54:55'),
('A12', 'Alan Pejalan', '01JDZ3H0WSN3ZV21F6QAF5WRHQ.jpg', '<p>Alan Walker adalah produser musik elektronik asal Norwegia yang terkenal dengan musiknya bergenre melodic dubstep dan future bass. Dia dikenal karena lagu-lagunya yang catchy, penggunaan suara synth yang khas, dan gaya visual yang misterius dengan memakai hoodie dan topeng. Lagu-lagu hitnya seperti \"Faded\" telah mendunia dan membuatnya menjadi salah satu nama terbesar dalam musik elektronik.</p>', 'ARTIS', '2024-11-30 10:57:33', '2024-11-30 10:57:33'),
('A13', 'Ari Lasso', '01JDZ3NF0PKS1ZV19J3NVGA04V.jpg', '<p>Ari Bernardus Lasso (lahir 17 Januari 1973) adalah penyanyi dan pemeran berkebangsaan Indonesia. Ia adalah vokalis grup musik rock Indonesia Dewa 19 sejak 1991 hingga keluar pada 1999 dan menjalani karier sebagai penyanyi solo. Ia kembali aktif sebagai vokalis tur grup musik tersebut, tetapi grup musik tersebut memilih untuk menjadi grup musik tanpa vokalis utama tetap.</p>', 'ARTIS', '2024-11-30 10:59:58', '2024-11-30 10:59:58'),
('A14', 'Frank Sinatra', '01JDZ3TEPDVN82AVH7AWVMC76E.jpg', '<p>Frank Sinatra adalah seorang penyanyi, aktor, dan produser Amerika yang sangat terkenal dan berpengaruh dalam sejarah musik populer. Ia dikenal sebagai salah satu vokalis terbesar sepanjang masa, dengan gaya vokal yang unik, penuh perasaan, dan kemampuannya untuk menyampaikan emosi melalui lagu-lagunya. Ia sangat populer di era swing dan kemudian, telah merekam ratusan lagu dan membintangi banyak film. Pengaruhnya masih terasa hingga saat ini dalam dunia musik.</p>', 'ARTIS', '2024-11-30 11:02:42', '2024-11-30 11:02:42'),
('A15', 'The Smiths', '01JDZ3YXXHRM2RR1XAEEF42KV6.jpg', '<p>The Smiths adalah band rock indie Inggris yang sangat berpengaruh dari tahun 1980-an. Mereka terdiri dari Morrissey (vokal), Johnny Marr (gitar), Andy Rourke (bass), dan Mike Joyce (drum). Musik mereka dikenal karena lirik Morrissey yang cerdas, sinis, dan seringkali melankolis, serta gitar Johnny Marr yang melodi dan inovatif. Meskipun hanya merilis empat album studio selama masa aktif mereka (1982-1987), The Smiths memiliki pengaruh besar pada musik indie dan alternatif yang mengikuti, dan terus mendapatkan pujian kritis dan penggemar setia hingga saat ini.</p>', 'ARTIS', '2024-11-30 11:05:08', '2024-11-30 11:05:08'),
('A16', 'Bruno Earth', '01JDZ44BZRN7JNFJPN818VN115.jpg', '<p>Bruno Mars adalah seorang penyanyi, penulis lagu, penari, dan produser rekaman Amerika. Ia dikenal karena suaranya yang kuat, penampilan panggungnya yang enerjik, dan musiknya yang menggabungkan berbagai genre seperti pop, R&amp;B, funk, soul, dan reggae. Ia telah meraih banyak penghargaan, termasuk Grammy Awards, dan dikenal karena hits-hitsnya seperti \"Nothin\' on You,\" \"Billionaire,\" \"Uptown Funk,\" dan \"24K Magic.\"</p>', 'ARTIS', '2024-11-30 11:08:07', '2024-11-30 11:08:07'),
('A17', 'Mozart', '01JDZ4CV1GC9K66CR754R56K9X.jpg', '<p>Wolfgang Amadeus Mozart (1756-1791) adalah seorang komposer Austria dari periode Klasik. Ia dianggap sebagai salah satu komposer terbesar sepanjang masa, dan karyanya yang sangat luas mencakup berbagai genre, termasuk simfoni, konser, sonata, opera, dan musik kamar. Kejeniusannya terlihat sejak usia muda, dan ia menghasilkan sejumlah besar karya musik yang masih dirayakan dan dipertunjukkan hingga saat ini. Karyanya sangat berpengaruh dan terus membentuk musik klasik Barat.</p>', 'ARTIS', '2024-11-30 11:12:44', '2024-11-30 11:12:44'),
('A18', 'Ryan Gosling', '01JDZ4QZZMG0JBTW2YA3ZZKHA0.jpg', '<p>Ryan Gosling adalah aktor Kanada yang terkenal. Ia telah membintangi berbagai film, mulai dari drama romantis hingga film aksi dan fiksi ilmiah. Ia dikenal karena penampilannya yang menawan dan kemampuan aktingnya yang beragam. Beberapa film terkenal yang dibintanginya antara lain <em>The Notebook</em>, <em>Drive</em>, <em>La La Land</em>, dan <em>Blade Runner 2049</em>.</p>', 'ARTIS', '2024-11-30 11:18:50', '2024-11-30 11:18:50'),
('A19', 'Drake', '01JE2KVXTAYJTX84FT5AG550Q4.jpg', '<p>Drake adalah seorang rapper, penyanyi, penulis lagu, dan aktor Kanada. Nama lengkapnya adalah Aubrey Drake Graham. Ia dikenal luas karena musiknya yang memadukan hip hop, R&amp;B, dan genre lain, serta karena liriknya yang seringkali bersifat pribadi dan reflektif. Ia telah meraih banyak penghargaan, termasuk Grammy Awards, dan merupakan salah satu artis musik paling sukses dan berpengaruh di dunia.</p>', 'ARTIS', '2024-12-01 19:40:51', '2024-12-01 19:40:51'),
('A20', 'XXXTENTACION', '01JE2KZJ1QRFM2VXEBR3R58N0Y.jpg', '<p>XXXTentacion, nama panggung dari Jahseh Dwayne Ricardo Onfroy, adalah seorang rapper, penyanyi, dan penulis lagu Amerika. Ia dikenal karena musiknya yang eksperimental yang menggabungkan berbagai genre, termasuk hip hop, emo, trap, dan rock. Musiknya seringkali membahas tema-tema gelap seperti depresi, kekerasan, dan hubungan yang bermasalah. Meskipun memiliki bakat musik yang diakui, ia juga terkenal karena kontroversi seputar hidupnya, termasuk tuduhan kekerasan dalam rumah tangga dan berbagai masalah hukum lainnya. Ia meninggal dunia pada tahun 2018 karena dibunuh.</p>', 'ARTIS', '2024-12-01 19:42:50', '2024-12-01 19:42:50'),
('A21', 'Neck Deep', '01JE35H94WBCPN75B5MXF5SWZ1.jpg', '<p>neck deep adalah leher dalam</p>', 'ARTIS', '2024-12-02 00:49:36', '2024-12-02 00:49:36'),
('G01', 'POP', '01JDCQM3N4WZ0X07EZ6D9Z0WYR.jpg', '<p>test</p>', 'GENRE', '2024-11-23 07:43:11', '2024-11-23 07:43:11'),
('G02', 'Rock', '01JE14037HPXZJHBZDA8HWN73B.jpg', '<p>Rock adalah genre musik populer yang berevolusi dari blues dan rock and roll, ditandai dengan penggunaan gitar elektrik yang menonjol, irama drum yang kuat, dan bass yang kokoh. Liriknya beragam, mulai dari cinta hingga protes sosial, dan sering kali menampilkan improvisasi. Genre ini telah berkembang menjadi banyak subgenre, termasuk hard rock, heavy metal, punk rock, alternative rock, dan banyak lagi, masing-masing dengan karakteristik dan nuansa uniknya sendiri, namun semuanya berbagi akar dalam energi dan daya tarik rock and roll awal.</p>', 'GENRE', '2024-12-01 05:44:16', '2024-12-01 05:44:16'),
('G03', 'Jazz', '01JE14D85W8QKX1MK36XBDKPQ8.jpg', '<p>Jazz adalah genre musik Amerika yang berkembang pada akhir abad ke-19 dan awal abad ke-20, yang dikarakteristikan oleh improvisasi, swing ritmis, blues scales, dan harmoni yang kompleks. Berakar pada musik Afrika-Amerika, termasuk blues dan ragtime, jazz telah berevolusi melalui berbagai gaya, termasuk Dixieland, swing, bebop, cool jazz, hard bop, modal jazz, free jazz, dan fusion, masing-masing dengan karakteristik ritmis, melodis, dan harmonik yang unik, namun semuanya dipersatukan oleh fokus pada improvisasi spontan dan ekspresi individu.</p>', 'GENRE', '2024-12-01 05:51:27', '2024-12-01 05:51:27'),
('G04', 'Electronic', '01JE14MEEMHD6664SEPV5YH1H0.jpg', '<p>Musik elektronik adalah genre musik yang diciptakan dan diproduksi secara utama menggunakan instrumen elektronik, seperti synthesizer, drum machine, sampler, dan komputer. Berbeda dengan musik akustik yang mengandalkan instrumen tradisional, musik elektronik memanfaatkan teknologi untuk menghasilkan suara, melodi, ritme, dan tekstur yang beragam. Genre ini sangat luas dan meliputi berbagai subgenre, dari house dan techno yang bertempo cepat hingga ambient dan electronica yang lebih atmosferik, sering kali ditandai dengan penggunaan efek suara, pemrosesan sinyal, dan pengulangan pola ritmis.</p>', 'GENRE', '2024-12-01 05:55:22', '2024-12-01 05:55:22'),
('G05', 'Hip Hop', '01JE15124M6FKEXTNZKBCRN53Z.jpg', '<p>Hip hop adalah genre musik dan budaya yang lahir di Bronx, New York City pada tahun 1970-an. Ditandai oleh empat elemen utama—MCing (rap), DJing (turntablism), breakdancing, dan graffiti art—hip hop menggunakan ritme yang kuat dan berulang, biasanya diambil dari sampel musik lain, sebagai landasan untuk lirik yang seringkali bercerita, reflektif, atau bernada protes. Sejak awal, hip hop telah berevolusi menjadi berbagai subgenre, seperti gangsta rap, conscious hip hop, trap, dan banyak lagi, mencerminkan berbagai pengalaman dan perspektif budaya.</p>', 'GENRE', '2024-12-01 06:02:16', '2024-12-01 06:02:16'),
('M01', 'Bahagia', '01JDCQN1ATW53S94Q4HBKBBZMJ.jpg', '<p>Mood musik bahagia umumnya ditandai dengan tempo yang cepat hingga sedang, melodi yang cerah dan mudah diingat, harmoni mayor yang sederhana, dan penggunaan instrumen yang ceria seperti gitar akustik atau string. Dinamika yang bervariasi dapat menambah energi, sementara tekstur yang bersih dan lirik yang optimis (jika ada) memperkuat kesan positif. Secara keseluruhan, elemen-elemen ini bekerja sama untuk menciptakan sebuah pengalaman pendengaran yang energik, optimis, dan membangkitkan semangat.</p>', 'MOOD', '2024-11-23 07:43:42', '2024-12-01 20:28:24'),
('M02', 'Energetic', '01JE16Q3SZ7PT19NTQ68RHHFDP.jpg', '<p>Mood musik energik dicirikan oleh tempo yang cepat, ritme yang kuat dan bertenaga, serta melodi yang bersemangat dan uplifting. Seringkali terdapat dinamika yang luas, beralih antara bagian yang keras dan lembut untuk menambah intensitas. Instrumen-instrumennya terdengar cerah dan jelas, dan harmoninya biasanya mayor atau memiliki kesan positif. Secara keseluruhan, musik energik bertujuan untuk menciptakan perasaan antusiasme, gairah, dan semangat, mendorong pendengar untuk bergerak dan merasa bersemangat.</p>', 'MOOD', '2024-12-01 06:31:47', '2024-12-01 06:31:47'),
('M03', 'Romantic', '01JE175QAXGA6AXW2TPZHVVR20.jpg', '<p>Mood musik romantis dicirikan oleh melodi yang lembut dan lirih, seringkali dengan penggunaan tangga nada mayor atau minor yang lembut. Tempo-nya biasanya sedang hingga lambat, menciptakan suasana tenang dan intim. Harmoninya seringkali kaya dan kompleks, namun tetap halus dan tidak mengganggu. Instrumen-instrumen yang digunakan seringkali memiliki timbre yang hangat dan mellow, seperti piano, string, atau flute. Secara keseluruhan, musik romantis bertujuan untuk membangkitkan perasaan cinta, kerinduan, kelembutan, dan nostalgia.</p>', 'MOOD', '2024-12-01 06:39:46', '2024-12-01 06:39:46'),
('M04', 'Chill', '01JE17F0XF5N11G3QZ0D7WH7XT.jpg', '<p>Mood musik chill dicirikan oleh tempo yang lambat dan santai, melodi yang sederhana dan menenangkan, serta harmoni yang lembut dan nyaman. Dinamikanya cenderung halus dan konsisten, tanpa perubahan yang tiba-tiba atau dramatis. Instrumen-instrumen yang digunakan seringkali memiliki timbre yang lembut dan hangat, seperti gitar akustik, piano, atau instrumen elektronik yang diproses dengan halus. Secara keseluruhan, musik chill bertujuan untuk menciptakan suasana yang rileks, menenangkan, dan bebas dari tekanan, cocok untuk bersantai, bermeditasi, atau sekadar menikmati momen tenang.</p>', 'MOOD', '2024-12-01 06:44:50', '2024-12-01 06:44:50'),
('M05', 'Sedih', '01JE17MCGWF42W21D16QEACXR0.jpeg', '<p>Mood musik sedih ditandai dengan tempo yang lambat dan melodi yang melankolis, seringkali menggunakan tangga nada minor dan interval-interval yang menciptakan perasaan duka atau kesedihan. Dinamikanya bisa bervariasi, tetapi seringkali mempertahankan suasana yang tenang dan introspektif. Instrumen-instrumen yang digunakan seringkali memiliki timbre yang gelap dan sendu, seperti cello, biola, atau piano. Harmoninya bisa kompleks atau sederhana, tetapi selalu mendukung perasaan kesedihan yang mendalam, kerinduan, atau kehilangan. Secara keseluruhan, musik sedih bertujuan untuk membangkitkan emosi negatif seperti kesedihan, kesepian, dan refleksi diri.</p>', 'MOOD', '2024-12-01 06:47:46', '2024-12-01 06:47:46');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('D9WWXK878xONyi56hJuJWy2sgcZ3bAV1H4iTV6kt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnpxRUxNMExMZTZoelFlOElhUTRjVlI0MWcxd0Q5NGpTeE1PU3NodiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1734474642),
('mNRvZpADAclnaemMMIAuu4V8bmUo8H8roc2rBlj1', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il9mbGFzaCI7YToyOntzOjM6Im5ldyI7YTowOnt9czozOiJvbGQiO2E6MDp7fX1zOjY6Il90b2tlbiI7czo0MDoiVldDNXozd2JQcVJjdDFoNlZJTDlkYUhNUUpoNjhPZzZoTmw0bklleCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Nzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9maWxlP190b2tlbj1WV0M1ejN3YlBxUmN0MWg2VklMOWRhSE1RSmg2OE9nNmhObDRuSWV4Ijt9czo1NjoibG9naW5fcGVuZGVuZ2FyXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJEZYLnduVzhPRGFFL2UvNGRUbTFEc3UwdTVwdzFxSlZVZUxUWnAubGo4b2FhVFYwUzdPVW1hIjtzOjg6ImZpbGFtZW50IjthOjA6e319', 1733126424);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `lirik` longtext DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `audio_file` varchar(255) DEFAULT NULL,
  `artis_id` varchar(255) DEFAULT NULL,
  `genre_id` varchar(255) DEFAULT NULL,
  `mood_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `judul`, `deskripsi`, `lirik`, `gambar`, `audio_file`, `artis_id`, `genre_id`, `mood_id`, `created_at`, `updated_at`) VALUES
(1, 'Cry', 'Lagu \"Cry\" oleh Cigarettes After Sex menceritakan tentang kerinduan yang mendalam dan perasaan patah hati yang intens setelah sebuah perpisahan. Liriknya menggambarkan rasa sakit yang menghancurkan dari kehilangan seseorang yang dicintai, ditunjukkan melalui keinginan untuk menangis dan melepaskan emosi yang terpendam. Namun, bukan sekadar tangisan biasa, melainkan tangisan yang dalam dan penuh makna, yang mencerminkan kedalaman kesedihan dan kerinduan yang mendalam. Suasana lagu yang lambat dan ambient semakin memperkuat perasaan melankolis dan kesedihan yang mendalam ini. Meskipun tidak secara eksplisit menceritakan detail hubungan, lagu ini menangkap emosi universal dari patah hati dan kehilangan.', 'It\'s making you cry every time\nYou give your love to me this way\nSaying you\'d wait for me to stay\nI know it hurts you\nBut I need to tell you something\nMy heart just can\'t be faithful for long\nI swear I\'ll only make you cry\nMaybe I\'d change for you someday\nBut I can\'t help the way I feel\nWish I was good, wish that I could\nGive you my love now\nBut I need to tell you something\nMy heart just can\'t be faithful for long\nI swear I\'ll only make you cry\nI need to tell you something\nMy heart just can\'t be faithful for long\nI swear I\'ll only make you cry', '01JDCTAM8HQ3KG4R10C6D69B52.jpg', 'audio/01JDHGZDYMANAJTZTKDWM9WW65.mp3', 'A01', 'G01', 'M05', '2024-11-23 07:50:57', '2024-12-01 20:18:29'),
(2, 'Apocalypse', '\"Apocalypse\" oleh Cigarettes After Sex adalah lagu yang sangat khas dari band tersebut. Ia terkenal karena suasananya yang lambat, dreamy, dan sensual. Musiknya didominasi oleh gitar akustik yang lembut dan vokal baritone Greg Gonzalez yang halus dan penuh emosi. Suaranya yang rendah dan liris, digabungkan dengan penggunaan reverb yang melimpah, menciptakan suasana yang sangat intim dan hampir surealis. Liriknya cenderung puitis dan ambigu, seringkali membahas tema cinta, kerinduan, dan kegelisahan eksistensial dengan cara yang suggestif dan tidak langsung. Secara keseluruhan, \"Apocalypse\" menciptakan pengalaman mendengarkan yang sangat atmosferik dan emosional, menciptakan sebuah dunia yang penuh dengan kerentanan dan keindahan yang melankolis. Ia merupakan contoh utama dari gaya musik Cigarettes After Sex yang unik dan mempesona.', 'You leapt from crumbling bridges watching cityscapes turn to dust\nFilming helicopters crashing in the ocean from way above\nGot the music in you, baby, tell me why\nGot the music in you, baby, tell me why\nYou\'ve been locked in here forever, and you just can\'t say goodbye\nKisses on the foreheads of the lovers wrapped in your arms\nYou\'ve been hiding them in hollowed-out piano left in the dark\nGot the music in you, baby, tell me why\nGot the music in you, baby, tell me why\nYou\'ve been locked in here forever, and you just can\'t say goodbye\nYour lips, my lips\nApocalypse\nYour lips, my lips\nApocalypse\nGo and sneak us through the rivers\nFlood is rising up on your knees\nOh, please\nCome out and haunt me\nI know you want me\nCome out and haunt me\nSharing all your secrets with each other since you were kids\nSleeping soundly with the locket that she gave you clutched in your fist\nGot the music in you, baby, tell me why\nGot the music in you, baby, tell me why\nYou\'ve been locked in here forever, and you just can\'t say goodbye\nYou\'ve been locked in here forever, and you just can\'t say goodbye\nOoh, oh\nWhen you\'re all alone\nI\'ll reach for you\nWhen you\'re feelin\' low\nI\'ll be there too', '01JDCV8EVN99R1KPVNN9HPMCVN.jpg', NULL, 'A01', 'G01', 'M05', '2024-11-23 08:46:44', '2024-12-01 20:18:11'),
(3, 'APT.', '\'APT\' yang dinyanyikan Rose feat Bruno Mars trending di media sosial hingga Youtube. Lagu APT telah digunakan sebagai music latar video Reels Instagram \nSedangakan di TikTok sudah digunakan sebanyak 243,7 ribu kali. Sedangkan di Youtube milik Rose, lagu APT tonton sebanyak 97 juta kali.\nLagu APT terinspirasi dari Apartemen Game dan menceritakan pasangan yang sedang jatuh cinta. Berikut ini lirik lagu APT oleh Rose feat Bruno Mars lengkap dengan terjemahan.', '채영이가 좋아하는 랜덤 게임, 랜덤 게임\nGame start\n아파트, 아파트, 아파트, 아파트\n아파트, 아파트, uh, uh-huh, uh-huh\n아파트, 아파트, 아파트, 아파트\n아파트, 아파트, uh, uh-huh, uh-huh\nKissy face, kissy face sent to your phone, but\nI\'m trying to kiss your lips for real (uh-huh, uh-huh)\nRed hearts, red hearts, that\'s what I\'m on, yeah\nCome give me somethin\' I can feel, oh-oh-oh\nDon\'t you want me like I want you, baby?\nDon\'t you need me like I need you now?\nSleep tomorrow, but tonight go crazy\nAll you gotta do is just meet me at the\n아파트, 아파트, 아파트, 아파트\n아파트, 아파트, uh, uh-huh, uh-huh\n아파트, 아파트, 아파트, 아파트\n아파트, 아파트, uh, uh-huh, uh-huh\nIt\'s whatever, it\'s whatever, it\'s whatever you like (whoo)\nTurn this 아파트 into a club (uh-huh, uh-huh)\nI\'m talking drink, dance, smoke, freak, party all night (come on)\n건배, 건배, girl, what\'s up? Oh-oh-oh\nDon\'t you want me like I want you, baby?\nDon\'t you need me like I need you now?\nSleep tomorrow, but tonight go crazy\nAll you gotta do is just meet me at the\n아파트, 아파트, 아파트, 아파트\n아파트, 아파트, uh, uh-huh, uh-huh\n아파트, 아파트, 아파트, 아파트\n아파트, 아파트, uh, uh-huh, uh-huh\nHey, so now you know the game\nAre you ready? \'Cause I\'m comin\' to get you, get you, get you\nHold on, hold on, I\'m on my way\nYeah, yeah, yeah, yeah, yeah, I\'m on my way\nHold on, hold on, I\'m on my way\nYeah, yeah, yeah, yeah, yeah, I\'m on my way\nDon\'t you want me like I want you, baby?\nDon\'t you need me like I need you now?\nSleep tomorrow, but tonight go crazy\nAll you gotta do is just meet me at the\n아파트, 아파트, 아파트, 아파트\n아파트, 아파트, uh, uh-huh, uh-huh (just meet me at the)\n아파트, 아파트, 아파트, 아파트\n아파트, 아파트, uh, uh-huh, uh-huh (just meet me at the)\n아파트, 아파트, 아파트, 아파트\n아파트, 아파트, uh, uh-huh, uh-huh (just meet me at the)\n아파트, 아파트, 아파트, 아파트\n아파트, 아파트, uh, uh-huh, uh-huh', '01JDKAM3R6XBWZE8EBWARKYZ1Y.jpg', 'audio/01JDKAM3RAE8BMBGPXGR8F2W6A.mp3', 'A02', 'G01', 'M01', '2024-11-25 21:10:41', '2024-12-01 20:22:54'),
(4, '22', '\"22\" oleh Taylor Swift adalah lagu pop yang ceria dan penuh semangat yang merayakan kegembiraan dan kebebasan masa muda. Lagu ini dirilis pada tahun 2012 sebagai bagian dari album Red. Musiknya upbeat dan catchy dengan tempo yang cepat dan instrumen yang menyenangkan. Liriknya menggambarkan sebuah perayaan ulang tahun ke-22 yang penuh dengan teman-teman, menikmati kehidupan tanpa beban, dan merasakan euforia masa muda. Lagu ini menyampaikan pesan positif dan penuh harapan tentang persahabatan, kebebasan, dan menikmati momen saat ini. Secara keseluruhan, \"22\" adalah lagu yang sangat energik dan optimis yang merangkum semangat dan kegembiraan khas usia muda.', 'It feels like a perfect night to dress up like hipsters\nAnd make fun of our exes, uh uh, uh uh.\nIt feels like a perfect night for breakfast at midnight\nTo fall in love with strangers, uh uh, uh uh.\nYeah,\nWe\'re happy, free, confused, and lonely at the same time\nIt\'s miserable and magical.\nOh, yeah\nTonight\'s the night when we forget about the deadlines\nIt\'s time\nUh oh!\nI don\'t know about you\nBut I\'m feeling 22\nEverything will be alright\nIf you keep me next to you\nYou don\'t know about me\nBut I\'ll bet you want to\nEverything will be alright\nIf we just keep dancing like we\'re\n22, ooh-ooh\n22, ooh-ooh\nIt seems like one of those nights,\nThis place is too crowded.\nToo many cool kids, uh uh, uh uh (who\'s Taylor Swift anyway, ew?)\nIt seems like one of those nights,\nWe ditch the whole scene and end up dreaming\nInstead of sleeping.\nYeah,\nWe\'re happy, free, confused, and lonely in the best way\nIt\'s miserable and magical.\nOh, yeah\nTonight\'s the night when we forget about the heartbreaks\nIt\'s time\nUh oh! (hey!)\nI don\'t know about you\nBut I\'m feeling 22\nEverything will be alright\nIf you keep me next to you\nYou don\'t know about me\nBut I\'ll bet you want to\nEverything will be alright (alright)\nIf we just keep dancing like we\'re\n22, ooh-ooh (oh, oh, oh)\n22, ooh-ooh\nI don\'t know about you\n22, ooh-ooh\n22, ooh-ooh\nIt feels like one of those nights,\nWe ditch the whole scene.\nIt feels like one of those nights,\nWe won\'t be sleeping.\nIt feels like one of those nights,\nYou look like bad news.\nI gotta have you,\nI gotta have you.\nOoh-ooh\nOoh-ooh, yeah, hey\nI don\'t know about you (I don\'t know about you)\nBut I\'m feeling 22\nEverything will be alright\nIf you keep me next to you\nYou don\'t know about me (you don\'t know about me)\nBut I\'ll bet you want to\nEverything will be alright\nIf we just keep dancing like we\'re\n22, ooh-ooh\n22, ooh-ooh\n22, ooh-ooh, yeah, yeah\n22, ooh-ooh, yeah, yeah, yeah\nIt feels like one of those nights,\nWe ditch the whole scene\nIt feels like one of those nights,\nWe won\'t be sleeping\nIt feels like one of those nights,\nYou look like bad news,\nI gotta have you,\nI gotta have you.', '01JDMEHYMZKY2KB1GWM0YSNFB6.jpg', 'audio/01JDMEHYN3ZXVZSFB8T5VHRCEY.mp3', 'A04', 'G01', 'M01', '2024-11-26 07:38:39', '2024-12-01 20:27:04'),
(5, 'Godvlan', '\"God\'s Plan\" adalah lagu Drake yang dirilis pada tahun 2018 sebagai single dari album kompilasi Scary Hours. Lagu ini merupakan lagu hip hop dan R&B dengan tempo yang lambat dan beat yang mellow. Liriknya menceritakan tentang kekayaan Drake dan bagaimana ia memilih untuk menggunakannya, bukan untuk kemewahan pribadi, tetapi untuk membantu orang lain. Video musiknya menampilkan Drake yang membagikan uang kepada orang-orang di Miami, Florida, sebagai tindakan filantropi. Lagu ini menjadi sangat populer dan meraih kesuksesan komersial yang besar, mencapai puncak tangga lagu di berbagai negara dan meraih sertifikasi platinum di banyak wilayah. Secara keseluruhan, \"God\'s Plan\" adalah lagu yang sangat dikenal karena liriknya yang menginspirasi dan tindakan filantropi yang ditampilkan di video musiknya.', 'And, they wishin\' and wishin\' and wishin\' and wishin\'\nThey wishin\' on me, yeah\nI been movin\' calm, don\'t start no trouble with me\nTryna keep it peaceful is a struggle for me\nDon\'t pull up at 6 AM to cuddle with me\nYou know how I like it when you lovin\' on me\nI don\'t wanna die for them to miss me\nYes, I see the things that they wishin\' on me\nHope I got some brothers that outlive me\nThey gon\' tell the story, shit was different with me\nGod\'s plan, God\'s plan\nI hold back, sometimes I won\'t, yeah\nI feel good, sometimes I don\'t, ayy, don\'t\nI finessed down Weston Road, ayy, \'nessed\nMight go down a G-O-D, yeah, wait\nI go hard on Southside G, yeah, Way\nI make sure that north side eat\nAnd still\nBad things\nIt\'s a lot of bad things\nThat they wishin\' and wishin\' and wishin\' and wishin\'\nThey wishin\' on me\nBad things\nIt\'s a lot of bad things\nThat they wishin\' and wishin\' and wishin\' and wishin\'\nThey wishin\' on me\nYeah, ayy, ayy (ayy)\nShe say, \"Do you love me?\" I tell her, \"Only partly\nI only love my bed and my momma, I\'m sorry\"\nFifty Dub, I even got it tatted on me\n81, they\'ll bring the crashers to the party\nAnd you know me\nTurn the O2 into the O3, dog\nWithout 40, Oli\', there\'d be no me\n\'Magine if I never met the broskis\nGod\'s plan, God\'s plan\nI can\'t do this on my own, ayy, no, ayy\nSomeone watchin\' this shit close, yep, close\nI\'ve been me since Scarlett Road, ayy, road, ayy\nMight go down as G-O-D, yeah, wait\nI go hard on Southside G, ayy, Way\nI make sure that north side eat, yuh\nAnd still\nBad things\nIt\'s a lot of bad things\nThat they wishin\' and wishin\' and wishin\' and wishin\'\nThey wishin\' on me\nYeah, yeah\nBad things\nIt\'s a lot of bad things\nThat they wishin\' and wishin\' and wishin\' and wishin\'\nThey wishin\' on me\nYeah', '01JE2MH9S6VRP1H5K9EB46TFXM.jpg', 'audio/01JE2MH9SBEHQS8HZ9NCBH2AWE.mp3', 'A19', 'G05', 'M02', '2024-12-01 19:52:31', '2024-12-01 19:52:31'),
(6, 'Borderline', '\"Borderline,\" dari album Lonerism Tame Impala (2012), adalah lagu psikedelik yang ikonik dengan suara dreamy dan ethereal, ditandai oleh synth yang tebal, bassline yang menawan, dan vokal Kevin Parker yang khas. Liriknya yang introspektif mengeksplorasi tema keraguan diri dan hubungan yang rumit, sementara struktur lagunya yang unik membangun klimaks emosional yang kuat. Secara keseluruhan, \"Borderline\" adalah contoh yang sempurna dari kemampuan Tame Impala dalam menciptakan musik psikedelik yang mempesona dan emosional.', 'Gone a little far\nGone a little far this time for somethin\'\nHow was I to know?\nHow was I to know this high came rushing?\nWe\'re on the borderline\nCaught between the tides of pain and rapture\nPossibly a sign\nI\'m gonna have the strangest night on Sunday\nThere I go\nQuite a show for a loner in L.A.\nAskin\' how I managed to end up in this place\nAnd I couldn\'t get away\nWe\'re on the borderline\nDangerously far and all forgiven\nThere\'s gonna be a fight\nGonna be a price to pay on Monday\n(If you and I get comfortable)\nWe\'re on the borderline (on the borderline)\nCaught between the tides of pain and rapture\nThen I saw the time (saw the time)\nWatched it speedin\' by like a train\nLike a train\nWill I be known and loved?\nIs there one that I trust?\nStarting to sober up\nHas it been long enough?\nWill I be known and loved?\nLittle closer, close enough\nI\'m a loser, loosen up\nSet it free, must be tough\nWill I be known and loved?\nIs there one that I trust?\nIf there\'s room, room for doubt\nAs within, as without ya\nWill I be so in love?\nGettin\' closer, close enough\nShout out to what is done\nR.I.P. here comes the sun\nHere comes the sun\nGone a little far\nGone a little far this time with something\nHow could I have known?\nHow was I to know this life get no shame\nI said, \"Come with me outside\"\nI need to clear my mind\nThis weight is crushing\nDo you see the light, oh\nComing from their eyes, oh no\nAnd I couldn\'t get away\nWe\'re on the borderline\nGets me every time\nThese close encounters\nJust to know I can (just to know I can)\nOnce again, I am alone\nWill I be known and loved?\nIs there one that I trust?\nStarting to sober up\nHas it been long enough?\nWill I be known and loved?\nLittle closer, close enough\nI\'m a loser, loosen up\nSet it free, must be tough (I was fine without ya)\nWill I be known and loved?\nL.A. really messed me up\nAnd it isn\'t cut and dry\nConversation, well I tried (I was fine without ya)\nWill I be? Stay right here\nAny closer, bad idea\nShout out to what is done\nR.I.P. here comes the sun (I was fine without ya)\nWill I be known and loved?\nIs there one that I trust?\nStarting to sober up\nHas it been long enough?', '01JE2MX4THDDX994KJDHN8SYDC.jpg', 'audio/01JE2MX4TNJEG3XYHGSRKH8YW9.mp3', 'A06', 'G01', 'M04', '2024-12-01 19:58:59', '2024-12-01 20:25:06'),
(7, 'The World Is Ugly', '\"The World Is Ugly\" adalah lagu dari album Danger Days: The True Lives of the Fabulous Killjoys oleh My Chemical Romance. Lagu ini mencerminkan tema dystopian dan pemberontakan yang ada di seluruh album konseptual tersebut. Musiknya berenergi tinggi dengan sound yang agresif dan berisik, khas suara My Chemical Romance. Liriknya menyuarakan sentimen frustrasi, kekecewaan, dan pemberontakan terhadap sebuah dunia yang dianggap kacau, tidak adil, dan penuh kebohongan. Meskipun tidak sepopuler beberapa single mereka yang lain, \"The World Is Ugly\" tetap menjadi lagu yang representatif dari album Danger Days, memperlihatkan sisi lebih gelap dan lebih keras dari band tersebut sambil tetap mempertahankan karakteristik musik emo-rock mereka.', 'These are the eyes and the lies of the taken\nThese are their hearts but their hearts don\'t beat like ours\nThey burn \'cause they are all afraid\nFor every one of us, there\'s an army of them\nBut you\'ll never fight alone\n\'Cause I wanted you to know\nThat the world is ugly\nBut you\'re beautiful to me\nWell are you thinking of me now (now)\nThese are the nights and the lights that we fade in\nThese are the words but the words aren\'t coming out\nThey burn \'cause they are hard to say\nFor every failing sun, there\'s a morning after\nThough I\'m empty when you go\nI just wanted you to know\nThat the world is ugly\nBut you\'re beautiful to me\nAre you thinking of me\nLike I\'m thinking of you\nI would say I\'m sorry, though\nThough I really need to go\nI just wanted you to know\nI wanted you to know\nI wanted you to know\nI\'m thinking of you every night, every day\nThese are the eyes and the lies of the taken\nThese are their hearts but their hearts don\'t beat like ours\nThey burn \'cause they are all afraid\nWhen mine beats twice as hard\n\'Cause the world is ugly\nBut you\'re beautiful to me\nAre you thinking of me\nLike I\'m thinking of you\nI would say I\'m sorry, though\nThough I really need to go\nI just wanted you to know\nThat the world is ugly (I just wanted you to know)\nBut you\'re beautiful to me (I just wanted you to know)\nAre you thinking of me\nStop your crying, helpless feeling\nDry your eyes and start believing\nThere\'s one thing they\'ll never take from you', '01JE2NA7J1VVDEB03FA6S57JY4.jpg', 'audio/01JE2NA7J6AT0KNKP788BHCB7Q.mp3', 'A08', 'G02', 'M02', '2024-12-01 20:06:08', '2024-12-01 20:06:08'),
(8, 'LosT', '\"LosT\" adalah lagu dari album Post Human: Survival Horror oleh Bring Me the Horizon. Lagu ini menandai pergeseran signifikan dalam sound Bring Me the Horizon, meninggalkan sebagian besar akar metalcore mereka untuk mengadopsi elemen-elemen elektronik, pop, dan bahkan sedikit nuansa industrial. \"LosT\" memiliki melodi yang sangat catchy dan hook yang mudah diingat, berbeda dengan banyak lagu-lagu mereka sebelumnya yang lebih berat dan agresif. Liriknya berfokus pada tema-tema kehilangan, kesepian, dan perjuangan dengan kesehatan mental, dengan suara Oliver Sykes yang lebih lembut dan emosional daripada biasanya. Meskipun sound-nya bereksperimen dan berbeda, \"LosT\" tetap memperlihatkan kekuatan vokalnya dan kemampuan Bring Me the Horizon untuk berinovasi sambil tetap mempertahankan identitas musik mereka secara unik.', 'Watching Evangelion with a big fat slug of ketamine\nI lost the plot a little while ago, oh-oh\nMy dog just died, my friends hate me, I saw myself on MTV\nAnd my ego is not my amigo\nOh, maybe I don\'t belong on this planet\nRed crescent moons all over my hands\nIt\'s too much to take, I can\'t understand it\nSomeone, tell me\nWhy am I this way?\nStupid medicine not doing anything\nWhat the hell is fucking wrong with me?\nI guess there\'s no remedy, I\'m so terribly lost\nImaginary enemies, suicidal tendencies\nSerotonin\'s proper on its arse, oh-oh\nI used to go to therapy, but the doctor tried to section me\nThe next time that I open up to someone will be my autopsy because\nI don\'t think I belong on this planet\nRed crescent moons all over my hands\nIt\'s too much to take, I can\'t fucking stand it\nSomeone, tell me\nWhy am I this way?\nStupid medicine not doing anything\nWhat the hell is fucking wrong with me?\nI guess there\'s no remedy, own worst enemy, I\'m so terribly lost\nIf I keep this up\nI think I\'m gonna break down\nIf I keep this up\nI think I\'m gonna break down (oh my God)\nI think I\'m gonna break down (oh my God)\nI think I\'m gonna break down (whoa, oh, oh-oh, oh)\nI think I\'m gonna break down (whoa, oh, oh-oh, oh)\nSomeone, tell me\nWhy am I this way?\nStupid medicine not doing anything\nWhat the hell is fucking wrong with me?\nI guess there\'s no remedy, I\'m so terribly lost\nWhy am I this way?\nStupid medicine not doing anything\nWhat the hell is fucking wrong with me?\nI guess there\'s no remedy, own worst enemy, I\'m so terribly lost', '01JE2NV3WXVZKTGA7VKA4FFTF0.jpg', 'audio/01JE2NV3X1QH1SZT7MRSNYTQ90.mp3', 'A07', 'G02', 'M02', '2024-12-01 20:15:21', '2024-12-01 20:15:21'),
(9, 'There Is a Light That Never Goes Out', '\"There Is a Light That Never Goes Out\" adalah lagu ikonik dari band The Smiths, yang dikenal karena liriknya yang puitis dan melodi yang catchy namun melankolis. Lagu ini menceritakan tentang keinginan untuk melarikan diri dari kehidupan sehari-hari yang membosankan dan menemukan kebebasan dan cinta yang abadi bersama pasangan. Musiknya dibangun di atas gitar riff yang sederhana namun efektif, drum beat yang konstan, dan vokal Morrissey yang khas, yang penuh dengan emosi dan sedikit sinis. Meskipun liriknya berbicara tentang kematian, lagu ini tetap memiliki nada optimis dan penuh harapan, mengungkapkan keinginan kuat untuk menemukan sesuatu yang lebih besar daripada diri sendiri dan bertahan bersama pasangannya, walau apapun yang terjadi. Perpaduan antara lirik yang gelap namun romantis dengan musik yang catchy menjadi ciri khas The Smiths dan menjadikan \"There Is a Light That Never Goes Out\" sebagai salah satu lagu mereka yang paling diingat.', 'Take me out tonight\nWhere there\'s music and there\'s people\nAnd they\'re young and alive\nDriving in your car\nI never, never want to go home\nBecause I haven\'t got one anymore\nTake me out tonight\nBecause I want to see people\nAnd I want to see life\nDriving in your car\nOh, please, don\'t drop me home\nBecause it\'s not my home, it\'s their home\nAnd I\'m welcome no more\nAnd if a double-decker bus crashes into us\nTo die by your side\nIs such a heavenly way to die\nAnd if a ten ton truck kills the both of us\nTo die by your side\nWell, the pleasure, the privilege is mine\nTake me out tonight\nTake me anywhere, I don\'t care, I don\'t care, I don\'t care\nAnd in the darkened underpass\nI thought, oh God, my chance has come at last\nBut then a strange fear gripped me\nAnd I just couldn\'t ask\nTake me out tonight\nOh, take me anywhere, I don\'t care, I don\'t care, I don\'t care\nDriving in your car\nI never, never want to go home\nBecause I haven\'t got one, la-di-dum\nOh, I haven\'t got one\nOh, oh\nAnd if a double-decker bus crashes into us\nTo die by your side\nIs such a heavenly way to die\nAnd if a ten ton truck kills the both of us\nTo die by your side\nWell, the pleasure, the privilege is mine\nOh, there is a light and it never goes out\nThere is a light and it never goes out\nThere is a light and it never goes out\nThere is a light and it never goes out\nThere is a light and it never goes out\nThere is a light and it never goes out\nThere is a light and it never goes out\nThere is a light and it never goes out', '01JE2Q1AFE4FAVS6HVZNDFW86G.jpg', 'audio/01JE2Q1AFJQ7J833YZ6ZNTXEP8.mp3', 'A15', 'G01', 'M03', '2024-12-01 20:36:13', '2024-12-01 20:36:13'),
(10, 'December', 'ghhcnxfdgfxgnxdv', 'flkdsouhfodfusgbaisd', '01JE35M7ASXMRHZHX2H7DWDPW6.jpg', 'audio/01JE35M7B7GA4Y6XQKSXQCAGMJ.mp3', 'A21', 'G01', 'M02', '2024-12-02 00:51:13', '2024-12-02 00:51:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kelompok7', 'kelompok7@gmail.com', NULL, '$2y$12$FX.wnW8ODaE/e/4dTm1Dsu0u5pw1qJVUeLTZp.lj8oaaTV0S7OUma', NULL, '2024-11-22 11:17:40', '2024-11-22 11:17:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pendengar`
--
ALTER TABLE `pendengar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pendengar_email_unique` (`email`),
  ADD KEY `pendengar_song_id_foreign` (`song_id`),
  ADD KEY `pendengar_artis_id_foreign` (`artis_id`),
  ADD KEY `pendengar_genre_id_foreign` (`genre_id`),
  ADD KEY `pendengar_mood_id_foreign` (`mood_id`);

--
-- Indexes for table `pendengar_section`
--
ALTER TABLE `pendengar_section`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pendengar_section_pendengar_id_foreign` (`pendengar_id`);

--
-- Indexes for table `pendengar_song`
--
ALTER TABLE `pendengar_song`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pendengar_song_pendengar_id_foreign` (`pendengar_id`),
  ADD KEY `pendengar_song_song_id_foreign` (`song_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`tipe_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `songs_artis_id_foreign` (`artis_id`),
  ADD KEY `songs_genre_id_foreign` (`genre_id`),
  ADD KEY `songs_mood_id_foreign` (`mood_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pendengar`
--
ALTER TABLE `pendengar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pendengar_section`
--
ALTER TABLE `pendengar_section`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pendengar_song`
--
ALTER TABLE `pendengar_song`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pendengar`
--
ALTER TABLE `pendengar`
  ADD CONSTRAINT `pendengar_artis_id_foreign` FOREIGN KEY (`artis_id`) REFERENCES `sections` (`tipe_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pendengar_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `sections` (`tipe_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pendengar_mood_id_foreign` FOREIGN KEY (`mood_id`) REFERENCES `sections` (`tipe_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pendengar_song_id_foreign` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pendengar_section`
--
ALTER TABLE `pendengar_section`
  ADD CONSTRAINT `pendengar_section_pendengar_id_foreign` FOREIGN KEY (`pendengar_id`) REFERENCES `pendengar` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pendengar_song`
--
ALTER TABLE `pendengar_song`
  ADD CONSTRAINT `pendengar_song_pendengar_id_foreign` FOREIGN KEY (`pendengar_id`) REFERENCES `pendengar` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pendengar_song_song_id_foreign` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `songs_artis_id_foreign` FOREIGN KEY (`artis_id`) REFERENCES `sections` (`tipe_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `songs_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `sections` (`tipe_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `songs_mood_id_foreign` FOREIGN KEY (`mood_id`) REFERENCES `sections` (`tipe_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
