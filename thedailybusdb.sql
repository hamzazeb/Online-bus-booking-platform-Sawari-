-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 15, 2020 at 05:19 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thedailybusdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

DROP TABLE IF EXISTS `facilities`;
CREATE TABLE IF NOT EXISTS `facilities` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `Wifi` tinyint(1) NOT NULL,
  `Refreshment` tinyint(1) NOT NULL,
  `Newspaper` tinyint(1) NOT NULL,
  `AC` tinyint(1) NOT NULL,
  `Entertainment` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `facilities_service_id_foreign` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `service_id`, `Wifi`, `Refreshment`, `Newspaper`, `AC`, `Entertainment`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 0, 1, 1, '2019-07-03 13:44:46', '2019-07-03 13:44:46'),
(2, 2, 1, 0, 0, 1, 1, '2019-07-03 13:45:01', '2019-07-03 13:45:01'),
(3, 6, 1, 0, 0, 1, 1, '2019-07-03 23:27:01', '2019-07-03 23:27:01'),
(4, 7, 1, 1, 0, 1, 0, '2019-07-03 23:57:00', '2019-07-03 23:57:00'),
(5, 9, 1, 1, 1, 1, 1, '2020-08-13 13:03:16', '2020-08-13 13:03:16');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `cnic`, `mobile`, `created_at`, `updated_at`) VALUES
(1, 'Hamza Zeb', '13101-2234974-9', '03115445310', '2019-07-03 13:45:45', '2019-07-03 13:45:45'),
(2, 'Atif Khan', '13431-3576975-9', '03336756432', '2019-07-03 23:39:27', '2019-07-03 23:39:27'),
(3, 'Zaighum', '13101-5565975-9', '03115445310', '2019-07-06 05:10:15', '2019-07-06 05:10:15'),
(4, 'Hamzi', '1310155659759', '03115445310', '2020-08-13 11:17:52', '2020-08-13 11:17:52'),
(5, 'Hamza Zeb', '1310155659759', '03115445310', '2020-08-14 10:24:03', '2020-08-14 10:24:03'),
(6, 'Hamzi', '1310155659759', '03115445310', '2020-08-15 12:13:19', '2020-08-15 12:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_07_03_183001_create_members_table', 1),
(3, '2019_07_03_183112_create_projects_table', 1),
(4, '2019_07_03_183205_create_stypes_table', 1),
(5, '2019_07_03_183249_create_types_table', 1),
(6, '2019_07_03_183337_create_travels_table', 1),
(7, '2019_07_03_183427_create_facilities_table', 1),
(8, '2019_07_03_183949_create_slips_table', 1),
(10, '2019_07_04_011516_create_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sfrom` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrival` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fare` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `service_name`, `service_type`, `sfrom`, `sto`, `departure`, `duration`, `arrival`, `fare`, `created_at`, `updated_at`) VALUES
(1, 'daewoo express', 'bus', 'abbottabad', 'peshawar', '07:00', '03:00', '10:00', 600, '2019-07-03 13:43:59', '2019-07-03 13:43:59'),
(2, 'bilal travels', 'hiace', 'abbottabad', 'peshawar', '06:00', '03:00', '09:00', 450, '2019-07-03 13:44:27', '2019-07-03 13:44:27'),
(3, 'niazi express', 'hiace', 'abbottabad', 'peshawar', '07:00', '03:00', '10:00', 350, '2019-07-03 22:35:29', '2019-07-03 22:35:29'),
(4, 'moterway express', 'cargo', 'abbottabad', 'peshawar', '06:00', '02:30', '08:30', 600, '2019-07-03 23:06:20', '2019-07-03 23:06:20'),
(5, 'bilal travels', 'hiace', 'abbottabad', 'peshawar', '05:00', '03:20', '08:30', 350, '2019-07-03 23:12:04', '2019-07-03 23:12:04'),
(6, 'bilal travels', 'hiace', 'abbottabad', 'peshawar', '05:00', '03:20', '08:30', 350, '2019-07-03 23:13:11', '2019-07-03 23:13:11'),
(7, 'faisal movers', 'bus', 'peshawar', 'abbottabad', '07:00', '03:20', '10:20', 500, '2019-07-03 23:54:48', '2019-07-03 23:54:48'),
(8, 'motorway express', 'hiace', 'abbottabad', 'peshawar', '05:40', '02:20', '08:00', 650, '2020-08-13 10:58:00', '2020-08-13 10:58:00'),
(9, 'hamza express', 'bus', 'abbottabad', 'peshawar', '05:40', '02:20', '08:00', 650, '2020-08-13 13:02:11', '2020-08-13 13:02:11');

-- --------------------------------------------------------

--
-- Table structure for table `slips`
--

DROP TABLE IF EXISTS `slips`;
CREATE TABLE IF NOT EXISTS `slips` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `where` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_seats` int(11) DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `travel_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slips_travel_id_foreign` (`travel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slips`
--

INSERT INTO `slips` (`id`, `from`, `where`, `service_name`, `service_type`, `no_of_seats`, `date`, `name`, `travel_id`, `created_at`, `updated_at`) VALUES
(1, 'abbottabad', 'peshawar', 'bilal travels', 'hiace', 3, '2019-07-10', 'Hamza Zeb', 1, '2019-07-03 13:45:24', '2019-07-03 13:46:15'),
(2, 'abbottabad', 'peshawar', 'moterway express', 'cargo', 3, '2019-07-16', 'Atif Khan', 2, '2019-07-03 23:38:44', '2019-07-03 23:41:43'),
(3, 'abbottabad', 'peshawar', 'moterway express', 'cargo', 2, '2019-07-17', 'Zaighum', 3, '2019-07-06 05:10:01', '2019-07-06 05:10:30'),
(4, 'abbottabad', 'peshawar', NULL, NULL, NULL, '2020-08-26', 'Hamzi', 4, '2020-08-13 11:13:54', '2020-08-13 11:17:52'),
(5, 'abbottabad', 'peshawar', 'daeweoo express', 'hiace', 2, '2020-08-21', 'Hamza Zeb', 5, '2020-08-14 10:23:49', '2020-08-14 10:24:48'),
(6, 'abbottabad', 'peshawar', NULL, NULL, NULL, '2020-08-18', 'Hamzi', 6, '2020-08-15 12:13:05', '2020-08-15 12:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `stypes`
--

DROP TABLE IF EXISTS `stypes`;
CREATE TABLE IF NOT EXISTS `stypes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stypes`
--

INSERT INTO `stypes` (`id`, `service_type`, `created_at`, `updated_at`) VALUES
(1, 'bus', '2019-07-03 13:43:59', '2019-07-03 13:43:59'),
(2, 'hiace', '2019-07-03 13:44:27', '2019-07-03 13:44:27'),
(3, 'hiace', '2019-07-03 22:35:28', '2019-07-03 22:35:28'),
(4, 'cargo', '2019-07-03 23:06:20', '2019-07-03 23:06:20'),
(5, 'hiace', '2019-07-03 23:12:04', '2019-07-03 23:12:04'),
(6, 'hiace', '2019-07-03 23:13:11', '2019-07-03 23:13:11'),
(7, 'bus', '2019-07-03 23:54:48', '2019-07-03 23:54:48'),
(8, 'hiace', '2020-08-13 10:58:00', '2020-08-13 10:58:00'),
(9, 'bus', '2020-08-13 13:02:10', '2020-08-13 13:02:10');

-- --------------------------------------------------------

--
-- Table structure for table `travel`
--

DROP TABLE IF EXISTS `travel`;
CREATE TABLE IF NOT EXISTS `travel` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) UNSIGNED DEFAULT NULL,
  `types_id` bigint(20) UNSIGNED DEFAULT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `where` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `travels_member_id_foreign` (`member_id`),
  KEY `travels_types_id_foreign` (`types_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel`
--

INSERT INTO `travel` (`id`, `member_id`, `types_id`, `from`, `where`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'abbottabad', 'peshawar', '2019-07-10', '2019-07-03 13:45:24', '2019-07-03 13:46:15'),
(2, 2, 6, 'abbottabad', 'peshawar', '2019-07-16', '2019-07-03 23:38:44', '2019-07-03 23:41:43'),
(3, 3, 7, 'abbottabad', 'peshawar', '2019-07-17', '2019-07-06 05:10:01', '2019-07-06 05:10:30'),
(4, NULL, NULL, 'abbottabad', 'peshawar', '2020-08-26', '2020-08-13 11:13:54', '2020-08-13 11:13:54'),
(5, 5, 9, 'abbottabad', 'peshawar', '2020-08-21', '2020-08-14 10:23:49', '2020-08-14 10:24:48'),
(6, NULL, NULL, 'abbottabad', 'peshawar', '2020-08-18', '2020-08-15 12:13:05', '2020-08-15 12:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
CREATE TABLE IF NOT EXISTS `types` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `stypes_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `types_stypes_id_foreign` (`stypes_id`),
  KEY `types_project_id_foreign` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `stypes_id`, `project_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-07-03 13:43:59', '2019-07-03 13:43:59'),
(2, 2, 2, '2019-07-03 13:44:27', '2019-07-03 13:44:27'),
(3, 3, 3, '2019-07-03 22:35:29', '2019-07-03 22:35:29'),
(4, 4, 4, '2019-07-03 23:06:20', '2019-07-03 23:06:20'),
(5, 5, 5, '2019-07-03 23:12:04', '2019-07-03 23:12:04'),
(6, 6, 6, '2019-07-03 23:13:11', '2019-07-03 23:13:11'),
(7, 7, 7, '2019-07-03 23:54:48', '2019-07-03 23:54:48'),
(8, 8, 8, '2020-08-13 10:58:00', '2020-08-13 10:58:00'),
(9, 9, 9, '2020-08-13 13:02:11', '2020-08-13 13:02:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'Hamza Zeb', 'admin@hamzazeb.com', NULL, '$2y$10$pJ9EqYghQA7jPVcsN2Zx8OzIlOuMK572S5m1aFRGcHopHME5mjbW6', 'BdN6gCRFJAKyJYwVQtMshHcVvyiABecjTatG1eFbrbyP5E7cNvT4xdvHFbhV', '2019-07-03 23:51:05', '2019-07-03 23:51:05'),
(7, 'Hamza Zeb', 'hamzazeb@gmail.com', NULL, '$2y$10$aV.ZWqpb/55PDqWmrbBpi.iAYNPHXK6aq.3H.vVX6DdhXyyGyN5Aa', 'kHBiShyrcVCSAM54vH9YNDDAiiobxEbJdztm08Cy8WA48iNuQ7NYwZWrOSLX', '2020-08-13 13:19:07', '2020-08-13 13:19:07'),
(8, 'Hamza', 'hamza@gmail.com', NULL, '$2y$10$9iz6J2QEI7pvFT2zYYXH/uduR5XBuvUrPoUWkhqoBHQnZLscRQoQ6', NULL, '2020-08-13 13:33:50', '2020-08-13 13:33:50');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `facilities`
--
ALTER TABLE `facilities`
  ADD CONSTRAINT `facilities_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slips`
--
ALTER TABLE `slips`
  ADD CONSTRAINT `slips_travel_id_foreign` FOREIGN KEY (`travel_id`) REFERENCES `travel` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `travel`
--
ALTER TABLE `travel`
  ADD CONSTRAINT `travels_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `travels_types_id_foreign` FOREIGN KEY (`types_id`) REFERENCES `types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `types`
--
ALTER TABLE `types`
  ADD CONSTRAINT `types_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `types_stypes_id_foreign` FOREIGN KEY (`stypes_id`) REFERENCES `stypes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
