-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2017 at 11:42 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activate` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `phone`, `email`, `password`, `activate`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Reksmey', '0966111229', 'reksmeysrey@gmail.com', '$2y$10$pmAbjch3FdfFE4BibObdmO.vfXilIUfGSC.lJ1oMnJLLGpDe9MzdC', 1, 'T63swvAOGj718c4bjVo461u8eR7D2AeqYDNWIjw0pXc5FQ6P6ozeOICrivGM', '2017-08-14 17:00:00', '2017-08-15 03:38:18'),
(2, 'Smeyloveu1', '0998696061', 'reksmeysrey9991@gmail.com', '$2y$10$pmAbjch3FdfFE4BibObdmO.vfXilIUfGSC.lJ1oMnJLLGpDe9MzdC', 1, 'QSCp9IiEW45bOytied4LFnmtltxBRgUzzWNf39EaoQX4Tb2LwoArXk5vghmO', '2017-08-15 00:37:41', '2017-08-15 04:23:53'),
(3, 'kokata', '0111111111', 'barangouk00@yahoo.com', '$2y$10$k3MAGTR87IGwGtFzLhk8mOglpBOZmAd2k8nPQ2rBpNQZzYgyoVab.', 1, 'Xun5Fc3zsAKphOtO2VCHCXNHMkKKtNh1uSb9XGRlPyOM7Ry74en2sAj6cQiH', '2017-08-15 00:50:27', '2017-08-15 00:50:27'),
(4, 'yoko', '0555555555', 'yoko@gmail.com', '$2y$10$NRTGFi4lxH4iCxnjGJ4CTe2ZhzKtGA8BKdHKlwdwwNd1pVNvgsvd6', 1, 'H4ymd4pp2rSZDiEz37Gv94lXT24A4gPE9flNDXgd5Cyf8Xv34mZjXgPCi01V', '2017-08-15 01:27:05', '2017-08-15 01:27:05'),
(5, 'hello', '088888888', 'hello@gmail.com', '$2y$10$kzx6wJmIl6nMPyVbPrPVf.PFJNlr7bxvY05W.UlfZ2Ba6Jay9aP.C', 1, 'zidNF9g3mw1K4vSBxdX47mTB9apow3jk1t37S6JFXZb2tKvFSZZCxIDUavAx', '2017-08-15 01:27:43', '2017-08-15 01:27:43'),
(6, 'SmeyJelo', '0777777777', 'smye@gmail.com', '$2y$10$9.gYB0w3tjKjp2zDGMnwPuLqfdciWFh6KSfLw3K0vXhAX.0KJSNDa', 1, 'LWitmQBYdSz82JiZdZtQs5dGOjUenuqB43nYjD1YiS6zMhbe4tGYVs6rssQU', '2017-08-15 01:28:15', '2017-08-15 01:28:15'),
(7, 'qqqqqqqq', '098765432', 'rrreksmeysrey@gmail.com', '123456', 1, NULL, '2017-08-15 04:22:07', '2017-08-15 04:22:07'),
(8, 'Reksmey1', '123456789', 'barangou1k@yahoo.com', '123456', 1, NULL, '2017-08-15 04:23:23', '2017-08-15 04:23:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
