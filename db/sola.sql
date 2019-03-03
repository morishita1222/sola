-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 
-- サーバのバージョン： 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sola`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `lockers`
--

DROP TABLE IF EXISTS `lockers`;
CREATE TABLE `lockers` (
  `id` int(10) UNSIGNED NOT NULL,
  `locker_no` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locker_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_no` int(11) NOT NULL,
  `use_flg` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `lockers`
--

INSERT INTO `lockers` (`id`, `locker_no`, `locker_name`, `sort_no`, `use_flg`, `created_at`, `updated_at`) VALUES
(1, '1', '1番', 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '3', '3番', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '6', '6番', 4, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '4', '4番', 7, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '5', '5番', 3, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '2', '2番', 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_01_22_072223_create_people_table', 1),
(4, '2019_01_22_082828_create_visitors_table', 2),
(5, '2019_01_23_091238_create_lockers_table', 3),
(6, '2019_01_25_090805_create_m_universals_table', 4);

-- --------------------------------------------------------

--
-- テーブルの構造 `m_universals`
--

DROP TABLE IF EXISTS `m_universals`;
CREATE TABLE `m_universals` (
  `id` int(10) UNSIGNED NOT NULL,
  `div_no` int(11) NOT NULL,
  `key1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key3` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_no` int(11) NOT NULL,
  `use_flg` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `m_universals`
--

INSERT INTO `m_universals` (`id`, `div_no`, `key1`, `key2`, `key3`, `sort_no`, `use_flg`, `created_at`, `updated_at`) VALUES
(1, 3, '_M_YNG_', '若割（25歳以下）', '-200', 1, 1, NULL, NULL),
(2, 3, '_M_6PK_', 'シックスパック割', '-200', 2, 1, NULL, NULL),
(3, 2, '1', '若割（25歳以下）', '-200', 1, 1, NULL, NULL),
(4, 3, '_M_GYM_', 'ジム割', '-200', 3, 1, NULL, NULL),
(5, 3, '_P_OVR45_', '45歳以上', '200', 20, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `people`
--

DROP TABLE IF EXISTS `people`;
CREATE TABLE `people` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `people`
--

INSERT INTO `people` (`id`, `name`, `mail`, `age`, `created_at`, `updated_at`) VALUES
(1, '森下　亮', 'r-morishita_1992@outlook.jp', 12, NULL, NULL),
(2, 'taro', 'taro@yamada.com', 12, NULL, NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `visitors`
--

DROP TABLE IF EXISTS `visitors`;
CREATE TABLE `visitors` (
  `id` int(10) UNSIGNED NOT NULL,
  `visit_date` date NOT NULL,
  `locker_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_enjoying_flg` int(11) NOT NULL,
  `option_codes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sum_amount` int(11) NOT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `visitors`
--

INSERT INTO `visitors` (`id`, `visit_date`, `locker_no`, `is_enjoying_flg`, `option_codes`, `sum_amount`, `remarks`, `created_at`, `updated_at`) VALUES
(1, '2019-01-29', NULL, 1, NULL, 1400, '', NULL, NULL),
(2, '2019-01-30', NULL, 1, '', 1400, 'aaaaaaaaaaaaaaa', '2019-01-30 06:41:14', '2019-01-30 06:41:14'),
(3, '2019-01-30', NULL, 1, '', 1400, 'aaaaaaaaaaaaaa\r\nbbbbbbbbbbbccccc\r\nccccccccc\r\nb', '2019-01-30 06:43:29', '2019-01-30 06:43:29'),
(4, '2019-01-30', '3', 1, '', 1400, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\r\naaaa', '2019-01-30 07:00:56', '2019-01-30 07:00:56'),
(5, '2019-01-30', '3', 1, '', 1400, 'ああああああああああああ', '2019-01-30 07:15:07', '2019-01-30 07:15:07'),
(6, '2019-01-31', '3', 1, '', 1400, 'eee', '2019-01-31 03:12:56', '2019-01-31 03:12:56'),
(7, '2019-01-31', '1', 1, '', 1400, 'rrrr', '2019-01-31 03:13:33', '2019-01-31 03:13:33'),
(8, '2019-01-31', '6', 1, '', 1400, 'eee', '2019-01-31 03:13:58', '2019-01-31 03:13:58'),
(9, '2019-01-31', '3', 1, '', 1400, '222', '2019-01-31 03:18:49', '2019-01-31 03:18:49'),
(10, '2019-01-31', '3', 1, '', 1400, 'aaa', '2019-01-31 07:04:17', '2019-01-31 07:04:17'),
(11, '2019-01-31', '3', 1, '若割（25歳以下）,シックスパック割,ジム割', 1400, 'ffffff', '2019-01-31 07:10:47', '2019-01-31 07:10:47'),
(12, '2019-01-31', '3', 1, '若割（25歳以下）', 1400, 'ddd', '2019-01-31 14:49:20', '2019-01-31 14:49:20'),
(13, '2019-01-31', '3', 1, '若割（25歳以下）', 1400, 'aaaa', '2019-01-31 14:49:48', '2019-01-31 14:49:48'),
(14, '2019-01-31', '3', 1, '1,2', 1400, 'aaa', '2019-01-31 14:54:05', '2019-01-31 14:54:05'),
(15, '2019-01-31', '3', 1, '1,2,3', 1400, 'kkkk\r\naaaa\r\ndd', '2019-01-31 14:57:30', '2019-01-31 14:57:30'),
(16, '2019-01-31', '3', 1, '_M_YNG_,_M_6PK_,_M_GYM_,_P_OVR45_', 1400, 'どうだこれで', '2019-01-31 14:59:36', '2019-01-31 14:59:36'),
(17, '2019-01-31', '6', 1, '_M_YNG_', 1400, NULL, '2019-01-31 15:00:31', '2019-01-31 15:00:31'),
(18, '2019-01-31', '6', 1, '_M_YNG_', 1400, NULL, '2019-01-31 15:00:31', '2019-01-31 15:00:31'),
(19, '2019-01-31', '3', 1, '', 1400, NULL, '2019-01-31 15:03:58', '2019-01-31 15:03:58'),
(20, '2019-01-31', '3', 1, '_M_YNG_,_M_6PK_,_M_GYM_,_P_OVR45_', 1400, NULL, '2019-01-31 15:04:25', '2019-01-31 15:04:25'),
(21, '2019-01-31', '3', 1, '_M_YNG_|_M_6PK_|_M_GYM_|_P_OVR45_', 1400, 'ああ\r\n\r\n\r\nああああ\r\n\r\n\r\nああああ', '2019-01-31 15:05:28', '2019-01-31 15:05:28'),
(22, '2019-01-31', '3', 1, '_M_YNG_|_M_6PK_|_M_GYM_|_P_OVR45_', 1400, 'ああああああああ', '2019-01-31 15:08:52', '2019-01-31 15:08:52'),
(23, '2019-01-31', '3', 1, '_M_YNG_|_M_6PK_', 1400, NULL, '2019-01-31 15:11:36', '2019-01-31 15:11:36'),
(24, '2019-01-31', '3', 1, '_M_YNG_|_M_6PK_|_M_GYM_', 1400, NULL, '2019-01-31 15:22:59', '2019-01-31 15:22:59'),
(25, '2019-01-31', '3', 1, '_M_YNG_', 1400, NULL, '2019-01-31 15:41:36', '2019-01-31 15:41:36'),
(26, '2019-01-31', '3', 1, '_M_YNG_|_P_OVR45_', 1400, NULL, '2019-01-31 15:42:45', '2019-01-31 15:42:45'),
(27, '2019-01-31', '3', 1, '_M_YNG_|_P_OVR45_', 1400, NULL, '2019-01-31 15:42:46', '2019-01-31 15:42:46'),
(28, '2019-01-31', '3', 1, '_M_YNG_', 1400, NULL, '2019-01-31 15:44:23', '2019-01-31 15:44:23'),
(29, '2019-01-31', '3', 1, '_M_YNG_', 1400, NULL, '2019-01-31 15:48:01', '2019-01-31 15:48:01'),
(30, '2019-01-31', '3', 1, '_M_YNG_|_M_6PK_|_M_GYM_|_P_OVR45_', 1400, NULL, '2019-01-31 15:51:04', '2019-01-31 15:51:04'),
(31, '2019-01-31', '3', 1, '_M_YNG_', 1400, NULL, '2019-01-31 16:00:07', '2019-01-31 16:00:07'),
(32, '2019-01-31', '3', 1, '_M_YNG_', 1400, NULL, '2019-01-31 16:04:37', '2019-01-31 16:04:37'),
(33, '2019-01-31', '3', 1, '_M_YNG_', 1400, NULL, '2019-01-31 16:09:45', '2019-01-31 16:09:45'),
(34, '2019-01-31', '3', 1, '_M_YNG_|_M_6PK_', 1400, NULL, '2019-01-31 16:10:15', '2019-01-31 16:10:15'),
(35, '2019-01-31', '3', 1, '_M_YNG_', 1400, NULL, '2019-01-31 16:11:14', '2019-01-31 16:11:14'),
(36, '2019-01-31', '3', 1, '_M_YNG_', 1400, NULL, '2019-01-31 16:14:52', '2019-01-31 16:14:52'),
(37, '2019-01-31', '3', 1, '_M_YNG_|_M_6PK_', 1400, 'あああああああああああああ', '2019-01-31 16:16:01', '2019-01-31 16:16:01'),
(38, '2019-01-31', '3', 1, '_M_YNG_|_M_6PK_', 1400, NULL, '2019-01-31 16:16:36', '2019-01-31 16:16:36'),
(39, '2019-01-31', '3', 1, '_M_YNG_|_M_6PK_', 1400, NULL, '2019-01-31 16:17:25', '2019-01-31 16:17:25'),
(40, '2019-01-31', '3', 1, '_M_YNG_|_M_6PK_', 1400, NULL, '2019-01-31 16:18:23', '2019-01-31 16:18:23'),
(41, '2019-01-31', '3', 1, '_M_YNG_|_M_6PK_', 1000, NULL, '2019-01-31 16:20:05', '2019-01-31 16:20:05'),
(42, '2019-01-31', '3', 1, '_P_OVR45_', 1600, NULL, '2019-01-31 16:38:02', '2019-01-31 16:38:02'),
(43, '2019-01-31', '3', 1, '_P_OVR45_', 1600, NULL, '2019-01-31 16:38:58', '2019-01-31 16:38:58'),
(44, '2019-02-01', '3', 1, '_M_YNG_|_M_6PK_', 1000, NULL, '2019-02-01 09:21:00', '2019-02-01 09:21:00'),
(45, '2019-02-01', '3', 1, '_M_YNG_|_M_6PK_', 1000, 'tt\r\n\r\n\r\n\r\nttt', '2019-02-01 09:29:41', '2019-02-01 09:29:41'),
(46, '2019-03-03', '5', 1, '_M_YNG_', 1200, NULL, '2019-03-03 12:49:36', '2019-03-03 12:49:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lockers`
--
ALTER TABLE `lockers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_universals`
--
ALTER TABLE `m_universals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lockers`
--
ALTER TABLE `lockers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `m_universals`
--
ALTER TABLE `m_universals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
