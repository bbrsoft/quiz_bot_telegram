-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 16, 2024 at 11:34 AM
-- Server version: 10.6.18-MariaDB-cll-lve
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lotd3884_quizamon`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `album_name` varchar(100) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `album_seo` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL,
  `win` text NOT NULL,
  `bonus` int(11) NOT NULL,
  `note` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `album_name`, `tanggal`, `album_seo`, `photo`, `is_active`, `win`, `bonus`, `note`) VALUES
(1, 'English', '2024-07-06', 'EN', '17:45', 'Y', '1', 100, ''),
(2, 'Indonesia', '2024-07-06', 'IND', '23:00', 'Y', '2', 100, '');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `title`, `photo`) VALUES
(5, 'Home', '029b7a215638c7e5ac5f099a667ffa40.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `slug`, `is_active`) VALUES
(1, 'Teknologi', 'teknologi', 'Y'),
(2, 'Game', 'game', 'Y'),
(3, 'Movie', 'movie', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `bot_api_token` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `contact_name`, `description`, `bot_api_token`) VALUES
(1, 'About Me', 'Kuis di Telegram yang memungkinkan pengguna untuk bermain kuis bersama teman-teman mereka dalam grup. Bot ini menyediakan berbagai pertanyaan kuis dengan kategori yang beragam, dan pemain dapat bersaing untuk mendapatkan poin dengan menjawab pertanyaan-pertanyaan tersebut', '7176608349:AAHA9Prd17BJ6yF1nWxKtR1MkD1G-d73NzM');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `proof` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(20) NOT NULL,
  `date_verify` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `id_album` int(11) NOT NULL,
  `gallery_name` varchar(100) NOT NULL,
  `gallery_seo` varchar(100) NOT NULL,
  `information` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `id_album`, `gallery_name`, `gallery_seo`, `information`, `photo`, `is_active`) VALUES
(9, 17, 'Galeri 2', 'galeri-2', 'LIfe is Strange', 'galeri-2-15815614412.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `history_answer`
--

CREATE TABLE `history_answer` (
  `id` int(11) NOT NULL,
  `chat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(15) NOT NULL,
  `jeda` int(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `l` int(11) NOT NULL,
  `r` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `identity`
--

CREATE TABLE `identity` (
  `id` int(11) NOT NULL,
  `web_name` varchar(255) NOT NULL,
  `web_address` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `identity`
--

INSERT INTO `identity` (`id`, `web_name`, `web_address`, `meta_description`, `meta_keyword`, `photo`) VALUES
(1, 'quizamon', 'quizamon', 'kuis di Telegram yang memungkinkan pengguna untuk bermain kuis bersama teman-teman mereka dalam grup. Bot ini menyediakan berbagai pertanyaan kuis dengan kategori yang beragam, dan pemain dapat bersaing untuk mendapatkan poin dengan menjawab pertanyaan-pertanyaan tersebut', 'quizamon', 'c551664b65bad27d6b56ac71bfdd016f.png');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 'Setting Web', '', 'fas fa-fw fa-cog', 'Y'),
(2, 'Setting Menu', '', 'fas fa-fw fa-sliders-h', 'N'),
(3, 'Manajemen Pertanyaan', '', 'fas fa-fw fa-newspaper', 'Y'),
(4, 'Media', '', 'fas fa-fw fa-photo-video', 'Y'),
(5, 'Website', '', 'fas fa-fw fa-home', 'N'),
(6, 'Member Management', 'admin/user', 'fas fa-fw fa-users', 'Y'),
(7, 'Bahasa', 'admin/album', 'fas fa-fw fa-folder', 'Y'),
(8, 'History', '', 'fas fa-fw fa-box', 'N'),
(9, 'Logout', 'auth/logout', 'fas fa-fw fa-users', 'N'),
(12, 'Ranking', 'admin/ranking', 'fas fa-fw fa-medal', 'Y'),
(13, 'withdraw', 'admin/withdraw', '', 'N'),
(14, 'gift', 'admin/gift', '', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `posting`
--

CREATE TABLE `posting` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `direct` varchar(255) DEFAULT NULL,
  `seo_title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `featured` char(1) NOT NULL,
  `choice` char(1) NOT NULL,
  `thread` char(5) NOT NULL,
  `id_category` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `is_active` char(1) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `posting`
--

INSERT INTO `posting` (`id`, `title`, `direct`, `seo_title`, `content`, `featured`, `choice`, `thread`, `id_category`, `photo`, `is_active`, `date`) VALUES
(1, 'Storage', '', 'storage', 'What is the main purpose of RAM in a computer?', 'N', 'N', '1', 1, '', 'Y', '2024-07-27'),
(2, 'Babbage', '', 'babbage', 'Who is known as the father of the computer?', 'N', 'N', '1', 1, '', 'Y', '2024-07-27'),
(3, 'Markup', '', 'markup', 'What does HTML stand for?', 'N', 'N', '1', 1, '', 'Y', '2024-07-27'),
(4, 'Microsoft', '', 'microsoft', 'Which company developed the Windows operating system?', 'N', 'N', '1', 1, '', 'Y', '2024-07-27'),
(5, 'Siri', '', 'siri', 'What is the name of Apple\'s virtual assistant?', 'N', 'N', '1', 1, '', 'Y', '2024-07-27'),
(6, 'Processing', '', 'processing', 'What does CPU stand for?', 'N', 'N', '1', 1, '', 'Y', '2024-07-27'),
(7, 'Management', '', 'management', 'What is the primary function of an operating system?', 'N', 'N', '1', 1, '', 'Y', '2024-07-27'),
(8, 'Universal', '', 'universal', 'What does the acronym USB stand for?', 'N', 'N', '1', 1, '', 'Y', '2024-07-27'),
(9, 'JavaScript', '', 'javascript', 'What is the most popular programming language for web development?', 'N', 'N', '1', 1, '', 'Y', '2024-07-27'),
(10, 'Berners-Lee', '', 'berners-lee', 'Who invented the World Wide Web?', 'N', 'N', '1', 1, '', 'Y', '2024-07-27'),
(11, 'Penyimpanan', '', 'penyimpanan', 'Apa tujuan utama RAM di komputer?', 'N', 'N', '2', 1, '', 'Y', '2024-07-27'),
(12, 'Babbage', '', 'babbage', 'Siapa yang dikenal sebagai bapak komputer?', 'N', 'N', '2', 1, '', 'Y', '2024-07-27'),
(13, 'Markup', '', 'markup', 'Apa kepanjangan dari HTML?', 'N', 'N', '2', 1, '', 'Y', '2024-07-27'),
(14, 'Microsoft', '', 'microsoft', 'Perusahaan mana yang mengembangkan sistem operasi Windows?', 'N', 'N', '2', 1, '', 'Y', '2024-07-27'),
(15, 'Siri', '', 'siri', 'Apa nama asisten virtual Apple?', 'N', 'N', '2', 1, '', 'Y', '2024-07-27'),
(16, 'Prosesor', '', 'prosesor', 'Apa kepanjangan dari CPU?', 'N', 'N', '2', 1, '', 'Y', '2024-07-27'),
(17, 'Manajemen', '', 'manajemen', 'Apa fungsi utama sistem operasi?', 'N', 'N', '2', 1, '', 'Y', '2024-07-27'),
(18, 'Universal', '', 'universal', 'Apa kepanjangan dari USB?', 'N', 'N', '2', 1, '', 'Y', '2024-07-27'),
(19, 'JavaScript', '', 'javascript', 'Bahasa pemrograman apa yang paling populer untuk pengembangan web?', 'N', 'N', '2', 1, '', 'Y', '2024-07-27'),
(20, 'Berners-Lee', '', 'berners-lee', 'Siapa yang menemukan World Wide Web?', 'N', 'N', '2', 1, '', 'Y', '2024-07-27'),
(21, 'Protection', '', 'protection', '<p>What is the purpose of a firewall in a computer network?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(22, 'Transfer', '', 'transfer', '<p>What does the acronym HTTP stand for?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(23, 'Alphabet', '', 'alphabet', '<p>Which company is known for its search engine named \"Google\"?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(24, 'Azure', '', 'azure', '<p>What is the name of Microsoft\'s cloud computing service?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(25, 'Internet', '', 'internet', '<p>What does the term \"IoT\" stand for?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(26, 'Zuckerberg', '', 'zuckerberg', '<p>Who is the founder of Facebook?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(27, 'Virtual', '', 'virtual', '<p>What does the acronym VPN stand for?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(28, 'Routing', '', 'routing', '<p>What is the main function of a router?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(29, 'Java', '', 'java', '<p>What programming language is primarily used for Android app development?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(30, 'Solid', '', 'solid', '<p>What does SSD stand for?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(31, 'Android', '', 'android', '<p>What is the name of Google\'s operating system for mobile devices?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(32, 'SMTP', '', 'smtp', '<p>What is the standard protocol for sending emails?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(33, 'Interface', '', 'interface', '<p>What does GUI stand for?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(34, 'Protocol', '', 'protocol', '<p>What is the full form of IP in networking?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(35, 'Firefox', '', 'firefox', '<p>What is the name of the web browser developed by Mozilla?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(36, 'System', '', 'system', '<p>What does BIOS stand for?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(37, 'Optimization', '', 'optimization', '<p>What does SEO stand for in digital marketing?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(38, 'Keyboard', '', 'keyboard', '<p>What type of device is used to input data into a computer?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(39, 'Apple', '', 'apple', '<p>What is the name of the company behind the iPhone?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(40, 'Interface', '', 'interface', '<p>What does API stand for?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(41, 'Bluetooth', '', 'bluetooth', '<p>What technology is used for wireless communication over short distances?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(42, 'Locator', '', 'locator', '<p>What does URL stand for?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(43, 'HTML', '', 'html', '<p>What is the main language used for designing websites?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(44, 'GPU', '', 'gpu', '<p>What is the abbreviation for Graphics Processing Unit?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(45, 'SQL', '', 'sql', '<p>What type of software is used to manage databases?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(46, 'Network', '', 'network', '<p>What does LAN stand for?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(47, 'iCloud', '', 'icloud', '<p>What is the name of the Apple\'s cloud storage service?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(48, 'Network', '', 'network', '<p>What does VPN stand for?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(49, 'YouTube', '', 'youtube', '<p>What is the name of Google\'s video-sharing platform?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(50, 'Kindle', '', 'kindle', '<p>What technology is used to power e-books?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(51, 'JPEG', '', 'jpeg', '<p>What is the most common file format for images on the web?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(52, 'Secure', '', 'secure', '<p>What does SSH stand for in network security?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(53, 'Recognition', '', 'recognition', '<p>What does OCR stand for in technology?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(54, 'iOS', '', 'ios', '<p>What is the name of Apple\'s mobile operating system?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(55, 'Redundant', '', 'redundant', '<p>What does RAID stand for in storage systems?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(56, 'Hosting', '', 'hosting', '<p>What is the primary purpose of a web server?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(57, 'Internet', '', 'internet', '<p>What does IP stand for in IP address?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(58, 'Linux', '', 'linux', '<p>What is the name of the popular open-source operating system</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(59, 'Domain', '', 'domain', '<p>What does DNS stand for in networking?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(60, 'Structured', '', 'structured', '<p>What is the full form of SQL in databases?</p>', 'N', 'N', '1', 1, '', 'Y', '2024-07-31'),
(61, 'Perlindungan', '', 'perlindungan', '<p>Apa tujuan dari firewall di jaringan komputer?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(62, 'Transfer', '', 'transfer', '<p>Apa kepanjangan dari HTTP?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(63, 'Alphabet', '', 'alphabet', '<p>Perusahaan mana yang dikenal dengan mesin pencari \"Google\"?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(64, 'Azure', '', 'azure', '<p>Apa nama layanan komputasi awan Microsoft?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(65, 'Internet', '', 'internet', '<p>Apa kepanjangan dari \"IoT\"?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(66, 'Zuckerberg', '', 'zuckerberg', '<p>Siapa pendiri Facebook?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(67, 'Virtual', '', 'virtual', '<p>Apa kepanjangan dari VPN?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(68, 'Routing', '', 'routing', '<p>Apa fungsi utama router?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(69, 'Java', '', 'java', '<p>Bahasa pemrograman apa yang terutama digunakan untuk pengembangan aplikasi Android?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(70, 'Solid', '', 'solid', '<p>Apa kepanjangan dari SSD?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(71, 'Android', '', 'android', '<p>Apa nama sistem operasi Google untuk perangkat mobile?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(72, 'SMTP', '', 'smtp', '<p>Apa protokol standar untuk mengirim email?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(73, 'Interface', '', 'interface', '<p>Apa kepanjangan dari GUI?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(74, 'Protokol', '', 'protokol', '<p>Apa kepanjangan dari IP dalam jaringan?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(75, 'Firefox', '', 'firefox', '<p>Apa nama peramban web yang dikembangkan oleh Mozilla?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(76, 'Sistem', '', 'sistem', '<p>Apa kepanjangan dari BIOS?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(77, 'Optimasi', '', 'optimasi', '<p>Apa kepanjangan dari SEO dalam pemasaran digital?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(78, 'Keyboard', '', 'keyboard', '<p>Jenis perangkat apa yang digunakan untuk memasukkan data ke komputer?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(79, 'Apple', '', 'apple', '<p>Apa nama perusahaan di balik iPhone?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(80, 'Interface', '', 'interface', '<p> Apa kepanjangan dari API?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(81, 'Bluetooth', '', 'bluetooth', '<p>Teknologi apa yang digunakan untuk komunikasi nirkabel jarak pendek? <br></p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(82, 'Locator', '', 'locator', '<p>Apa kepanjangan dari URL?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(83, 'HTML', '', 'html', '<p>Bahasa apa yang digunakan untuk mendesain situs web?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(84, 'GPU', '', 'gpu', '<p> Singkatan apa untuk Graphics Processing Unit?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(85, 'SQL', '', 'sql', '<p> Jenis perangkat lunak apa yang digunakan untuk mengelola basis data?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(86, 'Jaringan', '', 'jaringan', '<p>Apa kepanjangan dari LAN?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(87, 'iCloud', '', 'icloud', '<p>Apa nama layanan penyimpanan awan dari Apple?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(88, 'Jaringan', '', 'jaringan', '<p>Apa kepanjangan dari VPN?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(89, 'YouTube', '', 'youtube', '<p>Apa nama platform berbagi video dari Google?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(90, 'Kindle', '', 'kindle', '<p>Teknologi apa yang digunakan untuk e-book?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(91, 'JPEG', '', 'jpeg', '<p>Format file apa yang paling umum untuk gambar di web?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(92, 'Secure', '', 'secure', '<p>Apa kepanjangan dari SSH dalam keamanan jaringan?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(93, 'Recognition', '', 'recognition', '<p>Apa kepanjangan dari OCR dalam teknologi?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(94, 'IOS', '', 'ios', '<p>Apa nama sistem operasi mobile dari Apple?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(95, 'Redundant', '', 'redundant', '<p>Apa kepanjangan dari RAID dalam sistem penyimpanan?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(96, 'Hosting', '', 'hosting', '<p>Apa tujuan utama dari server web?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(97, 'Internet', '', 'internet', '<p>Apa kepanjangan dari IP dalam alamat IP?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(98, 'Linux', '', 'linux', '<p>Apa nama sistem operasi sumber terbuka yang populer?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(99, 'Domain', '', 'domain', '<p>Apa kepanjangan dari DNS dalam jaringan?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31'),
(100, 'Structured', '', 'structured', '<p>Apa kepanjangan dari SQL dalam basis data?</p>', 'N', 'N', '2', 1, '', 'Y', '2024-07-31');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `sub_title` varchar(50) NOT NULL,
  `sub_url` varchar(50) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id`, `id_menu`, `sub_title`, `sub_url`, `is_active`) VALUES
(1, 1, 'Identitas Web', 'admin/identity', 'Y'),
(2, 1, 'Kontak', 'admin/contact', 'Y'),
(3, 2, 'Menu Utama', 'admin/menu', 'Y'),
(4, 2, 'Sub Menu', 'admin/submenu', 'Y'),
(5, 3, 'Kategori / Topik', 'admin/category', 'Y'),
(6, 3, 'Pertanyaan', 'admin/posting', 'Y'),
(7, 4, 'Album', 'admin/album', 'N'),
(8, 4, 'Gallery Foto', 'admin/gallery', 'N'),
(10, 4, 'Banner', 'admin/banner', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `role` varchar(15) NOT NULL,
  `coin` int(11) NOT NULL,
  `score` varchar(255) DEFAULT NULL,
  `jawaban_kosong` text NOT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `group_id` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `answer` int(11) NOT NULL,
  `jeda` int(11) NOT NULL,
  `r` int(11) NOT NULL,
  `l` int(11) NOT NULL,
  `chat_id` varchar(555) NOT NULL,
  `status_game` int(11) NOT NULL,
  `current_round` int(11) NOT NULL,
  `questions` varchar(1000) NOT NULL,
  `is_admin` int(11) NOT NULL,
  `question_sesi` varchar(10) NOT NULL,
  `user_answer` text NOT NULL,
  `time_answer` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `role`, `coin`, `score`, `jawaban_kosong`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `group_id`, `phone`, `answer`, `jeda`, `r`, `l`, `chat_id`, `status_game`, `current_round`, `questions`, `is_admin`, `question_sesi`, `user_answer`, `time_answer`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$QUM2OeQCZclQqJIhZKKMt.Aq8dA3Y7eIzjtXsyr.xuE0kDjfj8SLS', 'admin@admin.com', 'Admin', 37505, NULL, '', '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1723016700, 1, 'Garsans', 'News', NULL, '0123456789', 0, 0, 10, 1, '0', 0, 0, '', 0, '', '', '2024-08-07 14:45:00'),
(2, '', 'Rarman F', '$2y$10$H4OH/ocq1Mth.GxAD66aWONHu5doIXJ1IQNul3iFRTPba3Qx042da', 'bcsbank.indonesia@gmail.com', 'user', 2023, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1720673334, NULL, NULL, NULL, NULL, NULL, NULL, 123, 0, 10, 1, '0', 0, 0, '', 0, '', '', '2024-08-05 21:40:11'),
(3, '', 'Juand Gouer', '$2y$10$mfpcq8ZBK/Ip69HCoL3wh.KZFYH8SXi29bMd1297liEMHQEHhDEki', 'dev@gmail.com', 'user', 2000, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1720673605, NULL, NULL, NULL, NULL, NULL, NULL, 31, 0, 10, 1, '0', 0, 0, '', 0, '', '', '2024-08-05 21:40:15'),
(4, '', 'Masha Cohen', '$2y$10$mfpcq8ZBK/Ip69HCoL3wh.KZFYH8SXi29bMd1297liEMHQEHhDEki', 'mashacohen@gmail.com', 'user', 6664, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1792, 0, 10, 1, '0', 0, 0, '', 0, '', '', '2024-08-05 21:40:18'),
(5, '', 'Baratam', '$2y$10$mfpcq8ZBK/Ip69HCoL3wh.KZFYH8SXi29bMd1297liEMHQEHhDEki', 'baratam@gmail.com', '', 6228, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1347, 0, 10, 1, '0', 0, 0, '', 0, '', '', '2024-08-05 21:40:21'),
(6, '', 'Roman', 'Roman', 'roman@gmail.com', 'user', 3081, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 930, 0, 10, 1, '0', 0, 0, '', 0, '', '', '2024-08-05 21:40:25'),
(7, '', 'Диана Н', 'ДианаН', '', 'user', 3073, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 877, 0, 10, 1, '0', 0, 0, '', 0, '', '', '2024-08-05 21:40:29'),
(8, '', 'Severeas H. Prangphit', 'Severeas9HPrangphit', 'severeas@gmail.com', 'user', 2930, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 769, 0, 10, 1, '0', 0, 0, '', 0, '', '', '2024-08-05 21:40:33'),
(9, '', 'Habib F', 'Habib F ', 'habibfa@gmail.com', 'user', 2182, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 706, 0, 10, 1, '0', 0, 0, '', 0, '', '', '2024-08-05 21:40:37'),
(10, '', 'Daniel', 'Daniel208123', 'daniel@gmail.com', 'user', 1924, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 490, 0, 10, 1, '0', 0, 0, '', 0, '', '', '2024-08-05 21:40:41'),
(11, '', 'ZHEE 17', 'ZHED1729jfe298', 'ZHEE17@gmail.com', 'user', 1546, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '-1002182637304', NULL, 399, 0, 10, 1, '-1002182637304', 0, 0, '', 0, '', '', '2024-08-05 23:15:40'),
(12, '', 'ℋℴ?ℯ???', 'ℋℴ?ℯ?asdasda', 'hosneta@gmail.com', 'user', 1343, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 391, 0, 10, 1, '0', 0, 0, '', 0, '', '', '2024-08-05 21:40:50'),
(75, '', 'Stigma_apps', '$2y$10$Xq8kBOR6SAVbLWTF1fXxz.fJdwDcHmwrGe6q/icbGPpfbmFFOXwoC', '1775130061', 'user', 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1723015949, NULL, NULL, NULL, NULL, '-4231401034', '0', 1, 0, 15, 1, '-4231401034', 0, 3, '', 0, 'Open', '', '2024-08-08 15:57:59'),
(81, '91.108.6.27', 'bbrsoft', '$2y$10$05azS.1lG.Ul51cFgWBWzuJYBnqbZdRyFdlxSNS1n/wKd94ZA17lO', '5834504059', 'user', 10, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 1723108283, NULL, NULL, NULL, NULL, '-', '0', 5, 0, 10, 1, '5834504059', 0, 0, '', 0, 'End', '', '2024-08-16 11:33:34'),
(82, '91.108.6.23', 'Riantoastono', '$2y$10$9Vh80gPiC2pYyfbKvOCXTeOC2Vm6B6h8JZBre1GiIAjlgA2dQm50u', '194238408', 'user', 10, 'Riantoastono', '', NULL, NULL, NULL, NULL, NULL, NULL, 1723770561, NULL, NULL, NULL, NULL, '-', '0', 1, 0, 10, 1, '-1002063102833', 0, 0, '', 0, 'End', '', '2024-08-16 08:41:39');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(37, 1, 1),
(38, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `note` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(20) NOT NULL,
  `date_verify` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_answer`
--
ALTER TABLE `history_answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `identity`
--
ALTER TABLE `identity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posting`
--
ALTER TABLE `posting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`score`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `history_answer`
--
ALTER TABLE `history_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `identity`
--
ALTER TABLE `identity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `posting`
--
ALTER TABLE `posting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
