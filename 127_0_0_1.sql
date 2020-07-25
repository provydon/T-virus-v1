-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2018 at 07:05 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_test`
--
CREATE DATABASE IF NOT EXISTS `blog_test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blog_test`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_01_17_203031_create_posts_table', 1),
(2, '2018_01_17_203250_create_categories_table', 1),
(3, '2018_01_17_203418_create_contact_messages_table', 1),
(4, '2018_01_17_203457_create_admins_table', 1),
(5, '2018_01_17_203601_create_post_category_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `cgpa`
--
CREATE DATABASE IF NOT EXISTS `cgpa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cgpa`;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`) VALUES
(1, 'Nigeria'),
(2, 'Ghana'),
(3, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_unit` int(11) NOT NULL,
  `school_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_name`, `credit_unit`, `school_name`, `faculty_name`, `department_name`, `department_id`, `faculty_id`, `school_id`, `level`, `semester`, `status`, `created_at`, `updated_at`) VALUES
(48, 'GES 100', 'Communication Skills in English', 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-03-03 04:12:35', '2018-03-03 04:12:35'),
(49, 'GES 102', 'Introduction to Logic and Philosophy', 2, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-03-03 04:12:35', '2018-03-03 04:12:35'),
(50, 'CHM 130', 'General Chemistry', 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-03-03 04:12:35', '2018-03-03 04:12:35'),
(51, 'PHY 101', 'Mechanics and Properties of Matter', 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-03-03 04:12:35', '2018-03-03 04:12:35'),
(52, 'PHY 102', 'Laboratory practice 1', 1, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-03-03 04:12:35', '2018-03-03 04:12:35'),
(53, 'MTH 110', 'Algebra and Trigonometry', 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-03-03 04:12:35', '2018-03-03 04:12:35'),
(54, 'MTH 120', 'Calculus', 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-03-03 04:12:35', '2018-03-03 04:12:35'),
(55, 'ENG 101', 'Engineering Drawing', 2, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-03-03 04:12:36', '2018-03-03 04:12:36'),
(56, 'GES101', 'compute appreciation & applications', 2, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-03-07 00:58:41', '2018-03-07 00:58:41'),
(57, 'GES 103', 'Nigerian Peoples and culture', 2, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-03-07 00:58:42', '2018-03-07 00:58:42'),
(58, 'CHM 131', 'General Chemistry II', 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-03-07 00:58:42', '2018-03-07 00:58:42'),
(59, 'CHM 132', 'Intro to Properties of Organic Cheistry', 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-03-07 00:58:42', '2018-03-07 00:58:42'),
(60, 'PHY112', 'electricity and magnetis', 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-03-07 00:58:42', '2018-03-07 00:58:42'),
(61, 'PHY 103', 'Laboratory Practice II', 1, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-03-07 00:58:42', '2018-03-07 00:58:42'),
(62, 'MTH 124', 'Coordinate Geometry', 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-03-07 00:58:42', '2018-03-07 00:58:42'),
(63, 'ENG 102', 'engineering drawing II', 2, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-03-07 00:58:42', '2018-03-07 00:58:42'),
(64, 'ENG 103', 'engineering in society', 1, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-03-07 00:58:42', '2018-03-07 00:58:42'),
(65, 'ENG 104', 'manufactuing/workshop', 2, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-03-07 00:58:42', '2018-03-07 00:58:42'),
(66, 'PHY 216', 'vibrations , waves and optics', 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-03-07 08:17:01', '2018-03-07 08:17:01'),
(67, 'CHM 260', 'Organic cheistry', 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-03-07 08:17:01', '2018-03-07 08:17:01'),
(68, 'ENG 201', 'engineering mathemtics I', 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-03-07 08:17:01', '2018-03-07 08:17:01'),
(69, 'ENG 202', 'engineering mathematics II', 2, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-03-07 08:17:01', '2018-03-07 08:17:01'),
(70, 'ENG 203', 'engineering mechanics', 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-03-07 08:17:01', '2018-03-07 08:17:01'),
(71, 'ENG 204', 'engineering materials', 2, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-03-07 08:17:01', '2018-03-07 08:17:01'),
(72, 'ENG 210', 'basic electrical engineering', 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-03-07 08:17:02', '2018-03-07 08:17:02'),
(73, 'ENG 213', 'computer programming for engineers', 2, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-03-07 08:17:02', '2018-03-07 08:17:02'),
(75, 'GES 100', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-03-17 12:14:56', '2018-03-17 12:14:56'),
(76, 'GES 102', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-03-17 12:14:56', '2018-03-17 12:14:56'),
(77, 'CHM 130', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-03-17 12:14:57', '2018-03-17 12:14:57'),
(78, 'PHY 101', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-03-17 12:14:57', '2018-03-17 12:14:57'),
(79, 'PHY 102', NULL, 1, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-03-17 12:14:57', '2018-03-17 12:14:57'),
(80, 'MTH 120', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-03-17 12:14:57', '2018-03-17 12:14:57'),
(81, 'MTH 110', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-03-17 12:14:57', '2018-03-17 12:14:57'),
(82, 'ENG 101', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-03-17 12:14:57', '2018-03-17 12:14:57'),
(83, 'GES 101', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-03-17 12:25:28', '2018-03-17 12:25:28'),
(84, 'GES 103', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-03-17 12:25:28', '2018-03-17 12:25:28'),
(85, 'CHM 131', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-03-17 12:25:28', '2018-03-17 12:25:28'),
(86, 'PHY 112', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-03-17 12:25:28', '2018-03-17 12:25:28'),
(87, 'PHY 103', NULL, 1, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-03-17 12:25:29', '2018-03-17 12:25:29'),
(88, 'MTH 124', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-03-17 12:25:29', '2018-03-17 12:25:29'),
(89, 'ENG 102', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-03-17 12:25:29', '2018-03-17 12:25:29'),
(90, 'ENG 103', NULL, 1, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-03-17 12:25:29', '2018-03-17 12:25:29'),
(91, 'ENG 104', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-03-17 12:25:29', '2018-03-17 12:25:29'),
(92, 'PHY 216', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-03-17 12:28:13', '2018-03-17 12:28:13'),
(93, 'ENG 201', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-03-17 12:28:13', '2018-03-17 12:28:13'),
(94, 'ENG 202', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-03-17 12:28:13', '2018-03-17 12:28:13'),
(95, 'ENG 203', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-03-17 12:28:13', '2018-03-17 12:28:13'),
(96, 'ENG 204', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-03-17 12:28:13', '2018-03-17 12:28:13'),
(97, 'ENG 210', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-03-17 12:28:13', '2018-03-17 12:28:13'),
(98, 'ENG 213', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-03-17 12:28:13', '2018-03-17 12:28:13'),
(99, 'CHM 240', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-03-17 12:30:43', '2018-03-17 12:30:43'),
(100, 'ENG 206', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-03-17 12:30:43', '2018-03-17 12:30:43'),
(101, 'ENG 207', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-03-17 12:30:43', '2018-03-17 12:30:43'),
(102, 'ENG 208', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-03-17 12:30:44', '2018-03-17 12:30:44'),
(103, 'ENG 209', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-03-17 12:30:44', '2018-03-17 12:30:44'),
(104, 'ENG 205', NULL, 1, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-03-17 12:30:44', '2018-03-17 12:30:44'),
(105, 'ENG 211', NULL, 1, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-03-17 12:30:44', '2018-03-17 12:30:44'),
(106, 'ENG 212', NULL, 1, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-03-17 12:30:44', '2018-03-17 12:30:44'),
(107, 'CEG 231', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-03-17 12:30:44', '2018-03-17 12:30:44'),
(108, 'ENG 301', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-03-17 12:35:07', '2018-03-17 12:35:07'),
(109, 'ENG 302', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-03-17 12:35:07', '2018-03-17 12:35:07'),
(110, 'CEG 311', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-03-17 12:35:07', '2018-03-17 12:35:07'),
(111, 'CEG 321', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-03-17 12:35:07', '2018-03-17 12:35:07'),
(112, 'CEG 323', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-03-17 12:35:07', '2018-03-17 12:35:07'),
(113, 'CEG 332', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-03-17 12:35:08', '2018-03-17 12:35:08'),
(114, 'CEG 351', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-03-17 12:35:08', '2018-03-17 12:35:08'),
(115, 'CEG 352', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-03-17 12:35:08', '2018-03-17 12:35:08'),
(116, 'CEG 381', NULL, 1, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-03-17 12:35:08', '2018-03-17 12:35:08'),
(117, 'GES 300', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-03-17 12:37:47', '2018-03-17 12:37:47'),
(118, 'ENG 303', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-03-17 12:37:47', '2018-03-17 12:37:47'),
(119, 'CEG 312', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-03-17 12:37:47', '2018-03-17 12:37:47'),
(120, 'CEG 333', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-03-17 12:37:47', '2018-03-17 12:37:47'),
(121, 'CEG 341', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-03-17 12:37:47', '2018-03-17 12:37:47'),
(122, 'CEG 342', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-03-17 12:37:47', '2018-03-17 12:37:47'),
(123, 'CEG 353', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-03-17 12:37:47', '2018-03-17 12:37:47'),
(124, 'CEG 382', NULL, 1, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-03-17 12:37:47', '2018-03-17 12:37:47'),
(125, 'CEG 361', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-03-17 12:37:47', '2018-03-17 12:37:47'),
(126, 'ENG 401', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-03-17 12:41:16', '2018-03-17 12:41:16'),
(127, 'ENG 402', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-03-17 12:41:16', '2018-03-17 12:41:16'),
(128, 'CEG 413', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-03-17 12:41:17', '2018-03-17 12:41:17'),
(129, 'CEG 443', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-03-17 12:41:17', '2018-03-17 12:41:17'),
(130, 'CEG 444', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-03-17 12:41:17', '2018-03-17 12:41:17'),
(131, 'CEG 445', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-03-17 12:41:17', '2018-03-17 12:41:17'),
(132, 'CEG 446', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-03-17 12:41:17', '2018-03-17 12:41:17'),
(133, 'CEG 461', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-03-17 12:41:17', '2018-03-17 12:41:17'),
(134, 'CEG 483', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-03-17 12:41:17', '2018-03-17 12:41:17'),
(135, 'ENG 400', NULL, 9, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 4, '2', 'created', '2018-03-17 12:42:14', '2018-03-17 12:42:14'),
(136, 'GES 400', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 4, '2', 'created', '2018-03-17 12:42:14', '2018-03-17 12:42:14'),
(137, 'ENG 501', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-03-17 12:46:08', '2018-03-17 12:46:08'),
(138, 'ENG 502', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-03-17 12:46:08', '2018-03-17 12:46:08'),
(139, 'XXX XXX', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-03-17 12:46:08', '2018-03-17 12:46:08'),
(140, 'CEG 514', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-03-17 12:46:08', '2018-03-17 12:46:08'),
(141, 'CEG 534', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-03-17 12:46:08', '2018-03-17 12:46:08'),
(142, 'CEG 547', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-03-17 12:46:08', '2018-03-17 12:46:08'),
(143, 'CEG 548', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-03-17 12:46:08', '2018-03-17 12:46:08'),
(144, 'CEG 562', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-03-17 12:46:08', '2018-03-17 12:46:08'),
(145, 'CEG 591', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-03-17 12:46:08', '2018-03-17 12:46:08'),
(146, 'XXX XXX', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-03-17 12:48:18', '2018-03-17 12:48:18'),
(147, 'CEG 515', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-03-17 12:48:18', '2018-03-17 12:48:18'),
(148, 'CEG 516', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-03-17 12:48:18', '2018-03-17 12:48:18'),
(149, 'CEG 535', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-03-17 12:48:18', '2018-03-17 12:48:18'),
(150, 'CEG 549', NULL, 2, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-03-17 12:48:18', '2018-03-17 12:48:18'),
(151, 'CEG 571', NULL, 3, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-03-17 12:48:18', '2018-03-17 12:48:18'),
(152, 'CEG 592', NULL, 6, 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-03-17 12:48:18', '2018-03-17 12:48:18'),
(153, 'GES 100', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-04-04 13:13:45', '2018-04-04 13:13:45'),
(154, 'GES 102', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-04-04 13:13:45', '2018-04-04 13:13:45'),
(155, 'CHM 130', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-04-04 13:13:45', '2018-04-04 13:13:45'),
(156, 'PHY 101', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-04-04 13:13:45', '2018-04-04 13:13:45'),
(157, 'PHY 102', NULL, 1, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-04-04 13:13:45', '2018-04-04 13:13:45'),
(158, 'MTH 110', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-04-04 13:13:45', '2018-04-04 13:13:45'),
(159, 'MTH 120', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-04-04 13:13:45', '2018-04-04 13:13:45'),
(160, 'ENG 101', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-04-04 13:13:45', '2018-04-04 13:13:45'),
(161, 'GES 102', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-04-04 13:21:07', '2018-04-04 13:21:07'),
(162, 'GES 103', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-04-04 13:21:07', '2018-04-04 13:21:07'),
(163, 'CHM 131', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-04-04 13:21:07', '2018-04-04 13:21:07'),
(164, 'PHY 112', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-04-04 13:21:07', '2018-04-04 13:21:07'),
(165, 'PHY 103', NULL, 1, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-04-04 13:21:07', '2018-04-04 13:21:07'),
(166, 'MTH 124', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-04-04 13:21:07', '2018-04-04 13:21:07'),
(167, 'ENG 102', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-04-04 13:21:07', '2018-04-04 13:21:07'),
(168, 'ENG 103', NULL, 1, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-04-04 13:21:08', '2018-04-04 13:21:08'),
(169, 'ENG 104', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-04-04 13:21:08', '2018-04-04 13:21:08'),
(170, 'GLY 201', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-04-04 13:32:06', '2018-04-04 13:32:06'),
(171, 'PHY 216', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-04-04 13:32:06', '2018-04-04 13:32:06'),
(172, 'ENG 201', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-04-04 13:32:06', '2018-04-04 13:32:06'),
(173, 'ENG 202', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-04-04 13:32:06', '2018-04-04 13:32:06'),
(174, 'ENG 203', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-04-04 13:32:06', '2018-04-04 13:32:06'),
(175, 'ENG 204', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-04-04 13:32:06', '2018-04-04 13:32:06'),
(176, 'ENG 210', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-04-04 13:32:07', '2018-04-04 13:32:07'),
(177, 'ENG 213', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-04-04 13:32:07', '2018-04-04 13:32:07'),
(178, 'CHM 240', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-04-04 13:34:24', '2018-04-04 13:34:24'),
(179, 'ENG 206', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-04-04 13:34:24', '2018-04-04 13:34:24'),
(180, 'ENG 207', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-04-04 13:34:24', '2018-04-04 13:34:24'),
(181, 'ENG 208', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-04-04 13:34:24', '2018-04-04 13:34:24'),
(182, 'ENG 209', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-04-04 13:34:24', '2018-04-04 13:34:24'),
(183, 'ENG 205', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-04-04 13:34:24', '2018-04-04 13:34:24'),
(184, 'ENG 211', NULL, 1, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-04-04 13:34:24', '2018-04-04 13:34:24'),
(185, 'ENG 212', NULL, 1, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-04-04 13:34:24', '2018-04-04 13:34:24'),
(186, 'CEG 231', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-04-04 13:34:24', '2018-04-04 13:34:24'),
(187, 'ENG 301', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-04-04 13:40:10', '2018-04-04 13:40:10'),
(188, 'ENG 302', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-04-04 13:40:10', '2018-04-04 13:40:10'),
(189, 'CHE 315', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-04-04 13:40:10', '2018-04-04 13:40:10'),
(190, 'CHE 317', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-04-04 13:40:10', '2018-04-04 13:40:10'),
(191, 'MEG 303', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-04-04 13:40:10', '2018-04-04 13:40:10'),
(192, 'PNG 301', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-04-04 13:40:10', '2018-04-04 13:40:10'),
(193, 'PNG 302', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-04-04 13:40:10', '2018-04-04 13:40:10'),
(194, 'PNG 303', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-04-04 13:40:10', '2018-04-04 13:40:10'),
(195, 'GES 300', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-04-04 13:44:41', '2018-04-04 13:44:41'),
(196, 'GLY 313', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-04-04 13:44:41', '2018-04-04 13:44:41'),
(197, 'ENG 303', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-04-04 13:44:41', '2018-04-04 13:44:41'),
(198, 'CHE 314', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-04-04 13:44:42', '2018-04-04 13:44:42'),
(199, 'PNG 304', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-04-04 13:44:42', '2018-04-04 13:44:42'),
(200, 'PNG 305', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-04-04 13:44:42', '2018-04-04 13:44:42'),
(201, 'PNG 306', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-04-04 13:44:42', '2018-04-04 13:44:42'),
(202, 'PNG 307', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-04-04 13:44:42', '2018-04-04 13:44:42'),
(203, 'PNG 308', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-04-04 13:44:42', '2018-04-04 13:44:42'),
(204, 'ENG 401', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-04-04 13:52:57', '2018-04-04 13:52:57'),
(205, 'ENG 402', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-04-04 13:52:57', '2018-04-04 13:52:57'),
(206, 'PNG 401', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-04-04 13:52:57', '2018-04-04 13:52:57'),
(207, 'PNG 402', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-04-04 13:52:57', '2018-04-04 13:52:57'),
(208, 'PNG 403', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-04-04 13:52:57', '2018-04-04 13:52:57'),
(209, 'PNG 404', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-04-04 13:52:57', '2018-04-04 13:52:57'),
(210, 'PNG 405', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-04-04 13:52:57', '2018-04-04 13:52:57'),
(211, 'GLY 401', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-04-04 13:52:57', '2018-04-04 13:52:57'),
(212, 'ENG 400', NULL, 9, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 4, '2', 'created', '2018-04-04 13:53:40', '2018-04-04 13:53:40'),
(213, 'GES 400', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 4, '2', 'created', '2018-04-04 13:53:40', '2018-04-04 13:53:40'),
(214, 'ENG 501', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-04-04 13:57:12', '2018-04-04 13:57:12'),
(215, 'ENG 502', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-04-04 13:57:12', '2018-04-04 13:57:12'),
(216, 'PNG 501', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-04-04 13:57:12', '2018-04-04 13:57:12'),
(217, 'PNG 502', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-04-04 13:57:12', '2018-04-04 13:57:12'),
(218, 'PNG 503', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-04-04 13:57:12', '2018-04-04 13:57:12'),
(219, 'PNG 504', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-04-04 13:57:12', '2018-04-04 13:57:12'),
(220, 'PNG 505', NULL, 1, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-04-04 13:57:12', '2018-04-04 13:57:12'),
(221, 'PNG 510', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-04-04 13:57:12', '2018-04-04 13:57:12'),
(222, 'PNG 515', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-04-04 13:57:12', '2018-04-04 13:57:12'),
(223, 'PNG 506', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-04-04 13:59:24', '2018-04-04 13:59:24'),
(224, 'PNG 507', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-04-04 13:59:24', '2018-04-04 13:59:24'),
(225, 'PNG 508', NULL, 2, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-04-04 13:59:24', '2018-04-04 13:59:24'),
(226, 'PNG 509', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-04-04 13:59:24', '2018-04-04 13:59:24'),
(227, 'XXX XXX', NULL, 3, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-04-04 13:59:24', '2018-04-04 13:59:24'),
(228, 'PNG 520', NULL, 6, 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-04-04 13:59:24', '2018-04-04 13:59:24'),
(229, 'CHM 240', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-04-09 03:21:26', '2018-04-09 03:21:26'),
(230, 'ENG 206', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-04-09 03:21:26', '2018-04-09 03:21:26'),
(231, 'ENG 207', NULL, 2, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-04-09 03:21:26', '2018-04-09 03:21:26'),
(232, 'ENG 208', NULL, 2, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-04-09 03:21:26', '2018-04-09 03:21:26'),
(233, 'ENG 209', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-04-09 03:21:26', '2018-04-09 03:21:26'),
(234, 'ENG 205', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-04-09 03:21:26', '2018-04-09 03:21:26'),
(235, 'ENG 211', NULL, 1, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-04-09 03:21:26', '2018-04-09 03:21:26'),
(236, 'ENG 212', NULL, 1, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-04-09 03:21:26', '2018-04-09 03:21:26'),
(237, 'ENG 301', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-04-09 03:23:47', '2018-04-09 03:23:47'),
(238, 'ENG 302', NULL, 2, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-04-09 03:23:48', '2018-04-09 03:23:48'),
(239, 'CHE 315', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-04-09 03:23:48', '2018-04-09 03:23:48'),
(240, 'CHE 317', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-04-09 03:23:48', '2018-04-09 03:23:48'),
(241, 'MEG 303', NULL, 2, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-04-09 03:23:48', '2018-04-09 03:23:48'),
(242, 'MEG 307', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-04-09 03:23:48', '2018-04-09 03:23:48'),
(243, 'PNG 301', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-04-09 03:23:48', '2018-04-09 03:23:48'),
(244, 'PNG 302', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-04-09 03:23:48', '2018-04-09 03:23:48'),
(245, 'GES 300', NULL, 2, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-04-09 03:37:34', '2018-04-09 03:37:34'),
(246, 'ENG 303', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-04-09 03:37:34', '2018-04-09 03:37:34'),
(247, 'CHE 312', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-04-09 03:37:35', '2018-04-09 03:37:35'),
(248, 'CHE 314', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-04-09 03:37:35', '2018-04-09 03:37:35'),
(249, 'CHE 316', NULL, 2, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-04-09 03:37:35', '2018-04-09 03:37:35'),
(250, 'PNG 306', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-04-09 03:37:35', '2018-04-09 03:37:35'),
(251, 'PNG 307', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-04-09 03:37:35', '2018-04-09 03:37:35'),
(252, 'PNG 308', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-04-09 03:37:35', '2018-04-09 03:37:35'),
(253, 'GNG 301', NULL, 2, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-04-09 03:37:35', '2018-04-09 03:37:35'),
(254, 'ENG 401', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-04-09 03:42:04', '2018-04-09 03:42:04'),
(255, 'ENG 402', NULL, 2, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-04-09 03:42:04', '2018-04-09 03:42:04'),
(256, 'CHE 417', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-04-09 03:42:04', '2018-04-09 03:42:04'),
(257, 'PNG 403', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-04-09 03:42:04', '2018-04-09 03:42:04'),
(258, 'GNG 401', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-04-09 03:42:04', '2018-04-09 03:42:04'),
(259, 'GNG 402', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-04-09 03:42:04', '2018-04-09 03:42:04'),
(260, 'GNG 403', NULL, 2, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-04-09 03:42:04', '2018-04-09 03:42:04'),
(261, 'ENG 400', NULL, 9, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 4, '2', 'created', '2018-04-09 03:42:40', '2018-04-09 03:42:40'),
(262, 'GES 400', NULL, 2, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 4, '2', 'created', '2018-04-09 03:42:40', '2018-04-09 03:42:40'),
(263, 'ENG 501', NULL, 2, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-04-09 03:44:20', '2018-04-09 03:44:20'),
(264, 'ENG 502', NULL, 2, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-04-09 03:44:20', '2018-04-09 03:44:20'),
(265, 'PNG 502', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-04-09 03:44:20', '2018-04-09 03:44:20'),
(266, 'GNG 501', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-04-09 03:44:20', '2018-04-09 03:44:20'),
(267, 'GNG 502', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-04-09 03:44:20', '2018-04-09 03:44:20'),
(268, 'GNG 503', NULL, 1, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-04-09 03:44:20', '2018-04-09 03:44:20'),
(269, 'PNG 307', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-04-09 03:46:04', '2018-04-09 03:46:04'),
(270, 'PNG 508', NULL, 2, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-04-09 03:46:04', '2018-04-09 03:46:04'),
(271, 'PNG 509', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-04-09 03:46:04', '2018-04-09 03:46:04'),
(272, 'GNG 504', NULL, 3, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-04-09 03:46:04', '2018-04-09 03:46:04'),
(273, 'GNG 520', NULL, 6, 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-04-09 03:46:04', '2018-04-09 03:46:04'),
(276, 'PUH 200', NULL, 1, 'Delta State University, Abraka', 'Engineering', 'Electrical engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-04-21 15:57:37', '2018-04-21 15:57:37'),
(277, 'LAW 101', NULL, 1, 'Afe BaBalola University', 'Law', 'Commercial Law', NULL, NULL, NULL, 3, '2', 'created', '2018-04-22 15:00:48', '2018-04-22 15:00:48'),
(279, 'PHY 101', NULL, 3, 'Abia state University, Uturu', 'Biological and physical sciences', 'Microbiology', NULL, NULL, NULL, 1, '1', 'created', '2018-04-23 19:17:50', '2018-04-23 19:17:50'),
(280, 'PHY 216.1', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electronics and Computer Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-04-25 13:48:31', '2018-04-25 13:48:31'),
(281, 'ENG 201.1', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electronics and Computer Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-04-25 13:48:31', '2018-04-25 13:48:31'),
(282, 'ENG 202.1', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electronics and Computer Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-04-25 13:48:31', '2018-04-25 13:48:31'),
(283, 'ENG 203.1', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electronics and Computer Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-04-25 13:48:31', '2018-04-25 13:48:31'),
(284, 'ENG 204.1', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electronics and Computer Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-04-25 13:48:31', '2018-04-25 13:48:31'),
(285, 'ENG 210.1', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electronics and Computer Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-04-25 13:48:31', '2018-04-25 13:48:31'),
(286, 'ENG 213.1', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electronics and Computer Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-04-25 13:48:31', '2018-04-25 13:48:31'),
(287, 'ENG 212.1', NULL, 1, 'University of port-harcourt', 'Engineering', 'Electronics and Computer Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-04-25 13:48:31', '2018-04-25 13:48:31'),
(288, 'CHM 240.2', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electronics and Computer Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-04-25 13:52:25', '2018-04-25 13:52:25'),
(289, 'ENG 206.2', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electronics and Computer Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-04-25 13:52:25', '2018-04-25 13:52:25'),
(290, 'ENG 207.2', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electronics and Computer Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-04-25 13:52:25', '2018-04-25 13:52:25'),
(291, 'ENG 209.2', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electronics and Computer Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-04-25 13:52:25', '2018-04-25 13:52:25'),
(292, 'ENG 208.2', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electronics and Computer Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-04-25 13:52:25', '2018-04-25 13:52:25'),
(293, 'ENG 205.2', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electronics and Computer Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-04-25 13:52:25', '2018-04-25 13:52:25'),
(294, 'ENG 211.2', NULL, 1, 'University of port-harcourt', 'Engineering', 'Electronics and Computer Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-04-25 13:52:25', '2018-04-25 13:52:25'),
(295, 'GES 100', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-02 02:23:18', '2018-05-02 02:23:18'),
(296, 'GES 102', NULL, 2, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-02 02:23:18', '2018-05-02 02:23:18'),
(297, 'CHM 130', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-04 14:14:28', '2018-05-04 14:14:28'),
(298, 'PHY 101', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-04 14:14:28', '2018-05-04 14:14:28'),
(299, 'PHY 102', NULL, 1, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-04 14:14:28', '2018-05-04 14:14:28'),
(300, 'MTH 110', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-04 15:37:32', '2018-05-04 15:37:32'),
(301, 'MTH 120', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-04 15:37:32', '2018-05-04 15:37:32'),
(302, 'ENG 101', NULL, 2, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-04 15:37:32', '2018-05-04 15:37:32'),
(303, 'GES 101', NULL, 2, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-04 15:43:42', '2018-05-04 15:43:42'),
(304, 'GES 103', NULL, 2, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-04 15:43:42', '2018-05-04 15:43:42'),
(305, 'CHM 131', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-04 15:43:42', '2018-05-04 15:43:42'),
(306, 'CHM 132', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-04 15:43:42', '2018-05-04 15:43:42'),
(307, 'PHY 112', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-04 15:43:42', '2018-05-04 15:43:42'),
(308, 'PHY 103', NULL, 1, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-04 15:43:42', '2018-05-04 15:43:42'),
(309, 'MTH 124', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-04 15:43:42', '2018-05-04 15:43:42'),
(310, 'ENG 102', NULL, 2, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-04 15:43:42', '2018-05-04 15:43:42'),
(311, 'ENG 103', NULL, 1, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-04 15:43:42', '2018-05-04 15:43:42'),
(312, 'ENG 104', NULL, 2, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-04 15:43:42', '2018-05-04 15:43:42'),
(313, 'PHY 216', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-04 15:47:40', '2018-05-04 15:47:40'),
(314, 'CHM 250', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-04 15:47:40', '2018-05-04 15:47:40'),
(315, 'CHM 260', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-04 15:47:40', '2018-05-04 15:47:40'),
(316, 'ENG 201', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-04 15:47:40', '2018-05-04 15:47:40'),
(317, 'ENG 202', NULL, 2, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-04 15:47:40', '2018-05-04 15:47:40'),
(318, 'ENG 203', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-04 15:47:40', '2018-05-04 15:47:40'),
(319, 'ENG 210', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-04 15:47:40', '2018-05-04 15:47:40'),
(320, 'CHE 211', NULL, 1, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-04 15:47:40', '2018-05-04 15:47:40'),
(321, 'CHM 240', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-04 17:57:31', '2018-05-04 17:57:31'),
(322, 'ENG 206', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-04 17:57:31', '2018-05-04 17:57:31'),
(323, 'ENG 2O7', NULL, 2, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-04 17:57:31', '2018-05-04 17:57:31'),
(324, 'ENG 208', NULL, 2, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-04 17:57:31', '2018-05-04 17:57:31'),
(325, 'ENG 209', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-04 17:57:31', '2018-05-04 17:57:31'),
(326, 'ENG 211', NULL, 1, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-04 17:57:31', '2018-05-04 17:57:31'),
(327, 'ENG 212', NULL, 1, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-04 17:57:31', '2018-05-04 17:57:31'),
(328, 'CHE 212', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-04 17:57:31', '2018-05-04 17:57:31');
INSERT INTO `courses` (`id`, `course_code`, `course_name`, `credit_unit`, `school_name`, `faculty_name`, `department_name`, `department_id`, `faculty_id`, `school_id`, `level`, `semester`, `status`, `created_at`, `updated_at`) VALUES
(329, 'ENG 204', NULL, 2, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-04 18:01:11', '2018-05-04 18:01:11'),
(330, 'ENG 213', NULL, 2, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-04 18:01:11', '2018-05-04 18:01:11'),
(331, 'ENG 301', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-04 18:01:11', '2018-05-04 18:01:11'),
(332, 'ENG 302', NULL, 2, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-04 18:01:11', '2018-05-04 18:01:11'),
(333, 'CHE 311', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-04 18:01:11', '2018-05-04 18:01:11'),
(334, 'CHE 313', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-04 18:01:11', '2018-05-04 18:01:11'),
(335, 'CHE 315', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-04 18:01:11', '2018-05-04 18:01:11'),
(336, 'CHE 317', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-04 18:01:11', '2018-05-04 18:01:11'),
(337, 'GES 300', NULL, 2, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-04 18:03:14', '2018-05-04 18:03:14'),
(338, 'ENG 303', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-04 18:03:14', '2018-05-04 18:03:14'),
(339, 'CHE 312', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-04 18:03:14', '2018-05-04 18:03:14'),
(340, 'CHE 314', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-04 18:03:14', '2018-05-04 18:03:14'),
(341, 'CHE 316', NULL, 2, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-04 18:03:14', '2018-05-04 18:03:14'),
(342, 'CHE 318', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-04 18:03:14', '2018-05-04 18:03:14'),
(343, 'CHE 320', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-04 18:03:14', '2018-05-04 18:03:14'),
(344, 'ENG 401', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-04 18:06:38', '2018-05-04 18:06:38'),
(345, 'ENG 402', NULL, 2, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-04 18:06:38', '2018-05-04 18:06:38'),
(346, 'PNG 403', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-04 18:06:38', '2018-05-04 18:06:38'),
(347, 'CHE 411', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-04 18:06:38', '2018-05-04 18:06:38'),
(348, 'CHE 413', NULL, 2, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-04 18:06:38', '2018-05-04 18:06:38'),
(349, 'CHE 415', NULL, 2, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-04 18:06:38', '2018-05-04 18:06:38'),
(350, 'CHE 417', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-04 18:06:38', '2018-05-04 18:06:38'),
(351, 'CHE 421', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-04 18:06:38', '2018-05-04 18:06:38'),
(352, 'ENG 400', NULL, 9, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 4, '2', 'created', '2018-05-04 18:08:04', '2018-05-04 18:08:04'),
(353, 'GES 400', NULL, 2, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 4, '2', 'created', '2018-05-04 18:08:04', '2018-05-04 18:08:04'),
(354, 'ENG 501', NULL, 2, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-04 18:10:57', '2018-05-04 18:10:57'),
(355, 'ENG 502', NULL, 2, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-04 18:10:57', '2018-05-04 18:10:57'),
(356, 'CHE 511', NULL, 2, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-04 18:10:57', '2018-05-04 18:10:57'),
(357, 'CHE 513', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-04 18:10:57', '2018-05-04 18:10:57'),
(358, 'CHE 515', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-04 18:10:57', '2018-05-04 18:10:57'),
(359, 'CHE 517', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-04 18:10:57', '2018-05-04 18:10:57'),
(360, 'CHE 55X', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-04 18:10:57', '2018-05-04 18:10:57'),
(361, 'CHE 512', NULL, 1, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-05-04 18:13:09', '2018-05-04 18:13:09'),
(362, 'CHE 514', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-05-04 18:13:09', '2018-05-04 18:13:09'),
(363, 'CHE 516', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-05-04 18:13:09', '2018-05-04 18:13:09'),
(364, 'CHE 518', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-05-04 18:13:09', '2018-05-04 18:13:09'),
(365, 'CHE 520', NULL, 6, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-05-04 18:13:09', '2018-05-04 18:13:09'),
(366, '55X', NULL, 3, 'University of port-harcourt', 'Engineering', 'Chemical Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-05-04 18:15:07', '2018-05-04 18:15:07'),
(367, 'CHM 130.1', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:45:29', '2018-05-05 09:45:29'),
(368, 'ENG 101.1', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:45:29', '2018-05-05 09:45:29'),
(369, 'FSB 101.1', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:45:29', '2018-05-05 09:45:29'),
(370, 'GES 100.1', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:45:29', '2018-05-05 09:45:29'),
(371, 'GES 102.1', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:45:29', '2018-05-05 09:45:29'),
(372, 'MTH 110.1', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:45:29', '2018-05-05 09:45:29'),
(373, 'MTH 120.1', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:45:29', '2018-05-05 09:45:29'),
(374, 'PHY 101.1', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:45:29', '2018-05-05 09:45:29'),
(375, 'PHY 102.1', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:45:29', '2018-05-05 09:45:29'),
(376, 'GES 100', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:47:39', '2018-05-05 09:47:39'),
(377, 'GES 102', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:47:39', '2018-05-05 09:47:39'),
(378, 'CHM 130', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:47:39', '2018-05-05 09:47:39'),
(379, 'PHY 101', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:47:39', '2018-05-05 09:47:39'),
(380, 'PHY 102', NULL, 1, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:47:39', '2018-05-05 09:47:39'),
(381, 'MTH 110', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:47:39', '2018-05-05 09:47:39'),
(382, 'MTH 120', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:47:39', '2018-05-05 09:47:39'),
(383, 'ENG 101', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:47:39', '2018-05-05 09:47:39'),
(384, 'GES 101', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 09:49:48', '2018-05-05 09:49:48'),
(385, 'GES 103', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 09:49:48', '2018-05-05 09:49:48'),
(386, 'CHM 131', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 09:49:48', '2018-05-05 09:49:48'),
(387, 'PHY 112', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 09:49:48', '2018-05-05 09:49:48'),
(388, 'PHY 103', NULL, 1, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 09:49:48', '2018-05-05 09:49:48'),
(389, 'MTH 124', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 09:49:48', '2018-05-05 09:49:48'),
(390, 'ENG 102', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 09:49:48', '2018-05-05 09:49:48'),
(391, 'ENG 103', NULL, 1, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 09:49:48', '2018-05-05 09:49:48'),
(392, 'ENG104', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 09:49:48', '2018-05-05 09:49:48'),
(393, 'CHM 131.2', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 09:50:55', '2018-05-05 09:50:55'),
(394, 'CHM 132.2', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 09:50:55', '2018-05-05 09:50:55'),
(395, 'ECO 102.2', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 09:50:55', '2018-05-05 09:50:55'),
(396, 'FSB 102.2', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 09:50:55', '2018-05-05 09:50:55'),
(397, 'GES 101.2', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 09:50:55', '2018-05-05 09:50:55'),
(398, 'GES 103.2', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 09:50:55', '2018-05-05 09:50:55'),
(399, 'PHY 103.2', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 09:50:55', '2018-05-05 09:50:55'),
(400, 'PHY 112.2', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 09:50:55', '2018-05-05 09:50:55'),
(401, 'SLT 102.2', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 09:50:55', '2018-05-05 09:50:55'),
(402, 'SLT 103.2', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 09:50:55', '2018-05-05 09:50:55'),
(403, 'ENG 213', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-05 09:53:02', '2018-05-05 09:53:02'),
(404, 'PHY 216', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-05 09:53:02', '2018-05-05 09:53:02'),
(405, 'ENG 201', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-05 09:53:02', '2018-05-05 09:53:02'),
(406, 'ENG 202', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-05 09:53:02', '2018-05-05 09:53:02'),
(407, 'ENG 203', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-05 09:53:02', '2018-05-05 09:53:02'),
(408, 'ENG 204', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-05 09:53:02', '2018-05-05 09:53:02'),
(409, 'ENG 210', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-05 09:53:02', '2018-05-05 09:53:02'),
(410, 'CHM 240', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-05 09:55:44', '2018-05-05 09:55:44'),
(411, 'ENG 206', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-05 09:55:44', '2018-05-05 09:55:44'),
(412, 'ENG 207', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-05 09:55:44', '2018-05-05 09:55:44'),
(413, 'ENG 208', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-05 09:55:44', '2018-05-05 09:55:44'),
(414, 'ENG 209', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-05 09:55:44', '2018-05-05 09:55:44'),
(415, 'ENG 205', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-05 09:55:44', '2018-05-05 09:55:44'),
(416, 'ENG 211', NULL, 1, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-05 09:55:44', '2018-05-05 09:55:44'),
(417, 'ENG 212', NULL, 1, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-05 09:55:44', '2018-05-05 09:55:44'),
(418, 'EEE 222', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-05 09:55:44', '2018-05-05 09:55:44'),
(419, 'ENG 301', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-05 09:57:49', '2018-05-05 09:57:49'),
(420, 'ENG 302', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-05 09:57:49', '2018-05-05 09:57:49'),
(421, 'EEE 301', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-05 09:57:49', '2018-05-05 09:57:49'),
(422, 'EEE 302', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-05 09:57:49', '2018-05-05 09:57:49'),
(423, 'EEE 303', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-05 09:57:49', '2018-05-05 09:57:49'),
(424, 'EEE 304', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-05 09:57:49', '2018-05-05 09:57:49'),
(425, 'EEE 305', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-05 09:57:49', '2018-05-05 09:57:49'),
(426, 'GES 300', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-05 09:59:45', '2018-05-05 09:59:45'),
(427, 'ENG 303', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-05 09:59:45', '2018-05-05 09:59:45'),
(428, 'EEE 306', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-05 09:59:45', '2018-05-05 09:59:45'),
(429, 'EEE 307', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-05 09:59:45', '2018-05-05 09:59:45'),
(430, 'EEE 308', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-05 09:59:45', '2018-05-05 09:59:45'),
(431, 'EEE 309', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-05 09:59:45', '2018-05-05 09:59:45'),
(432, 'EEE 310', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-05 09:59:45', '2018-05-05 09:59:45'),
(433, 'CHM 130.1', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:59:57', '2018-05-05 09:59:57'),
(434, 'ENG 101.1', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:59:57', '2018-05-05 09:59:57'),
(435, 'FSB 101.1', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:59:57', '2018-05-05 09:59:57'),
(436, 'GES 100.1', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:59:57', '2018-05-05 09:59:57'),
(437, 'GES 102.1', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:59:57', '2018-05-05 09:59:57'),
(438, 'MTH 110.1', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:59:57', '2018-05-05 09:59:57'),
(439, 'MTH 120.1', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:59:57', '2018-05-05 09:59:57'),
(440, 'PHY 101.1', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:59:57', '2018-05-05 09:59:57'),
(441, 'PHY 102.1', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-05 09:59:57', '2018-05-05 09:59:57'),
(442, 'ENG 401', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-05 10:03:31', '2018-05-05 10:03:31'),
(443, 'ENG 402', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-05 10:03:31', '2018-05-05 10:03:31'),
(444, 'EEE 401', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-05 10:03:31', '2018-05-05 10:03:31'),
(445, 'EEE 402', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-05 10:03:31', '2018-05-05 10:03:31'),
(446, 'EEE 403', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-05 10:03:31', '2018-05-05 10:03:31'),
(447, 'EEE 404', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-05 10:03:31', '2018-05-05 10:03:31'),
(448, 'EEE 405', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-05 10:03:31', '2018-05-05 10:03:31'),
(449, 'EEE 406', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-05 10:03:31', '2018-05-05 10:03:31'),
(450, 'ENG 400', NULL, 9, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 4, '2', 'created', '2018-05-05 10:04:37', '2018-05-05 10:04:37'),
(451, 'GES 400', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 4, '2', 'created', '2018-05-05 10:04:37', '2018-05-05 10:04:37'),
(452, 'CHM 131.2', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 10:05:42', '2018-05-05 10:05:42'),
(453, 'CHM 132.2', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 10:05:42', '2018-05-05 10:05:42'),
(454, 'ECO 102.2', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 10:05:42', '2018-05-05 10:05:42'),
(455, 'FSB 102.2', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 10:05:42', '2018-05-05 10:05:42'),
(456, 'GES 101.2', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 10:05:42', '2018-05-05 10:05:42'),
(457, 'GES 103.2', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 10:05:42', '2018-05-05 10:05:42'),
(458, 'PHY 103.2', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 10:05:42', '2018-05-05 10:05:42'),
(459, 'PHY 112.2', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 10:05:42', '2018-05-05 10:05:42'),
(460, 'SLT 102.2', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 10:05:42', '2018-05-05 10:05:42'),
(461, 'SLT 103.2', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-05 10:05:42', '2018-05-05 10:05:42'),
(462, 'ENG 501', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-05 10:06:44', '2018-05-05 10:06:44'),
(463, 'ENG 502', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-05 10:06:44', '2018-05-05 10:06:44'),
(464, 'EEE 501', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-05 10:06:44', '2018-05-05 10:06:44'),
(465, 'EEE 502', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-05 10:06:44', '2018-05-05 10:06:44'),
(466, 'EEE 503', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-05 10:06:44', '2018-05-05 10:06:44'),
(467, 'EEE 504', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-05 10:06:44', '2018-05-05 10:06:44'),
(468, 'EEE 505', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-05 10:06:44', '2018-05-05 10:06:44'),
(469, 'EEE 506', NULL, 1, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-05 10:06:44', '2018-05-05 10:06:44'),
(470, 'CHM 235.1', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-05 10:13:10', '2018-05-05 10:13:10'),
(471, 'CHM 250.1', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-05 10:13:10', '2018-05-05 10:13:10'),
(472, 'CHM 260.1', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-05 10:13:10', '2018-05-05 10:13:10'),
(473, 'CSC 280.1', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-05 10:13:10', '2018-05-05 10:13:10'),
(474, 'ENG 201.1', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-05 10:13:10', '2018-05-05 10:13:10'),
(475, 'ENG 203.1', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-05 10:13:10', '2018-05-05 10:13:10'),
(476, 'SLT 201.1', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-05 10:13:10', '2018-05-05 10:13:10'),
(477, 'SLT 202.1', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-05 10:13:10', '2018-05-05 10:13:10'),
(478, 'SLT 210.1', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-05 10:13:10', '2018-05-05 10:13:10'),
(479, 'CHE 212.2', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-05 10:17:38', '2018-05-05 10:17:38'),
(480, 'ENG 202.2', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-05 10:17:38', '2018-05-05 10:17:38'),
(481, 'ENG 209.2', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-05 10:17:38', '2018-05-05 10:17:38'),
(482, 'PHY 222.2', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-05 10:17:38', '2018-05-05 10:17:38'),
(483, 'SLT 211.2', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-05 10:17:38', '2018-05-05 10:17:38'),
(484, 'SLT 213.2', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-05 10:17:38', '2018-05-05 10:17:38'),
(485, 'SLT 2C1.2', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-05 10:17:38', '2018-05-05 10:17:38'),
(486, 'STA 260.2', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial chemistry/petrochemical technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-05 10:17:38', '2018-05-05 10:17:38'),
(487, 'GES 100', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 12:57:05', '2018-05-07 12:57:05'),
(488, 'GES 102', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 12:57:05', '2018-05-07 12:57:05'),
(489, 'CHM 130', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 12:57:05', '2018-05-07 12:57:05'),
(490, 'PHY 101', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 12:57:05', '2018-05-07 12:57:05'),
(491, 'PHY 102', NULL, 1, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 12:57:05', '2018-05-07 12:57:05'),
(492, 'MTH 110', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 12:57:05', '2018-05-07 12:57:05'),
(493, 'MTH 120', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 12:57:05', '2018-05-07 12:57:05'),
(494, 'ENG 101', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 12:57:05', '2018-05-07 12:57:05'),
(495, 'GES 101', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 13:07:31', '2018-05-07 13:07:31'),
(496, 'GES 103', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 13:07:31', '2018-05-07 13:07:31'),
(497, 'CHM 131', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 13:07:31', '2018-05-07 13:07:31'),
(498, 'PHY 112', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 13:07:31', '2018-05-07 13:07:31'),
(499, 'PHY 103', NULL, 1, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 13:07:31', '2018-05-07 13:07:31'),
(500, 'MTH 124', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 13:07:31', '2018-05-07 13:07:31'),
(501, 'ENG 102', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 13:07:31', '2018-05-07 13:07:31'),
(502, 'ENG 103', NULL, 1, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 13:07:31', '2018-05-07 13:07:31'),
(503, 'ENG 104', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 13:07:31', '2018-05-07 13:07:31'),
(504, 'PHY 216', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 13:12:10', '2018-05-07 13:12:10'),
(505, 'ENG 201', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 13:12:10', '2018-05-07 13:12:10'),
(506, 'ENG 202', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 13:12:10', '2018-05-07 13:12:10'),
(507, 'ENG 203', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 13:12:10', '2018-05-07 13:12:10'),
(508, 'ENG 204', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 13:12:10', '2018-05-07 13:12:10'),
(509, 'ENG 210', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 13:12:10', '2018-05-07 13:12:10'),
(510, 'ENG 213', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 13:12:10', '2018-05-07 13:12:10'),
(511, 'MEG 251', NULL, 1, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 13:12:10', '2018-05-07 13:12:10'),
(512, 'MEG 200', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 13:17:06', '2018-05-07 13:17:06'),
(513, 'CHM 240', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 13:17:06', '2018-05-07 13:17:06'),
(514, 'ENG 206', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 13:17:06', '2018-05-07 13:17:06'),
(515, 'ENG 207', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 13:17:06', '2018-05-07 13:17:06'),
(516, 'ENG 208', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 13:17:06', '2018-05-07 13:17:06'),
(517, 'ENG 209', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 13:17:06', '2018-05-07 13:17:06'),
(518, 'ENG 211', NULL, 1, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 13:17:06', '2018-05-07 13:17:06'),
(519, 'ENG 212', NULL, 1, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 13:17:06', '2018-05-07 13:17:06'),
(520, 'MEG 202', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 13:17:06', '2018-05-07 13:17:06'),
(521, 'MEG 252', NULL, 1, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 13:17:06', '2018-05-07 13:17:06'),
(522, 'ENG 301', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 13:23:19', '2018-05-07 13:23:19'),
(523, 'ENG 302', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 13:23:19', '2018-05-07 13:23:19'),
(524, 'MEG 301', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 13:23:19', '2018-05-07 13:23:19'),
(525, 'MEG 303', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 13:23:19', '2018-05-07 13:23:19'),
(526, 'MEG 305', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 13:23:19', '2018-05-07 13:23:19'),
(527, 'MEG 307', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 13:23:19', '2018-05-07 13:23:19'),
(528, 'MEG 309', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 13:23:19', '2018-05-07 13:23:19'),
(529, 'MEG 311', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 13:23:19', '2018-05-07 13:23:19'),
(530, 'MEG 300', NULL, 1, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 13:26:03', '2018-05-07 13:26:03'),
(531, 'GES 300', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 13:26:03', '2018-05-07 13:26:03'),
(532, 'ENG 303', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 13:26:03', '2018-05-07 13:26:03'),
(533, 'MEG 302', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 13:26:03', '2018-05-07 13:26:03'),
(534, 'MEG 304', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 13:26:03', '2018-05-07 13:26:03'),
(535, 'MEG 306', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 13:26:03', '2018-05-07 13:26:03'),
(536, 'MEG 308', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 13:26:03', '2018-05-07 13:26:03'),
(537, 'MEG 310', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 13:26:03', '2018-05-07 13:26:03'),
(538, 'MEG 312', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 13:26:03', '2018-05-07 13:26:03'),
(539, 'MEG 352', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 13:26:03', '2018-05-07 13:26:03'),
(540, 'ENG 401', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 13:30:15', '2018-05-07 13:30:15'),
(541, 'ENG 402', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 13:30:15', '2018-05-07 13:30:15'),
(542, 'EEE 404', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 13:30:15', '2018-05-07 13:30:15'),
(543, 'MEG 401', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 13:30:15', '2018-05-07 13:30:15'),
(544, 'MEG 403', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 13:30:15', '2018-05-07 13:30:15'),
(545, 'MEG 405', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 13:30:15', '2018-05-07 13:30:15'),
(546, 'MEG 407', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 13:30:15', '2018-05-07 13:30:15'),
(547, 'MEG 451', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 13:30:15', '2018-05-07 13:30:15'),
(548, 'MEG 453', NULL, 1, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 13:30:15', '2018-05-07 13:30:15'),
(549, 'ENG 400', NULL, 9, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 4, '2', 'created', '2018-05-07 13:31:03', '2018-05-07 13:31:03'),
(550, 'GES 400', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 4, '2', 'created', '2018-05-07 13:31:03', '2018-05-07 13:31:03'),
(551, 'ENG 501', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 13:34:38', '2018-05-07 13:34:38'),
(552, 'ENG 502', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 13:34:38', '2018-05-07 13:34:38'),
(553, 'MEG 503', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 13:34:38', '2018-05-07 13:34:38'),
(554, 'MEG 505', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 13:34:38', '2018-05-07 13:34:38'),
(555, 'MEG 507', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 13:34:38', '2018-05-07 13:34:38'),
(556, 'MEG 551', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 13:34:38', '2018-05-07 13:34:38'),
(557, 'MEG 561', NULL, 1, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 13:34:38', '2018-05-07 13:34:38'),
(558, 'MEG 5XX', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 13:34:38', '2018-05-07 13:34:38'),
(559, 'MEG 500', NULL, 6, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 13:39:28', '2018-05-07 13:39:28'),
(560, 'MEG 502', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 13:39:28', '2018-05-07 13:39:28'),
(561, 'MEG 504', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 13:39:28', '2018-05-07 13:39:28'),
(562, 'MEG 506', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 13:39:28', '2018-05-07 13:39:28'),
(563, 'MEG 508', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechanical Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 13:39:28', '2018-05-07 13:39:28'),
(564, 'EEE 5XX', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 13:44:55', '2018-05-07 13:44:55'),
(565, 'EEE 513', NULL, 2, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 13:44:55', '2018-05-07 13:44:55'),
(566, 'EEE 514', NULL, 3, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 13:44:55', '2018-05-07 13:44:55'),
(567, 'EEE 515', NULL, 6, 'University of port-harcourt', 'Engineering', 'Electrical/Electronics Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 13:44:55', '2018-05-07 13:44:55'),
(568, 'GES 100', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 13:52:04', '2018-05-07 13:52:04'),
(569, 'GES 102', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 13:52:04', '2018-05-07 13:52:04'),
(570, 'FSB 101', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 13:52:04', '2018-05-07 13:52:04'),
(571, 'CHM 130', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 13:52:04', '2018-05-07 13:52:04'),
(572, 'PHY 101', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 13:52:04', '2018-05-07 13:52:04'),
(573, 'PHY 102', NULL, 1, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 13:52:04', '2018-05-07 13:52:04'),
(574, 'MTH 110', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 13:52:04', '2018-05-07 13:52:04'),
(575, 'MTH 120', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 13:52:04', '2018-05-07 13:52:04'),
(576, 'ENG 101', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 13:52:04', '2018-05-07 13:52:04'),
(577, 'GES 101', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 13:54:57', '2018-05-07 13:54:57'),
(578, 'GES 103', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 13:54:57', '2018-05-07 13:54:57'),
(579, 'CHM 131', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 13:54:57', '2018-05-07 13:54:57'),
(580, 'CHM 132', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 13:54:57', '2018-05-07 13:54:57'),
(581, 'PHY 112', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 13:54:57', '2018-05-07 13:54:57'),
(582, 'PHY 103', NULL, 1, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 13:54:57', '2018-05-07 13:54:57'),
(583, 'MTH 124', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 13:54:57', '2018-05-07 13:54:57'),
(584, 'ENG 102', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 13:54:57', '2018-05-07 13:54:57'),
(585, 'ENG 103', NULL, 1, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 13:54:57', '2018-05-07 13:54:57'),
(586, 'ENG 104', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 13:54:57', '2018-05-07 13:54:57');
INSERT INTO `courses` (`id`, `course_code`, `course_name`, `credit_unit`, `school_name`, `faculty_name`, `department_name`, `department_id`, `faculty_id`, `school_id`, `level`, `semester`, `status`, `created_at`, `updated_at`) VALUES
(587, 'PHY 216', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 13:58:58', '2018-05-07 13:58:58'),
(588, 'MCB 200', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 13:58:58', '2018-05-07 13:58:58'),
(589, 'ENG 201', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 13:58:58', '2018-05-07 13:58:58'),
(590, 'ENG 202', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 13:58:58', '2018-05-07 13:58:58'),
(591, 'ENG 203', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 13:58:58', '2018-05-07 13:58:58'),
(592, 'ENG 204', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 13:58:58', '2018-05-07 13:58:58'),
(593, 'ENG 205', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 13:58:58', '2018-05-07 13:58:58'),
(594, 'ENG 213', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 13:58:58', '2018-05-07 13:58:58'),
(595, 'CHM 240', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 14:01:41', '2018-05-07 14:01:41'),
(596, 'GEO 203', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 14:01:41', '2018-05-07 14:01:41'),
(597, 'ENG 206', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 14:01:41', '2018-05-07 14:01:41'),
(598, 'ENG 207', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 14:01:41', '2018-05-07 14:01:41'),
(599, 'ENG 208', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 14:01:41', '2018-05-07 14:01:41'),
(600, 'ENG 209', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 14:01:41', '2018-05-07 14:01:41'),
(601, 'ENG 210', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 14:01:41', '2018-05-07 14:01:41'),
(602, 'ENG 211', NULL, 1, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 14:01:41', '2018-05-07 14:01:41'),
(603, 'CEG 231', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 14:01:41', '2018-05-07 14:01:41'),
(604, 'ENG 301', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 14:05:05', '2018-05-07 14:05:05'),
(605, 'ENG 302', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 14:05:05', '2018-05-07 14:05:05'),
(606, 'CEG 311', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 14:05:05', '2018-05-07 14:05:05'),
(607, 'CEG 321', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 14:05:05', '2018-05-07 14:05:05'),
(608, 'CEG 323', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 14:05:05', '2018-05-07 14:05:05'),
(609, 'CEG 332', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 14:05:05', '2018-05-07 14:05:05'),
(610, 'CEG 351', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 14:05:05', '2018-05-07 14:05:05'),
(611, 'CEG 352', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 14:05:05', '2018-05-07 14:05:05'),
(612, 'CEG 381', NULL, 1, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 14:05:05', '2018-05-07 14:05:05'),
(613, 'GES 300', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 14:12:48', '2018-05-07 14:12:48'),
(614, 'AEB 384', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 14:12:48', '2018-05-07 14:12:48'),
(615, 'ENG 212', NULL, 1, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 14:12:48', '2018-05-07 14:12:48'),
(616, 'ENG 303', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 14:12:48', '2018-05-07 14:12:48'),
(617, 'CEG 312', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 14:12:48', '2018-05-07 14:12:48'),
(618, 'CEG 342', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 14:12:48', '2018-05-07 14:12:48'),
(619, 'CEG 382', NULL, 1, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 14:12:48', '2018-05-07 14:12:48'),
(620, 'EVE 301', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 14:12:48', '2018-05-07 14:12:48'),
(621, 'EVE 302', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 14:12:48', '2018-05-07 14:12:48'),
(622, 'MCB 301', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 14:15:08', '2018-05-07 14:15:08'),
(623, 'ENG 401', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 14:15:08', '2018-05-07 14:15:08'),
(624, 'ENG 402', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 14:15:08', '2018-05-07 14:15:08'),
(625, 'CEG 413', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 14:15:08', '2018-05-07 14:15:08'),
(626, 'CEG 4XX', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 14:15:08', '2018-05-07 14:15:08'),
(627, 'CEG 483', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 14:15:08', '2018-05-07 14:15:08'),
(628, 'EVE 401', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 14:15:08', '2018-05-07 14:15:08'),
(629, 'ENG 400', NULL, 9, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 4, '2', 'created', '2018-05-07 14:16:18', '2018-05-07 14:16:18'),
(630, 'GES 400', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 4, '2', 'created', '2018-05-07 14:16:18', '2018-05-07 14:16:18'),
(631, 'ENG 501', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 14:18:53', '2018-05-07 14:18:53'),
(632, 'ENG 502', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 14:18:53', '2018-05-07 14:18:53'),
(633, 'CEG 514', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 14:18:53', '2018-05-07 14:18:53'),
(634, 'XXX 5XX', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 14:18:53', '2018-05-07 14:18:53'),
(635, 'EVE 501', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 14:18:53', '2018-05-07 14:18:53'),
(636, 'EVE 502', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 14:18:53', '2018-05-07 14:18:53'),
(637, 'EVE 503', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 14:18:53', '2018-05-07 14:18:53'),
(638, 'EVE 504', NULL, 1, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 14:18:53', '2018-05-07 14:18:53'),
(639, 'CEG 515', NULL, 2, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 14:20:59', '2018-05-07 14:20:59'),
(640, 'CEG 571', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 14:20:59', '2018-05-07 14:20:59'),
(641, 'EVE 505', NULL, 3, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 14:20:59', '2018-05-07 14:20:59'),
(642, 'EVE 520', NULL, 6, 'University of port-harcourt', 'Engineering', 'Environmental Engineering', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 14:20:59', '2018-05-07 14:20:59'),
(643, 'BCH 210', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 14:50:32', '2018-05-07 14:50:32'),
(644, 'CHM 235', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 14:50:32', '2018-05-07 14:50:32'),
(645, 'CHM 250', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 14:50:32', '2018-05-07 14:50:32'),
(646, 'CHM 260', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 14:50:32', '2018-05-07 14:50:32'),
(647, 'CSC 280', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 14:50:32', '2018-05-07 14:50:32'),
(648, 'MCB 200', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 14:50:32', '2018-05-07 14:50:32'),
(649, 'SLT 201', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 14:50:32', '2018-05-07 14:50:32'),
(650, 'SLT 210', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 14:50:32', '2018-05-07 14:50:32'),
(651, 'FSB 202', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 14:53:15', '2018-05-07 14:53:15'),
(652, 'FSB 203', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 14:53:15', '2018-05-07 14:53:15'),
(653, 'MCB 201', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 14:53:15', '2018-05-07 14:53:15'),
(654, 'SLT 211', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 14:53:15', '2018-05-07 14:53:15'),
(655, 'SLT 214', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 14:53:15', '2018-05-07 14:53:15'),
(656, 'SLT 2C1', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 14:53:15', '2018-05-07 14:53:15'),
(657, 'STA 264', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 14:53:15', '2018-05-07 14:53:15'),
(658, 'AEB 301', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 14:55:15', '2018-05-07 14:55:15'),
(659, 'GES 300', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 14:55:15', '2018-05-07 14:55:15'),
(660, 'CHM 362', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 14:55:15', '2018-05-07 14:55:15'),
(661, 'MCB 300', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 14:55:15', '2018-05-07 14:55:15'),
(662, 'PSB 300', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 14:55:15', '2018-05-07 14:55:15'),
(663, 'MCB 304', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 14:55:15', '2018-05-07 14:55:15'),
(664, 'MCB 311', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 14:55:15', '2018-05-07 14:55:15'),
(665, 'MCB 310', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 14:55:15', '2018-05-07 14:55:15'),
(666, 'MCB 305', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 14:55:15', '2018-05-07 14:55:15'),
(667, 'MCB 404', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 14:56:32', '2018-05-07 14:56:32'),
(668, 'SLT 303', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 14:56:32', '2018-05-07 14:56:32'),
(669, 'SLT 312', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 14:56:32', '2018-05-07 14:56:32'),
(670, 'SLT 310', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 14:56:32', '2018-05-07 14:56:32'),
(671, 'SLT 314', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 14:56:32', '2018-05-07 14:56:32'),
(672, 'SLT 315', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 14:56:32', '2018-05-07 14:56:32'),
(673, 'GES 400', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 14:58:07', '2018-05-07 14:58:07'),
(674, 'MCB 301', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 14:58:07', '2018-05-07 14:58:07'),
(675, 'MCB 400', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 14:58:07', '2018-05-07 14:58:07'),
(676, 'MCB 401', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 14:58:07', '2018-05-07 14:58:07'),
(677, 'MCB 403', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 14:58:07', '2018-05-07 14:58:07'),
(678, 'MCB 409', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 14:58:07', '2018-05-07 14:58:07'),
(679, 'SLT 414', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 14:58:07', '2018-05-07 14:58:07'),
(680, 'SLT 402', NULL, 9, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 4, '2', 'created', '2018-05-07 14:58:50', '2018-05-07 14:58:50'),
(681, 'BCH 501', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 15:00:37', '2018-05-07 15:00:37'),
(682, 'BCH 507', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 15:00:37', '2018-05-07 15:00:37'),
(683, 'MCB 500', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 15:00:37', '2018-05-07 15:00:37'),
(684, 'MCB 501', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 15:00:37', '2018-05-07 15:00:37'),
(685, 'PSB 501', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 15:00:37', '2018-05-07 15:00:37'),
(686, 'SLT 509', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 15:00:37', '2018-05-07 15:00:37'),
(687, 'MCB 505', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 15:01:55', '2018-05-07 15:01:55'),
(688, 'MCB 507', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 15:01:55', '2018-05-07 15:01:55'),
(689, 'SLT 508', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 15:01:55', '2018-05-07 15:01:55'),
(690, 'SLT 510', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 15:01:55', '2018-05-07 15:01:55'),
(691, 'SLT 511', NULL, 6, 'University of port-harcourt', 'School of science laboratory technology', 'Microbiology Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 15:01:55', '2018-05-07 15:01:55'),
(692, 'CHE 311', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 15:13:06', '2018-05-07 15:13:06'),
(693, 'CHE 313', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 15:13:06', '2018-05-07 15:13:06'),
(694, 'CHE 320', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 15:13:06', '2018-05-07 15:13:06'),
(695, 'CHE 335', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 15:13:06', '2018-05-07 15:13:06'),
(696, 'GES 300', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 15:13:06', '2018-05-07 15:13:06'),
(697, 'PHY 303', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 15:13:06', '2018-05-07 15:13:06'),
(698, 'CHE 306', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 15:16:07', '2018-05-07 15:16:07'),
(699, 'CHE 308', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 15:16:07', '2018-05-07 15:16:07'),
(700, 'CHE 315', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 15:16:07', '2018-05-07 15:16:07'),
(701, 'CHE 318', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 15:16:07', '2018-05-07 15:16:07'),
(702, 'MEG 314', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 15:16:07', '2018-05-07 15:16:07'),
(703, 'PNG 311', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 15:16:07', '2018-05-07 15:16:07'),
(704, 'SLT 315', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 15:16:07', '2018-05-07 15:16:07'),
(705, 'SLT 310', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 15:16:07', '2018-05-07 15:16:07'),
(706, 'SLT 312', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 15:16:07', '2018-05-07 15:16:07'),
(707, 'CHE 421', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 15:18:07', '2018-05-07 15:18:07'),
(708, 'PHY 401', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 15:18:07', '2018-05-07 15:18:07'),
(709, 'PNG 407', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 15:18:07', '2018-05-07 15:18:07'),
(710, 'GES 400', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 15:18:07', '2018-05-07 15:18:07'),
(711, 'GNG 402', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 15:18:07', '2018-05-07 15:18:07'),
(712, 'ICH 476', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 15:18:07', '2018-05-07 15:18:07'),
(713, 'SLT 402', NULL, 9, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 4, '2', 'created', '2018-05-07 15:18:48', '2018-05-07 15:18:48'),
(714, 'CHM 501', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 15:21:50', '2018-05-07 15:21:50'),
(715, 'CHE 503', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 15:21:50', '2018-05-07 15:21:50'),
(716, 'CHE 505', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 15:21:50', '2018-05-07 15:21:50'),
(717, 'ICH 511', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 15:21:50', '2018-05-07 15:21:50'),
(718, 'SLT 509', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 15:21:50', '2018-05-07 15:21:50'),
(719, 'SLT 511', NULL, 6, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 15:21:50', '2018-05-07 15:21:50'),
(720, 'CHE 514', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 15:23:46', '2018-05-07 15:23:46'),
(721, 'CHE 518', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 15:23:46', '2018-05-07 15:23:46'),
(722, 'PNG 506', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 15:23:46', '2018-05-07 15:23:46'),
(723, 'MEG 501', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 15:23:46', '2018-05-07 15:23:46'),
(724, 'SLT 508', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 15:23:46', '2018-05-07 15:23:46'),
(725, 'SLT 510', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Industrial Chemistry/Petrochemical Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 15:23:46', '2018-05-07 15:23:46'),
(726, 'CHM 130', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 15:32:09', '2018-05-07 15:32:09'),
(727, 'ENG 101', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 15:32:09', '2018-05-07 15:32:09'),
(728, 'FSB 101', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 15:32:09', '2018-05-07 15:32:09'),
(729, 'GES 100', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 15:32:09', '2018-05-07 15:32:09'),
(730, 'GES 102', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 15:32:09', '2018-05-07 15:32:09'),
(731, 'MTH 110', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 15:32:09', '2018-05-07 15:32:09'),
(732, 'MTH 120', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 15:32:09', '2018-05-07 15:32:09'),
(733, 'PHY 101', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 15:32:09', '2018-05-07 15:32:09'),
(734, 'PHY 102', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 15:32:09', '2018-05-07 15:32:09'),
(735, 'CHM 131', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 15:34:39', '2018-05-07 15:34:39'),
(736, 'CHM 132', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 15:34:39', '2018-05-07 15:34:39'),
(737, 'ECO 102', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 15:34:39', '2018-05-07 15:34:39'),
(738, 'FSB 102', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 15:34:39', '2018-05-07 15:34:39'),
(739, 'GES 101', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 15:34:39', '2018-05-07 15:34:39'),
(740, 'GES 103', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 15:34:39', '2018-05-07 15:34:39'),
(741, 'PHY 103', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 15:34:39', '2018-05-07 15:34:39'),
(742, 'PHY 112', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 15:34:39', '2018-05-07 15:34:39'),
(743, 'SLT 102', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 15:34:39', '2018-05-07 15:34:39'),
(744, 'SLT 103', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 15:34:39', '2018-05-07 15:34:39'),
(745, 'CSC 280', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 15:37:37', '2018-05-07 15:37:37'),
(746, 'MTH 201', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 15:37:37', '2018-05-07 15:37:37'),
(747, 'MTH 240', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 15:37:37', '2018-05-07 15:37:37'),
(748, 'PHY 200', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 15:37:37', '2018-05-07 15:37:37'),
(749, 'PHY 206', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 15:37:37', '2018-05-07 15:37:37'),
(750, 'PHY 216', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 15:37:37', '2018-05-07 15:37:37'),
(751, 'SLT 201', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 15:37:37', '2018-05-07 15:37:37'),
(752, 'SLT 210', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 15:37:37', '2018-05-07 15:37:37'),
(753, 'EEE 222', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 15:40:21', '2018-05-07 15:40:21'),
(754, 'MEG 210', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 15:40:21', '2018-05-07 15:40:21'),
(755, 'MTH 222', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 15:40:21', '2018-05-07 15:40:21'),
(756, 'MTH 250', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 15:40:21', '2018-05-07 15:40:21'),
(757, 'SLT 211', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 15:40:21', '2018-05-07 15:40:21'),
(758, 'SLT 213', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 15:40:21', '2018-05-07 15:40:21'),
(759, 'SLT 2C1', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 15:40:21', '2018-05-07 15:40:21'),
(760, 'PHY 205', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 15:40:21', '2018-05-07 15:40:21'),
(761, 'PHY 211', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 15:40:21', '2018-05-07 15:40:21'),
(762, 'EEE 309', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 15:45:19', '2018-05-07 15:45:19'),
(763, 'GES 300', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 15:45:19', '2018-05-07 15:45:19'),
(764, 'PHY 300', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 15:45:19', '2018-05-07 15:45:19'),
(765, 'PHY 306', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 15:45:19', '2018-05-07 15:45:19'),
(766, 'PHY 313', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 15:45:19', '2018-05-07 15:45:19'),
(767, 'PHY 315', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 15:45:19', '2018-05-07 15:45:19'),
(768, 'PHY 345', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 15:45:19', '2018-05-07 15:45:19'),
(769, 'PHY 351', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 15:45:19', '2018-05-07 15:45:19'),
(770, 'PHY 353', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 15:45:19', '2018-05-07 15:45:19'),
(771, 'PHY 356', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 15:45:19', '2018-05-07 15:45:19'),
(772, 'EEE 307', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 15:46:53', '2018-05-07 15:46:53'),
(773, 'EEE 310', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 15:46:53', '2018-05-07 15:46:53'),
(774, 'EEE 318', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 15:46:53', '2018-05-07 15:46:53'),
(775, 'SLT 310', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 15:46:53', '2018-05-07 15:46:53'),
(776, 'SLT 315', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 15:46:53', '2018-05-07 15:46:53'),
(777, 'PHY 342', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 15:49:27', '2018-05-07 15:49:27'),
(778, 'EEE 415', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 15:49:27', '2018-05-07 15:49:27'),
(779, 'GES 400', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 15:49:27', '2018-05-07 15:49:27'),
(780, 'PHY 405', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 15:49:27', '2018-05-07 15:49:27'),
(781, 'PHY 407', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 15:49:27', '2018-05-07 15:49:27'),
(782, 'PHY 413', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 15:49:27', '2018-05-07 15:49:27'),
(783, 'PHY 417', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 15:49:27', '2018-05-07 15:49:27'),
(784, 'SLT 401', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 15:49:27', '2018-05-07 15:49:27'),
(785, 'SLT 402', NULL, 9, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 4, '2', 'created', '2018-05-07 15:49:52', '2018-05-07 15:49:52'),
(786, 'EEE 503', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 15:51:52', '2018-05-07 15:51:52'),
(787, 'EEE 507', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 15:51:52', '2018-05-07 15:51:52'),
(788, 'PHY 504', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 15:51:52', '2018-05-07 15:51:52'),
(789, 'PHY 505', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 15:51:52', '2018-05-07 15:51:52'),
(790, 'PHY 507', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 15:51:52', '2018-05-07 15:51:52'),
(791, 'PHY 520', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 15:51:52', '2018-05-07 15:51:52'),
(792, 'SLT 509', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 15:51:52', '2018-05-07 15:51:52'),
(793, 'PHY 531', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 15:54:25', '2018-05-07 15:54:25'),
(794, 'PHY 552', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 15:54:25', '2018-05-07 15:54:25'),
(795, 'SLT 508', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 15:54:25', '2018-05-07 15:54:25'),
(796, 'SLT 510', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 15:54:25', '2018-05-07 15:54:25'),
(797, 'SLT 511', NULL, 6, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 15:54:25', '2018-05-07 15:54:25'),
(798, 'SLT 512', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'P:hysics With Electronics Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 15:54:25', '2018-05-07 15:54:25'),
(799, 'CHM 130', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 15:59:22', '2018-05-07 15:59:22'),
(800, 'ENG 101', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 15:59:22', '2018-05-07 15:59:22'),
(801, 'FSB 101', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 15:59:22', '2018-05-07 15:59:22'),
(802, 'GES 100', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 15:59:22', '2018-05-07 15:59:22'),
(803, 'GES 102', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 15:59:22', '2018-05-07 15:59:22'),
(804, 'MTH 110', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 15:59:22', '2018-05-07 15:59:22'),
(805, 'MTH 120', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 15:59:22', '2018-05-07 15:59:22'),
(806, 'PHY 101', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 15:59:22', '2018-05-07 15:59:22'),
(807, 'PHY 102', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 15:59:22', '2018-05-07 15:59:22'),
(808, 'CHM 131', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 16:06:32', '2018-05-07 16:06:32'),
(809, 'CHM 132', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 16:06:32', '2018-05-07 16:06:32'),
(810, 'ECO 102', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 16:06:32', '2018-05-07 16:06:32'),
(811, 'FSB 102', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 16:06:32', '2018-05-07 16:06:32'),
(812, 'GES 101', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 16:06:32', '2018-05-07 16:06:32'),
(813, 'PHY 103', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 16:06:32', '2018-05-07 16:06:32'),
(814, 'PHY 112', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 16:06:32', '2018-05-07 16:06:32'),
(815, 'SLT 102', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 16:06:32', '2018-05-07 16:06:32'),
(816, 'SLT 103', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 16:06:33', '2018-05-07 16:06:33'),
(817, 'GES 103', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 16:06:33', '2018-05-07 16:06:33'),
(818, 'ANA 210', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 16:11:03', '2018-05-07 16:11:03'),
(819, 'BCH 210', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 16:11:03', '2018-05-07 16:11:03'),
(820, 'BCH 214', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 16:11:03', '2018-05-07 16:11:03'),
(821, 'CSC 280', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 16:11:03', '2018-05-07 16:11:03'),
(822, 'CHM 235', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 16:11:03', '2018-05-07 16:11:03'),
(823, 'CHM 250', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 16:11:03', '2018-05-07 16:11:03');
INSERT INTO `courses` (`id`, `course_code`, `course_name`, `credit_unit`, `school_name`, `faculty_name`, `department_name`, `department_id`, `faculty_id`, `school_id`, `level`, `semester`, `status`, `created_at`, `updated_at`) VALUES
(824, 'SLT 201', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 16:11:03', '2018-05-07 16:11:03'),
(825, 'SLT 210', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 16:11:03', '2018-05-07 16:11:03'),
(826, 'BCH 211', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 16:13:52', '2018-05-07 16:13:52'),
(827, 'MTH 224', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 16:13:52', '2018-05-07 16:13:52'),
(828, 'PHS 221', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 16:13:52', '2018-05-07 16:13:52'),
(829, 'PHS 222', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 16:13:53', '2018-05-07 16:13:53'),
(830, 'SLT 211', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 16:13:53', '2018-05-07 16:13:53'),
(831, 'SLT 213', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 16:13:53', '2018-05-07 16:13:53'),
(832, 'SLT 2C1', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 16:13:53', '2018-05-07 16:13:53'),
(833, 'STA 264', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 16:13:53', '2018-05-07 16:13:53'),
(834, 'ANA 301', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 17:22:03', '2018-05-07 17:22:03'),
(835, 'ANA 311', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 17:22:03', '2018-05-07 17:22:03'),
(836, 'BCH 311', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 17:22:03', '2018-05-07 17:22:03'),
(837, 'GES 300', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 17:22:03', '2018-05-07 17:22:03'),
(838, 'PHS 322', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 17:22:03', '2018-05-07 17:22:03'),
(839, 'PHY 306', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 17:22:03', '2018-05-07 17:22:03'),
(840, 'PHY 351', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 17:22:03', '2018-05-07 17:22:03'),
(841, 'PHS 323', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 17:23:49', '2018-05-07 17:23:49'),
(842, 'PHS 321', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 17:23:49', '2018-05-07 17:23:49'),
(843, 'SLT 315', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 17:23:49', '2018-05-07 17:23:49'),
(844, 'SLT 316', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 17:23:49', '2018-05-07 17:23:49'),
(845, 'SLT 318', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 17:23:49', '2018-05-07 17:23:49'),
(846, 'SLT 310', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 17:23:49', '2018-05-07 17:23:49'),
(847, 'SLT 312', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 17:23:49', '2018-05-07 17:23:49'),
(848, 'GES 400', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 17:26:44', '2018-05-07 17:26:44'),
(849, 'PHS 401', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 17:26:44', '2018-05-07 17:26:44'),
(850, 'PHS 421', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 17:26:44', '2018-05-07 17:26:44'),
(851, 'PHS 424', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 17:26:44', '2018-05-07 17:26:44'),
(852, 'PHS 425', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 17:26:44', '2018-05-07 17:26:44'),
(853, 'SLT 411', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 17:26:44', '2018-05-07 17:26:44'),
(854, 'SLT 412', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 17:30:34', '2018-05-07 17:30:34'),
(855, 'SLT 402', NULL, 9, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 4, '2', 'created', '2018-05-07 17:32:16', '2018-05-07 17:32:16'),
(856, 'PHAR 501', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 17:35:21', '2018-05-07 17:35:21'),
(857, 'PHAR 502', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 17:35:21', '2018-05-07 17:35:21'),
(858, 'PHAR 505', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 17:35:21', '2018-05-07 17:35:21'),
(859, 'PHAR 509', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 17:35:21', '2018-05-07 17:35:21'),
(860, 'PHS 523', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 17:35:21', '2018-05-07 17:35:21'),
(861, 'SLT 509', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 17:35:21', '2018-05-07 17:35:21'),
(862, 'PHAR 504', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 17:37:26', '2018-05-07 17:37:26'),
(863, 'PHAR 506', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 17:37:26', '2018-05-07 17:37:26'),
(864, 'SLT 508', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 17:37:26', '2018-05-07 17:37:26'),
(865, 'SLT 510', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 17:37:26', '2018-05-07 17:37:26'),
(866, 'SLT 511', NULL, 6, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 17:37:26', '2018-05-07 17:37:26'),
(867, 'SLT 512', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biomedical Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 17:37:26', '2018-05-07 17:37:26'),
(868, 'CHM 130', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 19:55:09', '2018-05-07 19:55:09'),
(869, 'ENG 101', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 19:55:09', '2018-05-07 19:55:09'),
(870, 'FSB 101', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 19:55:09', '2018-05-07 19:55:09'),
(871, 'GES 100', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 19:55:09', '2018-05-07 19:55:09'),
(872, 'GES 102', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 19:55:09', '2018-05-07 19:55:09'),
(873, 'MTH 110', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 19:55:09', '2018-05-07 19:55:09'),
(874, 'MTH 120', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 19:55:09', '2018-05-07 19:55:09'),
(875, 'PHY 101', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 19:55:09', '2018-05-07 19:55:09'),
(876, 'PHY 102', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 19:55:09', '2018-05-07 19:55:09'),
(877, 'CHM 131', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 19:58:08', '2018-05-07 19:58:08'),
(878, 'CHM 132', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 19:58:08', '2018-05-07 19:58:08'),
(879, 'ECO 102', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 19:58:08', '2018-05-07 19:58:08'),
(880, 'FSB 102', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 19:58:08', '2018-05-07 19:58:08'),
(881, 'GES 101', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 19:58:08', '2018-05-07 19:58:08'),
(882, 'GES 103', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 19:58:08', '2018-05-07 19:58:08'),
(883, 'PHY 112', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 19:58:08', '2018-05-07 19:58:08'),
(884, 'SLT 102', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 19:58:08', '2018-05-07 19:58:08'),
(885, 'SLT 103', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 19:58:08', '2018-05-07 19:58:08'),
(886, 'CHM 235', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 20:00:39', '2018-05-07 20:00:39'),
(887, 'CHM 250', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 20:00:39', '2018-05-07 20:00:39'),
(888, 'CHM 260', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 20:00:39', '2018-05-07 20:00:39'),
(889, 'CSC 280', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 20:00:39', '2018-05-07 20:00:39'),
(890, 'GLY 200', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 20:00:39', '2018-05-07 20:00:39'),
(891, 'GLY 202', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 20:00:39', '2018-05-07 20:00:39'),
(892, 'GLY 203', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 20:00:39', '2018-05-07 20:00:39'),
(893, 'SLT 201', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 20:00:39', '2018-05-07 20:00:39'),
(894, 'SLT 210', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 20:00:39', '2018-05-07 20:00:39'),
(895, 'CHM 240', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 20:03:40', '2018-05-07 20:03:40'),
(896, 'GLY 204', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 20:03:40', '2018-05-07 20:03:40'),
(897, 'GLY 205', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 20:03:40', '2018-05-07 20:03:40'),
(898, 'PHY 205', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 20:03:40', '2018-05-07 20:03:40'),
(899, 'SLT 211', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 20:03:40', '2018-05-07 20:03:40'),
(900, 'SLT 213', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 20:03:40', '2018-05-07 20:03:40'),
(901, 'SLT 2C1', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 20:03:40', '2018-05-07 20:03:40'),
(902, 'STA 260', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 20:03:40', '2018-05-07 20:03:40'),
(903, 'GLY 300', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 20:06:00', '2018-05-07 20:06:00'),
(904, 'GLY 301', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 20:06:00', '2018-05-07 20:06:00'),
(905, 'GLY 302', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 20:06:00', '2018-05-07 20:06:00'),
(906, 'GLY 304', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 20:06:00', '2018-05-07 20:06:00'),
(907, 'GLY 308', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 20:06:00', '2018-05-07 20:06:00'),
(908, 'PHY 306', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 20:06:00', '2018-05-07 20:06:00'),
(909, 'GLY 307', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 20:06:00', '2018-05-07 20:06:00'),
(910, 'GLY 303', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 20:06:00', '2018-05-07 20:06:00'),
(911, 'GLY 313', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 20:06:00', '2018-05-07 20:06:00'),
(912, 'GLY 314', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 20:07:52', '2018-05-07 20:07:52'),
(913, 'SLT 305', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 20:07:52', '2018-05-07 20:07:52'),
(914, 'SLT 315', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 20:07:52', '2018-05-07 20:07:52'),
(915, 'SLT 310', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 20:07:52', '2018-05-07 20:07:52'),
(916, 'SLT 312', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 20:07:52', '2018-05-07 20:07:52'),
(917, 'GES 400', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 20:10:15', '2018-05-07 20:10:15'),
(918, 'GLY 401', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 20:10:15', '2018-05-07 20:10:15'),
(919, 'GLY 403', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 20:10:15', '2018-05-07 20:10:15'),
(920, 'GLY 404', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 20:10:15', '2018-05-07 20:10:15'),
(921, 'GLY 405', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 20:10:15', '2018-05-07 20:10:15'),
(922, 'GLY 406', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 20:10:15', '2018-05-07 20:10:15'),
(923, 'GLY 407', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 20:10:15', '2018-05-07 20:10:15'),
(924, 'GLY 408', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 20:10:15', '2018-05-07 20:10:15'),
(925, 'SLT 405', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 20:10:15', '2018-05-07 20:10:15'),
(926, 'SLT 402', NULL, 9, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 4, '2', 'created', '2018-05-07 20:10:47', '2018-05-07 20:10:47'),
(927, 'GLY 503', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 20:12:53', '2018-05-07 20:12:53'),
(928, 'GLY 504', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 20:12:53', '2018-05-07 20:12:53'),
(929, 'GLY 505', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 20:12:54', '2018-05-07 20:12:54'),
(930, 'GLY 506', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 20:12:54', '2018-05-07 20:12:54'),
(931, 'GLY 507', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 20:12:54', '2018-05-07 20:12:54'),
(932, 'GLY 509', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 20:12:54', '2018-05-07 20:12:54'),
(933, 'SLT 509', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 20:12:54', '2018-05-07 20:12:54'),
(934, 'GLY 510', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 20:14:36', '2018-05-07 20:14:36'),
(935, 'GLY 512', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 20:14:36', '2018-05-07 20:14:36'),
(936, 'GLY 508', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 20:14:36', '2018-05-07 20:14:36'),
(937, 'SLT 508', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 20:14:36', '2018-05-07 20:14:36'),
(938, 'SLT 510', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 20:14:36', '2018-05-07 20:14:36'),
(939, 'SLT 511', NULL, 6, 'University of port-harcourt', 'School of science laboratory technology', 'Geology/Mining Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 20:14:36', '2018-05-07 20:14:36'),
(940, 'CHM 130', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 20:31:58', '2018-05-07 20:31:58'),
(941, 'ENG 101', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 20:31:58', '2018-05-07 20:31:58'),
(942, 'FSB 101', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 20:31:58', '2018-05-07 20:31:58'),
(943, 'GES 100', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 20:31:58', '2018-05-07 20:31:58'),
(944, 'GES 102', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 20:31:58', '2018-05-07 20:31:58'),
(945, 'MTH 110', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 20:31:58', '2018-05-07 20:31:58'),
(946, 'MTH 120', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 20:31:58', '2018-05-07 20:31:58'),
(947, 'PHY 101', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 20:31:58', '2018-05-07 20:31:58'),
(948, 'PHY 102', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 20:31:58', '2018-05-07 20:31:58'),
(949, 'CHM 131', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 20:38:09', '2018-05-07 20:38:09'),
(950, 'CHM 132', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 20:38:09', '2018-05-07 20:38:09'),
(951, 'ECO 102', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 20:38:09', '2018-05-07 20:38:09'),
(952, 'FSB 102', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 20:38:09', '2018-05-07 20:38:09'),
(953, 'GES 101', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 20:38:09', '2018-05-07 20:38:09'),
(954, 'GES 103', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 20:38:09', '2018-05-07 20:38:09'),
(955, 'PHY 103', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 20:38:09', '2018-05-07 20:38:09'),
(956, 'PHY 112', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 20:38:09', '2018-05-07 20:38:09'),
(957, 'SLT 102', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 20:38:09', '2018-05-07 20:38:09'),
(958, 'SLT 103', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 20:38:09', '2018-05-07 20:38:09'),
(959, 'CSC 280', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 20:41:28', '2018-05-07 20:41:28'),
(960, 'ENG 203', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 20:41:28', '2018-05-07 20:41:28'),
(961, 'MEG 251', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 20:41:28', '2018-05-07 20:41:28'),
(962, 'MTH 210', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 20:41:28', '2018-05-07 20:41:28'),
(963, 'MTH 220', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 20:41:28', '2018-05-07 20:41:28'),
(964, 'PHY 200', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 20:41:28', '2018-05-07 20:41:28'),
(965, 'PHY 216', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 20:41:28', '2018-05-07 20:41:28'),
(966, 'SLT 201', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 20:41:28', '2018-05-07 20:41:28'),
(967, 'SLT 210', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 20:41:28', '2018-05-07 20:41:28'),
(968, 'MEG 252', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 20:45:17', '2018-05-07 20:45:17'),
(969, 'MTH 250', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 20:45:17', '2018-05-07 20:45:17'),
(970, 'PHY 205', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 20:45:17', '2018-05-07 20:45:17'),
(971, 'PHY 221', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 20:45:17', '2018-05-07 20:45:17'),
(972, 'PHY 222', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 20:45:17', '2018-05-07 20:45:17'),
(973, 'PHY 231', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 20:45:17', '2018-05-07 20:45:17'),
(974, 'SLT 211', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 20:45:17', '2018-05-07 20:45:17'),
(975, 'SLT 213', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 20:45:17', '2018-05-07 20:45:17'),
(976, 'SLT 2C1', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 20:45:17', '2018-05-07 20:45:17'),
(977, 'GES 300', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 20:47:39', '2018-05-07 20:47:39'),
(978, 'MEG 305', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 20:47:39', '2018-05-07 20:47:39'),
(979, 'PHY 300', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 20:47:39', '2018-05-07 20:47:39'),
(980, 'PHY 306', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 20:47:39', '2018-05-07 20:47:39'),
(981, 'PHY 313', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 20:47:39', '2018-05-07 20:47:39'),
(982, 'PHY 315', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 20:47:39', '2018-05-07 20:47:39'),
(983, 'PHY 322', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 20:47:39', '2018-05-07 20:47:39'),
(984, 'PHY 344', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 20:47:39', '2018-05-07 20:47:39'),
(985, 'PHY 345', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 20:47:39', '2018-05-07 20:47:39'),
(986, 'PHY 353', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 20:47:39', '2018-05-07 20:47:39'),
(987, 'MEG 304', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 20:50:04', '2018-05-07 20:50:04'),
(988, 'MEG 306', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 20:50:04', '2018-05-07 20:50:04'),
(989, 'MEG 312', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 20:50:04', '2018-05-07 20:50:04'),
(990, 'SLT 305', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 20:50:04', '2018-05-07 20:50:04'),
(991, 'SLT 310', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 20:50:04', '2018-05-07 20:50:04'),
(992, 'SLT 315', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 20:50:04', '2018-05-07 20:50:04'),
(993, 'EEE 404', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 20:55:11', '2018-05-07 20:55:11'),
(994, 'GES 400', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 20:55:11', '2018-05-07 20:55:11'),
(995, 'MEG 403', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 20:55:11', '2018-05-07 20:55:11'),
(996, 'MEG 407', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 20:55:11', '2018-05-07 20:55:11'),
(997, 'PHY 435', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 20:55:11', '2018-05-07 20:55:11'),
(998, 'PHY 452', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 20:55:11', '2018-05-07 20:55:11'),
(999, 'SLT 404', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 20:55:11', '2018-05-07 20:55:11'),
(1000, 'SLT 410', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 20:55:11', '2018-05-07 20:55:11'),
(1001, 'SLT 402', NULL, 9, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 4, '2', 'created', '2018-05-07 20:56:02', '2018-05-07 20:56:02'),
(1002, 'PHY 505', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 21:00:29', '2018-05-07 21:00:29'),
(1003, 'PHY 548', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 21:00:29', '2018-05-07 21:00:29'),
(1004, 'SLT 508', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 21:00:29', '2018-05-07 21:00:29'),
(1005, 'SLT 509', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 21:00:29', '2018-05-07 21:00:29'),
(1006, 'SLT 511', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 21:00:29', '2018-05-07 21:00:29'),
(1007, 'SLT 512', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 21:00:29', '2018-05-07 21:00:29'),
(1008, 'SLT 536', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 21:00:29', '2018-05-07 21:00:29'),
(1009, 'SLT 504', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 21:02:50', '2018-05-07 21:02:50'),
(1010, 'SLT 506', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 21:02:50', '2018-05-07 21:02:50'),
(1011, 'SLT 510', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Physics With Production Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 21:02:50', '2018-05-07 21:02:50'),
(1012, 'CHM 130', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 21:14:13', '2018-05-07 21:14:13'),
(1013, 'ENG 101', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 21:14:13', '2018-05-07 21:14:13'),
(1014, 'FSB 101', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 21:14:13', '2018-05-07 21:14:13'),
(1015, 'GES 100', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 21:14:13', '2018-05-07 21:14:13'),
(1016, 'GES 102', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 21:14:13', '2018-05-07 21:14:13'),
(1017, 'MTH 110', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 21:14:13', '2018-05-07 21:14:13'),
(1018, 'MTH 120', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 21:14:13', '2018-05-07 21:14:13'),
(1019, 'PHY 101', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 21:14:13', '2018-05-07 21:14:13'),
(1020, 'PHY 102', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 21:14:13', '2018-05-07 21:14:13'),
(1021, 'CHM 131', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 21:17:05', '2018-05-07 21:17:05'),
(1022, 'CHM 132', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 21:17:05', '2018-05-07 21:17:05'),
(1023, 'ECO 102', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 21:17:05', '2018-05-07 21:17:05'),
(1024, 'FSB 102', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 21:17:05', '2018-05-07 21:17:05'),
(1025, 'GES 101', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 21:17:05', '2018-05-07 21:17:05'),
(1026, 'GES 103', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 21:17:05', '2018-05-07 21:17:05'),
(1027, 'PHY 103', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 21:17:05', '2018-05-07 21:17:05'),
(1028, 'PHY 112', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 21:17:05', '2018-05-07 21:17:05'),
(1029, 'SLT 102', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 21:17:05', '2018-05-07 21:17:05'),
(1030, 'SLT 103', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 1, '2', 'created', '2018-05-07 21:17:05', '2018-05-07 21:17:05'),
(1031, 'BCH 210', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 21:26:47', '2018-05-07 21:26:47'),
(1032, 'BCH 214', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 21:26:47', '2018-05-07 21:26:47'),
(1033, 'CHM 235', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 21:26:47', '2018-05-07 21:26:47'),
(1034, 'CHM 250', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 21:26:47', '2018-05-07 21:26:47'),
(1035, 'CHM 260', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 21:26:47', '2018-05-07 21:26:47'),
(1036, 'CSC 280', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 21:26:47', '2018-05-07 21:26:47'),
(1037, 'SLT 201', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 21:26:47', '2018-05-07 21:26:47'),
(1038, 'SLT 210', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 2, '1', 'created', '2018-05-07 21:26:47', '2018-05-07 21:26:47'),
(1039, 'CHM 240', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 21:28:34', '2018-05-07 21:28:34'),
(1040, 'CHM 261', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 21:28:34', '2018-05-07 21:28:34'),
(1041, 'FSB 202', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 21:28:34', '2018-05-07 21:28:34'),
(1042, 'FSB 203', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 21:28:34', '2018-05-07 21:28:34'),
(1043, 'SLT 2C1', NULL, 1, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 21:28:34', '2018-05-07 21:28:34'),
(1044, 'STA 264', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 21:28:34', '2018-05-07 21:28:34'),
(1045, 'SLT 213', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 2, '2', 'created', '2018-05-07 21:28:34', '2018-05-07 21:28:34'),
(1046, 'BCH 312', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 21:31:50', '2018-05-07 21:31:50'),
(1047, 'CHM 335', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 21:31:50', '2018-05-07 21:31:50'),
(1048, 'CHM 350', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 21:31:50', '2018-05-07 21:31:50'),
(1049, 'GES 300', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 21:31:50', '2018-05-07 21:31:50'),
(1050, 'ICH 371', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 21:31:50', '2018-05-07 21:31:50'),
(1051, 'CHM 362', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 21:31:50', '2018-05-07 21:31:50'),
(1052, 'CHM 340', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 3, '1', 'created', '2018-05-07 21:31:50', '2018-05-07 21:31:50'),
(1053, 'SLT 310', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 21:35:01', '2018-05-07 21:35:01'),
(1054, 'SLT 312', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 21:35:01', '2018-05-07 21:35:01');
INSERT INTO `courses` (`id`, `course_code`, `course_name`, `credit_unit`, `school_name`, `faculty_name`, `department_name`, `department_id`, `faculty_id`, `school_id`, `level`, `semester`, `status`, `created_at`, `updated_at`) VALUES
(1055, 'SLT 211', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 21:35:01', '2018-05-07 21:35:01'),
(1056, 'SLT 315', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 21:35:01', '2018-05-07 21:35:01'),
(1057, 'MTH 224', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 21:35:01', '2018-05-07 21:35:01'),
(1058, 'MTH 250', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 3, '2', 'created', '2018-05-07 21:35:01', '2018-05-07 21:35:01'),
(1059, 'BCH 410', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 21:40:42', '2018-05-07 21:40:42'),
(1060, 'CHM 436', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 21:40:42', '2018-05-07 21:40:42'),
(1061, 'BCH 424', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 21:40:42', '2018-05-07 21:40:42'),
(1062, 'BCH 426', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 21:40:42', '2018-05-07 21:40:42'),
(1063, 'SLT 410', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 21:40:42', '2018-05-07 21:40:42'),
(1064, 'CHM 435', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 21:40:42', '2018-05-07 21:40:42'),
(1065, 'GES 400', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 21:40:42', '2018-05-07 21:40:42'),
(1066, 'ICH 477', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 4, '1', 'created', '2018-05-07 21:40:42', '2018-05-07 21:40:42'),
(1067, 'SLT 402', NULL, 9, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 4, '2', 'created', '2018-05-07 21:41:10', '2018-05-07 21:41:10'),
(1068, 'BCH 422', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 21:44:01', '2018-05-07 21:44:01'),
(1069, 'BCH 501', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 21:44:01', '2018-05-07 21:44:01'),
(1070, 'BCH 507', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 21:44:01', '2018-05-07 21:44:01'),
(1071, 'CHM 502', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 21:44:01', '2018-05-07 21:44:01'),
(1072, 'CHM 505', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 21:44:01', '2018-05-07 21:44:01'),
(1073, 'CHM 514', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 21:44:01', '2018-05-07 21:44:01'),
(1074, 'ICH 511', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 21:44:01', '2018-05-07 21:44:01'),
(1075, 'SLT 509', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 5, '1', 'created', '2018-05-07 21:44:01', '2018-05-07 21:44:01'),
(1076, 'BCH 430', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 21:48:38', '2018-05-07 21:48:38'),
(1077, 'BCH 511', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 21:48:38', '2018-05-07 21:48:38'),
(1078, 'BCH 525', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 21:48:38', '2018-05-07 21:48:38'),
(1079, 'CHM 562', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 21:48:38', '2018-05-07 21:48:38'),
(1080, 'SLT 508', NULL, 3, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 21:48:38', '2018-05-07 21:48:38'),
(1081, 'SLT 510', NULL, 2, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 21:48:38', '2018-05-07 21:48:38'),
(1082, 'SLT 511', NULL, 6, 'University of port-harcourt', 'School of science laboratory technology', 'Biochemistry/Chemistry Technology', NULL, NULL, NULL, 5, '2', 'created', '2018-05-07 21:48:38', '2018-05-07 21:48:38'),
(1083, 'GES 100', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechatronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 22:05:01', '2018-05-07 22:05:01'),
(1084, 'GES 102', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechatronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 22:05:01', '2018-05-07 22:05:01'),
(1085, 'CHM 130', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechatronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 22:05:01', '2018-05-07 22:05:01'),
(1086, 'PHY 101', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechatronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 22:05:01', '2018-05-07 22:05:01'),
(1087, 'PHY 102', NULL, 1, 'University of port-harcourt', 'Engineering', 'Mechatronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 22:05:01', '2018-05-07 22:05:01'),
(1088, 'MTH 110', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechatronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 22:05:01', '2018-05-07 22:05:01'),
(1089, 'MTH 120', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechatronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 22:05:01', '2018-05-07 22:05:01'),
(1090, 'ENG 101', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechatronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 22:05:01', '2018-05-07 22:05:01'),
(1091, 'GES 101', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechatronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 22:07:29', '2018-05-07 22:07:29'),
(1092, 'GES 103', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechatronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 22:07:29', '2018-05-07 22:07:29'),
(1093, 'CHM 131', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechatronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 22:07:29', '2018-05-07 22:07:29'),
(1094, 'PHY 112', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechatronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 22:07:29', '2018-05-07 22:07:29'),
(1095, 'PHY 103', NULL, 1, 'University of port-harcourt', 'Engineering', 'Mechatronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 22:07:29', '2018-05-07 22:07:29'),
(1096, 'MTH 124', NULL, 3, 'University of port-harcourt', 'Engineering', 'Mechatronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 22:07:29', '2018-05-07 22:07:29'),
(1097, 'ENG 102', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechatronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 22:07:29', '2018-05-07 22:07:29'),
(1098, 'ENG 103', NULL, 1, 'University of port-harcourt', 'Engineering', 'Mechatronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 22:07:29', '2018-05-07 22:07:29'),
(1099, 'ENG 104', NULL, 2, 'University of port-harcourt', 'Engineering', 'Mechatronics Engineering', NULL, NULL, NULL, 1, '1', 'created', '2018-05-07 22:07:29', '2018-05-07 22:07:29');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `years` int(11) NOT NULL,
  `semesters` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_name`, `faculty_name`, `school_name`, `faculty_id`, `school_id`, `years`, `semesters`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Chemical Engineering', 'Engineering', 'University of port-harcourt', NULL, NULL, 5, '2', 'created', '2018-02-24 04:24:47', '2018-04-25 13:27:25'),
(5, 'Civil Engineering', 'Engineering', 'University of port-harcourt', NULL, NULL, 5, '2', 'created', '2018-03-17 11:55:54', '2018-03-17 11:55:54'),
(6, 'Petroleum Engineering', 'Engineering', 'University of port-harcourt', NULL, NULL, 5, '2', 'created', '2018-04-04 13:03:13', '2018-04-04 13:03:13'),
(12, 'liquor engineering', 'Engineering', 'Havard University', NULL, NULL, 5, '2', 'created', '2018-04-16 17:05:46', '2018-04-16 17:05:46'),
(15, 'Electrical engineering', 'Engineering', 'Delta State University, Abraka', NULL, NULL, 5, '2', 'created', '2018-04-21 15:11:43', '2018-04-21 15:29:29'),
(16, 'Commercial Law', 'Law', 'Afe BaBalola University', NULL, NULL, 3, '2', 'created', '2018-04-22 14:51:52', '2018-04-22 14:52:09'),
(18, 'Microbiology', 'Biological and physical sciences', 'Abia state University, Uturu', NULL, NULL, 4, '2', 'created', '2018-04-23 18:19:31', '2018-04-23 18:19:31'),
(19, 'Biochemistry', 'Biological and physical sciences', 'Abia state University, Uturu', NULL, NULL, 4, '2', 'created', '2018-04-23 18:55:00', '2018-04-23 18:55:00'),
(20, 'Microbiology', 'Sciences', 'University of port-harcourt', NULL, NULL, 4, '2', 'created', '2018-04-23 20:26:41', '2018-04-23 20:26:41'),
(21, 'Animal and Environmental Biology', 'Biological and Physical Sciences', 'Abia state University, Uturu', NULL, NULL, 4, '2', 'created', '2018-04-23 23:12:51', '2018-04-23 23:12:51'),
(22, 'Industrial Chemistry', 'Biological and Physical Sciences', 'Abia state University, Uturu', NULL, NULL, 4, '2', 'created', '2018-04-23 23:13:40', '2018-04-23 23:13:40'),
(23, 'Industrial Physics', 'Biological and Physical Sciences', 'Abia state University, Uturu', NULL, NULL, 4, '2', 'created', '2018-04-23 23:14:15', '2018-04-23 23:14:15'),
(24, 'Mathematics', 'Biological and Physical Sciences', 'Abia state University, Uturu', NULL, NULL, 4, '2', 'created', '2018-04-23 23:14:43', '2018-04-23 23:14:43'),
(26, 'Statistics', 'Biological and Physical Sciences', 'Abia state University, Uturu', NULL, NULL, 4, '2', 'created', '2018-04-23 23:15:47', '2018-04-23 23:15:47'),
(27, 'Plant Science and Biotechnology', 'Biological and Physical Sciences', 'Abia state University, Uturu', NULL, NULL, 4, '2', 'created', '2018-04-23 23:16:50', '2018-04-23 23:16:50'),
(28, 'Animal Science and Fisheries', 'Agriculture and Veterinary Medicine', 'Abia state University, Uturu', NULL, NULL, 4, '2', 'created', '2018-04-24 14:18:47', '2018-04-24 14:18:47'),
(29, 'Crop Production and Protection', 'Agriculture and Veterinary Medicine', 'Abia state University, Uturu', NULL, NULL, 4, '2', 'created', '2018-04-24 14:20:02', '2018-04-24 14:20:02'),
(30, 'Food Science and Technology', 'Agriculture and Veterinary Medicine', 'Abia state University, Uturu', NULL, NULL, 5, '2', 'created', '2018-04-24 14:21:08', '2018-04-24 14:21:08'),
(31, 'Soil Science', 'Agriculture and Veterinary Medicine', 'Abia state University, Uturu', NULL, NULL, 5, '2', 'created', '2018-04-24 14:21:41', '2018-04-24 14:21:41'),
(32, 'Agricultural Economics/Extension', 'Agriculture and Veterinary Medicine', 'Abia state University, Uturu', NULL, NULL, 5, '2', 'created', '2018-04-24 14:22:13', '2018-04-24 14:22:13'),
(33, 'Electronics and Computer Engineering', 'Engineering', 'University of port-harcourt', NULL, NULL, 5, '2', 'created', '2018-04-25 13:28:25', '2018-04-25 13:28:25'),
(34, 'Gas Engineering', 'Engineering', 'University of port-harcourt', NULL, NULL, 5, '2', 'created', '2018-04-25 13:41:19', '2018-04-25 13:41:19'),
(35, 'Mechatronics Engineering', 'Engineering', 'University of port-harcourt', NULL, NULL, 5, '2', 'created', '2018-04-27 02:25:04', '2018-04-27 02:25:04'),
(36, 'Environmental Engineering', 'Engineering', 'University of port-harcourt', NULL, NULL, 5, '2', 'created', '2018-04-27 02:26:00', '2018-04-27 02:26:00'),
(37, 'Microbiology Technology', 'School of science laboratory technology', 'University of port-harcourt', NULL, NULL, 5, '2', 'created', '2018-05-03 12:33:10', '2018-05-07 14:40:26'),
(38, 'Industrial Chemistry/Petrochemical Technology', 'School of science laboratory technology', 'University of port-harcourt', NULL, NULL, 5, '2', 'created', '2018-05-04 11:42:51', '2018-05-07 14:40:39'),
(39, 'P:hysics With Electronics Technology', 'School of science laboratory technology', 'University of port-harcourt', NULL, NULL, 5, '2', 'created', '2018-05-04 11:46:06', '2018-05-07 14:40:54'),
(40, 'Biomedical Technology', 'School of science laboratory technology', 'University of port-harcourt', NULL, NULL, 5, '2', 'created', '2018-05-04 11:49:53', '2018-05-07 14:41:02'),
(41, 'Geology/Mining Technology', 'School of science laboratory technology', 'University of port-harcourt', NULL, NULL, 5, '2', 'created', '2018-05-04 11:51:40', '2018-05-07 14:41:15'),
(42, 'Physics With Production Technology', 'School of science laboratory technology', 'University of port-harcourt', NULL, NULL, 5, '2', 'created', '2018-05-04 11:52:33', '2018-05-07 14:41:36'),
(43, 'Biochemistry/Chemistry Technology', 'School of science laboratory technology', 'University of port-harcourt', NULL, NULL, 5, '2', 'created', '2018-05-04 11:53:45', '2018-05-07 14:41:55'),
(44, 'Electrical/Electronics Engineering', 'Engineering', 'University of port-harcourt', NULL, NULL, 5, '2', 'created', '2018-05-05 09:43:12', '2018-05-05 09:43:12'),
(45, 'Mechanical Engineering', 'Engineering', 'University of port-harcourt', NULL, NULL, 5, '2', 'created', '2018-05-07 12:49:48', '2018-05-07 12:49:48');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int(10) UNSIGNED NOT NULL,
  `faculty_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'added',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `faculty_name`, `school_name`, `school_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Engineering', 'University of port-harcourt', NULL, 'created', '2018-02-20 03:52:05', '2018-04-22 16:02:11'),
(5, 'Engineering', 'University of Abuja', NULL, 'created', '2018-02-23 20:45:31', '2018-02-23 20:45:31'),
(6, 'Engineering', 'University of Agriculture, Abeokuta', NULL, 'created', '2018-02-23 20:51:54', '2018-02-23 20:51:54'),
(7, 'Engineering', 'University of Calabar', NULL, 'created', '2018-02-23 20:55:36', '2018-02-23 20:55:36'),
(8, 'Management', 'University of Abuja', NULL, 'created', '2018-02-24 03:09:08', '2018-02-24 03:09:08'),
(9, 'Engineering', 'University of Ibadan', NULL, 'created', '2018-02-24 04:05:22', '2018-02-24 04:05:22'),
(10, 'Engineering', 'University of Ilorin', NULL, 'created', '2018-02-24 04:08:10', '2018-02-24 04:08:10'),
(11, 'Health Sciences', 'University of port-harcourt', NULL, 'created', '2018-02-27 18:31:40', '2018-02-27 18:31:40'),
(12, 'Law', 'University of port-harcourt', NULL, 'created', '2018-04-15 17:38:04', '2018-04-21 13:44:09'),
(13, 'Management', 'University of port-harcourt', NULL, 'created', '2018-04-15 17:39:33', '2018-04-15 17:39:33'),
(14, 'Engineering', 'Havard University', NULL, 'created', '2018-04-16 17:05:00', '2018-04-16 17:05:00'),
(16, 'Engineering', 'Delta State University, Abraka', NULL, 'created', '2018-04-21 15:10:46', '2018-04-21 15:10:46'),
(17, 'Law', 'Afe BaBalola University', NULL, 'created', '2018-04-22 14:50:52', '2018-04-22 14:50:52'),
(18, 'Engineering', 'Afe BaBalola University', NULL, 'created', '2018-04-22 14:51:13', '2018-04-22 14:51:13'),
(20, 'Sciences', 'University of port-harcourt', NULL, 'created', '2018-04-23 20:25:56', '2018-04-23 20:25:56'),
(21, 'Agriculture and Veterinary Medicine', 'Abia state University, Uturu', NULL, 'created', '2018-04-23 23:02:51', '2018-04-23 23:02:51'),
(22, 'Business Administration', 'Abia state University, Uturu', NULL, 'created', '2018-04-23 23:03:50', '2018-04-23 23:03:50'),
(23, 'Biological and Physical Sciences', 'Abia state University, Uturu', NULL, 'created', '2018-04-23 23:04:29', '2018-04-23 23:04:29'),
(24, 'Engineering and Environmental Sciences', 'Abia state University, Uturu', NULL, 'created', '2018-04-23 23:05:13', '2018-04-23 23:05:13'),
(25, 'Humanities and Social Sciences', 'Abia state University, Uturu', NULL, 'created', '2018-04-23 23:06:28', '2018-04-23 23:06:28'),
(26, 'Law', 'Abia state University, Uturu', NULL, 'created', '2018-04-23 23:06:41', '2018-04-23 23:06:41'),
(27, 'Basic Medical Sciences', 'Abia state University, Uturu', NULL, 'created', '2018-04-23 23:07:04', '2018-04-23 23:07:04'),
(29, 'Education', 'Abia state University, Uturu', NULL, 'created', '2018-04-23 23:07:39', '2018-04-23 23:07:39'),
(31, 'School of science laboratory technology', 'University of port-harcourt', NULL, 'created', '2018-05-03 12:30:50', '2018-05-03 12:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `country` varchar(225) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `grade` varchar(100) DEFAULT NULL,
  `grade_point` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `country`, `country_id`, `grade`, `grade_point`) VALUES
(1, 'Nigeria', NULL, 'A', '5'),
(2, 'Nigeria', NULL, 'B', '4'),
(3, 'Nigeria', NULL, 'C', '3'),
(4, 'Nigeria', NULL, 'D', '2'),
(5, 'Nigeria', NULL, 'E', '1'),
(6, 'Nigeria', NULL, 'F', '0');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2018_01_20_184428_create_roles_table', 1),
(3, '2018_01_20_184555_create_schools_table', 1),
(4, '2018_01_20_184724_create_departments_table', 1),
(5, '2018_01_20_184750_create_courses_table', 1),
(6, '2018_01_20_184836_create_results_table', 1),
(7, '2018_01_20_184853_create_faculties_table', 1),
(8, '2018_03_08_151624_create_user_logs_table', 2),
(12, '2018_04_11_120714_create_target_c_g_p_as_table', 4),
(13, '2018_04_09_115239_create_targets_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `course_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` varchar(226) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit_unit` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `user_id`, `course_id`, `course_code`, `grade`, `credit_unit`, `level`, `semester`, `score`, `status`, `created_at`, `updated_at`) VALUES
(212, 17, 48, 'GES 100', 'A', 3, 1, '1', NULL, 'created', '2018-04-11 19:53:36', '2018-04-11 19:53:36'),
(213, 17, 49, 'GES 102', 'B', 2, 1, '1', NULL, 'created', '2018-04-11 19:53:36', '2018-04-11 19:53:36'),
(214, 17, 50, 'CHM 130', 'C', 3, 1, '1', NULL, 'created', '2018-04-11 19:53:36', '2018-04-11 19:53:36'),
(215, 17, 51, 'PHY 101', 'C', 3, 1, '1', NULL, 'created', '2018-04-11 19:53:37', '2018-04-11 19:53:37'),
(216, 17, 52, 'PHY 102', 'E', 1, 1, '1', NULL, 'created', '2018-04-11 19:53:37', '2018-04-11 19:53:37'),
(217, 17, 53, 'MTH 110', 'B', 3, 1, '1', NULL, 'created', '2018-04-11 19:53:37', '2018-04-11 19:53:37'),
(218, 17, 54, 'MTH 120', 'A', 3, 1, '1', NULL, 'created', '2018-04-11 19:53:37', '2018-04-11 19:53:37'),
(219, 17, 55, 'ENG 101', 'C', 2, 1, '1', NULL, 'created', '2018-04-11 19:53:37', '2018-04-11 19:53:37'),
(220, 17, 56, 'GES101', 'B', 2, 1, '2', NULL, 'created', '2018-04-23 18:28:54', '2018-04-23 18:28:54'),
(221, 17, 57, 'GES 103', 'B', 2, 1, '2', NULL, 'created', '2018-04-23 18:28:54', '2018-04-23 18:28:54'),
(222, 17, 58, 'CHM 131', 'C', 3, 1, '2', NULL, 'created', '2018-04-23 18:28:54', '2018-04-23 18:28:54'),
(223, 17, 59, 'CHM 132', 'C', 3, 1, '2', NULL, 'created', '2018-04-23 20:29:31', '2018-04-23 20:29:31'),
(224, 17, 60, 'PHY112', 'C', 3, 1, '2', NULL, 'created', '2018-04-23 20:29:31', '2018-04-23 20:29:31'),
(225, 17, 61, 'PHY 103', 'B', 1, 1, '2', NULL, 'created', '2018-04-23 20:29:31', '2018-04-23 20:29:31'),
(226, 17, 62, 'MTH 124', 'E', 3, 1, '2', NULL, 'created', '2018-04-23 20:29:31', '2018-04-23 20:29:31'),
(227, 17, 63, 'ENG 102', 'C', 2, 1, '2', NULL, 'created', '2018-04-23 20:29:31', '2018-04-23 20:29:31'),
(228, 17, 64, 'ENG 103', 'D', 1, 1, '2', NULL, 'created', '2018-04-23 20:29:31', '2018-04-23 20:29:31'),
(229, 17, 65, 'ENG 104', 'C', 2, 1, '2', NULL, 'created', '2018-04-23 20:29:31', '2018-04-23 20:29:31'),
(230, 42, 279, 'PHY 101', 'A', 3, 1, '1', NULL, 'created', '2018-04-24 16:01:08', '2018-04-24 16:01:08'),
(231, 17, 66, 'PHY 216', 'C', 3, 2, '1', NULL, 'created', '2018-04-24 16:08:38', '2018-04-24 16:08:38'),
(232, 17, 67, 'CHM 260', 'D', 3, 2, '1', NULL, 'created', '2018-04-24 16:08:38', '2018-04-24 16:08:38'),
(233, 17, 68, 'ENG 201', 'D', 3, 2, '1', NULL, 'created', '2018-04-24 16:08:38', '2018-04-24 16:08:38'),
(234, 17, 69, 'ENG 202', 'C', 2, 2, '1', NULL, 'created', '2018-04-24 16:08:38', '2018-04-24 16:08:38'),
(235, 46, 153, 'GES 100', 'A', 3, 1, '1', NULL, 'created', '2018-04-26 13:45:25', '2018-04-26 13:45:25'),
(236, 46, 154, 'GES 102', 'C', 2, 1, '1', NULL, 'created', '2018-04-26 13:45:25', '2018-04-26 13:45:25'),
(237, 46, 155, 'CHM 130', 'D', 3, 1, '1', NULL, 'created', '2018-04-26 13:45:25', '2018-04-26 13:45:25'),
(238, 46, 156, 'PHY 101', 'C', 3, 1, '1', NULL, 'created', '2018-04-26 13:45:25', '2018-04-26 13:45:25'),
(239, 47, 153, 'GES 100', 'C', 3, 1, '1', NULL, 'created', '2018-04-26 13:56:41', '2018-04-26 13:56:41'),
(240, 47, 154, 'GES 102', 'C', 2, 1, '1', NULL, 'created', '2018-04-26 13:56:41', '2018-04-26 13:56:41'),
(241, 47, 155, 'CHM 130', 'C', 3, 1, '1', NULL, 'created', '2018-04-26 13:56:41', '2018-04-26 13:56:41'),
(242, 47, 156, 'PHY 101', 'A', 3, 1, '1', NULL, 'created', '2018-04-26 13:56:41', '2018-04-26 13:56:41'),
(243, 47, 157, 'PHY 102', 'C', 1, 1, '1', NULL, 'created', '2018-04-26 13:56:41', '2018-04-26 13:56:41'),
(244, 47, 158, 'MTH 110', 'C', 3, 1, '1', NULL, 'created', '2018-04-26 13:56:41', '2018-04-26 13:56:41'),
(245, 47, 159, 'MTH 120', 'D', 3, 1, '1', NULL, 'created', '2018-04-26 13:56:41', '2018-04-26 13:56:41'),
(246, 47, 160, 'ENG 101', 'F', 2, 1, '1', NULL, 'created', '2018-04-26 13:56:41', '2018-04-26 13:56:41'),
(247, 47, 161, 'GES 102', 'B', 2, 1, '2', NULL, 'created', '2018-04-26 13:56:41', '2018-04-26 13:56:41'),
(248, 47, 162, 'GES 103', 'B', 2, 1, '2', NULL, 'created', '2018-04-26 13:56:41', '2018-04-26 13:56:41'),
(249, 47, 163, 'CHM 131', 'E', 3, 1, '2', NULL, 'created', '2018-04-26 13:56:41', '2018-04-26 13:56:41'),
(250, 47, 164, 'PHY 112', 'C', 3, 1, '2', NULL, 'created', '2018-04-26 13:56:41', '2018-04-26 13:56:41'),
(251, 47, 165, 'PHY 103', 'B', 1, 1, '2', NULL, 'created', '2018-04-26 13:56:41', '2018-04-26 13:56:41'),
(252, 47, 166, 'MTH 124', 'B', 3, 1, '2', NULL, 'created', '2018-04-26 13:56:41', '2018-04-26 13:56:41'),
(253, 47, 168, 'ENG 103', 'B', 1, 1, '2', NULL, 'created', '2018-04-26 13:56:41', '2018-04-26 13:56:41'),
(254, 47, 169, 'ENG 104', 'B', 2, 1, '2', NULL, 'created', '2018-04-26 13:56:41', '2018-04-26 13:56:41'),
(255, 47, 167, 'ENG 102', 'D', 2, 1, '2', NULL, 'created', '2018-04-26 16:45:11', '2018-04-26 16:45:11'),
(256, 47, 170, 'GLY 201', 'A', 2, 2, '1', NULL, 'created', '2018-04-26 16:47:02', '2018-04-26 16:47:02'),
(257, 47, 171, 'PHY 216', 'E', 3, 2, '1', NULL, 'created', '2018-04-26 16:47:02', '2018-04-26 16:47:02'),
(258, 47, 172, 'ENG 201', 'C', 3, 2, '1', NULL, 'created', '2018-04-26 16:47:02', '2018-04-26 16:47:02'),
(259, 47, 173, 'ENG 202', 'A', 2, 2, '1', NULL, 'created', '2018-04-26 16:47:02', '2018-04-26 16:47:02'),
(260, 47, 174, 'ENG 203', 'A', 3, 2, '1', NULL, 'created', '2018-04-26 16:47:02', '2018-04-26 16:47:02'),
(261, 47, 175, 'ENG 204', 'B', 2, 2, '1', NULL, 'created', '2018-04-26 16:47:02', '2018-04-26 16:47:02'),
(262, 47, 176, 'ENG 210', 'A', 3, 2, '1', NULL, 'created', '2018-04-26 16:47:02', '2018-04-26 16:47:02'),
(263, 47, 177, 'ENG 213', 'B', 2, 2, '1', NULL, 'created', '2018-04-26 16:47:02', '2018-04-26 16:47:02'),
(264, 50, 75, 'GES 100', 'B', 3, 1, '1', NULL, 'created', '2018-04-30 12:13:34', '2018-04-30 12:13:34'),
(265, 50, 76, 'GES 102', 'A', 2, 1, '1', NULL, 'created', '2018-04-30 12:13:34', '2018-04-30 12:13:34'),
(266, 50, 77, 'CHM 130', 'E', 3, 1, '1', NULL, 'created', '2018-04-30 12:13:34', '2018-04-30 12:13:34'),
(267, 50, 78, 'PHY 101', 'B', 3, 1, '1', NULL, 'created', '2018-04-30 12:13:34', '2018-04-30 12:13:34'),
(268, 50, 79, 'PHY 102', 'B', 1, 1, '1', NULL, 'created', '2018-04-30 12:13:34', '2018-04-30 12:13:34'),
(269, 50, 80, 'MTH 120', 'F', 3, 1, '1', NULL, 'created', '2018-04-30 12:13:34', '2018-04-30 12:13:34'),
(270, 50, 81, 'MTH 110', 'B', 3, 1, '1', NULL, 'created', '2018-04-30 12:13:34', '2018-04-30 12:13:34'),
(271, 50, 82, 'ENG 101', 'B', 2, 1, '1', NULL, 'created', '2018-04-30 12:13:34', '2018-04-30 12:13:34'),
(272, 50, 83, 'GES 101', 'A', 2, 1, '2', NULL, 'created', '2018-04-30 12:15:05', '2018-04-30 12:15:05'),
(273, 50, 84, 'GES 103', 'B', 2, 1, '2', NULL, 'created', '2018-04-30 12:15:05', '2018-04-30 12:15:05'),
(274, 50, 85, 'CHM 131', 'B', 3, 1, '2', NULL, 'created', '2018-04-30 12:15:05', '2018-04-30 12:15:05'),
(275, 50, 86, 'PHY 112', 'B', 3, 1, '2', NULL, 'created', '2018-04-30 12:15:05', '2018-04-30 12:15:05'),
(276, 50, 87, 'PHY 103', 'B', 1, 1, '2', NULL, 'created', '2018-04-30 12:15:05', '2018-04-30 12:15:05'),
(277, 50, 88, 'MTH 124', 'B', 3, 1, '2', NULL, 'created', '2018-04-30 12:15:05', '2018-04-30 12:15:05'),
(278, 50, 89, 'ENG 102', 'B', 2, 1, '2', NULL, 'created', '2018-04-30 12:15:05', '2018-04-30 12:15:05'),
(279, 50, 90, 'ENG 103', 'C', 1, 1, '2', NULL, 'created', '2018-04-30 12:15:05', '2018-04-30 12:15:05'),
(280, 50, 91, 'ENG 104', 'B', 2, 1, '2', NULL, 'created', '2018-04-30 12:15:05', '2018-04-30 12:15:05'),
(281, 50, 92, 'PHY 216', 'D', 3, 2, '1', NULL, 'created', '2018-04-30 12:15:54', '2018-04-30 12:15:54'),
(282, 50, 93, 'ENG 201', 'B', 3, 2, '1', NULL, 'created', '2018-04-30 12:15:54', '2018-04-30 12:15:54'),
(283, 50, 94, 'ENG 202', 'A', 2, 2, '1', NULL, 'created', '2018-04-30 12:15:54', '2018-04-30 12:15:54'),
(284, 50, 95, 'ENG 203', 'B', 3, 2, '1', NULL, 'created', '2018-04-30 12:15:54', '2018-04-30 12:15:54'),
(285, 50, 96, 'ENG 204', 'B', 2, 2, '1', NULL, 'created', '2018-04-30 12:15:54', '2018-04-30 12:15:54'),
(286, 50, 97, 'ENG 210', 'D', 3, 2, '1', NULL, 'created', '2018-04-30 12:15:54', '2018-04-30 12:15:54'),
(287, 50, 98, 'ENG 213', 'A', 2, 2, '1', NULL, 'created', '2018-04-30 12:15:54', '2018-04-30 12:15:54'),
(288, 50, 106, 'ENG 212', 'B', 1, 2, '1', NULL, 'created', '2018-04-30 12:15:54', '2018-04-30 12:15:54'),
(289, 50, 99, 'CHM 240', 'A', 3, 2, '2', NULL, 'created', '2018-04-30 12:16:39', '2018-04-30 12:16:39'),
(290, 50, 100, 'ENG 206', 'C', 3, 2, '2', NULL, 'created', '2018-04-30 12:16:39', '2018-04-30 12:16:39'),
(291, 50, 101, 'ENG 207', 'B', 2, 2, '2', NULL, 'created', '2018-04-30 12:16:39', '2018-04-30 12:16:39'),
(292, 50, 102, 'ENG 208', 'E', 2, 2, '2', NULL, 'created', '2018-04-30 12:16:39', '2018-04-30 12:16:39'),
(293, 50, 103, 'ENG 209', 'C', 3, 2, '2', NULL, 'created', '2018-04-30 12:16:39', '2018-04-30 12:16:39'),
(294, 50, 104, 'ENG 205', 'B', 1, 2, '2', NULL, 'created', '2018-04-30 12:16:39', '2018-04-30 12:16:39'),
(295, 50, 105, 'ENG 211', 'B', 1, 2, '2', NULL, 'created', '2018-04-30 12:16:39', '2018-04-30 12:16:39'),
(296, 50, 107, 'CEG 231', 'B', 2, 2, '2', NULL, 'created', '2018-04-30 12:16:39', '2018-04-30 12:16:39'),
(297, 50, 108, 'ENG 301', 'E', 3, 3, '1', NULL, 'created', '2018-04-30 12:18:10', '2018-04-30 12:18:10'),
(298, 50, 109, 'ENG 302', 'C', 2, 3, '1', NULL, 'created', '2018-04-30 12:18:10', '2018-04-30 12:18:10'),
(299, 50, 110, 'CEG 311', 'E', 3, 3, '1', NULL, 'created', '2018-04-30 12:18:10', '2018-04-30 12:18:10'),
(300, 50, 111, 'CEG 321', 'C', 3, 3, '1', NULL, 'created', '2018-04-30 12:18:10', '2018-04-30 12:18:10'),
(301, 50, 112, 'CEG 323', 'C', 2, 3, '1', NULL, 'created', '2018-04-30 12:18:10', '2018-04-30 12:18:10'),
(302, 50, 113, 'CEG 332', 'B', 2, 3, '1', NULL, 'created', '2018-04-30 12:18:10', '2018-04-30 12:18:10'),
(303, 50, 114, 'CEG 351', 'A', 2, 3, '1', NULL, 'created', '2018-04-30 12:18:10', '2018-04-30 12:18:10'),
(304, 50, 115, 'CEG 352', 'A', 2, 3, '1', NULL, 'created', '2018-04-30 12:18:10', '2018-04-30 12:18:10'),
(305, 50, 116, 'CEG 381', 'A', 1, 3, '1', NULL, 'created', '2018-04-30 12:18:10', '2018-04-30 12:18:10'),
(306, 50, 117, 'GES 300', 'B', 2, 3, '2', NULL, 'created', '2018-04-30 12:19:01', '2018-04-30 12:19:01'),
(307, 50, 118, 'ENG 303', 'C', 3, 3, '2', NULL, 'created', '2018-04-30 12:19:01', '2018-04-30 12:19:01'),
(308, 50, 119, 'CEG 312', 'A', 2, 3, '2', NULL, 'created', '2018-04-30 12:19:01', '2018-04-30 12:19:01'),
(309, 50, 120, 'CEG 333', 'B', 3, 3, '2', NULL, 'created', '2018-04-30 12:19:01', '2018-04-30 12:19:01'),
(310, 50, 121, 'CEG 341', 'A', 3, 3, '2', NULL, 'created', '2018-04-30 12:19:01', '2018-04-30 12:19:01'),
(311, 50, 122, 'CEG 342', 'B', 3, 3, '2', NULL, 'created', '2018-04-30 12:19:01', '2018-04-30 12:19:01'),
(312, 50, 123, 'CEG 353', 'C', 3, 3, '2', NULL, 'created', '2018-04-30 12:19:01', '2018-04-30 12:19:01'),
(313, 50, 124, 'CEG 382', 'A', 1, 3, '2', NULL, 'created', '2018-04-30 12:19:01', '2018-04-30 12:19:01'),
(314, 50, 125, 'CEG 361', 'A', 2, 3, '2', NULL, 'created', '2018-04-30 12:19:01', '2018-04-30 12:19:01'),
(315, 17, 153, 'GES 100', 'B', 3, 1, '1', NULL, 'created', '2018-04-30 21:56:06', '2018-04-30 21:56:06'),
(316, 17, 154, 'GES 102', 'C', 2, 1, '1', NULL, 'created', '2018-05-08 13:55:30', '2018-05-08 13:55:30'),
(317, 17, 155, 'CHM 130', 'A', 3, 1, '1', NULL, 'created', '2018-05-08 13:55:30', '2018-05-08 13:55:30'),
(318, 17, 156, 'PHY 101', 'E', 3, 1, '1', NULL, 'created', '2018-05-08 13:56:25', '2018-05-08 13:56:25'),
(319, 17, 157, 'PHY 102', 'E', 1, 1, '1', NULL, 'created', '2018-05-08 13:56:25', '2018-05-08 13:56:25'),
(320, 17, 158, 'MTH 110', 'E', 3, 1, '1', NULL, 'created', '2018-05-08 13:56:25', '2018-05-08 13:56:25'),
(321, 17, 159, 'MTH 120', 'E', 3, 1, '1', NULL, 'created', '2018-05-08 13:56:25', '2018-05-08 13:56:25'),
(322, 17, 160, 'ENG 101', 'E', 2, 1, '1', NULL, 'created', '2018-05-08 13:56:25', '2018-05-08 13:56:25'),
(323, 17, 161, 'GES 102', 'A', 2, 1, '2', NULL, 'created', '2018-05-25 17:09:33', '2018-05-25 17:09:33'),
(324, 17, 162, 'GES 103', 'A', 2, 1, '2', NULL, 'created', '2018-05-25 17:09:33', '2018-05-25 17:09:33'),
(325, 17, 163, 'CHM 131', 'A', 3, 1, '2', NULL, 'created', '2018-05-25 17:09:33', '2018-05-25 17:09:33'),
(326, 17, 164, 'PHY 112', 'B', 3, 1, '2', NULL, 'created', '2018-05-25 17:09:33', '2018-05-25 17:09:33'),
(327, 17, 165, 'PHY 103', 'A', 1, 1, '2', NULL, 'created', '2018-05-25 17:09:33', '2018-05-25 17:09:33'),
(328, 17, 166, 'MTH 124', 'B', 3, 1, '2', NULL, 'created', '2018-05-25 17:09:33', '2018-05-25 17:09:33'),
(329, 17, 167, 'ENG 102', 'A', 2, 1, '2', NULL, 'created', '2018-05-25 17:09:33', '2018-05-25 17:09:33'),
(330, 17, 168, 'ENG 103', 'C', 1, 1, '2', NULL, 'created', '2018-05-25 17:09:34', '2018-05-25 17:09:34'),
(331, 17, 169, 'ENG 104', 'A', 2, 1, '2', NULL, 'created', '2018-05-25 17:09:34', '2018-05-25 17:09:34'),
(332, 17, 170, 'GLY 201', 'C', 2, 2, '1', NULL, 'created', '2018-05-26 08:49:58', '2018-05-26 08:49:58'),
(333, 17, 171, 'PHY 216', 'D', 3, 2, '1', NULL, 'created', '2018-05-26 08:49:58', '2018-05-26 08:49:58'),
(334, 17, 172, 'ENG 201', 'C', 3, 2, '1', NULL, 'created', '2018-05-26 08:49:58', '2018-05-26 08:49:58'),
(335, 17, 173, 'ENG 202', 'B', 2, 2, '1', NULL, 'created', '2018-05-26 08:49:58', '2018-05-26 08:49:58'),
(336, 17, 174, 'ENG 203', 'A', 3, 2, '1', NULL, 'created', '2018-05-26 08:49:58', '2018-05-26 08:49:58'),
(337, 17, 175, 'ENG 204', 'C', 2, 2, '1', NULL, 'created', '2018-05-26 08:49:58', '2018-05-26 08:49:58'),
(338, 17, 176, 'ENG 210', 'A', 3, 2, '1', NULL, 'created', '2018-05-26 08:49:58', '2018-05-26 08:49:58'),
(339, 17, 177, 'ENG 213', 'E', 2, 2, '1', NULL, 'created', '2018-05-26 08:49:58', '2018-05-26 08:49:58');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_name` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_name` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `sub_admin` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_sub_admin` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `super_admin` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `user_id`, `school_name`, `department_name`, `school_id`, `department_id`, `sub_admin`, `head_sub_admin`, `admin`, `super_admin`, `status`, `created_at`, `updated_at`) VALUES
(5, '22', 'University of port-harcourt', 'Civil Engineering', NULL, NULL, NULL, NULL, NULL, NULL, 'created', '2018-04-20 12:21:24', '2018-04-25 13:33:18'),
(6, '28', 'University of port-harcourt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'created', '2018-04-20 12:21:39', '2018-04-20 13:45:24'),
(8, '17', 'University of port-harcourt', 'Gas Engineering', NULL, NULL, 'yes', NULL, 'yes', 'yes', 'created', '2018-04-20 12:25:30', '2018-04-22 12:16:36'),
(9, '33', 'Delta State University, Abraka', 'Electrical engineering', NULL, NULL, 'yes', NULL, NULL, NULL, 'created', '2018-04-21 15:58:42', '2018-04-21 15:58:42'),
(10, '31', 'Havard University', 'liquor engineering', NULL, NULL, NULL, 'yes', NULL, NULL, 'created', '2018-04-22 12:06:10', '2018-04-22 12:39:47'),
(11, '37', 'University of port-harcourt\r\n', 'Gas Engineering', NULL, NULL, '', '', 'yes', NULL, '', NULL, NULL),
(12, '38', 'University of port-harcourt\r\n', NULL, NULL, NULL, NULL, NULL, 'yes', NULL, '', NULL, NULL),
(13, '39', 'University of port-harcourt\r\n', NULL, NULL, NULL, NULL, NULL, 'yes', NULL, '', NULL, NULL),
(14, '19', 'University of Calabar', NULL, NULL, NULL, NULL, 'yes', NULL, NULL, 'created', '2018-04-23 09:39:04', '2018-04-23 09:39:04'),
(15, '40', 'Abia state University, Uturu', NULL, NULL, NULL, 'yes', 'yes', NULL, NULL, 'created', '2018-04-23 18:15:44', '2018-04-23 18:21:52'),
(16, '32', 'Abia state University, Uturu', NULL, NULL, NULL, 'yes', NULL, NULL, NULL, 'created', '2018-04-23 18:21:47', '2018-04-23 18:21:47'),
(17, '45', 'University of port-harcourt', 'Electronics and Computer Engineering', NULL, NULL, 'yes', NULL, NULL, NULL, 'created', '2018-04-25 13:33:27', '2018-04-25 13:33:27'),
(18, '51', 'University of port-harcourt', NULL, NULL, NULL, NULL, 'yes', NULL, NULL, 'created', '2018-05-03 12:24:39', '2018-05-03 12:24:39');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `school_name` varchar(225) DEFAULT NULL,
  `cgpa_scale` varchar(10) DEFAULT NULL,
  `country` varchar(200) NOT NULL DEFAULT 'Nigeria',
  `country_id` int(11) DEFAULT NULL,
  `school_nickname` varchar(225) DEFAULT NULL,
  `school_logo` varchar(225) DEFAULT NULL,
  `theme_color` varchar(100) DEFAULT NULL,
  `status` varchar(225) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `school_name`, `cgpa_scale`, `country`, `country_id`, `school_nickname`, `school_logo`, `theme_color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'University of Abuja', 'null', 'Nigeria', NULL, 'uniabuja', 'uniabuja.jpg', '#0B3A67', '', '2018-04-22 14:51:28', '2018-04-22 13:51:28'),
(2, 'Federal University of Agriculture, Abeokuta', 'null', 'Nigeria', NULL, 'funaab', 'FUagric_abeokuta.jpg', NULL, '', '2018-04-23 15:37:43', '2018-04-23 19:37:43'),
(3, 'University of Ado-Ekiti', 'null', 'Nigeria', NULL, '', 'ado ekiti.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(4, 'University of Benin', 'null', 'Nigeria', NULL, 'uniben', 'uniben.jpg', 'purple', '', '2018-04-22 14:51:39', '2018-04-22 13:51:39'),
(5, 'University of Calabar', 'null', 'Nigeria', NULL, 'unical', 'unical.jpg', NULL, '', '2018-03-15 16:53:21', '0000-00-00 00:00:00'),
(6, 'University of Education, Ikere-Ekiti', 'null', 'Nigeria', NULL, '', 'College-of-Education-Ikere-Ekiti.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(7, 'University of Ibadan', 'null', 'Nigeria', NULL, 'ui', 'UI.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(8, 'University of Ilorin', 'null', 'Nigeria', NULL, 'uniilorin', 'uniilorin.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(9, 'University of Jos', 'null', 'Nigeria', NULL, '', 'unijos.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(10, 'University of Lagos', 'null', 'Nigeria', NULL, 'unilag', 'unilag.jpg', '#c98294', '', '2018-03-10 13:20:22', '0000-00-00 00:00:00'),
(11, 'University of Maiduguri', 'null', 'Nigeria', NULL, '', 'uni_maid.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(12, 'University of Mkar, Mkar', 'null', 'Nigeria', NULL, '', 'mkar (2).jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(13, 'University of Nigeria', 'null', 'Nigeria', NULL, '', 'unn.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(14, 'University of port-harcourt', '5.0', 'Nigeria', NULL, 'uniport', 'uniport.jpg', '#0B3A67', '', '2018-04-16 01:10:50', '0000-00-00 00:00:00'),
(15, 'University of Technology, Akwa-Ibom', 'null', 'Nigeria', NULL, '', 'Akwa-Ibom-State-University-Akutech.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(16, 'University Of Uyo', 'null', 'Nigeria', NULL, 'uniuyo', 'uniuyo.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(18, 'ABTI-American University of Nigeria', 'null', 'Nigeria', NULL, '', 'america.png', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(19, 'Abubakar Tafawa Balewa University', 'null', 'Nigeria', NULL, '', 'tafawa.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(20, 'Adamawa State University, Mubi', 'null', 'Nigeria', NULL, '', 'adamawa.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(21, 'Adekunle Ajasin University', 'null', 'Nigeria', NULL, '', 'akoko_uni.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(22, 'Ahmadu Bello University', 'null', 'Nigeria', NULL, '', 'Abu_zaria.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(23, 'Ajayi Crowther University, Oyo', 'null', 'Nigeria', NULL, '', 'ajayi_crowther.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(24, 'Ambrose Alli University', 'null', 'Nigeria', NULL, '', 'ekpoma.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(26, 'Bayero University, Kano', 'null', 'Nigeria', NULL, '', 'bayero_uni.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(27, 'Bells University', 'null', 'Nigeria', NULL, '', 'bell.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(28, 'Benson Idahosa University', 'null', 'Nigeria', NULL, 'biu', 'BIU.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(29, 'Bowen University, Iwo', 'null', 'Nigeria', NULL, 'bowen', 'bowen.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(31, 'Covenant University', 'null', 'Nigeria', NULL, 'cu', 'cu.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(32, 'Crawford University,Oye Ekiti', 'null', 'Nigeria', NULL, '', 'craw.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(33, 'Cross River University of Technology', 'null', 'Nigeria', NULL, 'crutech', 'crutech.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(34, 'Delta State University, Abraka', 'null', 'Nigeria', NULL, 'delsu', 'delsu.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(35, 'Ebonyi State University', 'null', 'Nigeria', NULL, '', 'ebonyi_state_uni.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(36, 'Enugu State University of Science & Technology', 'null', 'Nigeria', NULL, '', 'esut.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(37, 'Federal University of Technology, Akure', 'null', 'Nigeria', NULL, 'futa', 'futa.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(38, 'Federal University of Technology, Minna', 'null', 'Nigeria', NULL, 'futminna', 'futminna.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(39, 'Federal University of Technology, Owerri', 'null', 'Nigeria', NULL, 'futo', 'futo.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(40, 'Federal University Of Technology, Yola', 'null', 'Nigeria', NULL, '', 'yola.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(41, 'Gombe state University, Tudun, Wada', 'null', 'Nigeria', NULL, '', 'gombe.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(42, 'Igbinedion University, Okada', 'null', 'Nigeria', NULL, '', 'igbinideon.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(43, 'Imo State University', 'null', 'Nigeria', NULL, '', 'imsu.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(44, 'Joseph Ayo Babalola University', 'null', 'Nigeria', NULL, '', 'joseph_ayo.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(45, 'Katsina State University', 'null', 'Nigeria', NULL, '', 'kastinas.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(46, 'Kogi State University, Anyigba', 'null', 'Nigeria', NULL, '', 'kogi_state_uni.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(47, 'Ladoke Akintola University of Tech.', 'null', 'Nigeria', NULL, '', 'ladoke_akintola.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(48, 'Lagos State University', 'null', 'Nigeria', NULL, '', 'lasu.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(49, 'Lead City University', 'null', 'Nigeria', NULL, '', 'lead.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(50, 'Landmark University', 'null', 'Nigeria', NULL, '', 'landmark.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(51, 'Michael Okpara University', 'null', 'Nigeria', NULL, '', 'micheal_okpara.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(52, 'Nasarrawa State University', 'null', 'Nigeria', NULL, '', 'nasarawa.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(53, 'National Open University of Nigeria', 'null', 'Nigeria', NULL, '', 'noun.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(54, 'Niger Delta University', 'null', 'Nigeria', NULL, '', 'ndu.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(55, 'Nigerian Defence Academy', 'null', 'Nigeria', NULL, '', 'defence.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(56, 'Nnamdi Azikiwe University of Agriculture, Umudike', 'null', 'Nigeria', NULL, '', 'unizik.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(57, 'Obafemi Awolowo University, ile-ife', 'null', 'Nigeria', NULL, 'oau', 'oau.jpg', NULL, '', '2018-04-21 15:59:34', '0000-00-00 00:00:00'),
(58, 'Olabisi Onabanjo University, Ago-Iwoye', 'null', 'Nigeria', NULL, '', 'olabisi.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(59, 'Osun State University', 'null', 'Nigeria', NULL, '', 'osun.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(60, 'pan African University, Lekki', 'null', 'Nigeria', NULL, '', 'pan (2).jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(61, 'plateau State University', 'null', 'Nigeria', NULL, '', 'Plateau-State-University-PLASU-logo-480x534.png', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(62, 'Redeemer’s University', 'null', 'Nigeria', NULL, '', 'redeeemers.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(63, 'Renaissance University, Enugu', 'null', 'Nigeria', NULL, '', 'renosa.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(64, 'Rivers State University of Science and Technology', 'null', 'Nigeria', NULL, 'ust', 'ust.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(65, 'Salem University, Lokoja', 'null', 'Nigeria', NULL, '', 'salem.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(66, 'St. paul’s University College, Awka', 'null', 'Nigeria', NULL, '', 'paul_uni.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(68, 'Tai Solarin University of Education, Ijebu-Ode', 'null', 'Nigeria', NULL, '', 'solarin.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(69, 'Usmanu Danfodiyo University, Sokoto', 'null', 'Nigeria', NULL, '', 'usman_danfodoi.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(70, 'Wesley University, Ondo', 'null', 'Nigeria', NULL, '', 'wesley.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(71, 'Anambra State University, Anambra', 'null', 'Nigeria', NULL, '', 'Anambra.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(72, 'Abia State polytechnic', 'null', 'Nigeria', NULL, '', 'abia_poly_abia.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(73, 'Adamawa State polytechnic, Yola', 'null', 'Nigeria', NULL, '', 'adam.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(74, 'Akanu Ibiam Federal polytechnic, Unwana', 'null', 'Nigeria', NULL, '', 'akanu_ibiam_poly.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(75, 'Allover central polytechnic, Sango-Ota Ogun State', 'null', 'Nigeria', NULL, '', 'allover.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(76, 'Akwa Ibom State polytechnic', 'null', 'Nigeria', NULL, '', 'akwa-ibom_poly.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(77, 'Auchi polytechnic, Auchi', 'null', 'Nigeria', NULL, '', 'auchi.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(78, 'Dorben polytechnic (formerly Abuja School of Accountancy and Computer Studies)', 'null', 'Nigeria', NULL, '', 'dorben_poly.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(79, 'Delta state polytechnic, Ozoro', 'null', 'Nigeria', NULL, '', 'delta_poly_ozoro.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(80, 'Federal polytechnic, Ado – Ekiti', 'null', 'Nigeria', NULL, '', 'fed_poly_ado-ekiti.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(81, 'Federal polytechnic Offa', 'null', 'Nigeria', NULL, '', 'fed-poly_offa.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(82, 'Federal polytechnic Bida', 'null', 'Nigeria', NULL, '', 'fed_poly_bida.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(83, 'Federal polytechnic, Bauchi', 'null', 'Nigeria', NULL, '', 'fed_poly_bauchi.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(84, 'Federal polytechnic, Idah', 'null', 'Nigeria', NULL, '', 'fed_poly_idah.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(85, 'Federal polytechnic, Ilaro', 'null', 'Nigeria', NULL, '', 'fed_poly_ilaro.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(86, 'Federal polytechnic, Damaturu', 'null', 'Nigeria', NULL, '', 'damaturu.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(87, 'Federal polytechnic, Nassarawa', 'null', 'Nigeria', NULL, '', 'fed_poly_nasawara.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(88, 'Federal polytechnic, Mubi', 'null', 'Nigeria', NULL, '', 'fed_poly_mubi.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(89, 'Federal polytechnic, Nekede', '5.0', 'Nigeria', NULL, 'nekede', 'fed_poly_nekede.jpg', NULL, '', '2018-04-21 15:50:39', '0000-00-00 00:00:00'),
(90, 'Federal polytechnic, Oko', 'null', 'Nigeria', NULL, '', 'fed_poly_oko.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(91, 'Federal polytechnic, Ede', 'null', 'Nigeria', NULL, '', 'fed_poly_ede.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(92, 'Federal polytechnic, Birnin-Kebbi', 'null', 'Nigeria', NULL, '', 'the_poly_kebbi_benini_kebbi.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(93, 'Federal coll. of Animal health & production Tech., Ibadan', 'null', 'Nigeria', NULL, '', 'coll.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(94, 'Gateway polytechnic Saapade', 'null', 'Nigeria', NULL, '', 'saapade.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(95, 'Hussaini Adamu Federal polytechnic, kazaure', 'null', 'Nigeria', NULL, '', 'hu.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(96, 'Institute of Management Technology, Enugu', 'null', 'Nigeria', NULL, '', 'imt.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(97, 'Kaduna polytechnic', 'null', 'Nigeria', NULL, 'kadpoly', 'kaduna_poly.jpg', NULL, '', '2018-04-22 18:33:02', '2018-04-22 17:33:02'),
(98, 'Kano State polytechnic, Kano', 'null', 'Nigeria', NULL, '', 'kano_poly.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(99, 'Kwara State polytechnic', 'null', 'Nigeria', NULL, '', 'kwara_state_poly.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(100, 'Lagos City polytechnic', 'null', 'Nigeria', NULL, '', 'lagcc.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(102, 'Lagos State polytechnic', 'null', 'Nigeria', NULL, '', 'lagos_poly.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(103, 'Niger State polytechnic, Zungeru', 'null', 'Nigeria', NULL, '', 'ngs.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(104, 'Nigerian Coll. of Aviation Tech., Zaira', 'null', 'Nigeria', NULL, '', 'ncat.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(106, 'Moshood Abiola polytechnic, Abeokuta', 'null', 'Nigeria', NULL, '', 'moshood_abiola_poly.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(107, 'Nuhu Bamalli polytechnic, Zaria, Kaduna State', 'null', 'Nigeria', NULL, '', 'nuhub.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(108, 'Osun State College of Technology, Esa-Oke', 'null', 'Nigeria', NULL, '', 'osco.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(109, 'Osun State polytechnic, Iree', 'null', 'Nigeria', NULL, '', 'osun_poly_iree.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(110, 'Ramat polytechnic, Maiduguri', 'null', 'Nigeria', NULL, '', 'ramat_poly_maiduguiri.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(111, 'River State polytechnic, Bori', 'null', 'Nigeria', NULL, NULL, 'rivers_poly_bori.jpg', NULL, '', '2018-04-23 09:43:59', '2018-04-23 08:43:59'),
(112, 'Rufus Giwa polytechnic, Owo', 'null', 'Nigeria', NULL, '', 'rufus_giwa_poly.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(113, 'Shaka polytechnic', 'null', 'Nigeria', NULL, '', 'shak.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(114, 'The polytechnic, Ibadan', 'null', 'Nigeria', NULL, '', 'ibadan_poly_sango.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(115, 'Yaba College of Tech.', 'null', 'Nigeria', NULL, '', 'yabat.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(116, 'Adeniran Ogunsanya College of Education', 'null', 'Nigeria', NULL, '', 'adeniran.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(117, 'Adeyemi College of Education, Ondo', 'null', 'Nigeria', NULL, '', 'adeyem.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(118, 'College of Education, Agbor', 'null', 'Nigeria', NULL, '', 'delta-state-college-of-education-agbor.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(119, 'College of Education, Afaha-Nsit', 'null', 'Nigeria', NULL, '', 'afaha.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(120, 'College of Education, Akwanga', 'null', 'Nigeria', NULL, '', 'akwanga.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(121, 'College of Education, Ekiadolor', 'null', 'Nigeria', NULL, '', 'ekwid.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(122, 'College of Education, Ikere Ekiti', 'null', 'Nigeria', NULL, '', '45417ekiti.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(124, 'College of Education, Zuba', 'null', 'Nigeria', NULL, '', 'zuba.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(125, 'College of Education, Oro Kwara State', 'null', 'Nigeria', NULL, '', 'oro.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(126, 'College of Education, Azare', 'null', 'Nigeria', NULL, '', 'azare.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(127, 'College of Education, Warri', 'null', 'Nigeria', NULL, '', 'colw.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(130, 'College of Education, Gindiri', 'null', 'Nigeria', NULL, '', 'grindi.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(133, 'Federal College of Education, Zaira', 'null', 'Nigeria', NULL, '', 'fcez.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(134, 'Federal College of Education, Okene', 'null', 'Nigeria', NULL, '', 'okene.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(135, 'Federal College of Education, Akoka', 'null', 'Nigeria', NULL, '', 'akoka (2).jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(136, 'Federal College of Education, Omoku', 'null', 'Nigeria', NULL, '', 'fcetomoku.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(137, 'Federal College of Education (Special), Oyo', 'null', 'Nigeria', NULL, '', 'spec.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(139, 'Federal College of Education (Technical) Gombe', 'null', 'Nigeria', NULL, '', 'fceGombe.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(140, 'Federal College of Education, Obudu', 'null', 'Nigeria', NULL, '', 'fceObudu.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(141, 'Federal College of Education, pankshin', 'null', 'Nigeria', NULL, '', 'pashkin.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(142, 'Federal College of Education, (Technical) Bich', 'null', 'Nigeria', NULL, '', 'bichi (2).jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(143, 'Federal College of Education (Technical) Gusau', 'null', 'Nigeria', NULL, '', 'gsau.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(144, 'Federal College of Education, Yola', 'null', 'Nigeria', NULL, '', 'fceyola.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(146, 'Kwara State College of Education', 'null', 'Nigeria', NULL, '', 'kstate.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(147, 'National Teachers Institute, kaduna', 'null', 'Nigeria', NULL, '', 'nti.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(148, 'Nwafor Orizu College of Education', 'null', 'Nigeria', NULL, '', 'NWAFOR ORIZU COLLEGE OF EDUCATION.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(149, 'Osun State College of Education, Ilesa', 'null', 'Nigeria', NULL, '', 'ossu.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(153, 'Abia state University, Uturu', 'null', 'Nigeria', NULL, 'absu', 'Abia_State_University_logo.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(154, 'Abraham Adesanya Polytechnic', 'null', 'Nigeria', NULL, '', 'abraham_adesanya_poly.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(155, 'Afe BaBalola University', 'null', 'Nigeria', NULL, 'afbuad', 'afbuad.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(156, 'Babcock University', 'null', 'Nigeria', NULL, '', 'babcock.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(157, 'Evangel Unversity,Akaeze', 'null', 'Nigeria', NULL, '', 'akaeze_uni.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(158, 'Benue State polytechnic', 'null', 'Nigeria', NULL, '', 'benue_poly.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(159, 'Best Solution Polytechnic', 'null', 'Nigeria', NULL, '', 'best_poly.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(160, 'Benue State University', 'null', 'Nigeria', NULL, 'bsu', 'bsu.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(161, 'Caleb Unversity', 'null', 'Nigeria', NULL, '', 'caleb_uni.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(162, 'Convenant Polytechnic, Aba', 'null', 'Nigeria', NULL, '', 'convenant_poly_aba.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(163, 'Cresent Unversity, Abeokuta', 'null', 'Nigeria', NULL, '', 'cresent_uni.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(164, 'Delta state Polytechnic, Oghara', 'null', 'Nigeria', NULL, '', 'delta_poly_oghara.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(165, 'Federal Polytechnic,Ile-oluji,ondo state', 'null', 'Nigeria', NULL, '', 'fed_poly_ile_oluji.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(166, 'Federal Polytechnic Of oil and gas,Bonny', 'null', 'Nigeria', NULL, '', 'Fed_poly_oil_bonny.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(167, 'Federal Ploytechnic, Oko', 'null', 'Nigeria', NULL, '', 'fed_poly_oko.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(168, 'Federal University, Kashere', 'null', 'Nigeria', NULL, '', 'Fu_kashere.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(169, 'Federal University, Oye Ekiti', 'null', 'Nigeria', NULL, '', 'FU_oye_ekiti.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(170, 'Federal University Of Petroleum Efurun', 'null', 'Nigeria', NULL, 'fupre', 'fupre.jpg', NULL, '', '2018-04-21 16:02:24', '0000-00-00 00:00:00'),
(171, 'Godfrey Okoye University', 'null', 'Nigeria', NULL, '', 'gou.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(172, 'Grace Polytechnic', 'null', 'Nigeria', NULL, '', 'grace_poly.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(173, 'Ibadan Polytechnic, Egbeda', 'null', 'Nigeria', NULL, '', 'ibadan_poly_egbeda.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(174, 'Igbajo Polytechnic', 'null', 'Nigeria', NULL, '', 'igbajo_poly.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(175, 'Jigawa State Polytechnic, Dutse', 'null', 'Nigeria', NULL, '', 'jigawa_poly.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(176, 'Kwara State University', 'null', 'Nigeria', NULL, '', 'kwara_uni.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(177, 'Madona University', 'null', 'Nigeria', NULL, '', 'madona.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(178, 'Nasarawa State Polytechnic', 'null', 'Nigeria', NULL, '', 'nasawar-state_poly.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(179, 'Obong University, Obong Ntak', 'null', 'Nigeria', NULL, '', 'obong_uni.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(180, 'Northwestern University, Kano', 'null', 'Nigeria', NULL, '', 'northwestuni.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(181, 'Plateau Polytechnic, Berkin Ladi', 'null', 'Nigeria', NULL, '', 'plateau_poly_barkin_ladi.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(182, 'Renik Polytechnic', 'null', 'Nigeria', NULL, '', 'renik_poly.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(183, 'Sokoto state Polytechnic', 'null', 'Nigeria', NULL, '', 'the_poly_sokoto.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(184, 'Trinity Polytechnic', 'null', 'Nigeria', NULL, '', 'trinity_poly.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(185, 'Umaru Ali Skinkafa Polytechnic, Sokoto', 'null', 'Nigeria', NULL, '', 'Umaru_ali_skinkafa_poly.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(186, 'University Of Agriculture ,Markurdi', 'null', 'Nigeria', NULL, 'uniagric', 'uniofagric_makurdi.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(187, 'University Of Science and Technology, Ondo', 'null', 'Nigeria', NULL, '', 'ust_ondo.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(188, 'University Of Science and Technology,Wudil', 'null', 'Nigeria', NULL, '', 'ust_wudil.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(189, 'Uaru Musa Yar\'adua University, Kastina', 'null', 'Nigeria', NULL, '', 'yaradua.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(190, 'Akwa Ibom State University', 'null', 'Nigeria', NULL, '', 'akwa ibom.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(191, 'Ignatius Ajuru University of Education', 'null', 'Nigeria', NULL, 'iaue', 'iaue.jpg', NULL, '', '2018-01-20 22:59:01', '0000-00-00 00:00:00'),
(192, 'Havard University', 'null', 'USA', NULL, 'havard', 'havard.png', '#DC143C', 'created', '2018-04-23 10:12:37', '2018-04-23 09:12:37'),
(193, 'Nigerian Defence Academy', 'null', 'Nigeria', NULL, 'nda', 'nda.jpg', NULL, '', '2018-04-17 19:41:17', '0000-00-00 00:00:00'),
(194, 'Elechi Amadi Polytechnic, Rumuola', NULL, 'Nigeria', NULL, 'rivpoly', 'elechi.jpg', NULL, 'created', '2018-04-23 09:44:11', '2018-04-23 08:44:11'),
(195, 'Kwame nkrumah university of science and technology', NULL, 'Ghana', NULL, 'knust', 'knust.jpg', NULL, 'created', '2018-04-23 10:12:15', '2018-04-23 09:11:49');

-- --------------------------------------------------------

--
-- Table structure for table `target_values`
--

CREATE TABLE `target_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `target_cgpa` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `target_values`
--

INSERT INTO `target_values` (`id`, `user_id`, `target_cgpa`, `created_at`, `updated_at`) VALUES
(15, 17, '4.5', '2018-05-26 08:57:08', '2018-04-22 19:57:28'),
(16, 17, '4.1', '2018-05-26 08:50:29', '2018-04-23 18:32:12'),
(17, 17, '4', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(18, 46, '3.6', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(19, 17, '3.3', '2018-05-25 17:05:24', '2018-05-25 17:04:26'),
(20, 17, '3.32', '2018-05-25 17:07:00', '2018-05-25 17:07:00');

-- --------------------------------------------------------

--
-- Table structure for table `targets`
--

CREATE TABLE `targets` (
  `id` int(10) UNSIGNED NOT NULL,
  `target_cgpa` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_code` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit_unit` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `semester` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `targets`
--

INSERT INTO `targets` (`id`, `target_cgpa`, `user_id`, `course_id`, `course_code`, `grade`, `credit_unit`, `level`, `semester`, `status`, `created_at`, `updated_at`) VALUES
(860, '4', 17, 70, 'ENG 203', 'B', 3, 2, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(861, '4', 17, 71, 'ENG 204', 'B', 2, 2, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(862, '4', 17, 72, 'ENG 210', 'C', 3, 2, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(863, '4', 17, 73, 'ENG 213', 'A', 2, 2, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(864, '4', 17, 229, 'CHM 240', 'C', 3, 2, '2', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(865, '4', 17, 230, 'ENG 206', 'C', 3, 2, '2', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(866, '4', 17, 231, 'ENG 207', 'A', 2, 2, '2', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(867, '4', 17, 232, 'ENG 208', 'A', 2, 2, '2', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(868, '4', 17, 233, 'ENG 209', 'C', 3, 2, '2', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(869, '4', 17, 234, 'ENG 205', 'C', 3, 2, '2', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(870, '4', 17, 235, 'ENG 211', 'A', 1, 2, '2', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(871, '4', 17, 236, 'ENG 212', 'A', 1, 2, '2', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(872, '4', 17, 237, 'ENG 301', 'C', 3, 3, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(873, '4', 17, 238, 'ENG 302', 'A', 2, 3, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(874, '4', 17, 239, 'CHE 315', 'C', 3, 3, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(875, '4', 17, 240, 'CHE 317', 'C', 3, 3, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(876, '4', 17, 241, 'MEG 303', 'A', 2, 3, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(877, '4', 17, 242, 'MEG 307', 'C', 3, 3, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(878, '4', 17, 243, 'PNG 301', 'A', 3, 3, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(879, '4', 17, 244, 'PNG 302', 'A', 3, 3, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(880, '4', 17, 245, 'GES 300', 'A', 2, 3, '2', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(881, '4', 17, 246, 'ENG 303', 'A', 3, 3, '2', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(882, '4', 17, 247, 'CHE 312', 'A', 3, 3, '2', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(883, '4', 17, 248, 'CHE 314', 'A', 3, 3, '2', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(884, '4', 17, 249, 'CHE 316', 'A', 2, 3, '2', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(885, '4', 17, 250, 'PNG 306', 'A', 3, 3, '2', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(886, '4', 17, 251, 'PNG 307', 'A', 3, 3, '2', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(887, '4', 17, 252, 'PNG 308', 'A', 3, 3, '2', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(888, '4', 17, 253, 'GNG 301', 'A', 2, 3, '2', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(889, '4', 17, 254, 'ENG 401', 'A', 3, 4, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(890, '4', 17, 255, 'ENG 402', 'A', 2, 4, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(891, '4', 17, 256, 'CHE 417', 'A', 3, 4, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(892, '4', 17, 257, 'PNG 403', 'A', 3, 4, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(893, '4', 17, 258, 'GNG 401', 'A', 3, 4, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(894, '4', 17, 259, 'GNG 402', 'A', 3, 4, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(895, '4', 17, 260, 'GNG 403', 'A', 2, 4, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(896, '4', 17, 261, 'ENG 400', 'C', 9, 4, '2', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(897, '4', 17, 262, 'GES 400', 'A', 2, 4, '2', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(898, '4', 17, 263, 'ENG 501', 'A', 2, 5, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(899, '4', 17, 264, 'ENG 502', 'A', 2, 5, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(900, '4', 17, 265, 'PNG 502', 'A', 3, 5, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(901, '4', 17, 266, 'GNG 501', 'A', 3, 5, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(902, '4', 17, 267, 'GNG 502', 'A', 3, 5, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(903, '4', 17, 268, 'GNG 503', 'A', 1, 5, '1', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(904, '4', 17, 269, 'PNG 307', 'A', 3, 5, '2', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(905, '4', 17, 270, 'PNG 508', 'A', 2, 5, '2', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(906, '4', 17, 271, 'PNG 509', 'A', 3, 5, '2', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(907, '4', 17, 272, 'GNG 504', 'A', 3, 5, '2', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(908, '4', 17, 273, 'GNG 520', 'C', 6, 5, '2', 'created', '2018-04-24 16:09:22', '2018-04-24 16:09:22'),
(909, '3.6', 46, 157, 'PHY 102', 'B', 1, 1, '1', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(910, '3.6', 46, 158, 'MTH 110', 'C', 3, 1, '1', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(911, '3.6', 46, 159, 'MTH 120', 'C', 3, 1, '1', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(912, '3.6', 46, 160, 'ENG 101', 'C', 2, 1, '1', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(913, '3.6', 46, 161, 'GES 102', 'C', 2, 1, '2', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(914, '3.6', 46, 162, 'GES 103', 'A', 2, 1, '2', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(915, '3.6', 46, 163, 'CHM 131', 'C', 3, 1, '2', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(916, '3.6', 46, 164, 'PHY 112', 'C', 3, 1, '2', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(917, '3.6', 46, 165, 'PHY 103', 'A', 1, 1, '2', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(918, '3.6', 46, 166, 'MTH 124', 'C', 3, 1, '2', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(919, '3.6', 46, 167, 'ENG 102', 'A', 2, 1, '2', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(920, '3.6', 46, 168, 'ENG 103', 'A', 1, 1, '2', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(921, '3.6', 46, 169, 'ENG 104', 'A', 2, 1, '2', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(922, '3.6', 46, 170, 'GLY 201', 'A', 2, 2, '1', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(923, '3.6', 46, 171, 'PHY 216', 'C', 3, 2, '1', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(924, '3.6', 46, 172, 'ENG 201', 'C', 3, 2, '1', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(925, '3.6', 46, 173, 'ENG 202', 'A', 2, 2, '1', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(926, '3.6', 46, 174, 'ENG 203', 'C', 3, 2, '1', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(927, '3.6', 46, 175, 'ENG 204', 'A', 2, 2, '1', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(928, '3.6', 46, 176, 'ENG 210', 'C', 3, 2, '1', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(929, '3.6', 46, 177, 'ENG 213', 'A', 2, 2, '1', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(930, '3.6', 46, 178, 'CHM 240', 'C', 3, 2, '2', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(931, '3.6', 46, 179, 'ENG 206', 'C', 3, 2, '2', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(932, '3.6', 46, 180, 'ENG 207', 'A', 2, 2, '2', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(933, '3.6', 46, 181, 'ENG 208', 'A', 2, 2, '2', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(934, '3.6', 46, 182, 'ENG 209', 'C', 3, 2, '2', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(935, '3.6', 46, 183, 'ENG 205', 'C', 3, 2, '2', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(936, '3.6', 46, 184, 'ENG 211', 'A', 1, 2, '2', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(937, '3.6', 46, 185, 'ENG 212', 'A', 1, 2, '2', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(938, '3.6', 46, 186, 'CEG 231', 'A', 2, 2, '2', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(939, '3.6', 46, 187, 'ENG 301', 'C', 3, 3, '1', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(940, '3.6', 46, 188, 'ENG 302', 'A', 2, 3, '1', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(941, '3.6', 46, 189, 'CHE 315', 'C', 3, 3, '1', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(942, '3.6', 46, 190, 'CHE 317', 'C', 3, 3, '1', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(943, '3.6', 46, 191, 'MEG 303', 'A', 2, 3, '1', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(944, '3.6', 46, 192, 'PNG 301', 'C', 3, 3, '1', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(945, '3.6', 46, 193, 'PNG 302', 'C', 3, 3, '1', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(946, '3.6', 46, 194, 'PNG 303', 'A', 2, 3, '1', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(947, '3.6', 46, 195, 'GES 300', 'A', 2, 3, '2', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(948, '3.6', 46, 196, 'GLY 313', 'A', 2, 3, '2', 'created', '2018-04-26 13:47:14', '2018-04-26 13:47:14'),
(949, '3.6', 46, 197, 'ENG 303', 'C', 3, 3, '2', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(950, '3.6', 46, 198, 'CHE 314', 'C', 3, 3, '2', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(951, '3.6', 46, 199, 'PNG 304', 'A', 2, 3, '2', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(952, '3.6', 46, 200, 'PNG 305', 'A', 2, 3, '2', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(953, '3.6', 46, 201, 'PNG 306', 'C', 3, 3, '2', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(954, '3.6', 46, 202, 'PNG 307', 'C', 3, 3, '2', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(955, '3.6', 46, 203, 'PNG 308', 'C', 3, 3, '2', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(956, '3.6', 46, 204, 'ENG 401', 'C', 3, 4, '1', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(957, '3.6', 46, 205, 'ENG 402', 'A', 2, 4, '1', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(958, '3.6', 46, 206, 'PNG 401', 'C', 3, 4, '1', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(959, '3.6', 46, 207, 'PNG 402', 'C', 3, 4, '1', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(960, '3.6', 46, 208, 'PNG 403', 'C', 3, 4, '1', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(961, '3.6', 46, 209, 'PNG 404', 'A', 2, 4, '1', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(962, '3.6', 46, 210, 'PNG 405', 'A', 2, 4, '1', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(963, '3.6', 46, 211, 'GLY 401', 'C', 3, 4, '1', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(964, '3.6', 46, 212, 'ENG 400', 'C', 9, 4, '2', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(965, '3.6', 46, 213, 'GES 400', 'A', 2, 4, '2', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(966, '3.6', 46, 214, 'ENG 501', 'A', 2, 5, '1', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(967, '3.6', 46, 215, 'ENG 502', 'A', 2, 5, '1', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(968, '3.6', 46, 216, 'PNG 501', 'C', 3, 5, '1', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(969, '3.6', 46, 217, 'PNG 502', 'A', 2, 5, '1', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(970, '3.6', 46, 218, 'PNG 503', 'C', 3, 5, '1', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(971, '3.6', 46, 219, 'PNG 504', 'A', 2, 5, '1', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(972, '3.6', 46, 220, 'PNG 505', 'A', 1, 5, '1', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(973, '3.6', 46, 221, 'PNG 510', 'C', 3, 5, '1', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(974, '3.6', 46, 222, 'PNG 515', 'C', 3, 5, '1', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(975, '3.6', 46, 223, 'PNG 506', 'C', 3, 5, '2', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(976, '3.6', 46, 224, 'PNG 507', 'C', 3, 5, '2', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(977, '3.6', 46, 225, 'PNG 508', 'A', 2, 5, '2', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(978, '3.6', 46, 226, 'PNG 509', 'C', 3, 5, '2', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(979, '3.6', 46, 227, 'XXX XXX', 'C', 3, 5, '2', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(980, '3.6', 46, 228, 'PNG 520', 'C', 6, 5, '2', 'created', '2018-04-26 13:47:15', '2018-04-26 13:47:15'),
(1049, '3.3', 17, 161, 'GES 102', 'C', 2, 1, '2', 'created', '2018-05-25 17:05:16', '2018-05-25 17:04:19'),
(1050, '3.3', 17, 162, 'GES 103', 'C', 2, 1, '2', 'created', '2018-05-25 17:05:16', '2018-05-25 17:04:19'),
(1051, '3.3', 17, 163, 'CHM 131', 'C', 3, 1, '2', 'created', '2018-05-25 17:05:16', '2018-05-25 17:04:19'),
(1052, '3.3', 17, 164, 'PHY 112', 'C', 3, 1, '2', 'created', '2018-05-25 17:05:16', '2018-05-25 17:04:19'),
(1053, '3.3', 17, 165, 'PHY 103', 'A', 1, 1, '2', 'created', '2018-05-25 17:05:16', '2018-05-25 17:04:19'),
(1054, '3.3', 17, 166, 'MTH 124', 'C', 3, 1, '2', 'created', '2018-05-25 17:05:16', '2018-05-25 17:04:19'),
(1055, '3.3', 17, 167, 'ENG 102', 'C', 2, 1, '2', 'created', '2018-05-25 17:05:16', '2018-05-25 17:04:19'),
(1056, '3.3', 17, 168, 'ENG 103', 'A', 1, 1, '2', 'created', '2018-05-25 17:05:17', '2018-05-25 17:04:19'),
(1057, '3.3', 17, 169, 'ENG 104', 'C', 2, 1, '2', 'created', '2018-05-25 17:05:17', '2018-05-25 17:04:20'),
(1058, '3.3', 17, 170, 'GLY 201', 'C', 2, 2, '1', 'created', '2018-05-25 17:05:17', '2018-05-25 17:04:20'),
(1059, '3.3', 17, 171, 'PHY 216', 'C', 3, 2, '1', 'created', '2018-05-25 17:05:17', '2018-05-25 17:04:20'),
(1060, '3.3', 17, 172, 'ENG 201', 'C', 3, 2, '1', 'created', '2018-05-25 17:05:17', '2018-05-25 17:04:20'),
(1061, '3.3', 17, 173, 'ENG 202', 'C', 2, 2, '1', 'created', '2018-05-25 17:05:17', '2018-05-25 17:04:20'),
(1062, '3.3', 17, 174, 'ENG 203', 'C', 3, 2, '1', 'created', '2018-05-25 17:05:17', '2018-05-25 17:04:20'),
(1063, '3.3', 17, 175, 'ENG 204', 'C', 2, 2, '1', 'created', '2018-05-25 17:05:18', '2018-05-25 17:04:20'),
(1064, '3.3', 17, 176, 'ENG 210', 'C', 3, 2, '1', 'created', '2018-05-25 17:05:18', '2018-05-25 17:04:20'),
(1065, '3.3', 17, 177, 'ENG 213', 'C', 2, 2, '1', 'created', '2018-05-25 17:05:18', '2018-05-25 17:04:20'),
(1066, '3.3', 17, 178, 'CHM 240', 'C', 3, 2, '2', 'created', '2018-05-25 17:05:18', '2018-05-25 17:04:20'),
(1067, '3.3', 17, 179, 'ENG 206', 'C', 3, 2, '2', 'created', '2018-05-25 17:05:18', '2018-05-25 17:04:20'),
(1068, '3.3', 17, 180, 'ENG 207', 'C', 2, 2, '2', 'created', '2018-05-25 17:05:18', '2018-05-25 17:04:20'),
(1069, '3.3', 17, 181, 'ENG 208', 'C', 2, 2, '2', 'created', '2018-05-25 17:05:18', '2018-05-25 17:04:20'),
(1070, '3.3', 17, 182, 'ENG 209', 'C', 3, 2, '2', 'created', '2018-05-25 17:05:18', '2018-05-25 17:04:21'),
(1071, '3.3', 17, 183, 'ENG 205', 'C', 3, 2, '2', 'created', '2018-05-25 17:05:18', '2018-05-25 17:04:21'),
(1072, '3.3', 17, 184, 'ENG 211', 'A', 1, 2, '2', 'created', '2018-05-25 17:05:18', '2018-05-25 17:04:21'),
(1073, '3.3', 17, 185, 'ENG 212', 'A', 1, 2, '2', 'created', '2018-05-25 17:05:19', '2018-05-25 17:04:21'),
(1074, '3.3', 17, 186, 'CEG 231', 'C', 2, 2, '2', 'created', '2018-05-25 17:05:19', '2018-05-25 17:04:21'),
(1075, '3.3', 17, 187, 'ENG 301', 'C', 3, 3, '1', 'created', '2018-05-25 17:05:19', '2018-05-25 17:04:21'),
(1076, '3.3', 17, 188, 'ENG 302', 'A', 2, 3, '1', 'created', '2018-05-25 17:05:19', '2018-05-25 17:04:21'),
(1077, '3.3', 17, 189, 'CHE 315', 'C', 3, 3, '1', 'created', '2018-05-25 17:05:19', '2018-05-25 17:04:21'),
(1078, '3.3', 17, 190, 'CHE 317', 'C', 3, 3, '1', 'created', '2018-05-25 17:05:19', '2018-05-25 17:04:21'),
(1079, '3.3', 17, 191, 'MEG 303', 'A', 2, 3, '1', 'created', '2018-05-25 17:05:19', '2018-05-25 17:04:21'),
(1080, '3.3', 17, 192, 'PNG 301', 'C', 3, 3, '1', 'created', '2018-05-25 17:05:19', '2018-05-25 17:04:22'),
(1081, '3.3', 17, 193, 'PNG 302', 'C', 3, 3, '1', 'created', '2018-05-25 17:05:20', '2018-05-25 17:04:22'),
(1082, '3.3', 17, 194, 'PNG 303', 'A', 2, 3, '1', 'created', '2018-05-25 17:05:20', '2018-05-25 17:04:22'),
(1083, '3.3', 17, 195, 'GES 300', 'A', 2, 3, '2', 'created', '2018-05-25 17:05:20', '2018-05-25 17:04:22'),
(1084, '3.3', 17, 196, 'GLY 313', 'A', 2, 3, '2', 'created', '2018-05-25 17:05:20', '2018-05-25 17:04:22'),
(1085, '3.3', 17, 197, 'ENG 303', 'C', 3, 3, '2', 'created', '2018-05-25 17:05:20', '2018-05-25 17:04:22'),
(1086, '3.3', 17, 198, 'CHE 314', 'C', 3, 3, '2', 'created', '2018-05-25 17:05:20', '2018-05-25 17:04:22'),
(1087, '3.3', 17, 199, 'PNG 304', 'A', 2, 3, '2', 'created', '2018-05-25 17:05:20', '2018-05-25 17:04:22'),
(1088, '3.3', 17, 200, 'PNG 305', 'A', 2, 3, '2', 'created', '2018-05-25 17:05:20', '2018-05-25 17:04:23'),
(1089, '3.3', 17, 201, 'PNG 306', 'C', 3, 3, '2', 'created', '2018-05-25 17:05:20', '2018-05-25 17:04:23'),
(1090, '3.3', 17, 202, 'PNG 307', 'C', 3, 3, '2', 'created', '2018-05-25 17:05:21', '2018-05-25 17:04:23'),
(1091, '3.3', 17, 203, 'PNG 308', 'C', 3, 3, '2', 'created', '2018-05-25 17:05:21', '2018-05-25 17:04:23'),
(1092, '3.3', 17, 204, 'ENG 401', 'C', 3, 4, '1', 'created', '2018-05-25 17:05:21', '2018-05-25 17:04:23'),
(1093, '3.3', 17, 205, 'ENG 402', 'A', 2, 4, '1', 'created', '2018-05-25 17:05:21', '2018-05-25 17:04:23'),
(1094, '3.3', 17, 206, 'PNG 401', 'C', 3, 4, '1', 'created', '2018-05-25 17:05:21', '2018-05-25 17:04:23'),
(1095, '3.3', 17, 207, 'PNG 402', 'C', 3, 4, '1', 'created', '2018-05-25 17:05:21', '2018-05-25 17:04:23'),
(1096, '3.3', 17, 208, 'PNG 403', 'C', 3, 4, '1', 'created', '2018-05-25 17:05:21', '2018-05-25 17:04:23'),
(1097, '3.3', 17, 209, 'PNG 404', 'A', 2, 4, '1', 'created', '2018-05-25 17:05:21', '2018-05-25 17:04:23'),
(1098, '3.3', 17, 210, 'PNG 405', 'A', 2, 4, '1', 'created', '2018-05-25 17:05:21', '2018-05-25 17:04:24'),
(1099, '3.3', 17, 211, 'GLY 401', 'C', 3, 4, '1', 'created', '2018-05-25 17:05:22', '2018-05-25 17:04:24'),
(1100, '3.3', 17, 212, 'ENG 400', 'C', 9, 4, '2', 'created', '2018-05-25 17:05:22', '2018-05-25 17:04:24'),
(1101, '3.3', 17, 213, 'GES 400', 'A', 2, 4, '2', 'created', '2018-05-25 17:05:22', '2018-05-25 17:04:24'),
(1102, '3.3', 17, 214, 'ENG 501', 'A', 2, 5, '1', 'created', '2018-05-25 17:05:22', '2018-05-25 17:04:24'),
(1103, '3.3', 17, 215, 'ENG 502', 'A', 2, 5, '1', 'created', '2018-05-25 17:05:22', '2018-05-25 17:04:24'),
(1104, '3.3', 17, 216, 'PNG 501', 'C', 3, 5, '1', 'created', '2018-05-25 17:05:23', '2018-05-25 17:04:24'),
(1105, '3.3', 17, 217, 'PNG 502', 'A', 2, 5, '1', 'created', '2018-05-25 17:05:23', '2018-05-25 17:04:24'),
(1106, '3.3', 17, 218, 'PNG 503', 'C', 3, 5, '1', 'created', '2018-05-25 17:05:23', '2018-05-25 17:04:25'),
(1107, '3.3', 17, 219, 'PNG 504', 'A', 2, 5, '1', 'created', '2018-05-25 17:05:23', '2018-05-25 17:04:25'),
(1108, '3.3', 17, 220, 'PNG 505', 'A', 1, 5, '1', 'created', '2018-05-25 17:05:23', '2018-05-25 17:04:25'),
(1109, '3.3', 17, 221, 'PNG 510', 'C', 3, 5, '1', 'created', '2018-05-25 17:05:23', '2018-05-25 17:04:25'),
(1110, '3.3', 17, 222, 'PNG 515', 'C', 3, 5, '1', 'created', '2018-05-25 17:05:23', '2018-05-25 17:04:25'),
(1111, '3.3', 17, 223, 'PNG 506', 'C', 3, 5, '2', 'created', '2018-05-25 17:05:24', '2018-05-25 17:04:25'),
(1112, '3.3', 17, 224, 'PNG 507', 'C', 3, 5, '2', 'created', '2018-05-25 17:05:24', '2018-05-25 17:04:25'),
(1113, '3.3', 17, 225, 'PNG 508', 'A', 2, 5, '2', 'created', '2018-05-25 17:05:24', '2018-05-25 17:04:25'),
(1114, '3.3', 17, 226, 'PNG 509', 'C', 3, 5, '2', 'created', '2018-05-25 17:05:24', '2018-05-25 17:04:25'),
(1115, '3.3', 17, 227, 'XXX XXX', 'C', 3, 5, '2', 'created', '2018-05-25 17:05:24', '2018-05-25 17:04:25'),
(1116, '3.3', 17, 228, 'PNG 520', 'C', 6, 5, '2', 'created', '2018-05-25 17:05:24', '2018-05-25 17:04:26'),
(1117, '3.32', 17, 161, 'GES 102', 'A', 2, 1, '2', 'created', '2018-05-25 17:06:54', '2018-05-25 17:06:54'),
(1118, '3.32', 17, 162, 'GES 103', 'C', 2, 1, '2', 'created', '2018-05-25 17:06:54', '2018-05-25 17:06:54'),
(1119, '3.32', 17, 163, 'CHM 131', 'C', 3, 1, '2', 'created', '2018-05-25 17:06:55', '2018-05-25 17:06:55'),
(1120, '3.32', 17, 164, 'PHY 112', 'C', 3, 1, '2', 'created', '2018-05-25 17:06:55', '2018-05-25 17:06:55'),
(1121, '3.32', 17, 165, 'PHY 103', 'A', 1, 1, '2', 'created', '2018-05-25 17:06:55', '2018-05-25 17:06:55'),
(1122, '3.32', 17, 166, 'MTH 124', 'C', 3, 1, '2', 'created', '2018-05-25 17:06:55', '2018-05-25 17:06:55'),
(1123, '3.32', 17, 167, 'ENG 102', 'C', 2, 1, '2', 'created', '2018-05-25 17:06:55', '2018-05-25 17:06:55'),
(1124, '3.32', 17, 168, 'ENG 103', 'A', 1, 1, '2', 'created', '2018-05-25 17:06:55', '2018-05-25 17:06:55'),
(1125, '3.32', 17, 169, 'ENG 104', 'C', 2, 1, '2', 'created', '2018-05-25 17:06:56', '2018-05-25 17:06:56'),
(1126, '3.32', 17, 170, 'GLY 201', 'C', 2, 2, '1', 'created', '2018-05-25 17:06:56', '2018-05-25 17:06:56'),
(1127, '3.32', 17, 171, 'PHY 216', 'C', 3, 2, '1', 'created', '2018-05-25 17:06:56', '2018-05-25 17:06:56'),
(1128, '3.32', 17, 172, 'ENG 201', 'C', 3, 2, '1', 'created', '2018-05-25 17:06:56', '2018-05-25 17:06:56'),
(1129, '3.32', 17, 173, 'ENG 202', 'C', 2, 2, '1', 'created', '2018-05-25 17:06:56', '2018-05-25 17:06:56'),
(1130, '3.32', 17, 174, 'ENG 203', 'C', 3, 2, '1', 'created', '2018-05-25 17:06:56', '2018-05-25 17:06:56'),
(1131, '3.32', 17, 175, 'ENG 204', 'C', 2, 2, '1', 'created', '2018-05-25 17:06:56', '2018-05-25 17:06:56'),
(1132, '3.32', 17, 176, 'ENG 210', 'C', 3, 2, '1', 'created', '2018-05-25 17:06:57', '2018-05-25 17:06:57'),
(1133, '3.32', 17, 177, 'ENG 213', 'C', 2, 2, '1', 'created', '2018-05-25 17:06:57', '2018-05-25 17:06:57'),
(1134, '3.32', 17, 178, 'CHM 240', 'C', 3, 2, '2', 'created', '2018-05-25 17:06:57', '2018-05-25 17:06:57'),
(1135, '3.32', 17, 179, 'ENG 206', 'C', 3, 2, '2', 'created', '2018-05-25 17:06:57', '2018-05-25 17:06:57'),
(1136, '3.32', 17, 180, 'ENG 207', 'C', 2, 2, '2', 'created', '2018-05-25 17:06:57', '2018-05-25 17:06:57'),
(1137, '3.32', 17, 181, 'ENG 208', 'C', 2, 2, '2', 'created', '2018-05-25 17:06:57', '2018-05-25 17:06:57'),
(1138, '3.32', 17, 182, 'ENG 209', 'C', 3, 2, '2', 'created', '2018-05-25 17:06:57', '2018-05-25 17:06:57'),
(1139, '3.32', 17, 183, 'ENG 205', 'C', 3, 2, '2', 'created', '2018-05-25 17:06:57', '2018-05-25 17:06:57'),
(1140, '3.32', 17, 184, 'ENG 211', 'A', 1, 2, '2', 'created', '2018-05-25 17:06:57', '2018-05-25 17:06:57'),
(1141, '3.32', 17, 185, 'ENG 212', 'A', 1, 2, '2', 'created', '2018-05-25 17:06:57', '2018-05-25 17:06:57'),
(1142, '3.32', 17, 186, 'CEG 231', 'C', 2, 2, '2', 'created', '2018-05-25 17:06:57', '2018-05-25 17:06:57'),
(1143, '3.32', 17, 187, 'ENG 301', 'C', 3, 3, '1', 'created', '2018-05-25 17:06:57', '2018-05-25 17:06:57'),
(1144, '3.32', 17, 188, 'ENG 302', 'A', 2, 3, '1', 'created', '2018-05-25 17:06:57', '2018-05-25 17:06:57'),
(1145, '3.32', 17, 189, 'CHE 315', 'C', 3, 3, '1', 'created', '2018-05-25 17:06:57', '2018-05-25 17:06:57'),
(1146, '3.32', 17, 190, 'CHE 317', 'C', 3, 3, '1', 'created', '2018-05-25 17:06:57', '2018-05-25 17:06:57'),
(1147, '3.32', 17, 191, 'MEG 303', 'A', 2, 3, '1', 'created', '2018-05-25 17:06:57', '2018-05-25 17:06:57'),
(1148, '3.32', 17, 192, 'PNG 301', 'C', 3, 3, '1', 'created', '2018-05-25 17:06:57', '2018-05-25 17:06:57'),
(1149, '3.32', 17, 193, 'PNG 302', 'C', 3, 3, '1', 'created', '2018-05-25 17:06:58', '2018-05-25 17:06:58'),
(1150, '3.32', 17, 194, 'PNG 303', 'A', 2, 3, '1', 'created', '2018-05-25 17:06:58', '2018-05-25 17:06:58'),
(1151, '3.32', 17, 195, 'GES 300', 'A', 2, 3, '2', 'created', '2018-05-25 17:06:58', '2018-05-25 17:06:58'),
(1152, '3.32', 17, 196, 'GLY 313', 'A', 2, 3, '2', 'created', '2018-05-25 17:06:58', '2018-05-25 17:06:58'),
(1153, '3.32', 17, 197, 'ENG 303', 'C', 3, 3, '2', 'created', '2018-05-25 17:06:58', '2018-05-25 17:06:58'),
(1154, '3.32', 17, 198, 'CHE 314', 'C', 3, 3, '2', 'created', '2018-05-25 17:06:58', '2018-05-25 17:06:58'),
(1155, '3.32', 17, 199, 'PNG 304', 'A', 2, 3, '2', 'created', '2018-05-25 17:06:58', '2018-05-25 17:06:58'),
(1156, '3.32', 17, 200, 'PNG 305', 'A', 2, 3, '2', 'created', '2018-05-25 17:06:58', '2018-05-25 17:06:58'),
(1157, '3.32', 17, 201, 'PNG 306', 'C', 3, 3, '2', 'created', '2018-05-25 17:06:58', '2018-05-25 17:06:58'),
(1158, '3.32', 17, 202, 'PNG 307', 'C', 3, 3, '2', 'created', '2018-05-25 17:06:58', '2018-05-25 17:06:58'),
(1159, '3.32', 17, 203, 'PNG 308', 'C', 3, 3, '2', 'created', '2018-05-25 17:06:58', '2018-05-25 17:06:58'),
(1160, '3.32', 17, 204, 'ENG 401', 'C', 3, 4, '1', 'created', '2018-05-25 17:06:58', '2018-05-25 17:06:58'),
(1161, '3.32', 17, 205, 'ENG 402', 'A', 2, 4, '1', 'created', '2018-05-25 17:06:58', '2018-05-25 17:06:58'),
(1162, '3.32', 17, 206, 'PNG 401', 'C', 3, 4, '1', 'created', '2018-05-25 17:06:59', '2018-05-25 17:06:59'),
(1163, '3.32', 17, 207, 'PNG 402', 'C', 3, 4, '1', 'created', '2018-05-25 17:06:59', '2018-05-25 17:06:59'),
(1164, '3.32', 17, 208, 'PNG 403', 'C', 3, 4, '1', 'created', '2018-05-25 17:06:59', '2018-05-25 17:06:59'),
(1165, '3.32', 17, 209, 'PNG 404', 'A', 2, 4, '1', 'created', '2018-05-25 17:06:59', '2018-05-25 17:06:59'),
(1166, '3.32', 17, 210, 'PNG 405', 'A', 2, 4, '1', 'created', '2018-05-25 17:06:59', '2018-05-25 17:06:59'),
(1167, '3.32', 17, 211, 'GLY 401', 'C', 3, 4, '1', 'created', '2018-05-25 17:06:59', '2018-05-25 17:06:59'),
(1168, '3.32', 17, 212, 'ENG 400', 'C', 9, 4, '2', 'created', '2018-05-25 17:06:59', '2018-05-25 17:06:59'),
(1169, '3.32', 17, 213, 'GES 400', 'A', 2, 4, '2', 'created', '2018-05-25 17:06:59', '2018-05-25 17:06:59'),
(1170, '3.32', 17, 214, 'ENG 501', 'A', 2, 5, '1', 'created', '2018-05-25 17:06:59', '2018-05-25 17:06:59'),
(1171, '3.32', 17, 215, 'ENG 502', 'A', 2, 5, '1', 'created', '2018-05-25 17:06:59', '2018-05-25 17:06:59'),
(1172, '3.32', 17, 216, 'PNG 501', 'C', 3, 5, '1', 'created', '2018-05-25 17:06:59', '2018-05-25 17:06:59'),
(1173, '3.32', 17, 217, 'PNG 502', 'A', 2, 5, '1', 'created', '2018-05-25 17:06:59', '2018-05-25 17:06:59'),
(1174, '3.32', 17, 218, 'PNG 503', 'C', 3, 5, '1', 'created', '2018-05-25 17:06:59', '2018-05-25 17:06:59'),
(1175, '3.32', 17, 219, 'PNG 504', 'A', 2, 5, '1', 'created', '2018-05-25 17:06:59', '2018-05-25 17:06:59'),
(1176, '3.32', 17, 220, 'PNG 505', 'A', 1, 5, '1', 'created', '2018-05-25 17:06:59', '2018-05-25 17:06:59'),
(1177, '3.32', 17, 221, 'PNG 510', 'C', 3, 5, '1', 'created', '2018-05-25 17:06:59', '2018-05-25 17:06:59'),
(1178, '3.32', 17, 222, 'PNG 515', 'C', 3, 5, '1', 'created', '2018-05-25 17:07:00', '2018-05-25 17:07:00'),
(1179, '3.32', 17, 223, 'PNG 506', 'C', 3, 5, '2', 'created', '2018-05-25 17:07:00', '2018-05-25 17:07:00'),
(1180, '3.32', 17, 224, 'PNG 507', 'C', 3, 5, '2', 'created', '2018-05-25 17:07:00', '2018-05-25 17:07:00'),
(1181, '3.32', 17, 225, 'PNG 508', 'A', 2, 5, '2', 'created', '2018-05-25 17:07:00', '2018-05-25 17:07:00'),
(1182, '3.32', 17, 226, 'PNG 509', 'C', 3, 5, '2', 'created', '2018-05-25 17:07:00', '2018-05-25 17:07:00'),
(1183, '3.32', 17, 227, 'XXX XXX', 'C', 3, 5, '2', 'created', '2018-05-25 17:07:00', '2018-05-25 17:07:00'),
(1184, '3.32', 17, 228, 'PNG 520', 'C', 6, 5, '2', 'created', '2018-05-25 17:07:00', '2018-05-25 17:07:00'),
(1363, '4.1', 17, 178, 'CHM 240', 'C', 3, 2, '2', 'created', '2018-05-26 08:50:26', '2018-05-26 08:50:26'),
(1364, '4.1', 17, 179, 'ENG 206', 'C', 3, 2, '2', 'created', '2018-05-26 08:50:26', '2018-05-26 08:50:26'),
(1365, '4.1', 17, 180, 'ENG 207', 'B', 2, 2, '2', 'created', '2018-05-26 08:50:26', '2018-05-26 08:50:26'),
(1366, '4.1', 17, 181, 'ENG 208', 'A', 2, 2, '2', 'created', '2018-05-26 08:50:26', '2018-05-26 08:50:26'),
(1367, '4.1', 17, 182, 'ENG 209', 'C', 3, 2, '2', 'created', '2018-05-26 08:50:26', '2018-05-26 08:50:26'),
(1368, '4.1', 17, 183, 'ENG 205', 'C', 3, 2, '2', 'created', '2018-05-26 08:50:27', '2018-05-26 08:50:27'),
(1369, '4.1', 17, 184, 'ENG 211', 'A', 1, 2, '2', 'created', '2018-05-26 08:50:27', '2018-05-26 08:50:27'),
(1370, '4.1', 17, 185, 'ENG 212', 'A', 1, 2, '2', 'created', '2018-05-26 08:50:27', '2018-05-26 08:50:27'),
(1371, '4.1', 17, 186, 'CEG 231', 'A', 2, 2, '2', 'created', '2018-05-26 08:50:27', '2018-05-26 08:50:27'),
(1372, '4.1', 17, 187, 'ENG 301', 'C', 3, 3, '1', 'created', '2018-05-26 08:50:27', '2018-05-26 08:50:27'),
(1373, '4.1', 17, 188, 'ENG 302', 'A', 2, 3, '1', 'created', '2018-05-26 08:50:27', '2018-05-26 08:50:27'),
(1374, '4.1', 17, 189, 'CHE 315', 'C', 3, 3, '1', 'created', '2018-05-26 08:50:27', '2018-05-26 08:50:27'),
(1375, '4.1', 17, 190, 'CHE 317', 'C', 3, 3, '1', 'created', '2018-05-26 08:50:27', '2018-05-26 08:50:27'),
(1376, '4.1', 17, 191, 'MEG 303', 'A', 2, 3, '1', 'created', '2018-05-26 08:50:27', '2018-05-26 08:50:27'),
(1377, '4.1', 17, 192, 'PNG 301', 'C', 3, 3, '1', 'created', '2018-05-26 08:50:27', '2018-05-26 08:50:27'),
(1378, '4.1', 17, 193, 'PNG 302', 'A', 3, 3, '1', 'created', '2018-05-26 08:50:27', '2018-05-26 08:50:27'),
(1379, '4.1', 17, 194, 'PNG 303', 'A', 2, 3, '1', 'created', '2018-05-26 08:50:27', '2018-05-26 08:50:27'),
(1380, '4.1', 17, 195, 'GES 300', 'A', 2, 3, '2', 'created', '2018-05-26 08:50:27', '2018-05-26 08:50:27'),
(1381, '4.1', 17, 196, 'GLY 313', 'A', 2, 3, '2', 'created', '2018-05-26 08:50:27', '2018-05-26 08:50:27'),
(1382, '4.1', 17, 197, 'ENG 303', 'A', 3, 3, '2', 'created', '2018-05-26 08:50:27', '2018-05-26 08:50:27'),
(1383, '4.1', 17, 198, 'CHE 314', 'A', 3, 3, '2', 'created', '2018-05-26 08:50:27', '2018-05-26 08:50:27'),
(1384, '4.1', 17, 199, 'PNG 304', 'A', 2, 3, '2', 'created', '2018-05-26 08:50:27', '2018-05-26 08:50:27'),
(1385, '4.1', 17, 200, 'PNG 305', 'A', 2, 3, '2', 'created', '2018-05-26 08:50:27', '2018-05-26 08:50:27'),
(1386, '4.1', 17, 201, 'PNG 306', 'A', 3, 3, '2', 'created', '2018-05-26 08:50:27', '2018-05-26 08:50:27'),
(1387, '4.1', 17, 202, 'PNG 307', 'A', 3, 3, '2', 'created', '2018-05-26 08:50:27', '2018-05-26 08:50:27'),
(1388, '4.1', 17, 203, 'PNG 308', 'A', 3, 3, '2', 'created', '2018-05-26 08:50:28', '2018-05-26 08:50:28'),
(1389, '4.1', 17, 204, 'ENG 401', 'A', 3, 4, '1', 'created', '2018-05-26 08:50:28', '2018-05-26 08:50:28'),
(1390, '4.1', 17, 205, 'ENG 402', 'A', 2, 4, '1', 'created', '2018-05-26 08:50:28', '2018-05-26 08:50:28'),
(1391, '4.1', 17, 206, 'PNG 401', 'A', 3, 4, '1', 'created', '2018-05-26 08:50:28', '2018-05-26 08:50:28'),
(1392, '4.1', 17, 207, 'PNG 402', 'A', 3, 4, '1', 'created', '2018-05-26 08:50:28', '2018-05-26 08:50:28'),
(1393, '4.1', 17, 208, 'PNG 403', 'A', 3, 4, '1', 'created', '2018-05-26 08:50:28', '2018-05-26 08:50:28'),
(1394, '4.1', 17, 209, 'PNG 404', 'A', 2, 4, '1', 'created', '2018-05-26 08:50:28', '2018-05-26 08:50:28'),
(1395, '4.1', 17, 210, 'PNG 405', 'A', 2, 4, '1', 'created', '2018-05-26 08:50:28', '2018-05-26 08:50:28'),
(1396, '4.1', 17, 211, 'GLY 401', 'A', 3, 4, '1', 'created', '2018-05-26 08:50:28', '2018-05-26 08:50:28'),
(1397, '4.1', 17, 212, 'ENG 400', 'C', 9, 4, '2', 'created', '2018-05-26 08:50:28', '2018-05-26 08:50:28'),
(1398, '4.1', 17, 213, 'GES 400', 'A', 2, 4, '2', 'created', '2018-05-26 08:50:28', '2018-05-26 08:50:28'),
(1399, '4.1', 17, 214, 'ENG 501', 'A', 2, 5, '1', 'created', '2018-05-26 08:50:28', '2018-05-26 08:50:28'),
(1400, '4.1', 17, 215, 'ENG 502', 'A', 2, 5, '1', 'created', '2018-05-26 08:50:28', '2018-05-26 08:50:28'),
(1401, '4.1', 17, 216, 'PNG 501', 'A', 3, 5, '1', 'created', '2018-05-26 08:50:28', '2018-05-26 08:50:28'),
(1402, '4.1', 17, 217, 'PNG 502', 'A', 2, 5, '1', 'created', '2018-05-26 08:50:29', '2018-05-26 08:50:29'),
(1403, '4.1', 17, 218, 'PNG 503', 'A', 3, 5, '1', 'created', '2018-05-26 08:50:29', '2018-05-26 08:50:29'),
(1404, '4.1', 17, 219, 'PNG 504', 'A', 2, 5, '1', 'created', '2018-05-26 08:50:29', '2018-05-26 08:50:29'),
(1405, '4.1', 17, 220, 'PNG 505', 'A', 1, 5, '1', 'created', '2018-05-26 08:50:29', '2018-05-26 08:50:29'),
(1406, '4.1', 17, 221, 'PNG 510', 'A', 3, 5, '1', 'created', '2018-05-26 08:50:29', '2018-05-26 08:50:29'),
(1407, '4.1', 17, 222, 'PNG 515', 'A', 3, 5, '1', 'created', '2018-05-26 08:50:29', '2018-05-26 08:50:29'),
(1408, '4.1', 17, 223, 'PNG 506', 'A', 3, 5, '2', 'created', '2018-05-26 08:50:29', '2018-05-26 08:50:29'),
(1409, '4.1', 17, 224, 'PNG 507', 'A', 3, 5, '2', 'created', '2018-05-26 08:50:29', '2018-05-26 08:50:29'),
(1410, '4.1', 17, 225, 'PNG 508', 'A', 2, 5, '2', 'created', '2018-05-26 08:50:29', '2018-05-26 08:50:29'),
(1411, '4.1', 17, 226, 'PNG 509', 'A', 3, 5, '2', 'created', '2018-05-26 08:50:29', '2018-05-26 08:50:29'),
(1412, '4.1', 17, 227, 'XXX XXX', 'A', 3, 5, '2', 'created', '2018-05-26 08:50:29', '2018-05-26 08:50:29'),
(1413, '4.1', 17, 228, 'PNG 520', 'C', 6, 5, '2', 'created', '2018-05-26 08:50:29', '2018-05-26 08:50:29'),
(1414, '4.5', 17, 178, 'CHM 240', 'A', 3, 2, '2', 'created', '2018-05-26 08:57:05', '2018-05-26 08:57:05'),
(1415, '4.5', 17, 179, 'ENG 206', 'A', 3, 2, '2', 'created', '2018-05-26 08:57:05', '2018-05-26 08:57:05'),
(1416, '4.5', 17, 180, 'ENG 207', 'B', 2, 2, '2', 'created', '2018-05-26 08:57:05', '2018-05-26 08:57:05'),
(1417, '4.5', 17, 181, 'ENG 208', 'A', 2, 2, '2', 'created', '2018-05-26 08:57:05', '2018-05-26 08:57:05'),
(1418, '4.5', 17, 182, 'ENG 209', 'A', 3, 2, '2', 'created', '2018-05-26 08:57:05', '2018-05-26 08:57:05'),
(1419, '4.5', 17, 183, 'ENG 205', 'A', 3, 2, '2', 'created', '2018-05-26 08:57:05', '2018-05-26 08:57:05'),
(1420, '4.5', 17, 184, 'ENG 211', 'A', 1, 2, '2', 'created', '2018-05-26 08:57:05', '2018-05-26 08:57:05'),
(1421, '4.5', 17, 185, 'ENG 212', 'A', 1, 2, '2', 'created', '2018-05-26 08:57:05', '2018-05-26 08:57:05'),
(1422, '4.5', 17, 186, 'CEG 231', 'A', 2, 2, '2', 'created', '2018-05-26 08:57:05', '2018-05-26 08:57:05'),
(1423, '4.5', 17, 187, 'ENG 301', 'A', 3, 3, '1', 'created', '2018-05-26 08:57:05', '2018-05-26 08:57:05'),
(1424, '4.5', 17, 188, 'ENG 302', 'A', 2, 3, '1', 'created', '2018-05-26 08:57:05', '2018-05-26 08:57:05'),
(1425, '4.5', 17, 189, 'CHE 315', 'A', 3, 3, '1', 'created', '2018-05-26 08:57:05', '2018-05-26 08:57:05'),
(1426, '4.5', 17, 190, 'CHE 317', 'A', 3, 3, '1', 'created', '2018-05-26 08:57:06', '2018-05-26 08:57:06'),
(1427, '4.5', 17, 191, 'MEG 303', 'A', 2, 3, '1', 'created', '2018-05-26 08:57:06', '2018-05-26 08:57:06'),
(1428, '4.5', 17, 192, 'PNG 301', 'A', 3, 3, '1', 'created', '2018-05-26 08:57:06', '2018-05-26 08:57:06'),
(1429, '4.5', 17, 193, 'PNG 302', 'A', 3, 3, '1', 'created', '2018-05-26 08:57:06', '2018-05-26 08:57:06'),
(1430, '4.5', 17, 194, 'PNG 303', 'A', 2, 3, '1', 'created', '2018-05-26 08:57:06', '2018-05-26 08:57:06'),
(1431, '4.5', 17, 195, 'GES 300', 'A', 2, 3, '2', 'created', '2018-05-26 08:57:06', '2018-05-26 08:57:06'),
(1432, '4.5', 17, 196, 'GLY 313', 'A', 2, 3, '2', 'created', '2018-05-26 08:57:06', '2018-05-26 08:57:06'),
(1433, '4.5', 17, 197, 'ENG 303', 'A', 3, 3, '2', 'created', '2018-05-26 08:57:06', '2018-05-26 08:57:06'),
(1434, '4.5', 17, 198, 'CHE 314', 'A', 3, 3, '2', 'created', '2018-05-26 08:57:06', '2018-05-26 08:57:06'),
(1435, '4.5', 17, 199, 'PNG 304', 'A', 2, 3, '2', 'created', '2018-05-26 08:57:06', '2018-05-26 08:57:06'),
(1436, '4.5', 17, 200, 'PNG 305', 'A', 2, 3, '2', 'created', '2018-05-26 08:57:06', '2018-05-26 08:57:06'),
(1437, '4.5', 17, 201, 'PNG 306', 'A', 3, 3, '2', 'created', '2018-05-26 08:57:06', '2018-05-26 08:57:06'),
(1438, '4.5', 17, 202, 'PNG 307', 'A', 3, 3, '2', 'created', '2018-05-26 08:57:06', '2018-05-26 08:57:06'),
(1439, '4.5', 17, 203, 'PNG 308', 'A', 3, 3, '2', 'created', '2018-05-26 08:57:06', '2018-05-26 08:57:06'),
(1440, '4.5', 17, 204, 'ENG 401', 'A', 3, 4, '1', 'created', '2018-05-26 08:57:06', '2018-05-26 08:57:06'),
(1441, '4.5', 17, 205, 'ENG 402', 'A', 2, 4, '1', 'created', '2018-05-26 08:57:06', '2018-05-26 08:57:06'),
(1442, '4.5', 17, 206, 'PNG 401', 'A', 3, 4, '1', 'created', '2018-05-26 08:57:06', '2018-05-26 08:57:06'),
(1443, '4.5', 17, 207, 'PNG 402', 'A', 3, 4, '1', 'created', '2018-05-26 08:57:06', '2018-05-26 08:57:06'),
(1444, '4.5', 17, 208, 'PNG 403', 'A', 3, 4, '1', 'created', '2018-05-26 08:57:07', '2018-05-26 08:57:07'),
(1445, '4.5', 17, 209, 'PNG 404', 'A', 2, 4, '1', 'created', '2018-05-26 08:57:07', '2018-05-26 08:57:07'),
(1446, '4.5', 17, 210, 'PNG 405', 'A', 2, 4, '1', 'created', '2018-05-26 08:57:07', '2018-05-26 08:57:07'),
(1447, '4.5', 17, 211, 'GLY 401', 'A', 3, 4, '1', 'created', '2018-05-26 08:57:07', '2018-05-26 08:57:07'),
(1448, '4.5', 17, 212, 'ENG 400', 'A', 9, 4, '2', 'created', '2018-05-26 08:57:07', '2018-05-26 08:57:07'),
(1449, '4.5', 17, 213, 'GES 400', 'A', 2, 4, '2', 'created', '2018-05-26 08:57:07', '2018-05-26 08:57:07'),
(1450, '4.5', 17, 214, 'ENG 501', 'A', 2, 5, '1', 'created', '2018-05-26 08:57:07', '2018-05-26 08:57:07'),
(1451, '4.5', 17, 215, 'ENG 502', 'A', 2, 5, '1', 'created', '2018-05-26 08:57:07', '2018-05-26 08:57:07'),
(1452, '4.5', 17, 216, 'PNG 501', 'A', 3, 5, '1', 'created', '2018-05-26 08:57:07', '2018-05-26 08:57:07'),
(1453, '4.5', 17, 217, 'PNG 502', 'A', 2, 5, '1', 'created', '2018-05-26 08:57:07', '2018-05-26 08:57:07'),
(1454, '4.5', 17, 218, 'PNG 503', 'A', 3, 5, '1', 'created', '2018-05-26 08:57:07', '2018-05-26 08:57:07'),
(1455, '4.5', 17, 219, 'PNG 504', 'A', 2, 5, '1', 'created', '2018-05-26 08:57:07', '2018-05-26 08:57:07'),
(1456, '4.5', 17, 220, 'PNG 505', 'A', 1, 5, '1', 'created', '2018-05-26 08:57:07', '2018-05-26 08:57:07'),
(1457, '4.5', 17, 221, 'PNG 510', 'A', 3, 5, '1', 'created', '2018-05-26 08:57:07', '2018-05-26 08:57:07'),
(1458, '4.5', 17, 222, 'PNG 515', 'A', 3, 5, '1', 'created', '2018-05-26 08:57:07', '2018-05-26 08:57:07'),
(1459, '4.5', 17, 223, 'PNG 506', 'A', 3, 5, '2', 'created', '2018-05-26 08:57:08', '2018-05-26 08:57:08'),
(1460, '4.5', 17, 224, 'PNG 507', 'A', 3, 5, '2', 'created', '2018-05-26 08:57:08', '2018-05-26 08:57:08'),
(1461, '4.5', 17, 225, 'PNG 508', 'A', 2, 5, '2', 'created', '2018-05-26 08:57:08', '2018-05-26 08:57:08'),
(1462, '4.5', 17, 226, 'PNG 509', 'A', 3, 5, '2', 'created', '2018-05-26 08:57:08', '2018-05-26 08:57:08'),
(1463, '4.5', 17, 227, 'XXX XXX', 'A', 3, 5, '2', 'created', '2018-05-26 08:57:08', '2018-05-26 08:57:08'),
(1464, '4.5', 17, 228, 'PNG 520', 'A', 6, 5, '2', 'created', '2018-05-26 08:57:08', '2018-05-26 08:57:08');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cgpa` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Avatar_empty_x1.png',
  `ip` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faculty_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `cgpa`, `photo`, `ip`, `country`, `last_login`, `school_name`, `faculty_name`, `department_name`, `department_id`, `faculty_id`, `school_id`, `country_id`, `level`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(17, 'Providence', 'Ifeosame', 'providenceifeosame@gmail.com', '$2y$10$QTPLSWRcNBUWWAWEO4CZOO5UwU.KYxeAiDkIGYH4IGjvk6G9xkjYC', '3.37', 'bitch.jpg', '127.0.0.1', 'Nigeria', '2018-07-11 22:30:44', 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, NULL, NULL, NULL, 'B4XCl0uLm2TVtKolHkG23vxx8PSHt90tTGLFuBb1cW0dtXPOgHNDjOts026r', '2018-03-11 12:01:53', '2018-03-11 12:01:53'),
(37, 'Precious', 'Chukunda', 'precious@chigisoft.com', '$2y$10$2v9T8AGZSIzA1k55oQGXmu6rbIMzYUPdm0shxGQQQf6lT.cEbCUC2', NULL, 'Avatar_empty_x1.png', '129.56.12.56', 'Nigeria', '2018-05-11 08:29:52', 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, NULL, NULL, NULL, '7rV3jq5wBjynPSdlMo3L4EDyfLB1E5weqTjI6vl3JsokjeKQ5aksOhLMrZrR', '2018-04-23 07:13:20', '2018-04-23 07:13:20'),
(38, 'KINIKACHI', 'JOSELYN', 'kachi@chigisoft.com', '$2y$10$YQtsnlosMS9rDFpdWEK4muc9PD2/pFQ6CmbTbvoxIVjBUsvvvKJzK', NULL, 'Avatar_empty_x1.png', '127.0.0.1', 'Nigeria', '2018-04-23 08:16:00', 'University of port-harcourt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9wrGN5ZkjskMAKAdnOz9H10HOuza4sWCrmm5RfckP8GwLyp9awgdIDjJC3Q8', '2018-04-23 07:16:00', '2018-04-23 07:16:00'),
(39, 'Precious', 'Dike', 'dike@chigisoft.com', '$2y$10$o1ICiLURq9SUouDtnpn.c.QOGtb6/zpS9baK4hPsuR/9ByHH3tzm2', NULL, 'Avatar_empty_x1.png', '129.56.12.120', 'Nigeria', '2018-04-26 18:09:33', 'University of port-harcourt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ftt0j13H12H5IeWxaQJICesRPRV87vhdgrrZQC5FiuTbNrgWhk0oSumHICSR', '2018-04-23 07:16:59', '2018-04-23 07:16:59'),
(40, 'Favour', 'Kelvin', 'favourkelvin17@gmail.com', '$2y$10$ixkLyLKeqrLacQkpvrX5ZOy6tTxEwfyvljovpVHd0bwf0mL8sBeaC', NULL, 'Avatar_empty_x1.png', '129.56.12.90', 'Nigeria', '2018-04-24 11:58:51', 'Abia state University, Uturu', 'Biological and physical sciences', 'Microbiology', NULL, NULL, NULL, NULL, NULL, NULL, 'YnMjMtMjaYSvOpi9POqf49Fph5taZGdalWUUMtEqFvrsxyPtJprQw1e1EW4C', '2018-04-23 18:13:18', '2018-04-23 18:13:18'),
(43, 'Perrie', 'Fidelis', 'perriefidelis@gmail.com', '$2y$10$D5NlI7nZZIPjUP4sxD17W.YlLRWQyGK6fM15ZR/6AIbIh5WD0IRRW', NULL, 'Avatar_empty_x1.png', '129.56.12.62', 'Nigeria', '2018-04-23 16:22:41', 'University of port-harcourt', 'Sciences', 'Microbiology', NULL, NULL, NULL, NULL, NULL, NULL, 'PMezuTTcxJktAx3h9dLAxG7fVEtdCSqZbgRo9mcOiAsc0BCP0uqEUhnL2CqZ', '2018-04-23 20:22:40', '2018-04-23 20:22:40'),
(45, 'Nnoka', 'Godswill', 'Makeitgoing89@gmail.com', '$2y$10$6uL1H7PK5I73iwyScbQjbOFDV59or23LreHqYP1ZpeBEue6b6iX52', NULL, 'Avatar_empty_x1.png', '197.210.54.197', 'Nigeria', '2018-04-25 09:42:56', 'University of port-harcourt', 'Engineering', 'Electronics and Computer Engineering', NULL, NULL, NULL, NULL, NULL, NULL, 'H3HGCWkxjVXzYRmNaXkTc3tCgohpLWXQbsT7zjuOVEKJr0ezUQ4Bg2sFHyQc', '2018-04-25 13:30:45', '2018-04-25 13:30:45'),
(47, 'Tombra', 'Igbosi', 'Tombraigbosi@gmail.com', '$2y$10$Qm6UX.2HTn5sSwQOJI8YX.GRLvL0TEWugEYEHh7kvzAL8HNydH072', '3.42', 'Avatar_empty_x1.png', '105.112.35.113', 'Nigeria', '2018-04-26 12:40:26', 'University of port-harcourt', 'Engineering', 'Petroleum Engineering', NULL, NULL, NULL, NULL, NULL, NULL, '0vjX80CpoDPPfiv3ScD4gS4qJxZvhrzLpH88R3LeEK5Nlfa8M94vcBLlE7zF', '2018-04-26 13:53:41', '2018-04-26 13:53:41'),
(48, 'Godswill', 'Omonaye', 'Omonayeg@gmail.com', '$2y$10$8tmXhmkIDSuQj6bQ.o/Z2.u7LpCGgCtd2MfjvEdQ0lVq/Fz7L.MKW', NULL, 'Avatar_empty_x1.png', '105.112.32.158', 'Nigeria', '2018-04-26 10:23:03', 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, NULL, NULL, NULL, 'MAYocWfJ3YPjm7zNRUURAOwCrZDPYQklsYKs80rSRh67pQxBqJQGPUEs5Emm', '2018-04-26 14:23:03', '2018-04-26 14:23:03'),
(49, 'Josh', 'Omosigho', 'Omosighojosh@gmail.com', '$2y$10$lDCAsq9/G5CgAD1fHgX7qOyizK2JNJfhL8VgXppRPIBI8m5GRw6eq', NULL, 'Avatar_empty_x1.png', '127.0.0.1', 'Nigeria', '2018-07-09 13:57:25', 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, NULL, NULL, NULL, 'y3IE6rnL16tVscLIcsE9MfQiPwRO6Y4OSe1qbupsK9ImWuB6h7y0GiuYBTpb', '2018-04-26 14:57:49', '2018-04-26 14:57:49'),
(50, 'Isaac', 'Sokari', 'isaacsokari@gmail.com', '$2y$10$79Esft3TcR21E7LgOKA8q.J765Yf43pDB3spBSqWCLJEuRiX1KPZG', '3.64', 'Avatar_empty_x1.png', '129.56.11.3', 'Nigeria', '2018-04-30 08:12:45', 'University of port-harcourt', 'Engineering', 'Civil Engineering', NULL, NULL, NULL, NULL, NULL, NULL, '5TrSI7peS0Ir4BTYPixUvbt7y5T5DIAno4OVG9hMk9OhaWkhux7GjJoCtoAg', '2018-04-30 12:12:45', '2018-04-30 12:12:45'),
(51, 'Kingsley', 'Emeruem', 'emmytokinz@gmail.com', '$2y$10$lG0kapnXqqJiQnwKkdUqneXC8Q7LYTY02baukxJydA4vB73UMBBPa', NULL, 'Avatar_empty_x1.png', '105.112.33.231', 'Nigeria', '2018-05-05 05:40:07', 'University of port-harcourt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'E4vJbfejOP8Jh4R2foNmWWOF4q4KYNB2mlkLYQyFcgHGKjVn5WuqB9WKSNho', '2018-05-03 12:20:11', '2018-05-03 12:20:11'),
(52, 'Providence', 'Uso', 'treysongz@gmail.com', '$2y$10$MLXLqrUnJV7DpQZ86RtYse/nQhN7W9d.UJSkgYdWOyFSCAL91KQTy', NULL, 'Avatar_empty_x1.png', '127.0.0.1', 'Nigeria', '2018-08-08 16:41:02', 'University of port-harcourt', 'Engineering', 'Gas Engineering', NULL, NULL, NULL, NULL, NULL, NULL, 'AVSmXrbeNyGvbNhhYYj0LdAuHWsuPf3BITR3K1qf9oI2e1vRxPAjhQW7uTNT', '2018-08-08 15:41:02', '2018-08-08 15:41:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `target_values`
--
ALTER TABLE `target_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `targets`
--
ALTER TABLE `targets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1100;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;
--
-- AUTO_INCREMENT for table `target_values`
--
ALTER TABLE `target_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `targets`
--
ALTER TABLE `targets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1465;
--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;--
-- Database: `easypermit`
--
CREATE DATABASE IF NOT EXISTS `easypermit` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `easypermit`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `ip`, `last_login`, `level`, `status`, `created_at`, `updated_at`) VALUES
(1, 'calmpress@gmail.com', '$2y$10$GQ6JgS/bZMQgwoYuym6ire1pamz02FREM7s50pmRF0AbMqBL7SMoa', NULL, NULL, '1', 'active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permit_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `email`, `name`, `link`, `permit_id`, `reason`, `status`, `created_at`, `updated_at`) VALUES
(1, 'calmpress@gmail.com', 'gen', 'uploads/gen.pdf', '1', NULL, 'accepted', '2017-11-26 23:00:00', '2017-11-27 16:21:16'),
(2, 'calmpress@gmail.com', 'gen2', 'uploads/gen.pdf', '1', NULL, 'pending', '2017-11-26 23:00:00', NULL),
(3, 'calmpress@gmail.com', 'gen2', 'uploads/gen.pdf', '2', 'not valid', 'declined', '2017-11-26 23:00:00', '2017-11-27 16:23:52'),
(4, 'calmpress@gmail.com', 'gen2', 'uploads/gen.pdf', '2', NULL, 'accepted', '2017-11-26 23:00:00', '2017-11-27 16:50:31'),
(5, 'calmpress@gmail.com', 'gen2', 'uploads/gen.pdf', '2', NULL, 'pending', '2017-11-26 23:00:00', NULL),
(6, 'calmpress@gmail.com', 'a_p_license', 'uploads/1511824611_ok.pdf', '4', NULL, 'deleted', '2017-11-27 22:16:56', '2017-11-27 22:32:15'),
(7, 'calmpress@gmail.com', 'a_p_license', 'uploads/1511825623_ok.pdf', '6', NULL, 'pending', '2017-11-27 22:33:45', '2017-11-27 22:33:45'),
(8, 'calmpress@gmail.com', 'c_report', 'uploads/1511825638_ok.pdf', '6', NULL, 'pending', '2017-11-27 22:34:00', '2017-11-27 22:34:00'),
(9, 'calmpress@gmail.com', 'plan', 'uploads/1511825825_ok.pdf', '4', NULL, 'accepted', '2017-11-27 22:37:07', '2017-11-27 22:46:05'),
(10, 'calmpress@gmail.com', 'c_report', 'uploads/1511825876_okdule.pdf', '2', NULL, 'pending', '2017-11-27 22:37:58', '2017-11-27 22:37:58'),
(11, 'calmpress@gmail.com', 's_c_sheet', 'uploads/1511826014_ok.pdf', '4', NULL, 'accepted', '2017-11-27 22:40:15', '2017-11-27 22:46:25'),
(12, 'calmpress@gmail.com', 's_t_report', 'uploads/1511826023_ok.pdf', '4', NULL, 'accepted', '2017-11-27 22:40:33', '2017-11-27 22:48:20'),
(13, 'calmpress@gmail.com', 'engineer_cv', 'uploads/1511826041_ok.pdf', '4', NULL, 'accepted', '2017-11-27 22:40:47', '2017-11-27 22:47:51'),
(14, 'calmpress@gmail.com', 'a_p_license', 'uploads/1511826064_ok.pdf', '4', NULL, 'accepted', '2017-11-27 22:41:06', '2017-11-27 22:47:40'),
(15, 'calmpress@gmail.com', 'e_impact', 'uploads/1511826083_ok.pdf', '4', NULL, 'accepted', '2017-11-27 22:41:25', '2017-11-27 22:47:16'),
(16, 'calmpress@gmail.com', 'w_compensation', 'uploads/1511826095_ok.pdf', '4', NULL, 'accepted', '2017-11-27 22:41:41', '2017-11-27 22:46:42'),
(17, 'calmpress@gmail.com', 'c_report', 'uploads/1511826114_ok.pdf', '4', NULL, 'accepted', '2017-11-27 22:41:58', '2017-11-27 23:03:42'),
(18, 'calmpress@gmail.com', 'land_doc', 'uploads/1511826129_ok.pdf', '4', NULL, 'accepted', '2017-11-27 22:42:11', '2017-11-27 23:11:40'),
(19, 'supardyke@gmail.com', 'a_p_license', 'uploads/1511840033_ok.pdf', '5', NULL, 'pending', '2017-11-28 02:34:02', '2017-11-28 02:34:02'),
(20, 'supardyke@gmail.com', 'plan', 'uploads/1511840069_ok.pdf', '5', NULL, 'pending', '2017-11-28 02:34:35', '2017-11-28 02:34:35'),
(21, 'supardyke@gmail.com', 's_t_report', 'uploads/1511840125_ok.pdf', '5', NULL, 'accepted', '2017-11-28 02:35:29', '2017-11-28 02:35:55'),
(22, 'calmpress@gmail.com', 'w_compensation', 'uploads/1511843722_ok.pdf', '1', NULL, 'pending', '2017-11-28 03:35:24', '2017-11-28 03:35:24'),
(23, 'calmpress@gmail.com', 's_c_sheet', 'uploads/1511843839_ok.pdf', '1', NULL, 'pending', '2017-11-28 03:37:29', '2017-11-28 03:37:29'),
(24, 'calmpress@gmail.com', 'a_p_license', 'uploads/1511843937_ok.pdf', '1', NULL, 'pending', '2017-11-28 03:39:01', '2017-11-28 03:39:01'),
(25, 'providenceifeosame@gmail.com', 'plan', 'uploads/1511848693_8.pdf', '8', NULL, 'pending', '2017-11-28 04:59:19', '2017-11-28 04:59:19');

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
(1, '2017_10_08_032213_create_guests_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `permits`
--

CREATE TABLE `permits` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `building_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_building_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lga` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permits`
--

INSERT INTO `permits` (`id`, `email`, `name`, `building_type`, `sub_building_type`, `state`, `lga`, `address`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'calmpress@gmail.com', NULL, 'residential', 'duplex', 'Rivers', 'ObioAkpor', NULL, '55000', 'pending', '2017-11-26 23:00:00', '2017-11-27 16:26:31'),
(2, 'calmpress@gmail.com', NULL, 'residential', 'storey', 'Rivers', 'ObioAkpor', NULL, NULL, 'pending', '2017-11-26 23:00:00', NULL),
(3, 'calmpress@gmail.com', NULL, 'Commercial', 'Filling station', 'Abia', 'Ohafia', 'No 5 lilivan avanue Ikolo', '150000', 'processing', '2017-11-27 21:05:27', '2017-11-28 00:42:55'),
(4, 'calmpress@gmail.com', NULL, 'commercial', 'Church', 'Abia', 'Ohafia', 'PH otogbo', '50000', 'complete', '2017-11-27 21:13:18', '2017-11-28 00:29:48'),
(5, 'supardyke@gmail.com', NULL, 'Commercial', 'Resturant', 'Akwa Ibom', 'Ohafia', 'No 5 lilivan avanue Ikolo', '50000', 'processing', '2017-11-28 02:17:29', '2017-11-28 02:40:09'),
(6, 'supardyke@gmail.com', NULL, 'Residential', 'Self contain', 'Cross River', 'Ika', 'PH otogbo 56', NULL, 'pending', '2017-11-28 02:19:13', '2017-11-28 02:19:13'),
(7, 'calmpress@gmail.com', 'Dike el', 'Commercial', 'Bungallow', 'Abia', 'Ohafia', 'No 5 lilivan avanue Ikolo', NULL, 'pending', '2017-11-28 03:34:07', '2017-11-28 03:34:07'),
(8, 'providenceifeosame@gmail.com', 'igoni View hotel', 'Commercial', 'Church', 'Anambra', 'akwa', 'jaja', NULL, 'pending', '2017-11-28 04:13:27', '2017-11-28 04:13:27');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permit_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `email`, `transaction_id`, `permit_id`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'calmpress@gmail.com', 'T717889817855282', '4', '50000', NULL, '2017-11-28 00:06:32', '2017-11-28 00:06:32'),
(2, 'calmpress@gmail.com', 'T855142734331575', '4', '50000', NULL, '2017-11-28 00:08:05', '2017-11-28 00:08:05'),
(3, 'calmpress@gmail.com', 'T717889817855294', '4', '50000', NULL, '2017-11-28 00:24:53', '2017-11-28 00:24:53'),
(4, 'calmpress@gmail.com', 'T717889817855284', '4', '50000', NULL, '2017-11-28 00:27:12', '2017-11-28 00:27:12'),
(5, 'calmpress@gmail.com', NULL, '3', NULL, NULL, '2017-11-28 00:40:10', '2017-11-28 00:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_confirm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_confirm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `address`, `name`, `phone`, `email_confirm`, `phone_confirm`, `code`, `ip`, `last_login`, `status`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'calmpress@gmail.com', '$2y$10$GQ6JgS/bZMQgwoYuym6ire1pamz02FREM7s50pmRF0AbMqBL7SMoa', 'No 5 lilivan avanue Ikolo', 'Dike El', '08034567895', NULL, NULL, NULL, NULL, NULL, 'active', 'user', 'v6etqUWvqZQale7gDDesnhw5S4stFAsicUba2mZtc44vqAmDxgI951aeANK6', NULL, '2017-11-28 01:57:49'),
(2, 'supardyke@gmail.com', '$2y$10$/bWyMBNeXNhnzsweMrlTaOFfwrSjsYGJ7wiEqvBSiIqbsWWBWSpZq', 'PH otogbo lane', 'Dike el', '23480903243', NULL, NULL, '798931', NULL, NULL, 'new', NULL, NULL, '2017-11-28 01:59:54', '2017-11-28 02:06:47'),
(3, 'providenceifeosame@gmail.com', '$2y$10$fR/cD/bPArzUsV0FU2NEY.WxfYCg8uVSn1.NjpEzJBQbyx0biKUIG', 'lagos', 'Providence', '08187655140', NULL, NULL, '311150', NULL, NULL, 'new', NULL, 'joFCxBTOCQzrZyYH2RT2gHTr5jceF9cBNlqQ6bL4C48DnGLtg5qI5zGVEwze', '2017-11-28 04:10:03', '2017-11-28 04:10:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permits`
--
ALTER TABLE `permits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `permits`
--
ALTER TABLE `permits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Database: `hack`
--
CREATE DATABASE IF NOT EXISTS `hack` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hack`;

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reciever` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_seen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reciever_seen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_head`
--

CREATE TABLE `chat_head` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reciever` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `funding_application`
--

CREATE TABLE `funding_application` (
  `id` int(10) UNSIGNED NOT NULL,
  `funding_id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fundings`
--

CREATE TABLE `fundings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `market`
--

CREATE TABLE `market` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `storage_facility`
--

CREATE TABLE `storage_facility` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_confirm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_confirm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `state`, `category`, `email_confirm`, `phone_confirm`, `full_name`, `gender`, `phone`, `profile_image`, `last_login`, `dob`, `browser`, `ip`, `about`, `description`, `address`, `admin`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'providenceifeosame@gmail.com', '$2y$10$dgu.4XSozGJHYGPodkekvuaurZc1WN/sZFChgUV0h/V6mL/.X5.i.', 'rivers', 'Farmer', NULL, NULL, NULL, NULL, NULL, '1521609431_bitch.jpg', '1521609446', NULL, NULL, '127.0.0.1', NULL, NULL, NULL, 0, NULL, NULL, '2018-03-21 04:17:25', '2018-03-21 04:17:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_head`
--
ALTER TABLE `chat_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funding_application`
--
ALTER TABLE `funding_application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fundings`
--
ALTER TABLE `fundings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `market`
--
ALTER TABLE `market`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storage_facility`
--
ALTER TABLE `storage_facility`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chat_head`
--
ALTER TABLE `chat_head`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `funding_application`
--
ALTER TABLE `funding_application`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fundings`
--
ALTER TABLE `fundings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `market`
--
ALTER TABLE `market`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_facility`
--
ALTER TABLE `storage_facility`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;--
-- Database: `instagram_like`
--
CREATE DATABASE IF NOT EXISTS `instagram_like` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `instagram_like`;

-- --------------------------------------------------------

--
-- Table structure for table `admin__logs`
--

CREATE TABLE `admin__logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin__logs`
--

INSERT INTO `admin__logs` (`id`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, '2', '2017-09-22 16:42:06', '2017-09-22 16:42:06'),
(2, '3', '2017-09-22 16:43:15', '2017-09-22 16:43:15'),
(3, '4', '2017-09-22 16:46:27', '2017-09-22 16:46:27'),
(4, '5', '2017-09-23 12:15:00', '2017-09-23 12:15:00'),
(5, '6', '2017-09-23 12:16:25', '2017-09-23 12:16:25'),
(6, '7', '2017-09-23 14:49:43', '2017-09-23 14:49:43'),
(7, '8', '2017-09-23 14:54:44', '2017-09-23 14:54:44'),
(8, '9', '2017-09-23 15:21:18', '2017-09-23 15:21:18'),
(9, '10', '2017-09-23 15:22:55', '2017-09-23 15:22:55'),
(10, '11', '2017-09-23 15:44:13', '2017-09-23 15:44:13'),
(11, '12', '2017-09-23 15:48:27', '2017-09-23 15:48:27');

-- --------------------------------------------------------

--
-- Table structure for table `admin__posts`
--

CREATE TABLE `admin__posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post` text COLLATE utf8mb4_unicode_ci,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin__posts`
--

INSERT INTO `admin__posts` (`id`, `post_title`, `post`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'Volces In my head', 'bigsean inspired', 1, '2017-09-24 08:30:02', '2017-09-24 08:30:02');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(12, 'Isaac', 'isaac@gmail.com', '$2y$10$d1SkxJB1bAnEvu.TULfgAe/wdt5bM2DoibhewwJqHIr7lSZ9vGYWe', NULL, '2017-09-23 15:48:27', '2017-09-23 15:48:27');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'jhju', 27, 25, '2017-09-10 10:27:20', '2017-09-10 10:27:20');

-- --------------------------------------------------------

--
-- Table structure for table `following__tables`
--

CREATE TABLE `following__tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `followed_user_id` int(11) NOT NULL,
  `following_user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `following__tables`
--

INSERT INTO `following__tables` (`id`, `followed_user_id`, `following_user_id`, `created_at`, `updated_at`) VALUES
(8, 24, 25, '2017-09-16 22:29:35', '2017-09-16 22:29:35'),
(9, 24, 26, '2017-09-16 22:52:40', '2017-09-16 22:52:40'),
(10, 24, 27, '2017-09-17 04:46:50', '2017-09-17 04:46:50');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`, `status`) VALUES
(66, 23, 24, '2017-08-29 17:37:44', '2017-08-29 17:37:44', 1),
(72, 27, 25, '2017-09-10 10:28:24', '2017-09-10 10:28:24', 1),
(74, 27, 24, '2017-09-10 10:31:52', '2017-09-10 10:31:52', 1),
(75, 28, 25, '2017-09-16 14:10:23', '2017-09-16 14:10:23', 1),
(76, 29, 24, '2017-09-20 10:22:52', '2017-09-20 10:22:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `send_status` int(11) NOT NULL,
  `receive_status` int(11) NOT NULL,
  `read-status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(42, '2014_10_12_000000_create_users_table', 1),
(43, '2017_08_14_161913_create_posts_table', 1),
(44, '2017_08_14_162023_create_comments_table', 1),
(45, '2017_08_14_162112_create_messages_table', 1),
(46, '2017_08_14_162307_create_following__tables_table', 1),
(47, '2017_08_14_162352_create_user__logs_table', 1),
(48, '2017_08_14_162444_create_admins_table', 1),
(49, '2017_08_14_163004_create_admin__logs_table', 1),
(50, '2017_08_14_163059_create_admin__posts_table', 1),
(51, '2017_08_14_163140_create_notifications_table', 1),
(52, '2017_08_14_172550_create_police__emails_table', 1),
(53, '2017_08_14_182759_create_likes_table', 1),
(54, '2017_08_14_182959_create_views_table', 1),
(55, '2017_08_15_165515_create_user_logouts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `police__emails`
--

CREATE TABLE `police__emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `station_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `police__emails`
--

INSERT INTO `police__emails` (`id`, `station_name`, `email`, `created_at`, `updated_at`) VALUES
(2, 'Police Email 1', 'Police@gmail.com', '2017-09-24 10:00:55', '2017-09-24 10:00:55'),
(3, 'Police Email 2', 'Policia@gmail.com', '2017-09-24 10:01:11', '2017-09-24 10:01:11'),
(4, 'Oyigbo', 'Oyibopolice@gmail.com', '2017-09-25 05:44:21', '2017-09-25 05:44:21');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `post` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post`, `image`, `video`, `user_id`, `created_at`, `updated_at`) VALUES
(23, 'flexing', 'Sheila 20170426_212217.jpg', NULL, 24, '2017-08-29 17:37:37', '2017-08-29 17:37:37'),
(24, 'provydo', 'ifeoma 20170424_213901.jpg', NULL, 24, '2017-09-10 10:19:41', '2017-09-10 10:19:41'),
(25, 'iuhj', NULL, 'mark.mp4', 24, '2017-09-10 10:21:41', '2017-09-10 10:21:41'),
(26, 'jhj', NULL, NULL, 25, '2017-09-10 10:26:06', '2017-09-10 10:26:06'),
(27, 'ugyhyuug', NULL, NULL, 25, '2017-09-10 10:26:51', '2017-09-10 10:26:51'),
(28, 'sdddd', NULL, NULL, 24, '2017-09-16 13:08:59', '2017-09-16 13:08:59'),
(29, 'lol', NULL, NULL, 27, '2017-09-17 04:46:42', '2017-09-17 04:46:42'),
(30, 'yeah dat way', NULL, NULL, 24, '2017-09-20 10:23:06', '2017-09-20 10:23:06'),
(31, 'iverson', NULL, NULL, 24, '2017-09-21 10:44:14', '2017-09-21 10:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `user__logs`
--

CREATE TABLE `user__logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user__logs`
--

INSERT INTO `user__logs` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(42, 21, '2017-08-27 17:54:44', '2017-08-27 17:54:44'),
(43, 21, '2017-08-27 18:52:24', '2017-08-27 18:52:24'),
(44, 21, '2017-08-27 18:52:35', '2017-08-27 18:52:35'),
(45, 21, '2017-08-28 01:32:31', '2017-08-28 01:32:31'),
(46, 21, '2017-08-28 01:34:10', '2017-08-28 01:34:10'),
(47, 21, '2017-08-28 01:38:43', '2017-08-28 01:38:43'),
(48, 21, '2017-08-28 01:39:04', '2017-08-28 01:39:04'),
(49, 21, '2017-08-28 03:47:10', '2017-08-28 03:47:10'),
(50, 21, '2017-08-28 04:16:10', '2017-08-28 04:16:10'),
(51, 22, '2017-08-28 04:24:24', '2017-08-28 04:24:24'),
(52, 22, '2017-08-28 11:39:48', '2017-08-28 11:39:48'),
(53, 23, '2017-08-29 17:30:20', '2017-08-29 17:30:20'),
(54, 23, '2017-08-29 17:30:41', '2017-08-29 17:30:41'),
(55, 24, '2017-08-29 17:36:06', '2017-08-29 17:36:06'),
(56, 24, '2017-08-29 17:36:23', '2017-08-29 17:36:23'),
(57, 24, '2017-09-04 04:11:32', '2017-09-04 04:11:32'),
(58, 24, '2017-09-04 09:49:07', '2017-09-04 09:49:07'),
(59, 24, '2017-09-10 10:17:09', '2017-09-10 10:17:09'),
(60, 24, '2017-09-10 10:19:15', '2017-09-10 10:19:15'),
(61, 25, '2017-09-10 10:23:29', '2017-09-10 10:23:29'),
(62, 25, '2017-09-10 10:25:50', '2017-09-10 10:25:50'),
(63, 25, '2017-09-10 10:26:43', '2017-09-10 10:26:43'),
(64, 24, '2017-09-10 10:31:32', '2017-09-10 10:31:32'),
(65, 24, '2017-09-16 12:09:55', '2017-09-16 12:09:55'),
(66, 25, '2017-09-16 14:10:12', '2017-09-16 14:10:12'),
(67, 24, '2017-09-16 17:55:44', '2017-09-16 17:55:44'),
(68, 25, '2017-09-16 18:10:02', '2017-09-16 18:10:02'),
(69, 24, '2017-09-16 22:14:11', '2017-09-16 22:14:11'),
(70, 25, '2017-09-16 22:14:45', '2017-09-16 22:14:45'),
(71, 25, '2017-09-16 22:41:43', '2017-09-16 22:41:43'),
(72, 26, '2017-09-16 22:52:27', '2017-09-16 22:52:27'),
(73, 24, '2017-09-17 04:43:34', '2017-09-17 04:43:34'),
(74, 27, '2017-09-17 04:46:35', '2017-09-17 04:46:35'),
(75, 27, '2017-09-17 04:47:40', '2017-09-17 04:47:40'),
(76, 27, '2017-09-17 04:50:12', '2017-09-17 04:50:12'),
(77, 24, '2017-09-19 08:20:37', '2017-09-19 08:20:37'),
(78, 24, '2017-09-19 11:01:51', '2017-09-19 11:01:51'),
(79, 24, '2017-09-19 13:06:16', '2017-09-19 13:06:16'),
(80, 24, '2017-09-19 17:03:46', '2017-09-19 17:03:46'),
(81, 24, '2017-09-20 08:22:34', '2017-09-20 08:22:34'),
(82, 24, '2017-09-20 19:52:04', '2017-09-20 19:52:04'),
(83, 24, '2017-09-21 10:34:31', '2017-09-21 10:34:31'),
(84, 24, '2017-09-24 07:44:09', '2017-09-24 07:44:09'),
(85, 24, '2017-09-25 05:44:48', '2017-09-25 05:44:48'),
(86, 24, '2017-09-27 18:17:15', '2017-09-27 18:17:15'),
(87, 24, '2017-10-03 17:02:01', '2017-10-03 17:02:01'),
(88, 24, '2017-10-04 05:42:16', '2017-10-04 05:42:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_logouts`
--

CREATE TABLE `user_logouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_logouts`
--

INSERT INTO `user_logouts` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(18, '21', '2017-08-27 18:48:05', '2017-08-27 18:48:05'),
(19, '21', '2017-08-28 01:35:11', '2017-08-28 01:35:11'),
(20, '21', '2017-08-28 04:11:45', '2017-08-28 04:11:45'),
(21, '23', '2017-08-29 17:30:25', '2017-08-29 17:30:25'),
(22, '23', '2017-08-29 17:34:59', '2017-08-29 17:34:59'),
(23, '24', '2017-08-29 17:36:10', '2017-08-29 17:36:10'),
(24, '24', '2017-08-29 17:42:49', '2017-08-29 17:42:49'),
(25, '24', '2017-09-10 10:19:06', '2017-09-10 10:19:06'),
(26, '24', '2017-09-10 10:22:10', '2017-09-10 10:22:10'),
(27, '25', '2017-09-10 10:24:05', '2017-09-10 10:24:05'),
(28, '25', '2017-09-10 10:31:25', '2017-09-10 10:31:25'),
(29, '24', '2017-09-16 14:09:29', '2017-09-16 14:09:29'),
(30, '25', '2017-09-16 17:54:48', '2017-09-16 17:54:48'),
(31, '24', '2017-09-16 18:09:50', '2017-09-16 18:09:50'),
(32, '25', '2017-09-16 18:10:13', '2017-09-16 18:10:13'),
(33, '24', '2017-09-16 22:14:26', '2017-09-16 22:14:26'),
(34, '25', '2017-09-16 22:39:01', '2017-09-16 22:39:01'),
(35, '25', '2017-09-16 22:43:02', '2017-09-16 22:43:02'),
(36, '24', '2017-09-17 04:44:42', '2017-09-17 04:44:42'),
(37, '27', '2017-09-17 04:46:52', '2017-09-17 04:46:52'),
(38, '27', '2017-09-17 05:00:22', '2017-09-17 05:00:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `sex`, `city`, `user_name`, `phone`, `address`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(23, 'Jcole', NULL, 'male', 'lagos', 'nnamdi', '08187655140', 'lag', 'j@gmail.com', '$2y$10$uVvU.MQIGG4FJAdWxQY33.oR0bTuMOwVYtCIA8fVgFn7gUfZ5hOlu', 'jQX4u8GpJHWfI6UE2qTzuv6cy2u0ha2dZdIPHgbrXdJ2cRoWrRBblShPvp0p', '2017-08-29 17:30:19', '2017-08-29 17:30:19'),
(24, 'Providence ifeosame', 'folder.jpg', 'male', 'lagos', 'provydon', '08187655140', 'lag', 'providenceifeosame@gmail.com', '$2y$10$CrnhuWftAHrOXGtRU31QK.K2ZBEmuQLcfr0l2474D6D3SfC7z3xj.', 'YVpCSQfUqbdGT7QIVSS7FB2cZy2U45BdH2b296EwMukfVru7ZnIfJgrNHUtL', '2017-08-29 17:36:06', '2017-08-29 17:36:06'),
(25, 'Raymond', NULL, 'male', 'kjnkjnkn', 'ativie', '08151700676', '4 fasdjknkj', 'raymondativie@gmail.com', '$2y$10$JOj1OePhmiZ2T4RSvqDbSOBZyVn5yfXd8r/QvOKMQYbCxSbl/AEJi', 'pD5lLVEkVYeCnfqsgtYkm9TfJPhi0U6frWyIpNvItUve2H6y40K1KgvB72nZ', '2017-09-10 10:23:29', '2017-09-10 10:23:29'),
(26, 'Kalid', NULL, 'Male', 'lagos', 'kalid', '08077937950', 'agege', 'kalid@gmail.com', '$2y$10$xXtSfe/xqOMJWAbvbkJsqekPUTGyvXfod6VGeEiTwGVg0cmihmgSe', NULL, '2017-09-16 22:52:27', '2017-09-16 22:52:27'),
(27, 'Eze', NULL, 'Male', 'lagos', 'ezedon', '08187655140', 'agege', 'eze@gmail.com', '$2y$10$NhLlWMDbx8Ou8GuOGBFTPeUg9W8w1zR/Ll/Rfxr3MZD1YY8diuQzK', 'MQ5wQQHvWfGSWbxJeFrjW5xWaKHXOf1wgVVHueaPrG1sm4WIPsjRBdoViDYb', '2017-09-17 04:46:35', '2017-09-17 04:46:35');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin__logs`
--
ALTER TABLE `admin__logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin__posts`
--
ALTER TABLE `admin__posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `following__tables`
--
ALTER TABLE `following__tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `police__emails`
--
ALTER TABLE `police__emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user__logs`
--
ALTER TABLE `user__logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_logouts`
--
ALTER TABLE `user_logouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin__logs`
--
ALTER TABLE `admin__logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `admin__posts`
--
ALTER TABLE `admin__posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `following__tables`
--
ALTER TABLE `following__tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `police__emails`
--
ALTER TABLE `police__emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `user__logs`
--
ALTER TABLE `user__logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `user_logouts`
--
ALTER TABLE `user_logouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `jarazone`
--
CREATE DATABASE IF NOT EXISTS `jarazone` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jarazone`;

-- --------------------------------------------------------

--
-- Table structure for table `acctype`
--

CREATE TABLE `acctype` (
  `acctypeid` int(11) NOT NULL,
  `acctype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acctype`
--

INSERT INTO `acctype` (`acctypeid`, `acctype`) VALUES
(1, 'Savings'),
(2, 'Current'),
(3, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `admin_download_log`
--

CREATE TABLE `admin_download_log` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `time` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_download_log`
--

INSERT INTO `admin_download_log` (`id`, `project_id`, `time`, `date`, `admin_id`) VALUES
(1, 0, '12:14:08am', '12/03/17', 1),
(2, 0, '12:15:23am', '12/03/17', 1),
(3, 0, '12:19:11am', '12/03/17', 1),
(4, 0, '12:20:31am', '12/03/17', 1),
(5, 0, '12:42:20am', '12/03/17', 1),
(6, 0, '12:42:26am', '12/03/17', 1),
(7, 0, '12:45:27am', '12/03/17', 1),
(8, 0, '12:46:06am', '12/03/17', 1),
(9, 0, '12:46:49am', '12/03/17', 1),
(10, 0, '12:46:55am', '12/03/17', 1),
(11, 5, '01:02:09am', '12/03/17', 1),
(12, 4, '06:33:18am', '12/03/17', 1),
(13, 4, '06:34:13am', '12/03/17', 1),
(14, 4, '06:42:45am', '12/03/17', 1),
(15, 4, '08:34:26am', '12/03/17', 1),
(16, 5, '08:35:10am', '12/03/17', 1),
(17, 4, '08:36:51am', '12/03/17', 1),
(18, 4, '08:37:37am', '12/03/17', 1),
(19, 5, '08:37:58am', '12/03/17', 1),
(20, 4, '08:38:46am', '12/03/17', 1),
(21, 4, '08:39:13am', '12/03/17', 1),
(22, 4, '08:40:04am', '12/03/17', 1),
(23, 4, '08:41:54am', '12/03/17', 1),
(24, 4, '08:42:46am', '12/03/17', 1),
(25, 4, '08:44:39am', '12/03/17', 1),
(26, 4, '08:47:43am', '12/03/17', 1),
(27, 4, '08:48:31am', '12/03/17', 1),
(28, 4, '07:39:50pm', '12/03/17', 1),
(29, 5, '07:40:20pm', '12/03/17', 1),
(30, 4, '07:42:55pm', '12/03/17', 1),
(31, 6, '07:43:05pm', '12/03/17', 1),
(32, 4, '07:50:43pm', '12/03/17', 1),
(33, 6, '07:51:27pm', '12/03/17', 1),
(34, 6, '07:53:50pm', '12/03/17', 1),
(35, 4, '07:53:59pm', '12/03/17', 1),
(36, 6, '07:54:53pm', '12/03/17', 1),
(37, 5, '07:55:17pm', '12/03/17', 1),
(38, 5, '07:55:42pm', '12/03/17', 1),
(39, 4, '08:11:04pm', '12/03/17', 1),
(40, 4, '08:11:19pm', '12/03/17', 1),
(41, 4, '09:09:54pm', '12/03/17', 1),
(42, 6, '10:12:24pm', '12/03/17', 1),
(43, 4, '10:13:54pm', '12/03/17', 1),
(44, 4, '10:01:48pm', '13/03/17', 1),
(45, 6, '03:39:04am', '25/03/17', 1),
(46, 6, '04:11:33am', '25/03/17', 1),
(47, 6, '07:42:31pm', '26/03/17', 1),
(48, 5, '07:42:58pm', '26/03/17', 1),
(49, 5, '07:44:43pm', '26/03/17', 1),
(50, 6, '07:54:17am', '27/03/17', 1),
(51, 6, '07:54:38am', '27/03/17', 1),
(52, 6, '07:55:16am', '27/03/17', 1),
(53, 6, '07:55:41am', '27/03/17', 1),
(54, 6, '07:56:59am', '27/03/17', 1),
(55, 6, '07:57:18am', '27/03/17', 1),
(56, 6, '07:57:33am', '27/03/17', 1),
(57, 5, '10:43:01am', '07/04/17', 1),
(58, 2, '02:28:58pm', '12/05/17', 2);

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `loginid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `email` varchar(225) NOT NULL,
  `logintime` varchar(15) NOT NULL,
  `logindate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`loginid`, `id`, `firstname`, `email`, `logintime`, `logindate`) VALUES
(1, 0, 'Providence', 'care@gmail.com', '01:54:34pm', '16/12/18'),
(2, 0, 'Providence', 'care@gmail.com', '10:30:46am', '16/12/22'),
(3, 0, 'Providence', 'care@gmail.com', '10:42:40am', '16/12/22'),
(4, 0, 'Providence', 'care@gmail.com', '10:46:17am', '16/12/22'),
(5, 0, 'Providence', 'care@gmail.com', '10:48:36am', '16/12/22'),
(6, 0, 'Providence', 'care@gmail.com', '10:52:27am', '16/12/22'),
(7, 0, 'Providence', 'care@gmail.com', '01:03:51pm', '16/12/22'),
(8, 0, 'Providence', 'care@gmail.com', '09:24:13pm', '16/12/22'),
(9, 0, 'Providence', 'care@gmail.com', '01:05:57am', '16/12/24'),
(10, 0, 'Providence', 'care@gmail.com', '07:02:55am', '16/12/24'),
(11, 0, 'Providence', 'care@gmail.com', '10:32:37am', '16/12/24'),
(12, 0, 'Providence', 'care@gmail.com', '09:29:40pm', '24/12/16'),
(13, 0, 'Providence', 'care@gmail.com', '09:32:50pm', '24/12/16'),
(14, 0, 'Providence', 'care@gmail.com', '10:39:59am', '26/12/16'),
(15, 0, 'Providence', 'care@gmail.com', '03:46:40pm', '26/12/16'),
(16, 0, 'Providence', 'care@gmail.com', '07:33:58pm', '26/12/16'),
(17, 0, 'Providence', 'care@gmail.com', '09:02:17pm', '26/12/16'),
(18, 0, 'Providence', 'care@gmail.com', '09:28:36pm', '26/12/16'),
(19, 0, 'Providence', 'care@gmail.com', '01:08:59pm', '27/12/16'),
(20, 0, 'Providence', 'care@gmail.com', '05:38:58pm', '03/01/17'),
(21, 0, 'Providence', 'care@gmail.com', '04:34:17pm', '27/12/16'),
(22, 0, 'Providence', 'care@gmail.com', '05:16:05pm', '27/12/16'),
(23, 0, 'Providence', 'care@gmail.com', '12:13:46pm', '29/12/16'),
(24, 0, 'Providence', 'care@gmail.com', '01:13:40pm', '29/12/16'),
(25, 0, 'Providence', 'care@gmail.com', '02:28:53pm', '29/12/16'),
(26, 0, 'Providence', 'care@gmail.com', '02:30:16pm', '29/12/16'),
(27, 1, 'Providence', 'care@gmail.com', '02:32:12pm', '29/12/16'),
(28, 1, 'Providence', 'care@gmail.com', '02:33:24pm', '29/12/16'),
(29, 1, 'Providence', 'care@gmail.com', '02:42:10pm', '29/12/16'),
(30, 1, 'Providence', 'care@gmail.com', '02:22:48pm', '30/12/16'),
(31, 1, 'Providence', 'care@gmail.com', '02:28:12pm', '30/12/16'),
(32, 1, 'Providence', 'care@gmail.com', '02:30:53pm', '30/12/16'),
(33, 1, 'Providence', 'care@gmail.com', '02:32:45pm', '30/12/16'),
(34, 1, 'Providence', 'care@gmail.com', '02:46:53pm', '30/12/16'),
(35, 1, 'Providence', 'care@gmail.com', '10:09:06pm', '01/01/17'),
(36, 1, 'Providence', 'care@gmail.com', '12:10:23am', '02/01/17'),
(37, 1, 'Providence', 'care@gmail.com', '12:53:16am', '02/01/17'),
(38, 1, 'Providence', 'care@gmail.com', '11:45:15pm', '02/01/17'),
(39, 1, 'Providence', 'care@gmail.com', '10:13:48am', '13/01/17'),
(40, 1, 'Providence', 'care@gmail.com', '10:32:51am', '13/01/17'),
(41, 1, 'Providence', 'care@gmail.com', '10:52:01am', '13/01/17'),
(42, 1, 'Providence', 'care@gmail.com', '03:28:13pm', '13/01/17'),
(43, 1, 'Providence', 'care@gmail.com', '09:27:21pm', '14/01/17'),
(44, 1, 'Providence', 'care@gmail.com', '03:51:57pm', '16/01/17'),
(45, 1, 'Providence', 'care@gmail.com', '07:38:48pm', '16/01/17'),
(46, 1, 'Providence', 'care@gmail.com', '12:24:15pm', '17/01/17'),
(47, 1, 'Providence', 'care@gmail.com', '03:05:12pm', '17/01/17'),
(48, 1, 'Providence', 'care@gmail.com', '03:07:34pm', '17/01/17'),
(49, 1, 'Providence', 'care@gmail.com', '06:22:30pm', '17/01/17'),
(50, 1, 'Providence', 'care@gmail.com', '06:21:59pm', '18/01/17'),
(51, 1, 'Providence', 'care@gmail.com', '08:10:09pm', '18/01/17'),
(52, 1, 'Providence', 'care@gmail.com', '06:16:02pm', '19/01/17'),
(53, 1, 'Providence', 'care@gmail.com', '10:29:42am', '20/01/17'),
(54, 1, 'Providence', 'care@gmail.com', '01:23:08pm', '20/01/17'),
(55, 1, 'Providence', 'care@gmail.com', '04:15:21pm', '20/01/17'),
(56, 1, 'Providence', 'care@gmail.com', '04:28:19pm', '20/01/17'),
(57, 1, 'Providence', 'care@gmail.com', '01:03:42pm', '21/01/17'),
(58, 1, 'Providence', 'care@gmail.com', '04:46:07pm', '21/01/17'),
(59, 1, 'Providence', 'care@gmail.com', '05:27:31pm', '21/01/17'),
(60, 1, 'Providence', 'care@gmail.com', '05:32:30pm', '21/01/17'),
(61, 1, 'Providence', 'care@gmail.com', '08:07:53pm', '21/01/17'),
(62, 1, 'Providence', 'care@gmail.com', '11:14:49pm', '21/01/17'),
(63, 1, 'Providence', 'care@gmail.com', '11:28:51pm', '21/01/17'),
(64, 1, 'Providence', 'care@gmail.com', '11:30:32pm', '21/01/17'),
(65, 1, 'Providence', 'care@gmail.com', '11:33:53pm', '21/01/17'),
(66, 1, 'Providence', 'care@gmail.com', '11:40:50am', '31/01/17'),
(67, 1, 'Providence', 'care@gmail.com', '09:41:13pm', '05/02/17'),
(68, 1, 'Providence', 'care@gmail.com', '06:02:26pm', '14/02/17'),
(69, 1, 'Providence', 'care@gmail.com', '01:19:59pm', '26/02/17'),
(70, 1, 'Providence', 'care@gmail.com', '03:27:34pm', '26/02/17'),
(71, 1, 'Providence', 'care@gmail.com', '04:24:13pm', '26/02/17'),
(72, 1, 'Providence', 'care@gmail.com', '09:35:56pm', '26/02/17'),
(73, 1, 'Providence', 'care@gmail.com', '01:21:38pm', '28/02/17'),
(74, 1, 'Providence', 'care@gmail.com', '08:54:10pm', '02/03/17'),
(75, 1, 'Providence', 'care@gmail.com', '09:09:10pm', '02/03/17'),
(76, 1, 'Providence', 'care@gmail.com', '07:45:51am', '03/03/17'),
(77, 1, 'Providence', 'care@gmail.com', '08:44:20am', '03/03/17'),
(78, 1, 'Providence', 'care@gmail.com', '06:11:19pm', '04/03/17'),
(79, 1, 'Providence', 'care@gmail.com', '06:20:21pm', '04/03/17'),
(80, 1, 'Providence', 'care@gmail.com', '06:26:53pm', '04/03/17'),
(81, 1, 'Providence', 'care@gmail.com', '06:32:12pm', '04/03/17'),
(82, 1, 'Providence', 'care@gmail.com', '11:07:32pm', '08/03/17'),
(83, 1, 'Providence', 'care@gmail.com', '03:14:01pm', '09/03/17'),
(84, 1, 'Providence', 'care@gmail.com', '04:11:41pm', '09/03/17'),
(85, 1, 'Providence', 'care@gmail.com', '06:29:34pm', '11/03/17'),
(86, 1, 'Providence', 'care@gmail.com', '06:34:32pm', '11/03/17'),
(87, 1, 'Providence', 'care@gmail.com', '06:39:29pm', '11/03/17'),
(88, 1, 'Providence', 'care@gmail.com', '06:43:20pm', '11/03/17'),
(89, 1, 'Providence', 'care@gmail.com', '06:55:36pm', '11/03/17'),
(90, 1, 'Providence', 'care@gmail.com', '07:28:38pm', '11/03/17'),
(91, 1, 'Providence', 'care@gmail.com', '10:30:51pm', '11/03/17'),
(92, 1, 'Providence', 'care@gmail.com', '12:19:00am', '12/03/17'),
(93, 1, 'Providence', 'care@gmail.com', '06:30:07am', '12/03/17'),
(94, 1, 'Providence', 'care@gmail.com', '08:31:35am', '12/03/17'),
(95, 1, 'Providence', 'care@gmail.com', '07:39:42pm', '12/03/17'),
(96, 1, 'Providence', 'care@gmail.com', '07:42:38pm', '12/03/17'),
(97, 1, 'Providence', 'care@gmail.com', '10:12:15pm', '12/03/17'),
(98, 1, 'Providence', 'care@gmail.com', '01:21:14pm', '13/03/17'),
(99, 1, 'Providence', 'care@gmail.com', '09:44:25pm', '13/03/17'),
(100, 1, 'Providence', 'care@gmail.com', '11:42:20am', '15/03/17'),
(101, 1, 'Providence', 'care@gmail.com', '06:36:43am', '22/03/17'),
(102, 1, 'Providence', 'care@gmail.com', '07:11:35am', '22/03/17'),
(103, 1, 'Providence', 'care@gmail.com', '09:40:06pm', '23/03/17'),
(104, 1, 'Providence', 'care@gmail.com', '09:45:59pm', '23/03/17'),
(105, 1, 'Providence', 'care@gmail.com', '03:19:29pm', '24/03/17'),
(106, 1, 'Providence', 'care@gmail.com', '02:00:09pm', '26/03/17'),
(107, 1, 'Providence', 'care@gmail.com', '07:02:20am', '27/03/17'),
(108, 1, 'Providence', 'care@gmail.com', '01:25:52am', '30/03/17'),
(109, 1, 'Providence', 'care@gmail.com', '04:32:19pm', '02/04/17'),
(110, 1, 'Providence', 'care@gmail.com', '11:37:52pm', '05/04/17'),
(111, 1, 'Providence', 'care@gmail.com', '10:39:20am', '07/04/17'),
(112, 1, 'Providence', 'care@gmail.com', '11:08:22pm', '07/05/17'),
(113, 1, 'Providence', 'care@gmail.com', '11:27:24pm', '07/05/17'),
(114, 1, 'Providence', 'care@gmail.com', '02:28:31pm', '12/05/17'),
(115, 1, 'Providence', 'care@gmail.com', '08:26:41pm', '26/05/17'),
(116, 1, 'Providence', 'care@gmail.com', '09:17:37am', '03/06/17'),
(117, 1, 'Providence', 'care@gmail.com', '04:32:11pm', '04/06/17');

-- --------------------------------------------------------

--
-- Table structure for table `admin_logout`
--

CREATE TABLE `admin_logout` (
  `logoutid` int(11) NOT NULL,
  `loginid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `email` varchar(225) NOT NULL,
  `logouttime` varchar(15) NOT NULL,
  `logoutdate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_logout`
--

INSERT INTO `admin_logout` (`logoutid`, `loginid`, `id`, `firstname`, `email`, `logouttime`, `logoutdate`) VALUES
(1, 23, 0, 'Providence', 'care@gmail.com', '02:24pm', '16/12/29'),
(2, 23, 1, 'Providence', 'care@gmail.com', '02:29pm', '16/12/29'),
(3, 0, 1, 'Providence', 'care@gmail.com', '02:31pm', '16/12/29'),
(4, 27, 1, 'Providence', 'care@gmail.com', '02:32pm', '16/12/29'),
(5, 28, 1, 'Providence', 'care@gmail.com', '02:38pm', '16/12/29'),
(6, 29, 1, 'Providence', 'care@gmail.com', '02:27pm', '16/12/30'),
(7, 29, 1, 'Providence', 'care@gmail.com', '02:29pm', '16/12/30'),
(8, 29, 1, 'Providence', 'care@gmail.com', '02:32:26pm', '16/12/30'),
(9, 29, 1, 'Providence', 'care@gmail.com', '02:32:52pm', '16/12/30'),
(10, 37, 1, 'Providence', 'care@gmail.com', '12:54:49am', '17/01/02'),
(11, 37, 1, 'Providence', 'care@gmail.com', '10:18:21am', '17/01/13'),
(12, 37, 1, 'Providence', 'care@gmail.com', '10:49:20am', '17/01/13'),
(13, 37, 1, 'Providence', 'care@gmail.com', '03:07:03pm', '17/01/17'),
(14, 37, 1, 'Providence', 'care@gmail.com', '05:25:44pm', '17/01/21'),
(15, 37, 1, 'Providence', 'care@gmail.com', '11:27:51pm', '17/01/21'),
(16, 37, 1, 'Providence', 'care@gmail.com', '11:29:27pm', '17/01/21'),
(17, 37, 1, 'Providence', 'care@gmail.com', '11:31:52pm', '17/01/21'),
(18, 37, 1, 'Providence', 'care@gmail.com', '11:35:19pm', '17/01/21'),
(19, 37, 1, 'Providence', 'care@gmail.com', '11:47:49am', '17/01/31'),
(20, 37, 1, 'Providence', 'care@gmail.com', '01:20:19pm', '17/02/26'),
(21, 37, 1, 'Providence', 'care@gmail.com', '03:32:18pm', '17/02/26'),
(22, 37, 1, 'Providence', 'care@gmail.com', '04:24:31pm', '17/02/26'),
(23, 37, 1, 'Providence', 'care@gmail.com', '09:36:02pm', '17/02/26'),
(24, 0, 0, '', '', '09:36:03pm', '17/02/26'),
(25, 37, 1, 'Providence', 'care@gmail.com', '08:54:24pm', '17/03/02'),
(26, 37, 1, 'Providence', 'care@gmail.com', '09:10:25pm', '17/03/02'),
(27, 37, 1, 'Providence', 'care@gmail.com', '06:25:10pm', '17/03/04'),
(28, 37, 1, 'Providence', 'care@gmail.com', '06:31:35pm', '17/03/04'),
(29, 37, 1, 'Providence', 'care@gmail.com', '06:33:56pm', '17/03/04'),
(30, 37, 1, 'Providence', 'care@gmail.com', '06:34:12pm', '17/03/11'),
(31, 37, 1, 'Providence', 'care@gmail.com', '06:34:38pm', '17/03/11'),
(32, 37, 1, 'Providence', 'care@gmail.com', '06:42:54pm', '17/03/11'),
(33, 37, 1, 'Providence', 'care@gmail.com', '06:53:10pm', '17/03/11'),
(34, 37, 1, 'Providence', 'care@gmail.com', '06:56:51pm', '17/03/11'),
(35, 37, 1, 'Providence', 'care@gmail.com', '09:55:48pm', '17/03/11'),
(36, 37, 1, 'Providence', 'care@gmail.com', '12:17:31am', '17/03/12'),
(37, 37, 1, 'Providence', 'care@gmail.com', '07:40:48pm', '17/03/12'),
(38, 37, 1, 'Providence', 'care@gmail.com', '07:10:42am', '17/03/22'),
(39, 37, 1, 'Providence', 'care@gmail.com', '01:34:07am', '17/03/30'),
(40, 37, 1, 'Providence', 'care@gmail.com', '11:38:30pm', '17/04/05'),
(41, 37, 1, 'Providence', 'care@gmail.com', '11:09:15pm', '17/05/07'),
(42, 37, 1, 'Providence', 'care@gmail.com', '11:29:11pm', '17/05/07'),
(43, 37, 1, 'Providence', 'care@gmail.com', '08:38:34pm', '17/05/26');

-- --------------------------------------------------------

--
-- Table structure for table `admin_members`
--

CREATE TABLE `admin_members` (
  `admin_id` int(11) NOT NULL,
  `approval` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(225) NOT NULL,
  `time` varchar(15) NOT NULL,
  `date` varchar(15) NOT NULL,
  `picture` varchar(225) NOT NULL DEFAULT 'images(1).jpg '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_members`
--

INSERT INTO `admin_members` (`admin_id`, `approval`, `firstname`, `surname`, `email`, `password`, `time`, `date`, `picture`) VALUES
(1, 1, 'Providence', 'Ifeosame', 'care@gmail.com', 'ffead8f75bff3df51f1a81bcc8e15945', '01:49:26pm', '16/12/18', 'g.png'),
(2, 0, 'Providence', 'Ifeosame', 'providenceifeosame@gmail.com', '7a6427d1826be4ed2af94fb0f5bdfb75', '01:51:33pm', '16/12/18', 'g.png'),
(3, 0, 'Providence', 'Ifeosame', 'provi@gmail.com', 'ffead8f75bff3df51f1a81bcc8e15945', '02:00:09pm', '16/12/18', 'g.png');

-- --------------------------------------------------------

--
-- Table structure for table `admin_upload_log`
--

CREATE TABLE `admin_upload_log` (
  `id` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `time` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_verification_log`
--

CREATE TABLE `admin_verification_log` (
  `log_id` int(11) NOT NULL,
  `admin_status` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_verification` int(11) NOT NULL,
  `time` varchar(15) NOT NULL,
  `date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_verification_log`
--

INSERT INTO `admin_verification_log` (`log_id`, `admin_status`, `status`, `project_id`, `admin_id`, `admin_verification`, `time`, `date`) VALUES
(1, 1, 1, 2, 1, 1, '02:29:21pm', '12/05/17'),
(2, 1, 1, 3, 1, 1, '03:52:08pm', '16/01/17'),
(3, 1, 1, 4, 1, 0, '07:13:43am', '22/03/17'),
(4, 1, 1, 10, 1, 1, '03:14:14pm', '09/03/17'),
(5, 1, 1, 6, 1, 1, '06:33:16pm', '04/03/17'),
(6, 1, 1, 7, 1, 0, '06:33:37pm', '04/03/17'),
(7, 1, 1, 8, 1, 1, '12:15:46am', '09/03/17'),
(8, 1, 1, 9, 1, 1, '12:17:30am', '09/03/17'),
(9, 1, 1, 11, 1, 1, '03:14:31pm', '09/03/17'),
(10, 1, 1, 12, 1, 1, '03:30:43pm', '09/03/17'),
(11, 1, 1, 13, 1, 1, '03:30:57pm', '09/03/17'),
(12, 1, 1, 1, 1, 0, '06:56:06pm', '11/03/17'),
(13, 1, 1, 5, 1, 1, '10:44:18am', '07/04/17');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `alumniid` int(11) NOT NULL,
  `auth_titleid` int(11) NOT NULL,
  `firstname` varchar(225) NOT NULL,
  `lastname` varchar(225) NOT NULL,
  `phone` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`alumniid`, `auth_titleid`, `firstname`, `lastname`, `phone`) VALUES
(1, 10, 'Providence', 'Ifeosame', '08077937950'),
(2, 0, 'FISH', 'RAT', '08100993100'),
(3, 0, 'tatfo', 'linda ikeji', '080419666419'),
(4, 0, 'master daniel ', 'ugboh', '09024147862'),
(5, 0, 'Providence', 'ifeosame', '07031172366'),
(6, 5, 'Providence', 'Ifeosame', '08187655140'),
(7, 10, 'Onome', 'Philips', '0807765434'),
(8, 1, 'Raymond', 'Ativie', '08151700676'),
(9, 1, 'Adenopo', 'Adesegun', '09052201124'),
(10, 5, 'Providence', 'Ifeosame', '09023955916');

-- --------------------------------------------------------

--
-- Table structure for table `auth_title`
--

CREATE TABLE `auth_title` (
  `id` int(11) NOT NULL,
  `auth_title` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_title`
--

INSERT INTO `auth_title` (`id`, `auth_title`) VALUES
(1, 'Mr.'),
(2, 'Mrs.'),
(3, 'Master'),
(4, 'Miss'),
(5, 'Engr.'),
(8, 'Bar.'),
(9, 'Dr.'),
(10, 'Prof.');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `bankid` int(11) NOT NULL,
  `bank` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`bankid`, `bank`) VALUES
(2, '[object HTMLDivElement]'),
(3, 'Eco bank '),
(4, 'Enterprise bank'),
(5, 'FCMB bank '),
(6, 'Fidelity bank '),
(7, 'First bank '),
(8, 'GT bank '),
(9, 'Keystone bank '),
(10, 'Mainstreet bank '),
(11, 'Skye bank '),
(12, 'Stanbic IBTC '),
(13, 'Sterling bank '),
(14, 'UBA bank '),
(15, 'Union bank '),
(16, 'Unity bank '),
(17, 'Wema bank  '),
(18, 'Zenith bank'),
(19, 'Diamond Bank'),
(20, 'Access Bank');

-- --------------------------------------------------------

--
-- Table structure for table `choice`
--

CREATE TABLE `choice` (
  `choiceid` int(11) NOT NULL,
  `choice` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `choice`
--

INSERT INTO `choice` (`choiceid`, `choice`) VALUES
(1, 'Paid'),
(2, 'Free');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentid` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `comment` varchar(2000) NOT NULL,
  `date` varchar(100) NOT NULL,
  `name` varchar(225) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentid`, `projectid`, `comment`, `date`, `name`, `time`) VALUES
(1, 1, 'great project', '12/05/17', 'Adenopo adesegun', '05:18:17pm');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentid` int(11) NOT NULL,
  `department` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`departmentid`, `department`) VALUES
(1, 'Agricultural Economics and Extension'),
(2, 'Crop and soil science'),
(3, 'Animal science'),
(4, 'Fisheries'),
(5, 'Foresty and Wildlife Management'),
(6, 'Petroleum Engineering'),
(7, 'Gas Engineering'),
(8, 'Chemical Engineering'),
(9, 'Civil Engineering'),
(10, 'Mechanical Engineering'),
(11, 'Environmaental Engineering'),
(12, 'Elect/Electronics  Engineering'),
(13, 'Pharmacy'),
(14, 'Phyiscs'),
(15, 'Physics/geophysics'),
(16, 'Physics/ Electronics'),
(17, 'Physics/ material science'),
(18, 'Maths and statistics'),
(19, 'Pure and Applied Mathematics'),
(20, 'Statistics'),
(21, 'Geology'),
(22, 'Computer Science'),
(23, 'Biochemistry'),
(24, 'Pure and Industrial Chemistry'),
(25, 'Microbiology'),
(26, 'Animal and Environmental Biology'),
(27, 'Plant Science and Biotechnology'),
(28, 'Biochemistry Technology'),
(29, 'Petrochemical Techbology'),
(30, 'Geology/ Mining Technology'),
(31, 'Microbiology Technology'),
(32, 'Physics/ Production'),
(33, 'Biomedical Technology'),
(34, 'Animal Health Psysiology'),
(35, 'Entomolgy and Pest management'),
(36, 'Enviromental Biology'),
(37, 'Fisheries and Hydrobiology'),
(38, 'Parasitology'),
(40, 'Finance and Banking'),
(41, 'Marketing'),
(42, 'Management'),
(43, 'Education Economics'),
(44, 'Education Phycology'),
(45, 'Education Accounting'),
(46, 'Human Kinetics and Health Education'),
(47, 'Adult and Non formal Education'),
(48, 'Philosophy'),
(49, 'History and Diplomatic Studies'),
(50, 'Religious and Cultural Studies'),
(51, 'English Studies'),
(52, 'Linguistics and Communication Studies'),
(53, 'Music'),
(54, 'Fine Art and Design'),
(55, 'Theatre Art'),
(56, 'Foreign Language and Litreature'),
(57, 'Accounting'),
(58, 'Mass Communication'),
(59, 'Computer Statistics and Mathematics'),
(60, 'Surveying and Geo-formatics'),
(61, 'Architecture');

-- --------------------------------------------------------

--
-- Table structure for table `email_list`
--

CREATE TABLE `email_list` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_list`
--

INSERT INTO `email_list` (`id`, `email`, `date`, `time`) VALUES
(1, 'providenceifeosame@gmail.com', '12/06/17', '01:42:22am'),
(2, 'ade@gmail.com', '12/06/17', '01:43:12am'),
(3, 'ebere@gmail.com', '12/06/17', '02:05:04am');

-- --------------------------------------------------------

--
-- Table structure for table `entry`
--

CREATE TABLE `entry` (
  `entryid` int(11) NOT NULL,
  `alumniid` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `yearid` int(11) NOT NULL,
  `departmentid` int(11) NOT NULL,
  `schoolid` int(11) NOT NULL,
  `choiceid` int(11) NOT NULL,
  `protypeid` int(11) NOT NULL,
  `priceid` int(11) NOT NULL,
  `downloads` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entry`
--

INSERT INTO `entry` (`entryid`, `alumniid`, `projectid`, `yearid`, `departmentid`, `schoolid`, `choiceid`, `protypeid`, `priceid`, `downloads`) VALUES
(1, 6, 1, 52, 22, 14, 2, 1, 5, 14),
(2, 8, 2, 52, 22, 31, 2, 1, 5, 8),
(3, 9, 3, 1, 41, 7, 2, 1, 1, 1),
(4, 9, 4, 1, 41, 115, 1, 1, 1, 1),
(5, 10, 5, 52, 57, 72, 1, 1, 1, 0),
(6, 6, 6, 52, 57, 72, 1, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `loginid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logintime` varchar(15) NOT NULL,
  `loginDate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`loginid`, `id`, `firstname`, `email`, `logintime`, `loginDate`) VALUES
(8, 23, 'Provy', 'care@gmail.com', '11:19:00', '2016-12-13'),
(9, 23, 'Provy', 'care@gmail.com', '11:33:00', '2016-12-13'),
(10, 23, 'Provy', 'care@gmail.com', '11:34:00', '2016-12-13'),
(11, 23, 'Provy', 'care@gmail.com', '01:13:00', '2016-12-14'),
(12, 23, 'Provy', 'care@gmail.com', '11:02:00', '2016-12-14'),
(13, 23, 'Provy', 'care@gmail.com', '12:09:00', '2016-12-14'),
(14, 23, 'Providence', 'care@gmail.com', '06:26:00', '2016-12-15'),
(15, 23, 'Providence', 'care@gmail.com', '03:49:09', '2016-12-16'),
(16, 23, 'Providence', 'care@gmail.com', '04:13:57', '2016-12-16'),
(17, 23, 'Provy', 'care@gmail.com', '02:28:19', '2016-12-17'),
(18, 23, 'Provy', 'care@gmail.com', '08:32:06', '2016-12-17'),
(19, 23, 'Provy', 'care@gmail.com', '03:13:16', '2016-12-18'),
(20, 23, 'Provy', 'care@gmail.com', '08:37:45', '2016-12-18'),
(21, 23, 'Provy', 'care@gmail.com', '08:43:40', '2016-12-24'),
(22, 23, 'Provy', 'care@gmail.com', '10:44:54', '2024-12-16'),
(23, 23, 'Providence', 'care@gmail.com', '03:42:09', '2026-12-16'),
(24, 23, 'Providence', 'care@gmail.com', '03:46:04', '2026-12-16'),
(25, 23, 'Providence', 'care@gmail.com', '03:49:54', '0000-00-00'),
(26, 23, 'Providence', 'care@gmail.com', '03:54:17pm', '26/12/2016'),
(27, 23, 'Providence', 'care@gmail.com', '03:55:23pm', '26-12-16'),
(28, 23, 'Providence', 'care@gmail.com', '07:33:48pm', '26/12/16'),
(29, 23, 'Providence', 'care@gmail.com', '09:02:01pm', '26/12/16'),
(30, 23, 'Providence', 'care@gmail.com', '09:24:29pm', '26/12/16'),
(31, 23, 'Providence', 'care@gmail.com', '09:30:40pm', '26/12/16'),
(32, 23, 'Providence', 'care@gmail.com', '01:11:14am', '27/12/16'),
(33, 23, 'Providence', 'care@gmail.com', '05:38:34pm', '03/01/17'),
(34, 23, 'Providence', 'care@gmail.com', '04:33:45pm', '27/12/16'),
(35, 23, 'Providence', 'care@gmail.com', '10:05:30pm', '01/01/17'),
(36, 23, 'Providence', 'care@gmail.com', '12:50:30am', '02/01/17'),
(37, 23, 'Providence', 'care@gmail.com', '09:22:58pm', '14/01/17'),
(38, 23, 'Providence', 'care@gmail.com', '03:03:03pm', '17/01/17'),
(39, 23, 'Providence', 'care@gmail.com', '11:27:59pm', '21/01/17'),
(40, 23, 'Providence', 'care@gmail.com', '11:29:41pm', '21/01/17'),
(41, 23, 'Providence', 'care@gmail.com', '11:32:04pm', '21/01/17'),
(42, 23, 'Providence', 'care@gmail.com', '11:35:39pm', '21/01/17'),
(43, 23, 'Providence', 'care@gmail.com', '02:33:53am', '22/01/17'),
(44, 23, 'Providence', 'care@gmail.com', '11:00:29am', '22/01/17'),
(45, 23, 'Providence', 'care@gmail.com', '02:49:50pm', '22/01/17'),
(46, 23, 'Providence', 'care@gmail.com', '05:21:05pm', '29/01/17'),
(47, 23, 'Providence', 'care@gmail.com', '08:11:55am', '30/01/17'),
(48, 23, 'Providence', 'care@gmail.com', '11:38:33am', '31/01/17'),
(49, 23, 'Providence', 'care@gmail.com', '11:18:19am', '02/02/17'),
(50, 23, 'Providence', 'care@gmail.com', '05:07:37pm', '02/02/17'),
(51, 23, 'Providence', 'care@gmail.com', '05:55:54pm', '02/02/17'),
(52, 23, 'Providence', 'care@gmail.com', '06:53:26pm', '02/02/17'),
(53, 23, 'Providence', 'care@gmail.com', '07:10:39pm', '02/02/17'),
(54, 23, 'Providence', 'care@gmail.com', '07:11:37pm', '02/02/17'),
(55, 23, 'Providence', 'care@gmail.com', '08:55:50pm', '02/02/17'),
(56, 23, 'Providence', 'care@gmail.com', '09:17:37pm', '02/02/17'),
(57, 34, 'Ubong', 'uby@gmail.com', '10:07:52', '2005-02-17'),
(58, 35, 'Inno', 'ifesam@gmail.com', '10:15:47pm', '05/02/17'),
(59, 23, 'Providence', 'care@gmail.com', '05:23:20am', '08/02/17'),
(60, 23, 'Providence', 'care@gmail.com', '08:22:38am', '11/02/17'),
(61, 23, 'Providence', 'care@gmail.com', '09:46:31am', '11/02/17'),
(62, 23, 'Providence', 'care@gmail.com', '01:53:29pm', '12/02/17'),
(63, 23, 'Providence', 'care@gmail.com', '05:39:16am', '13/02/17'),
(64, 23, 'Providence', 'care@gmail.com', '05:40:01pm', '14/02/17'),
(65, 23, 'Providence', 'care@gmail.com', '05:20:37pm', '20/02/17'),
(66, 23, 'Providence', 'care@gmail.com', '12:42:08pm', '21/02/17'),
(67, 23, 'Providence', 'care@gmail.com', '06:28:48pm', '21/02/17'),
(68, 23, 'Providence', 'care@gmail.com', '01:06:46am', '22/02/17'),
(69, 23, 'Providence', 'care@gmail.com', '01:07:47am', '22/02/17'),
(70, 23, 'Providence', 'care@gmail.com', '01:09:30am', '22/02/17'),
(71, 23, 'Providence', 'care@gmail.com', '06:28:10am', '23/02/17'),
(72, 23, 'Providence', 'care@gmail.com', '09:33:45pm', '23/02/17'),
(73, 23, 'Providence', 'care@gmail.com', '11:44:07am', '25/02/17'),
(74, 36, 'Joshua', 'evuetaphajoshua@gmail.com', '07:44:51pm', '25/02/17'),
(75, 23, 'Providence', 'care@gmail.com', '08:20:14pm', '25/02/17'),
(76, 23, 'Providence', 'care@gmail.com', '12:34:51pm', '26/02/17'),
(77, 23, 'Providence', 'care@gmail.com', '12:36:09pm', '26/02/17'),
(78, 37, 'Nasty', 'nasty@gmail.com', '12:38:39pm', '26/02/17'),
(79, 23, 'Providence', 'care@gmail.com', '06:37:03pm', '26/02/17'),
(80, 23, 'Providence', 'care@gmail.com', '08:54:39pm', '02/03/17'),
(81, 23, 'Providence', 'care@gmail.com', '07:11:40am', '03/03/17'),
(82, 23, 'Providence', 'care@gmail.com', '08:20:20am', '03/03/17'),
(83, 23, 'Providence', 'care@gmail.com', '06:14:04pm', '04/03/17'),
(84, 23, 'Providence', 'care@gmail.com', '06:51:11pm', '04/03/17'),
(85, 23, 'Providence', 'care@gmail.com', '09:19:04pm', '08/03/17'),
(86, 23, 'Providence', 'care@gmail.com', '03:55:54pm', '09/03/17'),
(87, 23, 'Providence', 'care@gmail.com', '03:57:48pm', '09/03/17'),
(88, 23, 'Tombra', 'care@gmail.com', '04:08:58pm', '09/03/17'),
(89, 23, 'Tombra', 'care@gmail.com', '06:28:39pm', '11/03/17'),
(90, 23, 'Tombra', 'care@gmail.com', '06:53:26pm', '11/03/17'),
(91, 23, 'Tombra', 'care@gmail.com', '06:59:07pm', '11/03/17'),
(92, 23, 'Tombra', 'care@gmail.com', '12:17:45am', '12/03/17'),
(93, 23, 'Tombra', 'care@gmail.com', '07:40:58pm', '12/03/17'),
(94, 23, 'Tombra', 'care@gmail.com', '10:14:44am', '26/03/17'),
(95, 23, 'Providence', 'care@gmail.com', '11:09:47am', '26/03/17'),
(96, 23, 'Providence', 'care@gmail.com', '09:25:12pm', '29/03/17'),
(97, 23, 'Providence', 'care@gmail.com', '09:44:22am', '31/03/17'),
(98, 23, 'Providence', 'care@gmail.com', '10:35:15am', '31/03/17'),
(99, 23, 'Providence', 'care@gmail.com', '11:47:26am', '31/03/17'),
(100, 23, 'Providence', 'care@gmail.com', '11:55:18pm', '31/03/17'),
(101, 23, 'Providence', 'care@gmail.com', '04:50:20pm', '01/04/17'),
(102, 23, 'Providence', 'care@gmail.com', '11:38:43pm', '05/04/17'),
(103, 23, 'Providence', 'care@gmail.com', '10:24:16am', '07/04/17'),
(104, 23, 'lakia', 'care@gmail.com', '06:18:38pm', '08/04/17'),
(105, 23, 'Providence', 'care@gmail.com', '09:20:14pm', '11/04/17'),
(106, 23, 'Providence', 'care@gmail.com', '06:36:38pm', '21/04/17'),
(107, 23, 'OBINA', 'care@gmail.com', '01:04:58am', '24/04/17'),
(108, 0, 'R2bees', 'r2@gmail.com', '01:51:29pm', '25/04/17'),
(109, 0, 'Dj', 'another@gmail.com', '02:21:18pm', '25/04/17'),
(110, 23, 'OBINA', 'care@gmail.com', '11:01:07am', '26/04/17'),
(111, 24, 'Henry', 'dh@gmail.com', '11:43:55am', '26/04/17'),
(112, 23, 'victor', 'care@gmail.com', '11:51:55am', '26/04/17'),
(113, 23, 'victor', 'care@gmail.com', '12:06:54pm', '26/04/17'),
(114, 23, 'victor', 'care@gmail.com', '01:57:09pm', '28/04/17'),
(115, 23, 'victor', 'care@gmail.com', '05:30:22pm', '28/04/17'),
(116, 23, 'victor', 'care@gmail.com', '01:29:52am', '29/04/17'),
(117, 23, 'victor', 'care@gmail.com', '07:30:00pm', '01/05/17'),
(118, 23, 'angel', 'care@gmail.com', '11:55:52pm', '03/05/17'),
(119, 23, 'angel', 'care@gmail.com', '07:20:04am', '04/05/17'),
(120, 23, 'Angel', 'care@gmail.com', '08:42:06pm', '07/05/17'),
(121, 23, 'Angel', 'care@gmail.com', '10:46:02pm', '07/05/17'),
(122, 23, 'Angel', 'care@gmail.com', '11:09:40pm', '07/05/17'),
(123, 23, 'Angel', 'care@gmail.com', '01:13:13am', '08/05/17'),
(124, 23, 'Angel', 'care@gmail.com', '09:10:18pm', '09/05/17'),
(125, 25, 'Raymond', 'RaymondAtivie@gmail.com', '02:35:14pm', '10/05/17'),
(126, 23, 'Providence', 'care@gmail.com', '01:14:54pm', '12/05/17'),
(127, 23, 'Providence', 'care@gmail.com', '02:17:26pm', '12/05/17'),
(128, 26, 'Adesegun', 'adenopoadesegun@gmail.com ', '04:57:15pm', '12/05/17'),
(129, 26, 'Adesegun', 'adenopoadesegun@gmail.com ', '07:37:57pm', '15/05/17'),
(130, 26, 'Adesegun', 'adenopoadesegun@gmail.com ', '07:46:43pm', '15/05/17'),
(131, 26, 'Adesegun', 'adenopoadesegun@gmail.com ', '08:41:06pm', '15/05/17'),
(132, 26, 'Adesegun', 'adenopoadesegun@gmail.com ', '07:32:05pm', '17/05/17'),
(133, 23, 'Providence', 'care@gmail.com', '12:41:06pm', '21/05/17'),
(134, 27, 'Charles', 'xavier69.ac@gmail.com', '01:12:52pm', '21/05/17'),
(135, 23, 'Providence', 'care@gmail.com', '03:05:23am', '23/05/17'),
(136, 23, 'Providence', 'care@gmail.com', '07:53:59pm', '25/05/17'),
(137, 23, 'Providence', 'care@gmail.com', '09:06:16pm', '26/05/17'),
(138, 23, 'Providence', 'care@gmail.com', '09:08:44pm', '26/05/17'),
(139, 28, 'Dddd', 'ddddd@fff.com', '11:41:32am', '27/05/17'),
(140, 29, 'Sss', 'carcce@gmail.com', '12:12:54pm', '27/05/17'),
(141, 23, 'Providence', 'care@gmail.com', '10:32:44pm', '29/05/17'),
(142, 30, 'Daniel', 'd@gmail.com', '10:42:10pm', '29/05/17'),
(143, 31, 'Dddd', 'ddd@gmsil.com', '11:13:39pm', '29/05/17'),
(144, 23, 'Providence', 'care@gmail.com', '12:17:10am', '30/05/17'),
(145, 23, 'Providence', 'care@gmail.com', '01:55:39pm', '30/05/17'),
(146, 23, 'Providence', 'care@gmail.com', '09:17:42pm', '30/05/17'),
(147, 23, 'Providence', 'care@gmail.com', '02:28:16am', '31/05/17'),
(148, 23, 'Providence', 'care@gmail.com', '02:28:48am', '31/05/17'),
(149, 23, 'Providence', 'care@gmail.com', '02:31:01am', '31/05/17'),
(150, 23, 'Providence', 'care@gmail.com', '02:31:52am', '31/05/17'),
(151, 23, 'Providence', 'care@gmail.com', '02:32:07am', '31/05/17'),
(152, 23, 'Providence', 'care@gmail.com', '02:36:20am', '31/05/17'),
(153, 23, 'Providence', 'care@gmail.com', '12:10:57am', '04/06/17'),
(154, 23, 'Providence', 'care@gmail.com', '01:31:25pm', '04/06/17'),
(155, 23, 'Providence', 'care@gmail.com', '04:31:50pm', '04/06/17'),
(156, 23, 'Providence', 'care@gmail.com', '03:03:21pm', '05/06/17'),
(157, 23, 'Providence', 'care@gmail.com', '12:51:34am', '12/06/17');

-- --------------------------------------------------------

--
-- Table structure for table `logout`
--

CREATE TABLE `logout` (
  `loginid` int(11) NOT NULL,
  `logoutid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `firstname` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `logouttime` varchar(225) NOT NULL,
  `logoutDate` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logout`
--

INSERT INTO `logout` (`loginid`, `logoutid`, `id`, `firstname`, `email`, `logouttime`, `logoutDate`) VALUES
(0, 2, 23, 'Provy', 'care@gmail.com', '11:19am', '16/12/13'),
(10, 3, 23, 'Provy', 'care@gmail.com', '11:35am', '16/12/13'),
(10, 4, 23, 'Provy', 'care@gmail.com', '11:03am', '16/12/14'),
(13, 5, 23, 'Providence', 'care@gmail.com', '02:22pm', '16/12/14'),
(13, 6, 23, 'Providence', 'care@gmail.com', '03:49pm', '16/12/16'),
(0, 7, 0, '', '', '03:49pm', '16/12/16'),
(13, 8, 23, 'Provy', 'care@gmail.com', '02:28am', '16/12/17'),
(4, 9, 2, 'Providence', 'care@gmail.com', '04:51pm', '16/12/17'),
(5, 10, 2, 'Providence', 'care@gmail.com', '04:54pm', '16/12/17'),
(13, 11, 23, 'Providence', 'care@gmail.com', '03:45pm', '16/12/26'),
(6, 12, 0, 'Providence', 'care@gmail.com', '03:49pm', '16/12/26'),
(13, 13, 23, 'Providence', 'care@gmail.com', '03:54pm', '16/12/26'),
(13, 14, 23, 'Providence', 'care@gmail.com', '03:55pm', '16/12/26'),
(13, 15, 23, 'Providence', 'care@gmail.com', '07:33pm', '16/12/26'),
(6, 16, 0, '', 'care@gmail.com', '09:24pm', '16/12/26'),
(13, 17, 23, 'Providence', 'care@gmail.com', '09:26pm', '16/12/26'),
(13, 18, 23, 'Providence', 'care@gmail.com', '09:33pm', '16/12/26'),
(13, 19, 23, 'Providence', 'care@gmail.com', '05:38pm', '17/01/03'),
(13, 20, 23, 'Providence', 'care@gmail.com', '04:33pm', '16/12/27'),
(36, 21, 23, 'Providence', 'care@gmail.com', '12:52am', '17/01/02'),
(36, 22, 23, 'Providence', 'care@gmail.com', '09:27pm', '17/01/14'),
(36, 23, 23, 'Providence', 'care@gmail.com', '03:04pm', '17/01/17'),
(0, 24, 0, '', '', '03:04pm', '17/01/17'),
(36, 25, 23, 'Providence', 'care@gmail.com', '11:28pm', '17/01/21'),
(36, 26, 23, 'Providence', 'care@gmail.com', '11:30pm', '17/01/21'),
(36, 27, 23, 'Providence', 'care@gmail.com', '11:33pm', '17/01/21'),
(36, 28, 23, 'Providence', 'care@gmail.com', '02:50pm', '17/01/22'),
(36, 29, 23, 'Providence', 'care@gmail.com', '11:40am', '17/01/31'),
(36, 30, 23, 'Providence', 'care@gmail.com', '05:08pm', '17/02/02'),
(36, 31, 23, 'Providence', 'care@gmail.com', '07:11pm', '17/02/02'),
(0, 32, 0, 'Erastus', 'erastus_uso@gmail.com', '09:16pm', '17/02/02'),
(0, 33, 0, 'Rastus', 'rastususo@gmail.com', '09:17pm', '17/02/02'),
(36, 34, 23, 'Providence', 'care@gmail.com', '09:27pm', '17/02/02'),
(0, 35, 29, 'Erastus', 'erasooooo@gmail.com', '09:33pm', '17/02/02'),
(0, 36, 0, '', '', '09:33pm', '17/02/02'),
(0, 37, 33, 'Tega', 'gideonking7443@gmail', '09:26pm', '17/02/05'),
(57, 38, 34, 'Ubong', 'uby@gmail.com', '10:15pm', '17/02/05'),
(36, 39, 23, 'Providence', 'care@gmail.com', '08:48am', '17/02/11'),
(36, 40, 23, 'Providence', 'care@gmail.com', '05:54pm', '17/02/14'),
(36, 41, 0, '', '', '01:06am', '17/02/22'),
(0, 42, 0, '', '', '01:06am', '17/02/22'),
(0, 43, 0, '', '', '01:06am', '17/02/22'),
(36, 44, 0, '', '', '01:07am', '17/02/22'),
(0, 45, 0, '', '', '01:09am', '17/02/22'),
(74, 46, 36, 'Joshua', 'evuetaphajoshua@gmail.com', '08:20pm', '17/02/25'),
(36, 47, 23, 'Providence', 'care@gmail.com', '08:43pm', '17/02/25'),
(36, 48, 23, 'Providence', 'care@gmail.com', '12:35pm', '17/02/26'),
(36, 49, 23, 'Providence', 'care@gmail.com', '12:37pm', '17/02/26'),
(78, 50, 37, 'Nasty', 'nasty@gmail.com', '12:40pm', '17/02/26'),
(36, 51, 23, 'Providence', 'care@gmail.com', '07:34pm', '17/02/26'),
(36, 52, 23, 'Providence', 'care@gmail.com', '09:08pm', '17/03/02'),
(36, 53, 23, 'Providence', 'care@gmail.com', '07:45am', '17/03/03'),
(36, 54, 23, 'Providence', 'care@gmail.com', '06:19pm', '17/03/04'),
(36, 55, 23, 'Providence', 'care@gmail.com', '11:06pm', '17/03/08'),
(36, 56, 23, 'Providence', 'care@gmail.com', '03:56pm', '17/03/09'),
(36, 57, 23, 'Providence', 'care@gmail.com', '04:07pm', '17/03/09'),
(36, 58, 23, 'Tombra', 'care@gmail.com', '04:09pm', '17/03/09'),
(36, 59, 23, 'Tombra', 'care@gmail.com', '06:29pm', '17/03/11'),
(36, 60, 23, 'Tombra', 'care@gmail.com', '06:55pm', '17/03/11'),
(36, 61, 23, 'Tombra', 'care@gmail.com', '07:28pm', '17/03/11'),
(36, 62, 23, 'Tombra', 'care@gmail.com', '12:18am', '17/03/12'),
(36, 63, 23, 'Tombra', 'care@gmail.com', '07:42pm', '17/03/12'),
(36, 64, 23, 'Providence', 'care@gmail.com', '04:54pm', '17/04/01'),
(36, 65, 23, 'Providence', 'care@gmail.com', '10:36am', '17/04/07'),
(36, 66, 23, 'Providence', 'care@gmail.com', '09:20pm', '17/04/11'),
(109, 67, 0, 'Dj', 'another@gmail.com', '02:23pm', '17/04/25'),
(36, 68, 23, 'victor', 'care@gmail.com', '11:43am', '17/04/26'),
(111, 69, 24, 'Henry', 'dh@gmail.com', '11:51am', '17/04/26'),
(36, 70, 23, 'victor', 'care@gmail.com', '11:53am', '17/04/26'),
(36, 71, 23, 'Angel', 'care@gmail.com', '11:07pm', '17/05/07'),
(36, 72, 23, 'Angel', 'care@gmail.com', '11:27pm', '17/05/07'),
(36, 73, 23, 'Providence', 'care@gmail.com', '02:10pm', '17/05/12'),
(0, 74, 0, '', '', '02:17pm', '17/05/12'),
(0, 75, 0, '', '', '02:18pm', '17/05/12'),
(0, 76, 0, '', '', '02:18pm', '17/05/12'),
(0, 77, 0, '', '', '01:09pm', '17/05/21'),
(0, 78, 0, '', '', '01:31pm', '17/05/21'),
(0, 79, 0, '', '', '03:07am', '17/05/23'),
(0, 80, 0, '', '', '09:10pm', '17/05/26'),
(0, 81, 0, '', '', '12:09pm', '17/05/27'),
(0, 82, 0, '', '', '12:13pm', '17/05/27'),
(0, 83, 0, '', '', '10:33pm', '17/05/29'),
(0, 84, 0, '', '', '11:13pm', '17/05/29'),
(0, 85, 0, '', '', '12:16am', '17/05/30'),
(0, 86, 0, '', '', '02:27am', '17/05/31'),
(0, 87, 0, '', '', '02:28am', '17/05/31'),
(0, 88, 0, '', '', '02:28am', '17/05/31'),
(0, 89, 0, '', '', '02:30am', '17/05/31'),
(0, 90, 0, '', '', '02:31am', '17/05/31'),
(36, 91, 23, 'Providence', 'care@gmail.com', '02:31am', '17/05/31'),
(36, 92, 23, 'Providence', 'care@gmail.com', '04:26pm', '17/06/04'),
(36, 93, 23, 'Providence', 'care@gmail.com', '04:31pm', '17/06/04');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `memberid` int(11) NOT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(200) DEFAULT NULL,
  `surname` varchar(225) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `picture` varchar(225) NOT NULL DEFAULT 'images(1).jpg',
  `school` varchar(225) NOT NULL,
  `location` varchar(225) NOT NULL,
  `facebook` varchar(225) NOT NULL,
  `google` varchar(225) NOT NULL,
  `twitter` varchar(225) NOT NULL,
  `whatsapp` varchar(225) NOT NULL,
  `instagram` varchar(225) NOT NULL,
  `snapchat` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`memberid`, `time`, `date`, `password`, `firstname`, `surname`, `email`, `picture`, `school`, `location`, `facebook`, `google`, `twitter`, `whatsapp`, `instagram`, `snapchat`) VALUES
(23, '11:10:00', '2016-12-11', 'ffead8f75bff3df51f1a81bcc8e15945', 'Providence', 'Ifeosame', 'care@gmail.com', 'IMG_20141007_090444.jpg', 'University of port-harcourt', 'Lagos', 'ggg', 'nerissaa', 'nerissaa', '08100993100', 'p', 'nerissaa'),
(24, '11:43:50', '2026-04-17', 'ffead8f75bff3df51f1a81bcc8e15945', 'Henry', 'Ibinabo', 'dh@gmail.com', 'images(1).jpg', '', '', '', '', '', '', '', ''),
(25, '02:35:14', '2010-05-17', 'f2a415aa78c7621831da5995e1447242', 'Raymond', 'Ativie', 'RaymondAtivie@gmail.com', 'IMG_20170108_065132_670.jpg', 'Covenant University', 'Lagos', 'RaymondAtivie', 'raymondativie', 'raymondativie', '', 'raymondativie', 'raymondativie'),
(26, '04:57:15', '2012-05-17', '830a075a3c9719fc7d80d306757e9f7f', 'Adesegun', 'Adenopo ', 'adenopoadesegun@gmail.com ', '2017-05-05-10-45-56-697083333.jpeg', 'University of port-harcourt', 'Lagos', 'facebook.com/adenopoadesegun', '', '', '09052201124', '@adenopoadesegun', ''),
(27, '01:12:52', '2021-05-17', 'c903db367a564d79d3453ef560d74b0a', 'Charles', 'Agbo', 'xavier69.ac@gmail.com', 'Charles Pet 20161204_140005.jpg', 'University of port-harcourt', 'port-harcourt', 'Charles onje agbo', 'xavier69.ac@gmail.com', '', '07062470302', 'itz_carl_x', 'charlesjoseph04'),
(28, '11:41:32', '2027-05-17', 'ff2f24f8b6d253bb5a8bc55728ca7372', 'Dddd', 'Ddd', 'ddddd@fff.com', 'images(1).jpg', '', '', '', '', '', '', '', ''),
(29, '12:12:54', '2027-05-17', 'ffead8f75bff3df51f1a81bcc8e15945', 'Sss', 'Ssss', 'carcce@gmail.com', 'images(1).jpg', '', '', '', '', '', '', '', ''),
(30, '10:42:10', '2029-05-17', 'ffead8f75bff3df51f1a81bcc8e15945', 'Daniel', 'Ay', 'd@gmail.com', '12360385_425911840935397_5173980528878596298_n.jpg', '', '', '', '', '', '', '', ''),
(31, '11:13:39', '2029-05-17', 'ebf7e62abaa2db8e332e3e4662658308', 'Dddd', 'Eeeeeee', 'ddd@gmsil.com', 'images(1).jpg', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payed_downloads`
--

CREATE TABLE `payed_downloads` (
  `payid` int(11) NOT NULL,
  `projid` int(11) NOT NULL,
  `memid` int(11) NOT NULL,
  `email` varchar(225) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `refid` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL,
  `remit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payed_downloads`
--

INSERT INTO `payed_downloads` (`payid`, `projid`, `memid`, `email`, `date`, `time`, `refid`, `amount`, `remit`) VALUES
(2, 4, 26, 'providenceifeosame@gmail.com', '03/06/17', '04:33:48pm', 'Jarazone1858508124', 1000, 0),
(3, 3, 26, 'providenceifeosame@gmail.com', '03/06/17', '04:37:19pm', 'Jarazone1002152516', 1000, 0),
(4, 6, 23, 'providenceifeosame@gmail.com', '04/06/17', '04:19:02pm', 'Jarazone1727099044', 1500, 1),
(5, 6, 23, 'providenceifeosame@gmail.com', '05/06/17', '02:59:15pm', 'Jarazone1649081430', 1500, 0);

-- --------------------------------------------------------

--
-- Table structure for table `paymentinfo`
--

CREATE TABLE `paymentinfo` (
  `paymentid` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `accname` varchar(100) NOT NULL,
  `accnum` varchar(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `acctypeid` int(11) NOT NULL,
  `bankid` int(11) NOT NULL,
  `phone` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentinfo`
--

INSERT INTO `paymentinfo` (`paymentid`, `projectid`, `accname`, `accnum`, `email`, `amount`, `acctypeid`, `bankid`, `phone`) VALUES
(1, 8, 'providence', '2133453423', 'provi@gmail.com', 1000, 1, 20, '2147483647'),
(2, 9, 'providence', '2110746621', 'providenceifeosame@gmail.com', 1000, 2, 20, '2147483647'),
(3, 4, 'Adenopo Adesegun', '3026583638', 'adenopoadesegun@gmail.com', 1000, 2, 6, '09052201124'),
(4, 5, 'Providence', '2110746621', 'providenceifeosame@gmail.com', 1000, 2, 20, '09023955916'),
(5, 6, 'falz', '2110746621', 'providenceifeosame@gmail.com', 1500, 1, 18, '08187655140');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `priceid` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`priceid`, `price`) VALUES
(1, 1000),
(2, 1500),
(3, 2000),
(4, 500),
(5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `admin_status` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `projectid` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `time` varchar(12) NOT NULL,
  `date` varchar(12) NOT NULL,
  `filename` varchar(225) NOT NULL,
  `type` varchar(6) NOT NULL,
  `downloads` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `memberid` int(11) NOT NULL,
  `description` text NOT NULL,
  `contents` text NOT NULL,
  `facebook` text NOT NULL,
  `youtube` text NOT NULL,
  `verification` int(2) NOT NULL,
  `cover` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`admin_status`, `status`, `projectid`, `title`, `time`, `date`, `filename`, `type`, `downloads`, `price`, `memberid`, `description`, `contents`, `facebook`, `youtube`, `verification`, `cover`) VALUES
(0, 0, 1, 'Charles love life', '01:16:44am', '08/05/17', 'Limitation of privatization on Nigerian economy.docx', 'doc', 14, 0, 23, 'Success is on the\nway i can feel it\nfrom a distance', ' one man can change\nthe world', '', '', 0, '11218164_1634670050124824_5209514361601899689_n.jpg'),
(1, 1, 2, 'A Sample Proposal', '02:38:00pm', '10/05/17', 'Mobile App Development proposal for Cannanland.docx', 'doc', 8, 0, 25, 'Test', 'Test ', '', '', 1, 'indexx.jpg'),
(0, 0, 3, 'Market Research', '08:05:57pm', '15/05/17', 'Africa-Practice-Social-Media-Landscape-Vol-1.pdf', 'pdf', 1, 1000, 26, 'Gcjhbgjgccgjkjbcxfgjbgffggjjggfsghjbgfcddd\r\nhhhffbhjgxdfcvjjgvnbgcvgggjj', ' Jhnjjj\r\nHjjjjhghhhhhhhhhh\r\nUuuhhhggggggghgh\r\nGhgghhhhhhhhhh\r\nGggggghbmkssdgd', 'Facebook.com ', 'Youtube.com', 0, 'index.jpg'),
(0, 0, 4, 'Market ', '08:20:27pm', '15/05/17', '14292478-0-eBook-SocialMediaAdv.pdf', 'pdf', 1, 1000, 26, 'Yhkskshk sm zzhhskjggsjhg\r\nHhjkhhshshkshskshsms\r\nJdhsjjskhhskjsj', ' Hjjjkshsn dB zkanhjshsjhsbsjs\r\nJsjsnskshshshsksj\r\nhsjsksjsbhshsksjsj\r\nJsjjsjsjsjs', '', '', 0, 'index.jpg'),
(0, 0, 5, 'Test Project 2', '12:16:27am', '04/06/17', 'B.doc', 'doc', 0, 1000, 23, 'we on our way up', ' we up', '', '', 0, 'indexx.jpg'),
(0, 0, 6, 'Drive', '03:23:54pm', '04/06/17', 'math155final.docx', 'doc', 2, 1500, 23, 'rrrrrrrrrrrrrrrr', 'ffffffffffffffffffffffffffff', '', '', 0, 'indexx.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `protype`
--

CREATE TABLE `protype` (
  `protypeid` int(11) NOT NULL,
  `protype` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `protype`
--

INSERT INTO `protype` (`protypeid`, `protype`) VALUES
(1, 'UnderGraduate'),
(2, 'Masters'),
(3, 'PHD'),
(4, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `schoolid` int(11) NOT NULL,
  `school` varchar(225) NOT NULL,
  `alias` varchar(225) NOT NULL,
  `schoollogo` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`schoolid`, `school`, `alias`, `schoollogo`) VALUES
(1, 'University of Abuja', 'uniabuja', 'uniabuja.jpg'),
(2, 'University of Agriculture, Abeokuta', '', 'FUagric_abeokuta.jpg'),
(3, 'University of Ado-Ekiti', '', 'ado ekiti.jpg'),
(4, 'University of Benin', 'uniben', 'uniben.jpg'),
(5, 'University of Calabar', '', 'unical.jpg'),
(6, 'University of Education, Ikere-Ekiti', '', 'College-of-Education-Ikere-Ekiti.jpg'),
(7, 'University of Ibadan', 'ui', 'UI.jpg'),
(8, 'University of Ilorin', 'uniilorin', 'uniilorin.jpg'),
(9, 'University of Jos', '', 'unijos.jpg'),
(10, 'University of Lagos', 'unilag', 'unilag.jpg'),
(11, 'University of Maiduguri', '', 'uni_maid.jpg'),
(12, 'University of Mkar, Mkar', '', 'mkar (2).jpg'),
(13, 'University of Nigeria', '', 'unn.jpg'),
(14, 'University of port-harcourt', 'uniport', 'uniport.jpg'),
(15, 'University of Technology, Akwa-Ibom', '', 'Akwa-Ibom-State-University-Akutech.jpg'),
(16, 'University Of Uyo', 'uniuyo', 'uniuyo.jpg'),
(18, 'ABTI-American University of Nigeria', '', 'america.png'),
(19, 'Abubakar Tafawa Balewa University', '', 'tafawa.jpg'),
(20, 'Adamawa State University, Mubi', '', 'adamawa.jpg'),
(21, 'Adekunle Ajasin University', '', 'akoko_uni.jpg'),
(22, 'Ahmadu Bello University', '', 'Abu_zaria.jpg'),
(23, 'Ajayi Crowther University, Oyo', '', 'ajayi_crowther.jpg'),
(24, 'Ambrose Alli University', '', 'ekpoma.jpg'),
(26, 'Bayero University, Kano', '', 'bayero_uni.jpg'),
(27, 'Bells University', '', 'bell.jpg'),
(28, 'Benson Idahosa University', 'biu', 'BIU.jpg'),
(29, 'Bowen University, Iwo', 'bowen', 'bowen.jpg'),
(31, 'Covenant University', 'cu', 'cu.jpg'),
(32, 'Crawford University,Oye Ekiti', '', 'craw.jpg'),
(33, 'Cross River University of Technology', 'crutech', 'crutech.jpg'),
(34, 'Delta State University, Abraka', 'delsu', 'delsu.jpg'),
(35, 'Ebonyi State University', '', 'ebonyi_state_uni.jpg'),
(36, 'Enugu State University of Science & Technology', '', 'esut.jpg'),
(37, 'Federal University of Technology, Akure', 'futa', 'futa.jpg'),
(38, 'Federal University of Technology, Minna', 'futminna', 'futminna.jpg'),
(39, 'Federal University of Technology, Owerri', 'futo', 'futo.jpg'),
(40, 'Federal University Of Technology, Yola', '', 'yola.jpg'),
(41, 'Gombe state University, Tudun, Wada', '', 'gombe.jpg'),
(42, 'Igbinedion University, Okada', '', 'igbinideon.jpg'),
(43, 'Imo State University', '', 'imsu.jpg'),
(44, 'Joseph Ayo Babalola University', '', 'joseph_ayo.jpg'),
(45, 'Katsina State University', '', 'kastinas.jpg'),
(46, 'Kogi State University, Anyigba', '', 'kogi_state_uni.jpg'),
(47, 'Ladoke Akintola University of Tech.', '', 'ladoke_akintola.jpg'),
(48, 'Lagos State University', '', 'lasu.jpg'),
(49, 'Lead City University', '', 'lead.jpg'),
(50, 'Landmark University', '', 'landmark.jpg'),
(51, 'Michael Okpara University', '', 'micheal_okpara.jpg'),
(52, 'Nasarrawa State University', '', 'nasarawa.jpg'),
(53, 'National Open University of Nigeria', '', 'noun.jpg'),
(54, 'Niger Delta University', '', 'ndu.jpg'),
(55, 'Nigerian Defence Academy', '', 'defence.jpg'),
(56, 'Nnamdi Azikiwe University of Agriculture, Umudike', '', 'unizik.jpg'),
(57, 'Obafemi Awolowo University, ile-ife', '', 'oau.jpg'),
(58, 'Olabisi Onabanjo University, Ago-Iwoye', '', 'olabisi.jpg'),
(59, 'Osun State University', '', 'osun.jpg'),
(60, 'pan African University, Lekki', '', 'pan (2).jpg'),
(61, 'plateau State University', '', 'Plateau-State-University-PLASU-logo-480x534.png'),
(62, 'Redeemer’s University', '', 'redeeemers.jpg'),
(63, 'Renaissance University, Enugu', '', 'renosa.jpg'),
(64, 'Rivers State University of Science and Technology', 'ust', 'ust.jpg'),
(65, 'Salem University, Lokoja', '', 'salem.jpg'),
(66, 'St. paul’s University College, Awka', '', 'paul_uni.jpg'),
(68, 'Tai Solarin University of Education, Ijebu-Ode', '', 'solarin.jpg'),
(69, 'Usmanu Danfodiyo University, Sokoto', '', 'usman_danfodoi.jpg'),
(70, 'Wesley University, Ondo', '', 'wesley.jpg'),
(71, 'Anambra State University, Anambra', '', 'Anambra.jpg'),
(72, 'Abia State polytechnic', '', 'abia_poly_abia.jpg'),
(73, 'Adamawa State polytechnic, Yola', '', 'adam.jpg'),
(74, 'Akanu Ibiam Federal polytechnic, Unwana', '', 'akanu_ibiam_poly.jpg'),
(75, 'Allover central polytechnic, Sango-Ota Ogun State', '', 'allover.jpg'),
(76, 'Akwa Ibom State polytechnic', '', 'akwa-ibom_poly.jpg'),
(77, 'Auchi polytechnic, Auchi', '', 'auchi.jpg'),
(78, 'Dorben polytechnic (formerly Abuja School of Accountancy and Computer Studies)', '', 'dorben_poly.jpg'),
(79, 'Delta state polytechnic, Ozoro', '', 'delta_poly_ozoro.jpg'),
(80, 'Federal polytechnic, Ado – Ekiti', '', 'fed_poly_ado-ekiti.jpg'),
(81, 'Federal polytechnic Offa', '', 'fed-poly_offa.jpg'),
(82, 'Federal polytechnic Bida', '', 'fed_poly_bida.jpg'),
(83, 'Federal polytechnic, Bauchi', '', 'fed_poly_bauchi.jpg'),
(84, 'Federal polytechnic, Idah', '', 'fed_poly_idah.jpg'),
(85, 'Federal polytechnic, Ilaro', '', 'fed_poly_ilaro.jpg'),
(86, 'Federal polytechnic, Damaturu', '', 'damaturu.jpg'),
(87, 'Federal polytechnic, Nassarawa', '', 'fed_poly_nasawara.jpg'),
(88, 'Federal polytechnic, Mubi', '', 'fed_poly_mubi.jpg'),
(89, 'Federal polytechnic, Nekede', '', 'fed_poly_nekede.jpg'),
(90, 'Federal polytechnic, Oko', '', 'fed_poly_oko.jpg'),
(91, 'Federal polytechnic, Ede', '', 'fed_poly_ede.jpg'),
(92, 'Federal polytechnic, Birnin-Kebbi', '', 'the_poly_kebbi_benini_kebbi.jpg'),
(93, 'Federal coll. of Animal health & production Tech., Ibadan', '', 'coll.jpg'),
(94, 'Gateway polytechnic Saapade', '', 'saapade.jpg'),
(95, 'Hussaini Adamu Federal polytechnic, kazaure', '', 'hu.jpg'),
(96, 'Institute of Management Technology, Enugu', '', 'imt.jpg'),
(97, 'Kaduna polytechnic', '', 'kaduna_poly.jpg'),
(98, 'Kano State polytechnic, Kano', '', 'kano_poly.jpg'),
(99, 'Kwara State polytechnic', '', 'kwara_state_poly.jpg'),
(100, 'Lagos City polytechnic', '', 'lagcc.jpg'),
(102, 'Lagos State polytechnic', '', 'lagos_poly.jpg'),
(103, 'Niger State polytechnic, Zungeru', '', 'ngs.jpg'),
(104, 'Nigerian Coll. of Aviation Tech., Zaira', '', 'ncat.jpg'),
(106, 'Moshood Abiola polytechnic, Abeokuta', '', 'moshood_abiola_poly.jpg'),
(107, 'Nuhu Bamalli polytechnic, Zaria, Kaduna State', '', 'nuhub.jpg'),
(108, 'Osun State College of Technology, Esa-Oke', '', 'osco.jpg'),
(109, 'Osun State polytechnic, Iree', '', 'osun_poly_iree.jpg'),
(110, 'Ramat polytechnic, Maiduguri', '', 'ramat_poly_maiduguiri.jpg'),
(111, 'River State polytechnic, Bori', '', 'rivers_poly_bori.jpg'),
(112, 'Rufus Giwa polytechnic, Owo', '', 'rufus_giwa_poly.jpg'),
(113, 'Shaka polytechnic', '', 'shak.jpg'),
(114, 'The polytechnic, Ibadan', '', 'ibadan_poly_sango.jpg'),
(115, 'Yaba College of Tech.', '', 'yabat.jpg'),
(116, 'Adeniran Ogunsanya College of Education', '', 'adeniran.jpg'),
(117, 'Adeyemi College of Education, Ondo', '', 'adeyem.jpg'),
(118, 'College of Education, Agbor', '', 'delta-state-college-of-education-agbor.jpg'),
(119, 'College of Education, Afaha-Nsit', '', 'afaha.jpg'),
(120, 'College of Education, Akwanga', '', 'akwanga.jpg'),
(121, 'College of Education, Ekiadolor', '', 'ekwid.jpg'),
(122, 'College of Education, Ikere Ekiti', '', '45417ekiti.jpg'),
(124, 'College of Education, Zuba', '', 'zuba.jpg'),
(125, 'College of Education, Oro Kwara State', '', 'oro.jpg'),
(126, 'College of Education, Azare', '', 'azare.jpg'),
(127, 'College of Education, Warri', '', 'colw.jpg'),
(130, 'College of Education, Gindiri', '', 'grindi.jpg'),
(133, 'Federal College of Education, Zaira', '', 'fcez.jpg'),
(134, 'Federal College of Education, Okene', '', 'okene.jpg'),
(135, 'Federal College of Education, Akoka', '', 'akoka (2).jpg'),
(136, 'Federal College of Education, Omoku', '', 'fcetomoku.jpg'),
(137, 'Federal College of Education (Special), Oyo', '', 'spec.jpg'),
(139, 'Federal College of Education (Technical) Gombe', '', 'fceGombe.jpg'),
(140, 'Federal College of Education, Obudu', '', 'fceObudu.jpg'),
(141, 'Federal College of Education, pankshin', '', 'pashkin.jpg'),
(142, 'Federal College of Education, (Technical) Bich', '', 'bichi (2).jpg'),
(143, 'Federal College of Education (Technical) Gusau', '', 'gsau.jpg'),
(144, 'Federal College of Education, Yola', '', 'fceyola.jpg'),
(146, 'Kwara State College of Education', '', 'kstate.jpg'),
(147, 'National Teachers Institute, kaduna', '', 'nti.jpg'),
(148, 'Nwafor Orizu College of Education', '', 'NWAFOR ORIZU COLLEGE OF EDUCATION.jpg'),
(149, 'Osun State College of Education, Ilesa', '', 'ossu.jpg'),
(153, 'Abia state University, Uturu', 'absu', 'Abia_State_University_logo.jpg'),
(154, 'Abraham Adesanya Polytechnic', '', 'abraham_adesanya_poly.jpg'),
(155, 'Afe BaBalola University', 'afbuad', 'afbuad.jpg'),
(156, 'Babcock University', '', 'babcock.jpg'),
(157, 'Evangel Unversity,Akaeze', '', 'akaeze_uni.jpg'),
(158, 'Benue State polytechnic', '', 'benue_poly.jpg'),
(159, 'Best Solution Polytechnic', '', 'best_poly.jpg'),
(160, 'Benue State University', 'bsu', 'bsu.jpg'),
(161, 'Caleb Unversity', '', 'caleb_uni.jpg'),
(162, 'Convenant Polytechnic, Aba', '', 'convenant_poly_aba.jpg'),
(163, 'Cresent Unversity, Abeokuta', '', 'cresent_uni.jpg'),
(164, 'Delta state Polytechnic, Oghara', '', 'delta_poly_oghara.jpg'),
(165, 'Federal Polytechnic,Ile-oluji,ondo state', '', 'fed_poly_ile_oluji.jpg'),
(166, 'Federal Polytechnic Of oil and gas,Bonny', '', 'Fed_poly_oil_bonny.jpg'),
(167, 'Federal Ploytechnic, Oko', '', 'fed_poly_oko.jpg'),
(168, 'Federal University, Kashere', '', 'Fu_kashere.jpg'),
(169, 'Federal University, Oye Ekiti', '', 'FU_oye_ekiti.jpg'),
(170, 'Federal University Of Petroleum Efurun', '', 'fupre.jpg'),
(171, 'Godfrey Okoye University', '', 'gou.jpg'),
(172, 'Grace Polytechnic', '', 'grace_poly.jpg'),
(173, 'Ibadan Polytechnic, Egbeda', '', 'ibadan_poly_egbeda.jpg'),
(174, 'Igbajo Polytechnic', '', 'igbajo_poly.jpg'),
(175, 'Jigawa State Polytechnic, Dutse', '', 'jigawa_poly.jpg'),
(176, 'Kwara State University', '', 'kwara_uni.jpg'),
(177, 'Madona University', '', 'madona.jpg'),
(178, 'Nasarawa State Polytechnic', '', 'nasawar-state_poly.jpg'),
(179, 'Obong University, Obong Ntak', '', 'obong_uni.jpg'),
(180, 'Northwestern University, Kano', '', 'northwestuni.jpg'),
(181, 'Plateau Polytechnic, Berkin Ladi', '', 'plateau_poly_barkin_ladi.jpg'),
(182, 'Renik Polytechnic', '', 'renik_poly.jpg'),
(183, 'Sokoto state Polytechnic', '', 'the_poly_sokoto.jpg'),
(184, 'Trinity Polytechnic', '', 'trinity_poly.jpg'),
(185, 'Umaru Ali Skinkafa Polytechnic, Sokoto', '', 'Umaru_ali_skinkafa_poly.jpg'),
(186, 'University Of Agriculture ,Markurdi', 'uniagric', 'uniofagric_makurdi.jpg'),
(187, 'University Of Science and Technology, Ondo', '', 'ust_ondo.jpg'),
(188, 'University Of Science and Technology,Wudil', '', 'ust_wudil.jpg'),
(189, 'Uaru Musa Yar\'adua University, Kastina', '', 'yaradua.jpg'),
(190, 'Akwa Ibom State University', '', 'akwa ibom.jpg'),
(191, 'Ignatius Ajuru University of Education', 'iaue', 'iaue.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `verifier_login`
--

CREATE TABLE `verifier_login` (
  `loginid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `logintime` varchar(50) NOT NULL,
  `logindate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verifier_login`
--

INSERT INTO `verifier_login` (`loginid`, `id`, `firstname`, `email`, `logintime`, `logindate`) VALUES
(1, 2, 'Providence', 'care@gmail.com', '03:51:35pm', '16/12/16'),
(2, 2, 'Providence', 'care@gmail.com', '04:47:58pm', '16/12/17'),
(3, 2, 'Providence', 'care@gmail.com', '04:49:06pm', '16/12/17'),
(4, 2, 'Providence', 'care@gmail.com', '04:50:06pm', '16/12/17'),
(5, 2, 'Providence', 'care@gmail.com', '04:51:48pm', '16/12/17'),
(6, 2, 'Providence', 'care@gmail.com', '04:55:12pm', '16/12/17'),
(7, 2, 'Providence', 'care@gmail.com', '04:59:19pm', '16/12/17'),
(8, 2, 'Providence', 'care@gmail.com', '05:01:56pm', '16/12/17'),
(9, 2, 'Providence', 'care@gmail.com', '05:14:25pm', '16/12/17'),
(10, 2, 'Providence', 'care@gmail.com', '08:18:30pm', '16/12/17'),
(11, 2, 'Providence', 'care@gmail.com', '08:22:58pm', '16/12/17'),
(12, 2, 'Providence', 'care@gmail.com', '08:34:36pm', '16/12/17'),
(13, 2, 'Providence', 'care@gmail.com', '08:51:55pm', '16/12/17'),
(14, 2, 'Providence', 'care@gmail.com', '11:37:51pm', '16/12/17'),
(15, 2, 'Providence', 'care@gmail.com', '03:08:58am', '16/12/18'),
(16, 2, 'Providence', 'care@gmail.com', '03:16:11am', '16/12/18'),
(17, 2, 'Providence', 'care@gmail.com', '03:53:26am', '16/12/18'),
(18, 2, 'Providence', 'care@gmail.com', '06:57:28am', '16/12/18'),
(19, 2, 'Providence', 'care@gmail.com', '09:52:33am', '16/12/18'),
(20, 2, 'Providence', 'care@gmail.com', '01:37:17pm', '16/12/18'),
(21, 2, 'Providence', 'care@gmail.com', '10:53:51am', '16/12/22'),
(22, 2, 'Providence', 'care@gmail.com', '10:54:51am', '16/12/22'),
(23, 2, 'Providence', 'care@gmail.com', '09:06:11pm', '16/12/22'),
(24, 2, 'Providence', 'care@gmail.com', '02:38:49pm', '29/12/16'),
(25, 2, 'Providence', 'care@gmail.com', '02:27:42pm', '30/12/16'),
(26, 2, 'Providence', 'care@gmail.com', '02:30:29pm', '30/12/16'),
(27, 2, 'Providence', 'care@gmail.com', '02:33:13pm', '30/12/16'),
(28, 2, 'Providence', 'care@gmail.com', '12:38:54am', '02/01/17'),
(29, 2, 'Providence', 'care@gmail.com', '09:42:12pm', '12/01/17'),
(30, 2, 'Providence', 'care@gmail.com', '10:30:49am', '13/01/17'),
(31, 2, 'Providence', 'care@gmail.com', '10:49:47am', '13/01/17'),
(32, 2, 'Providence', 'care@gmail.com', '05:54:45pm', '14/02/17'),
(33, 2, 'Providence', 'care@gmail.com', '12:41:10pm', '26/02/17'),
(34, 2, 'Providence', 'care@gmail.com', '12:47:53pm', '26/02/17'),
(35, 2, 'Providence', 'care@gmail.com', '12:49:16pm', '26/02/17'),
(36, 2, 'Providence', 'care@gmail.com', '02:39:26pm', '26/02/17'),
(37, 2, 'Providence', 'care@gmail.com', '03:32:34pm', '26/02/17'),
(38, 2, 'Providence', 'care@gmail.com', '04:24:50pm', '26/02/17'),
(39, 2, 'Providence', 'care@gmail.com', '09:36:15pm', '26/02/17'),
(40, 2, 'Providence', 'care@gmail.com', '03:47:53am', '28/02/17'),
(41, 2, 'Providence', 'care@gmail.com', '05:55:19am', '28/02/17'),
(42, 2, 'Providence', 'care@gmail.com', '06:30:08am', '28/02/17'),
(43, 2, 'Providence', 'care@gmail.com', '08:08:56am', '28/02/17'),
(44, 2, 'Providence', 'care@gmail.com', '08:21:28am', '28/02/17'),
(45, 2, 'Providence', 'care@gmail.com', '06:25:25pm', '04/03/17'),
(46, 2, 'Providence', 'care@gmail.com', '06:31:51pm', '04/03/17'),
(47, 2, 'Providence', 'care@gmail.com', '03:02:02pm', '09/03/17'),
(48, 2, 'Providence', 'care@gmail.com', '06:34:58pm', '11/03/17'),
(49, 2, 'Providence', 'care@gmail.com', '06:57:08pm', '11/03/17'),
(50, 2, 'Providence', 'care@gmail.com', '06:05:03am', '22/03/17'),
(51, 2, 'Providence', 'care@gmail.com', '10:37:11am', '07/04/17'),
(52, 2, 'Providence', 'care@gmail.com', '02:19:54pm', '12/05/17'),
(53, 2, 'Providence', 'care@gmail.com', '02:21:48pm', '12/05/17'),
(54, 2, 'Providence', 'care@gmail.com', '02:27:06pm', '12/05/17');

-- --------------------------------------------------------

--
-- Table structure for table `verifier_logout`
--

CREATE TABLE `verifier_logout` (
  `loginid` int(11) NOT NULL,
  `logoutid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `logouttime` varchar(50) NOT NULL,
  `logoutdate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verifier_logout`
--

INSERT INTO `verifier_logout` (`loginid`, `logoutid`, `id`, `firstname`, `email`, `logouttime`, `logoutdate`) VALUES
(14, 1, 2, 'Providence', 'care@gmail.com', '03:17am', '16/12/18'),
(14, 2, 2, 'Providence', 'care@gmail.com', '07:31am', '16/12/18'),
(2, 3, 0, 'Providence', 'care@gmail.com', '10:42am', '16/12/22'),
(3, 4, 0, 'Providence', 'care@gmail.com', '10:45am', '16/12/22'),
(4, 5, 0, 'Providence', 'care@gmail.com', '10:48am', '16/12/22'),
(5, 6, 0, 'Providence', 'care@gmail.com', '10:52am', '16/12/22'),
(14, 7, 2, 'Providence', 'care@gmail.com', '10:54am', '16/12/22'),
(6, 8, 0, 'Providence', 'care@gmail.com', '09:32pm', '16/12/24'),
(6, 9, 0, 'Providence', 'care@gmail.com', '05:38pm', '17/01/03'),
(14, 10, 2, 'Providence', 'care@gmail.com', '02:41pm', '16/12/29'),
(14, 11, 2, 'Providence', 'care@gmail.com', '02:27pm', '16/12/30'),
(14, 12, 2, 'Providence', 'care@gmail.com', '02:30:33pm', '16/12/30'),
(14, 13, 2, 'Providence', 'care@gmail.com', '02:46:31pm', '16/12/30'),
(28, 14, 2, 'Providence', 'care@gmail.com', '12:44:07am', '17/01/02'),
(28, 15, 2, 'Providence', 'care@gmail.com', '10:32:34am', '17/01/13'),
(28, 16, 2, 'Providence', 'care@gmail.com', '10:51:33am', '17/01/13'),
(33, 17, 2, 'Providence', 'care@gmail.com', '12:46:51pm', '17/02/26'),
(34, 18, 2, 'Providence', 'care@gmail.com', '12:48:54pm', '17/02/26'),
(35, 19, 2, 'Providence', 'care@gmail.com', '01:19:39pm', '17/02/26'),
(35, 20, 2, 'Providence', 'care@gmail.com', '03:27:20pm', '17/02/26'),
(35, 21, 2, 'Providence', 'care@gmail.com', '06:36:53pm', '17/02/26'),
(35, 22, 2, 'Providence', 'care@gmail.com', '01:16:43pm', '17/02/28'),
(35, 23, 2, 'Providence', 'care@gmail.com', '06:26:37pm', '17/03/04'),
(35, 24, 2, 'Providence', 'care@gmail.com', '06:31:59pm', '17/03/04'),
(35, 25, 2, 'Providence', 'care@gmail.com', '03:13:39pm', '17/03/09'),
(0, 26, 0, '', '', '03:13:43pm', '17/03/09'),
(35, 27, 2, 'Providence', 'care@gmail.com', '06:39:04pm', '17/03/11'),
(35, 28, 2, 'Providence', 'care@gmail.com', '06:57:33pm', '17/03/11'),
(35, 29, 2, 'Providence', 'care@gmail.com', '06:36:29am', '17/03/22'),
(35, 30, 2, 'Providence', 'care@gmail.com', '10:39:03am', '17/04/07'),
(35, 31, 2, 'Providence', 'care@gmail.com', '02:22:00pm', '17/05/12'),
(0, 32, 0, '', '', '02:22:13pm', '17/05/12'),
(35, 33, 2, 'Providence', 'care@gmail.com', '02:27:20pm', '17/05/12');

-- --------------------------------------------------------

--
-- Table structure for table `verifier_verification_log`
--

CREATE TABLE `verifier_verification_log` (
  `log_id` int(11) NOT NULL,
  `admin_status` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `verifier_id` int(11) NOT NULL,
  `verification` int(11) NOT NULL,
  `admin_verification` int(11) NOT NULL DEFAULT '0',
  `time` varchar(25) NOT NULL,
  `date` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verifier_verification_log`
--

INSERT INTO `verifier_verification_log` (`log_id`, `admin_status`, `status`, `project_id`, `verifier_id`, `verification`, `admin_verification`, `time`, `date`) VALUES
(3, 0, 1, 2, 2, 1, 0, '02:21:57pm', '12/05/17'),
(4, 0, 1, 4, 2, 0, 0, '06:33:37am', '22/03/17'),
(5, 0, 1, 3, 2, 1, 0, '10:00:55pm', '12/01/17'),
(6, 0, 1, 10, 0, 0, 0, '06:01:41pm', '14/02/17'),
(7, 0, 1, 5, 2, 1, 0, '01:00:30pm', '26/02/17'),
(8, 0, 1, 6, 2, 0, 0, '10:38:44am', '07/04/17'),
(9, 0, 1, 7, 2, 0, 0, '06:31:55pm', '04/03/17'),
(10, 0, 1, 8, 2, 1, 0, '03:02:12pm', '09/03/17'),
(11, 0, 1, 1, 2, 0, 0, '06:57:26pm', '11/03/17');

-- --------------------------------------------------------

--
-- Table structure for table `verifiers`
--

CREATE TABLE `verifiers` (
  `id` int(11) NOT NULL,
  `time` varchar(15) NOT NULL,
  `date` varchar(15) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `picture` varchar(225) NOT NULL DEFAULT 'images(1).jpg',
  `approval` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verifiers`
--

INSERT INTO `verifiers` (`id`, `time`, `date`, `firstname`, `surname`, `email`, `password`, `picture`, `approval`) VALUES
(2, '03:31:58pm', '16/12/16', 'Providence', 'Ifeosame', 'care@gmail.com', 'ffead8f75bff3df51f1a81bcc8e15945', 'g.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `yearid` int(11) NOT NULL,
  `year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`yearid`, `year`) VALUES
(1, 2016),
(2, 2015),
(3, 2014),
(4, 2013),
(5, 2012),
(6, 2011),
(7, 2010),
(8, 2009),
(9, 2008),
(10, 2007),
(11, 2006),
(12, 2005),
(13, 2004),
(14, 2003),
(15, 2002),
(16, 2001),
(17, 2000),
(18, 1999),
(19, 1998),
(20, 1997),
(21, 1996),
(22, 1995),
(23, 1994),
(24, 1993),
(25, 1992),
(26, 1991),
(27, 1990),
(52, 2017),
(53, 1860);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acctype`
--
ALTER TABLE `acctype`
  ADD PRIMARY KEY (`acctypeid`);

--
-- Indexes for table `admin_download_log`
--
ALTER TABLE `admin_download_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`loginid`);

--
-- Indexes for table `admin_logout`
--
ALTER TABLE `admin_logout`
  ADD PRIMARY KEY (`logoutid`);

--
-- Indexes for table `admin_members`
--
ALTER TABLE `admin_members`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `admin_upload_log`
--
ALTER TABLE `admin_upload_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_verification_log`
--
ALTER TABLE `admin_verification_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`alumniid`);

--
-- Indexes for table `auth_title`
--
ALTER TABLE `auth_title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`bankid`);

--
-- Indexes for table `choice`
--
ALTER TABLE `choice`
  ADD PRIMARY KEY (`choiceid`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentid`);

--
-- Indexes for table `email_list`
--
ALTER TABLE `email_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entry`
--
ALTER TABLE `entry`
  ADD PRIMARY KEY (`entryid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`loginid`);

--
-- Indexes for table `logout`
--
ALTER TABLE `logout`
  ADD PRIMARY KEY (`logoutid`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`memberid`);

--
-- Indexes for table `payed_downloads`
--
ALTER TABLE `payed_downloads`
  ADD PRIMARY KEY (`payid`);

--
-- Indexes for table `paymentinfo`
--
ALTER TABLE `paymentinfo`
  ADD PRIMARY KEY (`paymentid`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`priceid`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`projectid`);

--
-- Indexes for table `protype`
--
ALTER TABLE `protype`
  ADD PRIMARY KEY (`protypeid`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`schoolid`);

--
-- Indexes for table `verifier_login`
--
ALTER TABLE `verifier_login`
  ADD PRIMARY KEY (`loginid`);

--
-- Indexes for table `verifier_logout`
--
ALTER TABLE `verifier_logout`
  ADD PRIMARY KEY (`logoutid`);

--
-- Indexes for table `verifier_verification_log`
--
ALTER TABLE `verifier_verification_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `verifiers`
--
ALTER TABLE `verifiers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`yearid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acctype`
--
ALTER TABLE `acctype`
  MODIFY `acctypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `admin_download_log`
--
ALTER TABLE `admin_download_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `loginid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT for table `admin_logout`
--
ALTER TABLE `admin_logout`
  MODIFY `logoutid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `admin_members`
--
ALTER TABLE `admin_members`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `admin_upload_log`
--
ALTER TABLE `admin_upload_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admin_verification_log`
--
ALTER TABLE `admin_verification_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `alumniid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `auth_title`
--
ALTER TABLE `auth_title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `bankid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `choice`
--
ALTER TABLE `choice`
  MODIFY `choiceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `departmentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `email_list`
--
ALTER TABLE `email_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `entry`
--
ALTER TABLE `entry`
  MODIFY `entryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `loginid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
--
-- AUTO_INCREMENT for table `logout`
--
ALTER TABLE `logout`
  MODIFY `logoutid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `memberid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `payed_downloads`
--
ALTER TABLE `payed_downloads`
  MODIFY `payid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `paymentinfo`
--
ALTER TABLE `paymentinfo`
  MODIFY `paymentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `priceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `projectid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `protype`
--
ALTER TABLE `protype`
  MODIFY `protypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `schoolid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;
--
-- AUTO_INCREMENT for table `verifier_login`
--
ALTER TABLE `verifier_login`
  MODIFY `loginid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `verifier_logout`
--
ALTER TABLE `verifier_logout`
  MODIFY `logoutid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `verifier_verification_log`
--
ALTER TABLE `verifier_verification_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `verifiers`
--
ALTER TABLE `verifiers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `yearid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;--
-- Database: `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Table structure for table `acctype`
--

CREATE TABLE `acctype` (
  `acctypeid` int(11) NOT NULL,
  `acctype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acctype`
--

INSERT INTO `acctype` (`acctypeid`, `acctype`) VALUES
(1, 'Savings'),
(2, 'Current'),
(3, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `admin_download_log`
--

CREATE TABLE `admin_download_log` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `time` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_download_log`
--

INSERT INTO `admin_download_log` (`id`, `project_id`, `time`, `date`, `admin_id`) VALUES
(1, 0, '12:14:08am', '12/03/17', 1),
(2, 0, '12:15:23am', '12/03/17', 1),
(3, 0, '12:19:11am', '12/03/17', 1),
(4, 0, '12:20:31am', '12/03/17', 1),
(5, 0, '12:42:20am', '12/03/17', 1),
(6, 0, '12:42:26am', '12/03/17', 1),
(7, 0, '12:45:27am', '12/03/17', 1),
(8, 0, '12:46:06am', '12/03/17', 1),
(9, 0, '12:46:49am', '12/03/17', 1),
(10, 0, '12:46:55am', '12/03/17', 1),
(11, 5, '01:02:09am', '12/03/17', 1),
(12, 4, '06:33:18am', '12/03/17', 1),
(13, 4, '06:34:13am', '12/03/17', 1),
(14, 4, '06:42:45am', '12/03/17', 1),
(15, 4, '08:34:26am', '12/03/17', 1),
(16, 5, '08:35:10am', '12/03/17', 1),
(17, 4, '08:36:51am', '12/03/17', 1),
(18, 4, '08:37:37am', '12/03/17', 1),
(19, 5, '08:37:58am', '12/03/17', 1),
(20, 4, '08:38:46am', '12/03/17', 1),
(21, 4, '08:39:13am', '12/03/17', 1),
(22, 4, '08:40:04am', '12/03/17', 1),
(23, 4, '08:41:54am', '12/03/17', 1),
(24, 4, '08:42:46am', '12/03/17', 1),
(25, 4, '08:44:39am', '12/03/17', 1),
(26, 4, '08:47:43am', '12/03/17', 1),
(27, 4, '08:48:31am', '12/03/17', 1),
(28, 4, '07:39:50pm', '12/03/17', 1),
(29, 5, '07:40:20pm', '12/03/17', 1),
(30, 4, '07:42:55pm', '12/03/17', 1),
(31, 6, '07:43:05pm', '12/03/17', 1),
(32, 4, '07:50:43pm', '12/03/17', 1),
(33, 6, '07:51:27pm', '12/03/17', 1),
(34, 6, '07:53:50pm', '12/03/17', 1),
(35, 4, '07:53:59pm', '12/03/17', 1),
(36, 6, '07:54:53pm', '12/03/17', 1),
(37, 5, '07:55:17pm', '12/03/17', 1),
(38, 5, '07:55:42pm', '12/03/17', 1),
(39, 4, '08:11:04pm', '12/03/17', 1),
(40, 4, '08:11:19pm', '12/03/17', 1),
(41, 4, '09:09:54pm', '12/03/17', 1),
(42, 6, '10:12:24pm', '12/03/17', 1),
(43, 4, '10:13:54pm', '12/03/17', 1),
(44, 4, '10:01:48pm', '13/03/17', 1),
(45, 6, '03:39:04am', '25/03/17', 1),
(46, 6, '04:11:33am', '25/03/17', 1),
(47, 6, '07:42:31pm', '26/03/17', 1),
(48, 5, '07:42:58pm', '26/03/17', 1),
(49, 5, '07:44:43pm', '26/03/17', 1),
(50, 6, '07:54:17am', '27/03/17', 1),
(51, 6, '07:54:38am', '27/03/17', 1),
(52, 6, '07:55:16am', '27/03/17', 1),
(53, 6, '07:55:41am', '27/03/17', 1),
(54, 6, '07:56:59am', '27/03/17', 1),
(55, 6, '07:57:18am', '27/03/17', 1),
(56, 6, '07:57:33am', '27/03/17', 1),
(57, 5, '10:43:01am', '07/04/17', 1),
(58, 2, '02:28:58pm', '12/05/17', 2);

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `loginid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `email` varchar(225) NOT NULL,
  `logintime` varchar(15) NOT NULL,
  `logindate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`loginid`, `id`, `firstname`, `email`, `logintime`, `logindate`) VALUES
(1, 0, 'Providence', 'care@gmail.com', '01:54:34pm', '16/12/18'),
(2, 0, 'Providence', 'care@gmail.com', '10:30:46am', '16/12/22'),
(3, 0, 'Providence', 'care@gmail.com', '10:42:40am', '16/12/22'),
(4, 0, 'Providence', 'care@gmail.com', '10:46:17am', '16/12/22'),
(5, 0, 'Providence', 'care@gmail.com', '10:48:36am', '16/12/22'),
(6, 0, 'Providence', 'care@gmail.com', '10:52:27am', '16/12/22'),
(7, 0, 'Providence', 'care@gmail.com', '01:03:51pm', '16/12/22'),
(8, 0, 'Providence', 'care@gmail.com', '09:24:13pm', '16/12/22'),
(9, 0, 'Providence', 'care@gmail.com', '01:05:57am', '16/12/24'),
(10, 0, 'Providence', 'care@gmail.com', '07:02:55am', '16/12/24'),
(11, 0, 'Providence', 'care@gmail.com', '10:32:37am', '16/12/24'),
(12, 0, 'Providence', 'care@gmail.com', '09:29:40pm', '24/12/16'),
(13, 0, 'Providence', 'care@gmail.com', '09:32:50pm', '24/12/16'),
(14, 0, 'Providence', 'care@gmail.com', '10:39:59am', '26/12/16'),
(15, 0, 'Providence', 'care@gmail.com', '03:46:40pm', '26/12/16'),
(16, 0, 'Providence', 'care@gmail.com', '07:33:58pm', '26/12/16'),
(17, 0, 'Providence', 'care@gmail.com', '09:02:17pm', '26/12/16'),
(18, 0, 'Providence', 'care@gmail.com', '09:28:36pm', '26/12/16'),
(19, 0, 'Providence', 'care@gmail.com', '01:08:59pm', '27/12/16'),
(20, 0, 'Providence', 'care@gmail.com', '05:38:58pm', '03/01/17'),
(21, 0, 'Providence', 'care@gmail.com', '04:34:17pm', '27/12/16'),
(22, 0, 'Providence', 'care@gmail.com', '05:16:05pm', '27/12/16'),
(23, 0, 'Providence', 'care@gmail.com', '12:13:46pm', '29/12/16'),
(24, 0, 'Providence', 'care@gmail.com', '01:13:40pm', '29/12/16'),
(25, 0, 'Providence', 'care@gmail.com', '02:28:53pm', '29/12/16'),
(26, 0, 'Providence', 'care@gmail.com', '02:30:16pm', '29/12/16'),
(27, 1, 'Providence', 'care@gmail.com', '02:32:12pm', '29/12/16'),
(28, 1, 'Providence', 'care@gmail.com', '02:33:24pm', '29/12/16'),
(29, 1, 'Providence', 'care@gmail.com', '02:42:10pm', '29/12/16'),
(30, 1, 'Providence', 'care@gmail.com', '02:22:48pm', '30/12/16'),
(31, 1, 'Providence', 'care@gmail.com', '02:28:12pm', '30/12/16'),
(32, 1, 'Providence', 'care@gmail.com', '02:30:53pm', '30/12/16'),
(33, 1, 'Providence', 'care@gmail.com', '02:32:45pm', '30/12/16'),
(34, 1, 'Providence', 'care@gmail.com', '02:46:53pm', '30/12/16'),
(35, 1, 'Providence', 'care@gmail.com', '10:09:06pm', '01/01/17'),
(36, 1, 'Providence', 'care@gmail.com', '12:10:23am', '02/01/17'),
(37, 1, 'Providence', 'care@gmail.com', '12:53:16am', '02/01/17'),
(38, 1, 'Providence', 'care@gmail.com', '11:45:15pm', '02/01/17'),
(39, 1, 'Providence', 'care@gmail.com', '10:13:48am', '13/01/17'),
(40, 1, 'Providence', 'care@gmail.com', '10:32:51am', '13/01/17'),
(41, 1, 'Providence', 'care@gmail.com', '10:52:01am', '13/01/17'),
(42, 1, 'Providence', 'care@gmail.com', '03:28:13pm', '13/01/17'),
(43, 1, 'Providence', 'care@gmail.com', '09:27:21pm', '14/01/17'),
(44, 1, 'Providence', 'care@gmail.com', '03:51:57pm', '16/01/17'),
(45, 1, 'Providence', 'care@gmail.com', '07:38:48pm', '16/01/17'),
(46, 1, 'Providence', 'care@gmail.com', '12:24:15pm', '17/01/17'),
(47, 1, 'Providence', 'care@gmail.com', '03:05:12pm', '17/01/17'),
(48, 1, 'Providence', 'care@gmail.com', '03:07:34pm', '17/01/17'),
(49, 1, 'Providence', 'care@gmail.com', '06:22:30pm', '17/01/17'),
(50, 1, 'Providence', 'care@gmail.com', '06:21:59pm', '18/01/17'),
(51, 1, 'Providence', 'care@gmail.com', '08:10:09pm', '18/01/17'),
(52, 1, 'Providence', 'care@gmail.com', '06:16:02pm', '19/01/17'),
(53, 1, 'Providence', 'care@gmail.com', '10:29:42am', '20/01/17'),
(54, 1, 'Providence', 'care@gmail.com', '01:23:08pm', '20/01/17'),
(55, 1, 'Providence', 'care@gmail.com', '04:15:21pm', '20/01/17'),
(56, 1, 'Providence', 'care@gmail.com', '04:28:19pm', '20/01/17'),
(57, 1, 'Providence', 'care@gmail.com', '01:03:42pm', '21/01/17'),
(58, 1, 'Providence', 'care@gmail.com', '04:46:07pm', '21/01/17'),
(59, 1, 'Providence', 'care@gmail.com', '05:27:31pm', '21/01/17'),
(60, 1, 'Providence', 'care@gmail.com', '05:32:30pm', '21/01/17'),
(61, 1, 'Providence', 'care@gmail.com', '08:07:53pm', '21/01/17'),
(62, 1, 'Providence', 'care@gmail.com', '11:14:49pm', '21/01/17'),
(63, 1, 'Providence', 'care@gmail.com', '11:28:51pm', '21/01/17'),
(64, 1, 'Providence', 'care@gmail.com', '11:30:32pm', '21/01/17'),
(65, 1, 'Providence', 'care@gmail.com', '11:33:53pm', '21/01/17'),
(66, 1, 'Providence', 'care@gmail.com', '11:40:50am', '31/01/17'),
(67, 1, 'Providence', 'care@gmail.com', '09:41:13pm', '05/02/17'),
(68, 1, 'Providence', 'care@gmail.com', '06:02:26pm', '14/02/17'),
(69, 1, 'Providence', 'care@gmail.com', '01:19:59pm', '26/02/17'),
(70, 1, 'Providence', 'care@gmail.com', '03:27:34pm', '26/02/17'),
(71, 1, 'Providence', 'care@gmail.com', '04:24:13pm', '26/02/17'),
(72, 1, 'Providence', 'care@gmail.com', '09:35:56pm', '26/02/17'),
(73, 1, 'Providence', 'care@gmail.com', '01:21:38pm', '28/02/17'),
(74, 1, 'Providence', 'care@gmail.com', '08:54:10pm', '02/03/17'),
(75, 1, 'Providence', 'care@gmail.com', '09:09:10pm', '02/03/17'),
(76, 1, 'Providence', 'care@gmail.com', '07:45:51am', '03/03/17'),
(77, 1, 'Providence', 'care@gmail.com', '08:44:20am', '03/03/17'),
(78, 1, 'Providence', 'care@gmail.com', '06:11:19pm', '04/03/17'),
(79, 1, 'Providence', 'care@gmail.com', '06:20:21pm', '04/03/17'),
(80, 1, 'Providence', 'care@gmail.com', '06:26:53pm', '04/03/17'),
(81, 1, 'Providence', 'care@gmail.com', '06:32:12pm', '04/03/17'),
(82, 1, 'Providence', 'care@gmail.com', '11:07:32pm', '08/03/17'),
(83, 1, 'Providence', 'care@gmail.com', '03:14:01pm', '09/03/17'),
(84, 1, 'Providence', 'care@gmail.com', '04:11:41pm', '09/03/17'),
(85, 1, 'Providence', 'care@gmail.com', '06:29:34pm', '11/03/17'),
(86, 1, 'Providence', 'care@gmail.com', '06:34:32pm', '11/03/17'),
(87, 1, 'Providence', 'care@gmail.com', '06:39:29pm', '11/03/17'),
(88, 1, 'Providence', 'care@gmail.com', '06:43:20pm', '11/03/17'),
(89, 1, 'Providence', 'care@gmail.com', '06:55:36pm', '11/03/17'),
(90, 1, 'Providence', 'care@gmail.com', '07:28:38pm', '11/03/17'),
(91, 1, 'Providence', 'care@gmail.com', '10:30:51pm', '11/03/17'),
(92, 1, 'Providence', 'care@gmail.com', '12:19:00am', '12/03/17'),
(93, 1, 'Providence', 'care@gmail.com', '06:30:07am', '12/03/17'),
(94, 1, 'Providence', 'care@gmail.com', '08:31:35am', '12/03/17'),
(95, 1, 'Providence', 'care@gmail.com', '07:39:42pm', '12/03/17'),
(96, 1, 'Providence', 'care@gmail.com', '07:42:38pm', '12/03/17'),
(97, 1, 'Providence', 'care@gmail.com', '10:12:15pm', '12/03/17'),
(98, 1, 'Providence', 'care@gmail.com', '01:21:14pm', '13/03/17'),
(99, 1, 'Providence', 'care@gmail.com', '09:44:25pm', '13/03/17'),
(100, 1, 'Providence', 'care@gmail.com', '11:42:20am', '15/03/17'),
(101, 1, 'Providence', 'care@gmail.com', '06:36:43am', '22/03/17'),
(102, 1, 'Providence', 'care@gmail.com', '07:11:35am', '22/03/17'),
(103, 1, 'Providence', 'care@gmail.com', '09:40:06pm', '23/03/17'),
(104, 1, 'Providence', 'care@gmail.com', '09:45:59pm', '23/03/17'),
(105, 1, 'Providence', 'care@gmail.com', '03:19:29pm', '24/03/17'),
(106, 1, 'Providence', 'care@gmail.com', '02:00:09pm', '26/03/17'),
(107, 1, 'Providence', 'care@gmail.com', '07:02:20am', '27/03/17'),
(108, 1, 'Providence', 'care@gmail.com', '01:25:52am', '30/03/17'),
(109, 1, 'Providence', 'care@gmail.com', '04:32:19pm', '02/04/17'),
(110, 1, 'Providence', 'care@gmail.com', '11:37:52pm', '05/04/17'),
(111, 1, 'Providence', 'care@gmail.com', '10:39:20am', '07/04/17'),
(112, 1, 'Providence', 'care@gmail.com', '11:08:22pm', '07/05/17'),
(113, 1, 'Providence', 'care@gmail.com', '11:27:24pm', '07/05/17'),
(114, 1, 'Providence', 'care@gmail.com', '02:28:31pm', '12/05/17'),
(115, 1, 'Providence', 'care@gmail.com', '08:26:41pm', '26/05/17'),
(116, 1, 'Providence', 'care@gmail.com', '09:17:37am', '03/06/17'),
(117, 1, 'Providence', 'care@gmail.com', '04:32:11pm', '04/06/17');

-- --------------------------------------------------------

--
-- Table structure for table `admin_logout`
--

CREATE TABLE `admin_logout` (
  `logoutid` int(11) NOT NULL,
  `loginid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `email` varchar(225) NOT NULL,
  `logouttime` varchar(15) NOT NULL,
  `logoutdate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_logout`
--

INSERT INTO `admin_logout` (`logoutid`, `loginid`, `id`, `firstname`, `email`, `logouttime`, `logoutdate`) VALUES
(1, 23, 0, 'Providence', 'care@gmail.com', '02:24pm', '16/12/29'),
(2, 23, 1, 'Providence', 'care@gmail.com', '02:29pm', '16/12/29'),
(3, 0, 1, 'Providence', 'care@gmail.com', '02:31pm', '16/12/29'),
(4, 27, 1, 'Providence', 'care@gmail.com', '02:32pm', '16/12/29'),
(5, 28, 1, 'Providence', 'care@gmail.com', '02:38pm', '16/12/29'),
(6, 29, 1, 'Providence', 'care@gmail.com', '02:27pm', '16/12/30'),
(7, 29, 1, 'Providence', 'care@gmail.com', '02:29pm', '16/12/30'),
(8, 29, 1, 'Providence', 'care@gmail.com', '02:32:26pm', '16/12/30'),
(9, 29, 1, 'Providence', 'care@gmail.com', '02:32:52pm', '16/12/30'),
(10, 37, 1, 'Providence', 'care@gmail.com', '12:54:49am', '17/01/02'),
(11, 37, 1, 'Providence', 'care@gmail.com', '10:18:21am', '17/01/13'),
(12, 37, 1, 'Providence', 'care@gmail.com', '10:49:20am', '17/01/13'),
(13, 37, 1, 'Providence', 'care@gmail.com', '03:07:03pm', '17/01/17'),
(14, 37, 1, 'Providence', 'care@gmail.com', '05:25:44pm', '17/01/21'),
(15, 37, 1, 'Providence', 'care@gmail.com', '11:27:51pm', '17/01/21'),
(16, 37, 1, 'Providence', 'care@gmail.com', '11:29:27pm', '17/01/21'),
(17, 37, 1, 'Providence', 'care@gmail.com', '11:31:52pm', '17/01/21'),
(18, 37, 1, 'Providence', 'care@gmail.com', '11:35:19pm', '17/01/21'),
(19, 37, 1, 'Providence', 'care@gmail.com', '11:47:49am', '17/01/31'),
(20, 37, 1, 'Providence', 'care@gmail.com', '01:20:19pm', '17/02/26'),
(21, 37, 1, 'Providence', 'care@gmail.com', '03:32:18pm', '17/02/26'),
(22, 37, 1, 'Providence', 'care@gmail.com', '04:24:31pm', '17/02/26'),
(23, 37, 1, 'Providence', 'care@gmail.com', '09:36:02pm', '17/02/26'),
(24, 0, 0, '', '', '09:36:03pm', '17/02/26'),
(25, 37, 1, 'Providence', 'care@gmail.com', '08:54:24pm', '17/03/02'),
(26, 37, 1, 'Providence', 'care@gmail.com', '09:10:25pm', '17/03/02'),
(27, 37, 1, 'Providence', 'care@gmail.com', '06:25:10pm', '17/03/04'),
(28, 37, 1, 'Providence', 'care@gmail.com', '06:31:35pm', '17/03/04'),
(29, 37, 1, 'Providence', 'care@gmail.com', '06:33:56pm', '17/03/04'),
(30, 37, 1, 'Providence', 'care@gmail.com', '06:34:12pm', '17/03/11'),
(31, 37, 1, 'Providence', 'care@gmail.com', '06:34:38pm', '17/03/11'),
(32, 37, 1, 'Providence', 'care@gmail.com', '06:42:54pm', '17/03/11'),
(33, 37, 1, 'Providence', 'care@gmail.com', '06:53:10pm', '17/03/11'),
(34, 37, 1, 'Providence', 'care@gmail.com', '06:56:51pm', '17/03/11'),
(35, 37, 1, 'Providence', 'care@gmail.com', '09:55:48pm', '17/03/11'),
(36, 37, 1, 'Providence', 'care@gmail.com', '12:17:31am', '17/03/12'),
(37, 37, 1, 'Providence', 'care@gmail.com', '07:40:48pm', '17/03/12'),
(38, 37, 1, 'Providence', 'care@gmail.com', '07:10:42am', '17/03/22'),
(39, 37, 1, 'Providence', 'care@gmail.com', '01:34:07am', '17/03/30'),
(40, 37, 1, 'Providence', 'care@gmail.com', '11:38:30pm', '17/04/05'),
(41, 37, 1, 'Providence', 'care@gmail.com', '11:09:15pm', '17/05/07'),
(42, 37, 1, 'Providence', 'care@gmail.com', '11:29:11pm', '17/05/07'),
(43, 37, 1, 'Providence', 'care@gmail.com', '08:38:34pm', '17/05/26');

-- --------------------------------------------------------

--
-- Table structure for table `admin_members`
--

CREATE TABLE `admin_members` (
  `admin_id` int(11) NOT NULL,
  `approval` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(225) NOT NULL,
  `time` varchar(15) NOT NULL,
  `date` varchar(15) NOT NULL,
  `picture` varchar(225) NOT NULL DEFAULT 'images(1).jpg '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_members`
--

INSERT INTO `admin_members` (`admin_id`, `approval`, `firstname`, `surname`, `email`, `password`, `time`, `date`, `picture`) VALUES
(1, 1, 'Providence', 'Ifeosame', 'care@gmail.com', 'ffead8f75bff3df51f1a81bcc8e15945', '01:49:26pm', '16/12/18', 'g.png'),
(2, 0, 'Providence', 'Ifeosame', 'providenceifeosame@gmail.com', '7a6427d1826be4ed2af94fb0f5bdfb75', '01:51:33pm', '16/12/18', 'g.png'),
(3, 0, 'Providence', 'Ifeosame', 'provi@gmail.com', 'ffead8f75bff3df51f1a81bcc8e15945', '02:00:09pm', '16/12/18', 'g.png');

-- --------------------------------------------------------

--
-- Table structure for table `admin_upload_log`
--

CREATE TABLE `admin_upload_log` (
  `id` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `time` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_verification_log`
--

CREATE TABLE `admin_verification_log` (
  `log_id` int(11) NOT NULL,
  `admin_status` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_verification` int(11) NOT NULL,
  `time` varchar(15) NOT NULL,
  `date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_verification_log`
--

INSERT INTO `admin_verification_log` (`log_id`, `admin_status`, `status`, `project_id`, `admin_id`, `admin_verification`, `time`, `date`) VALUES
(1, 1, 1, 2, 1, 1, '02:29:21pm', '12/05/17'),
(2, 1, 1, 3, 1, 1, '03:52:08pm', '16/01/17'),
(3, 1, 1, 4, 1, 0, '07:13:43am', '22/03/17'),
(4, 1, 1, 10, 1, 1, '03:14:14pm', '09/03/17'),
(5, 1, 1, 6, 1, 1, '06:33:16pm', '04/03/17'),
(6, 1, 1, 7, 1, 0, '06:33:37pm', '04/03/17'),
(7, 1, 1, 8, 1, 1, '12:15:46am', '09/03/17'),
(8, 1, 1, 9, 1, 1, '12:17:30am', '09/03/17'),
(9, 1, 1, 11, 1, 1, '03:14:31pm', '09/03/17'),
(10, 1, 1, 12, 1, 1, '03:30:43pm', '09/03/17'),
(11, 1, 1, 13, 1, 1, '03:30:57pm', '09/03/17'),
(12, 1, 1, 1, 1, 0, '06:56:06pm', '11/03/17'),
(13, 1, 1, 5, 1, 1, '10:44:18am', '07/04/17');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `alumniid` int(11) NOT NULL,
  `auth_titleid` int(11) NOT NULL,
  `firstname` varchar(225) NOT NULL,
  `lastname` varchar(225) NOT NULL,
  `phone` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`alumniid`, `auth_titleid`, `firstname`, `lastname`, `phone`) VALUES
(1, 10, 'Providence', 'Ifeosame', '08077937950'),
(2, 0, 'FISH', 'RAT', '08100993100'),
(3, 0, 'tatfo', 'linda ikeji', '080419666419'),
(4, 0, 'master daniel ', 'ugboh', '09024147862'),
(5, 0, 'Providence', 'ifeosame', '07031172366'),
(6, 5, 'Providence', 'Ifeosame', '08187655140'),
(7, 10, 'Onome', 'Philips', '0807765434'),
(8, 1, 'Raymond', 'Ativie', '08151700676'),
(9, 1, 'Adenopo', 'Adesegun', '09052201124'),
(10, 5, 'Providence', 'Ifeosame', '09023955916');

-- --------------------------------------------------------

--
-- Table structure for table `auth_title`
--

CREATE TABLE `auth_title` (
  `id` int(11) NOT NULL,
  `auth_title` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_title`
--

INSERT INTO `auth_title` (`id`, `auth_title`) VALUES
(1, 'Mr.'),
(2, 'Mrs.'),
(3, 'Master'),
(4, 'Miss'),
(5, 'Engr.'),
(8, 'Bar.'),
(9, 'Dr.'),
(10, 'Prof.');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `bankid` int(11) NOT NULL,
  `bank` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`bankid`, `bank`) VALUES
(2, '[object HTMLDivElement]'),
(3, 'Eco bank '),
(4, 'Enterprise bank'),
(5, 'FCMB bank '),
(6, 'Fidelity bank '),
(7, 'First bank '),
(8, 'GT bank '),
(9, 'Keystone bank '),
(10, 'Mainstreet bank '),
(11, 'Skye bank '),
(12, 'Stanbic IBTC '),
(13, 'Sterling bank '),
(14, 'UBA bank '),
(15, 'Union bank '),
(16, 'Unity bank '),
(17, 'Wema bank  '),
(18, 'Zenith bank'),
(19, 'Diamond Bank'),
(20, 'Access Bank');

-- --------------------------------------------------------

--
-- Table structure for table `choice`
--

CREATE TABLE `choice` (
  `choiceid` int(11) NOT NULL,
  `choice` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `choice`
--

INSERT INTO `choice` (`choiceid`, `choice`) VALUES
(1, 'Paid'),
(2, 'Free');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentid` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `comment` varchar(2000) NOT NULL,
  `date` varchar(100) NOT NULL,
  `name` varchar(225) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentid`, `projectid`, `comment`, `date`, `name`, `time`) VALUES
(1, 1, 'great project', '12/05/17', 'Adenopo adesegun', '05:18:17pm');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentid` int(11) NOT NULL,
  `department` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`departmentid`, `department`) VALUES
(1, 'Agricultural Economics and Extension'),
(2, 'Crop and soil science'),
(3, 'Animal science'),
(4, 'Fisheries'),
(5, 'Foresty and Wildlife Management'),
(6, 'Petroleum Engineering'),
(7, 'Gas Engineering'),
(8, 'Chemical Engineering'),
(9, 'Civil Engineering'),
(10, 'Mechanical Engineering'),
(11, 'Environmaental Engineering'),
(12, 'Elect/Electronics  Engineering'),
(13, 'Pharmacy'),
(14, 'Phyiscs'),
(15, 'Physics/geophysics'),
(16, 'Physics/ Electronics'),
(17, 'Physics/ material science'),
(18, 'Maths and statistics'),
(19, 'Pure and Applied Mathematics'),
(20, 'Statistics'),
(21, 'Geology'),
(22, 'Computer Science'),
(23, 'Biochemistry'),
(24, 'Pure and Industrial Chemistry'),
(25, 'Microbiology'),
(26, 'Animal and Environmental Biology'),
(27, 'Plant Science and Biotechnology'),
(28, 'Biochemistry Technology'),
(29, 'Petrochemical Techbology'),
(30, 'Geology/ Mining Technology'),
(31, 'Microbiology Technology'),
(32, 'Physics/ Production'),
(33, 'Biomedical Technology'),
(34, 'Animal Health Psysiology'),
(35, 'Entomolgy and Pest management'),
(36, 'Enviromental Biology'),
(37, 'Fisheries and Hydrobiology'),
(38, 'Parasitology'),
(40, 'Finance and Banking'),
(41, 'Marketing'),
(42, 'Management'),
(43, 'Education Economics'),
(44, 'Education Phycology'),
(45, 'Education Accounting'),
(46, 'Human Kinetics and Health Education'),
(47, 'Adult and Non formal Education'),
(48, 'Philosophy'),
(49, 'History and Diplomatic Studies'),
(50, 'Religious and Cultural Studies'),
(51, 'English Studies'),
(52, 'Linguistics and Communication Studies'),
(53, 'Music'),
(54, 'Fine Art and Design'),
(55, 'Theatre Art'),
(56, 'Foreign Language and Litreature'),
(57, 'Accounting'),
(58, 'Mass Communication'),
(59, 'Computer Statistics and Mathematics'),
(60, 'Surveying and Geo-formatics'),
(61, 'Architecture');

-- --------------------------------------------------------

--
-- Table structure for table `email_list`
--

CREATE TABLE `email_list` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_list`
--

INSERT INTO `email_list` (`id`, `email`, `date`, `time`) VALUES
(1, 'providenceifeosame@gmail.com', '12/06/17', '01:42:22am'),
(2, 'ade@gmail.com', '12/06/17', '01:43:12am'),
(3, 'ebere@gmail.com', '12/06/17', '02:05:04am'),
(4, 'pkk@gmail.com', '24/06/17', '04:02:04pm');

-- --------------------------------------------------------

--
-- Table structure for table `entry`
--

CREATE TABLE `entry` (
  `entryid` int(11) NOT NULL,
  `alumniid` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `yearid` int(11) NOT NULL,
  `departmentid` int(11) NOT NULL,
  `schoolid` int(11) NOT NULL,
  `choiceid` int(11) NOT NULL,
  `protypeid` int(11) NOT NULL,
  `priceid` int(11) NOT NULL,
  `downloads` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entry`
--

INSERT INTO `entry` (`entryid`, `alumniid`, `projectid`, `yearid`, `departmentid`, `schoolid`, `choiceid`, `protypeid`, `priceid`, `downloads`) VALUES
(1, 6, 1, 52, 22, 14, 2, 1, 5, 14),
(2, 8, 2, 52, 22, 31, 2, 1, 5, 8),
(3, 9, 3, 1, 41, 7, 2, 1, 1, 1),
(4, 9, 4, 1, 41, 115, 1, 1, 1, 1),
(5, 10, 5, 52, 57, 72, 1, 1, 1, 0),
(6, 6, 6, 52, 57, 72, 1, 2, 2, 2),
(7, 6, 7, 52, 57, 72, 2, 1, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `loginid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logintime` varchar(15) NOT NULL,
  `loginDate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`loginid`, `id`, `firstname`, `email`, `logintime`, `loginDate`) VALUES
(8, 23, 'Provy', 'care@gmail.com', '11:19:00', '2016-12-13'),
(9, 23, 'Provy', 'care@gmail.com', '11:33:00', '2016-12-13'),
(10, 23, 'Provy', 'care@gmail.com', '11:34:00', '2016-12-13'),
(11, 23, 'Provy', 'care@gmail.com', '01:13:00', '2016-12-14'),
(12, 23, 'Provy', 'care@gmail.com', '11:02:00', '2016-12-14'),
(13, 23, 'Provy', 'care@gmail.com', '12:09:00', '2016-12-14'),
(14, 23, 'Providence', 'care@gmail.com', '06:26:00', '2016-12-15'),
(15, 23, 'Providence', 'care@gmail.com', '03:49:09', '2016-12-16'),
(16, 23, 'Providence', 'care@gmail.com', '04:13:57', '2016-12-16'),
(17, 23, 'Provy', 'care@gmail.com', '02:28:19', '2016-12-17'),
(18, 23, 'Provy', 'care@gmail.com', '08:32:06', '2016-12-17'),
(19, 23, 'Provy', 'care@gmail.com', '03:13:16', '2016-12-18'),
(20, 23, 'Provy', 'care@gmail.com', '08:37:45', '2016-12-18'),
(21, 23, 'Provy', 'care@gmail.com', '08:43:40', '2016-12-24'),
(22, 23, 'Provy', 'care@gmail.com', '10:44:54', '2024-12-16'),
(23, 23, 'Providence', 'care@gmail.com', '03:42:09', '2026-12-16'),
(24, 23, 'Providence', 'care@gmail.com', '03:46:04', '2026-12-16'),
(25, 23, 'Providence', 'care@gmail.com', '03:49:54', '0000-00-00'),
(26, 23, 'Providence', 'care@gmail.com', '03:54:17pm', '26/12/2016'),
(27, 23, 'Providence', 'care@gmail.com', '03:55:23pm', '26-12-16'),
(28, 23, 'Providence', 'care@gmail.com', '07:33:48pm', '26/12/16'),
(29, 23, 'Providence', 'care@gmail.com', '09:02:01pm', '26/12/16'),
(30, 23, 'Providence', 'care@gmail.com', '09:24:29pm', '26/12/16'),
(31, 23, 'Providence', 'care@gmail.com', '09:30:40pm', '26/12/16'),
(32, 23, 'Providence', 'care@gmail.com', '01:11:14am', '27/12/16'),
(33, 23, 'Providence', 'care@gmail.com', '05:38:34pm', '03/01/17'),
(34, 23, 'Providence', 'care@gmail.com', '04:33:45pm', '27/12/16'),
(35, 23, 'Providence', 'care@gmail.com', '10:05:30pm', '01/01/17'),
(36, 23, 'Providence', 'care@gmail.com', '12:50:30am', '02/01/17'),
(37, 23, 'Providence', 'care@gmail.com', '09:22:58pm', '14/01/17'),
(38, 23, 'Providence', 'care@gmail.com', '03:03:03pm', '17/01/17'),
(39, 23, 'Providence', 'care@gmail.com', '11:27:59pm', '21/01/17'),
(40, 23, 'Providence', 'care@gmail.com', '11:29:41pm', '21/01/17'),
(41, 23, 'Providence', 'care@gmail.com', '11:32:04pm', '21/01/17'),
(42, 23, 'Providence', 'care@gmail.com', '11:35:39pm', '21/01/17'),
(43, 23, 'Providence', 'care@gmail.com', '02:33:53am', '22/01/17'),
(44, 23, 'Providence', 'care@gmail.com', '11:00:29am', '22/01/17'),
(45, 23, 'Providence', 'care@gmail.com', '02:49:50pm', '22/01/17'),
(46, 23, 'Providence', 'care@gmail.com', '05:21:05pm', '29/01/17'),
(47, 23, 'Providence', 'care@gmail.com', '08:11:55am', '30/01/17'),
(48, 23, 'Providence', 'care@gmail.com', '11:38:33am', '31/01/17'),
(49, 23, 'Providence', 'care@gmail.com', '11:18:19am', '02/02/17'),
(50, 23, 'Providence', 'care@gmail.com', '05:07:37pm', '02/02/17'),
(51, 23, 'Providence', 'care@gmail.com', '05:55:54pm', '02/02/17'),
(52, 23, 'Providence', 'care@gmail.com', '06:53:26pm', '02/02/17'),
(53, 23, 'Providence', 'care@gmail.com', '07:10:39pm', '02/02/17'),
(54, 23, 'Providence', 'care@gmail.com', '07:11:37pm', '02/02/17'),
(55, 23, 'Providence', 'care@gmail.com', '08:55:50pm', '02/02/17'),
(56, 23, 'Providence', 'care@gmail.com', '09:17:37pm', '02/02/17'),
(57, 34, 'Ubong', 'uby@gmail.com', '10:07:52', '2005-02-17'),
(58, 35, 'Inno', 'ifesam@gmail.com', '10:15:47pm', '05/02/17'),
(59, 23, 'Providence', 'care@gmail.com', '05:23:20am', '08/02/17'),
(60, 23, 'Providence', 'care@gmail.com', '08:22:38am', '11/02/17'),
(61, 23, 'Providence', 'care@gmail.com', '09:46:31am', '11/02/17'),
(62, 23, 'Providence', 'care@gmail.com', '01:53:29pm', '12/02/17'),
(63, 23, 'Providence', 'care@gmail.com', '05:39:16am', '13/02/17'),
(64, 23, 'Providence', 'care@gmail.com', '05:40:01pm', '14/02/17'),
(65, 23, 'Providence', 'care@gmail.com', '05:20:37pm', '20/02/17'),
(66, 23, 'Providence', 'care@gmail.com', '12:42:08pm', '21/02/17'),
(67, 23, 'Providence', 'care@gmail.com', '06:28:48pm', '21/02/17'),
(68, 23, 'Providence', 'care@gmail.com', '01:06:46am', '22/02/17'),
(69, 23, 'Providence', 'care@gmail.com', '01:07:47am', '22/02/17'),
(70, 23, 'Providence', 'care@gmail.com', '01:09:30am', '22/02/17'),
(71, 23, 'Providence', 'care@gmail.com', '06:28:10am', '23/02/17'),
(72, 23, 'Providence', 'care@gmail.com', '09:33:45pm', '23/02/17'),
(73, 23, 'Providence', 'care@gmail.com', '11:44:07am', '25/02/17'),
(74, 36, 'Joshua', 'evuetaphajoshua@gmail.com', '07:44:51pm', '25/02/17'),
(75, 23, 'Providence', 'care@gmail.com', '08:20:14pm', '25/02/17'),
(76, 23, 'Providence', 'care@gmail.com', '12:34:51pm', '26/02/17'),
(77, 23, 'Providence', 'care@gmail.com', '12:36:09pm', '26/02/17'),
(78, 37, 'Nasty', 'nasty@gmail.com', '12:38:39pm', '26/02/17'),
(79, 23, 'Providence', 'care@gmail.com', '06:37:03pm', '26/02/17'),
(80, 23, 'Providence', 'care@gmail.com', '08:54:39pm', '02/03/17'),
(81, 23, 'Providence', 'care@gmail.com', '07:11:40am', '03/03/17'),
(82, 23, 'Providence', 'care@gmail.com', '08:20:20am', '03/03/17'),
(83, 23, 'Providence', 'care@gmail.com', '06:14:04pm', '04/03/17'),
(84, 23, 'Providence', 'care@gmail.com', '06:51:11pm', '04/03/17'),
(85, 23, 'Providence', 'care@gmail.com', '09:19:04pm', '08/03/17'),
(86, 23, 'Providence', 'care@gmail.com', '03:55:54pm', '09/03/17'),
(87, 23, 'Providence', 'care@gmail.com', '03:57:48pm', '09/03/17'),
(88, 23, 'Tombra', 'care@gmail.com', '04:08:58pm', '09/03/17'),
(89, 23, 'Tombra', 'care@gmail.com', '06:28:39pm', '11/03/17'),
(90, 23, 'Tombra', 'care@gmail.com', '06:53:26pm', '11/03/17'),
(91, 23, 'Tombra', 'care@gmail.com', '06:59:07pm', '11/03/17'),
(92, 23, 'Tombra', 'care@gmail.com', '12:17:45am', '12/03/17'),
(93, 23, 'Tombra', 'care@gmail.com', '07:40:58pm', '12/03/17'),
(94, 23, 'Tombra', 'care@gmail.com', '10:14:44am', '26/03/17'),
(95, 23, 'Providence', 'care@gmail.com', '11:09:47am', '26/03/17'),
(96, 23, 'Providence', 'care@gmail.com', '09:25:12pm', '29/03/17'),
(97, 23, 'Providence', 'care@gmail.com', '09:44:22am', '31/03/17'),
(98, 23, 'Providence', 'care@gmail.com', '10:35:15am', '31/03/17'),
(99, 23, 'Providence', 'care@gmail.com', '11:47:26am', '31/03/17'),
(100, 23, 'Providence', 'care@gmail.com', '11:55:18pm', '31/03/17'),
(101, 23, 'Providence', 'care@gmail.com', '04:50:20pm', '01/04/17'),
(102, 23, 'Providence', 'care@gmail.com', '11:38:43pm', '05/04/17'),
(103, 23, 'Providence', 'care@gmail.com', '10:24:16am', '07/04/17'),
(104, 23, 'lakia', 'care@gmail.com', '06:18:38pm', '08/04/17'),
(105, 23, 'Providence', 'care@gmail.com', '09:20:14pm', '11/04/17'),
(106, 23, 'Providence', 'care@gmail.com', '06:36:38pm', '21/04/17'),
(107, 23, 'OBINA', 'care@gmail.com', '01:04:58am', '24/04/17'),
(108, 0, 'R2bees', 'r2@gmail.com', '01:51:29pm', '25/04/17'),
(109, 0, 'Dj', 'another@gmail.com', '02:21:18pm', '25/04/17'),
(110, 23, 'OBINA', 'care@gmail.com', '11:01:07am', '26/04/17'),
(111, 24, 'Henry', 'dh@gmail.com', '11:43:55am', '26/04/17'),
(112, 23, 'victor', 'care@gmail.com', '11:51:55am', '26/04/17'),
(113, 23, 'victor', 'care@gmail.com', '12:06:54pm', '26/04/17'),
(114, 23, 'victor', 'care@gmail.com', '01:57:09pm', '28/04/17'),
(115, 23, 'victor', 'care@gmail.com', '05:30:22pm', '28/04/17'),
(116, 23, 'victor', 'care@gmail.com', '01:29:52am', '29/04/17'),
(117, 23, 'victor', 'care@gmail.com', '07:30:00pm', '01/05/17'),
(118, 23, 'angel', 'care@gmail.com', '11:55:52pm', '03/05/17'),
(119, 23, 'angel', 'care@gmail.com', '07:20:04am', '04/05/17'),
(120, 23, 'Angel', 'care@gmail.com', '08:42:06pm', '07/05/17'),
(121, 23, 'Angel', 'care@gmail.com', '10:46:02pm', '07/05/17'),
(122, 23, 'Angel', 'care@gmail.com', '11:09:40pm', '07/05/17'),
(123, 23, 'Angel', 'care@gmail.com', '01:13:13am', '08/05/17'),
(124, 23, 'Angel', 'care@gmail.com', '09:10:18pm', '09/05/17'),
(125, 25, 'Raymond', 'RaymondAtivie@gmail.com', '02:35:14pm', '10/05/17'),
(126, 23, 'Providence', 'care@gmail.com', '01:14:54pm', '12/05/17'),
(127, 23, 'Providence', 'care@gmail.com', '02:17:26pm', '12/05/17'),
(128, 26, 'Adesegun', 'adenopoadesegun@gmail.com ', '04:57:15pm', '12/05/17'),
(129, 26, 'Adesegun', 'adenopoadesegun@gmail.com ', '07:37:57pm', '15/05/17'),
(130, 26, 'Adesegun', 'adenopoadesegun@gmail.com ', '07:46:43pm', '15/05/17'),
(131, 26, 'Adesegun', 'adenopoadesegun@gmail.com ', '08:41:06pm', '15/05/17'),
(132, 26, 'Adesegun', 'adenopoadesegun@gmail.com ', '07:32:05pm', '17/05/17'),
(133, 23, 'Providence', 'care@gmail.com', '12:41:06pm', '21/05/17'),
(134, 27, 'Charles', 'xavier69.ac@gmail.com', '01:12:52pm', '21/05/17'),
(135, 23, 'Providence', 'care@gmail.com', '03:05:23am', '23/05/17'),
(136, 23, 'Providence', 'care@gmail.com', '07:53:59pm', '25/05/17'),
(137, 23, 'Providence', 'care@gmail.com', '09:06:16pm', '26/05/17'),
(138, 23, 'Providence', 'care@gmail.com', '09:08:44pm', '26/05/17'),
(139, 28, 'Dddd', 'ddddd@fff.com', '11:41:32am', '27/05/17'),
(140, 29, 'Sss', 'carcce@gmail.com', '12:12:54pm', '27/05/17'),
(141, 23, 'Providence', 'care@gmail.com', '10:32:44pm', '29/05/17'),
(142, 30, 'Daniel', 'd@gmail.com', '10:42:10pm', '29/05/17'),
(143, 31, 'Dddd', 'ddd@gmsil.com', '11:13:39pm', '29/05/17'),
(144, 23, 'Providence', 'care@gmail.com', '12:17:10am', '30/05/17'),
(145, 23, 'Providence', 'care@gmail.com', '01:55:39pm', '30/05/17'),
(146, 23, 'Providence', 'care@gmail.com', '09:17:42pm', '30/05/17'),
(147, 23, 'Providence', 'care@gmail.com', '02:28:16am', '31/05/17'),
(148, 23, 'Providence', 'care@gmail.com', '02:28:48am', '31/05/17'),
(149, 23, 'Providence', 'care@gmail.com', '02:31:01am', '31/05/17'),
(150, 23, 'Providence', 'care@gmail.com', '02:31:52am', '31/05/17'),
(151, 23, 'Providence', 'care@gmail.com', '02:32:07am', '31/05/17'),
(152, 23, 'Providence', 'care@gmail.com', '02:36:20am', '31/05/17'),
(153, 23, 'Providence', 'care@gmail.com', '12:10:57am', '04/06/17'),
(154, 23, 'Providence', 'care@gmail.com', '01:31:25pm', '04/06/17'),
(155, 23, 'Providence', 'care@gmail.com', '04:31:50pm', '04/06/17'),
(156, 23, 'Providence', 'care@gmail.com', '03:03:21pm', '05/06/17'),
(157, 23, 'Providence', 'care@gmail.com', '12:51:34am', '12/06/17'),
(158, 32, 'Tester', 'pro@gmail.com', '11:23:55am', '18/06/17'),
(159, 23, 'Providence', 'care@gmail.com', '03:31:39pm', '22/06/17'),
(160, 23, 'Providence', 'care@gmail.com', '02:38:29pm', '26/06/17'),
(161, 23, 'Providence', 'care@gmail.com', '05:31:07pm', '26/06/17'),
(162, 23, 'Providence', 'care@gmail.com', '06:59:39pm', '26/06/17'),
(163, 23, 'Providence', 'care@gmail.com', '12:46:09am', '27/06/17'),
(164, 33, 'Providence', 'fav@gmail.com', '03:24:51pm', '29/06/17'),
(165, 23, 'Providence', 'care@gmail.com', '03:28:52pm', '29/06/17'),
(166, 23, 'Providence', 'care@gmail.com', '04:00:12pm', '07/07/17'),
(167, 34, 'Providence', 'providenceifeosame@gmail.com', '02:55:50pm', '30/03/18');

-- --------------------------------------------------------

--
-- Table structure for table `logout`
--

CREATE TABLE `logout` (
  `loginid` int(11) NOT NULL,
  `logoutid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `firstname` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `logouttime` varchar(225) NOT NULL,
  `logoutDate` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logout`
--

INSERT INTO `logout` (`loginid`, `logoutid`, `id`, `firstname`, `email`, `logouttime`, `logoutDate`) VALUES
(0, 2, 23, 'Provy', 'care@gmail.com', '11:19am', '16/12/13'),
(10, 3, 23, 'Provy', 'care@gmail.com', '11:35am', '16/12/13'),
(10, 4, 23, 'Provy', 'care@gmail.com', '11:03am', '16/12/14'),
(13, 5, 23, 'Providence', 'care@gmail.com', '02:22pm', '16/12/14'),
(13, 6, 23, 'Providence', 'care@gmail.com', '03:49pm', '16/12/16'),
(0, 7, 0, '', '', '03:49pm', '16/12/16'),
(13, 8, 23, 'Provy', 'care@gmail.com', '02:28am', '16/12/17'),
(4, 9, 2, 'Providence', 'care@gmail.com', '04:51pm', '16/12/17'),
(5, 10, 2, 'Providence', 'care@gmail.com', '04:54pm', '16/12/17'),
(13, 11, 23, 'Providence', 'care@gmail.com', '03:45pm', '16/12/26'),
(6, 12, 0, 'Providence', 'care@gmail.com', '03:49pm', '16/12/26'),
(13, 13, 23, 'Providence', 'care@gmail.com', '03:54pm', '16/12/26'),
(13, 14, 23, 'Providence', 'care@gmail.com', '03:55pm', '16/12/26'),
(13, 15, 23, 'Providence', 'care@gmail.com', '07:33pm', '16/12/26'),
(6, 16, 0, '', 'care@gmail.com', '09:24pm', '16/12/26'),
(13, 17, 23, 'Providence', 'care@gmail.com', '09:26pm', '16/12/26'),
(13, 18, 23, 'Providence', 'care@gmail.com', '09:33pm', '16/12/26'),
(13, 19, 23, 'Providence', 'care@gmail.com', '05:38pm', '17/01/03'),
(13, 20, 23, 'Providence', 'care@gmail.com', '04:33pm', '16/12/27'),
(36, 21, 23, 'Providence', 'care@gmail.com', '12:52am', '17/01/02'),
(36, 22, 23, 'Providence', 'care@gmail.com', '09:27pm', '17/01/14'),
(36, 23, 23, 'Providence', 'care@gmail.com', '03:04pm', '17/01/17'),
(0, 24, 0, '', '', '03:04pm', '17/01/17'),
(36, 25, 23, 'Providence', 'care@gmail.com', '11:28pm', '17/01/21'),
(36, 26, 23, 'Providence', 'care@gmail.com', '11:30pm', '17/01/21'),
(36, 27, 23, 'Providence', 'care@gmail.com', '11:33pm', '17/01/21'),
(36, 28, 23, 'Providence', 'care@gmail.com', '02:50pm', '17/01/22'),
(36, 29, 23, 'Providence', 'care@gmail.com', '11:40am', '17/01/31'),
(36, 30, 23, 'Providence', 'care@gmail.com', '05:08pm', '17/02/02'),
(36, 31, 23, 'Providence', 'care@gmail.com', '07:11pm', '17/02/02'),
(0, 32, 0, 'Erastus', 'erastus_uso@gmail.com', '09:16pm', '17/02/02'),
(0, 33, 0, 'Rastus', 'rastususo@gmail.com', '09:17pm', '17/02/02'),
(36, 34, 23, 'Providence', 'care@gmail.com', '09:27pm', '17/02/02'),
(0, 35, 29, 'Erastus', 'erasooooo@gmail.com', '09:33pm', '17/02/02'),
(0, 36, 0, '', '', '09:33pm', '17/02/02'),
(0, 37, 33, 'Tega', 'gideonking7443@gmail', '09:26pm', '17/02/05'),
(57, 38, 34, 'Ubong', 'uby@gmail.com', '10:15pm', '17/02/05'),
(36, 39, 23, 'Providence', 'care@gmail.com', '08:48am', '17/02/11'),
(36, 40, 23, 'Providence', 'care@gmail.com', '05:54pm', '17/02/14'),
(36, 41, 0, '', '', '01:06am', '17/02/22'),
(0, 42, 0, '', '', '01:06am', '17/02/22'),
(0, 43, 0, '', '', '01:06am', '17/02/22'),
(36, 44, 0, '', '', '01:07am', '17/02/22'),
(0, 45, 0, '', '', '01:09am', '17/02/22'),
(74, 46, 36, 'Joshua', 'evuetaphajoshua@gmail.com', '08:20pm', '17/02/25'),
(36, 47, 23, 'Providence', 'care@gmail.com', '08:43pm', '17/02/25'),
(36, 48, 23, 'Providence', 'care@gmail.com', '12:35pm', '17/02/26'),
(36, 49, 23, 'Providence', 'care@gmail.com', '12:37pm', '17/02/26'),
(78, 50, 37, 'Nasty', 'nasty@gmail.com', '12:40pm', '17/02/26'),
(36, 51, 23, 'Providence', 'care@gmail.com', '07:34pm', '17/02/26'),
(36, 52, 23, 'Providence', 'care@gmail.com', '09:08pm', '17/03/02'),
(36, 53, 23, 'Providence', 'care@gmail.com', '07:45am', '17/03/03'),
(36, 54, 23, 'Providence', 'care@gmail.com', '06:19pm', '17/03/04'),
(36, 55, 23, 'Providence', 'care@gmail.com', '11:06pm', '17/03/08'),
(36, 56, 23, 'Providence', 'care@gmail.com', '03:56pm', '17/03/09'),
(36, 57, 23, 'Providence', 'care@gmail.com', '04:07pm', '17/03/09'),
(36, 58, 23, 'Tombra', 'care@gmail.com', '04:09pm', '17/03/09'),
(36, 59, 23, 'Tombra', 'care@gmail.com', '06:29pm', '17/03/11'),
(36, 60, 23, 'Tombra', 'care@gmail.com', '06:55pm', '17/03/11'),
(36, 61, 23, 'Tombra', 'care@gmail.com', '07:28pm', '17/03/11'),
(36, 62, 23, 'Tombra', 'care@gmail.com', '12:18am', '17/03/12'),
(36, 63, 23, 'Tombra', 'care@gmail.com', '07:42pm', '17/03/12'),
(36, 64, 23, 'Providence', 'care@gmail.com', '04:54pm', '17/04/01'),
(36, 65, 23, 'Providence', 'care@gmail.com', '10:36am', '17/04/07'),
(36, 66, 23, 'Providence', 'care@gmail.com', '09:20pm', '17/04/11'),
(109, 67, 0, 'Dj', 'another@gmail.com', '02:23pm', '17/04/25'),
(36, 68, 23, 'victor', 'care@gmail.com', '11:43am', '17/04/26'),
(111, 69, 24, 'Henry', 'dh@gmail.com', '11:51am', '17/04/26'),
(36, 70, 23, 'victor', 'care@gmail.com', '11:53am', '17/04/26'),
(36, 71, 23, 'Angel', 'care@gmail.com', '11:07pm', '17/05/07'),
(36, 72, 23, 'Angel', 'care@gmail.com', '11:27pm', '17/05/07'),
(36, 73, 23, 'Providence', 'care@gmail.com', '02:10pm', '17/05/12'),
(0, 74, 0, '', '', '02:17pm', '17/05/12'),
(0, 75, 0, '', '', '02:18pm', '17/05/12'),
(0, 76, 0, '', '', '02:18pm', '17/05/12'),
(0, 77, 0, '', '', '01:09pm', '17/05/21'),
(0, 78, 0, '', '', '01:31pm', '17/05/21'),
(0, 79, 0, '', '', '03:07am', '17/05/23'),
(0, 80, 0, '', '', '09:10pm', '17/05/26'),
(0, 81, 0, '', '', '12:09pm', '17/05/27'),
(0, 82, 0, '', '', '12:13pm', '17/05/27'),
(0, 83, 0, '', '', '10:33pm', '17/05/29'),
(0, 84, 0, '', '', '11:13pm', '17/05/29'),
(0, 85, 0, '', '', '12:16am', '17/05/30'),
(0, 86, 0, '', '', '02:27am', '17/05/31'),
(0, 87, 0, '', '', '02:28am', '17/05/31'),
(0, 88, 0, '', '', '02:28am', '17/05/31'),
(0, 89, 0, '', '', '02:30am', '17/05/31'),
(0, 90, 0, '', '', '02:31am', '17/05/31'),
(36, 91, 23, 'Providence', 'care@gmail.com', '02:31am', '17/05/31'),
(36, 92, 23, 'Providence', 'care@gmail.com', '04:26pm', '17/06/04'),
(36, 93, 23, 'Providence', 'care@gmail.com', '04:31pm', '17/06/04'),
(157, 94, 23, 'Providence', 'care@gmail.com', '02:42pm', '17/06/26');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `memberid` int(11) NOT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(200) DEFAULT NULL,
  `surname` varchar(225) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `picture` varchar(225) NOT NULL DEFAULT 'images(1).jpg',
  `school` varchar(225) NOT NULL,
  `location` varchar(225) NOT NULL,
  `facebook` varchar(225) NOT NULL,
  `google` varchar(225) NOT NULL,
  `twitter` varchar(225) NOT NULL,
  `whatsapp` varchar(225) NOT NULL,
  `instagram` varchar(225) NOT NULL,
  `snapchat` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`memberid`, `time`, `date`, `password`, `firstname`, `surname`, `email`, `picture`, `school`, `location`, `facebook`, `google`, `twitter`, `whatsapp`, `instagram`, `snapchat`) VALUES
(23, '11:10:00', '2016-12-11', 'ffead8f75bff3df51f1a81bcc8e15945', 'Providence', 'Ifeosame', 'care@gmail.com', 'photo.jpg', 'University of port-harcourt', 'Lagos', 'ggg', 'nerissaa', 'nerissaa', '08100993100', 'p', 'nerissaa'),
(24, '11:43:50', '2026-04-17', 'ffead8f75bff3df51f1a81bcc8e15945', 'Henry', 'Ibinabo', 'dh@gmail.com', 'images(1).jpg', '', '', '', '', '', '', '', ''),
(25, '02:35:14', '2010-05-17', 'f2a415aa78c7621831da5995e1447242', 'Raymond', 'Ativie', 'RaymondAtivie@gmail.com', 'IMG_20170108_065132_670.jpg', 'Covenant University', 'Lagos', 'RaymondAtivie', 'raymondativie', 'raymondativie', '', 'raymondativie', 'raymondativie'),
(26, '04:57:15', '2012-05-17', '830a075a3c9719fc7d80d306757e9f7f', 'Adesegun', 'Adenopo ', 'adenopoadesegun@gmail.com ', '2017-05-05-10-45-56-697083333.jpeg', 'University of port-harcourt', 'Lagos', 'facebook.com/adenopoadesegun', '', '', '09052201124', '@adenopoadesegun', ''),
(27, '01:12:52', '2021-05-17', 'c903db367a564d79d3453ef560d74b0a', 'Charles', 'Agbo', 'xavier69.ac@gmail.com', 'Charles Pet 20161204_140005.jpg', 'University of port-harcourt', 'port-harcourt', 'Charles onje agbo', 'xavier69.ac@gmail.com', '', '07062470302', 'itz_carl_x', 'charlesjoseph04'),
(28, '11:41:32', '2027-05-17', 'ff2f24f8b6d253bb5a8bc55728ca7372', 'Dddd', 'Ddd', 'ddddd@fff.com', 'images(1).jpg', '', '', '', '', '', '', '', ''),
(29, '12:12:54', '2027-05-17', 'ffead8f75bff3df51f1a81bcc8e15945', 'Sss', 'Ssss', 'carcce@gmail.com', 'images(1).jpg', '', '', '', '', '', '', '', ''),
(30, '10:42:10', '2029-05-17', 'ffead8f75bff3df51f1a81bcc8e15945', 'Daniel', 'Ay', 'd@gmail.com', '12360385_425911840935397_5173980528878596298_n.jpg', '', '', '', '', '', '', '', ''),
(31, '11:13:39', '2029-05-17', 'ebf7e62abaa2db8e332e3e4662658308', 'Dddd', 'Eeeeeee', 'ddd@gmsil.com', 'images(1).jpg', '', '', '', '', '', '', '', ''),
(32, '11:23:54', '2018-06-17', '925544d7f90cd3663531546f080bbed8', 'Tester', 'Pro', 'pro@gmail.com', 'images(1).jpg', '', '', '', '', '', '', '', ''),
(33, '03:24:51', '2029-06-17', 'b1576e82c6c6fb1503109f00315debf2', 'Providence', 'Favour', 'fav@gmail.com', 'images(1).jpg', '', '', '', '', '', '', '', ''),
(34, '02:55:39', '2030-03-18', 'b1576e82c6c6fb1503109f00315debf2', 'Providence', 'Ifeosame', 'providenceifeosame@gmail.com', 'images(1).jpg', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payed_downloads`
--

CREATE TABLE `payed_downloads` (
  `payid` int(11) NOT NULL,
  `projid` int(11) NOT NULL,
  `memid` int(11) NOT NULL,
  `email` varchar(225) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `refid` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL,
  `remit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payed_downloads`
--

INSERT INTO `payed_downloads` (`payid`, `projid`, `memid`, `email`, `date`, `time`, `refid`, `amount`, `remit`) VALUES
(2, 4, 26, 'providenceifeosame@gmail.com', '03/06/17', '04:33:48pm', 'Jarazone1858508124', 1000, 0),
(3, 3, 26, 'providenceifeosame@gmail.com', '03/06/17', '04:37:19pm', 'Jarazone1002152516', 1000, 0),
(4, 6, 23, 'providenceifeosame@gmail.com', '04/06/17', '04:19:02pm', 'Jarazone1727099044', 1500, 1),
(5, 6, 23, 'providenceifeosame@gmail.com', '05/06/17', '02:59:15pm', 'Jarazone1649081430', 1500, 0);

-- --------------------------------------------------------

--
-- Table structure for table `paymentinfo`
--

CREATE TABLE `paymentinfo` (
  `paymentid` int(11) NOT NULL,
  `projectid` int(11) NOT NULL,
  `accname` varchar(100) NOT NULL,
  `accnum` varchar(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `acctypeid` int(11) NOT NULL,
  `bankid` int(11) NOT NULL,
  `phone` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentinfo`
--

INSERT INTO `paymentinfo` (`paymentid`, `projectid`, `accname`, `accnum`, `email`, `amount`, `acctypeid`, `bankid`, `phone`) VALUES
(1, 8, 'providence', '2133453423', 'provi@gmail.com', 1000, 1, 20, '2147483647'),
(2, 9, 'providence', '2110746621', 'providenceifeosame@gmail.com', 1000, 2, 20, '2147483647'),
(3, 4, 'Adenopo Adesegun', '3026583638', 'adenopoadesegun@gmail.com', 1000, 2, 6, '09052201124'),
(4, 5, 'Providence', '2110746621', 'providenceifeosame@gmail.com', 1000, 2, 20, '09023955916'),
(5, 6, 'falz', '2110746621', 'providenceifeosame@gmail.com', 1500, 1, 18, '08187655140');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `priceid` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`priceid`, `price`) VALUES
(1, 1000),
(2, 1500),
(3, 2000),
(4, 500),
(5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `admin_status` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `projectid` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `time` varchar(12) NOT NULL,
  `date` varchar(12) NOT NULL,
  `filename` varchar(225) NOT NULL,
  `type` varchar(6) NOT NULL,
  `downloads` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `memberid` int(11) NOT NULL,
  `description` text NOT NULL,
  `contents` text NOT NULL,
  `facebook` text NOT NULL,
  `youtube` text NOT NULL,
  `verification` int(2) NOT NULL,
  `cover` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`admin_status`, `status`, `projectid`, `title`, `time`, `date`, `filename`, `type`, `downloads`, `price`, `memberid`, `description`, `contents`, `facebook`, `youtube`, `verification`, `cover`) VALUES
(0, 0, 1, 'Charles love life', '01:16:44am', '08/05/17', 'Limitation of privatization on Nigerian economy.docx', 'doc', 14, 0, 23, 'Success is on the\nway i can feel it\nfrom a distance', ' one man can change\nthe world', '', '', 0, '11218164_1634670050124824_5209514361601899689_n.jpg'),
(1, 1, 2, 'A Sample Proposal', '02:38:00pm', '10/05/17', 'Mobile App Development proposal for Cannanland.docx', 'doc', 8, 0, 25, 'Test', 'Test ', '', '', 1, 'indexx.jpg'),
(0, 0, 3, 'Market Research', '08:05:57pm', '15/05/17', 'Africa-Practice-Social-Media-Landscape-Vol-1.pdf', 'pdf', 1, 1000, 26, 'Gcjhbgjgccgjkjbcxfgjbgffggjjggfsghjbgfcddd\r\nhhhffbhjgxdfcvjjgvnbgcvgggjj', ' Jhnjjj\r\nHjjjjhghhhhhhhhhh\r\nUuuhhhggggggghgh\r\nGhgghhhhhhhhhh\r\nGggggghbmkssdgd', 'Facebook.com ', 'Youtube.com', 0, 'index.jpg'),
(0, 0, 4, 'Market ', '08:20:27pm', '15/05/17', '14292478-0-eBook-SocialMediaAdv.pdf', 'pdf', 1, 1000, 26, 'Yhkskshk sm zzhhskjggsjhg\r\nHhjkhhshshkshskshsms\r\nJdhsjjskhhskjsj', ' Hjjjkshsn dB zkanhjshsjhsbsjs\r\nJsjsnskshshshsksj\r\nhsjsksjsbhshsksjsj\r\nJsjjsjsjsjs', '', '', 0, 'index.jpg'),
(0, 0, 5, 'Test Project 2', '12:16:27am', '04/06/17', 'B.doc', 'doc', 0, 1000, 23, 'we on our way up', ' we up', '', '', 0, 'indexx.jpg'),
(0, 0, 6, 'Drive', '03:23:54pm', '04/06/17', 'math155final.docx', 'doc', 2, 1500, 23, 'rrrrrrrrrrrrrrrr', 'ffffffffffffffffffffffffffff', '', '', 0, 'indexx.jpg'),
(0, 0, 7, 'Project', '05:32:03pm', '26/06/17', 'Wl.docx', 'doc', 0, 0, 23, '000000000000', 'fgggggggggggggggg ', '', '', 0, 'indexx.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `protype`
--

CREATE TABLE `protype` (
  `protypeid` int(11) NOT NULL,
  `protype` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `protype`
--

INSERT INTO `protype` (`protypeid`, `protype`) VALUES
(1, 'UnderGraduate'),
(2, 'Masters'),
(3, 'PHD'),
(4, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `schoolid` int(11) NOT NULL,
  `school` varchar(225) NOT NULL,
  `alias` varchar(225) NOT NULL,
  `schoollogo` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`schoolid`, `school`, `alias`, `schoollogo`) VALUES
(1, 'University of Abuja', 'uniabuja', 'uniabuja.jpg'),
(2, 'University of Agriculture, Abeokuta', '', 'FUagric_abeokuta.jpg'),
(3, 'University of Ado-Ekiti', '', 'ado ekiti.jpg'),
(4, 'University of Benin', 'uniben', 'uniben.jpg'),
(5, 'University of Calabar', '', 'unical.jpg'),
(6, 'University of Education, Ikere-Ekiti', '', 'College-of-Education-Ikere-Ekiti.jpg'),
(7, 'University of Ibadan', 'ui', 'UI.jpg'),
(8, 'University of Ilorin', 'uniilorin', 'uniilorin.jpg'),
(9, 'University of Jos', '', 'unijos.jpg'),
(10, 'University of Lagos', 'unilag', 'unilag.jpg'),
(11, 'University of Maiduguri', '', 'uni_maid.jpg'),
(12, 'University of Mkar, Mkar', '', 'mkar (2).jpg'),
(13, 'University of Nigeria', '', 'unn.jpg'),
(14, 'University of port-harcourt', 'uniport', 'uniport.jpg'),
(15, 'University of Technology, Akwa-Ibom', '', 'Akwa-Ibom-State-University-Akutech.jpg'),
(16, 'University Of Uyo', 'uniuyo', 'uniuyo.jpg'),
(18, 'ABTI-American University of Nigeria', '', 'america.png'),
(19, 'Abubakar Tafawa Balewa University', '', 'tafawa.jpg'),
(20, 'Adamawa State University, Mubi', '', 'adamawa.jpg'),
(21, 'Adekunle Ajasin University', '', 'akoko_uni.jpg'),
(22, 'Ahmadu Bello University', '', 'Abu_zaria.jpg'),
(23, 'Ajayi Crowther University, Oyo', '', 'ajayi_crowther.jpg'),
(24, 'Ambrose Alli University', '', 'ekpoma.jpg'),
(26, 'Bayero University, Kano', '', 'bayero_uni.jpg'),
(27, 'Bells University', '', 'bell.jpg'),
(28, 'Benson Idahosa University', 'biu', 'BIU.jpg'),
(29, 'Bowen University, Iwo', 'bowen', 'bowen.jpg'),
(31, 'Covenant University', 'cu', 'cu.jpg'),
(32, 'Crawford University,Oye Ekiti', '', 'craw.jpg'),
(33, 'Cross River University of Technology', 'crutech', 'crutech.jpg'),
(34, 'Delta State University, Abraka', 'delsu', 'delsu.jpg'),
(35, 'Ebonyi State University', '', 'ebonyi_state_uni.jpg'),
(36, 'Enugu State University of Science & Technology', '', 'esut.jpg'),
(37, 'Federal University of Technology, Akure', 'futa', 'futa.jpg'),
(38, 'Federal University of Technology, Minna', 'futminna', 'futminna.jpg'),
(39, 'Federal University of Technology, Owerri', 'futo', 'futo.jpg'),
(40, 'Federal University Of Technology, Yola', '', 'yola.jpg'),
(41, 'Gombe state University, Tudun, Wada', '', 'gombe.jpg'),
(42, 'Igbinedion University, Okada', '', 'igbinideon.jpg'),
(43, 'Imo State University', '', 'imsu.jpg'),
(44, 'Joseph Ayo Babalola University', '', 'joseph_ayo.jpg'),
(45, 'Katsina State University', '', 'kastinas.jpg'),
(46, 'Kogi State University, Anyigba', '', 'kogi_state_uni.jpg'),
(47, 'Ladoke Akintola University of Tech.', '', 'ladoke_akintola.jpg'),
(48, 'Lagos State University', '', 'lasu.jpg'),
(49, 'Lead City University', '', 'lead.jpg'),
(50, 'Landmark University', '', 'landmark.jpg'),
(51, 'Michael Okpara University', '', 'micheal_okpara.jpg'),
(52, 'Nasarrawa State University', '', 'nasarawa.jpg'),
(53, 'National Open University of Nigeria', '', 'noun.jpg'),
(54, 'Niger Delta University', '', 'ndu.jpg'),
(55, 'Nigerian Defence Academy', '', 'defence.jpg'),
(56, 'Nnamdi Azikiwe University of Agriculture, Umudike', '', 'unizik.jpg'),
(57, 'Obafemi Awolowo University, ile-ife', '', 'oau.jpg'),
(58, 'Olabisi Onabanjo University, Ago-Iwoye', '', 'olabisi.jpg'),
(59, 'Osun State University', '', 'osun.jpg'),
(60, 'pan African University, Lekki', '', 'pan (2).jpg'),
(61, 'plateau State University', '', 'Plateau-State-University-PLASU-logo-480x534.png'),
(62, 'Redeemer’s University', '', 'redeeemers.jpg'),
(63, 'Renaissance University, Enugu', '', 'renosa.jpg'),
(64, 'Rivers State University of Science and Technology', 'ust', 'ust.jpg'),
(65, 'Salem University, Lokoja', '', 'salem.jpg'),
(66, 'St. paul’s University College, Awka', '', 'paul_uni.jpg'),
(68, 'Tai Solarin University of Education, Ijebu-Ode', '', 'solarin.jpg'),
(69, 'Usmanu Danfodiyo University, Sokoto', '', 'usman_danfodoi.jpg'),
(70, 'Wesley University, Ondo', '', 'wesley.jpg'),
(71, 'Anambra State University, Anambra', '', 'Anambra.jpg'),
(72, 'Abia State polytechnic', '', 'abia_poly_abia.jpg'),
(73, 'Adamawa State polytechnic, Yola', '', 'adam.jpg'),
(74, 'Akanu Ibiam Federal polytechnic, Unwana', '', 'akanu_ibiam_poly.jpg'),
(75, 'Allover central polytechnic, Sango-Ota Ogun State', '', 'allover.jpg'),
(76, 'Akwa Ibom State polytechnic', '', 'akwa-ibom_poly.jpg'),
(77, 'Auchi polytechnic, Auchi', '', 'auchi.jpg'),
(78, 'Dorben polytechnic (formerly Abuja School of Accountancy and Computer Studies)', '', 'dorben_poly.jpg'),
(79, 'Delta state polytechnic, Ozoro', '', 'delta_poly_ozoro.jpg'),
(80, 'Federal polytechnic, Ado – Ekiti', '', 'fed_poly_ado-ekiti.jpg'),
(81, 'Federal polytechnic Offa', '', 'fed-poly_offa.jpg'),
(82, 'Federal polytechnic Bida', '', 'fed_poly_bida.jpg'),
(83, 'Federal polytechnic, Bauchi', '', 'fed_poly_bauchi.jpg'),
(84, 'Federal polytechnic, Idah', '', 'fed_poly_idah.jpg'),
(85, 'Federal polytechnic, Ilaro', '', 'fed_poly_ilaro.jpg'),
(86, 'Federal polytechnic, Damaturu', '', 'damaturu.jpg'),
(87, 'Federal polytechnic, Nassarawa', '', 'fed_poly_nasawara.jpg'),
(88, 'Federal polytechnic, Mubi', '', 'fed_poly_mubi.jpg'),
(89, 'Federal polytechnic, Nekede', '', 'fed_poly_nekede.jpg'),
(90, 'Federal polytechnic, Oko', '', 'fed_poly_oko.jpg'),
(91, 'Federal polytechnic, Ede', '', 'fed_poly_ede.jpg'),
(92, 'Federal polytechnic, Birnin-Kebbi', '', 'the_poly_kebbi_benini_kebbi.jpg'),
(93, 'Federal coll. of Animal health & production Tech., Ibadan', '', 'coll.jpg'),
(94, 'Gateway polytechnic Saapade', '', 'saapade.jpg'),
(95, 'Hussaini Adamu Federal polytechnic, kazaure', '', 'hu.jpg'),
(96, 'Institute of Management Technology, Enugu', '', 'imt.jpg'),
(97, 'Kaduna polytechnic', '', 'kaduna_poly.jpg'),
(98, 'Kano State polytechnic, Kano', '', 'kano_poly.jpg'),
(99, 'Kwara State polytechnic', '', 'kwara_state_poly.jpg'),
(100, 'Lagos City polytechnic', '', 'lagcc.jpg'),
(102, 'Lagos State polytechnic', '', 'lagos_poly.jpg'),
(103, 'Niger State polytechnic, Zungeru', '', 'ngs.jpg'),
(104, 'Nigerian Coll. of Aviation Tech., Zaira', '', 'ncat.jpg'),
(106, 'Moshood Abiola polytechnic, Abeokuta', '', 'moshood_abiola_poly.jpg'),
(107, 'Nuhu Bamalli polytechnic, Zaria, Kaduna State', '', 'nuhub.jpg'),
(108, 'Osun State College of Technology, Esa-Oke', '', 'osco.jpg'),
(109, 'Osun State polytechnic, Iree', '', 'osun_poly_iree.jpg'),
(110, 'Ramat polytechnic, Maiduguri', '', 'ramat_poly_maiduguiri.jpg'),
(111, 'River State polytechnic, Bori', '', 'rivers_poly_bori.jpg'),
(112, 'Rufus Giwa polytechnic, Owo', '', 'rufus_giwa_poly.jpg'),
(113, 'Shaka polytechnic', '', 'shak.jpg'),
(114, 'The polytechnic, Ibadan', '', 'ibadan_poly_sango.jpg'),
(115, 'Yaba College of Tech.', '', 'yabat.jpg'),
(116, 'Adeniran Ogunsanya College of Education', '', 'adeniran.jpg'),
(117, 'Adeyemi College of Education, Ondo', '', 'adeyem.jpg'),
(118, 'College of Education, Agbor', '', 'delta-state-college-of-education-agbor.jpg'),
(119, 'College of Education, Afaha-Nsit', '', 'afaha.jpg'),
(120, 'College of Education, Akwanga', '', 'akwanga.jpg'),
(121, 'College of Education, Ekiadolor', '', 'ekwid.jpg'),
(122, 'College of Education, Ikere Ekiti', '', '45417ekiti.jpg'),
(124, 'College of Education, Zuba', '', 'zuba.jpg'),
(125, 'College of Education, Oro Kwara State', '', 'oro.jpg'),
(126, 'College of Education, Azare', '', 'azare.jpg'),
(127, 'College of Education, Warri', '', 'colw.jpg'),
(130, 'College of Education, Gindiri', '', 'grindi.jpg'),
(133, 'Federal College of Education, Zaira', '', 'fcez.jpg'),
(134, 'Federal College of Education, Okene', '', 'okene.jpg'),
(135, 'Federal College of Education, Akoka', '', 'akoka (2).jpg'),
(136, 'Federal College of Education, Omoku', '', 'fcetomoku.jpg'),
(137, 'Federal College of Education (Special), Oyo', '', 'spec.jpg'),
(139, 'Federal College of Education (Technical) Gombe', '', 'fceGombe.jpg'),
(140, 'Federal College of Education, Obudu', '', 'fceObudu.jpg'),
(141, 'Federal College of Education, pankshin', '', 'pashkin.jpg'),
(142, 'Federal College of Education, (Technical) Bich', '', 'bichi (2).jpg'),
(143, 'Federal College of Education (Technical) Gusau', '', 'gsau.jpg'),
(144, 'Federal College of Education, Yola', '', 'fceyola.jpg'),
(146, 'Kwara State College of Education', '', 'kstate.jpg'),
(147, 'National Teachers Institute, kaduna', '', 'nti.jpg'),
(148, 'Nwafor Orizu College of Education', '', 'NWAFOR ORIZU COLLEGE OF EDUCATION.jpg'),
(149, 'Osun State College of Education, Ilesa', '', 'ossu.jpg'),
(153, 'Abia state University, Uturu', 'absu', 'Abia_State_University_logo.jpg'),
(154, 'Abraham Adesanya Polytechnic', '', 'abraham_adesanya_poly.jpg'),
(155, 'Afe BaBalola University', 'afbuad', 'afbuad.jpg'),
(156, 'Babcock University', '', 'babcock.jpg'),
(157, 'Evangel Unversity,Akaeze', '', 'akaeze_uni.jpg'),
(158, 'Benue State polytechnic', '', 'benue_poly.jpg'),
(159, 'Best Solution Polytechnic', '', 'best_poly.jpg'),
(160, 'Benue State University', 'bsu', 'bsu.jpg'),
(161, 'Caleb Unversity', '', 'caleb_uni.jpg'),
(162, 'Convenant Polytechnic, Aba', '', 'convenant_poly_aba.jpg'),
(163, 'Cresent Unversity, Abeokuta', '', 'cresent_uni.jpg'),
(164, 'Delta state Polytechnic, Oghara', '', 'delta_poly_oghara.jpg'),
(165, 'Federal Polytechnic,Ile-oluji,ondo state', '', 'fed_poly_ile_oluji.jpg'),
(166, 'Federal Polytechnic Of oil and gas,Bonny', '', 'Fed_poly_oil_bonny.jpg'),
(167, 'Federal Ploytechnic, Oko', '', 'fed_poly_oko.jpg'),
(168, 'Federal University, Kashere', '', 'Fu_kashere.jpg'),
(169, 'Federal University, Oye Ekiti', '', 'FU_oye_ekiti.jpg'),
(170, 'Federal University Of Petroleum Efurun', '', 'fupre.jpg'),
(171, 'Godfrey Okoye University', '', 'gou.jpg'),
(172, 'Grace Polytechnic', '', 'grace_poly.jpg'),
(173, 'Ibadan Polytechnic, Egbeda', '', 'ibadan_poly_egbeda.jpg'),
(174, 'Igbajo Polytechnic', '', 'igbajo_poly.jpg'),
(175, 'Jigawa State Polytechnic, Dutse', '', 'jigawa_poly.jpg'),
(176, 'Kwara State University', '', 'kwara_uni.jpg'),
(177, 'Madona University', '', 'madona.jpg'),
(178, 'Nasarawa State Polytechnic', '', 'nasawar-state_poly.jpg'),
(179, 'Obong University, Obong Ntak', '', 'obong_uni.jpg'),
(180, 'Northwestern University, Kano', '', 'northwestuni.jpg'),
(181, 'Plateau Polytechnic, Berkin Ladi', '', 'plateau_poly_barkin_ladi.jpg'),
(182, 'Renik Polytechnic', '', 'renik_poly.jpg'),
(183, 'Sokoto state Polytechnic', '', 'the_poly_sokoto.jpg'),
(184, 'Trinity Polytechnic', '', 'trinity_poly.jpg'),
(185, 'Umaru Ali Skinkafa Polytechnic, Sokoto', '', 'Umaru_ali_skinkafa_poly.jpg'),
(186, 'University Of Agriculture ,Markurdi', 'uniagric', 'uniofagric_makurdi.jpg'),
(187, 'University Of Science and Technology, Ondo', '', 'ust_ondo.jpg'),
(188, 'University Of Science and Technology,Wudil', '', 'ust_wudil.jpg'),
(189, 'Uaru Musa Yar\'adua University, Kastina', '', 'yaradua.jpg'),
(190, 'Akwa Ibom State University', '', 'akwa ibom.jpg'),
(191, 'Ignatius Ajuru University of Education', 'iaue', 'iaue.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `verifier_login`
--

CREATE TABLE `verifier_login` (
  `loginid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `logintime` varchar(50) NOT NULL,
  `logindate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verifier_login`
--

INSERT INTO `verifier_login` (`loginid`, `id`, `firstname`, `email`, `logintime`, `logindate`) VALUES
(1, 2, 'Providence', 'care@gmail.com', '03:51:35pm', '16/12/16'),
(2, 2, 'Providence', 'care@gmail.com', '04:47:58pm', '16/12/17'),
(3, 2, 'Providence', 'care@gmail.com', '04:49:06pm', '16/12/17'),
(4, 2, 'Providence', 'care@gmail.com', '04:50:06pm', '16/12/17'),
(5, 2, 'Providence', 'care@gmail.com', '04:51:48pm', '16/12/17'),
(6, 2, 'Providence', 'care@gmail.com', '04:55:12pm', '16/12/17'),
(7, 2, 'Providence', 'care@gmail.com', '04:59:19pm', '16/12/17'),
(8, 2, 'Providence', 'care@gmail.com', '05:01:56pm', '16/12/17'),
(9, 2, 'Providence', 'care@gmail.com', '05:14:25pm', '16/12/17'),
(10, 2, 'Providence', 'care@gmail.com', '08:18:30pm', '16/12/17'),
(11, 2, 'Providence', 'care@gmail.com', '08:22:58pm', '16/12/17'),
(12, 2, 'Providence', 'care@gmail.com', '08:34:36pm', '16/12/17'),
(13, 2, 'Providence', 'care@gmail.com', '08:51:55pm', '16/12/17'),
(14, 2, 'Providence', 'care@gmail.com', '11:37:51pm', '16/12/17'),
(15, 2, 'Providence', 'care@gmail.com', '03:08:58am', '16/12/18'),
(16, 2, 'Providence', 'care@gmail.com', '03:16:11am', '16/12/18'),
(17, 2, 'Providence', 'care@gmail.com', '03:53:26am', '16/12/18'),
(18, 2, 'Providence', 'care@gmail.com', '06:57:28am', '16/12/18'),
(19, 2, 'Providence', 'care@gmail.com', '09:52:33am', '16/12/18'),
(20, 2, 'Providence', 'care@gmail.com', '01:37:17pm', '16/12/18'),
(21, 2, 'Providence', 'care@gmail.com', '10:53:51am', '16/12/22'),
(22, 2, 'Providence', 'care@gmail.com', '10:54:51am', '16/12/22'),
(23, 2, 'Providence', 'care@gmail.com', '09:06:11pm', '16/12/22'),
(24, 2, 'Providence', 'care@gmail.com', '02:38:49pm', '29/12/16'),
(25, 2, 'Providence', 'care@gmail.com', '02:27:42pm', '30/12/16'),
(26, 2, 'Providence', 'care@gmail.com', '02:30:29pm', '30/12/16'),
(27, 2, 'Providence', 'care@gmail.com', '02:33:13pm', '30/12/16'),
(28, 2, 'Providence', 'care@gmail.com', '12:38:54am', '02/01/17'),
(29, 2, 'Providence', 'care@gmail.com', '09:42:12pm', '12/01/17'),
(30, 2, 'Providence', 'care@gmail.com', '10:30:49am', '13/01/17'),
(31, 2, 'Providence', 'care@gmail.com', '10:49:47am', '13/01/17'),
(32, 2, 'Providence', 'care@gmail.com', '05:54:45pm', '14/02/17'),
(33, 2, 'Providence', 'care@gmail.com', '12:41:10pm', '26/02/17'),
(34, 2, 'Providence', 'care@gmail.com', '12:47:53pm', '26/02/17'),
(35, 2, 'Providence', 'care@gmail.com', '12:49:16pm', '26/02/17'),
(36, 2, 'Providence', 'care@gmail.com', '02:39:26pm', '26/02/17'),
(37, 2, 'Providence', 'care@gmail.com', '03:32:34pm', '26/02/17'),
(38, 2, 'Providence', 'care@gmail.com', '04:24:50pm', '26/02/17'),
(39, 2, 'Providence', 'care@gmail.com', '09:36:15pm', '26/02/17'),
(40, 2, 'Providence', 'care@gmail.com', '03:47:53am', '28/02/17'),
(41, 2, 'Providence', 'care@gmail.com', '05:55:19am', '28/02/17'),
(42, 2, 'Providence', 'care@gmail.com', '06:30:08am', '28/02/17'),
(43, 2, 'Providence', 'care@gmail.com', '08:08:56am', '28/02/17'),
(44, 2, 'Providence', 'care@gmail.com', '08:21:28am', '28/02/17'),
(45, 2, 'Providence', 'care@gmail.com', '06:25:25pm', '04/03/17'),
(46, 2, 'Providence', 'care@gmail.com', '06:31:51pm', '04/03/17'),
(47, 2, 'Providence', 'care@gmail.com', '03:02:02pm', '09/03/17'),
(48, 2, 'Providence', 'care@gmail.com', '06:34:58pm', '11/03/17'),
(49, 2, 'Providence', 'care@gmail.com', '06:57:08pm', '11/03/17'),
(50, 2, 'Providence', 'care@gmail.com', '06:05:03am', '22/03/17'),
(51, 2, 'Providence', 'care@gmail.com', '10:37:11am', '07/04/17'),
(52, 2, 'Providence', 'care@gmail.com', '02:19:54pm', '12/05/17'),
(53, 2, 'Providence', 'care@gmail.com', '02:21:48pm', '12/05/17'),
(54, 2, 'Providence', 'care@gmail.com', '02:27:06pm', '12/05/17');

-- --------------------------------------------------------

--
-- Table structure for table `verifier_logout`
--

CREATE TABLE `verifier_logout` (
  `loginid` int(11) NOT NULL,
  `logoutid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `logouttime` varchar(50) NOT NULL,
  `logoutdate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verifier_logout`
--

INSERT INTO `verifier_logout` (`loginid`, `logoutid`, `id`, `firstname`, `email`, `logouttime`, `logoutdate`) VALUES
(14, 1, 2, 'Providence', 'care@gmail.com', '03:17am', '16/12/18'),
(14, 2, 2, 'Providence', 'care@gmail.com', '07:31am', '16/12/18'),
(2, 3, 0, 'Providence', 'care@gmail.com', '10:42am', '16/12/22'),
(3, 4, 0, 'Providence', 'care@gmail.com', '10:45am', '16/12/22'),
(4, 5, 0, 'Providence', 'care@gmail.com', '10:48am', '16/12/22'),
(5, 6, 0, 'Providence', 'care@gmail.com', '10:52am', '16/12/22'),
(14, 7, 2, 'Providence', 'care@gmail.com', '10:54am', '16/12/22'),
(6, 8, 0, 'Providence', 'care@gmail.com', '09:32pm', '16/12/24'),
(6, 9, 0, 'Providence', 'care@gmail.com', '05:38pm', '17/01/03'),
(14, 10, 2, 'Providence', 'care@gmail.com', '02:41pm', '16/12/29'),
(14, 11, 2, 'Providence', 'care@gmail.com', '02:27pm', '16/12/30'),
(14, 12, 2, 'Providence', 'care@gmail.com', '02:30:33pm', '16/12/30'),
(14, 13, 2, 'Providence', 'care@gmail.com', '02:46:31pm', '16/12/30'),
(28, 14, 2, 'Providence', 'care@gmail.com', '12:44:07am', '17/01/02'),
(28, 15, 2, 'Providence', 'care@gmail.com', '10:32:34am', '17/01/13'),
(28, 16, 2, 'Providence', 'care@gmail.com', '10:51:33am', '17/01/13'),
(33, 17, 2, 'Providence', 'care@gmail.com', '12:46:51pm', '17/02/26'),
(34, 18, 2, 'Providence', 'care@gmail.com', '12:48:54pm', '17/02/26'),
(35, 19, 2, 'Providence', 'care@gmail.com', '01:19:39pm', '17/02/26'),
(35, 20, 2, 'Providence', 'care@gmail.com', '03:27:20pm', '17/02/26'),
(35, 21, 2, 'Providence', 'care@gmail.com', '06:36:53pm', '17/02/26'),
(35, 22, 2, 'Providence', 'care@gmail.com', '01:16:43pm', '17/02/28'),
(35, 23, 2, 'Providence', 'care@gmail.com', '06:26:37pm', '17/03/04'),
(35, 24, 2, 'Providence', 'care@gmail.com', '06:31:59pm', '17/03/04'),
(35, 25, 2, 'Providence', 'care@gmail.com', '03:13:39pm', '17/03/09'),
(0, 26, 0, '', '', '03:13:43pm', '17/03/09'),
(35, 27, 2, 'Providence', 'care@gmail.com', '06:39:04pm', '17/03/11'),
(35, 28, 2, 'Providence', 'care@gmail.com', '06:57:33pm', '17/03/11'),
(35, 29, 2, 'Providence', 'care@gmail.com', '06:36:29am', '17/03/22'),
(35, 30, 2, 'Providence', 'care@gmail.com', '10:39:03am', '17/04/07'),
(35, 31, 2, 'Providence', 'care@gmail.com', '02:22:00pm', '17/05/12'),
(0, 32, 0, '', '', '02:22:13pm', '17/05/12'),
(35, 33, 2, 'Providence', 'care@gmail.com', '02:27:20pm', '17/05/12');

-- --------------------------------------------------------

--
-- Table structure for table `verifier_verification_log`
--

CREATE TABLE `verifier_verification_log` (
  `log_id` int(11) NOT NULL,
  `admin_status` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `verifier_id` int(11) NOT NULL,
  `verification` int(11) NOT NULL,
  `admin_verification` int(11) NOT NULL DEFAULT '0',
  `time` varchar(25) NOT NULL,
  `date` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verifier_verification_log`
--

INSERT INTO `verifier_verification_log` (`log_id`, `admin_status`, `status`, `project_id`, `verifier_id`, `verification`, `admin_verification`, `time`, `date`) VALUES
(3, 0, 1, 2, 2, 1, 0, '02:21:57pm', '12/05/17'),
(4, 0, 1, 4, 2, 0, 0, '06:33:37am', '22/03/17'),
(5, 0, 1, 3, 2, 1, 0, '10:00:55pm', '12/01/17'),
(6, 0, 1, 10, 0, 0, 0, '06:01:41pm', '14/02/17'),
(7, 0, 1, 5, 2, 1, 0, '01:00:30pm', '26/02/17'),
(8, 0, 1, 6, 2, 0, 0, '10:38:44am', '07/04/17'),
(9, 0, 1, 7, 2, 0, 0, '06:31:55pm', '04/03/17'),
(10, 0, 1, 8, 2, 1, 0, '03:02:12pm', '09/03/17'),
(11, 0, 1, 1, 2, 0, 0, '06:57:26pm', '11/03/17');

-- --------------------------------------------------------

--
-- Table structure for table `verifiers`
--

CREATE TABLE `verifiers` (
  `id` int(11) NOT NULL,
  `time` varchar(15) NOT NULL,
  `date` varchar(15) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `picture` varchar(225) NOT NULL DEFAULT 'images(1).jpg',
  `approval` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verifiers`
--

INSERT INTO `verifiers` (`id`, `time`, `date`, `firstname`, `surname`, `email`, `password`, `picture`, `approval`) VALUES
(2, '03:31:58pm', '16/12/16', 'Providence', 'Ifeosame', 'care@gmail.com', 'ffead8f75bff3df51f1a81bcc8e15945', 'g.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `yearid` int(11) NOT NULL,
  `year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`yearid`, `year`) VALUES
(1, 2016),
(2, 2015),
(3, 2014),
(4, 2013),
(5, 2012),
(6, 2011),
(7, 2010),
(8, 2009),
(9, 2008),
(10, 2007),
(11, 2006),
(12, 2005),
(13, 2004),
(14, 2003),
(15, 2002),
(16, 2001),
(17, 2000),
(18, 1999),
(19, 1998),
(20, 1997),
(21, 1996),
(22, 1995),
(23, 1994),
(24, 1993),
(25, 1992),
(26, 1991),
(27, 1990),
(52, 2017),
(53, 1860);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acctype`
--
ALTER TABLE `acctype`
  ADD PRIMARY KEY (`acctypeid`);

--
-- Indexes for table `admin_download_log`
--
ALTER TABLE `admin_download_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`loginid`);

--
-- Indexes for table `admin_logout`
--
ALTER TABLE `admin_logout`
  ADD PRIMARY KEY (`logoutid`);

--
-- Indexes for table `admin_members`
--
ALTER TABLE `admin_members`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `admin_upload_log`
--
ALTER TABLE `admin_upload_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_verification_log`
--
ALTER TABLE `admin_verification_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`alumniid`);

--
-- Indexes for table `auth_title`
--
ALTER TABLE `auth_title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`bankid`);

--
-- Indexes for table `choice`
--
ALTER TABLE `choice`
  ADD PRIMARY KEY (`choiceid`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentid`);

--
-- Indexes for table `email_list`
--
ALTER TABLE `email_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entry`
--
ALTER TABLE `entry`
  ADD PRIMARY KEY (`entryid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`loginid`);

--
-- Indexes for table `logout`
--
ALTER TABLE `logout`
  ADD PRIMARY KEY (`logoutid`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`memberid`);

--
-- Indexes for table `payed_downloads`
--
ALTER TABLE `payed_downloads`
  ADD PRIMARY KEY (`payid`);

--
-- Indexes for table `paymentinfo`
--
ALTER TABLE `paymentinfo`
  ADD PRIMARY KEY (`paymentid`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`priceid`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`projectid`);

--
-- Indexes for table `protype`
--
ALTER TABLE `protype`
  ADD PRIMARY KEY (`protypeid`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`schoolid`);

--
-- Indexes for table `verifier_login`
--
ALTER TABLE `verifier_login`
  ADD PRIMARY KEY (`loginid`);

--
-- Indexes for table `verifier_logout`
--
ALTER TABLE `verifier_logout`
  ADD PRIMARY KEY (`logoutid`);

--
-- Indexes for table `verifier_verification_log`
--
ALTER TABLE `verifier_verification_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `verifiers`
--
ALTER TABLE `verifiers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`yearid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acctype`
--
ALTER TABLE `acctype`
  MODIFY `acctypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `admin_download_log`
--
ALTER TABLE `admin_download_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `loginid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT for table `admin_logout`
--
ALTER TABLE `admin_logout`
  MODIFY `logoutid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `admin_members`
--
ALTER TABLE `admin_members`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `admin_upload_log`
--
ALTER TABLE `admin_upload_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admin_verification_log`
--
ALTER TABLE `admin_verification_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `alumniid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `auth_title`
--
ALTER TABLE `auth_title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `bankid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `choice`
--
ALTER TABLE `choice`
  MODIFY `choiceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `departmentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `email_list`
--
ALTER TABLE `email_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `entry`
--
ALTER TABLE `entry`
  MODIFY `entryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `loginid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT for table `logout`
--
ALTER TABLE `logout`
  MODIFY `logoutid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `memberid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `payed_downloads`
--
ALTER TABLE `payed_downloads`
  MODIFY `payid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `paymentinfo`
--
ALTER TABLE `paymentinfo`
  MODIFY `paymentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `priceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `projectid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `protype`
--
ALTER TABLE `protype`
  MODIFY `protypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `schoolid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;
--
-- AUTO_INCREMENT for table `verifier_login`
--
ALTER TABLE `verifier_login`
  MODIFY `loginid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `verifier_logout`
--
ALTER TABLE `verifier_logout`
  MODIFY `logoutid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `verifier_verification_log`
--
ALTER TABLE `verifier_verification_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `verifiers`
--
ALTER TABLE `verifiers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `yearid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"cgpa\",\"table\":\"roles\"},{\"db\":\"cgpa\",\"table\":\"users\"},{\"db\":\"cgpa\",\"table\":\"countries\"},{\"db\":\"cgpa\",\"table\":\"targets\"},{\"db\":\"cgpa\",\"table\":\"schools\"},{\"db\":\"cgpa\",\"table\":\"results\"},{\"db\":\"cgpa\",\"table\":\"grades\"},{\"db\":\"cgpa\",\"table\":\"faculties\"},{\"db\":\"cgpa\",\"table\":\"departments\"},{\"db\":\"cgpa\",\"table\":\"courses\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-05-22 00:21:21', '{\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `titan`
--
CREATE DATABASE IF NOT EXISTS `titan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `titan`;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `user_id`, `email`, `type`, `account_name`, `account_number`, `bank`, `status`, `created_at`, `updated_at`) VALUES
(1, '4', 'the21stcenturyceo@gmail.com', 'currency', ' ', '0083471190', 'Diamond Bank Plc', 'active', '2017-10-11 09:44:24', '2017-10-11 09:44:24'),
(2, '15', 'nelsonpal55@gmail.com', 'btc', 'Nelson Ezo-Pal', '142RjWuuugonVorXQ9rfgrY8mAt9DUMqMC', 'bitcoin', 'active', '2017-10-11 11:47:30', '2017-10-11 11:47:30'),
(3, '15', 'nelsonpal55@gmail.com', 'currency', 'Nelson Ezo-Pal', '0065650195', 'Diamond Bank Plc', 'active', '2017-10-11 11:48:17', '2017-10-11 11:48:17'),
(4, '25', 'othuke.imonikiro@gmail.com', 'btc', ' ', '18RaG1oYzG7UYx47cWTUeJkvZwKioyRVsh', 'bitcoin', 'deleted', '2017-10-12 05:52:32', '2017-10-16 20:03:07'),
(5, '25', 'othuke.imonikiro@gmail.com', 'currency', ' ', '0001292717', 'Diamond Bank Plc', 'active', '2017-10-12 05:56:19', '2017-10-12 05:56:19'),
(6, '25', 'othuke.imonikiro@gmail.com', 'currency', ' ', '0131274562', 'Guaranty Trust Bank Plc', 'active', '2017-10-12 06:19:25', '2017-10-12 06:19:25'),
(7, '29', 'cloonicux@gmail.com', 'currency', 'Chibuike Asuzu', '6551215558', 'Fidelity Bank Plc', 'active', '2017-10-13 04:59:27', '2017-10-13 04:59:27'),
(8, '29', 'cloonicux@gmail.com', 'btc', 'Chibuike Asuzu', '14pqSs6ygEFnv7KX31kPmXAuFNp6Cm79bJ', 'bitcoin', 'active', '2017-10-13 05:00:44', '2017-10-13 05:00:44'),
(9, '21', 'the21stcenturyceo@gmail.com', 'currency', 'Precious Chukundah', '3056148476', 'First Bank of Nigeria Plc', 'active', '2017-10-14 21:35:48', '2017-10-14 21:35:48'),
(10, '25', 'othuke.imonikiro@gmail.com', 'btc', ' ', '1BsYoBQQhY4yrDMchwiQLzywH6sQZLRgCD', 'bitcoin', 'deleted', '2017-10-16 20:02:50', '2017-10-31 12:40:07'),
(11, '35', 'temitayooyalowo55@hotmail.com', 'currency', ' ', '0013491805', 'Guaranty Trust Bank Plc', 'deleted', '2017-10-17 06:25:41', '2017-10-20 04:26:24'),
(12, '35', 'temitayooyalowo55@hotmail.com', 'btc', ' ', '18hMVzGjvSjL8VmgMou39ax5iReZJQdP4u', 'bitcoin', 'active', '2017-10-17 06:29:33', '2017-10-17 06:29:33'),
(13, '40', 'Akorvuezenwakanma@gmail.com', 'btc', 'Akorvueze Nwakanma', 'the21stcenturyceo@gmail.com', 'bitcoin', 'active', '2017-10-17 16:34:28', '2017-10-17 16:34:28'),
(14, '40', 'Akorvuezenwakanma@gmail.com', 'btc', 'Akorvueze Nwakanma', '1C1tNr9pWMLdohXAHw8XP2UccUGYpcJHji', 'bitcoin', 'active', '2017-10-17 16:48:40', '2017-10-17 16:48:40'),
(15, '40', 'Akorvuezenwakanma@gmail.com', 'currency', 'Akorvueze Nwakanma', '0707314262', 'Access Bank Nigeria Plc', 'active', '2017-10-17 16:50:57', '2017-10-17 16:50:57'),
(16, '21', 'the21stcenturyceo@gmail.com', 'btc', 'Precious Chukundah', '1Ucadij4VhLM3dP88LUWKKNcqN2wFHrSD', 'bitcoin', 'active', '2017-10-18 11:45:28', '2017-10-18 11:45:28'),
(17, '47', 'chukwundac@yahoo.co.uk', 'currency', 'Chidera Chukunda', '3090181756', 'First Bank of Nigeria Plc', 'active', '2017-10-20 11:01:30', '2017-10-20 11:01:30'),
(18, '53', 'arugub@gmail.com', 'currency', 'Benjamin Arugu', '2055046633', 'United Bank for Africa Plc', 'active', '2017-10-22 21:40:44', '2017-10-22 21:40:44'),
(19, '5', 'providenceifeosame@gmail.com', 'currency', 'Providence Ifeosame', '2110746621', 'Zenith Bank International', 'active', '2017-10-25 10:07:45', '2017-10-25 10:07:45'),
(20, '50', 'thompsonamadi@gmail.com', 'btc', 'Ihunanyachi Thompson Amadi', 'Gold', 'bitcoin', 'deleted', '2017-10-26 10:52:06', '2017-10-26 13:13:46'),
(21, '72', 'kckross@yahoo.com', 'currency', 'Kelechi Orji', '0040971954', 'Guaranty Trust Bank Plc', 'active', '2017-10-31 07:51:13', '2017-10-31 07:51:13'),
(22, '25', 'othuke.imonikiro@gmail.com', 'btc', ' ', '1Ly5DuqZkAe6qosfzhTppB2jMUiZAKag6E', 'bitcoin', 'active', '2017-10-31 12:39:55', '2017-10-31 12:39:55'),
(23, '82', 'anietzreuben@gmail.com', 'currency', ' ', '0043208013', 'Guaranty Trust Bank Plc', 'deleted', '2017-11-03 15:42:22', '2017-11-03 15:42:34'),
(24, '99', 'clinsgfx@gmail.com', 'currency', 'Clinton Agburum', '0128146090', 'Guaranty Trust Bank Plc', 'active', '2017-11-07 09:36:16', '2017-11-07 09:36:16');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_funded` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`id`, `user_id`, `email`, `type`, `currency`, `amount`, `description`, `transaction_id`, `account_funded`, `account_name`, `account_number`, `bank`, `status`, `deleted`, `created_at`, `updated_at`) VALUES
(1, '6', 'lite2fine@gmail.com', 'Cash Deposit', 'currency', '20000', 'IL2IILTOEF', 'C0Tu8V4e1s', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-10 19:33:30', '2017-10-17 09:54:44'),
(2, '14', 'danieluokon@gmail.com', 'Cash Deposit', 'currency', '50000', 'MLMNCAONIU', '1ydF1cRlW0', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-11 07:50:04', '2017-10-17 09:54:14'),
(3, '14', 'danieluokon@gmail.com', 'Electronic Funds Transfer', 'currency', '50000', 'MLMNCAONIU', 'pc2g0R5kgZ', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-11 07:50:27', '2017-10-17 09:54:26'),
(4, '14', 'danieluokon@gmail.com', 'bitcoin deposit', 'btc', '0', '3DQB3wbEhzRXEedG18TwMEqGRfwqDGvY5C', 'kEvni5eM70', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-11 07:50:40', '2017-10-17 22:06:13'),
(5, '14', 'danieluokon@gmail.com', 'bitcoin deposit', 'btc', '0', '3BMek5aZFtHjM4r855f3dpKL5gyboRK3pk', '7Oze0RHFb5', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-11 07:50:54', '2017-10-11 11:49:17'),
(6, '21', 'the21stcenturyceo@gmail.com', 'Electronic Funds Transfer', 'currency', '20000', 'TERNTOC2GA', 'ef02SgR7Zs', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-11 11:24:12', '2017-10-11 11:25:06'),
(7, '2', 'calmpress@gmail.com', 'Cash Deposit', 'currency', '11000', 'ESIACMRSMC', '7Rfiy31m6w', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-11 11:35:46', '2017-10-11 12:56:30'),
(8, '15', 'nelsonpal55@gmail.com', 'Electronic Funds Transfer', 'currency', '10000', '5AMLOPIOCA', 'nnjxV50GS1', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-11 11:51:22', '2017-10-17 22:06:26'),
(9, '15', 'nelsonpal55@gmail.com', 'bitcoin deposit', 'btc', '0', '3PT6mbzdGEfKe2ByWyojWncBVBgUpyy7jk', 'A977MQca0s', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-11 11:53:17', '2017-10-17 22:30:00'),
(10, '21', 'the21stcenturyceo@gmail.com', 'Electronic Funds Transfer', 'currency', '30000', 'TERNTOC2GA', 'c25THkZnt8', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-11 11:53:32', '2017-10-11 11:54:24'),
(11, '2', 'calmpress@gmail.com', 'Cash Deposit', 'currency', '17000', 'ESIACMRSMC', 'F7z2ME272f', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-11 11:53:40', '2017-10-12 14:48:06'),
(12, '2', 'calmpress@gmail.com', 'bitcoin deposit', 'btc', '0', '3FSzDMt1vF8JEKG8BDHdwN5rh9wWXeWbmu', 'V6iSpFZy26', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-11 12:57:05', '2017-10-23 13:56:49'),
(13, '17', 'uniquewill9@gmail.com', 'bitcoin deposit', 'btc', '0', '3FLvo5bo4atyytUctsQY1z7eZb89txAJMj', 'o0aCxw7L51', NULL, NULL, NULL, NULL, 'complete', '0', '2017-10-12 02:54:15', '2017-10-18 20:47:32'),
(14, '25', 'othuke.imonikiro@gmail.com', 'bitcoin deposit', 'btc', '0', '3BW1JYdMYYj8Z4fK4e8NcRuVcSKod5PEzp', '1KPNsq759i', NULL, NULL, NULL, NULL, 'complete', '0', '2017-10-12 08:45:42', '2017-10-18 20:52:52'),
(15, '25', 'othuke.imonikiro@gmail.com', 'bitcoin deposit', 'btc', '0', '3Fj25fXZWsVGr966hjovi3H6nuQMEQdKjJ', '4YyJFNebL7', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-12 09:03:39', '2017-10-25 15:20:05'),
(16, '21', 'the21stcenturyceo@gmail.com', 'bitcoin deposit', 'btc', '0.0116', '3Gr3Pe9eTGRK5ZihwZXuDNT8m1ip1vV8Q9', 'P250iKTPen', NULL, NULL, NULL, NULL, 'complete', '0', '2017-10-12 15:59:32', '2017-10-14 21:30:54'),
(17, '2', 'calmpress@gmail.com', 'Cash Deposit', 'currency', '11000', 'ESIACMRSMC', 'mNL0po7E7e', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-12 22:39:45', '2017-10-12 22:40:15'),
(18, '2', 'calmpress@gmail.com', 'Cash Deposit', 'currency', '11000', 'ESIACMRSMC', 'j2synt7246', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-12 22:39:48', '2017-10-12 22:40:51'),
(19, '2', 'calmpress@gmail.com', 'Cash Deposit', 'currency', '11000', 'ESIACMRSMC', 'kM1vVgjz9C', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-12 22:39:50', '2017-10-12 22:40:42'),
(20, '2', 'calmpress@gmail.com', 'Cash Deposit', 'currency', '11000', 'ESIACMRSMC', '0c1n917dAw', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-12 22:39:52', '2017-10-12 22:40:35'),
(21, '2', 'calmpress@gmail.com', 'Cash Deposit', 'currency', '11000', 'ESIACMRSMC', 'gl8DZvWwQs', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-12 22:39:53', '2017-10-12 22:40:28'),
(22, '2', 'calmpress@gmail.com', 'Cash Deposit', 'currency', '11000', 'ESIACMRSMC', 'R52D9VGpW8', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-12 22:39:55', '2017-10-12 22:40:21'),
(23, '29', 'cloonicux@gmail.com', 'Electronic Funds Transfer', 'currency', '11000', 'UGOMXOOLCI', 'FF502vCLSh', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-13 04:55:32', '2017-10-13 04:56:59'),
(24, '29', 'cloonicux@gmail.com', 'Electronic Funds Transfer', 'currency', '10000', 'UGOMXOOLCI', '2zcgIC68Oq', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-13 04:57:24', '2017-10-13 05:21:01'),
(25, '29', 'cloonicux@gmail.com', 'Electronic Funds Transfer', 'currency', '10000', 'UGOMXOOLCI', 'dC1L60b0W6', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-13 04:57:46', '2017-10-13 04:58:25'),
(26, '31', 'ifeanyienweliku93@gmail.com', 'Electronic Funds Transfer', 'currency', '367500', 'OIYEM9AUNL', 'hj4ZgTP2ju', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-14 12:42:22', '2017-10-15 15:06:19'),
(27, '31', 'ifeanyienweliku93@gmail.com', 'Electronic Funds Transfer', 'currency', '367500', 'OIYEM9AUNL', '6ygAR7W4ze', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-14 12:43:18', '2017-10-17 22:06:01'),
(28, '34', 'sevengreatgates@gmail.com', 'Electronic Funds Transfer', 'currency', '10000', 'LAEGTOEMSI', 'c1pF0cyzH3', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-15 18:47:52', '2017-10-18 09:58:53'),
(29, '34', 'sevengreatgates@gmail.com', 'Electronic Funds Transfer', 'currency', '10000', 'LAEGTOEMSI', 'P0yOxyO5k1', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-15 18:47:55', '2017-10-31 14:07:47'),
(30, '21', 'the21stcenturyceo@gmail.com', 'Electronic Funds Transfer', 'currency', '200000', 'TERNTOC2GA', 'T1F00AKbqZ', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-16 16:08:28', '2017-10-16 19:40:37'),
(31, '21', 'the21stcenturyceo@gmail.com', 'Electronic Funds Transfer', 'currency', '50000', 'TERNTOC2GA', 'K11M3xVBUI', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-16 19:40:10', '2017-10-16 19:40:45'),
(32, '2', 'calmpress@gmail.com', 'Cash Deposit', 'currency', '10000', 'ESIACMRSMC', '86zcF7mLrw', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-16 20:44:46', '2017-10-17 14:19:21'),
(33, '2', 'calmpress@gmail.com', 'Cash Deposit', 'currency', '10000', 'ESIACMRSMC', 'ngC1uTli3Q', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-16 20:57:34', '2017-10-17 14:26:11'),
(34, '21', 'the21stcenturyceo@gmail.com', 'Electronic Funds Transfer', 'currency', '30000', 'TERNTOC2GA', 'eunEv041wc', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-17 07:10:14', '2017-10-17 09:54:53'),
(35, '21', 'the21stcenturyceo@gmail.com', 'Electronic Funds Transfer', 'currency', '98200', 'TERNTOC2GA', '2p5Cv7y5kd', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-17 11:27:05', '2017-10-17 11:27:50'),
(36, '39', 'tochukwualor@gmail.com', 'Electronic Funds Transfer', 'currency', '10000', 'GLOTUCWAOM', 'OMVZ8sU167', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-17 13:14:29', '2017-10-25 15:41:30'),
(37, '39', 'tochukwualor@gmail.com', 'bitcoin deposit', 'btc', '0', '32TbUAg4EZt12SqR6MfvCgsfYun4PJi92U', 'hXpVIXPk5R', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-17 13:15:42', '2017-11-01 14:38:28'),
(38, '2', 'calmpress@gmail.com', 'Electronic Funds Transfer', 'currency', '11000', 'ESIACMRSMC', 'FG4Fbp1o6y', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-17 14:31:04', '2017-10-17 14:31:39'),
(39, '40', 'Akorvuezenwakanma@gmail.com', 'bitcoin deposit', 'btc', '0.0064', '39J77X4LgukqM2iYHaeaH1KQ6Cc79eLBwe', '350loPdyv5', NULL, NULL, NULL, NULL, 'complete', '0', '2017-10-17 15:59:13', '2017-10-17 16:30:47'),
(40, '43', 'starlogic@gmail.com', 'Electronic Funds Transfer', 'currency', '100000', 'SMOTLAAGGL', 'j7Ze77mDBv', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-19 17:55:57', '2017-10-31 17:42:27'),
(41, '35', 'temitayooyalowo55@hotmail.com', 'Electronic Funds Transfer', 'currency', '10000', 'MLTWCTOILO', '6yHfzz60Gc', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-20 04:27:46', '2017-10-23 13:56:33'),
(42, '47', 'chukwundac@yahoo.co.uk', 'bitcoin deposit', 'btc', '0.0032', '3HdhQuofUHhTXswvLRKVLnAfTjP9L8GJfj', 's45v1KNQ04', NULL, NULL, NULL, NULL, 'complete', '0', '2017-10-20 09:49:06', '2017-10-20 09:55:31'),
(43, '2', 'calmpress@gmail.com', 'Cash Deposit', 'currency', '11000', 'ESIACMRSMC', 'meD1ey4EyH', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-20 11:58:56', '2017-10-20 11:59:35'),
(44, '21', 'the21stcenturyceo@gmail.com', 'Electronic Funds Transfer', 'currency', '500000', 'TERNTOC2GA', 'C0Tkm15Pgc', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-20 14:18:00', '2017-10-20 14:20:51'),
(45, '21', 'the21stcenturyceo@gmail.com', 'Electronic Funds Transfer', 'currency', '100000', 'TERNTOC2GA', 'I8jrEEGGwe', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-22 02:23:38', '2017-10-22 14:50:36'),
(46, '53', 'arugub@gmail.com', 'Electronic Funds Transfer', 'currency', '70000', 'URMGBMAAGU', 'Ttf7lIL71j', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-22 21:29:14', '2017-10-22 22:46:19'),
(47, '53', 'arugub@gmail.com', 'Electronic Funds Transfer', 'currency', '70000', 'URMGBMAAGU', '5457C02uGB', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-22 22:15:49', '2017-10-22 22:32:16'),
(48, '54', 'vocalsheavenly@yahoo.com', 'Electronic Funds Transfer', 'currency', '20000', 'LNLEOYMYEO', '17Say126Dq', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-22 22:46:55', '2017-10-31 14:07:59'),
(49, '48', 'sokariharry@gmail.com', 'Cash Deposit', 'currency', '100000', 'GRCYMAIAHS', 'z0AaG3Qp7L', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-23 11:21:51', '2017-10-23 11:30:39'),
(50, '50', 'thompsonamadi@gmail.com', 'Electronic Funds Transfer', 'currency', '1000000', 'NHIOMILMOO', 'qWy8oSVr0F', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-24 08:55:47', '2017-10-24 09:11:24'),
(51, '57', 'Cnyenke1@gmail.com', 'Electronic Funds Transfer', 'currency', '500000', 'KMCN1LNAEM', '9ia06jF2eP', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-24 09:04:22', '2017-10-24 09:11:39'),
(52, '50', 'thompsonamadi@gmail.com', 'Electronic Funds Transfer', 'currency', '1500400', 'NHIOMILMOO', 'ZeahL6sy84', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-24 09:14:28', '2017-10-24 13:56:01'),
(53, '35', 'temitayooyalowo55@hotmail.com', 'Cash Deposit', 'currency', '50000', 'MLTWCTOILO', 'eV7IU1J45R', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-24 19:14:19', '2017-11-01 14:38:11'),
(54, '21', 'the21stcenturyceo@gmail.com', 'Electronic Funds Transfer', 'currency', '500200', 'TERNTOC2GA', '8A1oMp07Py', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-25 05:44:59', '2017-10-25 06:03:24'),
(55, '63', 'egbujortex@gmail.com', 'Electronic Funds Transfer', 'currency', '90000', 'GREMATJUCI', 'uGk0CJStq0', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-25 16:03:53', '2017-10-25 16:09:05'),
(56, '63', 'egbujortex@gmail.com', 'Electronic Funds Transfer', 'currency', '890000', 'GREMATJUCI', '7CyiD8L44k', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-25 16:18:57', '2017-10-25 16:34:17'),
(57, '50', 'thompsonamadi@gmail.com', 'bitcoin deposit', 'btc', '0.0122626', '3QUruu9UrKWHUNY8enPLFeHjZ3aG9Xrvyv', 'FlxM3ko7PV', NULL, NULL, NULL, NULL, 'complete', '0', '2017-10-26 15:11:45', '2017-10-26 15:15:37'),
(58, '21', 'the21stcenturyceo@gmail.com', 'bitcoin deposit', 'btc', '0.0093', '3CWbjfjpWrh7VqJwTVPJW5WPtyGSv4AADZ', 'ED0VGX8ozO', NULL, NULL, NULL, NULL, 'complete', '0', '2017-10-26 15:16:28', '2017-10-26 19:15:38'),
(59, '2', 'calmpress@gmail.com', 'Cash Deposit', 'currency', '20000', 'ESIACMRSMC', 'fAMQxLqC5C', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-26 15:39:38', '2017-10-26 15:40:27'),
(60, '67', 'bennytex@gmail.com', 'Electronic Funds Transfer', 'currency', '50000', 'NMTAYNCIMG', '9P0galgQJx', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-28 11:33:36', '2017-10-30 07:37:41'),
(61, '67', 'bennytex@gmail.com', 'Electronic Funds Transfer', 'currency', '90000', 'NMTAYNCIMG', 'VyesJJEo52', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-28 11:39:50', '2017-10-28 11:42:51'),
(62, '67', 'bennytex@gmail.com', 'Electronic Funds Transfer', 'currency', '90000', 'NMTAYNCIMG', 'IKAj9le69B', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-28 11:40:42', '2017-10-28 11:42:23'),
(63, '67', 'bennytex@gmail.com', 'Electronic Funds Transfer', 'currency', '100000', 'NMTAYNCIMG', 'yB2d6pW0i8', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-30 07:34:06', '2017-10-30 07:39:30'),
(64, '71', 'bennycash@gmail.com', 'Electronic Funds Transfer', 'currency', '100000', 'LISNMMYHEG', '003T6ucfMZ', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-30 14:28:59', '2017-10-31 14:07:37'),
(65, '71', 'bennycash@gmail.com', 'Electronic Funds Transfer', 'currency', '90000', 'LISNMMYHEG', '453e0YpA4g', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-30 14:29:47', '2017-10-31 14:07:40'),
(66, '21', 'the21stcenturyceo@gmail.com', 'bitcoin deposit', 'btc', '0', '3FVE2dqAZkJrTacht93odwVtGoNoP7huuA', '0msAHBl1Q2', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-31 14:00:21', '2017-10-31 17:42:44'),
(67, '21', 'the21stcenturyceo@gmail.com', 'Electronic Funds Transfer', 'currency', '10000', 'TERNTOC2GA', 'Ui51q1G6KU', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-31 17:39:30', '2017-10-31 17:42:35'),
(68, '73', 'ekenebenedict21@gmail.com', 'Electronic Funds Transfer', 'currency', '100000', 'C1NEADCIEN', 'kX55GsP8ri', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-11-01 11:24:49', '2017-11-01 14:39:12'),
(69, '73', 'ekenebenedict21@gmail.com', 'Electronic Funds Transfer', 'currency', '90000', 'C1NEADCIEN', 'C1125S2tgO', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-11-01 11:25:21', '2017-11-01 14:39:04'),
(70, '45', 'chizobaegbujor@gmail.com', 'Electronic Funds Transfer', 'currency', '70000', 'LAHARGCZII', '1w6OmFxYpP', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-11-02 23:16:07', '2017-11-02 23:16:49'),
(71, '84', 'theachiversgroup@gmail.com', 'Electronic Funds Transfer', 'currency', '10000', 'ROIMPCLEVA', 'FtfC57tyIZ', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'pending', '0', '2017-11-03 20:12:26', '2017-11-03 20:12:26'),
(72, '84', 'theachiversgroup@gmail.com', 'bitcoin deposit', 'btc', '0', '34CDZS5BuZAdxFBsS6AesvLe7GFggLNy8C', 'dEs329bJS8', NULL, NULL, NULL, NULL, 'pending', '0', '2017-11-03 20:12:50', '2017-11-03 20:12:50'),
(73, '49', 'unicornbitex@gmail.com', 'Electronic Funds Transfer', 'currency', '20000', 'OILGXCRICA', 'hoTxoe08s3', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-11-04 14:07:55', '2017-11-04 14:10:18'),
(74, '49', 'unicornbitex@gmail.com', 'Electronic Funds Transfer', 'currency', '200000', 'OILGXCRICA', 'VOBPeIPD5q', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-11-04 14:08:35', '2017-11-04 14:10:30'),
(75, '85', 'unicornng@mailinator.com', 'bitcoin deposit', 'btc', '0', '34qqAdspp6xKAWHQpc6W4D9EVKU6VG9d7S', '54QKhs1q6h', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-04 14:49:01', '2017-11-08 22:07:04'),
(76, '35', 'temitayooyalowo55@hotmail.com', 'bitcoin deposit', 'btc', '0.00206897', '3DGKeshEvGmf1SDc7o8re8kZhupLLftECg', '8jhNHXWGqr', NULL, NULL, NULL, NULL, 'complete', '0', '2017-11-06 03:50:02', '2017-11-06 03:55:31'),
(77, '99', 'clinsgfx@gmail.com', 'bitcoin deposit', 'btc', '0.00278572', '36hGkUq3EPP4hz7mujJpfMMoSEm5BEvKZu', 'hy6hutnA81', NULL, NULL, NULL, NULL, 'complete', '0', '2017-11-06 20:03:22', '2017-11-06 20:10:41'),
(78, '35', 'temitayooyalowo55@hotmail.com', 'Electronic Funds Transfer', 'currency', '10000', 'MLTWCTOILO', 'KefS45l5tv', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'pending', '0', '2017-11-07 06:11:15', '2017-11-07 06:11:15'),
(79, '3', 'Ighokenneth@live.com', 'bitcoin deposit', 'btc', '0', '3L21KJvLEjEfD9rDXKXAUetgQFLWgqMWNo', 'LEKe199OyG', NULL, NULL, NULL, NULL, 'pending', '0', '2017-11-07 08:55:54', '2017-11-07 08:55:54'),
(80, '53', 'arugub@gmail.com', 'Electronic Funds Transfer', 'currency', '10000', 'URMGBMAAGU', 'sxf10EmfSO', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'pending', '0', '2017-11-07 19:21:05', '2017-11-07 19:21:05'),
(81, '100', 'solomonmark83@gmail.com', 'bitcoin deposit', 'btc', '0.0014187', '37xTm4nfQUwAVtTq96czwMbFjad84M2Kqc', 'zRONN9p18y', NULL, NULL, NULL, NULL, 'complete', '0', '2017-11-07 21:05:29', '2017-11-07 21:35:29'),
(82, '73', 'ekenebenedict21@gmail.com', 'Electronic Funds Transfer', 'currency', '50000', 'C1NEADCIEN', 'vsdMb1yIQ0', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-11-08 09:57:14', '2017-11-08 10:46:08'),
(83, '103', 'aruwajoyeoladapox@gmail.com', 'bitcoin deposit', 'btc', '0.01747', '3EWqMdqvqrHEc3WvHkbQYoeuuriz51Civ6', 'DIEUWt8gfQ', NULL, NULL, NULL, NULL, 'complete', '0', '2017-11-08 16:28:18', '2017-11-08 21:35:33'),
(84, '105', 'chizoba8000@gmail.com', 'Electronic Funds Transfer', 'currency', '70000', 'MGIB0ML8OO', 'q10hxe5wjP', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-11-08 22:09:25', '2017-11-09 02:34:42'),
(85, '108', 'stefanobo3310@gmail.com', 'bitcoin deposit', 'btc', '0', '3NMfqR5neqCFANZWAmrE5YgUkmUw2c1Vui', 'YqR9S0jTl1', NULL, NULL, NULL, NULL, 'pending', '0', '2017-11-09 12:04:26', '2017-11-09 12:04:26'),
(86, '116', 'patienceifeosame@gmail.com', 'Electronic Funds Transfer', 'currency', '151000', 'MLESACPOOT', 'f1IfxcufWR', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'pending', '0', '2017-11-13 10:51:11', '2017-11-13 10:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `exchange`
--

CREATE TABLE `exchange` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exchange`
--

INSERT INTO `exchange` (`id`, `currency`, `type`, `country`, `created_at`, `updated_at`) VALUES
(1, '1914911', 'buy', 'Nigeria', NULL, NULL),
(2, '1914911', 'sell', 'Nigeria', NULL, NULL),
(3, '700000', 'buy', 'Nigeria', NULL, NULL),
(4, '500000', 'sell', 'Nigeria', NULL, NULL),
(5, '2500000', 'sell', 'Nigeria', NULL, NULL),
(6, '2300000', 'sell', 'Nigeria', NULL, NULL),
(7, '2700000', 'sell', 'Nigeria', NULL, NULL),
(8, '2000000', 'buy', 'Nigeria', NULL, NULL),
(9, '3000000', 'sell', 'Nigeria', NULL, NULL),
(10, '6000', 'sell', 'Nigeria', NULL, NULL),
(11, '2000000', 'sell', 'Nigeria', NULL, NULL),
(12, '2200000', 'buy', 'Nigeria', NULL, NULL),
(13, '2300000', 'buy', 'Nigeria', NULL, NULL),
(14, '2100000', 'buy', 'Nigeria', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exchange_market`
--

CREATE TABLE `exchange_market` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_left` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_created` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recieved_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exchange_market`
--

INSERT INTO `exchange_market` (`id`, `user_id`, `email`, `type`, `currency`, `btc`, `amount_left`, `country`, `time_created`, `description`, `transaction_id`, `recieved_by`, `status`, `deleted`, `created_at`, `updated_at`) VALUES
(1, '21', 'the21stcenturyceo@gmail.com', 'buy', '1914911', '0.00494', '0.00494', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-13 13:24:09', '2017-10-13 13:24:30'),
(2, '21', 'the21stcenturyceo@gmail.com', 'sell', '1914911', '0.00494', '0.00494', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-13 13:24:46', '2017-10-14 05:22:22'),
(3, '50', 'thompsonamadi@gmail.com', 'buy', '700000', '0.22222', '0.22222', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-24 14:22:56', '2017-10-24 15:11:58'),
(4, '50', 'thompsonamadi@gmail.com', 'sell', '500000', '0.22222', '0.22222', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-24 15:12:53', '2017-10-24 15:13:21'),
(5, '2', 'calmpress@gmail.com', 'sell', '2500000', '0.008', '0.008', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-26 15:43:36', '2017-10-29 19:13:08'),
(6, '21', 'the21stcenturyceo@gmail.com', 'sell', '2300000', '0.01', '0.01', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-28 07:53:42', '2017-10-31 17:48:26'),
(7, '2', 'calmpress@gmail.com', 'sell', '2500000', '0.006', '0.006', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-29 17:52:53', '2017-10-29 19:12:55'),
(8, '2', 'calmpress@gmail.com', 'sell', '2500000', '0.004', '0.004', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-29 19:13:35', '2017-10-29 19:14:30'),
(9, '21', 'the21stcenturyceo@gmail.com', 'sell', '2500000', '0.01', '0.01', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-31 17:49:12', '2017-10-31 17:49:48'),
(10, '21', 'the21stcenturyceo@gmail.com', 'sell', '2500000', '0.01', '0.01', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-31 17:50:30', '2017-10-31 17:50:43'),
(11, '21', 'the21stcenturyceo@gmail.com', 'sell', '2500000', '0.01', '0.01', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-31 17:51:01', '2017-10-31 17:52:03'),
(12, '21', 'the21stcenturyceo@gmail.com', 'sell', '2500000', '0.01', '0.01', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-31 17:51:55', '2017-10-31 17:52:08'),
(13, '2', 'calmpress@gmail.com', 'sell', '2500000', '0.004', '0.004', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-31 18:09:16', '2017-10-31 18:09:52'),
(14, '21', 'the21stcenturyceo@gmail.com', 'sell', '2500000', '0.01', '0.01', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-31 18:18:06', '2017-11-01 19:08:12'),
(15, '21', 'the21stcenturyceo@gmail.com', 'sell', '2500000', '0.01', '0.01', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-01 19:30:06', '2017-11-01 19:30:14'),
(16, '21', 'the21stcenturyceo@gmail.com', 'sell', '2700000', '0.01', '0.01', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-04 10:35:48', '2017-11-08 06:30:53'),
(17, '49', 'unicornbitex@gmail.com', 'buy', '2000000', '0.05', '0.05', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-04 14:18:03', '2017-11-10 15:01:30'),
(18, '2', 'calmpress@gmail.com', 'sell', '3000000', '0.008', '0.008', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-06 06:54:02', '2017-11-06 06:54:40'),
(19, '99', 'clinsgfx@gmail.com', 'sell', '6000', '0.002585', '0.002585', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-07 09:15:12', '2017-11-07 09:30:03'),
(20, '99', 'clinsgfx@gmail.com', 'sell', '2000000', '0.002585', '0.002585', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-07 09:30:26', '2017-11-07 09:32:17'),
(21, '49', 'unicornbitex@gmail.com', 'buy', '2200000', '0.04', '0.04', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-11 07:59:06', '2017-11-11 07:59:23'),
(22, '49', 'unicornbitex@gmail.com', 'buy', '2200000', '0.000146', '0.000146', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-11 07:59:46', '2017-11-11 08:12:49'),
(23, '49', 'unicornbitex@gmail.com', 'buy', '2300000', '0.00186', '0.00186', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-11 08:00:39', '2017-11-11 08:12:53'),
(24, '49', 'unicornbitex@gmail.com', 'buy', '2100000', '0.0032', '0.0032', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-11 08:01:13', '2017-11-11 08:12:56'),
(25, '49', 'unicornbitex@gmail.com', 'buy', '2300000', '0.007', '0.007', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-11 08:02:23', '2017-11-11 08:13:01'),
(26, '21', 'the21stcenturyceo@gmail.com', 'sell', '2700000', '0.017', '0.017', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-11 08:04:28', '2017-11-11 08:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `reply` varchar(1000) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`, `reply`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Dike El', 'calmpress@gmail.com', 'ok', 'we are working on attending to u', '2017-10-12 17:50:02', '2017-10-23 10:47:02', 'active'),
(2, 'Dike El', 'calmpress@gmail.com', 'nnm ,m ,m ,', NULL, '2017-10-12 17:54:07', '2017-10-12 17:54:07', 'active'),
(3, 'Dike El', 'calmpress@gmail.com', 'hello admin', 'hello to u mr dyke', '2017-10-12 22:38:07', '2017-10-23 10:49:37', 'active'),
(4, 'Nwakanma Akorvueze Ihenacho', 'Akorvuezenwakanma@gmail.com', 'I\'m new on your platform and I\'m trying to verify my phone number but the verification message is not being delivered on my phone.', NULL, '2017-10-17 15:56:06', '2017-10-17 15:56:06', 'active'),
(5, 'Sokari Gillis-Harry', 'sokariharry@gmail.com', 'I\'m trying to upgrade my account to no avail. The ID upload do not seem to be functional and the middle name field is also mandatory, which is problematic for people like me that don\'t have a middle name.', NULL, '2017-11-03 09:12:18', '2017-11-03 09:12:18', 'active'),
(6, 'Sokari Gillis-Harry', 'sokariharry@gmail.com', 'I\'m trying to upgrade my account to no avail. The ID upload do not seem to be functional and the middle name field is also mandatory, which is problematic for people like me that don\'t have a middle name.', NULL, '2017-11-03 18:11:36', '2017-11-03 18:11:36', 'active'),
(7, 'Clinton Agburum', 'clinsgfx@gmail.com', 'I have transferred some coins to test the site, I have verified my email, but no code is coming to my phone after several attempts.', NULL, '2017-11-06 20:37:36', '2017-11-06 20:37:36', 'active');

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
(1, '2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(100) NOT NULL,
  `news` varchar(1000) DEFAULT NULL,
  `views` varchar(100) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `news`, `views`, `created_at`, `updated_at`) VALUES
(1, 'Do you know Unicorn gives you #100 for every new person that you refer to the platform?. Invite your friends today and earn. Invest in the currency of the future.', '5', '2017-10-23 10:10:49', '2017-10-23 10:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `news_read`
--

CREATE TABLE `news_read` (
  `id` int(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `views` varchar(100) DEFAULT NULL,
  `news_id` varchar(100) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_read`
--

INSERT INTO `news_read` (`id`, `email`, `views`, `news_id`, `created_at`, `updated_at`) VALUES
(9, 'providenceifeosame@gmail.com', '5', '1', '2017-10-23 10:34:34', '2017-10-25 10:09:10'),
(8, 'the21stcenturyceo@gmail.com', '5', '1', '2017-10-23 10:22:52', '2017-10-23 12:14:05'),
(7, 'unicornbitex@gmail.com', '5', '1', '2017-10-23 10:20:45', '2017-11-04 14:06:04'),
(6, 'calmpress@gmail.com', '5', '1', '2017-10-23 10:11:22', '2017-10-26 15:42:17'),
(10, 'sokariharry@gmail.com', '5', '1', '2017-10-23 11:21:27', '2017-11-04 14:21:03'),
(11, 'othuke.imonikiro@gmail.com', '5', '1', '2017-10-23 15:19:12', '2017-10-31 11:40:35'),
(12, 'thompsonamadi@gmail.com', '5', '1', '2017-10-24 08:56:16', '2017-10-24 14:27:27'),
(13, 'Cnyenke1@gmail.com', '5', '1', '2017-10-24 14:08:12', '2017-10-24 15:08:05'),
(14, 'titan.offline@gmail.com', '5', '1', '2017-10-24 14:21:23', '2017-10-30 21:57:06'),
(15, 'temitayooyalowo55@hotmail.com', '5', '1', '2017-10-24 19:14:00', '2017-11-11 03:10:37'),
(16, 'akwuiwudarlington@gmail.com', '3', '1', '2017-10-25 17:16:40', '2017-10-31 17:31:51'),
(17, 'arugub@gmail.com', '4', '1', '2017-10-26 12:46:14', '2017-11-07 19:14:13'),
(18, 'unicorntest@gmail.com', '1', '1', '2017-10-26 15:18:45', '2017-10-26 15:19:46'),
(19, 'ifeanyienweliku93@gmail.com', '0', '1', '2017-10-28 18:26:34', '2017-10-28 18:26:34'),
(20, 'kckross@yahoo.com', '0', '1', '2017-10-31 07:51:34', '2017-10-31 07:51:34'),
(21, 'ajayibamidele60@gmail.com', '0', '1', '2017-10-31 16:12:41', '2017-10-31 16:12:41'),
(22, 'ekenebenedict21@gmail.com', '5', '1', '2017-11-02 06:22:47', '2017-11-02 06:29:17'),
(23, 'erastususo@gmail.com', '5', '1', '2017-11-02 14:14:52', '2017-11-03 18:06:05'),
(24, 'anietzreuben@gmail.com', '0', '1', '2017-11-03 15:43:29', '2017-11-03 15:43:29'),
(25, 'nuel.impact@gmail.com', '2', '1', '2017-11-06 14:52:17', '2017-11-06 14:56:31'),
(26, 'clinsgfx@gmail.com', '5', '1', '2017-11-07 09:06:05', '2017-11-07 09:33:06'),
(27, 'sevengreatgates@gmail.com', '1', '1', '2017-11-08 10:25:12', '2017-11-08 10:26:32'),
(28, 'aruwajoyeoladapox@gmail.com', '2', '1', '2017-11-08 16:32:30', '2017-11-08 16:33:17'),
(29, 'chizoba8000@gmail.com', '5', '1', '2017-11-08 21:50:11', '2017-11-08 21:53:14'),
(30, 'aadeoluoluwatobi@gmail.com', '1', '1', '2017-11-09 05:40:05', '2017-11-09 05:42:09'),
(31, 'theodoraisola@gmail.com', '0', '1', '2017-11-09 15:52:07', '2017-11-09 15:52:07');

-- --------------------------------------------------------

--
-- Table structure for table `pre_launch`
--

CREATE TABLE `pre_launch` (
  `id` int(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pre_launch`
--

INSERT INTO `pre_launch` (`id`, `email`) VALUES
(1, 'calmpress@gmail.con'),
(2, 'calmpress@gmail.com'),
(3, ''),
(4, 'precious@chigisoft.com'),
(5, 'oparahdc@gmail.com'),
(6, 'Mociousng@gmail.com'),
(7, 'emmyifeanyi69@yahoo.com'),
(8, 'tonienickkie@gmail.com'),
(9, 'icycoolmike@gmail.com'),
(10, 'calmpress@gmail.comy');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` int(100) NOT NULL,
  `ngn_buy` varchar(100) DEFAULT NULL,
  `ngn_sell` varchar(100) DEFAULT NULL,
  `instant_max` varchar(100) DEFAULT NULL,
  `instant_av` varchar(100) DEFAULT NULL,
  `instant_min` varchar(100) DEFAULT NULL,
  `min_btc_dep` varchar(100) DEFAULT NULL,
  `min_btc_with` varchar(100) DEFAULT NULL,
  `min` varchar(100) DEFAULT NULL,
  `max` varchar(100) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `ngn_buy`, `ngn_sell`, `instant_max`, `instant_av`, `instant_min`, `min_btc_dep`, `min_btc_with`, `min`, `max`, `created_at`, `updated_at`) VALUES
(1, '390', '335', '0.5', '0.4601358241526706', '0.0005', '0.0002', '0.0002', '2', '2', NULL, '2017-11-13 14:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `recieve`
--

CREATE TABLE `recieve` (
  `id` int(100) NOT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recieve`
--

INSERT INTO `recieve` (`id`, `user_id`, `email`, `address`, `amount`, `currency`, `status`, `created_at`, `updated_at`) VALUES
(1, '11', 'dechosenuchenna@gmail.com', '391TjYpbQm1d9tobym4fzCwFmp1r8Ujtkn', '0', 'btc', 'active', '2017-10-11 06:06:21', '2017-10-18 21:05:58'),
(2, '17', 'uniquewill9@gmail.com', '32hnFjwyQxNqiE1BJiU7wFwZFhBN63tLns', '0', 'btc', 'active', '2017-10-11 10:04:23', '2017-10-11 10:04:25'),
(3, '21', 'the21stcenturyceo@gmail.com', '343AsAruXUYajdNJSvUFT1fvsYfQ77AVt5', '0.00451638', 'btc', 'complete', '2017-10-14 09:35:56', '2017-10-14 09:55:28'),
(4, '2', 'calmpress@gmail.com', '3DkFzzg5GFCA6yy8azdnqNPdXjGs94m5TG', '0.0001', 'btc', 'complete', '2017-10-16 18:42:04', '2017-10-18 19:15:36'),
(5, '39', 'tochukwualor@gmail.com', '3K5vpvzmnmUv1UkRe8hn7A3x1tusDqALQg', '0', 'btc', 'active', '2017-10-17 13:10:41', '2017-10-18 21:11:05'),
(6, '2', 'calmpress@gmail.com', '3EgebRDRRkdTNFLAhsLJvY6CxP5u9ggo3j', '0.0044', 'btc', 'complete', '2017-10-18 19:39:23', '2017-10-18 19:45:36'),
(7, '2', 'calmpress@gmail.com', '3JtuXVyHWjxiZXzrqGp8DRX2xdDjPQmBhP', '0.0044', 'btc', 'complete', '2017-10-18 19:41:36', '2017-10-18 19:45:37'),
(8, '50', 'thompsonamadi@gmail.com', '36L7fvGvuBmE5eB5Qb1FEKcqowux17wsRy', '0.0008687', 'btc', 'complete', '2017-10-26 11:50:39', '2017-10-26 11:55:28'),
(9, '50', 'thompsonamadi@gmail.com', '32eR8kKfxReei8P5FSkvxwmaFjbNVyrfjT', '0.09', 'btc', 'complete', '2017-10-26 13:13:24', '2017-10-26 15:05:29'),
(10, '50', 'thompsonamadi@gmail.com', '3KTmpPCBkqD3E2tYio6xa4oz7KipwZZCNZ', '0.00958485', 'btc', 'complete', '2017-11-02 08:05:58', '2017-11-06 12:30:53'),
(11, '21', 'the21stcenturyceo@gmail.com', '3BQcCgUEWKrxpnE4ib3vr5ihvrLDi6KErb', '0.00618171', 'btc', 'complete', '2017-11-03 13:49:27', '2017-11-08 05:20:36'),
(12, '21', 'the21stcenturyceo@gmail.com', '3KVbLSEQBu55LvegWwzGz6YiJsMe62ZA6X', '0', 'btc', 'active', '2017-11-05 20:09:00', '2017-11-05 20:09:01'),
(13, '50', 'thompsonamadi@gmail.com', '399Y3ww8TYWREzHJcAyW1WbxbJANqCGZ6x', '0.00497373', 'btc', 'complete', '2017-11-06 13:21:54', '2017-11-13 09:00:58');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(100) NOT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `role` varchar(1000) DEFAULT NULL,
  `created_at` varchar(1000) DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted` timestamp(6) NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `email`, `role`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 'calmpress@gmail.com', 'admin', '1504092838', NULL, NULL),
(2, 'supardyke2@gmail.com', 'support', '1504092838', NULL, NULL),
(6, 'precious@chigisoft.com', 'admin', '1507209927', NULL, NULL),
(7, 'the21stcenturyceo@gmail.com', 'admin', '1507719473', NULL, NULL),
(49, 'unicornbitex@gmail.com', 'admin', '1507719473', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_created` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recieved_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `email`, `type`, `amount`, `time_created`, `description`, `transaction_id`, `recieved_by`, `status`, `deleted`, `created_at`, `updated_at`) VALUES
(1, '21', 'the21stcenturyceo@gmail.com', 'currency', '90', NULL, 'admin debit', '$2y$10$3TtO4Rf45isOvt2qOpUvGe4pi/d0MSVHGslcd.K6dT.XSgbQDurGK', 'titan.offline@gmail.com', 'completed', '0', '2017-10-11 11:29:16', NULL),
(2, NULL, 'titan.offline@gmail.com', 'currency', '30000', NULL, 'admin credit', '$2y$10$eUQFHilBCMilQSlWJUEs8.UmvM6YkFJOQvhItHZ7934g8CrUCKa4e', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-11 12:04:56', NULL),
(3, NULL, 'titan.offline@gmail.com', 'currency', '10000', NULL, 'admin credit', '$2y$10$UF1qVV1aQu.9/69sqwOE9Oi/4z/KckZWkENxQ8PbDdcWUCO7a8uO.', 'cloonicux@gmail.com', 'completed', '0', '2017-10-13 05:18:52', NULL),
(4, NULL, 'titan.offline@gmail.com', 'btc', '0.004943606305431421', NULL, 'titan instant buy', '$2y$10$X.iSNpHzuoZ2ZnCRfNlA7.RoY4OMgZumgKrK49n8KsqY.oG1kUVLa', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-13 05:33:35', NULL),
(5, '21', 'the21stcenturyceo@gmail.com', 'currency', '10000', NULL, 'titan instant buy', '$2y$10$kzRwAdLqcwUXjHEMVdhM2.nffcNtAnx22s57LTMMHJt3H1S0axjoa', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 05:33:35', NULL),
(6, '29', 'cloonicux@gmail.com', 'currency', '9999', NULL, 'admin debit', '$2y$10$ctRaEsHkbsWBp87IH6L9OOBYLiIUFMhkY7WsQT66axSseETFOZMVS', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 05:39:33', NULL),
(7, NULL, 'titan.offline@gmail.com', 'btc', '0.00494', NULL, 'admin credit', '$2y$10$I45gg1TsCLeBD1b4dzUADuGznbsu5w0k5p53o.gu9OKYouweNRQee', 'cloonicux@gmail.com', 'completed', '0', '2017-10-13 05:39:53', NULL),
(8, '29', 'cloonicux@gmail.com', 'btc', '0.0049399', NULL, 'admin debit', '$2y$10$0v8xHxm9K7VP0ABqHan0x.r.3vH71skLEBuwKdEy1TDfANg5RVbJa', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 06:14:05', NULL),
(9, '1', 'titan.offline@gmail.com', 'btc', '0.0009973637680881894', NULL, 'titan instant buy', '$2y$10$t5.eo.MpTaq7QEOhwL7Go.HIvaZwbGch6gIhlAb8wTZsFOkYTKNB6', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 06:24:43', NULL),
(10, '1', 'titan.offline@gmail.com', 'currency', '2000', NULL, 'titan instant buy', '$2y$10$8rIdu6/egv0F8zxoF23Kz.QSvk2Hq.DhTk7fVHVqtdSHGZ/Ofojt.', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 06:24:44', NULL),
(11, '1', 'titan.offline@gmail.com', 'btc', '0.0015032946204902664', NULL, 'titan instant buy', '$2y$10$OlfVfwFBL3Eqnf7XDjyybeOx4YcnnhtHofm57/Fe/kxzmPRoVBa9y', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 06:25:36', NULL),
(12, '1', 'titan.offline@gmail.com', 'currency', '3000', NULL, 'titan instant buy', '$2y$10$cro16sKMSFS8SUfxAPjBU.TNFrzoIv59z.n4peFJTml7WTVqT9VZu', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 06:25:36', NULL),
(13, '1', 'titan.offline@gmail.com', 'btc', '0.001', NULL, 'titan instant buy', '$2y$10$vxQMicPEaLfjLKsRWtMpRu0PKboNDxdCGa0G7f9dMvUS/X7N7C.GS', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 06:26:11', NULL),
(14, '1', 'titan.offline@gmail.com', 'currency', '1995.6168', NULL, 'titan instant buy', '$2y$10$gNJzrhwAiUignY/YPmoTZeU0rvOTRZ1Yl6l37kQSNqPSvqhCfCaGW', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 06:26:11', NULL),
(15, '1', 'titan.offline@gmail.com', 'btc', '0.010', NULL, 'btc sending', '$2y$10$nx5hMzSeEVuUYN3Bgox3MuKVsE0sV2wsBf2rKQzN8RPQ3AGygC6li', 'calmpress@gmail.com', 'completed', '0', '2017-10-13 06:29:53', NULL),
(16, '2', 'calmpress@gmail.com', 'btc', '.005', NULL, 'titan instant sell', '$2y$10$ammh6O72mLlBmfgaraWD0eY7x4zSncKqxKuCUn6QuclwbMlkBPdfq', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 06:30:54', NULL),
(17, '1', 'titan.offline@gmail.com', 'currency', '8938.672', NULL, 'titan instant sell', '$2y$10$LqdTxqfb/ewc0vlmUCCjVOlXBH.i4OCRDOlsYJob5GA675AkpWUyy', 'calmpress@gmail.com', 'completed', '0', '2017-10-13 06:30:54', NULL),
(18, '1', 'titan.offline@gmail.com', 'btc', '0.0009944305920262975', NULL, 'titan instant buy', '$2y$10$8S4DZAa3RDjYKGNHqVfjV.vVB6iggI5d0S4kDCf5vk.A4YUIc6bFe', 'calmpress@gmail.com', 'completed', '0', '2017-10-13 06:31:23', NULL),
(19, '2', 'calmpress@gmail.com', 'currency', '2000', NULL, 'titan instant buy', '$2y$10$aafBZwcI.RxPKYHtpuctLOLBJRpYRLJrbKcRb4rsTn4vAWM/yWvW6', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 06:31:23', NULL),
(20, '2', 'calmpress@gmail.com', 'btc', '0.0017911100046031528', NULL, 'titan instant sell', '$2y$10$7wWsPZV6XpBOAAjZ4pvmJOZPKBtMG0N.jBVuNl3W/LF/c9Hg8f2U2', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 06:32:18', NULL),
(21, '1', 'titan.offline@gmail.com', 'currency', '3200.0000000000005', NULL, 'titan instant sell', '$2y$10$zYH7fMUyPeW/J0Q8/fd1KOY/usvlCC0poUbecRJQpBQC2uGuZFAFi', 'calmpress@gmail.com', 'completed', '0', '2017-10-13 06:32:18', NULL),
(22, '1', 'titan.offline@gmail.com', 'btc', '0.002', NULL, 'titan instant buy', '$2y$10$De1U6UwbvlyVhv8/c4sPTuLjS4wImsLw3yy368apStXFn3bJQMslG', 'calmpress@gmail.com', 'completed', '0', '2017-10-13 21:48:53', NULL),
(23, '2', 'calmpress@gmail.com', 'currency', '4023.2448000000004', NULL, 'titan instant buy', '$2y$10$GqNaimu2vcEz6LoLlMo9Q.Au50qApg/zQM2J27y0S.g5wdjbY6TYu', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 21:48:53', NULL),
(24, '2', 'calmpress@gmail.com', 'btc', '0.0021670019560443158', NULL, 'titan instant sell', '$2y$10$sRveVVHFZ9NVGlST7PfVBew9uaN8TCe8NNrAPxSvnIXVklmVsgGLK', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 21:51:23', NULL),
(25, '1', 'titan.offline@gmail.com', 'currency', '4000', NULL, 'titan instant sell', '$2y$10$1JRafYBL.tX2ajhPjVxTy.OW6Ahp6kbtuhh0a67rXs8GyNJ62OGGy', 'calmpress@gmail.com', 'completed', '0', '2017-10-13 21:51:23', NULL),
(26, '1', 'titan.offline@gmail.com', 'btc', '0.004316380000000001', NULL, 'titan receive', '$2y$10$G7UizN/h84nTmoLMXUhbsOYXI7rUk4Bf7G8/M5PuftdN6V1hG7sbW', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-14 09:55:28', NULL),
(27, '1', 'titan.offline@gmail.com', 'btc', '0.011399999999999999', NULL, 'titan deposit', '$2y$10$t1SdzJIWZNaL.rlbrISt1uG0dfduYv8W2zBoxN0v9fn7mhzIunAIG', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-14 21:30:54', NULL),
(28, '2', 'calmpress@gmail.com', 'currency', '10,115.43', NULL, 'admin debit', '$2y$10$126xAqz/.72WGR.RrhqFTe65DXekbS3ZhYgGAuNqW/2hjUs6p.i3m', 'titan.offline@gmail.com', 'completed', '0', '2017-10-15 15:08:04', NULL),
(29, '1', 'titan.offline@gmail.com', 'btc', '0.001019277', NULL, 'admin credit', '$2y$10$4FYj5YPvPvN7u5.CljmgIO/pOrdnl1UR2B0BYsbVRg5.K8.09EfHG', 'othuke.imonikiro@gmail.com', 'completed', '0', '2017-10-16 12:23:07', NULL),
(30, '2', 'calmpress@gmail.com', 'currency', '10000', NULL, 'admin debit', '$2y$10$sB9H2xqZlSy8eoLxD5zBietSnqby1w7lCT8vbctLAxB7lehVk1XyC', 'titan.offline@gmail.com', 'completed', '0', '2017-10-16 12:27:20', NULL),
(31, '2', 'calmpress@gmail.com', 'currency', '104.43', NULL, 'admin debit', '$2y$10$Bz9gYi1hvKgB.AbysuZ0OewA7ipnGCDumEXKcdqKb4CQGTZL.0ufu', 'titan.offline@gmail.com', 'completed', '0', '2017-10-16 12:27:59', NULL),
(32, '2', 'calmpress@gmail.com', 'currency', '0.9972000000000775', NULL, 'admin debit', '$2y$10$82T.gPiyZFCTEEAIAPxpW.l/jCPl9L2dCHSjMnE7DvtRssNlldpuO', 'titan.offline@gmail.com', 'completed', '0', '2017-10-16 12:28:29', NULL),
(33, '2', 'calmpress@gmail.com', 'btc', '0.004036', NULL, 'admin debit', '$2y$10$n78wrlIPwk84WkAu5MzW1uxclzxMjTq.5fqK3AE//bGZD.0QtElyW', 'titan.offline@gmail.com', 'completed', '0', '2017-10-16 12:29:14', NULL),
(34, '21', 'the21stcenturyceo@gmail.com', 'currency', '19510', NULL, 'currency funds withdrawal NGN', '$2y$10$stHw..A9VFo02HBli5L86ufBg9lNIWXc5CmfrJvpti9eLkMJC4JYu', 'titan.offline@gmail.com', 'completed', '0', '2017-10-16 12:57:37', NULL),
(35, '21', 'the21stcenturyceo@gmail.com', 'currency', '500', NULL, 'currency funds withdrawal NGN charge', '$2y$10$c3tdt8fD7oVbkbvq3gEMpuozwjeSzeA26j7R0FKaxYk2FBNWR16em', 'titan.offline@gmail.com', 'completed', '0', '2017-10-16 12:57:37', NULL),
(36, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.004944', NULL, 'admin debit', '$2y$10$DVSqiRXh5tfPKFLDfK.iXef3Guij5P4.CM.2Pn2w57D/k3mAV4v6q', 'titan.offline@gmail.com', 'completed', '0', '2017-10-17 11:59:12', NULL),
(37, '1', 'titan.offline@gmail.com', 'currency', '90000', NULL, 'admin credit', '$2y$10$LqeZTjq508mwisE9cxjzPOkzKdAlSXwOAabSI.TIpzIQR66IuRrDW', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-17 11:59:26', NULL),
(38, '1', 'titan.offline@gmail.com', 'currency', '8000', NULL, 'admin credit', '$2y$10$neUsIr7Nsu9/5fSr9x50PuNKk8lCodVhGjqE3UI7X5ew5M9b4TxuW', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-17 11:59:41', NULL),
(39, '1', 'titan.offline@gmail.com', 'btc', '0.04786047171086561', NULL, 'titan instant buy', '$2y$10$izPY6zk3NuIbVIT5RHXpFu.Bmcu15Hj7YycvGEtmXNmYp7jyKdhbi', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-17 13:00:41', NULL),
(40, '21', 'the21stcenturyceo@gmail.com', 'currency', '98500', NULL, 'titan instant buy', '$2y$10$W882.PgxeSnpz.USxka/tu7V/Pxiur97v92Wh.6smMWbsI5AKkqoW', 'titan.offline@gmail.com', 'completed', '0', '2017-10-17 13:00:41', NULL),
(41, '2', 'calmpress@gmail.com', 'currency', '10000', NULL, 'deposit', '$2y$10$Km1ySRol1KUexmp3ae.oj.3udBMf60RaTQ8j9lxhs19puEHSPlMSa', 'titan.offline@gmail.com', 'completed', '0', '2017-10-17 14:26:11', NULL),
(42, '1', 'titan.offline@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$UUogPcgBLmb.k1oaYC09c.eKhGUW.FYhdwTnx5C7lYGHb7072G/fa', 'calmpress@gmail.com', 'completed', '0', '2017-10-17 14:26:12', NULL),
(43, '1', 'titan.offline@gmail.com', 'currency', '11000', NULL, 'deposit', '$2y$10$onBAtZUyYK2I1Fp5a4Bpwu8N/WYwD6flJEic8sCzZRJS2kWxs7U8W', 'calmpress@gmail.com', 'completed', '0', '2017-10-17 14:31:39', NULL),
(44, '2', 'calmpress@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$wIL9suHm3xeeni..nq6a8ebTZFYmbptBlmwbTAnqG/CRDL5ud4zxy', 'titan.offline@gmail.com', 'completed', '0', '2017-10-17 14:31:39', NULL),
(45, '1', 'titan.offline@gmail.com', 'btc', '0.006200000000000001', NULL, 'unicorn deposit', '$2y$10$jBM5QhzdPeizkTcQRQVl.OPyJDR5h1DknueBywtVgSz8/w/zqMtJG', 'Akorvuezenwakanma@gmail.com', 'completed', '0', '2017-10-17 16:30:47', NULL),
(46, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.063576', NULL, 'btc sending', '$2y$10$IZeO5y6NbPMsC3B1ROAHwuGw.ic0EX4jd2staH/ARWALkEMyk400u', 'calmpress@gmail.com', 'completed', '0', '2017-10-17 16:54:14', NULL),
(47, '2', 'calmpress@gmail.com', 'btc', '0.0063576', NULL, 'btc sending', '$2y$10$YpAceZlEm/tS9UfJ6sAw1O/k4q72VWw0dawKYZ8M/qYXJPZnZrZIq', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-17 16:55:38', NULL),
(48, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.0063576', NULL, 'btc sending', '$2y$10$2eRFb7g0eD03T77d3sgBxO.5Re8Q.f.TvxT8F6vsfarIjs9ttR4t.', 'calmpress@gmail.com', 'completed', '0', '2017-10-17 16:57:03', NULL),
(49, '2', 'calmpress@gmail.com', 'btc', '0.063576', NULL, 'btc sending', '$2y$10$PQWryExW36y9a5JcDRiNQO2/WYZzrmwI2PzRnE.Z4I6bXVSOxsRpy', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-17 16:57:54', NULL),
(50, '40', 'Akorvuezenwakanma@gmail.com', 'btc', '0.006200', NULL, 'btc sending', '$2y$10$mUaQFRY1zqvt673hM4jXD.VJ96RcygFSaZ4TuAMfzGANPEDPH3Xue', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-17 17:07:49', NULL),
(51, '1', 'titan.offline@gmail.com', 'btc', '0.005132841268372299', NULL, 'unicorn instant buy', '$2y$10$rnu7KnoUaXuysQpzP2ih6OYaIfQ.v2r0WE9fuUjo6i7hKrOt7sk2K', 'calmpress@gmail.com', 'completed', '0', '2017-10-18 13:09:20', NULL),
(52, '2', 'calmpress@gmail.com', 'currency', '10000', NULL, 'unicorn instant buy', '$2y$10$vH5OUeajv0MocrnMhfgNLuj3A51dxfIvrhwnPXWeYNFOpXdH59ci6', 'titan.offline@gmail.com', 'completed', '0', '2017-10-18 13:09:20', NULL),
(53, '1', 'titan.offline@gmail.com', 'btc', '-0.0001', NULL, 'unicorn receive', '$2y$10$t7xn2IL0cfjTFGGh0AkzY.MirzO5c3YyUcophufTNIXRRvMQemKTu', 'calmpress@gmail.com', 'completed', '0', '2017-10-18 19:15:36', NULL),
(54, '2', 'calmpress@gmail.com', 'btc', '0.0002', NULL, 'unicorn receive charge', '$2y$10$rx5FCR/dfKiEHTpqQ4cllexOrWTXN01RUC6HUde9QNbIL/rtLStY2', 'titan.offline@gmail.com', 'completed', '0', '2017-10-18 19:15:36', NULL),
(55, '2', 'calmpress@gmail.com', 'btc', '0.004', NULL, 'btc funds transfer', '$2y$10$tw/r3uBB0wYQfERmoLQ.MujFRFYTQvRkOpJo99kr7QvtJugRKlq8W', 'titan.offline@gmail.com', 'completed', '0', '2017-10-18 19:42:43', NULL),
(56, '2', 'calmpress@gmail.com', 'btc', '0.0004', NULL, 'btc funds transfer charge', '$2y$10$9wMnh.Vmji87vZzM4l2onOEy09BeBe4KJkSTC/6hDhyo/WcNvhzVO', 'titan.offline@gmail.com', 'completed', '0', '2017-10-18 19:42:44', NULL),
(57, '1', 'titan.offline@gmail.com', 'btc', '0.004200000000000001', NULL, 'unicorn receive', '$2y$10$SueAwitsdzj6yOHkfviXeOaA1.CQ6QklnKVaOcOIreKNv8k4XRMim', 'calmpress@gmail.com', 'completed', '0', '2017-10-18 19:45:36', NULL),
(58, '2', 'calmpress@gmail.com', 'btc', '0.0002', NULL, 'unicorn receive charge', '$2y$10$hAfquHXRbyrBOZdVsx2f0eKkIQVfUUlwdI4Ic198jSpSsG4iAq.Ve', 'titan.offline@gmail.com', 'completed', '0', '2017-10-18 19:45:36', NULL),
(59, '1', 'titan.offline@gmail.com', 'btc', '0.004200000000000001', NULL, 'unicorn receive', '$2y$10$2r.YIMN8tyK1dV7bKLhp9uvVvA.dEjbYTaaSEBZyWnir/4dErk8fS', 'calmpress@gmail.com', 'completed', '0', '2017-10-18 19:45:37', NULL),
(60, '2', 'calmpress@gmail.com', 'btc', '0.0002', NULL, 'unicorn receive charge', '$2y$10$nGYzzU4QJi8aWkNqZTir0OPgGvMLi4i6y48vxErF.zp1P1atpT.EW', 'titan.offline@gmail.com', 'completed', '0', '2017-10-18 19:45:37', NULL),
(61, '2', 'calmpress@gmail.com', 'btc', '0.009033', NULL, 'admin debit', '$2y$10$/wc4PGDuxZQaXsZsliWx4O7DQ3IFtO.zdieaLqLecBC1fg5ExmD0G', 'titan.offline@gmail.com', 'completed', '0', '2017-10-18 19:50:06', NULL),
(62, '1', 'titan.offline@gmail.com', 'btc', '-0.0002', NULL, 'unicorn deposit', '$2y$10$H8FgltAJ.f6WsHGru29Wb.0kYXwymn2hv2nqZ2p63q8Z.p1rlmqX2', 'uniquewill9@gmail.com', 'completed', '0', '2017-10-18 20:47:32', NULL),
(63, '1', 'titan.offline@gmail.com', 'btc', '-0.0002', NULL, 'unicorn deposit', '$2y$10$DRr0i3yYCZfEiW61/tUo1uhMYgdkuA/WK/rxY.qBC6XRBgFKJDI4u', 'othuke.imonikiro@gmail.com', 'completed', '0', '2017-10-18 20:52:52', NULL),
(64, '1', 'titan.offline@gmail.com', 'btc', '-0.0002', NULL, 'unicorn receive', '$2y$10$pdU7sSxg/iFbXveNaum3hOJPka5vzrGlUdlgI6WPcJpK72S7cQKxC', 'dechosenuchenna@gmail.com', 'completed', '0', '2017-10-18 21:05:57', NULL),
(65, '11', 'dechosenuchenna@gmail.com', 'btc', '0.0002', NULL, 'unicorn receive charge', '$2y$10$yLUFXFHtIPdGB6qEfdXcv.bo3iceWYlBIeYqfuEMkjjkyAB9ZxH0e', 'titan.offline@gmail.com', 'completed', '0', '2017-10-18 21:05:58', NULL),
(66, '1', 'titan.offline@gmail.com', 'btc', '-0.0002', NULL, 'unicorn receive', '$2y$10$sVh9fczjpTCZnO87A5IEc.ZHgU0VerptSLsRSo9C5i7HuOyT0G3km', 'tochukwualor@gmail.com', 'completed', '0', '2017-10-18 21:11:05', NULL),
(67, '39', 'tochukwualor@gmail.com', 'btc', '0.0002', NULL, 'unicorn receive charge', '$2y$10$AitDFtKa2bk4F5zCfEiWnu4Y9pwarUOibxlMJ/Xuy.N6CnFfLWpNS', 'titan.offline@gmail.com', 'completed', '0', '2017-10-18 21:11:05', NULL),
(68, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.04786', NULL, 'btc sending', '$2y$10$HkOy3tGmaDOZxYEuUI1EYOezHqGspWPdGtB.iO0tvV0xGzjVqqHw6', 'chizoba egbujor@ gmail.com', 'completed', '0', '2017-10-19 21:25:46', NULL),
(69, '1', 'titan.offline@gmail.com', 'btc', '0.0002', NULL, 'admin credit', '$2y$10$u7potSKRBGGecK5Sf7.5w.pchudyLf8fw59IP/67aMl6SAkx9JzZa', 'othuke.imonikiro@gmail.com', 'completed', '0', '2017-10-19 21:41:22', NULL),
(70, '2', 'calmpress@gmail.com', 'currency', '20000', NULL, 'admin debit', '$2y$10$ynDcQxQPtJP5J3jjmd.ReuI5UJLi985RfEMURCXCd3rhRmLe4qHOm', 'titan.offline@gmail.com', 'completed', '0', '2017-10-19 21:51:47', NULL),
(71, '2', 'calmpress@gmail.com', 'currency', '399', NULL, 'admin debit', '$2y$10$YnGS03v1O6ijEJhxV9is7e87H6HsU/8eS6s/w28esiwPCeygmHYcm', 'titan.offline@gmail.com', 'completed', '0', '2017-10-19 21:56:36', NULL),
(72, '1', 'titan.offline@gmail.com', 'btc', '0.003', NULL, 'unicorn deposit', '$2y$10$MD6tb4cLsjFA1IixAAys0O9oi4hcZDNFDZxec8SHBx/FM8J/QWsJC', 'chukwundac@yahoo.co.uk', 'completed', '0', '2017-10-20 09:55:31', NULL),
(73, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.021916', NULL, 'unicorn instant sell', '$2y$10$lguCaMFUgi7Ioiv.lcBnr.ZglgN0ZOKGSGFfWdUnjHMMgb6Xm0CGC', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 11:31:05', NULL),
(74, '1', 'titan.offline@gmail.com', 'currency', '41614.102991600004', NULL, 'unicorn instant sell', '$2y$10$C/qe9pOjqsC3vX9zoI7EiebnrTDEuihSHGy07FxoFVQY0tr/91IVy', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-20 11:31:05', NULL),
(75, '1', 'titan.offline@gmail.com', 'currency', '11000', NULL, 'deposit', '$2y$10$IZDsMZ5xHRNiuBcwx9Qo/.BXGtKJCdTKCTOaI2W4yFuP0HMTLNWYu', 'calmpress@gmail.com', 'completed', '0', '2017-10-20 11:59:35', NULL),
(76, '2', 'calmpress@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$Ne563qY.GaF9cG1BFEwQFOhrV11PKbJqRTW0tdB4kc4fBQ1ma7Ski', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 11:59:35', NULL),
(77, '1', 'titan.offline@gmail.com', 'btc', '0.0023897378538825374', NULL, 'unicorn instant buy', '$2y$10$fWhEHVW01eLJVPo.yHGXOe487AmEOkAyUJmJs6ukOvdmJuwI2wIJq', 'calmpress@gmail.com', 'completed', '0', '2017-10-20 12:07:11', NULL),
(78, '2', 'calmpress@gmail.com', 'currency', '5000', NULL, 'unicorn instant buy', '$2y$10$PT5.HpquMBQZRx6355QgjunZqanVaE9BNMPNVaG9zedtOSpilv8PO', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 12:07:12', NULL),
(79, '2', 'calmpress@gmail.com', 'btc', '0.0023754707622175675', NULL, 'unicorn instant sell', '$2y$10$VTP3vFGw9kAXNYB8N.ZljuqZm6batY.ASSwnvOoRyD0TbNmyKfXQe', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 12:07:28', NULL),
(80, '1', 'titan.offline@gmail.com', 'currency', '4500', NULL, 'unicorn instant sell', '$2y$10$IXQfRiLaQ50JxPYmh6sph.XcHh5WddrwgI8XGITYdKy40Kx.YfwF2', 'calmpress@gmail.com', 'completed', '0', '2017-10-20 12:07:28', NULL),
(81, '1', 'titan.offline@gmail.com', 'btc', '0.004921336254826323', NULL, 'unicorn instant buy', '$2y$10$sf/5o7z675N28O.CCw6Aa.ztHIc97DQF1.lQnzy51eyfMhTwQKXPe', 'calmpress@gmail.com', 'completed', '0', '2017-10-20 13:23:56', NULL),
(82, '2', 'calmpress@gmail.com', 'currency', '10301', NULL, 'unicorn instant buy', '$2y$10$K6p3Wnp3vrXab7eTjjnL9O5SC5yXzeJBbG10ImKSWFu23EdUSSW.S', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 13:23:56', NULL),
(83, '2', 'calmpress@gmail.com', 'btc', '0.004935', NULL, 'unicorn instant sell', '$2y$10$OK4G/rZJUdmad.Y5nNW..OTHWAmOaBkvWF.n4HNoYCrVPL.qzK.gO', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 13:24:39', NULL),
(84, '1', 'titan.offline@gmail.com', 'currency', '9350.0123745', NULL, 'unicorn instant sell', '$2y$10$GS2TvdzoAcgLZuBhEJIfHuvCR0dvZ5u8DFqqkfOewLIyXcKFQE0GS', 'calmpress@gmail.com', 'completed', '0', '2017-10-20 13:24:39', NULL),
(85, '2', 'calmpress@gmail.com', 'btc', '0.008', NULL, 'unicorn instant sell', '$2y$10$paEx9ZjZ6rM7jNqTuPCf5.MaRB.HOswZrll2JsIX39FfG848x8YrC', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 14:13:04', NULL),
(86, '1', 'titan.offline@gmail.com', 'currency', '15309.901999999998', NULL, 'unicorn instant sell', '$2y$10$WuEdOLAMnmk7Ij6Xu82y0ecNlGv8lDUvedf6.nMoxjCCknJdzEC5W', 'calmpress@gmail.com', 'completed', '0', '2017-10-20 14:13:04', NULL),
(87, '2', 'calmpress@gmail.com', 'btc', '0.001', NULL, 'unicorn instant sell', '$2y$10$.qfABNPHqWy/fDxParZWS.rd4UWmGJG4IMX144UYbPY6QUnqkNjZq', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 14:14:21', NULL),
(88, '1', 'titan.offline@gmail.com', 'currency', '1913.6908500000002', NULL, 'unicorn instant sell', '$2y$10$wXo7BMPHaDIsjugp5WoZzOSXPm4wwV5BjiYX/otVj2pl4wrczcKL.', 'calmpress@gmail.com', 'completed', '0', '2017-10-20 14:14:21', NULL),
(89, '1', 'titan.offline@gmail.com', 'btc', '0.008148072554086722', NULL, 'unicorn instant buy', '$2y$10$hk0p9h5IyjFyRqJkKK0Fie9WDqup9JLW73kvIsGmvMn73/LMbH4Oy', 'calmpress@gmail.com', 'completed', '0', '2017-10-20 14:15:09', NULL),
(90, '2', 'calmpress@gmail.com', 'currency', '17222', NULL, 'unicorn instant buy', '$2y$10$h/HjLSfgN.1IObhcL6f1k.FR0DeB/2RJhydQ4kIZAmBhO9PXksmKS', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 14:15:09', NULL),
(91, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.021916', NULL, 'unicorn instant sell', '$2y$10$uD2n4qb0.Tpr4BxH6U8Lm.JokLJ8DkNnEuIBgY9rNIwLA4bve7A5q', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 14:27:51', NULL),
(92, '1', 'titan.offline@gmail.com', 'currency', '42420.9734056', NULL, 'unicorn instant sell', '$2y$10$O40qKk4Zr.xuaOijET1Hn.c5LEF0GHEdrkjxg9SkgnpwdQgkaJ/Mi', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-20 14:27:51', NULL),
(93, '47', 'chukwundac@yahoo.co.uk', 'btc', '0.003', NULL, 'unicorn instant sell', '$2y$10$CF6C9GcCbQHaZINjylMz4.oOTD3P2e4trT9QdOIj.0OkFVncONgI6', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 14:32:43', NULL),
(94, '1', 'titan.offline@gmail.com', 'currency', '5814.41745', NULL, 'unicorn instant sell', '$2y$10$S5JMg2/oidvbSCy13D442.5ywI/erI.sRxgL5p3sHRsxWofwyTcQy', 'chukwundac@yahoo.co.uk', 'completed', '0', '2017-10-20 14:32:44', NULL),
(95, '47', 'chukwundac@yahoo.co.uk', 'currency', '5600', NULL, 'currency funds withdrawal NGN', '$2y$10$n4WRMg/UIAuxeUXxj/idceQfKCNdoCLCgbG6V4q2LluKFgnzKgZEC', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 14:40:33', NULL),
(96, '47', 'chukwundac@yahoo.co.uk', 'currency', '200', NULL, 'currency funds withdrawal NGN charge', '$2y$10$GYhx8h9eS/X5v/LE2CdmKeqJ1KbssGyrbuVJa3zVAL3znwbYfE1AK', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 14:40:33', NULL),
(97, '21', 'the21stcenturyceo@gmail.com', 'currency', '42,420.97', NULL, 'admin debit', '$2y$10$VvGyTOS.ZpyaOsTu98BgxeyjUJ3AnLCb1W53EtX6sA0CvTWK/FrSu', 'titan.offline@gmail.com', 'completed', '0', '2017-10-21 11:56:57', NULL),
(98, '1', 'titan.offline@gmail.com', 'btc', '0.021916', NULL, 'admin credit', '$2y$10$kmD2Od2W/Gmt7NGS3DWxNeDzQ/VLo5Gp.rAgg2Bc8xAoVUOeqqKiG', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-21 12:02:35', NULL),
(99, '21', 'the21stcenturyceo@gmail.com', 'currency', '42378.97', NULL, 'test credit', '$2y$10$JauGBoWjyl4RFTVWMlOnR.RTnzzH8ncMdJjcwR/5PaYcXYT4KHS0m', 'titan.offline@gmail.com', 'completed', '0', '2017-10-21 12:21:05', NULL),
(100, '1', 'titan.offline@gmail.com', 'btc', '0.021916', NULL, 'test credit', '$2y$10$yELr.oNN8mHJViDTrm9SQu.rDUTKPMvrHaA6OikKggje.XTAViSgq', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-21 12:21:24', NULL),
(101, '2', 'calmpress@gmail.com', 'currency', '1.586', NULL, 'FBI', '$2y$10$CY/UHekY0m1wliwApTD5IOWBaNg24jlp/blVdfGonSNGg7DFZLct.', 'titan.offline@gmail.com', 'completed', '0', '2017-10-22 02:18:12', NULL),
(102, '1', 'titan.offline@gmail.com', 'currency', '100000', NULL, 'deposit', '$2y$10$82yflZHv.uVF1WJlrgydr.eGEjS/lCA2nu7q7Wtw2c6mvD.XTGHOi', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-22 14:50:36', NULL),
(103, '21', 'the21stcenturyceo@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$7/03HOrk4c.pR3.7ZkCrYOIi.2kY623c4.cFsiZgjK.LxFLNh4M7y', 'titan.offline@gmail.com', 'completed', '0', '2017-10-22 14:50:37', NULL),
(104, '21', 'the21stcenturyceo@gmail.com', 'currency', '99800', NULL, 'test debit', '$2y$10$l7zU8XzBZqnz1.MSH7o1UuIhU/YzMvfXkxS/.ebS2BCeyRgWErbRO', 'titan.offline@gmail.com', 'completed', '0', '2017-10-22 15:17:30', NULL),
(105, '1', 'titan.offline@gmail.com', 'currency', '70000', NULL, 'deposit', '$2y$10$xFH6bUDMZo7J.AjFu7IWEO9A.qH0EG4HRdu1QrxLKDmIGgTYT8hqS', 'arugub@gmail.com', 'completed', '0', '2017-10-22 22:46:19', NULL),
(106, '53', 'arugub@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$iG9XCgPbsnZd9Gvyubm4oew3YwKsdBivObOsdUEgzcXQXNO0lcy82', 'titan.offline@gmail.com', 'completed', '0', '2017-10-22 22:46:19', NULL),
(107, '1', 'titan.offline@gmail.com', 'btc', '0.031', NULL, 'unicorn instant buy', '$2y$10$hezJ/SsFAslnEdPC/qhZ3.1tLfmVD2CYrkBGABv2yGsOPC/XPZw0q', 'arugub@gmail.com', 'completed', '0', '2017-10-22 22:50:55', NULL),
(108, '53', 'arugub@gmail.com', 'currency', '68827.48557', NULL, 'unicorn instant buy', '$2y$10$GPEcnos34x/b7mxBfjg3NO5qoVqne89bjlX4EdY/7NH3e9uhUbimq', 'titan.offline@gmail.com', 'completed', '0', '2017-10-22 22:50:55', NULL),
(109, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.021916', NULL, 'unicorn instant sell', '$2y$10$192toM702MYHTRUFPRUtZuj5.mvmFbTfq13xT3SLpp9bNU8OgWsne', 'titan.offline@gmail.com', 'completed', '0', '2017-10-23 09:25:48', NULL),
(110, '1', 'titan.offline@gmail.com', 'currency', '43311.569514400006', NULL, 'unicorn instant sell', '$2y$10$fJHoQmg.psoUE.s8VcoJcOCUxBzE.M/VgA7Vn3VX4ODThTTDoERbm', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-23 09:25:48', NULL),
(111, '21', 'the21stcenturyceo@gmail.com', 'currency', '43111.57', NULL, 'currency funds withdrawal NGN', '$2y$10$7QIwP7pnAsnsCGid85eaCe5EaJVdkQlwTD6CFQSH7bH0G/wwqVxEu', 'titan.offline@gmail.com', 'completed', '0', '2017-10-23 10:19:45', NULL),
(112, '21', 'the21stcenturyceo@gmail.com', 'currency', '200', NULL, 'currency funds withdrawal NGN charge', '$2y$10$UArCZ4qkZv9WydpUGFNVfeibf84DQ5wG5763.CKsgvWzrTfSyUWj2', 'titan.offline@gmail.com', 'completed', '0', '2017-10-23 10:19:45', NULL),
(113, '1', 'titan.offline@gmail.com', 'btc', '0.021916', NULL, 'test credit', '$2y$10$VFUawYNJ2m9cBBtSX82Ur.fjUrVWxZNu440PzFg2oj8y.LR5MVqcm', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-23 10:22:09', NULL),
(114, '1', 'titan.offline@gmail.com', 'currency', '100000', NULL, 'deposit', '$2y$10$nzYz.bUU8UK2PW8OUcuuWuHx697qDx/leyUr2McnCon.IsST2.jSW', 'sokariharry@gmail.com', 'completed', '0', '2017-10-23 11:30:39', NULL),
(115, '48', 'sokariharry@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$jDIDCcE/S4F5rZA3jDEPYOU8QwwA85IAN10fD5i63Q16X.Hu2md5.', 'titan.offline@gmail.com', 'completed', '0', '2017-10-23 11:30:39', NULL),
(116, '2', 'calmpress@gmail.com', 'currency', '0.006849999997269983', NULL, 'dsfghjk', '$2y$10$994mE8g1hnoi7XP8j7elsuTRABJaGscUwiy4PaHk1/WJPGLBZYRzW', 'titan.offline@gmail.com', 'completed', '0', '2017-10-23 11:36:28', NULL),
(117, '1', 'titan.offline@gmail.com', 'currency', '1500400', NULL, 'deposit', '$2y$10$lLIYagBIT6I07iHmlwE8gep6cRMSCmZLWo1CxciYwJdm2D5cHbA96', 'thompsonamadi@gmail.com', 'completed', '0', '2017-10-24 13:56:01', NULL),
(118, '50', 'thompsonamadi@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$aVJjuGA05i4GToN9RpxR7uw.MX60FMZleptmqBUW3RLrzlpUub9Au', 'titan.offline@gmail.com', 'completed', '0', '2017-10-24 13:56:01', NULL),
(119, '1', 'titan.offline@gmail.com', 'btc', '0.23538702629096545', NULL, 'unicorn instant buy', '$2y$10$IO.t6K9gzz99ZfIs9k6ta.vR0a5Bpu5NX2WLZimEYE/CdMHpPNYUK', 'thompsonamadi@gmail.com', 'completed', '0', '2017-10-24 14:09:28', NULL),
(120, '50', 'thompsonamadi@gmail.com', 'currency', '500000', NULL, 'unicorn instant buy', '$2y$10$bKH2xFIlSH9ieUYRIJ5xke.tbCoRWDczOB0zQ0RUKIZkepUhAlV7S', 'titan.offline@gmail.com', 'completed', '0', '2017-10-24 14:09:28', NULL),
(121, '50', 'thompsonamadi@gmail.com', 'btc', '0.235387', NULL, 'btc sending', '$2y$10$zQv9gUAwLTXrnEgCufcrSeeFJiLRCdr8Tf533N4sRlfzV.MGeT5na', 'cnyenke1@gmail.com', 'completed', '0', '2017-10-24 14:12:45', NULL),
(122, '1', 'titan.offline@gmail.com', 'btc', '0.2350198356741309', NULL, 'unicorn instant buy', '$2y$10$ybBBowNgxTGO3I9HqGBCkeGcH5Z8jMJvFFGv28wHTW22079xUyeju', 'thompsonamadi@gmail.com', 'completed', '0', '2017-10-24 15:05:53', NULL),
(123, '50', 'thompsonamadi@gmail.com', 'currency', '500000', NULL, 'unicorn instant buy', '$2y$10$tq.rAJmJdX1W8SB5esmT7uwHM8sgy5CWozRa6zrmNI9OEaJTF3KNm', 'titan.offline@gmail.com', 'completed', '0', '2017-10-24 15:05:53', NULL),
(124, '1', 'titan.offline@gmail.com', 'btc', '0.24528219773241464', NULL, 'unicorn instant buy', '$2y$10$gpYD6b1nuE0tLQ4FkIY7oub7VPh81v05C8Ek4rWx2DhOjud4ybhne', 'thompsonamadi@gmail.com', 'completed', '0', '2017-10-25 01:20:00', NULL),
(125, '50', 'thompsonamadi@gmail.com', 'currency', '500200', NULL, 'unicorn instant buy', '$2y$10$vQJ1g8NBfr12rPjEjEu8EO07a.yV5EducJmRvEvjncfXXqopKi.V.', 'titan.offline@gmail.com', 'completed', '0', '2017-10-25 01:20:00', NULL),
(126, '1', 'titan.offline@gmail.com', 'currency', '90000', NULL, 'deposit', '$2y$10$rcY8bspEHoUGw0tsDyU1me98G9dPQN6MvQPMGBz.J71HJdaOT0aPK', 'egbujortex@gmail.com', 'completed', '0', '2017-10-25 16:09:05', NULL),
(127, '63', 'egbujortex@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$CsqyXfz.ZZ.0PjyMv3gFFeIl.RMHPO/Ak3xMJLl6s21VBx3h8woEq', 'titan.offline@gmail.com', 'completed', '0', '2017-10-25 16:09:05', NULL),
(128, '63', 'egbujortex@gmail.com', 'currency', '89799', NULL, 'debit', '$2y$10$oR/gheZ2VUIFdg/pqLgZk.0NqX8uImSHQzrTTFkj0BlJUVsLa9PzW', 'titan.offline@gmail.com', 'completed', '0', '2017-10-25 16:32:35', NULL),
(129, '63', 'egbujortex@gmail.com', 'currency', '0.9999', NULL, 'debit', '$2y$10$t898XROo14v0aX9kg3N6heTYfVwkgrjJMtfShnqU4xpZhCGM5ySE6', 'titan.offline@gmail.com', 'completed', '0', '2017-10-25 16:33:10', NULL),
(130, '50', 'thompsonamadi@gmail.com', 'btc', '0.008913', NULL, 'btc funds transfer', '$2y$10$L/lJJd/IGvhBNNINmNYBx.sl98H9wmlhcfcjNsosL7B..ckx6ikGW', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 10:55:27', NULL),
(131, '50', 'thompsonamadi@gmail.com', 'btc', '0.0008913000000000001', NULL, 'btc funds transfer charge', '$2y$10$bdF8CPsKv3QiwY8d.Qfos.dEprCOKNh6LpQxh7e8nyFbk2WUAwhra', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 10:55:27', NULL),
(132, '50', 'thompsonamadi@gmail.com', 'btc', '0.0079243', NULL, 'btc funds transfer', '$2y$10$VUk5evl887KIhpent39nW..h9SK/JvS1ZtIIOlu52Qy8EBBRtuhGy', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 11:39:36', NULL),
(133, '50', 'thompsonamadi@gmail.com', 'btc', '0.0007924300000000001', NULL, 'btc funds transfer charge', '$2y$10$XQVXLIbV9wWIJAX4.euKYOwfZ7Q8HZjhNB43DYgtcGfNinMyQ4/vS', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 11:39:36', NULL),
(134, '1', 'titan.offline@gmail.com', 'btc', '0.0006687', NULL, 'unicorn receive', '$2y$10$Q1OLU8BjhkEVsPLvsv6guuoIb.1qSXS2T2YXDh8Faka/X27ARzGXy', 'thompsonamadi@gmail.com', 'completed', '0', '2017-10-26 11:55:28', NULL),
(135, '50', 'thompsonamadi@gmail.com', 'btc', '0.0002', NULL, 'unicorn receive charge', '$2y$10$zFyshao43mJaXFRIMMAozulF8n7JAdAK1sS9Mo0DdIqWCq7o2QHb.', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 11:55:28', NULL),
(136, '50', 'thompsonamadi@gmail.com', 'btc', '0.001', NULL, 'btc funds transfer', '$2y$10$ZUZkfUgXZye0sZS0ahELheYMDjU1I0YuSKvvgPREXBxyvYbWCGvXW', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 14:50:06', NULL),
(137, '50', 'thompsonamadi@gmail.com', 'btc', '0.0001', NULL, 'btc funds transfer charge', '$2y$10$kmYZfzWrKDOeZJf/GELIa.yFVTgz4Jff.hEFHErBv/Xzm.pw1Ivz2', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 14:50:06', NULL),
(138, '50', 'thompsonamadi@gmail.com', 'btc', '0.0013', NULL, 'btc funds transfer', '$2y$10$ifK6beWF/PasEHAOkjuPJeemeMFwAPMbFnSehUtHxg7X78Giq6hIi', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 14:53:37', NULL),
(139, '50', 'thompsonamadi@gmail.com', 'btc', '0.00013', NULL, 'btc funds transfer charge', '$2y$10$/RvcDVwE/ypsXp49jYgRau5RrVTALDLGMUC1uYbt0oi6KfL08eK76', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 14:53:37', NULL),
(140, '50', 'thompsonamadi@gmail.com', 'btc', '0.1', NULL, 'btc funds transfer', '$2y$10$9Bxl6XPbcseEl8/hIn0ps.q3vGGW69PoNWAapBJuyvOFyNYMnT/e2', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 14:58:37', NULL),
(141, '50', 'thompsonamadi@gmail.com', 'btc', '0.002', NULL, 'btc funds transfer charge', '$2y$10$HdZa1orNGi5zDgw6cNUIie1bsqxEDabTa/LIOthnCD7qNgHUoWCu2', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 14:58:37', NULL),
(142, '1', 'titan.offline@gmail.com', 'btc', '0.09', NULL, 'unicorn receive', '$2y$10$HYDi1Mjp71WjWswdOukf8e2k0Ipdp8s2cf/CyG9/YIdN6hRrGlcXO', 'thompsonamadi@gmail.com', 'completed', '0', '2017-10-26 15:05:29', NULL),
(143, '50', 'thompsonamadi@gmail.com', 'btc', '0.0002', NULL, 'unicorn receive charge', '$2y$10$8Z1pKy.ofazHeJLtcK3jYeow6JrI7vEycrT0WdBZ478MFs.aJ9KPe', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 15:05:29', NULL),
(144, '1', 'titan.offline@gmail.com', 'btc', '0.0122626', NULL, 'unicorn deposit', '$2y$10$ombkYZJByp449bOFbMtxde/MxeQPYif1gmg5VnsCO1cq/Jk5b5lVS', 'thompsonamadi@gmail.com', 'completed', '0', '2017-10-26 15:15:37', NULL),
(145, '1', 'titan.offline@gmail.com', 'btc', '0.01571698', NULL, 'Flex', '$2y$10$gxBWUM7kJBM47/WhUEFSBuRziHIa/a1DaqIMQKGiwL7yJjxPdUmWq', 'thompsonamadi@gmail.com', 'completed', '0', '2017-10-26 15:25:13', NULL),
(146, '1', 'titan.offline@gmail.com', 'currency', '20000', NULL, 'deposit', '$2y$10$IqMkxvptpAQ6PowNnNP/8.VFcA.MUbjx8OGjfFy4RsPY2QuzhkG5i', 'calmpress@gmail.com', 'completed', '0', '2017-10-26 15:40:27', NULL),
(147, '2', 'calmpress@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$UKC/YvcVuxIPkN.Wq/1Iy.cCszvFDksOEFcQKvl9COW6gCj3vUBXG', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 15:40:27', NULL),
(148, '1', 'titan.offline@gmail.com', 'btc', '0.008866647634720986', NULL, 'unicorn instant buy', '$2y$10$TwQyKtKbGp8bxfApX6Tn4OuqVqCcteJhUsOjWIUOaZjL0hfpYgS2i', 'calmpress@gmail.com', 'completed', '0', '2017-10-26 15:42:15', NULL),
(149, '2', 'calmpress@gmail.com', 'currency', '19800', NULL, 'unicorn instant buy', '$2y$10$DfW4dmPQOlv3/JEo3gyyAekogBnP03v1NDj/aZimp6Bw3NGwJS/Aa', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 15:42:15', NULL),
(150, '1', 'titan.offline@gmail.com', 'btc', '0.0093', NULL, 'unicorn deposit', '$2y$10$EMs.ugd4Ebl/M5sdjX5b.ea57bXNthhT4nmg7I1Wcr7fHwoqyIrkK', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-26 19:15:37', NULL),
(151, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.0002', NULL, 'unicorn deposit charge', '$2y$10$e8PYG/cLjjJ4ZuR6uD9TkOg4NoF4gw0ozIYkMHorpESLxa5RJ2tRO', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 19:15:37', NULL),
(152, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.0091', NULL, 'Excess Surcharge', '$2y$10$JRjwFmzLSQmM/Lo5ilp4EujSY0aTMMxhN0.5S6k7glvd5io.Kk2Y.', 'titan.offline@gmail.com', 'completed', '0', '2017-10-28 07:52:39', NULL),
(153, '1', 'titan.offline@gmail.com', 'currency', '90000', NULL, 'deposit', '$2y$10$6DSflDEfn73/JS/fdMmxJe967ZBBCZzys5zgLtWdzUE8fhRaq7C7S', 'bennytex@gmail.com', 'completed', '0', '2017-10-28 11:42:51', NULL),
(154, '67', 'bennytex@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$ubk.2O2omJoJ82n.NumQxOA7lO9MXYMJEoiB5U9wzbHIOazLEoXje', 'titan.offline@gmail.com', 'completed', '0', '2017-10-28 11:42:52', NULL),
(155, '2', 'calmpress@gmail.com', 'btc', '0.006', NULL, 'exchange', '$2y$10$6q10FOCgplcCNAbMRCbFSOagINvNB/5VnJ7UepW1mk97Sle/w.F02', 'titan.offline@gmail.com', 'completed', '0', '2017-10-29 17:52:53', NULL),
(156, '1', 'titan.offline@gmail.com', 'btc', '0.006', NULL, 'exchange cancelled', '$2y$10$hoLF0bEc2UFGwvyQsoVrru5/agotVW4715QbblDXebeSo3qigY2bO', 'calmpress@gmail.com', 'completed', '0', '2017-10-29 19:12:24', NULL),
(157, '1', 'titan.offline@gmail.com', 'btc', '0.006', NULL, 'exchange cancelled', '$2y$10$bDbzohTOipGNCMpe3r4LC.BaJDM6QVvVgkzTjY.2F7UpdS2aTLNJ2', 'calmpress@gmail.com', 'completed', '0', '2017-10-29 19:12:55', NULL),
(158, '1', 'titan.offline@gmail.com', 'btc', '0.008', NULL, 'exchange cancelled', '$2y$10$wECyE39qhW1A.S/.p1FHdeBTqPxUNdpm.WqXBsoJm3LKNxDeBZSqG', 'calmpress@gmail.com', 'completed', '0', '2017-10-29 19:13:08', NULL),
(159, '2', 'calmpress@gmail.com', 'btc', '0.004', NULL, 'exchange', '$2y$10$/w55hKlRRqpuZ6kP78OCo.G41rFSvDsGbS/GKySOXV2eXSgaHBaka', 'titan.offline@gmail.com', 'completed', '0', '2017-10-29 19:13:35', NULL),
(160, '1', 'titan.offline@gmail.com', 'btc', '0.004', NULL, 'exchange cancelled', '$2y$10$SV.ZuI4pPKitsUfEF8s6VerZnGX4ba1B.aMgZF5TbpPHu8TWNNB..', 'calmpress@gmail.com', 'completed', '0', '2017-10-29 19:14:30', NULL),
(161, '1', 'titan.offline@gmail.com', 'currency', '100000', NULL, 'deposit', '$2y$10$gpnz4R4lMC/Y3SPzYcmaLuiPnM9jHg/Bt34ZyIJ930zFUGL0R8Xpy', 'bennytex@gmail.com', 'completed', '0', '2017-10-30 07:39:30', NULL),
(162, '67', 'bennytex@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$or02Z6NaDHiEd4l.nYgD/eclbS02y/B5KFx5NUJpuTTeCJLGA3HYK', 'titan.offline@gmail.com', 'completed', '0', '2017-10-30 07:39:30', NULL),
(163, '25', 'othuke.imonikiro@gmail.com', 'btc', '0.00101', NULL, 'unicorn instant sell', '$2y$10$ljDhDGCa6wbaEbhHF4gNsuLd1USeMZKprp2E6P60gQUKeztRIsKZa', 'titan.offline@gmail.com', 'completed', '0', '2017-10-31 11:40:30', NULL),
(164, '1', 'titan.offline@gmail.com', 'currency', '2099.6952115', NULL, 'unicorn instant sell', '$2y$10$fiSmv3Pu/Ub0z9L2CTUrluyG.7ARmhJn9cyZKnGRkC4AjO4XbwB0e', 'othuke.imonikiro@gmail.com', 'completed', '0', '2017-10-31 11:40:30', NULL),
(165, '1', 'titan.offline@gmail.com', 'btc', '0.0009', NULL, 'unicorn instant buy', '$2y$10$5sbha.K/GOdZiy5PKXcg1Oyz7FF6IUwi0Or0wXXQ9iYndg9DTxb/y', 'othuke.imonikiro@gmail.com', 'completed', '0', '2017-10-31 12:36:34', NULL),
(166, '25', 'othuke.imonikiro@gmail.com', 'currency', '2097.8325', NULL, 'unicorn instant buy', '$2y$10$qH4t3r3IVvqKg6o.dkzng.KXbUo.byAkNVf62jPT4ao9osvQtfvs.', 'titan.offline@gmail.com', 'completed', '0', '2017-10-31 12:36:34', NULL),
(167, '25', 'othuke.imonikiro@gmail.com', 'btc', '0.0008181', NULL, 'btc funds withdrawal', '$2y$10$zmxsOoVrbTuqrsQEbQc89e2tpGQPe.LqQc1KUWX3Pl6TgBooJLi2S', 'titan.offline@gmail.com', 'completed', '0', '2017-10-31 12:40:48', NULL),
(168, '25', 'othuke.imonikiro@gmail.com', 'btc', '0.0000909', NULL, 'btc funds withdrawal charge', '$2y$10$Vpsmtka/A5Ar7UDZJ34J7uBjQ0aXFM/.wRonVhIihw5Nq/t3O8K8u', 'titan.offline@gmail.com', 'completed', '0', '2017-10-31 12:40:48', NULL),
(169, '67', 'bennytex@gmail.com', 'currency', '189599.999', NULL, NULL, '$2y$10$Gt7tg79VjmomSyiaMnmdBO57.bMbkr71n.9p4SD3y1O2DxW.bUBtq', 'titan.offline@gmail.com', 'completed', '0', '2017-10-31 14:09:10', NULL),
(170, '67', 'bennytex@gmail.com', 'currency', '0.00099999998928979', NULL, NULL, '$2y$10$XZu7/r5ADBOx5VK30pJ7Tupph0ZXfT9poBpgbzICAT6wLMz7jcfBa', 'titan.offline@gmail.com', 'completed', '0', '2017-10-31 14:09:29', NULL),
(171, '1', 'titan.offline@gmail.com', 'btc', '0.01', NULL, 'exchange cancelled', '$2y$10$BZSrofkZNJ2N7L6lc6v2bO0N7JFu0lEb4ZGTZ.Sn1God7qPJduIjO', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-31 17:48:25', NULL),
(172, '1', 'titan.offline@gmail.com', 'btc', '0.01', NULL, 'exchange cancelled', '$2y$10$dudA6Rim5Vn/vNLtSP.p1.Ra2U01D9/AWDl4K3bKflCF5qcuEfF2O', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-31 17:48:26', NULL),
(173, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.01', NULL, 'exchange', '$2y$10$08hiF2SUZurarbYCPdgu3e6Rsi3RrJMm2tnqwLJAgfC.QFK1a8Q9e', 'titan.offline@gmail.com', 'completed', '0', '2017-10-31 17:49:12', NULL),
(174, '1', 'titan.offline@gmail.com', 'btc', '0.01', NULL, 'exchange cancelled', '$2y$10$lkF/gWRoosTpDhEal1.p4eYiqywBiSYAfChQAB3arAlAsWPlMlZFy', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-31 17:49:48', NULL),
(175, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.01', NULL, 'exchange', '$2y$10$8tO8uCbhycv7CH1eQ/vE1OasdrUOIHxl.T/kmx4oBU1zkXZmQk04S', 'titan.offline@gmail.com', 'completed', '0', '2017-10-31 17:50:30', NULL),
(176, '1', 'titan.offline@gmail.com', 'btc', '0.01', NULL, 'exchange cancelled', '$2y$10$uZPty8HSiI3AxI58G2OpOu/ouGmr9aeAXN8Xe19lixUqTIbPOUvCu', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-31 17:50:43', NULL),
(177, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.01', NULL, 'exchange', '$2y$10$zO.nVyHD/i/Ktw6aONSNwuFBMyx5Ij8vh/LELZetU1AoPdjQdsR1O', 'titan.offline@gmail.com', 'completed', '0', '2017-10-31 17:51:01', NULL),
(178, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.01', NULL, 'exchange', '$2y$10$JsS5Q1QPaU0OW4inzw0JCuy/ysod7zLo9eGzq9.1mNIblBi.Q6hyK', 'titan.offline@gmail.com', 'completed', '0', '2017-10-31 17:51:55', NULL),
(179, '1', 'titan.offline@gmail.com', 'btc', '0.01', NULL, 'exchange cancelled', '$2y$10$Fi1c/E8AMeqUW/eWyWWmtewLOCxYy.Xhy48jbCl.YsydteYVopKg2', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-31 17:52:03', NULL),
(180, '1', 'titan.offline@gmail.com', 'btc', '0.01', NULL, 'exchange cancelled', '$2y$10$Cwe4gnGeqe2Y8YTQmYamLeYD3YXRvyeNAM80bLo5u3ktGHrTNVgGa', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-31 17:52:08', NULL),
(181, '2', 'calmpress@gmail.com', 'btc', '0.004', NULL, 'exchange', '$2y$10$PPy5DCETmLW6d0oTQyLgLOegstNQZW98h32xuCjQE35/b/n/lF.De', 'titan.offline@gmail.com', 'completed', '0', '2017-10-31 18:09:16', NULL),
(182, '1', 'titan.offline@gmail.com', 'btc', '0.004', NULL, 'exchange cancelled', '$2y$10$RPPUIpO29DDr1EgcwjaKZ.vmQ1KIFdxldVlzBMqKzKsRGUFxQXbE6', 'calmpress@gmail.com', 'completed', '0', '2017-10-31 18:09:52', NULL),
(183, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.01', NULL, 'exchange', '$2y$10$kjzKGGZwK8LfbsB2OAb5COTx5cGLbnBvB/7uaqeHGpzCb/8pFT0HC', 'titan.offline@gmail.com', 'completed', '0', '2017-10-31 18:18:06', NULL),
(184, '1', 'titan.offline@gmail.com', 'currency', '90000', NULL, 'deposit', '$2y$10$rn2s/xnDYVidPh9kdo4rdO5TXqt0OsabRZ4GZIObzT/e2tf9VJBF2', 'ekenebenedict21@gmail.com', 'completed', '0', '2017-11-01 14:39:04', NULL),
(185, '73', 'ekenebenedict21@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$zH2oSfUek0UguFTUd9bKs.zZ7d3yNcCKifOwk0gM/Ri.Z8KxGDcXG', 'titan.offline@gmail.com', 'completed', '0', '2017-11-01 14:39:04', NULL),
(186, '1', 'titan.offline@gmail.com', 'currency', '100000', NULL, 'deposit', '$2y$10$I5JL9Jketsjulv98A//7/O8oIzkxVKDMFL5tXxnvcTLQwNG8IH5Gm', 'ekenebenedict21@gmail.com', 'completed', '0', '2017-11-01 14:39:12', NULL),
(187, '73', 'ekenebenedict21@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$lKf9HtFD2zvayu0GtbW7DObPuWgnW0q1rvX.38gZddtOLBcHz6APy', 'titan.offline@gmail.com', 'completed', '0', '2017-11-01 14:39:12', NULL),
(188, '1', 'titan.offline@gmail.com', 'btc', '0.01', NULL, 'exchange cancelled', '$2y$10$5u91UzC/ysQ4cheCVFhIe.EQsWzOSPwiPkrvUMqvx6sZ8E1SRrzRC', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-11-01 19:08:12', NULL),
(189, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.02', NULL, NULL, '$2y$10$rM0ChHcYhOn1rdR89iciz.PYDMyc9wr8rmYj1.snZgSjH0a7hdKE.', 'titan.offline@gmail.com', 'completed', '0', '2017-11-01 19:29:11', NULL),
(190, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.01', NULL, 'exchange', '$2y$10$5rjtsIAnPvZ7w1uajyxCqurETyOb5WNk4thSGe9sV79htFMPSmKsW', 'titan.offline@gmail.com', 'completed', '0', '2017-11-01 19:30:06', NULL),
(191, '1', 'titan.offline@gmail.com', 'btc', '0.01', NULL, 'exchange cancelled', '$2y$10$HuCkrfh/Cm4RYa5hwadP4ONjqhFfhiolqBQfRo8tFXlyuFxBqHEju', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-11-01 19:30:14', NULL),
(192, '1', 'titan.offline@gmail.com', 'btc', '0.07323322667972196', NULL, 'unicorn instant buy', '$2y$10$..0Bh5uP2UwSnlV9JkNl8e4tkI62htS/HTdJcUOntFPijFNmoR0si', 'ekenebenedict21@gmail.com', 'completed', '0', '2017-11-02 06:29:16', NULL),
(193, '73', 'ekenebenedict21@gmail.com', 'currency', '189600', NULL, 'unicorn instant buy', '$2y$10$B9GyE42D2SO2jgQOwZbuQO5VAz7bkuDkPfGp8AM/dCRuB2w2sjXAO', 'titan.offline@gmail.com', 'completed', '0', '2017-11-02 06:29:16', NULL),
(194, '50', 'thompsonamadi@gmail.com', 'btc', '0.003605', NULL, 'btc funds transfer', '$2y$10$v9MEaRdp1SApLyki8rVoJeA8p/XrfeUYTd8uFOLrJm4sX8EmCrZKG', 'titan.offline@gmail.com', 'completed', '0', '2017-11-02 08:20:59', NULL),
(195, '50', 'thompsonamadi@gmail.com', 'btc', '0.00036050000000000003', NULL, 'btc funds transfer charge', '$2y$10$BkcyYxYJ.V8q5OinEeT/nOBmt7xTYNSTtOeuAWfxLIW7M9K6pu3Fq', 'titan.offline@gmail.com', 'completed', '0', '2017-11-02 08:20:59', NULL),
(196, '50', 'thompsonamadi@gmail.com', 'btc', '0.0005', NULL, 'Recent Transfer Charge', '$2y$10$b1N5nUF2lRt9h6t.5ShMgOwIV5Tga8MHH1oAlAtAtZ1CkYdp3e1Wa', 'titan.offline@gmail.com', 'completed', '0', '2017-11-02 08:38:31', NULL),
(197, '50', 'thompsonamadi@gmail.com', 'btc', '0.145632', NULL, 'btc funds transfer', '$2y$10$6U5xH66xqJhmUVvkVFP6/uTjzLHrp0U4wbz8HzonzlWDqAGpS/0KG', 'titan.offline@gmail.com', 'completed', '0', '2017-11-02 17:34:09', NULL),
(198, '50', 'thompsonamadi@gmail.com', 'btc', '0.00291264', NULL, 'btc funds transfer charge', '$2y$10$MpIvrcld3mpyLvkLiYMPfOeCzlvN3Zvo.HjCDPBEvYeI8ectQV7qS', 'titan.offline@gmail.com', 'completed', '0', '2017-11-02 17:34:10', NULL),
(199, '1', 'titan.offline@gmail.com', 'btc', '0.001', NULL, 'Excess charge refund', '$2y$10$D0S8hTpme3XEnGx2BMRuQuoNj.JkEOlmGjH9UL0w20G8knybiXody', 'thompsonamadi@gmail.com', 'completed', '0', '2017-11-02 21:10:43', NULL),
(200, '50', 'thompsonamadi@gmail.com', 'btc', '0.001', NULL, 'RVSL', '$2y$10$5xjirW9ReDxys9Lut5DXJOdTdRBHlMOPyib/XiMbWXTgP8QyKktUS', 'titan.offline@gmail.com', 'completed', '0', '2017-11-02 21:34:59', NULL),
(201, '1', 'titan.offline@gmail.com', 'currency', '70000', NULL, 'deposit', '$2y$10$Btu/A4pqLA8SISHm8gcOl.7zqugJELfCFaXUZb72K1ilfbCxBLlka', 'chizobaegbujor@gmail.com', 'completed', '0', '2017-11-02 23:16:49', NULL),
(202, '45', 'chizobaegbujor@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$dkeUjdLJRfq4T4kwX8wXYuvxyGq6eoVZHF4VsuUIu9z1V8L.QsFLG', 'titan.offline@gmail.com', 'completed', '0', '2017-11-02 23:16:49', NULL),
(203, '57', 'Cnyenke1@gmail.com', 'btc', '0.054938', NULL, 'btc funds transfer', '$2y$10$yWSBTsfTp7E8MMbOu7L8ueJ2TeokqiDWfBd4yCeaa7keIHmOgo2hS', 'titan.offline@gmail.com', 'completed', '0', '2017-11-03 15:25:03', NULL),
(204, '57', 'Cnyenke1@gmail.com', 'btc', '0.0023463975600000004', NULL, 'btc funds transfer charge', '$2y$10$UNytIoDEY98xbyfRoJT77eXHbDOXN6Ov0.Bk1BY38tO36uY.VC9IW', 'titan.offline@gmail.com', 'completed', '0', '2017-11-03 15:25:03', NULL),
(205, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.01', NULL, 'exchange', '$2y$10$ULKrKSK61OKzKV3MqPJNcubheuwpFV2Uz9knhvFzM7CGMxob6tnMy', 'titan.offline@gmail.com', 'completed', '0', '2017-11-04 10:35:48', NULL),
(206, '50', 'thompsonamadi@gmail.com', 'btc', '0.041479', NULL, 'btc funds transfer', '$2y$10$yKTJ/bKrcIn6f7jJO.AXQ.WK4YEXUh2fBAU//gL3FnVc6AEXu8d.m', 'titan.offline@gmail.com', 'completed', '0', '2017-11-04 12:33:28', NULL),
(207, '50', 'thompsonamadi@gmail.com', 'btc', '0.00273157692', NULL, 'btc funds transfer charge', '$2y$10$tvYfiD2SKeDo1DyVlbl3KelCeTWpsLWUf2zu7j.RHq37zRTBA67Ya', 'titan.offline@gmail.com', 'completed', '0', '2017-11-04 12:33:28', NULL),
(208, '50', 'thompsonamadi@gmail.com', 'btc', '0.00372', NULL, 'Transaction fee', '$2y$10$36nzwTVgneebYIhjSP2m2OmeehYeJcFhrqTFJfUOCrvuwfx2H23xi', 'titan.offline@gmail.com', 'completed', '0', '2017-11-04 12:51:39', NULL),
(209, '1', 'titan.offline@gmail.com', 'currency', '20000', NULL, 'deposit', '$2y$10$BUg1G05zA3i/H9AZb46HFOK6ZP9LhpW1iTk0n9pfanOGNHncPFOCe', 'unicornbitex@gmail.com', 'completed', '0', '2017-11-04 14:10:18', NULL),
(210, '49', 'unicornbitex@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$VGSlAgQBnwOIQJKC4kxCkunMpo3hQfCN8dhR8oY.AvG8Evz5R/CJC', 'titan.offline@gmail.com', 'completed', '0', '2017-11-04 14:10:19', NULL),
(211, '1', 'titan.offline@gmail.com', 'currency', '200000', NULL, 'deposit', '$2y$10$Z9sEyOt2WHPdOC9Zedphp.B7w02lAmHHHrV4.rOCg12MzUHFRL8Yy', 'unicornbitex@gmail.com', 'completed', '0', '2017-11-04 14:10:30', NULL),
(212, '49', 'unicornbitex@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$55A6Sk6qSj4qaAeTvASt/ej1EYqy2WMnb6zDw4iimhzVPaSBcjJfS', 'titan.offline@gmail.com', 'completed', '0', '2017-11-04 14:10:30', NULL),
(213, '1', 'titan.offline@gmail.com', 'btc', '0.018286784323837006', NULL, 'unicorn instant buy', '$2y$10$Cvlj/uXLdTjF2jYIsPLA8ubAg99Io8zN8W4PmKP.tSxhmpMJaSViO', 'unicornbitex@gmail.com', 'completed', '0', '2017-11-04 14:16:00', NULL),
(214, '49', 'unicornbitex@gmail.com', 'currency', '50000', NULL, 'unicorn instant buy', '$2y$10$Fl9f69vw.ejSgsCpeTRcS.HNPF0GgaSMS4gLID8vbBUtgUtxINyk6', 'titan.offline@gmail.com', 'completed', '0', '2017-11-04 14:16:00', NULL),
(215, '49', 'unicornbitex@gmail.com', 'btc', '0.006811367354750996', NULL, 'unicorn instant sell', '$2y$10$yp6rWybGjv7KS6HABq5g6u.t7qAOh6izeW/mf6cXnmToSy4gtcgEi', 'titan.offline@gmail.com', 'completed', '0', '2017-11-04 14:16:38', NULL),
(216, '1', 'titan.offline@gmail.com', 'currency', '16750', NULL, 'unicorn instant sell', '$2y$10$JgUU4brSivwV.8U0g7A6SO9KC.od1V1a0LpQmek/mJESXgasDBE/m', 'unicornbitex@gmail.com', 'completed', '0', '2017-11-04 14:16:38', NULL),
(217, '49', 'unicornbitex@gmail.com', 'currency', '100000', NULL, 'exchange', '$2y$10$uUAcWlndqweWOKBeiisEquie68jjp3vr9vHzpO9hciO0TkrjDs.ee', 'titan.offline@gmail.com', 'completed', '0', '2017-11-04 14:18:03', NULL),
(218, '49', 'unicornbitex@gmail.com', 'btc', '0.01145', NULL, NULL, '$2y$10$Fp84vzwKgJvZsBkCaB3X3ubwueL7ZnGjwQUp7fFk.pcxgpfwnk3XS', 'titan.offline@gmail.com', 'completed', '0', '2017-11-05 04:25:26', NULL),
(219, '49', 'unicornbitex@gmail.com', 'btc', '0.00002541696908600968', NULL, NULL, '$2y$10$Qc8v7/kLBfbvXffRyBmOO.YhKdYK3XViyeDrbnp2IphW2FC8DUpqa', 'titan.offline@gmail.com', 'completed', '0', '2017-11-05 04:26:00', NULL),
(220, '1', 'titan.offline@gmail.com', 'btc', '0.00206897', NULL, 'unicorn deposit', '$2y$10$JfNWCDDBLJz74Pa6kCbIiuJotRkyCyuXdGdUossXXphrdFj2gkzx2', 'temitayooyalowo55@hotmail.com', 'completed', '0', '2017-11-06 03:55:31', NULL),
(221, '35', 'temitayooyalowo55@hotmail.com', 'btc', '0.0002', NULL, 'unicorn deposit charge', '$2y$10$muttvJbxER1P4RaqdLLK.O1LYu/JfI4fO5ipKSDO2vZ37JozT/v5y', 'titan.offline@gmail.com', 'completed', '0', '2017-11-06 03:55:31', NULL),
(222, '2', 'calmpress@gmail.com', 'btc', '0.008', NULL, 'exchange', '$2y$10$50aSucOTQ6IB5spQiOi46.cTCfb5E5Mq/HDJRqiU6BclrYU9uXKsa', 'titan.offline@gmail.com', 'completed', '0', '2017-11-06 06:54:02', NULL),
(223, '1', 'titan.offline@gmail.com', 'btc', '0.008', NULL, 'exchange cancelled', '$2y$10$c2499hNuaC1X5APjxZrXneTcgCr/f.ATUTVNVqocWzwoatE5GYn86', 'calmpress@gmail.com', 'completed', '0', '2017-11-06 06:54:40', NULL),
(224, '1', 'titan.offline@gmail.com', 'btc', '0.00958485', NULL, 'unicorn receive', '$2y$10$uil1BfitpgrMpFsa8ei93uulmq.bhtjSodflP.4eN.WFK4MOC4Gq.', 'thompsonamadi@gmail.com', 'completed', '0', '2017-11-06 12:30:53', NULL),
(225, '50', 'thompsonamadi@gmail.com', 'btc', '0.0002', NULL, 'unicorn receive charge', '$2y$10$PFcKhIpc6IS4tsstUbPBSuMQquJF98bxv1Uu0n5jtEI4fUmIOmPsq', 'titan.offline@gmail.com', 'completed', '0', '2017-11-06 12:30:53', NULL);
INSERT INTO `transactions` (`id`, `user_id`, `email`, `type`, `amount`, `time_created`, `description`, `transaction_id`, `recieved_by`, `status`, `deleted`, `created_at`, `updated_at`) VALUES
(226, '48', 'sokariharry@gmail.com', 'currency', '99800', NULL, 'Unicorn', '$2y$10$T5o.OvlRIoIPpjmqUiOLHuI7UA0zvEg5GNoN9dwQNg6C2LbI3dtra', 'titan.offline@gmail.com', 'completed', '0', '2017-11-06 14:53:33', NULL),
(227, '1', 'titan.offline@gmail.com', 'btc', '0.00278572', NULL, 'unicorn deposit', '$2y$10$KhVNlx0DisLUFMbFEwbXge/Fo97aT1lwR7JfPicjdGl22pc1FAXnW', 'clinsgfx@gmail.com', 'completed', '0', '2017-11-06 20:10:41', NULL),
(228, '99', 'clinsgfx@gmail.com', 'btc', '0.0002', NULL, 'unicorn deposit charge', '$2y$10$dgFcTmB4.opuNrmFZQU6dOjLaTSCR5sN7YdiXY364THstaOaBnXz.', 'titan.offline@gmail.com', 'completed', '0', '2017-11-06 20:10:41', NULL),
(229, '49', 'unicornbitex@gmail.com', 'currency', '98900', NULL, 'Empty test', '$2y$10$SwmQ.Ht1oSwpgOsqMhfLX.4sxuw307JRbVQlF.Risl1hFKtiKq96O', 'titan.offline@gmail.com', 'completed', '0', '2017-11-06 20:28:52', NULL),
(230, '99', 'clinsgfx@gmail.com', 'btc', '0.002585', NULL, 'exchange', '$2y$10$VKjhhL3EZfSsOAir4kSeQuxufY350lLwcKiQuQ8IvlPGwmucTk5Q2', 'titan.offline@gmail.com', 'completed', '0', '2017-11-07 09:15:12', NULL),
(231, '1', 'titan.offline@gmail.com', 'btc', '0.002585', NULL, 'exchange cancelled', '$2y$10$rOixYuPKZPzDgNjcKmT5Fuqlxgdao1jnMEN/3X0DIpYmmmJAOTq4W', 'clinsgfx@gmail.com', 'completed', '0', '2017-11-07 09:30:03', NULL),
(232, '99', 'clinsgfx@gmail.com', 'btc', '0.002585', NULL, 'exchange', '$2y$10$W/0o3fMwmSrJiDKBbn8p0emAlCwvWKvEOpyG/8B9nGjljeUeldp.O', 'titan.offline@gmail.com', 'completed', '0', '2017-11-07 09:30:26', NULL),
(233, '1', 'titan.offline@gmail.com', 'btc', '0.002585', NULL, 'exchange cancelled', '$2y$10$fz5CGuMUzSKX5QQv3TU14.ffapxW0Z01XMVG315ZbRwn4FnjFMq8.', 'clinsgfx@gmail.com', 'completed', '0', '2017-11-07 09:32:17', NULL),
(234, '99', 'clinsgfx@gmail.com', 'btc', '0.002585', NULL, 'unicorn instant sell', '$2y$10$M8Ze7Zv/Olck9BiC7iK9/uMRiqMGDYRRGmDCMe/fyyFgv1ye3KWKS', 'titan.offline@gmail.com', 'completed', '0', '2017-11-07 09:32:36', NULL),
(235, '1', 'titan.offline@gmail.com', 'currency', '6317.550778000001', NULL, 'unicorn instant sell', '$2y$10$duGmRHloDFGcCAXW8RLAJuWWcJxQEjI3eKW2FF0Nh.cHdBWhTyXAm', 'clinsgfx@gmail.com', 'completed', '0', '2017-11-07 09:32:36', NULL),
(236, '99', 'clinsgfx@gmail.com', 'currency', '6100', NULL, 'currency funds withdrawal NGN', '$2y$10$Js9gFIkCjkBkjpJ1HDgmQuEAo.0eLWOglZut9GlLSFVSgo8ZDDRTa', 'titan.offline@gmail.com', 'completed', '0', '2017-11-07 12:24:37', NULL),
(237, '99', 'clinsgfx@gmail.com', 'currency', '200', NULL, 'currency funds withdrawal NGN charge', '$2y$10$k0b4GISWqfvpqVANW7IM6u1w54yrVFvLP1ZAVwn/wSfM8GorYjhCm', 'titan.offline@gmail.com', 'completed', '0', '2017-11-07 12:24:37', NULL),
(238, '50', 'thompsonamadi@gmail.com', 'btc', '0.1252473', NULL, 'btc funds transfer', '$2y$10$EY7CawDMskAaJBq4VLEya.ezXQx.IVE6aL5FbseKktHXJ.K1VHPia', 'titan.offline@gmail.com', 'completed', '0', '2017-11-07 14:06:12', NULL),
(239, '50', 'thompsonamadi@gmail.com', 'btc', '0.0030728154399999996', NULL, 'btc funds transfer charge', '$2y$10$NgCHMDYuez9jlh9ZahST7.gf3.4VGJ9keXvG44MX2sCt1AAQeTopS', 'titan.offline@gmail.com', 'completed', '0', '2017-11-07 14:06:12', NULL),
(240, '57', 'Cnyenke1@gmail.com', 'btc', '0.04780000', NULL, 'btc funds transfer', '$2y$10$UruinOFjW5Xp6DthWl9XhOGNzQseINcd8G5j0G47SQpwRIMHISrY6', 'titan.offline@gmail.com', 'completed', '0', '2017-11-07 14:15:26', NULL),
(241, '57', 'Cnyenke1@gmail.com', 'btc', '0.00268592058', NULL, 'btc funds transfer charge', '$2y$10$FNxF0m08N3AWytMCpGeGBOak1xPhL0TBQXl9LeACcEGQXaFfaU6Qi', 'titan.offline@gmail.com', 'completed', '0', '2017-11-07 14:15:26', NULL),
(242, '1', 'titan.offline@gmail.com', 'btc', '0.0014187', NULL, 'unicorn deposit', '$2y$10$2jycFmfsdhtdm/gftzHDS.KYwE74dxkn5ZRukvshta.kQD/Dcde2.', 'solomonmark83@gmail.com', 'completed', '0', '2017-11-07 21:35:29', NULL),
(243, '100', 'solomonmark83@gmail.com', 'btc', '0.0002', NULL, 'unicorn deposit charge', '$2y$10$sBL.medAGrxNcgvl83qGI.IlJ4RSLm80/1eFVw.Shz.ZJnUtpCgU6', 'titan.offline@gmail.com', 'completed', '0', '2017-11-07 21:35:29', NULL),
(244, '1', 'titan.offline@gmail.com', 'btc', '0.00618171', NULL, 'unicorn receive', '$2y$10$YONX2Dd528RPmlBZC..I8OJmE/x4.RsbNVBjTNpxESGAQtaJs1RZi', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-11-08 05:20:36', NULL),
(245, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.0002', NULL, 'unicorn receive charge', '$2y$10$rUscB3/ip0C8cGcze9hQd.6p9SJCg09eET/xbpMpLfGmKkSzWx35W', 'titan.offline@gmail.com', 'completed', '0', '2017-11-08 05:20:36', NULL),
(246, '1', 'titan.offline@gmail.com', 'btc', '0.01', NULL, 'exchange cancelled', '$2y$10$gToImt7j/QsY6i7ewF5L1eBTTHZf3ipdFsNxgkidiLAoKFywMNDF6', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-11-08 06:30:53', NULL),
(247, '1', 'titan.offline@gmail.com', 'btc', '0.00598171', NULL, 'unicorn receive 0f57f31d43d7b3530006cad95f9c8864b093816a91ab7e1b03bb64abc943d812', '$2y$10$2OgPg3ikHmOwFkY1N.sD0uLZl3XtDxa.l3mXzqyyToQ2dXKN9iD3.', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-11-08 07:23:49', NULL),
(248, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.0002', NULL, 'unicorn receive charge 0f57f31d43d7b3530006cad95f9c8864b093816a91ab7e1b03bb64abc943d812', '$2y$10$3tgeABT6.FD919pir7TKqeWGVITMOxNz2zerIsvkt3GAfaj/z5rSu', 'titan.offline@gmail.com', 'completed', '0', '2017-11-08 07:23:49', NULL),
(249, '1', 'titan.offline@gmail.com', 'currency', '50000', NULL, 'deposit', '$2y$10$a301xUtlazLisnbrrD7wYelltD8AprQ3nXfNGA/OvQj/aylbnRlme', 'ekenebenedict21@gmail.com', 'completed', '0', '2017-11-08 10:46:08', NULL),
(250, '73', 'ekenebenedict21@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$/FT7n03o8u000H6Vn6ljw.BgEhoATDDsFVWCQK1WgTouEsxC/tEIK', 'titan.offline@gmail.com', 'completed', '0', '2017-11-08 10:46:09', NULL),
(251, '1', 'titan.offline@gmail.com', 'btc', '0.01746900251785153', NULL, 'unicorn instant buy', '$2y$10$C2JHqKI2Qe.Npdk1FgM1uOnpyJQKeOxYj927bB4IfSwab3OFBbKO.', 'ekenebenedict21@gmail.com', 'completed', '0', '2017-11-08 15:09:15', NULL),
(252, '73', 'ekenebenedict21@gmail.com', 'currency', '49800', NULL, 'unicorn instant buy', '$2y$10$xtCfgaPlMQ1bmu2UhkhA7OGlAD.v4CD2Lxg825zmfEb.OA23.L28G', 'titan.offline@gmail.com', 'completed', '0', '2017-11-08 15:09:15', NULL),
(261, '1', 'titan.offline@gmail.com', 'btc', '0.02498017332947775', NULL, 'unicorn instant buy', '$2y$10$aRM/wnFQ/yf/ZhSs3x.s3uDB/JnD0PU2o1hZw.xusoSUlRKAUb.qe', 'chizoba8000@gmail.com', 'completed', '0', '2017-11-09 05:18:55', NULL),
(260, '105', 'chizoba8000@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$a7ekHqCdG6QCWuBdVSk5S.vbJYLkwfozfa7aIsx0fpD25erhu5rN6', 'titan.offline@gmail.com', 'completed', '0', '2017-11-09 02:34:43', NULL),
(259, '1', 'titan.offline@gmail.com', 'currency', '70000', NULL, 'deposit', '$2y$10$5qOkUc7KwCpj.0CKdCBF4.JL5ICyURPkchr.jjpn39QMOX1cX4Rzq', 'chizoba8000@gmail.com', 'completed', '0', '2017-11-09 02:34:42', NULL),
(256, '1', 'titan.offline@gmail.com', 'btc', '0.04786', NULL, NULL, '$2y$10$08fQZroTqirXZhtKWI/zI.UDj4lguAKTHv3ndunnDgQOUC8bg2.0O', 'chizoba8000@gmail.com', 'completed', '0', '2017-11-08 21:50:03', NULL),
(257, '45', 'chizobaegbujor@gmail.com', 'btc', '0.04786', NULL, NULL, '$2y$10$BJDTOHk1OrHJGz9VubUkOum/i9GxIZQKLJv.FikMJyKbcGjaeIvuS', 'titan.offline@gmail.com', 'completed', '0', '2017-11-08 21:50:13', NULL),
(258, '45', 'chizobaegbujor@gmail.com', 'currency', '69800', NULL, NULL, '$2y$10$wGvGSai2FxqQCpcUdQA5SeD8A3lvFc.jvrH38gmrDbL1Bm8eo5BL.', 'titan.offline@gmail.com', 'completed', '0', '2017-11-08 21:51:55', NULL),
(262, '105', 'chizoba8000@gmail.com', 'currency', '69800', NULL, 'unicorn instant buy', '$2y$10$SKp4evCVj3G1xOqrP3qfM.EBZRGF7hBDmVkNvA3BX5kQ0HA5jgJZa', 'titan.offline@gmail.com', 'completed', '0', '2017-11-09 05:18:55', NULL),
(263, '1', 'titan.offline@gmail.com', 'currency', '100000', NULL, 'exchange cancelled', '$2y$10$mvY80Rglw/p38wqXpr9Dk.MyVFEXVFym85xmBtNwZFwA9AZLCr9.e', 'unicornbitex@gmail.com', 'completed', '0', '2017-11-10 15:01:30', NULL),
(264, '49', 'unicornbitex@gmail.com', 'currency', '88000', NULL, 'exchange', '$2y$10$sAfzR31VZfQncjU7U2N/EOLmnDw9yC9v7ne6ayUE7dikRnNTOky7q', 'titan.offline@gmail.com', 'completed', '0', '2017-11-11 07:59:06', NULL),
(265, '1', 'titan.offline@gmail.com', 'currency', '88000', NULL, 'exchange cancelled', '$2y$10$DLYU.t0hquhWSH/j0C5L2Ok2rZ4asyQ.e9X99rS2ig1MV8CBnfIZ.', 'unicornbitex@gmail.com', 'completed', '0', '2017-11-11 07:59:23', NULL),
(266, '49', 'unicornbitex@gmail.com', 'currency', '321.2', NULL, 'exchange', '$2y$10$xBNxUwR5UpjuXYFWZvsZp.FkQpoJ.g4whD0mIkKiqLiylDelQeXPK', 'titan.offline@gmail.com', 'completed', '0', '2017-11-11 07:59:46', NULL),
(267, '49', 'unicornbitex@gmail.com', 'currency', '4278', NULL, 'exchange', '$2y$10$jDZkIaa3JoZsN6RKsfuAu.04Vqkx224au5JnM4qBvww5fsEpxv4Bq', 'titan.offline@gmail.com', 'completed', '0', '2017-11-11 08:00:39', NULL),
(268, '49', 'unicornbitex@gmail.com', 'currency', '6720', NULL, 'exchange', '$2y$10$wDaNRwVFSLwMZQsONsKb/OwDVR99sjPHcJ4mKeoEj2/1CL.k2qna2', 'titan.offline@gmail.com', 'completed', '0', '2017-11-11 08:01:13', NULL),
(269, '49', 'unicornbitex@gmail.com', 'currency', '16100', NULL, 'exchange', '$2y$10$429uxRqfzQ4TwcdHWd/DquhqDeDRd7SO62SwoPCvKGFPswLUpCveW', 'titan.offline@gmail.com', 'completed', '0', '2017-11-11 08:02:23', NULL),
(270, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.017', NULL, 'exchange', '$2y$10$wTzgpWX1TXBjExyx1UB86OzhQ3vRH3H0HUCdoRUg4zTHr79HbsEdS', 'titan.offline@gmail.com', 'completed', '0', '2017-11-11 08:04:28', NULL),
(271, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.0032', NULL, 'unicorn exchange(buy)', '$2y$10$VLXmuh.v9BYQQIQZ0gBjD.nzIiQ82TFkt178tYRMW/IRNb65FwUwq', 'unicornbitex@gmail.com', 'completed', '0', '2017-11-11 08:05:35', NULL),
(272, '49', 'unicornbitex@gmail.com', 'currency', '6720', NULL, 'unicorn exchange(buy)', '$2y$10$xIOBsqEu7EdRChvtVOTx7edFe2Gr3xx238zsPFpRhRdEd//3s2C.O', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-11-11 08:05:35', NULL),
(273, '1', 'titan.offline@gmail.com', 'btc', '0.017', NULL, 'exchange cancelled', '$2y$10$MdtyMwI2xJLcF8.bPsyzreVF1CYAxWmvz63o6MttD50Xl81mYbKzq', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-11-11 08:10:27', NULL),
(274, '21', 'the21stcenturyceo@gmail.com', 'currency', '6720', NULL, NULL, '$2y$10$AiqJpyJvPfjkFdd1YNL7eun5VVWr91U/xL/A01i6/4hOumwZ57f.W', 'titan.offline@gmail.com', 'completed', '0', '2017-11-11 08:11:59', NULL),
(275, '1', 'titan.offline@gmail.com', 'currency', '321.2', NULL, 'exchange cancelled', '$2y$10$50StiKKffXLoIf/a7zdCF.9Y2olNg6RJeKkr4d1iFgBvSy3lRpgW6', 'unicornbitex@gmail.com', 'completed', '0', '2017-11-11 08:12:49', NULL),
(276, '1', 'titan.offline@gmail.com', 'currency', '4278', NULL, 'exchange cancelled', '$2y$10$VAoYdLjEgRDzrg7wrVkEOeMeelP0v7OySOrYRgm1P/NNTH7h9Jfb2', 'unicornbitex@gmail.com', 'completed', '0', '2017-11-11 08:12:53', NULL),
(277, '1', 'titan.offline@gmail.com', 'currency', '6720', NULL, 'exchange cancelled', '$2y$10$3ZsE1YYDRSeIfpCl9Wo35eT1INbJPaDnBnsrG2/ZW29gwOUdbCAm6', 'unicornbitex@gmail.com', 'completed', '0', '2017-11-11 08:12:56', NULL),
(278, '1', 'titan.offline@gmail.com', 'currency', '16100', NULL, 'exchange cancelled', '$2y$10$a.qXhPHzhxxt1nB6Gl1oBuD1qLwfCsBQIcDmKLe3nAM1Vx0Wy0Br2', 'unicornbitex@gmail.com', 'completed', '0', '2017-11-11 08:13:01', NULL),
(279, '50', 'thompsonamadi@gmail.com', 'btc', '0.00498303', NULL, 'btc funds transfer', '$2y$10$D8qA.RZbs7RLWJdZaUODh.MjHAWooekYK0T5eEjrTwpMZQ5sYXNpO', 'titan.offline@gmail.com', 'completed', '0', '2017-11-13 08:27:04', NULL),
(280, '50', 'thompsonamadi@gmail.com', 'btc', '0.0033537027100000003', NULL, 'btc funds transfer charge', '$2y$10$f.QQpBLf5zMOrNDnAyAVOeo17QZPl6vqh2N5ZIIF72HcU3G5hJsHq', 'titan.offline@gmail.com', 'completed', '0', '2017-11-13 08:27:04', NULL),
(281, '1', 'titan.offline@gmail.com', 'btc', '0.00497373', NULL, 'unicorn receive', '$2y$10$LPmq9eHDwHXapAyeBSeff.52vBmZuiS669cAwrzR9tJRlhF/U5QoG', 'thompsonamadi@gmail.com', 'completed', '0', '2017-11-13 09:00:58', NULL),
(282, '50', 'thompsonamadi@gmail.com', 'btc', '0.0002', NULL, 'unicorn receive charge', '$2y$10$y7.i4fREr07YdVfzsAU.6OkGOkcgGXo7oKwILSnl4EDyG3YWjpw0y', 'titan.offline@gmail.com', 'completed', '0', '2017-11-13 09:00:58', NULL),
(283, '1', 'titan.offline@gmail.com', 'btc', '0.05572891', NULL, 'unicorn receive a5483988a3b4b934f8931e65d70ebdd794bb7eff91884dca271cc6ca5e624dca', '$2y$10$wBF01X8OAuUXboowHfa0IOWbE.2rCVIcMFMeIVIsNUVU5Ne2N89Ja', 'thompsonamadi@gmail.com', 'completed', '0', '2017-11-13 09:35:29', NULL),
(284, '50', 'thompsonamadi@gmail.com', 'btc', '0.0002', NULL, 'unicorn receive charge a5483988a3b4b934f8931e65d70ebdd794bb7eff91884dca271cc6ca5e624dca', '$2y$10$Wc/RJG5McLx4LpGBYISwrOqoCKAjohSMok36fYKIJyTrSyisbNoQi', 'titan.offline@gmail.com', 'completed', '0', '2017-11-13 09:35:30', NULL),
(285, '50', 'thompsonamadi@gmail.com', 'btc', '0.055529', NULL, NULL, '$2y$10$qvyHOStnNqPLSGhWbkbIjOYtS4G6WU6CyHdQx7ZUplPwDBpoatN8i', 'titan.offline@gmail.com', 'completed', '0', '2017-11-13 14:05:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `upgrades`
--

CREATE TABLE `upgrades` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `others` varchar(10000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_delete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_delete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upgrades`
--

INSERT INTO `upgrades` (`id`, `user_id`, `email`, `doc_name`, `doc_link`, `status`, `reason`, `others`, `user_delete`, `admin_delete`, `created_at`, `updated_at`) VALUES
(1, '21', 'the21stcenturyceo@gmail.com', NULL, NULL, 'deleted', NULL, 'First Name: Precious<br/>Midle Name: Amobi<br/>Last Name: <br/>DOB: 1993-08-11<br/>Country: Nigeria<br/>', NULL, NULL, '2017-10-11 10:57:45', '2017-10-11 10:57:45'),
(2, '21', 'the21stcenturyceo@gmail.com', NULL, NULL, 'complete', NULL, 'First Name: Precious<br/>Midle Name: Amobi<br/>Last Name: <br/>DOB: 1993-08-11<br/>Country: Nigeria<br/>', NULL, NULL, '2017-10-11 10:58:55', '2017-10-11 11:43:05'),
(3, '15', 'nelsonpal55@gmail.com', NULL, NULL, 'complete', NULL, 'First Name: Nelson<br/>Midle Name: Chinonso<br/>Last Name: Ezo-Pal<br/>DOB: 1996-12-05<br/>Country: Nigeria<br/>', NULL, NULL, '2017-10-11 11:46:24', '2017-10-11 11:49:52'),
(4, '25', 'othuke.imonikiro@gmail.com', NULL, 'uploads/1507787037_IMG-20160526-WA0010.jpg', 'complete', NULL, 'First Name: OTHUKE<br/>Midle Name: AZUKA<br/>Last Name: IMONIKIRO<br/>DOB: 1987-08-08<br/>Country: Nigeria<br/>', NULL, NULL, '2017-10-12 05:44:14', '2017-10-12 07:35:05'),
(5, '2', 'calmpress@gmail.com', NULL, 'uploads/1507792389_photo files0001.jpg', 'complete', NULL, 'First Name: Precious<br/>Midle Name: EMMANUEL<br/>Last Name: Dike<br/>DOB: 1993-06-18<br/>Country: Nigeria<br/>', NULL, NULL, '2017-10-12 07:13:42', '2017-10-12 22:50:27'),
(6, '32', 'tallyy6453@gmail.com', NULL, 'uploads/1507993085_VOTERS CARD.png', 'complete', NULL, 'First Name: Oluwaseun<br/>Midle Name: Ayorinde<br/>Last Name: Omokore<br/>DOB: 1991-05-17<br/>Country: Nigeria<br/>', NULL, NULL, '2017-10-14 14:59:10', '2017-10-15 15:05:42'),
(7, '35', 'temitayooyalowo55@hotmail.com', NULL, 'uploads/1508221462_Temitayo Passport.jpg', 'complete', NULL, 'First Name: Temitayo<br/>Midle Name: NONE<br/>Last Name: Oyalowo<br/>DOB: 1980-02-15<br/>Country: Nigeria<br/>', NULL, NULL, '2017-10-17 06:24:35', '2017-10-17 07:19:30'),
(8, '40', 'Akorvuezenwakanma@gmail.com', NULL, 'uploads/1508260262_5.jpg', 'complete', NULL, 'First Name: Akorvueze<br/>Midle Name: Ihenacho<br/>Last Name: Nwakanma<br/>DOB: 1995-04-15<br/>Country: Nigeria<br/>', NULL, NULL, '2017-10-17 17:12:38', '2017-10-17 17:38:40'),
(9, '40', 'Akorvuezenwakanma@gmail.com', 'uploads/1508266534_Screenshot_2017-08-31-20-00-59.png', 'uploads/1508266453_Screenshot_2017-10-17-19-53-17.png', 'cancelled', 'You have to request for your statement of account from your bank showing your valid house address. Also get the PHCN bill of your current address.', NULL, NULL, '1', '2017-10-17 18:55:36', '2017-10-17 22:05:03'),
(10, '49', 'unicornbitex@gmail.com', NULL, 'uploads/1508586394_chigisoftQR.png', 'complete', NULL, 'First Name: Unicorn<br/>Midle Name: Ltd<br/>Last Name: Bitex<br/>DOB: 2017-11-04<br/>Country: Nigeria<br/>', NULL, NULL, '2017-10-21 11:46:36', '2017-10-21 11:47:21'),
(11, '49', 'unicornbitex@gmail.com', 'uploads/1508586464_chigisoftQR.png', 'uploads/1508586461_chigisoftQR.png', 'complete', NULL, NULL, NULL, NULL, '2017-10-21 11:47:46', '2017-10-21 11:48:16'),
(12, '50', 'thompsonamadi@gmail.com', NULL, 'uploads/1509015094_drivers Licence.jpg', 'complete', NULL, 'First Name: Ihunanyachi<br/>Midle Name: Thompson<br/>Last Name: Amadi<br/>DOB: 1991-04-04<br/>Country: Nigeria<br/>', NULL, NULL, '2017-10-26 10:51:40', '2017-10-26 15:09:50'),
(13, '99', 'clinsgfx@gmail.com', NULL, 'uploads/1510049015_valid id.png', 'complete', NULL, 'First Name: Clinton<br/>Midle Name: Chukwudi<br/>Last Name: Agburum<br/>DOB: 1993-08-05<br/>Country: Nigeria<br/>', NULL, NULL, '2017-11-07 10:04:59', '2017-11-07 12:15:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_confirm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number_confirm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_attempts` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banned` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `email`, `password`, `referral`, `level`, `phone_number`, `email_confirm`, `phone_number_confirm`, `ip`, `last_login`, `login_attempts`, `banned`, `picture`, `city`, `country`, `code`, `deleted`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'unicorn', NULL, 'admin', 'titan.offline@gmail.com', '$2y$10$3FwdXdsUfZKqdPpj6nZjPu8NARhUA.I6nZo4y77piVcR3rB8DXKBu', NULL, '1', '2347062297914', '2017-10-13 06:23:17', '2017-10-13 06:23:49', '197.211.61.184', '1510215582', NULL, NULL, NULL, 'PH', 'Nigeria', '0725', NULL, 'JlJSpokeoaqpGjORBFHPIybVUYuMK2J2YjGVZKKA8I7uRizs56osAgbWRpxh', '2017-10-13 06:18:14', NULL),
(2, 'Precious', 'El', 'Dike', 'calmpress@gmail.com', '$2y$10$bMpTs8h.4/nVsu0gVdF9/e3zt6uYKjUNtIXiWEROjYQEZaWahDNuq', NULL, '3', '2347062297914', '2017-10-10 20:30:54', '2017-10-10 20:30:54', '141.101.104.88', '1510503647', NULL, NULL, NULL, NULL, 'Nigeria', 'ASAMLMCPOE', NULL, 'KzQxWxIhUGCGTpGzrsOGVQmo2noHkwtxbwtxYkoTU3mSMPD3WDuM8Ziwe2Jm', '2017-10-10 13:18:27', '2017-10-12 22:50:27'),
(3, '', NULL, '', 'Ighokenneth@live.com', '$2y$10$N3WE1Prvq/4rf3ZbzrTspecDOkO9JhC6GaM2qmNaaB8W4L.8WuHF.', NULL, '4', '2347068598790', '2017-11-07 09:09:53', '2017-11-07 09:09:21', '141.101.98.213', '1510044682', NULL, NULL, NULL, NULL, 'Nigeria', '0450', NULL, NULL, '2017-10-10 19:13:00', '2017-10-10 19:13:00'),
(4, '', NULL, '', 'the21stcenturyceo33333@gmail.com', '$2y$10$knQvjgiO8zSxCNcWYTSwXOvz.nxZz3o.xCbtMz7LtD36RTaq3kgEi', NULL, '4', '2348071799885', '2017-10-10 20:30:54', '2017-10-10 20:31:28', '197.211.61.154', '1507715084', NULL, NULL, NULL, NULL, 'Nigeria', '6951', NULL, 'LvCtuISeGDhM74RcyT4BkL9urxDWZPhPWW46YJKosXUJrajJMVgbsV6W3H10', '2017-10-10 19:21:19', '2017-10-10 19:21:19'),
(5, 'Providence', 'Osedunme', 'Ifeosame', 'providenceifeosame@gmail.com', '$2y$10$NVaGkxORM/uegCGmIITJue.vre2F8OeEprkDarKdu49pRgNcBpqtO', NULL, '4', '2348187655140', '2017-10-14 18:19:59', '2017-10-14 18:19:03', '127.0.0.1', '1513691801', NULL, NULL, NULL, NULL, 'Nigeria', '5150', NULL, 'SBwmHfgSKlWHTIWVWjhKOia424J3R9b821As4fjR5cu4NFzWT9ZZILNaPAnF', '2017-10-10 19:30:17', '2017-10-10 19:30:17'),
(6, '', NULL, '', 'lite2fine@gmail.com', '$2y$10$dd0zX6BcMK0/tytm3tWrZeHaQUMl36gcPLSEj2bCR9fC6kWPBtLaq', NULL, '5', '', NULL, NULL, '197.210.24.238', '1507663887', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, 'dPLiNxVikLiiZst7rFPSBUGCkzQ1TCkqW39ZPQxH1j9GZ1xc9AamHGyQC2vW', '2017-10-10 19:31:27', '2017-10-10 19:31:27'),
(7, '', NULL, '', 'emmyifeanyi01@gmail.com', '$2y$10$tNQpW08LWyoyxPvbnOGM9.Xq2T.5kgWZSL9vfoXMP8SPvrgCU8wNK', NULL, '5', '', NULL, NULL, '197.210.226.114', '1507665964', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-10 20:06:04', '2017-10-10 20:06:04'),
(8, 'Testing​', NULL, 'Unicorm', 'unicorntest@gmail.com', '$2y$10$bydnKusL3flxJInoCRaoL.ta/b3GgxW/B/gXklLUP.Kian/km/95e', NULL, '4', '2347062297914', '2017-10-10 20:30:54', '2017-10-10 20:30:54', '197.211.61.36', '1509031183', NULL, NULL, NULL, NULL, 'Nigeria', '6071', NULL, 'b0yfmXzAjQqCMXy8rXZKVcaXoeTBvSY0tUXoohLiQl6JdzVC4fLdR8BvjI8m', '2017-10-10 20:38:58', '2017-10-10 20:38:58'),
(9, 'Erastus', NULL, 'Uso', 'erastususo@gmail.com', '$2y$10$nVnygtb0kVMaubBalluqyOAe9EX.MdU/Cfz3uDWxf9mtDeAe5HWGC', NULL, '4', '2348100993100', '2017-10-22 10:17:46', '2017-10-22 10:18:10', '160.152.35.242', '1510435358', NULL, NULL, NULL, NULL, 'Nigeria', '1630', NULL, NULL, '2017-10-10 21:56:24', '2017-10-10 21:56:24'),
(10, '', NULL, '', 'ifeosamep@yahoo.com', '$2y$10$hyXtxtybloKiP2Y55P5UwuLGWkDen3iXW0pBBOFfxjfL0DsBWJoKy', NULL, '5', '', NULL, NULL, '41.190.31.220', '1507689362', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-11 02:36:02', '2017-10-11 02:36:02'),
(11, 'uchenna', NULL, 'nnodim', 'dechosenuchenna@gmail.com', '$2y$10$EqJ8KwQCX0xgKS1rVCrJbOr0qVCrdlPExvZeJLCbh0YPaLC4i4b4y', NULL, '5', '', NULL, NULL, '197.210.29.234', '1508524433', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-11 06:04:54', '2017-10-11 06:04:54'),
(12, 'Iredia', 'Ativie', 'Raymond', 'raymondativie@gmail.com', '$2y$10$qfL0pxGl.g43CXCwv.hW/.b9spZmpZiQey1qrcw5sGCo78a0i6XcO', NULL, '5', '2348151700676', NULL, NULL, '129.56.12.27', '1507704344', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-11 06:45:44', '2017-10-11 06:45:44'),
(13, 'Samuel', 'Ajayi', 'Bamidele', 'ajayibamidele60@gmail.com', '$2y$10$SBnCKg3DLByrzIr2096lQuLD3UcPEKX4KOFQlUwokB8qPj.nc.axe', NULL, '4', '2348167736394', '2017-10-11 06:55:38', '2017-10-11 06:57:14', '199.58.86.249', '1509466353', NULL, NULL, NULL, NULL, 'Nigeria', '0015', NULL, 'KPt6Zh9261StyaJUM3p8gKyfBzwFx0G1ygcQuJcCO9pmzvys0NNhqfFDjWv2', '2017-10-11 06:50:26', '2017-10-11 06:50:26'),
(14, '', NULL, '', 'danieluokon@gmail.com', '$2y$10$uTKrkNz22RwzGu.jLKW4d.xqD3UvN3dQfjKXus0Mwuu.iQj59lD9u', NULL, '4', '2347067281841', '2017-10-11 07:47:09', '2017-10-11 07:46:50', '169.159.101.221', '1507830489', NULL, NULL, NULL, NULL, 'Nigeria', '0708', NULL, NULL, '2017-10-11 07:44:33', '2017-10-11 07:44:33'),
(15, 'Nelson', 'Chinonso', 'Ezo-Pal', 'nelsonpal55@gmail.com', '$2y$10$mhPrqh00ivt3RkjeQECeN.PvqL5IE2ZUYGI5TuWO7rBYDEvTsi/0G', NULL, '3', '2348065298937', '2017-10-11 11:42:26', '2017-10-11 10:07:05', '107.178.33.20', '1507717416', NULL, NULL, NULL, NULL, 'Nigeria', '7228', NULL, NULL, '2017-10-11 09:41:15', '2017-10-11 11:49:52'),
(16, 'Chukwu', 'Emeka', 'Isaac', 'gizmodesign124@gmail.com', '$2y$10$D0NkH66rcUgK3norCt2IXe1EqeBV2j5r0qGirDldE5Ic/hWyBRaX.', NULL, '4', '2348109291222', '2017-10-11 10:04:02', '2017-10-20 14:52:37', '105.112.33.210', '1508511058', NULL, NULL, NULL, NULL, 'Nigeria', '1158', NULL, 'wByUpoiu5tEHCisU6fa1ZOHf9gZHiyXuziU3zIAvgv2okaqBBD8h5kFHgOk3', '2017-10-11 10:00:10', '2017-10-11 10:00:10'),
(17, '', NULL, '', 'uniquewill9@gmail.com', '$2y$10$Q9MjZ9z5ByqsPhVXTTUT0uQX1Q8qX5B.qCsJ19ak/aHBv9UI2fkOW', NULL, '5', '', NULL, NULL, '41.217.119.229', '1509649055', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, 'TDYvLh5W7wGZXedLr7ctF2uqqAKPAPDE9C2VC1K8wq4uNVmAEhSWSPOoTZcR', '2017-10-11 10:03:53', '2017-10-11 10:03:53'),
(18, 'Chukwunweike', 'Emmanuel', 'Nwaosaji', 'emmyifeanyi69@yahoo.com', '$2y$10$flYgcc2BROoqUpxFG97WHedlOibljX349t5a3uVTt4CJ.4xJZ5p2C', NULL, '5', '2348136849882', '2017-10-11 10:31:30', NULL, '197.211.61.22', '1507799681', NULL, NULL, NULL, NULL, 'Nigeria', '7195', NULL, NULL, '2017-10-11 10:10:54', '2017-10-11 10:10:54'),
(19, 'Innocent', 'Kenneth', 'Bill', 'jimkeneths@gmail.com', '$2y$10$BjSVR3Fmts7jzU3NWRnWquqkCGqEtRc00WiSZIiMFuV5H8wLObJwy', NULL, '5', '2347031960724', NULL, NULL, '105.112.42.24', '1507717598', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-11 10:26:38', '2017-10-11 10:26:38'),
(20, 'Johnson', 'Ebere', 'Mercy', 'winnymercy@gmail.com', '$2y$10$yeEbV2w5cW8mMnq51sweJOOWXZ8Mw7ozFtzuhLGehM1b8eBNQLsTu', NULL, '4', '2348109208353', '2017-10-11 10:35:29', '2017-10-11 10:33:31', '41.217.113.189', '1507717737', NULL, NULL, NULL, NULL, 'Nigeria', '7804', NULL, 'PD6HR54dnJyQBi44aHCLMgXwZdFXZp9rgxuojVbzEwdRpUO5scaRzl7NJslS', '2017-10-11 10:28:57', '2017-10-11 10:28:57'),
(21, 'Precious', NULL, 'Chukundah', 'the21stcenturyceo@gmail.com', '$2y$10$9.RU/AG6xZ7Yx3S/qLq3FOgEKKRCJE.lWm.MW1w/QaUXLqRfVrSKC', NULL, '3', '2348071799885', '2017-10-11 10:35:50', '2017-10-11 10:37:38', '141.101.98.165', '1510580372', NULL, NULL, NULL, NULL, 'Nigeria', '5277', NULL, 'u9GlY9NAD4HjJ0Eks8I1U4cKxowjnQFzr2eYJUAXwPs2iqzSgPUs7kyUNggT', '2017-10-11 10:34:03', '2017-10-11 11:43:05'),
(22, '', NULL, '', 'Ojimgerald@gmail.com', '$2y$10$BlMnmD/wAy3Bj77bLSvLT.Pu6JhnPQ2n0UWvRLFnsn03fiE7OZ/Z6', NULL, '5', '2348037495671', '2017-10-11 11:29:33', NULL, '197.210.46.24', '1507720009', NULL, NULL, NULL, NULL, 'Nigeria', '0178', NULL, NULL, '2017-10-11 11:06:49', '2017-10-11 11:06:49'),
(23, '', NULL, '', 'memesara73@gmail.com', '$2y$10$WUBPyEvs7IG06128cLpP.u9JBO2M3uETk2scVFrE4b/GiZ/Za2Gne', NULL, '5', '', NULL, NULL, '197.255.175.198', '1507726165', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-11 12:49:25', '2017-10-11 12:49:25'),
(24, '', NULL, '', 'favourgolden@gmail.com', '$2y$10$lgSp9eb1x6YgQCHbbchB7.mcmwImYXS6bs0tlsnpC5u.74V9Z5AHW', NULL, '5', '', NULL, NULL, '41.190.30.121', '1508002924', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, 'lsJ1iUHFvfUoGAhnXpl9GeSRIVsxixcVXEjyLC2OzC8KA5bkrFZU2MUS5Faw', '2017-10-11 20:46:29', '2017-10-11 20:46:29'),
(25, '', NULL, '', 'othuke.imonikiro@gmail.com', '$2y$10$Bnjucmi/wMTzydUOPQFd4u1lPgPt8pBkIoW9veyEbg6zf.TTKvbty', NULL, '3', '2348060605959', '2017-10-12 05:38:28', '2017-10-12 05:39:19', '197.211.57.119', '1509533662', NULL, NULL, NULL, NULL, 'Nigeria', '1772', NULL, NULL, '2017-10-12 04:44:39', '2017-10-12 07:35:05'),
(26, '', NULL, '', 'workah10@gmail.com', '$2y$10$BFZQT464C.LABN.G.k00FeBnnopimSCNF87dKYGRJxhVJM9j27YuO', NULL, '5', '', NULL, NULL, '141.0.13.32', '1507800134', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-12 09:22:14', '2017-10-12 09:22:14'),
(27, '', NULL, '', 'Chicomzy9@gmail.com', '$2y$10$BXIrt5p.cQgvkXCpA1uMmuM3JzGQ0RTPaVnvZb1U7moGVDOeHUfo2', NULL, '5', '', NULL, NULL, '141.0.13.32', '1507800228', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-12 09:23:48', '2017-10-12 09:23:48'),
(28, 'Chiemela', NULL, 'Chinedum', 'chiemelachinedum@gmail.com', '$2y$10$wznzRugXgG19e5EBTxN5aeqo.fO2GuaazjyhdfBK.qHTjJugpNo7.', NULL, '5', '2348034503911', '2017-10-12 11:12:57', NULL, '197.210.8.223', '1507806555', NULL, NULL, NULL, NULL, 'Nigeria', '7730', NULL, NULL, '2017-10-12 11:09:15', '2017-10-12 11:09:15'),
(29, 'Chibuike', 'Chukwuka', 'Asuzu', 'cloonicux@gmail.com', '$2y$10$bmvPl9DI1tU2kP/5kgB2/ObnTdFJzW7lonud8Dcb/60wX.K6hHf/a', NULL, '4', '2349031547781', '2017-10-12 14:42:34', '2017-10-12 14:39:48', '105.112.33.200', '1507870428', NULL, NULL, NULL, NULL, 'Nigeria', '3019', NULL, NULL, '2017-10-12 14:30:25', '2017-10-12 14:30:25'),
(30, '', NULL, '', 'marritboss@gmail.com', '$2y$10$ddYHv7Ej7XUfzCrgq8hzmuJc6xgGXYFvbAIbEeCaPuB/aVolMy57e', NULL, '5', '', NULL, NULL, '105.112.29.226', '1507902607', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-13 13:50:07', '2017-10-13 13:50:07'),
(31, 'Ifeanyichukwu', 'Kelly', 'Enweliku', 'ifeanyienweliku93@gmail.com', '$2y$10$wJ7mpwapX1kTzRI/HIV4EuGbCUpdSmgm4oqh1sfd017ChzKzqbWuu', NULL, '4', '2347064216314', '2017-10-14 12:38:05', '2017-10-14 12:38:48', '197.210.28.151', '1509215189', NULL, NULL, NULL, NULL, 'Nigeria', 'IFWALEGYIO', NULL, 'hCokEqOOyeKrlHXcUAP5eznaEDjWyAb90LKmtEtqUypHjQy0vCB5wbhNvhlc', '2017-10-14 12:30:48', '2017-10-14 12:30:48'),
(32, '', NULL, '', 'tallyy6453@gmail.com', '$2y$10$q9ZldQ0jQ0mXXKlm15uZn.dONPenbSg1rAjyJqhtJsASpJITWNBOi', NULL, '3', '2348039246478', '2017-10-14 14:55:45', '2017-10-14 14:56:23', '197.211.61.29', '1507992661', NULL, NULL, NULL, NULL, 'Nigeria', '5745', NULL, NULL, '2017-10-14 14:51:01', '2017-10-15 15:05:42'),
(33, 'Stanley', NULL, 'Ezeifesie', 'stanpay2@gmail.com', '$2y$10$BBTyX0ng2Gz4V0dhhbuzGOzTUMJIOcNfsgsSnI/gnvg7i2uP/lTEa', NULL, '4', '2347038629279', '2017-10-14 22:47:06', '2017-10-14 22:46:16', '105.112.25.157', '1508021005', NULL, NULL, NULL, NULL, 'Nigeria', '1858', NULL, NULL, '2017-10-14 22:43:25', '2017-10-14 22:43:25'),
(34, 'Joshua', 'Pius', 'Akpan', 'sevengreatgates@gmail.com', '$2y$10$84UCmLb/AvvH./Ync7t4DecSfwxuCcyzoMnC/zeWA8UmZP.XysUhu', NULL, '4', '2348183128059', '2017-10-15 18:40:58', '2017-10-15 18:41:50', '129.56.12.46', '1510136709', NULL, NULL, NULL, NULL, 'Nigeria', '0290', NULL, NULL, '2017-10-14 23:33:03', '2017-10-14 23:33:03'),
(41, '', NULL, '', 'helpnaira@gmail.com', '$2y$10$febJxNKD07G61q0lnjgvx.falEBhbZjLyKl3XaWlNGSxxvM9LfWQq', NULL, '5', '', NULL, NULL, '197.211.61.170', '1508601140', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-18 14:01:26', '2017-10-18 14:01:26'),
(35, '', NULL, '', 'temitayooyalowo55@hotmail.com', '$2y$10$JMSz17dwTS5.SKw2Z7p6Ne4AOkDBPhiFJ1hGR0xws9p146n3QCCUi', NULL, '3', '2348136972180', '2017-10-17 06:16:30', '2017-10-17 06:22:00', '107.77.225.77', '1510369833', NULL, NULL, NULL, NULL, 'Nigeria', '2102', NULL, 'KxNZPua3iEfuzC297EhZ24fLMfzvG6bvVwu6Pbnc2KVMy1biR3JqyWaHKY5z', '2017-10-17 06:12:38', '2017-10-17 07:19:30'),
(36, '', NULL, '', 'esangubong1.eu@gmail.com', '$2y$10$aO9/5rZcjHWKM0ejwR8EFOAC6HhqyjnAA0ivZSHs0gC.lPi9wQGXW', NULL, '5', '', NULL, NULL, '141.101.99.82', '1509547454', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-17 08:59:03', '2017-10-17 08:59:03'),
(37, '', NULL, '', 'egbujorekene@gmail.com', '$2y$10$ISXGrDXBzQ9FauD1fa2Z9.4TfhLlI5i4.gZFnIphh0zO5a1azsai2', NULL, '5', '', NULL, NULL, '197.211.57.126', '1508243716', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-17 12:35:16', '2017-10-17 12:35:16'),
(38, '', NULL, '', 'egbujorbenny@gmail.com', '$2y$10$aUKpUn.sdXlrnnRPZFNLK.I6InNPYsNS/19/qUrWwRZ.T1xb1gNGG', NULL, '5', '', NULL, NULL, '197.211.57.126', '1508947207', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-17 12:37:49', '2017-10-17 12:37:49'),
(39, '', NULL, '', 'tochukwualor@gmail.com', '$2y$10$VX9P5Bsy4QBWgoHjESZt8eZA1Aw5xLU06JDTQghFGk.yKtFZjNbve', NULL, '5', '2348165244395', NULL, NULL, '197.210.226.166', '1508246229', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-17 13:07:53', '2017-10-17 13:07:53'),
(40, 'Akorvueze', 'Ihenacho', 'Nwakanma', 'Akorvuezenwakanma@gmail.com', '$2y$10$9DCCwryyMDl4EGjy.inl.O/GpUn0Yns3RzLUP5VNrFZDcjqH/dExa', NULL, '3', '2348131905078', '2017-10-17 15:52:46', '2017-10-17 16:15:00', '197.211.63.162', '1508410938', NULL, NULL, NULL, NULL, 'Nigeria', '8408', NULL, 'erjgnJmBobtZCGYF6oRVP7H1IrYX62FRArMeFXXoUPL3e3T3InYzWDj46lAn', '2017-10-17 15:41:27', '2017-10-17 17:38:40'),
(42, 'justin', 'tochukwu', 'emedosi', 'justintochukwu5@gmail.com', '$2y$10$qlqOyOMDFRsTlMZtEvhy..tqxBFObqdxUJ5NZJuZtORiOE08gpsMS', NULL, '5', '2348063495382', NULL, NULL, '197.211.57.127', '1508779191', NULL, NULL, NULL, NULL, 'Nigeria', '5023', NULL, NULL, '2017-10-18 22:04:11', '2017-10-18 22:04:11'),
(43, '', NULL, '', 'starlogic@gmail.com', '$2y$10$ktSyGDR3pO7RYzgnxwoq0OQ7.xVEsYgL5ycYD9F6Yq6HJvHP6BOSa', NULL, '4', '2348187944462', '2017-10-19 17:54:15', '2017-10-19 17:54:48', '154.66.48.231', '1508435506', NULL, NULL, NULL, NULL, 'Nigeria', '5165', NULL, NULL, '2017-10-19 17:51:46', '2017-10-19 17:51:46'),
(44, '', NULL, '', 'uticlinton@gmail.com', '$2y$10$5RTcRw2URM9seZdz7WBvc.BdQnBUZ4c/OOrBlfVVJzG9/0gC6X5Wm', NULL, '5', '', NULL, NULL, '154.118.21.128', '1508443353', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-19 20:02:33', '2017-10-19 20:02:33'),
(45, 'Egbujor', 'Martins', 'Chizoba', 'chizobaegbujor@gmail.com', '$2y$10$.GFVFZqUUqNxj6I4w0/g5OH0BuU3SiSG8c0UM3q/gtd075xo7VuW.', NULL, '5', '2348030953098', NULL, NULL, '197.210.226.50', '1510173847', NULL, NULL, NULL, NULL, 'Nigeria', '1526', NULL, NULL, '2017-10-19 21:09:52', '2017-10-19 21:09:52'),
(47, 'Chidera', 'Dimabo', 'Chukunda', 'chukwundac@yahoo.co.uk', '$2y$10$LrJzGf7EH8CrQGkEP/UEU.rHQDxQu8IZozRtcGY5Muh.Ox8M5zj/m', NULL, '4', '2348069100517', '2017-10-20 10:57:36', '2017-10-20 10:58:06', '105.112.39.17', '1508509943', NULL, NULL, NULL, NULL, 'Nigeria', '9140', NULL, NULL, '2017-10-20 09:46:48', '2017-10-20 09:46:48'),
(48, 'Sokari', NULL, 'Gillis-Harry', 'sokariharry@gmail.com', '$2y$10$dmGStadp/J1g0HThQ.nBN.eykNqGXaT8bwXSU0pwdSv0.r6YYGRGq', NULL, '4', '2348035373375', '2017-10-20 14:47:37', '2017-10-20 14:50:25', '129.56.12.119', '1509969033', NULL, NULL, NULL, NULL, 'Nigeria', '5198', NULL, 'STTkaTgtegAMd2iTMSq1hD1JxYgej4cwqcUp0e8xMgOcWo3QhpRMmYacvWHb', '2017-10-20 14:44:06', '2017-10-20 14:44:06'),
(49, 'Unicorn', NULL, 'Bitcoin Exchange', 'unicornbitex@gmail.com', '$2y$10$FzxuxniBX9xw5HFf/76yResKSTUXkTHu81lxhFZtxMaIrUEEZ6t4m', NULL, '2', '2348056152316', '2017-10-21 11:38:21', '2017-10-21 11:41:49', '197.211.61.186', '1510387108', NULL, NULL, 'https://lh5.googleusercontent.com/-bnjOHcY045Q/AAAAAAAAAAI/AAAAAAAAAAA/ANQ0kf4dDEXdSHBQY4QG9YvM8s5pvFhwmA/s96-c/photo.jpg', NULL, 'Nigeria', '5815', NULL, 'Hq5WivR2FWaAakxvxwEiF6gjZpEMccdrVrcXe9knWgiSTEhOi7zfP5cNIi6F', '2017-10-21 11:37:55', '2017-10-21 11:48:16'),
(50, 'Ihunanyachi Thompson', NULL, 'Amadi', 'thompsonamadi@gmail.com', '$2y$10$zxJIj4qpaWwMOKnkWX0Deer7AhBLNxTnui6F5ypIV7ujus6D2JIaW', NULL, '3', '2349059669490', '2017-10-24 08:53:12', '2017-10-24 08:52:33', '129.56.12.46', '1510582030', NULL, NULL, 'https://lh4.googleusercontent.com/-HnT2IqgXFD8/AAAAAAAAAAI/AAAAAAAABE4/Zq1KPWDrSms/s96-c/photo.jpg', NULL, 'Nigeria', '3580', NULL, NULL, '2017-10-21 15:48:22', '2017-10-26 15:09:50'),
(51, '', NULL, '', 'Nwadikeoluchi69@gmail.com', '$2y$10$uuLdCFTjcXyZaSyUulNQAeLhk3Hd62Zo5flNe/k5QyJFIE5p9t0C2', NULL, '5', '', NULL, NULL, '197.211.61.174', '1508688936', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-22 16:15:36', '2017-10-22 16:15:36'),
(52, '', NULL, '', 'temitopetola@gmail.com', '$2y$10$2k5Q/xpl9WzHmV1IV6VBmu1PFiPx59lFs6Im2fm/8bU6150u7Dzwu', NULL, '5', '', NULL, NULL, '105.112.27.66', '1508698530', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-22 18:55:30', '2017-10-22 18:55:30'),
(53, 'Benjamin', NULL, 'Arugu', 'arugub@gmail.com', '$2y$10$9hCaswuTcjr.Jxy55aiTcuQXH6G0Jra54pAb0dCOzuIxj2Enh/mty', NULL, '4', '2348150806956', '2017-10-22 21:13:04', '2017-10-22 21:13:51', '105.112.45.11', '1510081934', NULL, NULL, NULL, NULL, 'Nigeria', '9717', NULL, NULL, '2017-10-22 20:48:01', '2017-10-22 20:48:01'),
(54, 'Samuel', 'Bayo', 'Arogbonlo', 'vocalsheavenly@yahoo.com', '$2y$10$zA2MVx8Siqj3/vrds8lW4e3xw1OZ0WvTWXHaJYDLOkFaNEG.XqUMu', NULL, '5', '', NULL, NULL, '105.112.20.249', '1508712174', NULL, NULL, NULL, NULL, 'Nigeria', '0735', NULL, NULL, '2017-10-22 22:42:53', '2017-10-22 22:42:53'),
(55, '', NULL, '', 'seguntundeoladimeji@gmail.com', '$2y$10$Knry32agOfI6cOMu9DWNV.5bHXSkBIkXB26FxmuIHUpOxG2mglxXS', NULL, '5', '', NULL, NULL, '105.112.40.174', '1508747357', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-23 08:29:17', '2017-10-23 08:29:17'),
(56, '', NULL, '', 'jeffregin09@gmail.com', '$2y$10$EqS8JOzHSW.rRrUTfdjJ/OVIGjxsT2V.wVLltJ4mz8wi7IlLYA.tS', NULL, '5', '', NULL, NULL, '93.72.182.31', '1508809153', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-24 01:39:13', '2017-10-24 01:39:13'),
(57, 'Chukwunenye', NULL, 'Nyenke', 'Cnyenke1@gmail.com', '$2y$10$mKb8SaDBBzHs6j7/n2xpe.86LDa.Aw5IYo5Qfi4s4BjqIamFxwl0y', NULL, '4', '2348085781574', '2017-10-24 08:53:57', '2017-10-24 08:56:49', '141.101.99.190', '1510226965', NULL, NULL, NULL, NULL, 'Nigeria', '0589', NULL, NULL, '2017-10-24 08:51:46', '2017-10-24 08:51:46'),
(58, '', NULL, '', 'georgeordu@gmail.com', '$2y$10$FqOiTRtIRHPKQe1pYvKZPu2MpmkSMLSXr3A687ED0wOuICRhQ485C', NULL, '5', '2348032750335', '2017-10-24 14:16:16', NULL, '197.211.61.23', '1508921510', NULL, NULL, NULL, NULL, 'Nigeria', '1518', NULL, NULL, '2017-10-24 14:14:46', '2017-10-24 14:14:46'),
(59, '', NULL, '', 'iamfrankcute@gmail.com', '$2y$10$hTvsnjzLFdHI7QB4RYkVNOSxt5rtz.THN6hr.fl3sobcJabmsYAwi', NULL, '5', '', NULL, NULL, '169.159.70.95', '1508859637', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-24 15:40:37', '2017-10-24 15:40:37'),
(60, '', NULL, '', 'ibimi.v@gmail.com', '$2y$10$8wPioXFPeSSX8bQxmjTQeu/YGWc3C.Y9EPIakDBHhzn1DkobegiZ6', NULL, '5', '', NULL, NULL, '197.210.227.188', '1508860146', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-24 15:49:06', '2017-10-24 15:49:06'),
(61, '', NULL, '', 'smootpc@gmail.com', '$2y$10$AUtD6lOgZTiDnk7Z7o6AveWF2MeAtnk4.eJgpMhYVyh0E2zZDaLqe', NULL, '5', '', NULL, NULL, '197.210.37.44', '1509136321', NULL, NULL, NULL, NULL, 'Nigeria', '5193', NULL, NULL, '2017-10-24 17:36:37', '2017-10-24 17:36:37'),
(62, 'Darlington', 'Chibueze', 'Akwuiwu', 'akwuiwudarlington@gmail.com', '$2y$10$.nvepD31t/0JxP0pFjvcmepCDkE/w3QqTKrpKYBdiIHo0/T2KgSxS', NULL, '4', '2348032790073', '2017-10-25 15:45:21', '2017-10-25 15:41:06', '197.211.61.48', '1509471103', NULL, NULL, NULL, NULL, 'Nigeria', '0486', NULL, NULL, '2017-10-25 15:32:49', '2017-10-25 15:32:49'),
(63, '', NULL, '', 'egbujortex@gmail.com', '$2y$10$T6E.yYGAohzhl/jPEt7OyONQZynAZwOD19cTB901DtY5SWkT2OXQu', NULL, '5', '2349051348696', NULL, NULL, '197.211.61.20', '1508948195', NULL, NULL, NULL, NULL, 'Nigeria', '8320', NULL, NULL, '2017-10-25 16:01:12', '2017-10-25 16:01:12'),
(64, 'Samuel', 'Nyebuchi', 'Owabie', 'owabiesamuel@gmail.com', '$2y$10$S6dRqbG9FYoN6nMiusyJlu7xctnMUVIjPHbmhb3uaLbbh/XKzjfcu', NULL, '5', '2348064067469', '2017-10-27 01:11:11', NULL, '197.210.227.208', '1509066579', NULL, NULL, NULL, NULL, 'Nigeria', '6136', NULL, NULL, '2017-10-25 20:21:08', '2017-10-25 20:21:08'),
(65, '', NULL, '', 'Ugondaelechi@gmail.com', '$2y$10$n.EqWbZO3HVWoiiO3rvMl.WLdSxTp1/Q9/SpnInvxKO.W4D59SBvy', NULL, '5', '', NULL, NULL, '105.112.29.173', '1509023374', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-26 13:09:34', '2017-10-26 13:09:34'),
(66, '', NULL, '', 'samueloyakhilome@gmail.com', '$2y$10$KbCPn3uKbyDMcsbryQKVX.bCeFlEPvW3x3NVLnXcXw2j5V0MlOopO', NULL, '5', '', NULL, NULL, '23.235.227.106', '1509122377', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-27 16:39:37', '2017-10-27 16:39:37'),
(67, 'Egbujor', 'Benedict', 'Kene', 'bennytex@gmail.com', '$2y$10$xLryqhchwz7RiZtTM8E45.6s4TBJKM8nEESkwybFyY/kkynAW/6cS', NULL, '5', '2349051348696', NULL, '2017-10-28 10:24:38', '197.211.57.126', '1509359216', NULL, NULL, NULL, NULL, 'Nigeria', '5190', NULL, NULL, '2017-10-28 10:20:09', '2017-10-28 10:20:09'),
(68, 'Ugo', NULL, 'Kingsley', 'ugokingsley5@gmail.com', '$2y$10$SExMilGcDyvoIhGc58jzXeNBZLMEA57Rt3fti8TrJNn3L3r70WRAW', NULL, '5', '', NULL, NULL, '105.112.42.137', '1509303227', NULL, NULL, 'https://lh4.googleusercontent.com/-GxYp3zRQulo/AAAAAAAAAAI/AAAAAAAAAHg/OjQOsDH-5qs/s96-c/photo.jpg', NULL, 'Nigeria', NULL, NULL, '69wWnckTxJdB1AVKnfoIIC5w96FCAJsw8ioQtcfKYi2gAvISOYdqGkhlEEZn', '2017-10-29 18:53:47', '2017-10-29 18:53:47'),
(69, 'Damilare', NULL, 'Oluwatoba', 'thobah.dhar@gmail.com', '$2y$10$tnyTkJSfsXRsnzXFyKwYoeJQ67i5tgmP9qQ470Gphe7EqDqsje4jS', NULL, '5', '', NULL, NULL, '41.216.166.2', '1509377012', NULL, NULL, NULL, NULL, 'Nigeria', '9950', NULL, NULL, '2017-10-30 09:40:11', '2017-10-30 09:40:11'),
(70, '', NULL, '', 'endiumunna@gmail.com', '$2y$10$vPqyEo9hC/1yKpZ4q3cP9On5BF3btqidi24TY5FbLThQYXagT/Yl6', NULL, '5', '', NULL, NULL, '129.56.12.60', '1509368708', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-30 13:05:08', '2017-10-30 13:05:08'),
(71, 'Egbujor', 'Benny', 'Kene', 'bennycash@gmail.com', '$2y$10$wjFoiLqCRKfRQ1rLk4gPqeuDUG00uvVNYgZcw8v8wjT36msI9ptma', NULL, '5', '2349051348696', NULL, '2017-10-30 14:25:17', '41.217.118.176', '1509458704', NULL, NULL, NULL, NULL, 'Nigeria', '2783', NULL, NULL, '2017-10-30 14:20:29', '2017-10-30 14:20:29'),
(72, 'Kelechi', NULL, 'Orji', 'kckross@yahoo.com', '$2y$10$5OlQplp2bflCCyNnCb5mEOUPWn92WExkkT/44GZfyu3GWhxYGcZmG', NULL, '4', '2348032705268', '2017-10-31 07:50:02', '2017-10-31 07:48:39', '197.210.45.128', '1509432936', NULL, NULL, NULL, NULL, 'Nigeria', '3695', NULL, NULL, '2017-10-31 06:55:36', '2017-10-31 06:55:36'),
(73, 'Benedict', 'Ekene', 'Egbujor', 'ekenebenedict21@gmail.com', '$2y$10$m3pEU.lN8gvS6VOFKINKRO.lgl4phCbT4IcDJG3vfo9a4UBcxHJXS', NULL, '4', '2349051348696', '2017-11-01 11:34:54', '2017-11-01 11:24:10', '197.210.226.28', '1510175454', NULL, NULL, NULL, NULL, 'Nigeria', '5601', NULL, NULL, '2017-11-01 11:18:45', '2017-11-01 11:18:45'),
(74, '', NULL, '', 'Joseph.o.madu@gmail.com', '$2y$10$ehEWpfvjRU4f7xwgiOe1iupQXHjmestjwDn5LXYQXkny4B.7YYtuu', NULL, '5', '', NULL, NULL, '141.101.76.219', '1509546306', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-01 14:25:06', '2017-11-01 14:25:06'),
(75, '', NULL, '', 'drichgirl84@gmail.com', '$2y$10$20YSVaU93SyWgP83Fpx8JOlqyXw6RO3OcKqgULgaHjQXRVa1f8jTu', NULL, '5', '', NULL, NULL, '162.158.154.204', '1509558882', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-01 17:54:42', '2017-11-01 17:54:42'),
(79, 'Godswill', 'Chimankpa', 'Nnoka', 'nnokag@gmail.com', '$2y$10$8D8TuXYZoM68GV73NgkW5O7NkN0rQX1m/O5Za/Xh88TWO.y7qeKdm', NULL, '5', '2348130856226', '2017-11-03 08:33:39', NULL, '105.112.36.144', '1509697659', NULL, NULL, NULL, NULL, 'Nigeria', '8690', NULL, NULL, '2017-11-03 08:27:39', '2017-11-03 08:27:39'),
(76, 'Osemuahu', 'Andrew', 'Okoeguale', 'okoeguale25@gmail.com', '$2y$10$YNz2eU.4Em1J9925ocNEouEjEQ7AOIx2BoCu.a6nvawZz4DYmqJ66', NULL, '5', '2347052619734', NULL, '2017-11-02 20:07:53', '197.211.60.38', '1509653105', NULL, NULL, NULL, NULL, 'Nigeria', '8210', NULL, NULL, '2017-11-02 20:05:05', '2017-11-02 20:05:05'),
(77, 'Kaluxe', NULL, 'Automobile', 'kaluxeautomobile@gmail.com', '$2y$10$Aepm.WK/Lcsdc4eFgo74Be0gRsTGIKRNW1dkTuwDQzICCUSQ9S9ma', NULL, '5', '', NULL, NULL, '197.211.61.2', '1509655862', NULL, NULL, 'https://lh4.googleusercontent.com/-2sUudBQ8Yuk/AAAAAAAAAAI/AAAAAAAAAAA/ANQ0kf56ghgJS6rHLca2iFaQPLe6R-7iag/s96-c/photo.jpg', NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-02 20:51:02', '2017-11-02 20:51:02'),
(78, '', NULL, '', 'odionolumhense@gmail.com', '$2y$10$ssENlX5iQLj6BVu8dqUn0OkiE/b9cRLbiz6fIyLBzCYqkcNLo/73K', NULL, '5', '', '2017-11-03 06:28:23', NULL, '154.118.44.14', '1509690172', NULL, NULL, NULL, NULL, 'Nigeria', '0990', NULL, NULL, '2017-11-03 06:22:52', '2017-11-03 06:22:52'),
(80, '', NULL, '', 'mailsforeze@gmail.com', '$2y$10$X6im/XVNzN8JVejVQ9hS1.JZh2aHqjE2yqImuWy575RupS6rZ6Yoq', NULL, '5', '', NULL, NULL, '162.158.154.60', '1509697883', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-03 08:31:23', '2017-11-03 08:31:23'),
(81, 'Kinikachi', 'Joscelyn', 'Okwu', 'ojk564@gmail.com', '$2y$10$pZ1g6RGRKzC/5bc2cNPNY.QaniwFYThqN.cMiIZJttelXPT.jGSHS', NULL, '5', '2347061596824', '2017-11-03 14:46:46', NULL, '141.101.107.155', '1509720203', NULL, NULL, NULL, NULL, 'Nigeria', '7126', NULL, 'h0O8z18b7ozKFhwID6Fy4yzNpKfzfYTz4IN5Ktfg6HEdFjZij34uN9IwByjm', '2017-11-03 12:28:08', '2017-11-03 12:28:08'),
(82, '', NULL, '', 'anietzreuben@gmail.com', '$2y$10$6BSzDELfaIYpRHtZO6ySt.afDjDXFZPDHjeFi4pdtVoRKMyFh0mMy', NULL, '4', '2347064552404', '2017-11-03 15:40:36', '2017-11-03 15:41:10', '41.58.87.113', '1509723311', NULL, NULL, NULL, NULL, 'Nigeria', '0265', NULL, NULL, '2017-11-03 15:35:10', '2017-11-03 15:35:10'),
(83, '', NULL, '', 'danielrose68@yahoo.com', '$2y$10$iAPRPi7IxjrX2myCndp5be.WYQXj4/3P16NDokRJome07RRE5DVoK', NULL, '5', '', NULL, NULL, '141.101.105.143', '1509747460', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-03 17:31:39', '2017-11-03 17:31:39'),
(103, 'OLUGBENGA', 'OLADAPO', 'ARUWAJOYE', 'aruwajoyeoladapox@gmail.com', '$2y$10$LrYOtfZFK8ajGerHefD1GeQFsb8iRxoxsjTRPC4xIGLEZaM2drSj6', NULL, '4', '2348067144837', '2017-11-08 16:25:07', '2017-11-08 16:25:43', '162.158.111.102', '1510158223', NULL, NULL, NULL, NULL, 'Nigeria', '0803', NULL, NULL, '2017-11-08 16:23:43', '2017-11-08 16:23:43'),
(84, '', NULL, '', 'theachiversgroup@gmail.com', '$2y$10$2aeQBBMcXbAJiJTwKdAvXeceSOydKkMdbumzkRNw6.lpikhx5fzoC', NULL, '5', '', NULL, NULL, '141.101.104.124', '1509738512', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-03 19:48:32', '2017-11-03 19:48:32'),
(91, 'Ifunanya', 'Ifunanya', 'Ezewuzie', 'ezewuzieifunanya@gmail.com', '$2y$10$aHyIYl5XwX6Vm6x3JX5RbuR/QyoNNr.HguLMlUeSpLDaKLLHEHdte', NULL, '5', '2348038649414', NULL, '2017-11-06 08:14:02', '141.101.99.148', '1509955809', NULL, NULL, NULL, NULL, 'Nigeria', '6017', NULL, NULL, '2017-11-06 08:10:09', '2017-11-06 08:10:09'),
(85, '', NULL, '', 'unicornng@mailinator.com', '$2y$10$AR5V8s8lJEwXU1zoq6hr4eGyLOanUA6SpQpMM5Q6OUmOSPabEHG0i', NULL, '5', '', NULL, NULL, '141.101.99.88', '1509806779', NULL, 'Yes', NULL, NULL, 'Nigeria', NULL, 'Yes', NULL, '2017-11-04 14:46:19', '2017-11-04 14:46:19'),
(86, '', NULL, '', 'petertriumphant007@gmail.cm', '$2y$10$OPYJaO.qqLVBQg3GKKuuO.0rdDhkT03WglQKkv63eO5tDImfqbjDu', NULL, '5', '', NULL, NULL, '141.101.99.118', '1509811241', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-04 16:00:39', '2017-11-04 16:00:39'),
(87, 'Eze', NULL, 'Maximus', 'ezechukwujindu@gmail.com', '$2y$10$9JXhyBAHBMoavhNdrw2b4eWRskRB4tPNZdIt4vGOrkabPgN8GlOoG', NULL, '5', '', NULL, NULL, '141.101.76.111', '1509849061', NULL, NULL, 'https://lh6.googleusercontent.com/-xyU5WfnoaPQ/AAAAAAAAAAI/AAAAAAAAAG0/4hzpAuSsDwM/s96-c/photo.jpg', NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-05 02:31:01', '2017-11-05 02:31:01'),
(88, '', NULL, '', 'tunde364@gmail.com', '$2y$10$L1XsUu705vdiDelYhqzlxOqxF9xtM08S9PL./gQcSaXuC3bKj03rC', NULL, '5', '2347089619998', NULL, NULL, '162.158.111.246', '1509861431', NULL, NULL, NULL, NULL, 'Nigeria', '1706', NULL, NULL, '2017-11-05 04:53:46', '2017-11-05 04:53:46'),
(89, '', NULL, '', 'esinniobiwa.quareeb@gmail.com', '$2y$10$gvwzuqYGfruNCIkUPVTgjutS5gS2i.JLHJkuyItO4NdxMHXMsZTNq', NULL, '5', '', NULL, NULL, '141.101.105.101', '1509863740', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-05 06:35:40', '2017-11-05 06:35:40'),
(90, '', NULL, '', 'cjonnyjoe@yahoo.com', '$2y$10$3LWcsUYRhYhZyIIqX1j.Xuqx//3.5eQGzEyBxAM/1bpIJp9kq3ARC', NULL, '5', '', NULL, NULL, '141.101.107.239', '1509881713', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-05 11:35:13', '2017-11-05 11:35:13'),
(92, 'LEONARD', 'CHINEDU', 'NNAJI', 'nnaji.l@yahoo.com', '$2y$10$71YzZj4JWT/vyCQh8dtJKO5nqnQpyTmPklA8CxsB5jYOQQGmqLPE2', NULL, '5', '', NULL, NULL, '141.101.98.135', '1509957507', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-06 08:38:27', '2017-11-06 08:38:27'),
(93, '', NULL, '', 'pec4cj@yahoo.com', '$2y$10$G31MlxfGddbuwC1/yFQHcet3nqcRo/I2m09um9nneV4LxGXISbVPK', NULL, '5', '', NULL, NULL, '141.101.76.225', '1509959512', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-06 09:11:52', '2017-11-06 09:11:52'),
(94, '', NULL, '', 'contactnosa@gmail.com', '$2y$10$yCiBIntUy45J0uaZT6ZkgOmPDbvjHAfZfyL/4gLKJS2WjFNrK6v8a', NULL, '5', '', NULL, NULL, '141.101.107.59', '1509965102', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-06 10:45:02', '2017-11-06 10:45:02'),
(95, '', NULL, '', 'nwadikesally@gmail.com', '$2y$10$5oXR9C9BsnZfYgtCSWrXJ.1kt/Md00r1020Iczzl07eULrshPy42K', NULL, '5', '', NULL, NULL, '162.158.154.12', '1509968744', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-06 11:45:43', '2017-11-06 11:45:43'),
(96, '', NULL, '', 'austn007@gmail.com', '$2y$10$iLPNH.ThItsQjjGuyKFAre9zDFugzFjGmmKbZbbH67RSRw4B.QtWa', NULL, '5', '', NULL, NULL, '141.101.104.208', '1509979309', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-06 14:41:49', '2017-11-06 14:41:49'),
(97, 'Emmanuel', NULL, 'Wogundu', 'nuel.impact@gmail.com', '$2y$10$tj/1zgOaQm2Tj58t/.cSJehIgvefultptgaLwdffltqlgYUfu0d4m', NULL, '4', '2348180682246', '2017-11-06 14:50:30', '2017-11-06 14:51:04', '162.158.111.234', '1509979370', NULL, NULL, NULL, NULL, 'Nigeria', '5098', NULL, NULL, '2017-11-06 14:42:50', '2017-11-06 14:42:50'),
(98, '', NULL, '', 'mjaysworld@yahoo.com', '$2y$10$JOqp5dWQpsFkmTsXkCc7ku1WEHR5FadIKu7EF0j5.mEfJH/GX1T6y', NULL, '5', '', NULL, NULL, '141.101.107.77', '1509997565', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-06 19:46:05', '2017-11-06 19:46:05'),
(99, 'Clinton', NULL, 'Agburum', 'clinsgfx@gmail.com', '$2y$10$dPaOmBS//tfOXBR8majqXO5WK3l.hKX1F8ip9bx1pSdSbT95BKQKS', NULL, '3', '2348167021738', '2017-11-06 20:01:47', '2017-11-07 09:03:37', '162.158.111.102', '1510140690', NULL, NULL, NULL, NULL, 'Nigeria', '0453', NULL, NULL, '2017-11-06 20:00:21', '2017-11-07 12:15:50'),
(100, 'Solomon', NULL, 'Mark', 'solomonmark83@gmail.com', '$2y$10$9AlpbFkwtC8lRI7mY8Obv.J41Ooz146BErDvvgI2nKZU9By4ALAWq', NULL, '5', '2347066565577', NULL, '2017-11-07 21:00:10', '105.112.43.121', '1510409211', NULL, NULL, NULL, NULL, 'Nigeria', '7810', NULL, NULL, '2017-11-07 20:38:54', '2017-11-07 20:38:54'),
(101, 'Kaborlobari', 'Kilsi', 'Gawa', 'kb4flexy1@gmail.com', '$2y$10$EYDbuvyBU0v6Mpgc5DiOkOqEvD.VK6G4qErxxp9PvSzXWpi7YSrF.', NULL, '5', '2347067404689', NULL, NULL, '162.158.234.21', '1510118633', NULL, NULL, NULL, NULL, 'Nigeria', '1101', NULL, NULL, '2017-11-08 05:19:26', '2017-11-08 05:19:26'),
(102, '', NULL, '', 'Talk2ugomatt@gmail.com', '$2y$10$dahhjLrvQPk.WEXXgmyRz.Ft2zQCqcb47bvBE.1sRevaFueRUY0/m', NULL, '5', '', NULL, NULL, '162.158.154.30', '1510120907', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-08 06:01:47', '2017-11-08 06:01:47'),
(104, '', NULL, '', 'ucheyasystempro@gmail.com', '$2y$10$1jvxwDfVvLs4ov4gNuSinucLN6c2k.WLEes1fnGqrbjnfMIEsb/BO', NULL, '5', '', NULL, NULL, '162.158.154.186', '1510163414', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-08 17:50:14', '2017-11-08 17:50:14'),
(105, 'Chizoba', 'Martinz', 'Egbujor', 'chizoba8000@gmail.com', '$2y$10$2Jv5eHe6GPNC0E1VqRyOmeOshzux/rJHrM6QQ9M759MWcZPwgIXtm', NULL, '4', '2348030953098', '2017-11-08 21:01:36', '2017-11-08 21:46:16', '197.210.227.98', '1510260029', NULL, NULL, NULL, NULL, 'Nigeria', '7559', NULL, NULL, '2017-11-08 20:56:24', '2017-11-08 20:56:24'),
(106, 'Ohiorenua', 'Andrew', 'Ezekiel', 'ohiz2007@gmail.com', '$2y$10$Veyw6e0fLmg8RAyFKA/O2e98D9KzD12GyUJ941ho2.xd6f826Ngs2', NULL, '5', '2349021006939', NULL, '2017-11-08 23:18:05', '141.101.107.17', '1510183521', NULL, NULL, NULL, NULL, 'Nigeria', '1213', NULL, NULL, '2017-11-08 23:09:27', '2017-11-08 23:09:27'),
(107, 'Adeolu', 'oluwatobi', 'Adetunji', 'aadeoluoluwatobi@gmail.com', '$2y$10$Y6uyLtU/iaWeEPg1cVwMLOxQ6vZIRAYzMfY0o8RHc6OBmomZrZZEu', NULL, '4', '2348062957916', '2017-11-09 05:34:53', '2017-11-09 05:36:36', '141.101.105.215', '1510205395', NULL, NULL, NULL, NULL, 'Nigeria', '0012', NULL, NULL, '2017-11-09 05:29:55', '2017-11-09 05:29:55'),
(108, '', NULL, '', 'stefanobo3310@gmail.com', '$2y$10$gf6kqaIPR79.Mb9alp9fVei7DK4gn4SJBhTVbUj.Kx/AogcUiobx.', NULL, '4', '2348064816942', '2017-11-09 11:47:09', '2017-11-09 11:47:40', '141.101.99.82', '1510227920', NULL, NULL, NULL, NULL, 'Nigeria', '2003', NULL, NULL, '2017-11-09 11:45:19', '2017-11-09 11:45:19'),
(109, '', NULL, '', 'ikechukwuj35@gmail.com', '$2y$10$jox1P05AyXdhNgfas8x/MO7BkcfCJEvQ41WZt17J8ndhyMqHDBapu', NULL, '5', '', NULL, NULL, '162.158.154.60', '1510237848', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-09 14:30:48', '2017-11-09 14:30:48'),
(110, 'Theodora', 'Onoshoagbe', 'Isola', 'theodoraisola@gmail.com', '$2y$10$Bqlexbl5X/jIZdVoh.4YjumZhi8hNv6.UJAfeJwVlRtjcyrnieT0.', NULL, '4', '2348050705215', '2017-11-09 15:48:28', '2017-11-09 15:50:34', '141.101.99.184', '1510242326', NULL, NULL, NULL, NULL, 'Nigeria', '0348', NULL, NULL, '2017-11-09 15:45:26', '2017-11-09 15:45:26'),
(111, 'Nick', NULL, 'Uche', 'tonienickkie@gmail.com', '$2y$10$vlvOKhY97CBhXX0h8Qvmj.n5FvB4l1XpMWmJVn4A8rqbrz30V6UKy', NULL, '5', '2347030195298', '2017-11-09 18:46:55', NULL, '141.101.107.23', '1510486600', NULL, NULL, 'https://lh3.googleusercontent.com/-6STNMRDCHBw/AAAAAAAAAAI/AAAAAAAAFkA/LIcewPepc88/s96-c/photo.jpg', NULL, 'Nigeria', '4670', NULL, NULL, '2017-11-09 18:43:22', '2017-11-09 18:43:22'),
(112, '', NULL, '', 'vincentnug@gmail.com', '$2y$10$p03FT0BA9Be0DjqdL7rF.Og5rom3KAI0lmY6GSA3Z7ycSVAMiAJTW', NULL, '5', '', NULL, NULL, '141.101.107.71', '1510398296', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-11 11:04:56', '2017-11-11 11:04:56'),
(113, 'Olaniyi', NULL, 'Ogedengbe', 'ogedengbetitus00@gmail.com', '$2y$10$Z15APaNGVyIaRqZ1jLCeYe.kVC4xx6B3MBC0v.y90vZYdUZQDSlvK', NULL, '4', '2348097148672', '2017-11-12 15:22:33', '2017-11-12 15:23:34', '172.68.189.222', '1510498862', NULL, NULL, NULL, NULL, 'Nigeria', '1510', NULL, 'V6ks0fn37IKY1tPFwudaQZLBGN69i9PTfSG8mC8dqs62By5avk4mng5oIawu', '2017-11-12 15:01:02', '2017-11-12 15:01:02'),
(114, '', NULL, '', 'mebirimebenezer@gmail.com', '$2y$10$EmDlsS67Kxgpon0sX8cIJO0.Fk9u8stx3yVag742XghyA8sIc3RBy', NULL, '5', '2348068002914', NULL, NULL, '141.101.98.57', '1510502294', NULL, NULL, NULL, NULL, 'Nigeria', '0028', NULL, NULL, '2017-11-12 15:58:13', '2017-11-12 15:58:13'),
(115, 'Etinosa', 'Precious', 'Evbuomwan', 'etinohhsa@gmail.com', '$2y$10$Ct0pQLXE16CMqniRrEHD5eEO/1opEQ4/tMW5OIPJPf4F.oLVucGh2', NULL, '5', '2348103541471', NULL, NULL, '141.101.107.245', '1510553041', NULL, NULL, NULL, NULL, 'Nigeria', '5525', NULL, NULL, '2017-11-13 06:04:01', '2017-11-13 06:04:01'),
(116, '', NULL, '', 'patienceifeosame@gmail.com', '$2y$10$yAqethB9eFkPR5kZ7emO7uhCszsCqM4snz83/9G.JCR8uomexMjLu', NULL, '5', '', NULL, NULL, '141.101.99.16', '1510569983', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-13 10:46:23', '2017-11-13 10:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bitcash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ether` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `user_id`, `email`, `wallet`, `btc`, `bitcash`, `ether`, `currency`, `status`, `deleted`, `created_at`, `updated_at`) VALUES
(1, '2', 'calmpress@gmail.com', 'ESIACMRSMC', '0.008867', NULL, NULL, '0', 'normal', '0', '2017-10-10 13:18:28', '2017-11-06 06:54:40'),
(2, '3', 'Ighokenneth@live.com', 'LOIHOCKGEN', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-10 19:13:02', NULL),
(3, '4', 'the21stcenturyceo8887777@gmail.com', 'TUACTE1YOC', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-10 19:21:20', NULL),
(4, '5', 'providenceifeosame@gmail.com', 'EDOCIMLVSE', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-10 19:30:17', NULL),
(5, '6', 'lite2fine@gmail.com', 'IL2IILTOEF', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-10 19:31:28', NULL),
(6, '7', 'emmyifeanyi01@gmail.com', 'EIAFGYIA0I', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-10 20:06:04', NULL),
(7, '8', 'unicorntest@gmail.com', 'TCOICRTNML', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-10 20:38:59', NULL),
(8, '9', 'erastususo@gmail.com', 'AISGUSSMCM', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-10 21:56:27', NULL),
(9, '10', 'ifeosamep@yahoo.com', 'FOICMMAHOO', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 02:36:12', NULL),
(10, '11', 'dechosenuchenna@gmail.com', 'CEEAHHMNIE', '0', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 06:04:56', NULL),
(11, '12', 'raymondativie@gmail.com', 'MOLAAERINO', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 06:45:44', NULL),
(12, '13', 'ajayibamidele60@gmail.com', 'MIDMALOAIJ', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 06:50:27', NULL),
(13, '14', 'danieluokon@gmail.com', 'MLMNCAONIU', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 07:44:33', NULL),
(14, '15', 'nelsonpal55@gmail.com', '5AMLOPIOCA', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 09:41:15', NULL),
(15, '16', 'gizmodesign124@gmail.com', 'AO1EOS4MZG', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 10:00:10', NULL),
(16, '17', 'uniquewill9@gmail.com', 'WILUMCUILG', '0', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 10:03:53', NULL),
(17, '18', 'emmyifeanyi69@yahoo.com', 'YMOFAIYHEI', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 10:10:55', NULL),
(18, '19', 'jimkeneths@gmail.com', 'ESOLTMNICE', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 10:26:38', NULL),
(19, '20', 'winnymercy@gmail.com', 'LIEONGACMC', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 10:28:58', NULL),
(20, '21', 'the21stcenturyceo@gmail.com', 'TERNTOC2GA', '0.03067942', NULL, NULL, '0.002920000006270100', 'normal', '0', '2017-10-11 10:57:09', '2017-11-11 08:10:27'),
(21, '22', 'Ojimgerald@gmail.com', 'EDAGIROMMJ', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 11:06:52', NULL),
(22, '23', 'memesara73@gmail.com', 'GM3ASCMELE', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 12:49:25', NULL),
(23, '24', 'favourgolden@gmail.com', 'MDVNUGCOLR', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 20:46:30', NULL),
(24, '25', 'othuke.imonikiro@gmail.com', 'LNIHTUAOME', '0.0000002770000000000246', NULL, NULL, '1.8627114999999321', 'normal', '0', '2017-10-12 04:44:40', NULL),
(25, '26', 'workah10@gmail.com', 'GCRH1MKIMO', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-12 09:22:15', NULL),
(26, '27', 'Chicomzy9@gmail.com', 'ZOMAHYGCCL', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-12 09:23:48', NULL),
(27, '28', 'chiemelachinedum@gmail.com', 'HMMALMLMDC', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-12 11:09:15', NULL),
(28, '29', 'cloonicux@gmail.com', 'UGOMXOOLCI', '0.00000010000000000027348', NULL, NULL, '0', 'normal', '0', '2017-10-12 14:30:26', '2017-10-13 06:13:26'),
(29, '1', 'titan.offline@gmail.com', 'FANFOCIETT', '0', NULL, NULL, '0', 'normal', '0', '2017-10-13 06:20:04', NULL),
(30, '30', 'marritboss@gmail.com', 'GMOIMLMTCR', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-13 13:50:09', NULL),
(31, '31', 'ifeanyienweliku93@gmail.com', 'OIYEM9AUNL', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-14 12:30:49', NULL),
(32, '32', 'tallyy6453@gmail.com', 'YIYML4GA5A', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-14 14:51:02', NULL),
(33, '33', 'stanpay2@gmail.com', 'APAAC2IOTG', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-14 22:43:26', NULL),
(34, '34', 'sevengreatgates@gmail.com', 'LAEGTOEMSI', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-14 23:33:04', NULL),
(35, '35', 'temitayooyalowo55@hotmail.com', 'MLTWCTOILO', '0.0018689699999999997', NULL, NULL, '0.00', 'normal', '0', '2017-10-17 06:12:38', NULL),
(38, '40', 'Akorvuezenwakanma@gmail.com', 'ANAELCWEMV', '8.673617379884035e-19', NULL, NULL, '0.00', 'normal', '0', '2017-10-17 15:41:28', NULL),
(36, '36', 'esangubong1.eu@gmail.com', 'OSAAOUBIME', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-17 08:59:04', NULL),
(37, '39', 'tochukwualor@gmail.com', 'GLOTUCWAOM', '0', NULL, NULL, '0.00', 'normal', '0', '2017-10-17 13:07:54', NULL),
(39, '41', 'helpnaira@gmail.com', 'MIPAGANOLE', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-18 14:01:26', NULL),
(42, '44', 'uticlinton@gmail.com', 'NIOICNOUGM', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-19 20:02:34', NULL),
(40, '42', 'justintochukwu5@gmail.com', 'STOJNKUILH', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-18 22:04:11', NULL),
(41, '43', 'starlogic@gmail.com', 'SMOTLAAGGL', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-19 17:51:47', NULL),
(43, '45', 'chizobaegbujor@gmail.com', 'LAHARGCZII', '000', NULL, NULL, '000', 'normal', '0', '2017-10-19 21:09:52', '2017-11-02 23:16:49'),
(45, '47', 'chukwundac@yahoo.co.uk', 'UACHONCKUH', '0', NULL, NULL, '14.417449999999917', 'normal', '0', '2017-10-20 09:46:52', NULL),
(46, '48', 'sokariharry@gmail.com', 'GRCYMAIAHS', '0.00', NULL, NULL, '0.0000009990035323426127', 'normal', '0', '2017-10-20 14:44:07', '2017-10-23 11:30:39'),
(47, '49', 'unicornbitex@gmail.com', 'OILGXCRICA', NULL, NULL, NULL, '93280', 'normal', '0', '2017-10-21 11:37:55', '2017-11-11 08:13:01'),
(48, '50', 'thompsonamadi@gmail.com', 'NHIOMILMOO', '0.1522602346275100', NULL, NULL, '0', 'normal', '0', '2017-10-21 15:48:23', '2017-11-13 09:35:29'),
(49, '51', 'Nwadikeoluchi69@gmail.com', 'NWKADH9GCA', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-22 16:15:37', NULL),
(50, '52', 'temitopetola@gmail.com', 'TOPTLOMMET', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-22 18:55:30', NULL),
(51, '53', 'arugub@gmail.com', 'URMGBMAAGU', '0.031', NULL, NULL, '972.5144299999956', 'normal', '0', '2017-10-22 20:48:02', '2017-10-22 22:46:19'),
(52, '54', 'vocalsheavenly@yahoo.com', 'LNLEOYMYEO', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-22 22:42:55', NULL),
(53, '55', 'seguntundeoladimeji@gmail.com', 'EIAEANOMEU', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-23 08:29:19', NULL),
(65, '67', 'bennytex@gmail.com', 'NMTAYNCIMG', '0.00', NULL, NULL, '4.336808689942018e-19', 'normal', '0', '2017-10-28 10:20:10', '2017-10-30 07:39:30'),
(54, '56', 'jeffregin09@gmail.com', 'NC0IOGLEIR', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-24 01:39:13', NULL),
(55, '57', 'Cnyenke1@gmail.com', 'KMCN1LNAEM', '0.12761668186', NULL, NULL, '0.00', 'normal', '0', '2017-10-24 08:51:47', NULL),
(57, '59', 'iamfrankcute@gmail.com', 'KNFAMTMCGE', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-24 15:40:38', NULL),
(56, '58', 'georgeordu@gmail.com', 'OAICGOROMR', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-24 14:14:47', NULL),
(58, '60', 'ibimi.v@gmail.com', 'IICAMMOVLG', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-24 15:49:08', NULL),
(59, '61', 'smootpc@gmail.com', 'OMCCLOTPAO', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-24 17:36:38', NULL),
(60, '62', 'akwuiwudarlington@gmail.com', 'DIWATMAICW', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-25 15:32:49', NULL),
(61, '63', 'egbujortex@gmail.com', 'GREMATJUCI', '0.00', NULL, NULL, '0.00009999999999998899', 'normal', '0', '2017-10-25 16:01:13', '2017-10-25 16:09:05'),
(62, '64', 'owabiesamuel@gmail.com', 'BEEOSGALUL', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-25 20:21:09', NULL),
(63, '65', 'Ugondaelechi@gmail.com', 'GUENIOLIOL', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-26 13:09:34', NULL),
(64, '66', 'samueloyakhilome@gmail.com', 'EYMAOIOOCA', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-27 16:39:39', NULL),
(66, '68', 'ugokingsley5@gmail.com', 'OGMYLENMOC', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-29 18:53:49', NULL),
(67, '69', 'thobah.dhar@gmail.com', 'BHMMLDHHOO', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-30 09:40:11', NULL),
(68, '70', 'endiumunna@gmail.com', 'AMNNUNCEUA', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-30 13:05:09', NULL),
(69, '71', 'bennycash@gmail.com', 'LISNMMYHEG', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-30 14:20:30', NULL),
(70, '72', 'kckross@yahoo.com', 'HASYOOOOCK', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-31 06:55:37', NULL),
(71, '73', 'ekenebenedict21@gmail.com', 'C1NEADCIEN', '0.09070222919757348', NULL, NULL, '0', 'normal', '0', '2017-11-01 11:20:03', '2017-11-08 10:46:08'),
(72, '74', 'Joseph.o.madu@gmail.com', 'PJGOOAEHIU', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-01 14:25:07', NULL),
(73, '75', 'drichgirl84@gmail.com', 'IL8OCLH4MR', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-01 17:54:43', NULL),
(74, '76', 'okoeguale25@gmail.com', 'GL2KOAOCEM', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-02 20:05:06', NULL),
(75, '78', 'odionolumhense@gmail.com', 'OOILNIMDCM', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-03 06:22:53', NULL),
(76, '79', 'nnokag@gmail.com', 'AMLOMOANKI', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-03 08:27:40', NULL),
(77, '80', 'mailsforeze@gmail.com', 'ARZSGIIOLC', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-03 08:31:24', NULL),
(78, '81', 'ojk564@gmail.com', 'IO6LJA45GM', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-03 12:28:10', NULL),
(79, '82', 'anietzreuben@gmail.com', 'BZCRGEMLAM', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-03 15:35:11', NULL),
(80, '83', 'danielrose68@yahoo.com', 'ERAO8NE6DO', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-03 17:31:44', NULL),
(81, '84', 'theachiversgroup@gmail.com', 'ROIMPCLEVA', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-03 19:48:34', NULL),
(99, '102', 'Talk2ugomatt@gmail.com', 'GMTUTLMTAK', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-08 06:01:48', NULL),
(82, '85', 'unicornng@mailinator.com', 'CLONIMRINR', '0.00', NULL, NULL, '0.00', 'processing', '0', '2017-11-04 14:46:20', '2017-11-06 06:53:08'),
(83, '86', 'petertriumphant007@gmail.cm', 'GINETEAHTL', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-04 16:00:43', NULL),
(84, '87', 'ezechukwujindu@gmail.com', 'DGUAUKEILH', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-05 02:31:03', NULL),
(85, '88', 'tunde364@gmail.com', 'GCTIA43NLU', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-05 04:53:47', NULL),
(86, '89', 'esinniobiwa.quareeb@gmail.com', 'EEWBQMELNC', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-05 06:35:41', NULL),
(87, '90', 'cjonnyjoe@yahoo.com', 'OHYYEJCOCN', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-05 11:35:22', NULL),
(88, '91', 'ezewuzieifunanya@gmail.com', 'ANINLIEEUZ', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-06 08:10:11', NULL),
(89, '92', 'nnaji.l@yahoo.com', 'OHYNCALJOI', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-06 08:38:29', NULL),
(90, '93', 'pec4cj@yahoo.com', 'OC4HJOPMCA', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-06 09:11:54', NULL),
(91, '94', 'contactnosa@gmail.com', 'STLIOCCMMO', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-06 10:45:03', NULL),
(92, '95', 'nwadikesally@gmail.com', 'AADOYEAMKM', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-06 11:45:45', NULL),
(93, '96', 'austn007@gmail.com', 'I0NMGTAA0C', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-06 14:41:49', NULL),
(94, '97', 'nuel.impact@gmail.com', 'GOCMNEALPC', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-06 14:42:52', NULL),
(95, '98', 'mjaysworld@yahoo.com', 'LACYOAOSMO', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-06 19:46:07', NULL),
(96, '99', 'clinsgfx@gmail.com', 'XSGCALICMO', '0.0000007200000000000609', NULL, NULL, '17.55077800000072', 'normal', '0', '2017-11-06 20:00:23', '2017-11-07 09:32:17'),
(97, '100', 'solomonmark83@gmail.com', 'C8MRNMSOOO', '0.0012186999999999999', NULL, NULL, '0.00', 'normal', '0', '2017-11-07 20:39:08', NULL),
(98, '101', 'kb4flexy1@gmail.com', 'KMMYEBIL4C', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-08 05:19:26', NULL),
(100, '103', 'aruwajoyeoladapox@gmail.com', 'UOAPAOGAMX', '000', NULL, NULL, '0.00', 'normal', '0', '2017-11-08 16:23:44', NULL),
(101, '104', 'ucheyasystempro@gmail.com', 'YAORMUEYLG', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-08 17:50:15', NULL),
(102, '105', 'chizoba8000@gmail.com', 'MGIB0ML8OO', '0.07284017332947774', NULL, NULL, '0', 'normal', '0', '2017-11-08 20:56:25', '2017-11-09 02:34:42'),
(103, '106', 'ohiz2007@gmail.com', 'AOL2I0IMZC', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-08 23:09:29', NULL),
(104, '107', 'aadeoluoluwatobi@gmail.com', 'DATAGWOIBO', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-09 05:29:56', NULL),
(105, '108', 'stefanobo3310@gmail.com', 'MBECOI3T1S', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-09 11:45:20', NULL),
(106, '109', 'ikechukwuj35@gmail.com', 'ALUJHM5OCE', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-09 14:30:49', NULL),
(107, '110', 'theodoraisola@gmail.com', 'LOAOAMIOOG', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-09 15:45:27', NULL),
(108, '111', 'tonienickkie@gmail.com', 'EEIIIGOCML', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-09 18:43:23', NULL),
(109, '112', 'vincentnug@gmail.com', 'NATNUMNEMG', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-11 11:04:57', NULL),
(110, '113', 'ogedengbetitus00@gmail.com', 'LTUTADOC0E', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-12 15:01:02', NULL),
(111, '114', 'mebirimebenezer@gmail.com', 'IACEMEMEOR', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-12 15:58:15', NULL),
(112, '115', 'etinohhsa@gmail.com', 'THNEOMALIM', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-13 06:04:02', NULL),
(113, '116', 'patienceifeosame@gmail.com', 'MLESACPOOT', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-13 10:46:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_completed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_funded` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`id`, `user_id`, `email`, `type`, `currency`, `amount`, `description`, `transaction_id`, `time_completed`, `account_funded`, `account_name`, `account_number`, `bank`, `status`, `deleted`, `created_at`, `updated_at`) VALUES
(1, '21', 'the21stcenturyceo@gmail.com', 'Instant transfer', 'currency', '20010', 'currency funds withdrawal NGN', 'wsYUJfpoAe', NULL, NULL, 'Precious Chukundah', '3056148476', 'First Bank of Nigeria Plc', 'complete', '0', '2017-10-16 12:57:37', '2017-10-16 13:00:38'),
(2, '2', 'calmpress@gmail.com', 'Unicorn transfer', 'btc', '0.0044', 'btc funds transfer', 'error', NULL, NULL, '', '3JtuXVyHWjxiZXzrqGp8DRX2xdDjPQmBhP', 'btc', 'complete', '0', '2017-10-18 19:42:44', '2017-10-18 20:03:33'),
(3, '47', 'chukwundac@yahoo.co.uk', '24 Hrs transfer', 'currency', '5800', 'currency funds withdrawal NGN', '6201LuYMDV', NULL, NULL, 'Chidera Chukunda', '3090181756', 'First Bank of Nigeria Plc', 'complete', '0', '2017-10-20 14:40:33', '2017-10-20 14:51:09'),
(4, '21', 'the21stcenturyceo@gmail.com', '24 Hrs transfer', 'currency', '43311.57', 'currency funds withdrawal NGN', '91B07A6rQJ', NULL, NULL, 'Precious Chukundah', '3056148476', 'First Bank of Nigeria Plc', 'complete', '0', '2017-10-23 10:19:45', '2017-10-23 10:20:26'),
(5, '50', 'thompsonamadi@gmail.com', 'Unicorn transfer', 'btc', '0.0098043', 'btc funds transfer', 'error', NULL, NULL, '', '1M24TNcvZHRJst3Zk96DVt2inpyVaEDq7d', 'btc', 'complete', '0', '2017-10-26 10:55:27', '2017-10-28 05:36:11'),
(6, '50', 'thompsonamadi@gmail.com', 'Unicorn transfer', 'btc', '0.00871673', 'btc funds transfer', 'error', NULL, NULL, '', '1M24TNcvZHRJst3Zk96DVt2inpyVaEDq7d', 'btc', 'complete', '0', '2017-10-26 11:39:36', '2017-10-28 05:36:20'),
(7, '50', 'thompsonamadi@gmail.com', 'Unicorn transfer', 'btc', '0.0011', 'btc funds transfer', 'error', NULL, NULL, '', '1M24TNcvZHRJst3Zk96DVt2inpyVaEDq7d', 'btc', 'complete', '0', '2017-10-26 14:50:06', '2017-10-28 05:36:35'),
(8, '50', 'thompsonamadi@gmail.com', 'Unicorn transfer', 'btc', '0.0014299999999999998', 'btc funds transfer', 'error', NULL, NULL, '', '1M24TNcvZHRJst3Zk96DVt2inpyVaEDq7d', 'btc', 'complete', '0', '2017-10-26 14:53:37', '2017-10-28 05:36:43'),
(9, '50', 'thompsonamadi@gmail.com', 'Unicorn transfer', 'btc', '0.10200000000000001', 'btc funds transfer', 'error', NULL, NULL, '', '1M24TNcvZHRJst3Zk96DVt2inpyVaEDq7d', 'btc', 'complete', '0', '2017-10-26 14:58:37', '2017-10-28 05:36:50'),
(10, '25', 'othuke.imonikiro@gmail.com', 'transfer btc', 'btc', '0.0008181', 'btc funds withdrawal', '8fd18c62ca6af05add9165ea2073f7d31c3c386d371807dcc1920f3553bf44dd', NULL, NULL, NULL, '1Ly5DuqZkAe6qosfzhTppB2jMUiZAKag6E', NULL, 'complete', '0', '2017-10-31 12:40:48', '2017-10-31 13:15:38'),
(11, '50', 'thompsonamadi@gmail.com', 'Unicorn transfer', 'btc', '0.0039655', 'btc funds transfer', '9d93d78717113442f2ab259a2edd0a679b24285a7d756ade77253ae69a303c37', NULL, NULL, '', '12kuC9pWLCCaJHHHwbRbqq6zEDLsBtze6k', 'btc', 'complete', '0', '2017-11-02 08:20:59', '2017-11-02 09:00:58'),
(12, '50', 'thompsonamadi@gmail.com', 'Unicorn transfer', 'btc', '0.14854464', 'btc funds transfer', 'f22d24702b20ac4b6c28808c8fe53f8c52b35f229fe868052a6c2a91dedab1e6', NULL, NULL, '', '195RtqAnvF4xdSw4Nubb6oYeBT1pC3ELHy', 'btc', 'complete', '0', '2017-11-02 17:34:10', '2017-11-02 22:10:38'),
(13, '57', 'Cnyenke1@gmail.com', 'Unicorn transfer', 'btc', '0.054938', 'btc funds transfer', '0a7b4a78f019e3bfc2f73fcd09508ca3e32b7a2535ce3841373ee891fcfb504a', NULL, NULL, '', '195RtqAnvF4xdSw4Nubb6oYeBT1pC3ELHy', 'btc', 'complete', '0', '2017-11-03 15:25:03', '2017-11-03 20:15:39'),
(14, '50', 'thompsonamadi@gmail.com', 'Unicorn transfer', 'btc', '0.041479', 'btc funds transfer', 'ded823a9179979643c2e59caa33e4a7cab8e9ac5be707c6b83447bf770ace261', NULL, NULL, '', '18FXFmc3rPuQmU3VhqWvYPJnjRjRdjushv', 'btc', 'complete', '0', '2017-11-04 12:33:28', '2017-11-04 13:20:38'),
(15, '99', 'clinsgfx@gmail.com', '24 Hrs transfer', 'currency', '6100', 'currency funds withdrawal NGN', 'WzS2l0Zlv8', NULL, NULL, 'Clinton Agburum', '0128146090', 'Guaranty Trust Bank Plc', 'complete', '0', '2017-11-07 12:24:37', '2017-11-07 12:57:20'),
(16, '50', 'thompsonamadi@gmail.com', 'Unicorn transfer', 'btc', '0.1252473', 'btc funds transfer', 'd0351a48fab1c7f5588d2e4cdc7cf2ce6c61b8ac69cfd1d2394d0ec2d35f8635', NULL, NULL, '', '1DgMJgEr9K9RuZjTMvxGFZR5TKejqxkJQH', 'btc', 'complete', '0', '2017-11-07 14:06:12', '2017-11-07 14:15:38'),
(17, '57', 'Cnyenke1@gmail.com', 'Unicorn transfer', 'btc', '0.0478', 'btc funds transfer', '8627b204908219bb51b9fac73c7d43aec5b03a04edbfa0e943c3442d8d62898c', NULL, NULL, '', '1LDoXkevgMd9JGcjed7fpAzPgG1inCC5Cc', 'btc', 'complete', '0', '2017-11-07 14:15:26', '2017-11-07 14:30:57'),
(18, '50', 'thompsonamadi@gmail.com', 'Unicorn transfer', 'btc', '0.004983030000000001', 'btc funds transfer', 'd5951f5583eb279b08994dd246fb5ca2b5117aa608077140eb939474daab2b78', NULL, NULL, '', '1HAf67JgMix3QgejRDYnGDxGckMNQVDTLY', 'btc', 'complete', '0', '2017-11-13 08:27:04', '2017-11-13 09:20:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exchange`
--
ALTER TABLE `exchange`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exchange_market`
--
ALTER TABLE `exchange_market`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_read`
--
ALTER TABLE `news_read`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pre_launch`
--
ALTER TABLE `pre_launch`
  ADD UNIQUE KEY `prim` (`id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recieve`
--
ALTER TABLE `recieve`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upgrades`
--
ALTER TABLE `upgrades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `exchange`
--
ALTER TABLE `exchange`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `exchange_market`
--
ALTER TABLE `exchange_market`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `news_read`
--
ALTER TABLE `news_read`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `pre_launch`
--
ALTER TABLE `pre_launch`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `recieve`
--
ALTER TABLE `recieve`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;
--
-- AUTO_INCREMENT for table `upgrades`
--
ALTER TABLE `upgrades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;--
-- Database: `try`
--
CREATE DATABASE IF NOT EXISTS `try` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `try`;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `user_id`, `email`, `type`, `account_name`, `account_number`, `bank`, `status`, `created_at`, `updated_at`) VALUES
(1, '4', 'the21stcenturyceo@gmail.com', 'currency', ' ', '0083471190', 'Diamond Bank Plc', 'active', '2017-10-11 09:44:24', '2017-10-11 09:44:24'),
(2, '15', 'nelsonpal55@gmail.com', 'btc', 'Nelson Ezo-Pal', '142RjWuuugonVorXQ9rfgrY8mAt9DUMqMC', 'bitcoin', 'active', '2017-10-11 11:47:30', '2017-10-11 11:47:30'),
(3, '15', 'nelsonpal55@gmail.com', 'currency', 'Nelson Ezo-Pal', '0065650195', 'Diamond Bank Plc', 'active', '2017-10-11 11:48:17', '2017-10-11 11:48:17'),
(4, '25', 'othuke.imonikiro@gmail.com', 'btc', ' ', '18RaG1oYzG7UYx47cWTUeJkvZwKioyRVsh', 'bitcoin', 'deleted', '2017-10-12 05:52:32', '2017-10-16 20:03:07'),
(5, '25', 'othuke.imonikiro@gmail.com', 'currency', ' ', '0001292717', 'Diamond Bank Plc', 'active', '2017-10-12 05:56:19', '2017-10-12 05:56:19'),
(6, '25', 'othuke.imonikiro@gmail.com', 'currency', ' ', '0131274562', 'Guaranty Trust Bank Plc', 'active', '2017-10-12 06:19:25', '2017-10-12 06:19:25'),
(7, '29', 'cloonicux@gmail.com', 'currency', 'Chibuike Asuzu', '6551215558', 'Fidelity Bank Plc', 'active', '2017-10-13 04:59:27', '2017-10-13 04:59:27'),
(8, '29', 'cloonicux@gmail.com', 'btc', 'Chibuike Asuzu', '14pqSs6ygEFnv7KX31kPmXAuFNp6Cm79bJ', 'bitcoin', 'active', '2017-10-13 05:00:44', '2017-10-13 05:00:44'),
(9, '21', 'the21stcenturyceo@gmail.com', 'currency', 'Precious Chukundah', '3056148476', 'First Bank of Nigeria Plc', 'active', '2017-10-14 21:35:48', '2017-10-14 21:35:48'),
(10, '25', 'othuke.imonikiro@gmail.com', 'btc', ' ', '1BsYoBQQhY4yrDMchwiQLzywH6sQZLRgCD', 'bitcoin', 'deleted', '2017-10-16 20:02:50', '2017-10-31 12:40:07'),
(11, '35', 'temitayooyalowo55@hotmail.com', 'currency', ' ', '0013491805', 'Guaranty Trust Bank Plc', 'deleted', '2017-10-17 06:25:41', '2017-10-20 04:26:24'),
(12, '35', 'temitayooyalowo55@hotmail.com', 'btc', ' ', '18hMVzGjvSjL8VmgMou39ax5iReZJQdP4u', 'bitcoin', 'active', '2017-10-17 06:29:33', '2017-10-17 06:29:33'),
(13, '40', 'Akorvuezenwakanma@gmail.com', 'btc', 'Akorvueze Nwakanma', 'the21stcenturyceo@gmail.com', 'bitcoin', 'active', '2017-10-17 16:34:28', '2017-10-17 16:34:28'),
(14, '40', 'Akorvuezenwakanma@gmail.com', 'btc', 'Akorvueze Nwakanma', '1C1tNr9pWMLdohXAHw8XP2UccUGYpcJHji', 'bitcoin', 'active', '2017-10-17 16:48:40', '2017-10-17 16:48:40'),
(15, '40', 'Akorvuezenwakanma@gmail.com', 'currency', 'Akorvueze Nwakanma', '0707314262', 'Access Bank Nigeria Plc', 'active', '2017-10-17 16:50:57', '2017-10-17 16:50:57'),
(16, '21', 'the21stcenturyceo@gmail.com', 'btc', 'Precious Chukundah', '1Ucadij4VhLM3dP88LUWKKNcqN2wFHrSD', 'bitcoin', 'active', '2017-10-18 11:45:28', '2017-10-18 11:45:28'),
(17, '47', 'chukwundac@yahoo.co.uk', 'currency', 'Chidera Chukunda', '3090181756', 'First Bank of Nigeria Plc', 'active', '2017-10-20 11:01:30', '2017-10-20 11:01:30'),
(18, '53', 'arugub@gmail.com', 'currency', 'Benjamin Arugu', '2055046633', 'United Bank for Africa Plc', 'active', '2017-10-22 21:40:44', '2017-10-22 21:40:44'),
(19, '5', 'providenceifeosame@gmail.com', 'currency', 'Providence Ifeosame', '2110746621', 'Zenith Bank International', 'active', '2017-10-25 10:07:45', '2017-10-25 10:07:45'),
(20, '50', 'thompsonamadi@gmail.com', 'btc', 'Ihunanyachi Thompson Amadi', 'Gold', 'bitcoin', 'deleted', '2017-10-26 10:52:06', '2017-10-26 13:13:46'),
(21, '72', 'kckross@yahoo.com', 'currency', 'Kelechi Orji', '0040971954', 'Guaranty Trust Bank Plc', 'active', '2017-10-31 07:51:13', '2017-10-31 07:51:13'),
(22, '25', 'othuke.imonikiro@gmail.com', 'btc', ' ', '1Ly5DuqZkAe6qosfzhTppB2jMUiZAKag6E', 'bitcoin', 'active', '2017-10-31 12:39:55', '2017-10-31 12:39:55'),
(23, '82', 'anietzreuben@gmail.com', 'currency', ' ', '0043208013', 'Guaranty Trust Bank Plc', 'deleted', '2017-11-03 15:42:22', '2017-11-03 15:42:34'),
(24, '99', 'clinsgfx@gmail.com', 'currency', 'Clinton Agburum', '0128146090', 'Guaranty Trust Bank Plc', 'active', '2017-11-07 09:36:16', '2017-11-07 09:36:16');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_funded` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`id`, `user_id`, `email`, `type`, `currency`, `amount`, `description`, `transaction_id`, `account_funded`, `account_name`, `account_number`, `bank`, `status`, `deleted`, `created_at`, `updated_at`) VALUES
(1, '6', 'lite2fine@gmail.com', 'Cash Deposit', 'currency', '20000', 'IL2IILTOEF', 'C0Tu8V4e1s', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-10 19:33:30', '2017-10-17 09:54:44'),
(2, '14', 'danieluokon@gmail.com', 'Cash Deposit', 'currency', '50000', 'MLMNCAONIU', '1ydF1cRlW0', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-11 07:50:04', '2017-10-17 09:54:14'),
(3, '14', 'danieluokon@gmail.com', 'Electronic Funds Transfer', 'currency', '50000', 'MLMNCAONIU', 'pc2g0R5kgZ', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-11 07:50:27', '2017-10-17 09:54:26'),
(4, '14', 'danieluokon@gmail.com', 'bitcoin deposit', 'btc', '0', '3DQB3wbEhzRXEedG18TwMEqGRfwqDGvY5C', 'kEvni5eM70', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-11 07:50:40', '2017-10-17 22:06:13'),
(5, '14', 'danieluokon@gmail.com', 'bitcoin deposit', 'btc', '0', '3BMek5aZFtHjM4r855f3dpKL5gyboRK3pk', '7Oze0RHFb5', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-11 07:50:54', '2017-10-11 11:49:17'),
(6, '21', 'the21stcenturyceo@gmail.com', 'Electronic Funds Transfer', 'currency', '20000', 'TERNTOC2GA', 'ef02SgR7Zs', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-11 11:24:12', '2017-10-11 11:25:06'),
(7, '2', 'calmpress@gmail.com', 'Cash Deposit', 'currency', '11000', 'ESIACMRSMC', '7Rfiy31m6w', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-11 11:35:46', '2017-10-11 12:56:30'),
(8, '15', 'nelsonpal55@gmail.com', 'Electronic Funds Transfer', 'currency', '10000', '5AMLOPIOCA', 'nnjxV50GS1', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-11 11:51:22', '2017-10-17 22:06:26'),
(9, '15', 'nelsonpal55@gmail.com', 'bitcoin deposit', 'btc', '0', '3PT6mbzdGEfKe2ByWyojWncBVBgUpyy7jk', 'A977MQca0s', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-11 11:53:17', '2017-10-17 22:30:00'),
(10, '21', 'the21stcenturyceo@gmail.com', 'Electronic Funds Transfer', 'currency', '30000', 'TERNTOC2GA', 'c25THkZnt8', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-11 11:53:32', '2017-10-11 11:54:24'),
(11, '2', 'calmpress@gmail.com', 'Cash Deposit', 'currency', '17000', 'ESIACMRSMC', 'F7z2ME272f', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-11 11:53:40', '2017-10-12 14:48:06'),
(12, '2', 'calmpress@gmail.com', 'bitcoin deposit', 'btc', '0', '3FSzDMt1vF8JEKG8BDHdwN5rh9wWXeWbmu', 'V6iSpFZy26', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-11 12:57:05', '2017-10-23 13:56:49'),
(13, '17', 'uniquewill9@gmail.com', 'bitcoin deposit', 'btc', '0', '3FLvo5bo4atyytUctsQY1z7eZb89txAJMj', 'o0aCxw7L51', NULL, NULL, NULL, NULL, 'complete', '0', '2017-10-12 02:54:15', '2017-10-18 20:47:32'),
(14, '25', 'othuke.imonikiro@gmail.com', 'bitcoin deposit', 'btc', '0', '3BW1JYdMYYj8Z4fK4e8NcRuVcSKod5PEzp', '1KPNsq759i', NULL, NULL, NULL, NULL, 'complete', '0', '2017-10-12 08:45:42', '2017-10-18 20:52:52'),
(15, '25', 'othuke.imonikiro@gmail.com', 'bitcoin deposit', 'btc', '0', '3Fj25fXZWsVGr966hjovi3H6nuQMEQdKjJ', '4YyJFNebL7', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-12 09:03:39', '2017-10-25 15:20:05'),
(16, '21', 'the21stcenturyceo@gmail.com', 'bitcoin deposit', 'btc', '0.0116', '3Gr3Pe9eTGRK5ZihwZXuDNT8m1ip1vV8Q9', 'P250iKTPen', NULL, NULL, NULL, NULL, 'complete', '0', '2017-10-12 15:59:32', '2017-10-14 21:30:54'),
(17, '2', 'calmpress@gmail.com', 'Cash Deposit', 'currency', '11000', 'ESIACMRSMC', 'mNL0po7E7e', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-12 22:39:45', '2017-10-12 22:40:15'),
(18, '2', 'calmpress@gmail.com', 'Cash Deposit', 'currency', '11000', 'ESIACMRSMC', 'j2synt7246', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-12 22:39:48', '2017-10-12 22:40:51'),
(19, '2', 'calmpress@gmail.com', 'Cash Deposit', 'currency', '11000', 'ESIACMRSMC', 'kM1vVgjz9C', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-12 22:39:50', '2017-10-12 22:40:42'),
(20, '2', 'calmpress@gmail.com', 'Cash Deposit', 'currency', '11000', 'ESIACMRSMC', '0c1n917dAw', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-12 22:39:52', '2017-10-12 22:40:35'),
(21, '2', 'calmpress@gmail.com', 'Cash Deposit', 'currency', '11000', 'ESIACMRSMC', 'gl8DZvWwQs', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-12 22:39:53', '2017-10-12 22:40:28'),
(22, '2', 'calmpress@gmail.com', 'Cash Deposit', 'currency', '11000', 'ESIACMRSMC', 'R52D9VGpW8', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-12 22:39:55', '2017-10-12 22:40:21'),
(23, '29', 'cloonicux@gmail.com', 'Electronic Funds Transfer', 'currency', '11000', 'UGOMXOOLCI', 'FF502vCLSh', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-13 04:55:32', '2017-10-13 04:56:59'),
(24, '29', 'cloonicux@gmail.com', 'Electronic Funds Transfer', 'currency', '10000', 'UGOMXOOLCI', '2zcgIC68Oq', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-13 04:57:24', '2017-10-13 05:21:01'),
(25, '29', 'cloonicux@gmail.com', 'Electronic Funds Transfer', 'currency', '10000', 'UGOMXOOLCI', 'dC1L60b0W6', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-13 04:57:46', '2017-10-13 04:58:25'),
(26, '31', 'ifeanyienweliku93@gmail.com', 'Electronic Funds Transfer', 'currency', '367500', 'OIYEM9AUNL', 'hj4ZgTP2ju', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-14 12:42:22', '2017-10-15 15:06:19'),
(27, '31', 'ifeanyienweliku93@gmail.com', 'Electronic Funds Transfer', 'currency', '367500', 'OIYEM9AUNL', '6ygAR7W4ze', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-14 12:43:18', '2017-10-17 22:06:01'),
(28, '34', 'sevengreatgates@gmail.com', 'Electronic Funds Transfer', 'currency', '10000', 'LAEGTOEMSI', 'c1pF0cyzH3', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-15 18:47:52', '2017-10-18 09:58:53'),
(29, '34', 'sevengreatgates@gmail.com', 'Electronic Funds Transfer', 'currency', '10000', 'LAEGTOEMSI', 'P0yOxyO5k1', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-15 18:47:55', '2017-10-31 14:07:47'),
(30, '21', 'the21stcenturyceo@gmail.com', 'Electronic Funds Transfer', 'currency', '200000', 'TERNTOC2GA', 'T1F00AKbqZ', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-16 16:08:28', '2017-10-16 19:40:37'),
(31, '21', 'the21stcenturyceo@gmail.com', 'Electronic Funds Transfer', 'currency', '50000', 'TERNTOC2GA', 'K11M3xVBUI', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-16 19:40:10', '2017-10-16 19:40:45'),
(32, '2', 'calmpress@gmail.com', 'Cash Deposit', 'currency', '10000', 'ESIACMRSMC', '86zcF7mLrw', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-16 20:44:46', '2017-10-17 14:19:21'),
(33, '2', 'calmpress@gmail.com', 'Cash Deposit', 'currency', '10000', 'ESIACMRSMC', 'ngC1uTli3Q', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-16 20:57:34', '2017-10-17 14:26:11'),
(34, '21', 'the21stcenturyceo@gmail.com', 'Electronic Funds Transfer', 'currency', '30000', 'TERNTOC2GA', 'eunEv041wc', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-17 07:10:14', '2017-10-17 09:54:53'),
(35, '21', 'the21stcenturyceo@gmail.com', 'Electronic Funds Transfer', 'currency', '98200', 'TERNTOC2GA', '2p5Cv7y5kd', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-17 11:27:05', '2017-10-17 11:27:50'),
(36, '39', 'tochukwualor@gmail.com', 'Electronic Funds Transfer', 'currency', '10000', 'GLOTUCWAOM', 'OMVZ8sU167', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-17 13:14:29', '2017-10-25 15:41:30'),
(37, '39', 'tochukwualor@gmail.com', 'bitcoin deposit', 'btc', '0', '32TbUAg4EZt12SqR6MfvCgsfYun4PJi92U', 'hXpVIXPk5R', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-17 13:15:42', '2017-11-01 14:38:28'),
(38, '2', 'calmpress@gmail.com', 'Electronic Funds Transfer', 'currency', '11000', 'ESIACMRSMC', 'FG4Fbp1o6y', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-17 14:31:04', '2017-10-17 14:31:39'),
(39, '40', 'Akorvuezenwakanma@gmail.com', 'bitcoin deposit', 'btc', '0.0064', '39J77X4LgukqM2iYHaeaH1KQ6Cc79eLBwe', '350loPdyv5', NULL, NULL, NULL, NULL, 'complete', '0', '2017-10-17 15:59:13', '2017-10-17 16:30:47'),
(40, '43', 'starlogic@gmail.com', 'Electronic Funds Transfer', 'currency', '100000', 'SMOTLAAGGL', 'j7Ze77mDBv', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-19 17:55:57', '2017-10-31 17:42:27'),
(41, '35', 'temitayooyalowo55@hotmail.com', 'Electronic Funds Transfer', 'currency', '10000', 'MLTWCTOILO', '6yHfzz60Gc', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-20 04:27:46', '2017-10-23 13:56:33'),
(42, '47', 'chukwundac@yahoo.co.uk', 'bitcoin deposit', 'btc', '0.0032', '3HdhQuofUHhTXswvLRKVLnAfTjP9L8GJfj', 's45v1KNQ04', NULL, NULL, NULL, NULL, 'complete', '0', '2017-10-20 09:49:06', '2017-10-20 09:55:31'),
(43, '2', 'calmpress@gmail.com', 'Cash Deposit', 'currency', '11000', 'ESIACMRSMC', 'meD1ey4EyH', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-20 11:58:56', '2017-10-20 11:59:35'),
(44, '21', 'the21stcenturyceo@gmail.com', 'Electronic Funds Transfer', 'currency', '500000', 'TERNTOC2GA', 'C0Tkm15Pgc', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-20 14:18:00', '2017-10-20 14:20:51'),
(45, '21', 'the21stcenturyceo@gmail.com', 'Electronic Funds Transfer', 'currency', '100000', 'TERNTOC2GA', 'I8jrEEGGwe', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-22 02:23:38', '2017-10-22 14:50:36'),
(46, '53', 'arugub@gmail.com', 'Electronic Funds Transfer', 'currency', '70000', 'URMGBMAAGU', 'Ttf7lIL71j', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-22 21:29:14', '2017-10-22 22:46:19'),
(47, '53', 'arugub@gmail.com', 'Electronic Funds Transfer', 'currency', '70000', 'URMGBMAAGU', '5457C02uGB', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-22 22:15:49', '2017-10-22 22:32:16'),
(48, '54', 'vocalsheavenly@yahoo.com', 'Electronic Funds Transfer', 'currency', '20000', 'LNLEOYMYEO', '17Say126Dq', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-22 22:46:55', '2017-10-31 14:07:59'),
(49, '48', 'sokariharry@gmail.com', 'Cash Deposit', 'currency', '100000', 'GRCYMAIAHS', 'z0AaG3Qp7L', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-23 11:21:51', '2017-10-23 11:30:39'),
(50, '50', 'thompsonamadi@gmail.com', 'Electronic Funds Transfer', 'currency', '1000000', 'NHIOMILMOO', 'qWy8oSVr0F', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-24 08:55:47', '2017-10-24 09:11:24'),
(51, '57', 'Cnyenke1@gmail.com', 'Electronic Funds Transfer', 'currency', '500000', 'KMCN1LNAEM', '9ia06jF2eP', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-24 09:04:22', '2017-10-24 09:11:39'),
(52, '50', 'thompsonamadi@gmail.com', 'Electronic Funds Transfer', 'currency', '1500400', 'NHIOMILMOO', 'ZeahL6sy84', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-24 09:14:28', '2017-10-24 13:56:01'),
(53, '35', 'temitayooyalowo55@hotmail.com', 'Cash Deposit', 'currency', '50000', 'MLTWCTOILO', 'eV7IU1J45R', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-24 19:14:19', '2017-11-01 14:38:11'),
(54, '21', 'the21stcenturyceo@gmail.com', 'Electronic Funds Transfer', 'currency', '500200', 'TERNTOC2GA', '8A1oMp07Py', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-25 05:44:59', '2017-10-25 06:03:24'),
(55, '63', 'egbujortex@gmail.com', 'Electronic Funds Transfer', 'currency', '90000', 'GREMATJUCI', 'uGk0CJStq0', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-25 16:03:53', '2017-10-25 16:09:05'),
(56, '63', 'egbujortex@gmail.com', 'Electronic Funds Transfer', 'currency', '890000', 'GREMATJUCI', '7CyiD8L44k', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-25 16:18:57', '2017-10-25 16:34:17'),
(57, '50', 'thompsonamadi@gmail.com', 'bitcoin deposit', 'btc', '0.0122626', '3QUruu9UrKWHUNY8enPLFeHjZ3aG9Xrvyv', 'FlxM3ko7PV', NULL, NULL, NULL, NULL, 'complete', '0', '2017-10-26 15:11:45', '2017-10-26 15:15:37'),
(58, '21', 'the21stcenturyceo@gmail.com', 'bitcoin deposit', 'btc', '0.0093', '3CWbjfjpWrh7VqJwTVPJW5WPtyGSv4AADZ', 'ED0VGX8ozO', NULL, NULL, NULL, NULL, 'complete', '0', '2017-10-26 15:16:28', '2017-10-26 19:15:38'),
(59, '2', 'calmpress@gmail.com', 'Cash Deposit', 'currency', '20000', 'ESIACMRSMC', 'fAMQxLqC5C', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-26 15:39:38', '2017-10-26 15:40:27'),
(60, '67', 'bennytex@gmail.com', 'Electronic Funds Transfer', 'currency', '50000', 'NMTAYNCIMG', '9P0galgQJx', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-28 11:33:36', '2017-10-30 07:37:41'),
(61, '67', 'bennytex@gmail.com', 'Electronic Funds Transfer', 'currency', '90000', 'NMTAYNCIMG', 'VyesJJEo52', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-28 11:39:50', '2017-10-28 11:42:51'),
(62, '67', 'bennytex@gmail.com', 'Electronic Funds Transfer', 'currency', '90000', 'NMTAYNCIMG', 'IKAj9le69B', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-28 11:40:42', '2017-10-28 11:42:23'),
(63, '67', 'bennytex@gmail.com', 'Electronic Funds Transfer', 'currency', '100000', 'NMTAYNCIMG', 'yB2d6pW0i8', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-10-30 07:34:06', '2017-10-30 07:39:30'),
(64, '71', 'bennycash@gmail.com', 'Electronic Funds Transfer', 'currency', '100000', 'LISNMMYHEG', '003T6ucfMZ', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-30 14:28:59', '2017-10-31 14:07:37'),
(65, '71', 'bennycash@gmail.com', 'Electronic Funds Transfer', 'currency', '90000', 'LISNMMYHEG', '453e0YpA4g', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-30 14:29:47', '2017-10-31 14:07:40'),
(66, '21', 'the21stcenturyceo@gmail.com', 'bitcoin deposit', 'btc', '0', '3FVE2dqAZkJrTacht93odwVtGoNoP7huuA', '0msAHBl1Q2', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-31 14:00:21', '2017-10-31 17:42:44'),
(67, '21', 'the21stcenturyceo@gmail.com', 'Electronic Funds Transfer', 'currency', '10000', 'TERNTOC2GA', 'Ui51q1G6KU', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'cancelled', '1', '2017-10-31 17:39:30', '2017-10-31 17:42:35'),
(68, '73', 'ekenebenedict21@gmail.com', 'Electronic Funds Transfer', 'currency', '100000', 'C1NEADCIEN', 'kX55GsP8ri', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-11-01 11:24:49', '2017-11-01 14:39:12'),
(69, '73', 'ekenebenedict21@gmail.com', 'Electronic Funds Transfer', 'currency', '90000', 'C1NEADCIEN', 'C1125S2tgO', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-11-01 11:25:21', '2017-11-01 14:39:04'),
(70, '45', 'chizobaegbujor@gmail.com', 'Electronic Funds Transfer', 'currency', '70000', 'LAHARGCZII', '1w6OmFxYpP', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-11-02 23:16:07', '2017-11-02 23:16:49'),
(71, '84', 'theachiversgroup@gmail.com', 'Electronic Funds Transfer', 'currency', '10000', 'ROIMPCLEVA', 'FtfC57tyIZ', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'pending', '0', '2017-11-03 20:12:26', '2017-11-03 20:12:26'),
(72, '84', 'theachiversgroup@gmail.com', 'bitcoin deposit', 'btc', '0', '34CDZS5BuZAdxFBsS6AesvLe7GFggLNy8C', 'dEs329bJS8', NULL, NULL, NULL, NULL, 'pending', '0', '2017-11-03 20:12:50', '2017-11-03 20:12:50'),
(73, '49', 'unicornbitex@gmail.com', 'Electronic Funds Transfer', 'currency', '20000', 'OILGXCRICA', 'hoTxoe08s3', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-11-04 14:07:55', '2017-11-04 14:10:18'),
(74, '49', 'unicornbitex@gmail.com', 'Electronic Funds Transfer', 'currency', '200000', 'OILGXCRICA', 'VOBPeIPD5q', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-11-04 14:08:35', '2017-11-04 14:10:30'),
(75, '85', 'unicornng@mailinator.com', 'bitcoin deposit', 'btc', '0', '34qqAdspp6xKAWHQpc6W4D9EVKU6VG9d7S', '54QKhs1q6h', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-04 14:49:01', '2017-11-08 22:07:04'),
(76, '35', 'temitayooyalowo55@hotmail.com', 'bitcoin deposit', 'btc', '0.00206897', '3DGKeshEvGmf1SDc7o8re8kZhupLLftECg', '8jhNHXWGqr', NULL, NULL, NULL, NULL, 'complete', '0', '2017-11-06 03:50:02', '2017-11-06 03:55:31'),
(77, '99', 'clinsgfx@gmail.com', 'bitcoin deposit', 'btc', '0.00278572', '36hGkUq3EPP4hz7mujJpfMMoSEm5BEvKZu', 'hy6hutnA81', NULL, NULL, NULL, NULL, 'complete', '0', '2017-11-06 20:03:22', '2017-11-06 20:10:41'),
(78, '35', 'temitayooyalowo55@hotmail.com', 'Electronic Funds Transfer', 'currency', '10000', 'MLTWCTOILO', 'KefS45l5tv', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'pending', '0', '2017-11-07 06:11:15', '2017-11-07 06:11:15'),
(79, '3', 'Ighokenneth@live.com', 'bitcoin deposit', 'btc', '0', '3L21KJvLEjEfD9rDXKXAUetgQFLWgqMWNo', 'LEKe199OyG', NULL, NULL, NULL, NULL, 'pending', '0', '2017-11-07 08:55:54', '2017-11-07 08:55:54'),
(80, '53', 'arugub@gmail.com', 'Electronic Funds Transfer', 'currency', '10000', 'URMGBMAAGU', 'sxf10EmfSO', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'pending', '0', '2017-11-07 19:21:05', '2017-11-07 19:21:05'),
(81, '100', 'solomonmark83@gmail.com', 'bitcoin deposit', 'btc', '0.0014187', '37xTm4nfQUwAVtTq96czwMbFjad84M2Kqc', 'zRONN9p18y', NULL, NULL, NULL, NULL, 'complete', '0', '2017-11-07 21:05:29', '2017-11-07 21:35:29'),
(82, '73', 'ekenebenedict21@gmail.com', 'Electronic Funds Transfer', 'currency', '50000', 'C1NEADCIEN', 'vsdMb1yIQ0', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-11-08 09:57:14', '2017-11-08 10:46:08'),
(83, '103', 'aruwajoyeoladapox@gmail.com', 'bitcoin deposit', 'btc', '0.01747', '3EWqMdqvqrHEc3WvHkbQYoeuuriz51Civ6', 'DIEUWt8gfQ', NULL, NULL, NULL, NULL, 'complete', '0', '2017-11-08 16:28:18', '2017-11-08 21:35:33'),
(84, '105', 'chizoba8000@gmail.com', 'Electronic Funds Transfer', 'currency', '70000', 'MGIB0ML8OO', 'q10hxe5wjP', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'complete', '0', '2017-11-08 22:09:25', '2017-11-09 02:34:42'),
(85, '108', 'stefanobo3310@gmail.com', 'bitcoin deposit', 'btc', '0', '3NMfqR5neqCFANZWAmrE5YgUkmUw2c1Vui', 'YqR9S0jTl1', NULL, NULL, NULL, NULL, 'pending', '0', '2017-11-09 12:04:26', '2017-11-09 12:04:26'),
(86, '116', 'patienceifeosame@gmail.com', 'Electronic Funds Transfer', 'currency', '151000', 'MLESACPOOT', 'f1IfxcufWR', NULL, 'Chigisoft Limited', '0255824326', 'GTB', 'pending', '0', '2017-11-13 10:51:11', '2017-11-13 10:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `exchange`
--

CREATE TABLE `exchange` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exchange`
--

INSERT INTO `exchange` (`id`, `currency`, `type`, `country`, `created_at`, `updated_at`) VALUES
(1, '1914911', 'buy', 'Nigeria', NULL, NULL),
(2, '1914911', 'sell', 'Nigeria', NULL, NULL),
(3, '700000', 'buy', 'Nigeria', NULL, NULL),
(4, '500000', 'sell', 'Nigeria', NULL, NULL),
(5, '2500000', 'sell', 'Nigeria', NULL, NULL),
(6, '2300000', 'sell', 'Nigeria', NULL, NULL),
(7, '2700000', 'sell', 'Nigeria', NULL, NULL),
(8, '2000000', 'buy', 'Nigeria', NULL, NULL),
(9, '3000000', 'sell', 'Nigeria', NULL, NULL),
(10, '6000', 'sell', 'Nigeria', NULL, NULL),
(11, '2000000', 'sell', 'Nigeria', NULL, NULL),
(12, '2200000', 'buy', 'Nigeria', NULL, NULL),
(13, '2300000', 'buy', 'Nigeria', NULL, NULL),
(14, '2100000', 'buy', 'Nigeria', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exchange_market`
--

CREATE TABLE `exchange_market` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_left` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_created` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recieved_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exchange_market`
--

INSERT INTO `exchange_market` (`id`, `user_id`, `email`, `type`, `currency`, `btc`, `amount_left`, `country`, `time_created`, `description`, `transaction_id`, `recieved_by`, `status`, `deleted`, `created_at`, `updated_at`) VALUES
(1, '21', 'the21stcenturyceo@gmail.com', 'buy', '1914911', '0.00494', '0.00494', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-13 13:24:09', '2017-10-13 13:24:30'),
(2, '21', 'the21stcenturyceo@gmail.com', 'sell', '1914911', '0.00494', '0.00494', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-13 13:24:46', '2017-10-14 05:22:22'),
(3, '50', 'thompsonamadi@gmail.com', 'buy', '700000', '0.22222', '0.22222', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-24 14:22:56', '2017-10-24 15:11:58'),
(4, '50', 'thompsonamadi@gmail.com', 'sell', '500000', '0.22222', '0.22222', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-24 15:12:53', '2017-10-24 15:13:21'),
(5, '2', 'calmpress@gmail.com', 'sell', '2500000', '0.008', '0.008', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-26 15:43:36', '2017-10-29 19:13:08'),
(6, '21', 'the21stcenturyceo@gmail.com', 'sell', '2300000', '0.01', '0.01', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-28 07:53:42', '2017-10-31 17:48:26'),
(7, '2', 'calmpress@gmail.com', 'sell', '2500000', '0.006', '0.006', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-29 17:52:53', '2017-10-29 19:12:55'),
(8, '2', 'calmpress@gmail.com', 'sell', '2500000', '0.004', '0.004', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-29 19:13:35', '2017-10-29 19:14:30'),
(9, '21', 'the21stcenturyceo@gmail.com', 'sell', '2500000', '0.01', '0.01', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-31 17:49:12', '2017-10-31 17:49:48'),
(10, '21', 'the21stcenturyceo@gmail.com', 'sell', '2500000', '0.01', '0.01', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-31 17:50:30', '2017-10-31 17:50:43'),
(11, '21', 'the21stcenturyceo@gmail.com', 'sell', '2500000', '0.01', '0.01', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-31 17:51:01', '2017-10-31 17:52:03'),
(12, '21', 'the21stcenturyceo@gmail.com', 'sell', '2500000', '0.01', '0.01', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-31 17:51:55', '2017-10-31 17:52:08'),
(13, '2', 'calmpress@gmail.com', 'sell', '2500000', '0.004', '0.004', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-31 18:09:16', '2017-10-31 18:09:52'),
(14, '21', 'the21stcenturyceo@gmail.com', 'sell', '2500000', '0.01', '0.01', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-10-31 18:18:06', '2017-11-01 19:08:12'),
(15, '21', 'the21stcenturyceo@gmail.com', 'sell', '2500000', '0.01', '0.01', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-01 19:30:06', '2017-11-01 19:30:14'),
(16, '21', 'the21stcenturyceo@gmail.com', 'sell', '2700000', '0.01', '0.01', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-04 10:35:48', '2017-11-08 06:30:53'),
(17, '49', 'unicornbitex@gmail.com', 'buy', '2000000', '0.05', '0.05', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-04 14:18:03', '2017-11-10 15:01:30'),
(18, '2', 'calmpress@gmail.com', 'sell', '3000000', '0.008', '0.008', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-06 06:54:02', '2017-11-06 06:54:40'),
(19, '99', 'clinsgfx@gmail.com', 'sell', '6000', '0.002585', '0.002585', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-07 09:15:12', '2017-11-07 09:30:03'),
(20, '99', 'clinsgfx@gmail.com', 'sell', '2000000', '0.002585', '0.002585', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-07 09:30:26', '2017-11-07 09:32:17'),
(21, '49', 'unicornbitex@gmail.com', 'buy', '2200000', '0.04', '0.04', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-11 07:59:06', '2017-11-11 07:59:23'),
(22, '49', 'unicornbitex@gmail.com', 'buy', '2200000', '0.000146', '0.000146', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-11 07:59:46', '2017-11-11 08:12:49'),
(23, '49', 'unicornbitex@gmail.com', 'buy', '2300000', '0.00186', '0.00186', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-11 08:00:39', '2017-11-11 08:12:53'),
(24, '49', 'unicornbitex@gmail.com', 'buy', '2100000', '0.0032', '0.0032', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-11 08:01:13', '2017-11-11 08:12:56'),
(25, '49', 'unicornbitex@gmail.com', 'buy', '2300000', '0.007', '0.007', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-11 08:02:23', '2017-11-11 08:13:01'),
(26, '21', 'the21stcenturyceo@gmail.com', 'sell', '2700000', '0.017', '0.017', 'Nigeria', NULL, NULL, NULL, NULL, 'cancelled', '1', '2017-11-11 08:04:28', '2017-11-11 08:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `reply` varchar(1000) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`, `reply`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Dike El', 'calmpress@gmail.com', 'ok', 'we are working on attending to u', '2017-10-12 17:50:02', '2017-10-23 10:47:02', 'active'),
(2, 'Dike El', 'calmpress@gmail.com', 'nnm ,m ,m ,', NULL, '2017-10-12 17:54:07', '2017-10-12 17:54:07', 'active'),
(3, 'Dike El', 'calmpress@gmail.com', 'hello admin', 'hello to u mr dyke', '2017-10-12 22:38:07', '2017-10-23 10:49:37', 'active'),
(4, 'Nwakanma Akorvueze Ihenacho', 'Akorvuezenwakanma@gmail.com', 'I\'m new on your platform and I\'m trying to verify my phone number but the verification message is not being delivered on my phone.', NULL, '2017-10-17 15:56:06', '2017-10-17 15:56:06', 'active'),
(5, 'Sokari Gillis-Harry', 'sokariharry@gmail.com', 'I\'m trying to upgrade my account to no avail. The ID upload do not seem to be functional and the middle name field is also mandatory, which is problematic for people like me that don\'t have a middle name.', NULL, '2017-11-03 09:12:18', '2017-11-03 09:12:18', 'active'),
(6, 'Sokari Gillis-Harry', 'sokariharry@gmail.com', 'I\'m trying to upgrade my account to no avail. The ID upload do not seem to be functional and the middle name field is also mandatory, which is problematic for people like me that don\'t have a middle name.', NULL, '2017-11-03 18:11:36', '2017-11-03 18:11:36', 'active'),
(7, 'Clinton Agburum', 'clinsgfx@gmail.com', 'I have transferred some coins to test the site, I have verified my email, but no code is coming to my phone after several attempts.', NULL, '2017-11-06 20:37:36', '2017-11-06 20:37:36', 'active');

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
(1, '2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(100) NOT NULL,
  `news` varchar(1000) DEFAULT NULL,
  `views` varchar(100) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `news`, `views`, `created_at`, `updated_at`) VALUES
(1, 'Do you know Unicorn gives you #100 for every new person that you refer to the platform?. Invite your friends today and earn. Invest in the currency of the future.', '5', '2017-10-23 10:10:49', '2017-10-23 10:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `news_read`
--

CREATE TABLE `news_read` (
  `id` int(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `views` varchar(100) DEFAULT NULL,
  `news_id` varchar(100) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_read`
--

INSERT INTO `news_read` (`id`, `email`, `views`, `news_id`, `created_at`, `updated_at`) VALUES
(9, 'providenceifeosame@gmail.com', '5', '1', '2017-10-23 10:34:34', '2017-10-25 10:09:10'),
(8, 'the21stcenturyceo@gmail.com', '5', '1', '2017-10-23 10:22:52', '2017-10-23 12:14:05'),
(7, 'unicornbitex@gmail.com', '5', '1', '2017-10-23 10:20:45', '2017-11-04 14:06:04'),
(6, 'calmpress@gmail.com', '5', '1', '2017-10-23 10:11:22', '2017-10-26 15:42:17'),
(10, 'sokariharry@gmail.com', '5', '1', '2017-10-23 11:21:27', '2017-11-04 14:21:03'),
(11, 'othuke.imonikiro@gmail.com', '5', '1', '2017-10-23 15:19:12', '2017-10-31 11:40:35'),
(12, 'thompsonamadi@gmail.com', '5', '1', '2017-10-24 08:56:16', '2017-10-24 14:27:27'),
(13, 'Cnyenke1@gmail.com', '5', '1', '2017-10-24 14:08:12', '2017-10-24 15:08:05'),
(14, 'titan.offline@gmail.com', '5', '1', '2017-10-24 14:21:23', '2017-10-30 21:57:06'),
(15, 'temitayooyalowo55@hotmail.com', '5', '1', '2017-10-24 19:14:00', '2017-11-11 03:10:37'),
(16, 'akwuiwudarlington@gmail.com', '3', '1', '2017-10-25 17:16:40', '2017-10-31 17:31:51'),
(17, 'arugub@gmail.com', '4', '1', '2017-10-26 12:46:14', '2017-11-07 19:14:13'),
(18, 'unicorntest@gmail.com', '1', '1', '2017-10-26 15:18:45', '2017-10-26 15:19:46'),
(19, 'ifeanyienweliku93@gmail.com', '0', '1', '2017-10-28 18:26:34', '2017-10-28 18:26:34'),
(20, 'kckross@yahoo.com', '0', '1', '2017-10-31 07:51:34', '2017-10-31 07:51:34'),
(21, 'ajayibamidele60@gmail.com', '0', '1', '2017-10-31 16:12:41', '2017-10-31 16:12:41'),
(22, 'ekenebenedict21@gmail.com', '5', '1', '2017-11-02 06:22:47', '2017-11-02 06:29:17'),
(23, 'erastususo@gmail.com', '5', '1', '2017-11-02 14:14:52', '2017-11-03 18:06:05'),
(24, 'anietzreuben@gmail.com', '0', '1', '2017-11-03 15:43:29', '2017-11-03 15:43:29'),
(25, 'nuel.impact@gmail.com', '2', '1', '2017-11-06 14:52:17', '2017-11-06 14:56:31'),
(26, 'clinsgfx@gmail.com', '5', '1', '2017-11-07 09:06:05', '2017-11-07 09:33:06'),
(27, 'sevengreatgates@gmail.com', '1', '1', '2017-11-08 10:25:12', '2017-11-08 10:26:32'),
(28, 'aruwajoyeoladapox@gmail.com', '2', '1', '2017-11-08 16:32:30', '2017-11-08 16:33:17'),
(29, 'chizoba8000@gmail.com', '5', '1', '2017-11-08 21:50:11', '2017-11-08 21:53:14'),
(30, 'aadeoluoluwatobi@gmail.com', '1', '1', '2017-11-09 05:40:05', '2017-11-09 05:42:09'),
(31, 'theodoraisola@gmail.com', '0', '1', '2017-11-09 15:52:07', '2017-11-09 15:52:07');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(11) NOT NULL,
  `idd` int(11) NOT NULL,
  `iddd` int(11) NOT NULL,
  `it` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pre_launch`
--

CREATE TABLE `pre_launch` (
  `id` int(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pre_launch`
--

INSERT INTO `pre_launch` (`id`, `email`) VALUES
(1, 'calmpress@gmail.con'),
(2, 'calmpress@gmail.com'),
(3, ''),
(4, 'precious@chigisoft.com'),
(5, 'oparahdc@gmail.com'),
(6, 'Mociousng@gmail.com'),
(7, 'emmyifeanyi69@yahoo.com'),
(8, 'tonienickkie@gmail.com'),
(9, 'icycoolmike@gmail.com'),
(10, 'calmpress@gmail.comy');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` int(100) NOT NULL,
  `ngn_buy` varchar(100) DEFAULT NULL,
  `ngn_sell` varchar(100) DEFAULT NULL,
  `instant_max` varchar(100) DEFAULT NULL,
  `instant_av` varchar(100) DEFAULT NULL,
  `instant_min` varchar(100) DEFAULT NULL,
  `min_btc_dep` varchar(100) DEFAULT NULL,
  `min_btc_with` varchar(100) DEFAULT NULL,
  `min` varchar(100) DEFAULT NULL,
  `max` varchar(100) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `ngn_buy`, `ngn_sell`, `instant_max`, `instant_av`, `instant_min`, `min_btc_dep`, `min_btc_with`, `min`, `max`, `created_at`, `updated_at`) VALUES
(1, '390', '335', '0.5', '0.4601358241526706', '0.0005', '0.0002', '0.0002', '2', '2', NULL, '2017-11-13 14:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `recieve`
--

CREATE TABLE `recieve` (
  `id` int(100) NOT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `created_at` varchar(100) DEFAULT NULL,
  `updated_at` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recieve`
--

INSERT INTO `recieve` (`id`, `user_id`, `email`, `address`, `amount`, `currency`, `status`, `created_at`, `updated_at`) VALUES
(1, '11', 'dechosenuchenna@gmail.com', '391TjYpbQm1d9tobym4fzCwFmp1r8Ujtkn', '0', 'btc', 'active', '2017-10-11 06:06:21', '2017-10-18 21:05:58'),
(2, '17', 'uniquewill9@gmail.com', '32hnFjwyQxNqiE1BJiU7wFwZFhBN63tLns', '0', 'btc', 'active', '2017-10-11 10:04:23', '2017-10-11 10:04:25'),
(3, '21', 'the21stcenturyceo@gmail.com', '343AsAruXUYajdNJSvUFT1fvsYfQ77AVt5', '0.00451638', 'btc', 'complete', '2017-10-14 09:35:56', '2017-10-14 09:55:28'),
(4, '2', 'calmpress@gmail.com', '3DkFzzg5GFCA6yy8azdnqNPdXjGs94m5TG', '0.0001', 'btc', 'complete', '2017-10-16 18:42:04', '2017-10-18 19:15:36'),
(5, '39', 'tochukwualor@gmail.com', '3K5vpvzmnmUv1UkRe8hn7A3x1tusDqALQg', '0', 'btc', 'active', '2017-10-17 13:10:41', '2017-10-18 21:11:05'),
(6, '2', 'calmpress@gmail.com', '3EgebRDRRkdTNFLAhsLJvY6CxP5u9ggo3j', '0.0044', 'btc', 'complete', '2017-10-18 19:39:23', '2017-10-18 19:45:36'),
(7, '2', 'calmpress@gmail.com', '3JtuXVyHWjxiZXzrqGp8DRX2xdDjPQmBhP', '0.0044', 'btc', 'complete', '2017-10-18 19:41:36', '2017-10-18 19:45:37'),
(8, '50', 'thompsonamadi@gmail.com', '36L7fvGvuBmE5eB5Qb1FEKcqowux17wsRy', '0.0008687', 'btc', 'complete', '2017-10-26 11:50:39', '2017-10-26 11:55:28'),
(9, '50', 'thompsonamadi@gmail.com', '32eR8kKfxReei8P5FSkvxwmaFjbNVyrfjT', '0.09', 'btc', 'complete', '2017-10-26 13:13:24', '2017-10-26 15:05:29'),
(10, '50', 'thompsonamadi@gmail.com', '3KTmpPCBkqD3E2tYio6xa4oz7KipwZZCNZ', '0.00958485', 'btc', 'complete', '2017-11-02 08:05:58', '2017-11-06 12:30:53'),
(11, '21', 'the21stcenturyceo@gmail.com', '3BQcCgUEWKrxpnE4ib3vr5ihvrLDi6KErb', '0.00618171', 'btc', 'complete', '2017-11-03 13:49:27', '2017-11-08 05:20:36'),
(12, '21', 'the21stcenturyceo@gmail.com', '3KVbLSEQBu55LvegWwzGz6YiJsMe62ZA6X', '0', 'btc', 'active', '2017-11-05 20:09:00', '2017-11-05 20:09:01'),
(13, '50', 'thompsonamadi@gmail.com', '399Y3ww8TYWREzHJcAyW1WbxbJANqCGZ6x', '0.00497373', 'btc', 'complete', '2017-11-06 13:21:54', '2017-11-13 09:00:58');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(100) NOT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `role` varchar(1000) DEFAULT NULL,
  `created_at` varchar(1000) DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `deleted` timestamp(6) NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `email`, `role`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 'calmpress@gmail.com', 'admin', '1504092838', NULL, NULL),
(2, 'supardyke2@gmail.com', 'support', '1504092838', NULL, NULL),
(6, 'precious@chigisoft.com', 'admin', '1507209927', NULL, NULL),
(7, 'the21stcenturyceo@gmail.com', 'admin', '1507719473', NULL, NULL),
(49, 'unicornbitex@gmail.com', 'admin', '1507719473', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_created` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recieved_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `email`, `type`, `amount`, `time_created`, `description`, `transaction_id`, `recieved_by`, `status`, `deleted`, `created_at`, `updated_at`) VALUES
(1, '21', 'the21stcenturyceo@gmail.com', 'currency', '90', NULL, 'admin debit', '$2y$10$3TtO4Rf45isOvt2qOpUvGe4pi/d0MSVHGslcd.K6dT.XSgbQDurGK', 'titan.offline@gmail.com', 'completed', '0', '2017-10-11 11:29:16', NULL),
(2, NULL, 'titan.offline@gmail.com', 'currency', '30000', NULL, 'admin credit', '$2y$10$eUQFHilBCMilQSlWJUEs8.UmvM6YkFJOQvhItHZ7934g8CrUCKa4e', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-11 12:04:56', NULL),
(3, NULL, 'titan.offline@gmail.com', 'currency', '10000', NULL, 'admin credit', '$2y$10$UF1qVV1aQu.9/69sqwOE9Oi/4z/KckZWkENxQ8PbDdcWUCO7a8uO.', 'cloonicux@gmail.com', 'completed', '0', '2017-10-13 05:18:52', NULL),
(4, NULL, 'titan.offline@gmail.com', 'btc', '0.004943606305431421', NULL, 'titan instant buy', '$2y$10$X.iSNpHzuoZ2ZnCRfNlA7.RoY4OMgZumgKrK49n8KsqY.oG1kUVLa', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-13 05:33:35', NULL),
(5, '21', 'the21stcenturyceo@gmail.com', 'currency', '10000', NULL, 'titan instant buy', '$2y$10$kzRwAdLqcwUXjHEMVdhM2.nffcNtAnx22s57LTMMHJt3H1S0axjoa', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 05:33:35', NULL),
(6, '29', 'cloonicux@gmail.com', 'currency', '9999', NULL, 'admin debit', '$2y$10$ctRaEsHkbsWBp87IH6L9OOBYLiIUFMhkY7WsQT66axSseETFOZMVS', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 05:39:33', NULL),
(7, NULL, 'titan.offline@gmail.com', 'btc', '0.00494', NULL, 'admin credit', '$2y$10$I45gg1TsCLeBD1b4dzUADuGznbsu5w0k5p53o.gu9OKYouweNRQee', 'cloonicux@gmail.com', 'completed', '0', '2017-10-13 05:39:53', NULL),
(8, '29', 'cloonicux@gmail.com', 'btc', '0.0049399', NULL, 'admin debit', '$2y$10$0v8xHxm9K7VP0ABqHan0x.r.3vH71skLEBuwKdEy1TDfANg5RVbJa', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 06:14:05', NULL),
(9, '1', 'titan.offline@gmail.com', 'btc', '0.0009973637680881894', NULL, 'titan instant buy', '$2y$10$t5.eo.MpTaq7QEOhwL7Go.HIvaZwbGch6gIhlAb8wTZsFOkYTKNB6', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 06:24:43', NULL),
(10, '1', 'titan.offline@gmail.com', 'currency', '2000', NULL, 'titan instant buy', '$2y$10$8rIdu6/egv0F8zxoF23Kz.QSvk2Hq.DhTk7fVHVqtdSHGZ/Ofojt.', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 06:24:44', NULL),
(11, '1', 'titan.offline@gmail.com', 'btc', '0.0015032946204902664', NULL, 'titan instant buy', '$2y$10$OlfVfwFBL3Eqnf7XDjyybeOx4YcnnhtHofm57/Fe/kxzmPRoVBa9y', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 06:25:36', NULL),
(12, '1', 'titan.offline@gmail.com', 'currency', '3000', NULL, 'titan instant buy', '$2y$10$cro16sKMSFS8SUfxAPjBU.TNFrzoIv59z.n4peFJTml7WTVqT9VZu', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 06:25:36', NULL),
(13, '1', 'titan.offline@gmail.com', 'btc', '0.001', NULL, 'titan instant buy', '$2y$10$vxQMicPEaLfjLKsRWtMpRu0PKboNDxdCGa0G7f9dMvUS/X7N7C.GS', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 06:26:11', NULL),
(14, '1', 'titan.offline@gmail.com', 'currency', '1995.6168', NULL, 'titan instant buy', '$2y$10$gNJzrhwAiUignY/YPmoTZeU0rvOTRZ1Yl6l37kQSNqPSvqhCfCaGW', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 06:26:11', NULL),
(15, '1', 'titan.offline@gmail.com', 'btc', '0.010', NULL, 'btc sending', '$2y$10$nx5hMzSeEVuUYN3Bgox3MuKVsE0sV2wsBf2rKQzN8RPQ3AGygC6li', 'calmpress@gmail.com', 'completed', '0', '2017-10-13 06:29:53', NULL),
(16, '2', 'calmpress@gmail.com', 'btc', '.005', NULL, 'titan instant sell', '$2y$10$ammh6O72mLlBmfgaraWD0eY7x4zSncKqxKuCUn6QuclwbMlkBPdfq', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 06:30:54', NULL),
(17, '1', 'titan.offline@gmail.com', 'currency', '8938.672', NULL, 'titan instant sell', '$2y$10$LqdTxqfb/ewc0vlmUCCjVOlXBH.i4OCRDOlsYJob5GA675AkpWUyy', 'calmpress@gmail.com', 'completed', '0', '2017-10-13 06:30:54', NULL),
(18, '1', 'titan.offline@gmail.com', 'btc', '0.0009944305920262975', NULL, 'titan instant buy', '$2y$10$8S4DZAa3RDjYKGNHqVfjV.vVB6iggI5d0S4kDCf5vk.A4YUIc6bFe', 'calmpress@gmail.com', 'completed', '0', '2017-10-13 06:31:23', NULL),
(19, '2', 'calmpress@gmail.com', 'currency', '2000', NULL, 'titan instant buy', '$2y$10$aafBZwcI.RxPKYHtpuctLOLBJRpYRLJrbKcRb4rsTn4vAWM/yWvW6', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 06:31:23', NULL),
(20, '2', 'calmpress@gmail.com', 'btc', '0.0017911100046031528', NULL, 'titan instant sell', '$2y$10$7wWsPZV6XpBOAAjZ4pvmJOZPKBtMG0N.jBVuNl3W/LF/c9Hg8f2U2', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 06:32:18', NULL),
(21, '1', 'titan.offline@gmail.com', 'currency', '3200.0000000000005', NULL, 'titan instant sell', '$2y$10$zYH7fMUyPeW/J0Q8/fd1KOY/usvlCC0poUbecRJQpBQC2uGuZFAFi', 'calmpress@gmail.com', 'completed', '0', '2017-10-13 06:32:18', NULL),
(22, '1', 'titan.offline@gmail.com', 'btc', '0.002', NULL, 'titan instant buy', '$2y$10$De1U6UwbvlyVhv8/c4sPTuLjS4wImsLw3yy368apStXFn3bJQMslG', 'calmpress@gmail.com', 'completed', '0', '2017-10-13 21:48:53', NULL),
(23, '2', 'calmpress@gmail.com', 'currency', '4023.2448000000004', NULL, 'titan instant buy', '$2y$10$GqNaimu2vcEz6LoLlMo9Q.Au50qApg/zQM2J27y0S.g5wdjbY6TYu', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 21:48:53', NULL),
(24, '2', 'calmpress@gmail.com', 'btc', '0.0021670019560443158', NULL, 'titan instant sell', '$2y$10$sRveVVHFZ9NVGlST7PfVBew9uaN8TCe8NNrAPxSvnIXVklmVsgGLK', 'titan.offline@gmail.com', 'completed', '0', '2017-10-13 21:51:23', NULL),
(25, '1', 'titan.offline@gmail.com', 'currency', '4000', NULL, 'titan instant sell', '$2y$10$1JRafYBL.tX2ajhPjVxTy.OW6Ahp6kbtuhh0a67rXs8GyNJ62OGGy', 'calmpress@gmail.com', 'completed', '0', '2017-10-13 21:51:23', NULL),
(26, '1', 'titan.offline@gmail.com', 'btc', '0.004316380000000001', NULL, 'titan receive', '$2y$10$G7UizN/h84nTmoLMXUhbsOYXI7rUk4Bf7G8/M5PuftdN6V1hG7sbW', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-14 09:55:28', NULL),
(27, '1', 'titan.offline@gmail.com', 'btc', '0.011399999999999999', NULL, 'titan deposit', '$2y$10$t1SdzJIWZNaL.rlbrISt1uG0dfduYv8W2zBoxN0v9fn7mhzIunAIG', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-14 21:30:54', NULL),
(28, '2', 'calmpress@gmail.com', 'currency', '10,115.43', NULL, 'admin debit', '$2y$10$126xAqz/.72WGR.RrhqFTe65DXekbS3ZhYgGAuNqW/2hjUs6p.i3m', 'titan.offline@gmail.com', 'completed', '0', '2017-10-15 15:08:04', NULL),
(29, '1', 'titan.offline@gmail.com', 'btc', '0.001019277', NULL, 'admin credit', '$2y$10$4FYj5YPvPvN7u5.CljmgIO/pOrdnl1UR2B0BYsbVRg5.K8.09EfHG', 'othuke.imonikiro@gmail.com', 'completed', '0', '2017-10-16 12:23:07', NULL),
(30, '2', 'calmpress@gmail.com', 'currency', '10000', NULL, 'admin debit', '$2y$10$sB9H2xqZlSy8eoLxD5zBietSnqby1w7lCT8vbctLAxB7lehVk1XyC', 'titan.offline@gmail.com', 'completed', '0', '2017-10-16 12:27:20', NULL),
(31, '2', 'calmpress@gmail.com', 'currency', '104.43', NULL, 'admin debit', '$2y$10$Bz9gYi1hvKgB.AbysuZ0OewA7ipnGCDumEXKcdqKb4CQGTZL.0ufu', 'titan.offline@gmail.com', 'completed', '0', '2017-10-16 12:27:59', NULL),
(32, '2', 'calmpress@gmail.com', 'currency', '0.9972000000000775', NULL, 'admin debit', '$2y$10$82T.gPiyZFCTEEAIAPxpW.l/jCPl9L2dCHSjMnE7DvtRssNlldpuO', 'titan.offline@gmail.com', 'completed', '0', '2017-10-16 12:28:29', NULL),
(33, '2', 'calmpress@gmail.com', 'btc', '0.004036', NULL, 'admin debit', '$2y$10$n78wrlIPwk84WkAu5MzW1uxclzxMjTq.5fqK3AE//bGZD.0QtElyW', 'titan.offline@gmail.com', 'completed', '0', '2017-10-16 12:29:14', NULL),
(34, '21', 'the21stcenturyceo@gmail.com', 'currency', '19510', NULL, 'currency funds withdrawal NGN', '$2y$10$stHw..A9VFo02HBli5L86ufBg9lNIWXc5CmfrJvpti9eLkMJC4JYu', 'titan.offline@gmail.com', 'completed', '0', '2017-10-16 12:57:37', NULL),
(35, '21', 'the21stcenturyceo@gmail.com', 'currency', '500', NULL, 'currency funds withdrawal NGN charge', '$2y$10$c3tdt8fD7oVbkbvq3gEMpuozwjeSzeA26j7R0FKaxYk2FBNWR16em', 'titan.offline@gmail.com', 'completed', '0', '2017-10-16 12:57:37', NULL),
(36, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.004944', NULL, 'admin debit', '$2y$10$DVSqiRXh5tfPKFLDfK.iXef3Guij5P4.CM.2Pn2w57D/k3mAV4v6q', 'titan.offline@gmail.com', 'completed', '0', '2017-10-17 11:59:12', NULL),
(37, '1', 'titan.offline@gmail.com', 'currency', '90000', NULL, 'admin credit', '$2y$10$LqeZTjq508mwisE9cxjzPOkzKdAlSXwOAabSI.TIpzIQR66IuRrDW', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-17 11:59:26', NULL),
(38, '1', 'titan.offline@gmail.com', 'currency', '8000', NULL, 'admin credit', '$2y$10$neUsIr7Nsu9/5fSr9x50PuNKk8lCodVhGjqE3UI7X5ew5M9b4TxuW', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-17 11:59:41', NULL),
(39, '1', 'titan.offline@gmail.com', 'btc', '0.04786047171086561', NULL, 'titan instant buy', '$2y$10$izPY6zk3NuIbVIT5RHXpFu.Bmcu15Hj7YycvGEtmXNmYp7jyKdhbi', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-17 13:00:41', NULL),
(40, '21', 'the21stcenturyceo@gmail.com', 'currency', '98500', NULL, 'titan instant buy', '$2y$10$W882.PgxeSnpz.USxka/tu7V/Pxiur97v92Wh.6smMWbsI5AKkqoW', 'titan.offline@gmail.com', 'completed', '0', '2017-10-17 13:00:41', NULL),
(41, '2', 'calmpress@gmail.com', 'currency', '10000', NULL, 'deposit', '$2y$10$Km1ySRol1KUexmp3ae.oj.3udBMf60RaTQ8j9lxhs19puEHSPlMSa', 'titan.offline@gmail.com', 'completed', '0', '2017-10-17 14:26:11', NULL),
(42, '1', 'titan.offline@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$UUogPcgBLmb.k1oaYC09c.eKhGUW.FYhdwTnx5C7lYGHb7072G/fa', 'calmpress@gmail.com', 'completed', '0', '2017-10-17 14:26:12', NULL),
(43, '1', 'titan.offline@gmail.com', 'currency', '11000', NULL, 'deposit', '$2y$10$onBAtZUyYK2I1Fp5a4Bpwu8N/WYwD6flJEic8sCzZRJS2kWxs7U8W', 'calmpress@gmail.com', 'completed', '0', '2017-10-17 14:31:39', NULL),
(44, '2', 'calmpress@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$wIL9suHm3xeeni..nq6a8ebTZFYmbptBlmwbTAnqG/CRDL5ud4zxy', 'titan.offline@gmail.com', 'completed', '0', '2017-10-17 14:31:39', NULL),
(45, '1', 'titan.offline@gmail.com', 'btc', '0.006200000000000001', NULL, 'unicorn deposit', '$2y$10$jBM5QhzdPeizkTcQRQVl.OPyJDR5h1DknueBywtVgSz8/w/zqMtJG', 'Akorvuezenwakanma@gmail.com', 'completed', '0', '2017-10-17 16:30:47', NULL),
(46, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.063576', NULL, 'btc sending', '$2y$10$IZeO5y6NbPMsC3B1ROAHwuGw.ic0EX4jd2staH/ARWALkEMyk400u', 'calmpress@gmail.com', 'completed', '0', '2017-10-17 16:54:14', NULL),
(47, '2', 'calmpress@gmail.com', 'btc', '0.0063576', NULL, 'btc sending', '$2y$10$YpAceZlEm/tS9UfJ6sAw1O/k4q72VWw0dawKYZ8M/qYXJPZnZrZIq', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-17 16:55:38', NULL),
(48, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.0063576', NULL, 'btc sending', '$2y$10$2eRFb7g0eD03T77d3sgBxO.5Re8Q.f.TvxT8F6vsfarIjs9ttR4t.', 'calmpress@gmail.com', 'completed', '0', '2017-10-17 16:57:03', NULL),
(49, '2', 'calmpress@gmail.com', 'btc', '0.063576', NULL, 'btc sending', '$2y$10$PQWryExW36y9a5JcDRiNQO2/WYZzrmwI2PzRnE.Z4I6bXVSOxsRpy', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-17 16:57:54', NULL),
(50, '40', 'Akorvuezenwakanma@gmail.com', 'btc', '0.006200', NULL, 'btc sending', '$2y$10$mUaQFRY1zqvt673hM4jXD.VJ96RcygFSaZ4TuAMfzGANPEDPH3Xue', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-17 17:07:49', NULL),
(51, '1', 'titan.offline@gmail.com', 'btc', '0.005132841268372299', NULL, 'unicorn instant buy', '$2y$10$rnu7KnoUaXuysQpzP2ih6OYaIfQ.v2r0WE9fuUjo6i7hKrOt7sk2K', 'calmpress@gmail.com', 'completed', '0', '2017-10-18 13:09:20', NULL),
(52, '2', 'calmpress@gmail.com', 'currency', '10000', NULL, 'unicorn instant buy', '$2y$10$vH5OUeajv0MocrnMhfgNLuj3A51dxfIvrhwnPXWeYNFOpXdH59ci6', 'titan.offline@gmail.com', 'completed', '0', '2017-10-18 13:09:20', NULL),
(53, '1', 'titan.offline@gmail.com', 'btc', '-0.0001', NULL, 'unicorn receive', '$2y$10$t7xn2IL0cfjTFGGh0AkzY.MirzO5c3YyUcophufTNIXRRvMQemKTu', 'calmpress@gmail.com', 'completed', '0', '2017-10-18 19:15:36', NULL),
(54, '2', 'calmpress@gmail.com', 'btc', '0.0002', NULL, 'unicorn receive charge', '$2y$10$rx5FCR/dfKiEHTpqQ4cllexOrWTXN01RUC6HUde9QNbIL/rtLStY2', 'titan.offline@gmail.com', 'completed', '0', '2017-10-18 19:15:36', NULL),
(55, '2', 'calmpress@gmail.com', 'btc', '0.004', NULL, 'btc funds transfer', '$2y$10$tw/r3uBB0wYQfERmoLQ.MujFRFYTQvRkOpJo99kr7QvtJugRKlq8W', 'titan.offline@gmail.com', 'completed', '0', '2017-10-18 19:42:43', NULL),
(56, '2', 'calmpress@gmail.com', 'btc', '0.0004', NULL, 'btc funds transfer charge', '$2y$10$9wMnh.Vmji87vZzM4l2onOEy09BeBe4KJkSTC/6hDhyo/WcNvhzVO', 'titan.offline@gmail.com', 'completed', '0', '2017-10-18 19:42:44', NULL),
(57, '1', 'titan.offline@gmail.com', 'btc', '0.004200000000000001', NULL, 'unicorn receive', '$2y$10$SueAwitsdzj6yOHkfviXeOaA1.CQ6QklnKVaOcOIreKNv8k4XRMim', 'calmpress@gmail.com', 'completed', '0', '2017-10-18 19:45:36', NULL),
(58, '2', 'calmpress@gmail.com', 'btc', '0.0002', NULL, 'unicorn receive charge', '$2y$10$hAfquHXRbyrBOZdVsx2f0eKkIQVfUUlwdI4Ic198jSpSsG4iAq.Ve', 'titan.offline@gmail.com', 'completed', '0', '2017-10-18 19:45:36', NULL),
(59, '1', 'titan.offline@gmail.com', 'btc', '0.004200000000000001', NULL, 'unicorn receive', '$2y$10$2r.YIMN8tyK1dV7bKLhp9uvVvA.dEjbYTaaSEBZyWnir/4dErk8fS', 'calmpress@gmail.com', 'completed', '0', '2017-10-18 19:45:37', NULL),
(60, '2', 'calmpress@gmail.com', 'btc', '0.0002', NULL, 'unicorn receive charge', '$2y$10$nGYzzU4QJi8aWkNqZTir0OPgGvMLi4i6y48vxErF.zp1P1atpT.EW', 'titan.offline@gmail.com', 'completed', '0', '2017-10-18 19:45:37', NULL),
(61, '2', 'calmpress@gmail.com', 'btc', '0.009033', NULL, 'admin debit', '$2y$10$/wc4PGDuxZQaXsZsliWx4O7DQ3IFtO.zdieaLqLecBC1fg5ExmD0G', 'titan.offline@gmail.com', 'completed', '0', '2017-10-18 19:50:06', NULL),
(62, '1', 'titan.offline@gmail.com', 'btc', '-0.0002', NULL, 'unicorn deposit', '$2y$10$H8FgltAJ.f6WsHGru29Wb.0kYXwymn2hv2nqZ2p63q8Z.p1rlmqX2', 'uniquewill9@gmail.com', 'completed', '0', '2017-10-18 20:47:32', NULL),
(63, '1', 'titan.offline@gmail.com', 'btc', '-0.0002', NULL, 'unicorn deposit', '$2y$10$DRr0i3yYCZfEiW61/tUo1uhMYgdkuA/WK/rxY.qBC6XRBgFKJDI4u', 'othuke.imonikiro@gmail.com', 'completed', '0', '2017-10-18 20:52:52', NULL),
(64, '1', 'titan.offline@gmail.com', 'btc', '-0.0002', NULL, 'unicorn receive', '$2y$10$pdU7sSxg/iFbXveNaum3hOJPka5vzrGlUdlgI6WPcJpK72S7cQKxC', 'dechosenuchenna@gmail.com', 'completed', '0', '2017-10-18 21:05:57', NULL),
(65, '11', 'dechosenuchenna@gmail.com', 'btc', '0.0002', NULL, 'unicorn receive charge', '$2y$10$yLUFXFHtIPdGB6qEfdXcv.bo3iceWYlBIeYqfuEMkjjkyAB9ZxH0e', 'titan.offline@gmail.com', 'completed', '0', '2017-10-18 21:05:58', NULL),
(66, '1', 'titan.offline@gmail.com', 'btc', '-0.0002', NULL, 'unicorn receive', '$2y$10$sVh9fczjpTCZnO87A5IEc.ZHgU0VerptSLsRSo9C5i7HuOyT0G3km', 'tochukwualor@gmail.com', 'completed', '0', '2017-10-18 21:11:05', NULL),
(67, '39', 'tochukwualor@gmail.com', 'btc', '0.0002', NULL, 'unicorn receive charge', '$2y$10$AitDFtKa2bk4F5zCfEiWnu4Y9pwarUOibxlMJ/Xuy.N6CnFfLWpNS', 'titan.offline@gmail.com', 'completed', '0', '2017-10-18 21:11:05', NULL),
(68, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.04786', NULL, 'btc sending', '$2y$10$HkOy3tGmaDOZxYEuUI1EYOezHqGspWPdGtB.iO0tvV0xGzjVqqHw6', 'chizoba egbujor@ gmail.com', 'completed', '0', '2017-10-19 21:25:46', NULL),
(69, '1', 'titan.offline@gmail.com', 'btc', '0.0002', NULL, 'admin credit', '$2y$10$u7potSKRBGGecK5Sf7.5w.pchudyLf8fw59IP/67aMl6SAkx9JzZa', 'othuke.imonikiro@gmail.com', 'completed', '0', '2017-10-19 21:41:22', NULL),
(70, '2', 'calmpress@gmail.com', 'currency', '20000', NULL, 'admin debit', '$2y$10$ynDcQxQPtJP5J3jjmd.ReuI5UJLi985RfEMURCXCd3rhRmLe4qHOm', 'titan.offline@gmail.com', 'completed', '0', '2017-10-19 21:51:47', NULL),
(71, '2', 'calmpress@gmail.com', 'currency', '399', NULL, 'admin debit', '$2y$10$YnGS03v1O6ijEJhxV9is7e87H6HsU/8eS6s/w28esiwPCeygmHYcm', 'titan.offline@gmail.com', 'completed', '0', '2017-10-19 21:56:36', NULL),
(72, '1', 'titan.offline@gmail.com', 'btc', '0.003', NULL, 'unicorn deposit', '$2y$10$MD6tb4cLsjFA1IixAAys0O9oi4hcZDNFDZxec8SHBx/FM8J/QWsJC', 'chukwundac@yahoo.co.uk', 'completed', '0', '2017-10-20 09:55:31', NULL),
(73, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.021916', NULL, 'unicorn instant sell', '$2y$10$lguCaMFUgi7Ioiv.lcBnr.ZglgN0ZOKGSGFfWdUnjHMMgb6Xm0CGC', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 11:31:05', NULL),
(74, '1', 'titan.offline@gmail.com', 'currency', '41614.102991600004', NULL, 'unicorn instant sell', '$2y$10$C/qe9pOjqsC3vX9zoI7EiebnrTDEuihSHGy07FxoFVQY0tr/91IVy', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-20 11:31:05', NULL),
(75, '1', 'titan.offline@gmail.com', 'currency', '11000', NULL, 'deposit', '$2y$10$IZDsMZ5xHRNiuBcwx9Qo/.BXGtKJCdTKCTOaI2W4yFuP0HMTLNWYu', 'calmpress@gmail.com', 'completed', '0', '2017-10-20 11:59:35', NULL),
(76, '2', 'calmpress@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$Ne563qY.GaF9cG1BFEwQFOhrV11PKbJqRTW0tdB4kc4fBQ1ma7Ski', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 11:59:35', NULL),
(77, '1', 'titan.offline@gmail.com', 'btc', '0.0023897378538825374', NULL, 'unicorn instant buy', '$2y$10$fWhEHVW01eLJVPo.yHGXOe487AmEOkAyUJmJs6ukOvdmJuwI2wIJq', 'calmpress@gmail.com', 'completed', '0', '2017-10-20 12:07:11', NULL),
(78, '2', 'calmpress@gmail.com', 'currency', '5000', NULL, 'unicorn instant buy', '$2y$10$PT5.HpquMBQZRx6355QgjunZqanVaE9BNMPNVaG9zedtOSpilv8PO', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 12:07:12', NULL),
(79, '2', 'calmpress@gmail.com', 'btc', '0.0023754707622175675', NULL, 'unicorn instant sell', '$2y$10$VTP3vFGw9kAXNYB8N.ZljuqZm6batY.ASSwnvOoRyD0TbNmyKfXQe', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 12:07:28', NULL),
(80, '1', 'titan.offline@gmail.com', 'currency', '4500', NULL, 'unicorn instant sell', '$2y$10$IXQfRiLaQ50JxPYmh6sph.XcHh5WddrwgI8XGITYdKy40Kx.YfwF2', 'calmpress@gmail.com', 'completed', '0', '2017-10-20 12:07:28', NULL),
(81, '1', 'titan.offline@gmail.com', 'btc', '0.004921336254826323', NULL, 'unicorn instant buy', '$2y$10$sf/5o7z675N28O.CCw6Aa.ztHIc97DQF1.lQnzy51eyfMhTwQKXPe', 'calmpress@gmail.com', 'completed', '0', '2017-10-20 13:23:56', NULL),
(82, '2', 'calmpress@gmail.com', 'currency', '10301', NULL, 'unicorn instant buy', '$2y$10$K6p3Wnp3vrXab7eTjjnL9O5SC5yXzeJBbG10ImKSWFu23EdUSSW.S', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 13:23:56', NULL),
(83, '2', 'calmpress@gmail.com', 'btc', '0.004935', NULL, 'unicorn instant sell', '$2y$10$OK4G/rZJUdmad.Y5nNW..OTHWAmOaBkvWF.n4HNoYCrVPL.qzK.gO', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 13:24:39', NULL),
(84, '1', 'titan.offline@gmail.com', 'currency', '9350.0123745', NULL, 'unicorn instant sell', '$2y$10$GS2TvdzoAcgLZuBhEJIfHuvCR0dvZ5u8DFqqkfOewLIyXcKFQE0GS', 'calmpress@gmail.com', 'completed', '0', '2017-10-20 13:24:39', NULL),
(85, '2', 'calmpress@gmail.com', 'btc', '0.008', NULL, 'unicorn instant sell', '$2y$10$paEx9ZjZ6rM7jNqTuPCf5.MaRB.HOswZrll2JsIX39FfG848x8YrC', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 14:13:04', NULL),
(86, '1', 'titan.offline@gmail.com', 'currency', '15309.901999999998', NULL, 'unicorn instant sell', '$2y$10$WuEdOLAMnmk7Ij6Xu82y0ecNlGv8lDUvedf6.nMoxjCCknJdzEC5W', 'calmpress@gmail.com', 'completed', '0', '2017-10-20 14:13:04', NULL),
(87, '2', 'calmpress@gmail.com', 'btc', '0.001', NULL, 'unicorn instant sell', '$2y$10$.qfABNPHqWy/fDxParZWS.rd4UWmGJG4IMX144UYbPY6QUnqkNjZq', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 14:14:21', NULL),
(88, '1', 'titan.offline@gmail.com', 'currency', '1913.6908500000002', NULL, 'unicorn instant sell', '$2y$10$wXo7BMPHaDIsjugp5WoZzOSXPm4wwV5BjiYX/otVj2pl4wrczcKL.', 'calmpress@gmail.com', 'completed', '0', '2017-10-20 14:14:21', NULL),
(89, '1', 'titan.offline@gmail.com', 'btc', '0.008148072554086722', NULL, 'unicorn instant buy', '$2y$10$hk0p9h5IyjFyRqJkKK0Fie9WDqup9JLW73kvIsGmvMn73/LMbH4Oy', 'calmpress@gmail.com', 'completed', '0', '2017-10-20 14:15:09', NULL),
(90, '2', 'calmpress@gmail.com', 'currency', '17222', NULL, 'unicorn instant buy', '$2y$10$h/HjLSfgN.1IObhcL6f1k.FR0DeB/2RJhydQ4kIZAmBhO9PXksmKS', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 14:15:09', NULL),
(91, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.021916', NULL, 'unicorn instant sell', '$2y$10$uD2n4qb0.Tpr4BxH6U8Lm.JokLJ8DkNnEuIBgY9rNIwLA4bve7A5q', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 14:27:51', NULL),
(92, '1', 'titan.offline@gmail.com', 'currency', '42420.9734056', NULL, 'unicorn instant sell', '$2y$10$O40qKk4Zr.xuaOijET1Hn.c5LEF0GHEdrkjxg9SkgnpwdQgkaJ/Mi', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-20 14:27:51', NULL),
(93, '47', 'chukwundac@yahoo.co.uk', 'btc', '0.003', NULL, 'unicorn instant sell', '$2y$10$CF6C9GcCbQHaZINjylMz4.oOTD3P2e4trT9QdOIj.0OkFVncONgI6', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 14:32:43', NULL),
(94, '1', 'titan.offline@gmail.com', 'currency', '5814.41745', NULL, 'unicorn instant sell', '$2y$10$S5JMg2/oidvbSCy13D442.5ywI/erI.sRxgL5p3sHRsxWofwyTcQy', 'chukwundac@yahoo.co.uk', 'completed', '0', '2017-10-20 14:32:44', NULL),
(95, '47', 'chukwundac@yahoo.co.uk', 'currency', '5600', NULL, 'currency funds withdrawal NGN', '$2y$10$n4WRMg/UIAuxeUXxj/idceQfKCNdoCLCgbG6V4q2LluKFgnzKgZEC', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 14:40:33', NULL),
(96, '47', 'chukwundac@yahoo.co.uk', 'currency', '200', NULL, 'currency funds withdrawal NGN charge', '$2y$10$GYhx8h9eS/X5v/LE2CdmKeqJ1KbssGyrbuVJa3zVAL3znwbYfE1AK', 'titan.offline@gmail.com', 'completed', '0', '2017-10-20 14:40:33', NULL),
(97, '21', 'the21stcenturyceo@gmail.com', 'currency', '42,420.97', NULL, 'admin debit', '$2y$10$VvGyTOS.ZpyaOsTu98BgxeyjUJ3AnLCb1W53EtX6sA0CvTWK/FrSu', 'titan.offline@gmail.com', 'completed', '0', '2017-10-21 11:56:57', NULL),
(98, '1', 'titan.offline@gmail.com', 'btc', '0.021916', NULL, 'admin credit', '$2y$10$kmD2Od2W/Gmt7NGS3DWxNeDzQ/VLo5Gp.rAgg2Bc8xAoVUOeqqKiG', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-21 12:02:35', NULL),
(99, '21', 'the21stcenturyceo@gmail.com', 'currency', '42378.97', NULL, 'test credit', '$2y$10$JauGBoWjyl4RFTVWMlOnR.RTnzzH8ncMdJjcwR/5PaYcXYT4KHS0m', 'titan.offline@gmail.com', 'completed', '0', '2017-10-21 12:21:05', NULL),
(100, '1', 'titan.offline@gmail.com', 'btc', '0.021916', NULL, 'test credit', '$2y$10$yELr.oNN8mHJViDTrm9SQu.rDUTKPMvrHaA6OikKggje.XTAViSgq', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-21 12:21:24', NULL),
(101, '2', 'calmpress@gmail.com', 'currency', '1.586', NULL, 'FBI', '$2y$10$CY/UHekY0m1wliwApTD5IOWBaNg24jlp/blVdfGonSNGg7DFZLct.', 'titan.offline@gmail.com', 'completed', '0', '2017-10-22 02:18:12', NULL),
(102, '1', 'titan.offline@gmail.com', 'currency', '100000', NULL, 'deposit', '$2y$10$82yflZHv.uVF1WJlrgydr.eGEjS/lCA2nu7q7Wtw2c6mvD.XTGHOi', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-22 14:50:36', NULL),
(103, '21', 'the21stcenturyceo@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$7/03HOrk4c.pR3.7ZkCrYOIi.2kY623c4.cFsiZgjK.LxFLNh4M7y', 'titan.offline@gmail.com', 'completed', '0', '2017-10-22 14:50:37', NULL),
(104, '21', 'the21stcenturyceo@gmail.com', 'currency', '99800', NULL, 'test debit', '$2y$10$l7zU8XzBZqnz1.MSH7o1UuIhU/YzMvfXkxS/.ebS2BCeyRgWErbRO', 'titan.offline@gmail.com', 'completed', '0', '2017-10-22 15:17:30', NULL),
(105, '1', 'titan.offline@gmail.com', 'currency', '70000', NULL, 'deposit', '$2y$10$xFH6bUDMZo7J.AjFu7IWEO9A.qH0EG4HRdu1QrxLKDmIGgTYT8hqS', 'arugub@gmail.com', 'completed', '0', '2017-10-22 22:46:19', NULL),
(106, '53', 'arugub@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$iG9XCgPbsnZd9Gvyubm4oew3YwKsdBivObOsdUEgzcXQXNO0lcy82', 'titan.offline@gmail.com', 'completed', '0', '2017-10-22 22:46:19', NULL),
(107, '1', 'titan.offline@gmail.com', 'btc', '0.031', NULL, 'unicorn instant buy', '$2y$10$hezJ/SsFAslnEdPC/qhZ3.1tLfmVD2CYrkBGABv2yGsOPC/XPZw0q', 'arugub@gmail.com', 'completed', '0', '2017-10-22 22:50:55', NULL),
(108, '53', 'arugub@gmail.com', 'currency', '68827.48557', NULL, 'unicorn instant buy', '$2y$10$GPEcnos34x/b7mxBfjg3NO5qoVqne89bjlX4EdY/7NH3e9uhUbimq', 'titan.offline@gmail.com', 'completed', '0', '2017-10-22 22:50:55', NULL),
(109, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.021916', NULL, 'unicorn instant sell', '$2y$10$192toM702MYHTRUFPRUtZuj5.mvmFbTfq13xT3SLpp9bNU8OgWsne', 'titan.offline@gmail.com', 'completed', '0', '2017-10-23 09:25:48', NULL),
(110, '1', 'titan.offline@gmail.com', 'currency', '43311.569514400006', NULL, 'unicorn instant sell', '$2y$10$fJHoQmg.psoUE.s8VcoJcOCUxBzE.M/VgA7Vn3VX4ODThTTDoERbm', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-23 09:25:48', NULL),
(111, '21', 'the21stcenturyceo@gmail.com', 'currency', '43111.57', NULL, 'currency funds withdrawal NGN', '$2y$10$7QIwP7pnAsnsCGid85eaCe5EaJVdkQlwTD6CFQSH7bH0G/wwqVxEu', 'titan.offline@gmail.com', 'completed', '0', '2017-10-23 10:19:45', NULL),
(112, '21', 'the21stcenturyceo@gmail.com', 'currency', '200', NULL, 'currency funds withdrawal NGN charge', '$2y$10$UArCZ4qkZv9WydpUGFNVfeibf84DQ5wG5763.CKsgvWzrTfSyUWj2', 'titan.offline@gmail.com', 'completed', '0', '2017-10-23 10:19:45', NULL),
(113, '1', 'titan.offline@gmail.com', 'btc', '0.021916', NULL, 'test credit', '$2y$10$VFUawYNJ2m9cBBtSX82Ur.fjUrVWxZNu440PzFg2oj8y.LR5MVqcm', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-23 10:22:09', NULL),
(114, '1', 'titan.offline@gmail.com', 'currency', '100000', NULL, 'deposit', '$2y$10$nzYz.bUU8UK2PW8OUcuuWuHx697qDx/leyUr2McnCon.IsST2.jSW', 'sokariharry@gmail.com', 'completed', '0', '2017-10-23 11:30:39', NULL),
(115, '48', 'sokariharry@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$jDIDCcE/S4F5rZA3jDEPYOU8QwwA85IAN10fD5i63Q16X.Hu2md5.', 'titan.offline@gmail.com', 'completed', '0', '2017-10-23 11:30:39', NULL),
(116, '2', 'calmpress@gmail.com', 'currency', '0.006849999997269983', NULL, 'dsfghjk', '$2y$10$994mE8g1hnoi7XP8j7elsuTRABJaGscUwiy4PaHk1/WJPGLBZYRzW', 'titan.offline@gmail.com', 'completed', '0', '2017-10-23 11:36:28', NULL),
(117, '1', 'titan.offline@gmail.com', 'currency', '1500400', NULL, 'deposit', '$2y$10$lLIYagBIT6I07iHmlwE8gep6cRMSCmZLWo1CxciYwJdm2D5cHbA96', 'thompsonamadi@gmail.com', 'completed', '0', '2017-10-24 13:56:01', NULL),
(118, '50', 'thompsonamadi@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$aVJjuGA05i4GToN9RpxR7uw.MX60FMZleptmqBUW3RLrzlpUub9Au', 'titan.offline@gmail.com', 'completed', '0', '2017-10-24 13:56:01', NULL),
(119, '1', 'titan.offline@gmail.com', 'btc', '0.23538702629096545', NULL, 'unicorn instant buy', '$2y$10$IO.t6K9gzz99ZfIs9k6ta.vR0a5Bpu5NX2WLZimEYE/CdMHpPNYUK', 'thompsonamadi@gmail.com', 'completed', '0', '2017-10-24 14:09:28', NULL),
(120, '50', 'thompsonamadi@gmail.com', 'currency', '500000', NULL, 'unicorn instant buy', '$2y$10$bKH2xFIlSH9ieUYRIJ5xke.tbCoRWDczOB0zQ0RUKIZkepUhAlV7S', 'titan.offline@gmail.com', 'completed', '0', '2017-10-24 14:09:28', NULL),
(121, '50', 'thompsonamadi@gmail.com', 'btc', '0.235387', NULL, 'btc sending', '$2y$10$zQv9gUAwLTXrnEgCufcrSeeFJiLRCdr8Tf533N4sRlfzV.MGeT5na', 'cnyenke1@gmail.com', 'completed', '0', '2017-10-24 14:12:45', NULL),
(122, '1', 'titan.offline@gmail.com', 'btc', '0.2350198356741309', NULL, 'unicorn instant buy', '$2y$10$ybBBowNgxTGO3I9HqGBCkeGcH5Z8jMJvFFGv28wHTW22079xUyeju', 'thompsonamadi@gmail.com', 'completed', '0', '2017-10-24 15:05:53', NULL),
(123, '50', 'thompsonamadi@gmail.com', 'currency', '500000', NULL, 'unicorn instant buy', '$2y$10$tq.rAJmJdX1W8SB5esmT7uwHM8sgy5CWozRa6zrmNI9OEaJTF3KNm', 'titan.offline@gmail.com', 'completed', '0', '2017-10-24 15:05:53', NULL),
(124, '1', 'titan.offline@gmail.com', 'btc', '0.24528219773241464', NULL, 'unicorn instant buy', '$2y$10$gpYD6b1nuE0tLQ4FkIY7oub7VPh81v05C8Ek4rWx2DhOjud4ybhne', 'thompsonamadi@gmail.com', 'completed', '0', '2017-10-25 01:20:00', NULL),
(125, '50', 'thompsonamadi@gmail.com', 'currency', '500200', NULL, 'unicorn instant buy', '$2y$10$vQJ1g8NBfr12rPjEjEu8EO07a.yV5EducJmRvEvjncfXXqopKi.V.', 'titan.offline@gmail.com', 'completed', '0', '2017-10-25 01:20:00', NULL),
(126, '1', 'titan.offline@gmail.com', 'currency', '90000', NULL, 'deposit', '$2y$10$rcY8bspEHoUGw0tsDyU1me98G9dPQN6MvQPMGBz.J71HJdaOT0aPK', 'egbujortex@gmail.com', 'completed', '0', '2017-10-25 16:09:05', NULL),
(127, '63', 'egbujortex@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$CsqyXfz.ZZ.0PjyMv3gFFeIl.RMHPO/Ak3xMJLl6s21VBx3h8woEq', 'titan.offline@gmail.com', 'completed', '0', '2017-10-25 16:09:05', NULL),
(128, '63', 'egbujortex@gmail.com', 'currency', '89799', NULL, 'debit', '$2y$10$oR/gheZ2VUIFdg/pqLgZk.0NqX8uImSHQzrTTFkj0BlJUVsLa9PzW', 'titan.offline@gmail.com', 'completed', '0', '2017-10-25 16:32:35', NULL),
(129, '63', 'egbujortex@gmail.com', 'currency', '0.9999', NULL, 'debit', '$2y$10$t898XROo14v0aX9kg3N6heTYfVwkgrjJMtfShnqU4xpZhCGM5ySE6', 'titan.offline@gmail.com', 'completed', '0', '2017-10-25 16:33:10', NULL),
(130, '50', 'thompsonamadi@gmail.com', 'btc', '0.008913', NULL, 'btc funds transfer', '$2y$10$L/lJJd/IGvhBNNINmNYBx.sl98H9wmlhcfcjNsosL7B..ckx6ikGW', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 10:55:27', NULL),
(131, '50', 'thompsonamadi@gmail.com', 'btc', '0.0008913000000000001', NULL, 'btc funds transfer charge', '$2y$10$bdF8CPsKv3QiwY8d.Qfos.dEprCOKNh6LpQxh7e8nyFbk2WUAwhra', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 10:55:27', NULL),
(132, '50', 'thompsonamadi@gmail.com', 'btc', '0.0079243', NULL, 'btc funds transfer', '$2y$10$VUk5evl887KIhpent39nW..h9SK/JvS1ZtIIOlu52Qy8EBBRtuhGy', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 11:39:36', NULL),
(133, '50', 'thompsonamadi@gmail.com', 'btc', '0.0007924300000000001', NULL, 'btc funds transfer charge', '$2y$10$XQVXLIbV9wWIJAX4.euKYOwfZ7Q8HZjhNB43DYgtcGfNinMyQ4/vS', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 11:39:36', NULL),
(134, '1', 'titan.offline@gmail.com', 'btc', '0.0006687', NULL, 'unicorn receive', '$2y$10$Q1OLU8BjhkEVsPLvsv6guuoIb.1qSXS2T2YXDh8Faka/X27ARzGXy', 'thompsonamadi@gmail.com', 'completed', '0', '2017-10-26 11:55:28', NULL),
(135, '50', 'thompsonamadi@gmail.com', 'btc', '0.0002', NULL, 'unicorn receive charge', '$2y$10$zFyshao43mJaXFRIMMAozulF8n7JAdAK1sS9Mo0DdIqWCq7o2QHb.', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 11:55:28', NULL),
(136, '50', 'thompsonamadi@gmail.com', 'btc', '0.001', NULL, 'btc funds transfer', '$2y$10$ZUZkfUgXZye0sZS0ahELheYMDjU1I0YuSKvvgPREXBxyvYbWCGvXW', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 14:50:06', NULL),
(137, '50', 'thompsonamadi@gmail.com', 'btc', '0.0001', NULL, 'btc funds transfer charge', '$2y$10$kmYZfzWrKDOeZJf/GELIa.yFVTgz4Jff.hEFHErBv/Xzm.pw1Ivz2', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 14:50:06', NULL),
(138, '50', 'thompsonamadi@gmail.com', 'btc', '0.0013', NULL, 'btc funds transfer', '$2y$10$ifK6beWF/PasEHAOkjuPJeemeMFwAPMbFnSehUtHxg7X78Giq6hIi', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 14:53:37', NULL),
(139, '50', 'thompsonamadi@gmail.com', 'btc', '0.00013', NULL, 'btc funds transfer charge', '$2y$10$/RvcDVwE/ypsXp49jYgRau5RrVTALDLGMUC1uYbt0oi6KfL08eK76', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 14:53:37', NULL),
(140, '50', 'thompsonamadi@gmail.com', 'btc', '0.1', NULL, 'btc funds transfer', '$2y$10$9Bxl6XPbcseEl8/hIn0ps.q3vGGW69PoNWAapBJuyvOFyNYMnT/e2', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 14:58:37', NULL),
(141, '50', 'thompsonamadi@gmail.com', 'btc', '0.002', NULL, 'btc funds transfer charge', '$2y$10$HdZa1orNGi5zDgw6cNUIie1bsqxEDabTa/LIOthnCD7qNgHUoWCu2', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 14:58:37', NULL),
(142, '1', 'titan.offline@gmail.com', 'btc', '0.09', NULL, 'unicorn receive', '$2y$10$HYDi1Mjp71WjWswdOukf8e2k0Ipdp8s2cf/CyG9/YIdN6hRrGlcXO', 'thompsonamadi@gmail.com', 'completed', '0', '2017-10-26 15:05:29', NULL),
(143, '50', 'thompsonamadi@gmail.com', 'btc', '0.0002', NULL, 'unicorn receive charge', '$2y$10$8Z1pKy.ofazHeJLtcK3jYeow6JrI7vEycrT0WdBZ478MFs.aJ9KPe', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 15:05:29', NULL),
(144, '1', 'titan.offline@gmail.com', 'btc', '0.0122626', NULL, 'unicorn deposit', '$2y$10$ombkYZJByp449bOFbMtxde/MxeQPYif1gmg5VnsCO1cq/Jk5b5lVS', 'thompsonamadi@gmail.com', 'completed', '0', '2017-10-26 15:15:37', NULL),
(145, '1', 'titan.offline@gmail.com', 'btc', '0.01571698', NULL, 'Flex', '$2y$10$gxBWUM7kJBM47/WhUEFSBuRziHIa/a1DaqIMQKGiwL7yJjxPdUmWq', 'thompsonamadi@gmail.com', 'completed', '0', '2017-10-26 15:25:13', NULL),
(146, '1', 'titan.offline@gmail.com', 'currency', '20000', NULL, 'deposit', '$2y$10$IqMkxvptpAQ6PowNnNP/8.VFcA.MUbjx8OGjfFy4RsPY2QuzhkG5i', 'calmpress@gmail.com', 'completed', '0', '2017-10-26 15:40:27', NULL),
(147, '2', 'calmpress@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$UKC/YvcVuxIPkN.Wq/1Iy.cCszvFDksOEFcQKvl9COW6gCj3vUBXG', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 15:40:27', NULL),
(148, '1', 'titan.offline@gmail.com', 'btc', '0.008866647634720986', NULL, 'unicorn instant buy', '$2y$10$TwQyKtKbGp8bxfApX6Tn4OuqVqCcteJhUsOjWIUOaZjL0hfpYgS2i', 'calmpress@gmail.com', 'completed', '0', '2017-10-26 15:42:15', NULL),
(149, '2', 'calmpress@gmail.com', 'currency', '19800', NULL, 'unicorn instant buy', '$2y$10$DfW4dmPQOlv3/JEo3gyyAekogBnP03v1NDj/aZimp6Bw3NGwJS/Aa', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 15:42:15', NULL),
(150, '1', 'titan.offline@gmail.com', 'btc', '0.0093', NULL, 'unicorn deposit', '$2y$10$EMs.ugd4Ebl/M5sdjX5b.ea57bXNthhT4nmg7I1Wcr7fHwoqyIrkK', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-26 19:15:37', NULL),
(151, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.0002', NULL, 'unicorn deposit charge', '$2y$10$e8PYG/cLjjJ4ZuR6uD9TkOg4NoF4gw0ozIYkMHorpESLxa5RJ2tRO', 'titan.offline@gmail.com', 'completed', '0', '2017-10-26 19:15:37', NULL),
(152, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.0091', NULL, 'Excess Surcharge', '$2y$10$JRjwFmzLSQmM/Lo5ilp4EujSY0aTMMxhN0.5S6k7glvd5io.Kk2Y.', 'titan.offline@gmail.com', 'completed', '0', '2017-10-28 07:52:39', NULL),
(153, '1', 'titan.offline@gmail.com', 'currency', '90000', NULL, 'deposit', '$2y$10$6DSflDEfn73/JS/fdMmxJe967ZBBCZzys5zgLtWdzUE8fhRaq7C7S', 'bennytex@gmail.com', 'completed', '0', '2017-10-28 11:42:51', NULL),
(154, '67', 'bennytex@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$ubk.2O2omJoJ82n.NumQxOA7lO9MXYMJEoiB5U9wzbHIOazLEoXje', 'titan.offline@gmail.com', 'completed', '0', '2017-10-28 11:42:52', NULL),
(155, '2', 'calmpress@gmail.com', 'btc', '0.006', NULL, 'exchange', '$2y$10$6q10FOCgplcCNAbMRCbFSOagINvNB/5VnJ7UepW1mk97Sle/w.F02', 'titan.offline@gmail.com', 'completed', '0', '2017-10-29 17:52:53', NULL),
(156, '1', 'titan.offline@gmail.com', 'btc', '0.006', NULL, 'exchange cancelled', '$2y$10$hoLF0bEc2UFGwvyQsoVrru5/agotVW4715QbblDXebeSo3qigY2bO', 'calmpress@gmail.com', 'completed', '0', '2017-10-29 19:12:24', NULL),
(157, '1', 'titan.offline@gmail.com', 'btc', '0.006', NULL, 'exchange cancelled', '$2y$10$bDbzohTOipGNCMpe3r4LC.BaJDM6QVvVgkzTjY.2F7UpdS2aTLNJ2', 'calmpress@gmail.com', 'completed', '0', '2017-10-29 19:12:55', NULL),
(158, '1', 'titan.offline@gmail.com', 'btc', '0.008', NULL, 'exchange cancelled', '$2y$10$wECyE39qhW1A.S/.p1FHdeBTqPxUNdpm.WqXBsoJm3LKNxDeBZSqG', 'calmpress@gmail.com', 'completed', '0', '2017-10-29 19:13:08', NULL),
(159, '2', 'calmpress@gmail.com', 'btc', '0.004', NULL, 'exchange', '$2y$10$/w55hKlRRqpuZ6kP78OCo.G41rFSvDsGbS/GKySOXV2eXSgaHBaka', 'titan.offline@gmail.com', 'completed', '0', '2017-10-29 19:13:35', NULL),
(160, '1', 'titan.offline@gmail.com', 'btc', '0.004', NULL, 'exchange cancelled', '$2y$10$SV.ZuI4pPKitsUfEF8s6VerZnGX4ba1B.aMgZF5TbpPHu8TWNNB..', 'calmpress@gmail.com', 'completed', '0', '2017-10-29 19:14:30', NULL),
(161, '1', 'titan.offline@gmail.com', 'currency', '100000', NULL, 'deposit', '$2y$10$gpnz4R4lMC/Y3SPzYcmaLuiPnM9jHg/Bt34ZyIJ930zFUGL0R8Xpy', 'bennytex@gmail.com', 'completed', '0', '2017-10-30 07:39:30', NULL),
(162, '67', 'bennytex@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$or02Z6NaDHiEd4l.nYgD/eclbS02y/B5KFx5NUJpuTTeCJLGA3HYK', 'titan.offline@gmail.com', 'completed', '0', '2017-10-30 07:39:30', NULL),
(163, '25', 'othuke.imonikiro@gmail.com', 'btc', '0.00101', NULL, 'unicorn instant sell', '$2y$10$ljDhDGCa6wbaEbhHF4gNsuLd1USeMZKprp2E6P60gQUKeztRIsKZa', 'titan.offline@gmail.com', 'completed', '0', '2017-10-31 11:40:30', NULL),
(164, '1', 'titan.offline@gmail.com', 'currency', '2099.6952115', NULL, 'unicorn instant sell', '$2y$10$fiSmv3Pu/Ub0z9L2CTUrluyG.7ARmhJn9cyZKnGRkC4AjO4XbwB0e', 'othuke.imonikiro@gmail.com', 'completed', '0', '2017-10-31 11:40:30', NULL),
(165, '1', 'titan.offline@gmail.com', 'btc', '0.0009', NULL, 'unicorn instant buy', '$2y$10$5sbha.K/GOdZiy5PKXcg1Oyz7FF6IUwi0Or0wXXQ9iYndg9DTxb/y', 'othuke.imonikiro@gmail.com', 'completed', '0', '2017-10-31 12:36:34', NULL),
(166, '25', 'othuke.imonikiro@gmail.com', 'currency', '2097.8325', NULL, 'unicorn instant buy', '$2y$10$qH4t3r3IVvqKg6o.dkzng.KXbUo.byAkNVf62jPT4ao9osvQtfvs.', 'titan.offline@gmail.com', 'completed', '0', '2017-10-31 12:36:34', NULL),
(167, '25', 'othuke.imonikiro@gmail.com', 'btc', '0.0008181', NULL, 'btc funds withdrawal', '$2y$10$zmxsOoVrbTuqrsQEbQc89e2tpGQPe.LqQc1KUWX3Pl6TgBooJLi2S', 'titan.offline@gmail.com', 'completed', '0', '2017-10-31 12:40:48', NULL),
(168, '25', 'othuke.imonikiro@gmail.com', 'btc', '0.0000909', NULL, 'btc funds withdrawal charge', '$2y$10$Vpsmtka/A5Ar7UDZJ34J7uBjQ0aXFM/.wRonVhIihw5Nq/t3O8K8u', 'titan.offline@gmail.com', 'completed', '0', '2017-10-31 12:40:48', NULL),
(169, '67', 'bennytex@gmail.com', 'currency', '189599.999', NULL, NULL, '$2y$10$Gt7tg79VjmomSyiaMnmdBO57.bMbkr71n.9p4SD3y1O2DxW.bUBtq', 'titan.offline@gmail.com', 'completed', '0', '2017-10-31 14:09:10', NULL),
(170, '67', 'bennytex@gmail.com', 'currency', '0.00099999998928979', NULL, NULL, '$2y$10$XZu7/r5ADBOx5VK30pJ7Tupph0ZXfT9poBpgbzICAT6wLMz7jcfBa', 'titan.offline@gmail.com', 'completed', '0', '2017-10-31 14:09:29', NULL),
(171, '1', 'titan.offline@gmail.com', 'btc', '0.01', NULL, 'exchange cancelled', '$2y$10$BZSrofkZNJ2N7L6lc6v2bO0N7JFu0lEb4ZGTZ.Sn1God7qPJduIjO', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-31 17:48:25', NULL),
(172, '1', 'titan.offline@gmail.com', 'btc', '0.01', NULL, 'exchange cancelled', '$2y$10$dudA6Rim5Vn/vNLtSP.p1.Ra2U01D9/AWDl4K3bKflCF5qcuEfF2O', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-31 17:48:26', NULL),
(173, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.01', NULL, 'exchange', '$2y$10$08hiF2SUZurarbYCPdgu3e6Rsi3RrJMm2tnqwLJAgfC.QFK1a8Q9e', 'titan.offline@gmail.com', 'completed', '0', '2017-10-31 17:49:12', NULL),
(174, '1', 'titan.offline@gmail.com', 'btc', '0.01', NULL, 'exchange cancelled', '$2y$10$lkF/gWRoosTpDhEal1.p4eYiqywBiSYAfChQAB3arAlAsWPlMlZFy', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-31 17:49:48', NULL),
(175, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.01', NULL, 'exchange', '$2y$10$8tO8uCbhycv7CH1eQ/vE1OasdrUOIHxl.T/kmx4oBU1zkXZmQk04S', 'titan.offline@gmail.com', 'completed', '0', '2017-10-31 17:50:30', NULL),
(176, '1', 'titan.offline@gmail.com', 'btc', '0.01', NULL, 'exchange cancelled', '$2y$10$uZPty8HSiI3AxI58G2OpOu/ouGmr9aeAXN8Xe19lixUqTIbPOUvCu', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-31 17:50:43', NULL),
(177, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.01', NULL, 'exchange', '$2y$10$zO.nVyHD/i/Ktw6aONSNwuFBMyx5Ij8vh/LELZetU1AoPdjQdsR1O', 'titan.offline@gmail.com', 'completed', '0', '2017-10-31 17:51:01', NULL),
(178, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.01', NULL, 'exchange', '$2y$10$JsS5Q1QPaU0OW4inzw0JCuy/ysod7zLo9eGzq9.1mNIblBi.Q6hyK', 'titan.offline@gmail.com', 'completed', '0', '2017-10-31 17:51:55', NULL),
(179, '1', 'titan.offline@gmail.com', 'btc', '0.01', NULL, 'exchange cancelled', '$2y$10$Fi1c/E8AMeqUW/eWyWWmtewLOCxYy.Xhy48jbCl.YsydteYVopKg2', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-31 17:52:03', NULL),
(180, '1', 'titan.offline@gmail.com', 'btc', '0.01', NULL, 'exchange cancelled', '$2y$10$Cwe4gnGeqe2Y8YTQmYamLeYD3YXRvyeNAM80bLo5u3ktGHrTNVgGa', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-10-31 17:52:08', NULL),
(181, '2', 'calmpress@gmail.com', 'btc', '0.004', NULL, 'exchange', '$2y$10$PPy5DCETmLW6d0oTQyLgLOegstNQZW98h32xuCjQE35/b/n/lF.De', 'titan.offline@gmail.com', 'completed', '0', '2017-10-31 18:09:16', NULL),
(182, '1', 'titan.offline@gmail.com', 'btc', '0.004', NULL, 'exchange cancelled', '$2y$10$RPPUIpO29DDr1EgcwjaKZ.vmQ1KIFdxldVlzBMqKzKsRGUFxQXbE6', 'calmpress@gmail.com', 'completed', '0', '2017-10-31 18:09:52', NULL),
(183, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.01', NULL, 'exchange', '$2y$10$kjzKGGZwK8LfbsB2OAb5COTx5cGLbnBvB/7uaqeHGpzCb/8pFT0HC', 'titan.offline@gmail.com', 'completed', '0', '2017-10-31 18:18:06', NULL),
(184, '1', 'titan.offline@gmail.com', 'currency', '90000', NULL, 'deposit', '$2y$10$rn2s/xnDYVidPh9kdo4rdO5TXqt0OsabRZ4GZIObzT/e2tf9VJBF2', 'ekenebenedict21@gmail.com', 'completed', '0', '2017-11-01 14:39:04', NULL),
(185, '73', 'ekenebenedict21@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$zH2oSfUek0UguFTUd9bKs.zZ7d3yNcCKifOwk0gM/Ri.Z8KxGDcXG', 'titan.offline@gmail.com', 'completed', '0', '2017-11-01 14:39:04', NULL),
(186, '1', 'titan.offline@gmail.com', 'currency', '100000', NULL, 'deposit', '$2y$10$I5JL9Jketsjulv98A//7/O8oIzkxVKDMFL5tXxnvcTLQwNG8IH5Gm', 'ekenebenedict21@gmail.com', 'completed', '0', '2017-11-01 14:39:12', NULL),
(187, '73', 'ekenebenedict21@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$lKf9HtFD2zvayu0GtbW7DObPuWgnW0q1rvX.38gZddtOLBcHz6APy', 'titan.offline@gmail.com', 'completed', '0', '2017-11-01 14:39:12', NULL),
(188, '1', 'titan.offline@gmail.com', 'btc', '0.01', NULL, 'exchange cancelled', '$2y$10$5u91UzC/ysQ4cheCVFhIe.EQsWzOSPwiPkrvUMqvx6sZ8E1SRrzRC', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-11-01 19:08:12', NULL),
(189, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.02', NULL, NULL, '$2y$10$rM0ChHcYhOn1rdR89iciz.PYDMyc9wr8rmYj1.snZgSjH0a7hdKE.', 'titan.offline@gmail.com', 'completed', '0', '2017-11-01 19:29:11', NULL),
(190, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.01', NULL, 'exchange', '$2y$10$5rjtsIAnPvZ7w1uajyxCqurETyOb5WNk4thSGe9sV79htFMPSmKsW', 'titan.offline@gmail.com', 'completed', '0', '2017-11-01 19:30:06', NULL),
(191, '1', 'titan.offline@gmail.com', 'btc', '0.01', NULL, 'exchange cancelled', '$2y$10$HuCkrfh/Cm4RYa5hwadP4ONjqhFfhiolqBQfRo8tFXlyuFxBqHEju', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-11-01 19:30:14', NULL),
(192, '1', 'titan.offline@gmail.com', 'btc', '0.07323322667972196', NULL, 'unicorn instant buy', '$2y$10$..0Bh5uP2UwSnlV9JkNl8e4tkI62htS/HTdJcUOntFPijFNmoR0si', 'ekenebenedict21@gmail.com', 'completed', '0', '2017-11-02 06:29:16', NULL),
(193, '73', 'ekenebenedict21@gmail.com', 'currency', '189600', NULL, 'unicorn instant buy', '$2y$10$B9GyE42D2SO2jgQOwZbuQO5VAz7bkuDkPfGp8AM/dCRuB2w2sjXAO', 'titan.offline@gmail.com', 'completed', '0', '2017-11-02 06:29:16', NULL),
(194, '50', 'thompsonamadi@gmail.com', 'btc', '0.003605', NULL, 'btc funds transfer', '$2y$10$v9MEaRdp1SApLyki8rVoJeA8p/XrfeUYTd8uFOLrJm4sX8EmCrZKG', 'titan.offline@gmail.com', 'completed', '0', '2017-11-02 08:20:59', NULL),
(195, '50', 'thompsonamadi@gmail.com', 'btc', '0.00036050000000000003', NULL, 'btc funds transfer charge', '$2y$10$BkcyYxYJ.V8q5OinEeT/nOBmt7xTYNSTtOeuAWfxLIW7M9K6pu3Fq', 'titan.offline@gmail.com', 'completed', '0', '2017-11-02 08:20:59', NULL),
(196, '50', 'thompsonamadi@gmail.com', 'btc', '0.0005', NULL, 'Recent Transfer Charge', '$2y$10$b1N5nUF2lRt9h6t.5ShMgOwIV5Tga8MHH1oAlAtAtZ1CkYdp3e1Wa', 'titan.offline@gmail.com', 'completed', '0', '2017-11-02 08:38:31', NULL),
(197, '50', 'thompsonamadi@gmail.com', 'btc', '0.145632', NULL, 'btc funds transfer', '$2y$10$6U5xH66xqJhmUVvkVFP6/uTjzLHrp0U4wbz8HzonzlWDqAGpS/0KG', 'titan.offline@gmail.com', 'completed', '0', '2017-11-02 17:34:09', NULL),
(198, '50', 'thompsonamadi@gmail.com', 'btc', '0.00291264', NULL, 'btc funds transfer charge', '$2y$10$MpIvrcld3mpyLvkLiYMPfOeCzlvN3Zvo.HjCDPBEvYeI8ectQV7qS', 'titan.offline@gmail.com', 'completed', '0', '2017-11-02 17:34:10', NULL),
(199, '1', 'titan.offline@gmail.com', 'btc', '0.001', NULL, 'Excess charge refund', '$2y$10$D0S8hTpme3XEnGx2BMRuQuoNj.JkEOlmGjH9UL0w20G8knybiXody', 'thompsonamadi@gmail.com', 'completed', '0', '2017-11-02 21:10:43', NULL),
(200, '50', 'thompsonamadi@gmail.com', 'btc', '0.001', NULL, 'RVSL', '$2y$10$5xjirW9ReDxys9Lut5DXJOdTdRBHlMOPyib/XiMbWXTgP8QyKktUS', 'titan.offline@gmail.com', 'completed', '0', '2017-11-02 21:34:59', NULL),
(201, '1', 'titan.offline@gmail.com', 'currency', '70000', NULL, 'deposit', '$2y$10$Btu/A4pqLA8SISHm8gcOl.7zqugJELfCFaXUZb72K1ilfbCxBLlka', 'chizobaegbujor@gmail.com', 'completed', '0', '2017-11-02 23:16:49', NULL),
(202, '45', 'chizobaegbujor@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$dkeUjdLJRfq4T4kwX8wXYuvxyGq6eoVZHF4VsuUIu9z1V8L.QsFLG', 'titan.offline@gmail.com', 'completed', '0', '2017-11-02 23:16:49', NULL),
(203, '57', 'Cnyenke1@gmail.com', 'btc', '0.054938', NULL, 'btc funds transfer', '$2y$10$yWSBTsfTp7E8MMbOu7L8ueJ2TeokqiDWfBd4yCeaa7keIHmOgo2hS', 'titan.offline@gmail.com', 'completed', '0', '2017-11-03 15:25:03', NULL),
(204, '57', 'Cnyenke1@gmail.com', 'btc', '0.0023463975600000004', NULL, 'btc funds transfer charge', '$2y$10$UNytIoDEY98xbyfRoJT77eXHbDOXN6Ov0.Bk1BY38tO36uY.VC9IW', 'titan.offline@gmail.com', 'completed', '0', '2017-11-03 15:25:03', NULL),
(205, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.01', NULL, 'exchange', '$2y$10$ULKrKSK61OKzKV3MqPJNcubheuwpFV2Uz9knhvFzM7CGMxob6tnMy', 'titan.offline@gmail.com', 'completed', '0', '2017-11-04 10:35:48', NULL),
(206, '50', 'thompsonamadi@gmail.com', 'btc', '0.041479', NULL, 'btc funds transfer', '$2y$10$yKTJ/bKrcIn6f7jJO.AXQ.WK4YEXUh2fBAU//gL3FnVc6AEXu8d.m', 'titan.offline@gmail.com', 'completed', '0', '2017-11-04 12:33:28', NULL),
(207, '50', 'thompsonamadi@gmail.com', 'btc', '0.00273157692', NULL, 'btc funds transfer charge', '$2y$10$tvYfiD2SKeDo1DyVlbl3KelCeTWpsLWUf2zu7j.RHq37zRTBA67Ya', 'titan.offline@gmail.com', 'completed', '0', '2017-11-04 12:33:28', NULL),
(208, '50', 'thompsonamadi@gmail.com', 'btc', '0.00372', NULL, 'Transaction fee', '$2y$10$36nzwTVgneebYIhjSP2m2OmeehYeJcFhrqTFJfUOCrvuwfx2H23xi', 'titan.offline@gmail.com', 'completed', '0', '2017-11-04 12:51:39', NULL),
(209, '1', 'titan.offline@gmail.com', 'currency', '20000', NULL, 'deposit', '$2y$10$BUg1G05zA3i/H9AZb46HFOK6ZP9LhpW1iTk0n9pfanOGNHncPFOCe', 'unicornbitex@gmail.com', 'completed', '0', '2017-11-04 14:10:18', NULL),
(210, '49', 'unicornbitex@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$VGSlAgQBnwOIQJKC4kxCkunMpo3hQfCN8dhR8oY.AvG8Evz5R/CJC', 'titan.offline@gmail.com', 'completed', '0', '2017-11-04 14:10:19', NULL),
(211, '1', 'titan.offline@gmail.com', 'currency', '200000', NULL, 'deposit', '$2y$10$Z9sEyOt2WHPdOC9Zedphp.B7w02lAmHHHrV4.rOCg12MzUHFRL8Yy', 'unicornbitex@gmail.com', 'completed', '0', '2017-11-04 14:10:30', NULL),
(212, '49', 'unicornbitex@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$55A6Sk6qSj4qaAeTvASt/ej1EYqy2WMnb6zDw4iimhzVPaSBcjJfS', 'titan.offline@gmail.com', 'completed', '0', '2017-11-04 14:10:30', NULL),
(213, '1', 'titan.offline@gmail.com', 'btc', '0.018286784323837006', NULL, 'unicorn instant buy', '$2y$10$Cvlj/uXLdTjF2jYIsPLA8ubAg99Io8zN8W4PmKP.tSxhmpMJaSViO', 'unicornbitex@gmail.com', 'completed', '0', '2017-11-04 14:16:00', NULL),
(214, '49', 'unicornbitex@gmail.com', 'currency', '50000', NULL, 'unicorn instant buy', '$2y$10$Fl9f69vw.ejSgsCpeTRcS.HNPF0GgaSMS4gLID8vbBUtgUtxINyk6', 'titan.offline@gmail.com', 'completed', '0', '2017-11-04 14:16:00', NULL),
(215, '49', 'unicornbitex@gmail.com', 'btc', '0.006811367354750996', NULL, 'unicorn instant sell', '$2y$10$yp6rWybGjv7KS6HABq5g6u.t7qAOh6izeW/mf6cXnmToSy4gtcgEi', 'titan.offline@gmail.com', 'completed', '0', '2017-11-04 14:16:38', NULL),
(216, '1', 'titan.offline@gmail.com', 'currency', '16750', NULL, 'unicorn instant sell', '$2y$10$JgUU4brSivwV.8U0g7A6SO9KC.od1V1a0LpQmek/mJESXgasDBE/m', 'unicornbitex@gmail.com', 'completed', '0', '2017-11-04 14:16:38', NULL),
(217, '49', 'unicornbitex@gmail.com', 'currency', '100000', NULL, 'exchange', '$2y$10$uUAcWlndqweWOKBeiisEquie68jjp3vr9vHzpO9hciO0TkrjDs.ee', 'titan.offline@gmail.com', 'completed', '0', '2017-11-04 14:18:03', NULL),
(218, '49', 'unicornbitex@gmail.com', 'btc', '0.01145', NULL, NULL, '$2y$10$Fp84vzwKgJvZsBkCaB3X3ubwueL7ZnGjwQUp7fFk.pcxgpfwnk3XS', 'titan.offline@gmail.com', 'completed', '0', '2017-11-05 04:25:26', NULL),
(219, '49', 'unicornbitex@gmail.com', 'btc', '0.00002541696908600968', NULL, NULL, '$2y$10$Qc8v7/kLBfbvXffRyBmOO.YhKdYK3XViyeDrbnp2IphW2FC8DUpqa', 'titan.offline@gmail.com', 'completed', '0', '2017-11-05 04:26:00', NULL),
(220, '1', 'titan.offline@gmail.com', 'btc', '0.00206897', NULL, 'unicorn deposit', '$2y$10$JfNWCDDBLJz74Pa6kCbIiuJotRkyCyuXdGdUossXXphrdFj2gkzx2', 'temitayooyalowo55@hotmail.com', 'completed', '0', '2017-11-06 03:55:31', NULL),
(221, '35', 'temitayooyalowo55@hotmail.com', 'btc', '0.0002', NULL, 'unicorn deposit charge', '$2y$10$muttvJbxER1P4RaqdLLK.O1LYu/JfI4fO5ipKSDO2vZ37JozT/v5y', 'titan.offline@gmail.com', 'completed', '0', '2017-11-06 03:55:31', NULL),
(222, '2', 'calmpress@gmail.com', 'btc', '0.008', NULL, 'exchange', '$2y$10$50aSucOTQ6IB5spQiOi46.cTCfb5E5Mq/HDJRqiU6BclrYU9uXKsa', 'titan.offline@gmail.com', 'completed', '0', '2017-11-06 06:54:02', NULL),
(223, '1', 'titan.offline@gmail.com', 'btc', '0.008', NULL, 'exchange cancelled', '$2y$10$c2499hNuaC1X5APjxZrXneTcgCr/f.ATUTVNVqocWzwoatE5GYn86', 'calmpress@gmail.com', 'completed', '0', '2017-11-06 06:54:40', NULL),
(224, '1', 'titan.offline@gmail.com', 'btc', '0.00958485', NULL, 'unicorn receive', '$2y$10$uil1BfitpgrMpFsa8ei93uulmq.bhtjSodflP.4eN.WFK4MOC4Gq.', 'thompsonamadi@gmail.com', 'completed', '0', '2017-11-06 12:30:53', NULL),
(225, '50', 'thompsonamadi@gmail.com', 'btc', '0.0002', NULL, 'unicorn receive charge', '$2y$10$PFcKhIpc6IS4tsstUbPBSuMQquJF98bxv1Uu0n5jtEI4fUmIOmPsq', 'titan.offline@gmail.com', 'completed', '0', '2017-11-06 12:30:53', NULL);
INSERT INTO `transactions` (`id`, `user_id`, `email`, `type`, `amount`, `time_created`, `description`, `transaction_id`, `recieved_by`, `status`, `deleted`, `created_at`, `updated_at`) VALUES
(226, '48', 'sokariharry@gmail.com', 'currency', '99800', NULL, 'Unicorn', '$2y$10$T5o.OvlRIoIPpjmqUiOLHuI7UA0zvEg5GNoN9dwQNg6C2LbI3dtra', 'titan.offline@gmail.com', 'completed', '0', '2017-11-06 14:53:33', NULL),
(227, '1', 'titan.offline@gmail.com', 'btc', '0.00278572', NULL, 'unicorn deposit', '$2y$10$KhVNlx0DisLUFMbFEwbXge/Fo97aT1lwR7JfPicjdGl22pc1FAXnW', 'clinsgfx@gmail.com', 'completed', '0', '2017-11-06 20:10:41', NULL),
(228, '99', 'clinsgfx@gmail.com', 'btc', '0.0002', NULL, 'unicorn deposit charge', '$2y$10$dgFcTmB4.opuNrmFZQU6dOjLaTSCR5sN7YdiXY364THstaOaBnXz.', 'titan.offline@gmail.com', 'completed', '0', '2017-11-06 20:10:41', NULL),
(229, '49', 'unicornbitex@gmail.com', 'currency', '98900', NULL, 'Empty test', '$2y$10$SwmQ.Ht1oSwpgOsqMhfLX.4sxuw307JRbVQlF.Risl1hFKtiKq96O', 'titan.offline@gmail.com', 'completed', '0', '2017-11-06 20:28:52', NULL),
(230, '99', 'clinsgfx@gmail.com', 'btc', '0.002585', NULL, 'exchange', '$2y$10$VKjhhL3EZfSsOAir4kSeQuxufY350lLwcKiQuQ8IvlPGwmucTk5Q2', 'titan.offline@gmail.com', 'completed', '0', '2017-11-07 09:15:12', NULL),
(231, '1', 'titan.offline@gmail.com', 'btc', '0.002585', NULL, 'exchange cancelled', '$2y$10$rOixYuPKZPzDgNjcKmT5Fuqlxgdao1jnMEN/3X0DIpYmmmJAOTq4W', 'clinsgfx@gmail.com', 'completed', '0', '2017-11-07 09:30:03', NULL),
(232, '99', 'clinsgfx@gmail.com', 'btc', '0.002585', NULL, 'exchange', '$2y$10$W/0o3fMwmSrJiDKBbn8p0emAlCwvWKvEOpyG/8B9nGjljeUeldp.O', 'titan.offline@gmail.com', 'completed', '0', '2017-11-07 09:30:26', NULL),
(233, '1', 'titan.offline@gmail.com', 'btc', '0.002585', NULL, 'exchange cancelled', '$2y$10$fz5CGuMUzSKX5QQv3TU14.ffapxW0Z01XMVG315ZbRwn4FnjFMq8.', 'clinsgfx@gmail.com', 'completed', '0', '2017-11-07 09:32:17', NULL),
(234, '99', 'clinsgfx@gmail.com', 'btc', '0.002585', NULL, 'unicorn instant sell', '$2y$10$M8Ze7Zv/Olck9BiC7iK9/uMRiqMGDYRRGmDCMe/fyyFgv1ye3KWKS', 'titan.offline@gmail.com', 'completed', '0', '2017-11-07 09:32:36', NULL),
(235, '1', 'titan.offline@gmail.com', 'currency', '6317.550778000001', NULL, 'unicorn instant sell', '$2y$10$duGmRHloDFGcCAXW8RLAJuWWcJxQEjI3eKW2FF0Nh.cHdBWhTyXAm', 'clinsgfx@gmail.com', 'completed', '0', '2017-11-07 09:32:36', NULL),
(236, '99', 'clinsgfx@gmail.com', 'currency', '6100', NULL, 'currency funds withdrawal NGN', '$2y$10$Js9gFIkCjkBkjpJ1HDgmQuEAo.0eLWOglZut9GlLSFVSgo8ZDDRTa', 'titan.offline@gmail.com', 'completed', '0', '2017-11-07 12:24:37', NULL),
(237, '99', 'clinsgfx@gmail.com', 'currency', '200', NULL, 'currency funds withdrawal NGN charge', '$2y$10$k0b4GISWqfvpqVANW7IM6u1w54yrVFvLP1ZAVwn/wSfM8GorYjhCm', 'titan.offline@gmail.com', 'completed', '0', '2017-11-07 12:24:37', NULL),
(238, '50', 'thompsonamadi@gmail.com', 'btc', '0.1252473', NULL, 'btc funds transfer', '$2y$10$EY7CawDMskAaJBq4VLEya.ezXQx.IVE6aL5FbseKktHXJ.K1VHPia', 'titan.offline@gmail.com', 'completed', '0', '2017-11-07 14:06:12', NULL),
(239, '50', 'thompsonamadi@gmail.com', 'btc', '0.0030728154399999996', NULL, 'btc funds transfer charge', '$2y$10$NgCHMDYuez9jlh9ZahST7.gf3.4VGJ9keXvG44MX2sCt1AAQeTopS', 'titan.offline@gmail.com', 'completed', '0', '2017-11-07 14:06:12', NULL),
(240, '57', 'Cnyenke1@gmail.com', 'btc', '0.04780000', NULL, 'btc funds transfer', '$2y$10$UruinOFjW5Xp6DthWl9XhOGNzQseINcd8G5j0G47SQpwRIMHISrY6', 'titan.offline@gmail.com', 'completed', '0', '2017-11-07 14:15:26', NULL),
(241, '57', 'Cnyenke1@gmail.com', 'btc', '0.00268592058', NULL, 'btc funds transfer charge', '$2y$10$FNxF0m08N3AWytMCpGeGBOak1xPhL0TBQXl9LeACcEGQXaFfaU6Qi', 'titan.offline@gmail.com', 'completed', '0', '2017-11-07 14:15:26', NULL),
(242, '1', 'titan.offline@gmail.com', 'btc', '0.0014187', NULL, 'unicorn deposit', '$2y$10$2jycFmfsdhtdm/gftzHDS.KYwE74dxkn5ZRukvshta.kQD/Dcde2.', 'solomonmark83@gmail.com', 'completed', '0', '2017-11-07 21:35:29', NULL),
(243, '100', 'solomonmark83@gmail.com', 'btc', '0.0002', NULL, 'unicorn deposit charge', '$2y$10$sBL.medAGrxNcgvl83qGI.IlJ4RSLm80/1eFVw.Shz.ZJnUtpCgU6', 'titan.offline@gmail.com', 'completed', '0', '2017-11-07 21:35:29', NULL),
(244, '1', 'titan.offline@gmail.com', 'btc', '0.00618171', NULL, 'unicorn receive', '$2y$10$YONX2Dd528RPmlBZC..I8OJmE/x4.RsbNVBjTNpxESGAQtaJs1RZi', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-11-08 05:20:36', NULL),
(245, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.0002', NULL, 'unicorn receive charge', '$2y$10$rUscB3/ip0C8cGcze9hQd.6p9SJCg09eET/xbpMpLfGmKkSzWx35W', 'titan.offline@gmail.com', 'completed', '0', '2017-11-08 05:20:36', NULL),
(246, '1', 'titan.offline@gmail.com', 'btc', '0.01', NULL, 'exchange cancelled', '$2y$10$gToImt7j/QsY6i7ewF5L1eBTTHZf3ipdFsNxgkidiLAoKFywMNDF6', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-11-08 06:30:53', NULL),
(247, '1', 'titan.offline@gmail.com', 'btc', '0.00598171', NULL, 'unicorn receive 0f57f31d43d7b3530006cad95f9c8864b093816a91ab7e1b03bb64abc943d812', '$2y$10$2OgPg3ikHmOwFkY1N.sD0uLZl3XtDxa.l3mXzqyyToQ2dXKN9iD3.', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-11-08 07:23:49', NULL),
(248, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.0002', NULL, 'unicorn receive charge 0f57f31d43d7b3530006cad95f9c8864b093816a91ab7e1b03bb64abc943d812', '$2y$10$3tgeABT6.FD919pir7TKqeWGVITMOxNz2zerIsvkt3GAfaj/z5rSu', 'titan.offline@gmail.com', 'completed', '0', '2017-11-08 07:23:49', NULL),
(249, '1', 'titan.offline@gmail.com', 'currency', '50000', NULL, 'deposit', '$2y$10$a301xUtlazLisnbrrD7wYelltD8AprQ3nXfNGA/OvQj/aylbnRlme', 'ekenebenedict21@gmail.com', 'completed', '0', '2017-11-08 10:46:08', NULL),
(250, '73', 'ekenebenedict21@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$/FT7n03o8u000H6Vn6ljw.BgEhoATDDsFVWCQK1WgTouEsxC/tEIK', 'titan.offline@gmail.com', 'completed', '0', '2017-11-08 10:46:09', NULL),
(251, '1', 'titan.offline@gmail.com', 'btc', '0.01746900251785153', NULL, 'unicorn instant buy', '$2y$10$C2JHqKI2Qe.Npdk1FgM1uOnpyJQKeOxYj927bB4IfSwab3OFBbKO.', 'ekenebenedict21@gmail.com', 'completed', '0', '2017-11-08 15:09:15', NULL),
(252, '73', 'ekenebenedict21@gmail.com', 'currency', '49800', NULL, 'unicorn instant buy', '$2y$10$xtCfgaPlMQ1bmu2UhkhA7OGlAD.v4CD2Lxg825zmfEb.OA23.L28G', 'titan.offline@gmail.com', 'completed', '0', '2017-11-08 15:09:15', NULL),
(261, '1', 'titan.offline@gmail.com', 'btc', '0.02498017332947775', NULL, 'unicorn instant buy', '$2y$10$aRM/wnFQ/yf/ZhSs3x.s3uDB/JnD0PU2o1hZw.xusoSUlRKAUb.qe', 'chizoba8000@gmail.com', 'completed', '0', '2017-11-09 05:18:55', NULL),
(260, '105', 'chizoba8000@gmail.com', 'currency', '200', NULL, 'deposit charge', '$2y$10$a7ekHqCdG6QCWuBdVSk5S.vbJYLkwfozfa7aIsx0fpD25erhu5rN6', 'titan.offline@gmail.com', 'completed', '0', '2017-11-09 02:34:43', NULL),
(259, '1', 'titan.offline@gmail.com', 'currency', '70000', NULL, 'deposit', '$2y$10$5qOkUc7KwCpj.0CKdCBF4.JL5ICyURPkchr.jjpn39QMOX1cX4Rzq', 'chizoba8000@gmail.com', 'completed', '0', '2017-11-09 02:34:42', NULL),
(256, '1', 'titan.offline@gmail.com', 'btc', '0.04786', NULL, NULL, '$2y$10$08fQZroTqirXZhtKWI/zI.UDj4lguAKTHv3ndunnDgQOUC8bg2.0O', 'chizoba8000@gmail.com', 'completed', '0', '2017-11-08 21:50:03', NULL),
(257, '45', 'chizobaegbujor@gmail.com', 'btc', '0.04786', NULL, NULL, '$2y$10$BJDTOHk1OrHJGz9VubUkOum/i9GxIZQKLJv.FikMJyKbcGjaeIvuS', 'titan.offline@gmail.com', 'completed', '0', '2017-11-08 21:50:13', NULL),
(258, '45', 'chizobaegbujor@gmail.com', 'currency', '69800', NULL, NULL, '$2y$10$wGvGSai2FxqQCpcUdQA5SeD8A3lvFc.jvrH38gmrDbL1Bm8eo5BL.', 'titan.offline@gmail.com', 'completed', '0', '2017-11-08 21:51:55', NULL),
(262, '105', 'chizoba8000@gmail.com', 'currency', '69800', NULL, 'unicorn instant buy', '$2y$10$SKp4evCVj3G1xOqrP3qfM.EBZRGF7hBDmVkNvA3BX5kQ0HA5jgJZa', 'titan.offline@gmail.com', 'completed', '0', '2017-11-09 05:18:55', NULL),
(263, '1', 'titan.offline@gmail.com', 'currency', '100000', NULL, 'exchange cancelled', '$2y$10$mvY80Rglw/p38wqXpr9Dk.MyVFEXVFym85xmBtNwZFwA9AZLCr9.e', 'unicornbitex@gmail.com', 'completed', '0', '2017-11-10 15:01:30', NULL),
(264, '49', 'unicornbitex@gmail.com', 'currency', '88000', NULL, 'exchange', '$2y$10$sAfzR31VZfQncjU7U2N/EOLmnDw9yC9v7ne6ayUE7dikRnNTOky7q', 'titan.offline@gmail.com', 'completed', '0', '2017-11-11 07:59:06', NULL),
(265, '1', 'titan.offline@gmail.com', 'currency', '88000', NULL, 'exchange cancelled', '$2y$10$DLYU.t0hquhWSH/j0C5L2Ok2rZ4asyQ.e9X99rS2ig1MV8CBnfIZ.', 'unicornbitex@gmail.com', 'completed', '0', '2017-11-11 07:59:23', NULL),
(266, '49', 'unicornbitex@gmail.com', 'currency', '321.2', NULL, 'exchange', '$2y$10$xBNxUwR5UpjuXYFWZvsZp.FkQpoJ.g4whD0mIkKiqLiylDelQeXPK', 'titan.offline@gmail.com', 'completed', '0', '2017-11-11 07:59:46', NULL),
(267, '49', 'unicornbitex@gmail.com', 'currency', '4278', NULL, 'exchange', '$2y$10$jDZkIaa3JoZsN6RKsfuAu.04Vqkx224au5JnM4qBvww5fsEpxv4Bq', 'titan.offline@gmail.com', 'completed', '0', '2017-11-11 08:00:39', NULL),
(268, '49', 'unicornbitex@gmail.com', 'currency', '6720', NULL, 'exchange', '$2y$10$wDaNRwVFSLwMZQsONsKb/OwDVR99sjPHcJ4mKeoEj2/1CL.k2qna2', 'titan.offline@gmail.com', 'completed', '0', '2017-11-11 08:01:13', NULL),
(269, '49', 'unicornbitex@gmail.com', 'currency', '16100', NULL, 'exchange', '$2y$10$429uxRqfzQ4TwcdHWd/DquhqDeDRd7SO62SwoPCvKGFPswLUpCveW', 'titan.offline@gmail.com', 'completed', '0', '2017-11-11 08:02:23', NULL),
(270, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.017', NULL, 'exchange', '$2y$10$wTzgpWX1TXBjExyx1UB86OzhQ3vRH3H0HUCdoRUg4zTHr79HbsEdS', 'titan.offline@gmail.com', 'completed', '0', '2017-11-11 08:04:28', NULL),
(271, '21', 'the21stcenturyceo@gmail.com', 'btc', '0.0032', NULL, 'unicorn exchange(buy)', '$2y$10$VLXmuh.v9BYQQIQZ0gBjD.nzIiQ82TFkt178tYRMW/IRNb65FwUwq', 'unicornbitex@gmail.com', 'completed', '0', '2017-11-11 08:05:35', NULL),
(272, '49', 'unicornbitex@gmail.com', 'currency', '6720', NULL, 'unicorn exchange(buy)', '$2y$10$xIOBsqEu7EdRChvtVOTx7edFe2Gr3xx238zsPFpRhRdEd//3s2C.O', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-11-11 08:05:35', NULL),
(273, '1', 'titan.offline@gmail.com', 'btc', '0.017', NULL, 'exchange cancelled', '$2y$10$MdtyMwI2xJLcF8.bPsyzreVF1CYAxWmvz63o6MttD50Xl81mYbKzq', 'the21stcenturyceo@gmail.com', 'completed', '0', '2017-11-11 08:10:27', NULL),
(274, '21', 'the21stcenturyceo@gmail.com', 'currency', '6720', NULL, NULL, '$2y$10$AiqJpyJvPfjkFdd1YNL7eun5VVWr91U/xL/A01i6/4hOumwZ57f.W', 'titan.offline@gmail.com', 'completed', '0', '2017-11-11 08:11:59', NULL),
(275, '1', 'titan.offline@gmail.com', 'currency', '321.2', NULL, 'exchange cancelled', '$2y$10$50StiKKffXLoIf/a7zdCF.9Y2olNg6RJeKkr4d1iFgBvSy3lRpgW6', 'unicornbitex@gmail.com', 'completed', '0', '2017-11-11 08:12:49', NULL),
(276, '1', 'titan.offline@gmail.com', 'currency', '4278', NULL, 'exchange cancelled', '$2y$10$VAoYdLjEgRDzrg7wrVkEOeMeelP0v7OySOrYRgm1P/NNTH7h9Jfb2', 'unicornbitex@gmail.com', 'completed', '0', '2017-11-11 08:12:53', NULL),
(277, '1', 'titan.offline@gmail.com', 'currency', '6720', NULL, 'exchange cancelled', '$2y$10$3ZsE1YYDRSeIfpCl9Wo35eT1INbJPaDnBnsrG2/ZW29gwOUdbCAm6', 'unicornbitex@gmail.com', 'completed', '0', '2017-11-11 08:12:56', NULL),
(278, '1', 'titan.offline@gmail.com', 'currency', '16100', NULL, 'exchange cancelled', '$2y$10$a.qXhPHzhxxt1nB6Gl1oBuD1qLwfCsBQIcDmKLe3nAM1Vx0Wy0Br2', 'unicornbitex@gmail.com', 'completed', '0', '2017-11-11 08:13:01', NULL),
(279, '50', 'thompsonamadi@gmail.com', 'btc', '0.00498303', NULL, 'btc funds transfer', '$2y$10$D8qA.RZbs7RLWJdZaUODh.MjHAWooekYK0T5eEjrTwpMZQ5sYXNpO', 'titan.offline@gmail.com', 'completed', '0', '2017-11-13 08:27:04', NULL),
(280, '50', 'thompsonamadi@gmail.com', 'btc', '0.0033537027100000003', NULL, 'btc funds transfer charge', '$2y$10$f.QQpBLf5zMOrNDnAyAVOeo17QZPl6vqh2N5ZIIF72HcU3G5hJsHq', 'titan.offline@gmail.com', 'completed', '0', '2017-11-13 08:27:04', NULL),
(281, '1', 'titan.offline@gmail.com', 'btc', '0.00497373', NULL, 'unicorn receive', '$2y$10$LPmq9eHDwHXapAyeBSeff.52vBmZuiS669cAwrzR9tJRlhF/U5QoG', 'thompsonamadi@gmail.com', 'completed', '0', '2017-11-13 09:00:58', NULL),
(282, '50', 'thompsonamadi@gmail.com', 'btc', '0.0002', NULL, 'unicorn receive charge', '$2y$10$y7.i4fREr07YdVfzsAU.6OkGOkcgGXo7oKwILSnl4EDyG3YWjpw0y', 'titan.offline@gmail.com', 'completed', '0', '2017-11-13 09:00:58', NULL),
(283, '1', 'titan.offline@gmail.com', 'btc', '0.05572891', NULL, 'unicorn receive a5483988a3b4b934f8931e65d70ebdd794bb7eff91884dca271cc6ca5e624dca', '$2y$10$wBF01X8OAuUXboowHfa0IOWbE.2rCVIcMFMeIVIsNUVU5Ne2N89Ja', 'thompsonamadi@gmail.com', 'completed', '0', '2017-11-13 09:35:29', NULL),
(284, '50', 'thompsonamadi@gmail.com', 'btc', '0.0002', NULL, 'unicorn receive charge a5483988a3b4b934f8931e65d70ebdd794bb7eff91884dca271cc6ca5e624dca', '$2y$10$Wc/RJG5McLx4LpGBYISwrOqoCKAjohSMok36fYKIJyTrSyisbNoQi', 'titan.offline@gmail.com', 'completed', '0', '2017-11-13 09:35:30', NULL),
(285, '50', 'thompsonamadi@gmail.com', 'btc', '0.055529', NULL, NULL, '$2y$10$qvyHOStnNqPLSGhWbkbIjOYtS4G6WU6CyHdQx7ZUplPwDBpoatN8i', 'titan.offline@gmail.com', 'completed', '0', '2017-11-13 14:05:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `upgrades`
--

CREATE TABLE `upgrades` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doc_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `others` varchar(10000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_delete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_delete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upgrades`
--

INSERT INTO `upgrades` (`id`, `user_id`, `email`, `doc_name`, `doc_link`, `status`, `reason`, `others`, `user_delete`, `admin_delete`, `created_at`, `updated_at`) VALUES
(1, '21', 'the21stcenturyceo@gmail.com', NULL, NULL, 'deleted', NULL, 'First Name: Precious<br/>Midle Name: Amobi<br/>Last Name: <br/>DOB: 1993-08-11<br/>Country: Nigeria<br/>', NULL, NULL, '2017-10-11 10:57:45', '2017-10-11 10:57:45'),
(2, '21', 'the21stcenturyceo@gmail.com', NULL, NULL, 'complete', NULL, 'First Name: Precious<br/>Midle Name: Amobi<br/>Last Name: <br/>DOB: 1993-08-11<br/>Country: Nigeria<br/>', NULL, NULL, '2017-10-11 10:58:55', '2017-10-11 11:43:05'),
(3, '15', 'nelsonpal55@gmail.com', NULL, NULL, 'complete', NULL, 'First Name: Nelson<br/>Midle Name: Chinonso<br/>Last Name: Ezo-Pal<br/>DOB: 1996-12-05<br/>Country: Nigeria<br/>', NULL, NULL, '2017-10-11 11:46:24', '2017-10-11 11:49:52'),
(4, '25', 'othuke.imonikiro@gmail.com', NULL, 'uploads/1507787037_IMG-20160526-WA0010.jpg', 'complete', NULL, 'First Name: OTHUKE<br/>Midle Name: AZUKA<br/>Last Name: IMONIKIRO<br/>DOB: 1987-08-08<br/>Country: Nigeria<br/>', NULL, NULL, '2017-10-12 05:44:14', '2017-10-12 07:35:05'),
(5, '2', 'calmpress@gmail.com', NULL, 'uploads/1507792389_photo files0001.jpg', 'complete', NULL, 'First Name: Precious<br/>Midle Name: EMMANUEL<br/>Last Name: Dike<br/>DOB: 1993-06-18<br/>Country: Nigeria<br/>', NULL, NULL, '2017-10-12 07:13:42', '2017-10-12 22:50:27'),
(6, '32', 'tallyy6453@gmail.com', NULL, 'uploads/1507993085_VOTERS CARD.png', 'complete', NULL, 'First Name: Oluwaseun<br/>Midle Name: Ayorinde<br/>Last Name: Omokore<br/>DOB: 1991-05-17<br/>Country: Nigeria<br/>', NULL, NULL, '2017-10-14 14:59:10', '2017-10-15 15:05:42'),
(7, '35', 'temitayooyalowo55@hotmail.com', NULL, 'uploads/1508221462_Temitayo Passport.jpg', 'complete', NULL, 'First Name: Temitayo<br/>Midle Name: NONE<br/>Last Name: Oyalowo<br/>DOB: 1980-02-15<br/>Country: Nigeria<br/>', NULL, NULL, '2017-10-17 06:24:35', '2017-10-17 07:19:30'),
(8, '40', 'Akorvuezenwakanma@gmail.com', NULL, 'uploads/1508260262_5.jpg', 'complete', NULL, 'First Name: Akorvueze<br/>Midle Name: Ihenacho<br/>Last Name: Nwakanma<br/>DOB: 1995-04-15<br/>Country: Nigeria<br/>', NULL, NULL, '2017-10-17 17:12:38', '2017-10-17 17:38:40'),
(9, '40', 'Akorvuezenwakanma@gmail.com', 'uploads/1508266534_Screenshot_2017-08-31-20-00-59.png', 'uploads/1508266453_Screenshot_2017-10-17-19-53-17.png', 'cancelled', 'You have to request for your statement of account from your bank showing your valid house address. Also get the PHCN bill of your current address.', NULL, NULL, '1', '2017-10-17 18:55:36', '2017-10-17 22:05:03'),
(10, '49', 'unicornbitex@gmail.com', NULL, 'uploads/1508586394_chigisoftQR.png', 'complete', NULL, 'First Name: Unicorn<br/>Midle Name: Ltd<br/>Last Name: Bitex<br/>DOB: 2017-11-04<br/>Country: Nigeria<br/>', NULL, NULL, '2017-10-21 11:46:36', '2017-10-21 11:47:21'),
(11, '49', 'unicornbitex@gmail.com', 'uploads/1508586464_chigisoftQR.png', 'uploads/1508586461_chigisoftQR.png', 'complete', NULL, NULL, NULL, NULL, '2017-10-21 11:47:46', '2017-10-21 11:48:16'),
(12, '50', 'thompsonamadi@gmail.com', NULL, 'uploads/1509015094_drivers Licence.jpg', 'complete', NULL, 'First Name: Ihunanyachi<br/>Midle Name: Thompson<br/>Last Name: Amadi<br/>DOB: 1991-04-04<br/>Country: Nigeria<br/>', NULL, NULL, '2017-10-26 10:51:40', '2017-10-26 15:09:50'),
(13, '99', 'clinsgfx@gmail.com', NULL, 'uploads/1510049015_valid id.png', 'complete', NULL, 'First Name: Clinton<br/>Midle Name: Chukwudi<br/>Last Name: Agburum<br/>DOB: 1993-08-05<br/>Country: Nigeria<br/>', NULL, NULL, '2017-11-07 10:04:59', '2017-11-07 12:15:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_confirm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number_confirm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_attempts` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banned` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `email`, `password`, `referral`, `level`, `phone_number`, `email_confirm`, `phone_number_confirm`, `ip`, `last_login`, `login_attempts`, `banned`, `picture`, `city`, `country`, `code`, `deleted`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'unicorn', NULL, 'admin', 'titan.offline@gmail.com', '$2y$10$3FwdXdsUfZKqdPpj6nZjPu8NARhUA.I6nZo4y77piVcR3rB8DXKBu', NULL, '1', '2347062297914', '2017-10-13 06:23:17', '2017-10-13 06:23:49', '197.211.61.184', '1510215582', NULL, NULL, NULL, 'PH', 'Nigeria', '0725', NULL, 'JlJSpokeoaqpGjORBFHPIybVUYuMK2J2YjGVZKKA8I7uRizs56osAgbWRpxh', '2017-10-13 06:18:14', NULL),
(2, 'Precious', 'El', 'Dike', 'calmpress@gmail.com', '$2y$10$bMpTs8h.4/nVsu0gVdF9/e3zt6uYKjUNtIXiWEROjYQEZaWahDNuq', NULL, '3', '2347062297914', '2017-10-10 20:30:54', '2017-10-10 20:30:54', '141.101.104.88', '1510503647', NULL, NULL, NULL, NULL, 'Nigeria', 'ASAMLMCPOE', NULL, 'KzQxWxIhUGCGTpGzrsOGVQmo2noHkwtxbwtxYkoTU3mSMPD3WDuM8Ziwe2Jm', '2017-10-10 13:18:27', '2017-10-12 22:50:27'),
(3, '', NULL, '', 'Ighokenneth@live.com', '$2y$10$N3WE1Prvq/4rf3ZbzrTspecDOkO9JhC6GaM2qmNaaB8W4L.8WuHF.', NULL, '4', '2347068598790', '2017-11-07 09:09:53', '2017-11-07 09:09:21', '141.101.98.213', '1510044682', NULL, NULL, NULL, NULL, 'Nigeria', '0450', NULL, NULL, '2017-10-10 19:13:00', '2017-10-10 19:13:00'),
(4, '', NULL, '', 'the21stcenturyceo33333@gmail.com', '$2y$10$knQvjgiO8zSxCNcWYTSwXOvz.nxZz3o.xCbtMz7LtD36RTaq3kgEi', NULL, '4', '2348071799885', '2017-10-10 20:30:54', '2017-10-10 20:31:28', '197.211.61.154', '1507715084', NULL, NULL, NULL, NULL, 'Nigeria', '6951', NULL, 'LvCtuISeGDhM74RcyT4BkL9urxDWZPhPWW46YJKosXUJrajJMVgbsV6W3H10', '2017-10-10 19:21:19', '2017-10-10 19:21:19'),
(5, 'Providence', 'Osedunme', 'Ifeosame', 'providenceifeosame@gmail.com', '$2y$10$NVaGkxORM/uegCGmIITJue.vre2F8OeEprkDarKdu49pRgNcBpqtO', NULL, '4', '2348187655140', '2017-10-14 18:19:59', '2017-10-14 18:19:03', '162.158.154.108', '1510504445', NULL, NULL, NULL, NULL, 'Nigeria', '5150', NULL, 's6qi62yho87E7ToSU5lf3tmAjZEmbPXIcCZYfkpgxHRIIpAIsZBM02RtytNv', '2017-10-10 19:30:17', '2017-10-10 19:30:17'),
(6, '', NULL, '', 'lite2fine@gmail.com', '$2y$10$dd0zX6BcMK0/tytm3tWrZeHaQUMl36gcPLSEj2bCR9fC6kWPBtLaq', NULL, '5', '', NULL, NULL, '197.210.24.238', '1507663887', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, 'dPLiNxVikLiiZst7rFPSBUGCkzQ1TCkqW39ZPQxH1j9GZ1xc9AamHGyQC2vW', '2017-10-10 19:31:27', '2017-10-10 19:31:27'),
(7, '', NULL, '', 'emmyifeanyi01@gmail.com', '$2y$10$tNQpW08LWyoyxPvbnOGM9.Xq2T.5kgWZSL9vfoXMP8SPvrgCU8wNK', NULL, '5', '', NULL, NULL, '197.210.226.114', '1507665964', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-10 20:06:04', '2017-10-10 20:06:04'),
(8, 'Testing​', NULL, 'Unicorm', 'unicorntest@gmail.com', '$2y$10$bydnKusL3flxJInoCRaoL.ta/b3GgxW/B/gXklLUP.Kian/km/95e', NULL, '4', '2347062297914', '2017-10-10 20:30:54', '2017-10-10 20:30:54', '197.211.61.36', '1509031183', NULL, NULL, NULL, NULL, 'Nigeria', '6071', NULL, 'b0yfmXzAjQqCMXy8rXZKVcaXoeTBvSY0tUXoohLiQl6JdzVC4fLdR8BvjI8m', '2017-10-10 20:38:58', '2017-10-10 20:38:58'),
(9, 'Erastus', NULL, 'Uso', 'erastususo@gmail.com', '$2y$10$nVnygtb0kVMaubBalluqyOAe9EX.MdU/Cfz3uDWxf9mtDeAe5HWGC', NULL, '4', '2348100993100', '2017-10-22 10:17:46', '2017-10-22 10:18:10', '160.152.35.242', '1510435358', NULL, NULL, NULL, NULL, 'Nigeria', '1630', NULL, NULL, '2017-10-10 21:56:24', '2017-10-10 21:56:24'),
(10, '', NULL, '', 'ifeosamep@yahoo.com', '$2y$10$hyXtxtybloKiP2Y55P5UwuLGWkDen3iXW0pBBOFfxjfL0DsBWJoKy', NULL, '5', '', NULL, NULL, '41.190.31.220', '1507689362', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-11 02:36:02', '2017-10-11 02:36:02'),
(11, 'uchenna', NULL, 'nnodim', 'dechosenuchenna@gmail.com', '$2y$10$EqJ8KwQCX0xgKS1rVCrJbOr0qVCrdlPExvZeJLCbh0YPaLC4i4b4y', NULL, '5', '', NULL, NULL, '197.210.29.234', '1508524433', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-11 06:04:54', '2017-10-11 06:04:54'),
(12, 'Iredia', 'Ativie', 'Raymond', 'raymondativie@gmail.com', '$2y$10$qfL0pxGl.g43CXCwv.hW/.b9spZmpZiQey1qrcw5sGCo78a0i6XcO', NULL, '5', '2348151700676', NULL, NULL, '129.56.12.27', '1507704344', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-11 06:45:44', '2017-10-11 06:45:44'),
(13, 'Samuel', 'Ajayi', 'Bamidele', 'ajayibamidele60@gmail.com', '$2y$10$SBnCKg3DLByrzIr2096lQuLD3UcPEKX4KOFQlUwokB8qPj.nc.axe', NULL, '4', '2348167736394', '2017-10-11 06:55:38', '2017-10-11 06:57:14', '199.58.86.249', '1509466353', NULL, NULL, NULL, NULL, 'Nigeria', '0015', NULL, 'KPt6Zh9261StyaJUM3p8gKyfBzwFx0G1ygcQuJcCO9pmzvys0NNhqfFDjWv2', '2017-10-11 06:50:26', '2017-10-11 06:50:26'),
(14, '', NULL, '', 'danieluokon@gmail.com', '$2y$10$uTKrkNz22RwzGu.jLKW4d.xqD3UvN3dQfjKXus0Mwuu.iQj59lD9u', NULL, '4', '2347067281841', '2017-10-11 07:47:09', '2017-10-11 07:46:50', '169.159.101.221', '1507830489', NULL, NULL, NULL, NULL, 'Nigeria', '0708', NULL, NULL, '2017-10-11 07:44:33', '2017-10-11 07:44:33'),
(15, 'Nelson', 'Chinonso', 'Ezo-Pal', 'nelsonpal55@gmail.com', '$2y$10$mhPrqh00ivt3RkjeQECeN.PvqL5IE2ZUYGI5TuWO7rBYDEvTsi/0G', NULL, '3', '2348065298937', '2017-10-11 11:42:26', '2017-10-11 10:07:05', '107.178.33.20', '1507717416', NULL, NULL, NULL, NULL, 'Nigeria', '7228', NULL, NULL, '2017-10-11 09:41:15', '2017-10-11 11:49:52'),
(16, 'Chukwu', 'Emeka', 'Isaac', 'gizmodesign124@gmail.com', '$2y$10$D0NkH66rcUgK3norCt2IXe1EqeBV2j5r0qGirDldE5Ic/hWyBRaX.', NULL, '4', '2348109291222', '2017-10-11 10:04:02', '2017-10-20 14:52:37', '105.112.33.210', '1508511058', NULL, NULL, NULL, NULL, 'Nigeria', '1158', NULL, 'wByUpoiu5tEHCisU6fa1ZOHf9gZHiyXuziU3zIAvgv2okaqBBD8h5kFHgOk3', '2017-10-11 10:00:10', '2017-10-11 10:00:10'),
(17, '', NULL, '', 'uniquewill9@gmail.com', '$2y$10$Q9MjZ9z5ByqsPhVXTTUT0uQX1Q8qX5B.qCsJ19ak/aHBv9UI2fkOW', NULL, '5', '', NULL, NULL, '41.217.119.229', '1509649055', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, 'TDYvLh5W7wGZXedLr7ctF2uqqAKPAPDE9C2VC1K8wq4uNVmAEhSWSPOoTZcR', '2017-10-11 10:03:53', '2017-10-11 10:03:53'),
(18, 'Chukwunweike', 'Emmanuel', 'Nwaosaji', 'emmyifeanyi69@yahoo.com', '$2y$10$flYgcc2BROoqUpxFG97WHedlOibljX349t5a3uVTt4CJ.4xJZ5p2C', NULL, '5', '2348136849882', '2017-10-11 10:31:30', NULL, '197.211.61.22', '1507799681', NULL, NULL, NULL, NULL, 'Nigeria', '7195', NULL, NULL, '2017-10-11 10:10:54', '2017-10-11 10:10:54'),
(19, 'Innocent', 'Kenneth', 'Bill', 'jimkeneths@gmail.com', '$2y$10$BjSVR3Fmts7jzU3NWRnWquqkCGqEtRc00WiSZIiMFuV5H8wLObJwy', NULL, '5', '2347031960724', NULL, NULL, '105.112.42.24', '1507717598', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-11 10:26:38', '2017-10-11 10:26:38'),
(20, 'Johnson', 'Ebere', 'Mercy', 'winnymercy@gmail.com', '$2y$10$yeEbV2w5cW8mMnq51sweJOOWXZ8Mw7ozFtzuhLGehM1b8eBNQLsTu', NULL, '4', '2348109208353', '2017-10-11 10:35:29', '2017-10-11 10:33:31', '41.217.113.189', '1507717737', NULL, NULL, NULL, NULL, 'Nigeria', '7804', NULL, 'PD6HR54dnJyQBi44aHCLMgXwZdFXZp9rgxuojVbzEwdRpUO5scaRzl7NJslS', '2017-10-11 10:28:57', '2017-10-11 10:28:57'),
(21, 'Precious', NULL, 'Chukundah', 'the21stcenturyceo@gmail.com', '$2y$10$9.RU/AG6xZ7Yx3S/qLq3FOgEKKRCJE.lWm.MW1w/QaUXLqRfVrSKC', NULL, '3', '2348071799885', '2017-10-11 10:35:50', '2017-10-11 10:37:38', '141.101.98.165', '1510580372', NULL, NULL, NULL, NULL, 'Nigeria', '5277', NULL, 'u9GlY9NAD4HjJ0Eks8I1U4cKxowjnQFzr2eYJUAXwPs2iqzSgPUs7kyUNggT', '2017-10-11 10:34:03', '2017-10-11 11:43:05'),
(22, '', NULL, '', 'Ojimgerald@gmail.com', '$2y$10$BlMnmD/wAy3Bj77bLSvLT.Pu6JhnPQ2n0UWvRLFnsn03fiE7OZ/Z6', NULL, '5', '2348037495671', '2017-10-11 11:29:33', NULL, '197.210.46.24', '1507720009', NULL, NULL, NULL, NULL, 'Nigeria', '0178', NULL, NULL, '2017-10-11 11:06:49', '2017-10-11 11:06:49'),
(23, '', NULL, '', 'memesara73@gmail.com', '$2y$10$WUBPyEvs7IG06128cLpP.u9JBO2M3uETk2scVFrE4b/GiZ/Za2Gne', NULL, '5', '', NULL, NULL, '197.255.175.198', '1507726165', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-11 12:49:25', '2017-10-11 12:49:25'),
(24, '', NULL, '', 'favourgolden@gmail.com', '$2y$10$lgSp9eb1x6YgQCHbbchB7.mcmwImYXS6bs0tlsnpC5u.74V9Z5AHW', NULL, '5', '', NULL, NULL, '41.190.30.121', '1508002924', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, 'lsJ1iUHFvfUoGAhnXpl9GeSRIVsxixcVXEjyLC2OzC8KA5bkrFZU2MUS5Faw', '2017-10-11 20:46:29', '2017-10-11 20:46:29'),
(25, '', NULL, '', 'othuke.imonikiro@gmail.com', '$2y$10$Bnjucmi/wMTzydUOPQFd4u1lPgPt8pBkIoW9veyEbg6zf.TTKvbty', NULL, '3', '2348060605959', '2017-10-12 05:38:28', '2017-10-12 05:39:19', '197.211.57.119', '1509533662', NULL, NULL, NULL, NULL, 'Nigeria', '1772', NULL, NULL, '2017-10-12 04:44:39', '2017-10-12 07:35:05'),
(26, '', NULL, '', 'workah10@gmail.com', '$2y$10$BFZQT464C.LABN.G.k00FeBnnopimSCNF87dKYGRJxhVJM9j27YuO', NULL, '5', '', NULL, NULL, '141.0.13.32', '1507800134', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-12 09:22:14', '2017-10-12 09:22:14'),
(27, '', NULL, '', 'Chicomzy9@gmail.com', '$2y$10$BXIrt5p.cQgvkXCpA1uMmuM3JzGQ0RTPaVnvZb1U7moGVDOeHUfo2', NULL, '5', '', NULL, NULL, '141.0.13.32', '1507800228', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-12 09:23:48', '2017-10-12 09:23:48'),
(28, 'Chiemela', NULL, 'Chinedum', 'chiemelachinedum@gmail.com', '$2y$10$wznzRugXgG19e5EBTxN5aeqo.fO2GuaazjyhdfBK.qHTjJugpNo7.', NULL, '5', '2348034503911', '2017-10-12 11:12:57', NULL, '197.210.8.223', '1507806555', NULL, NULL, NULL, NULL, 'Nigeria', '7730', NULL, NULL, '2017-10-12 11:09:15', '2017-10-12 11:09:15'),
(29, 'Chibuike', 'Chukwuka', 'Asuzu', 'cloonicux@gmail.com', '$2y$10$bmvPl9DI1tU2kP/5kgB2/ObnTdFJzW7lonud8Dcb/60wX.K6hHf/a', NULL, '4', '2349031547781', '2017-10-12 14:42:34', '2017-10-12 14:39:48', '105.112.33.200', '1507870428', NULL, NULL, NULL, NULL, 'Nigeria', '3019', NULL, NULL, '2017-10-12 14:30:25', '2017-10-12 14:30:25'),
(30, '', NULL, '', 'marritboss@gmail.com', '$2y$10$ddYHv7Ej7XUfzCrgq8hzmuJc6xgGXYFvbAIbEeCaPuB/aVolMy57e', NULL, '5', '', NULL, NULL, '105.112.29.226', '1507902607', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-13 13:50:07', '2017-10-13 13:50:07'),
(31, 'Ifeanyichukwu', 'Kelly', 'Enweliku', 'ifeanyienweliku93@gmail.com', '$2y$10$wJ7mpwapX1kTzRI/HIV4EuGbCUpdSmgm4oqh1sfd017ChzKzqbWuu', NULL, '4', '2347064216314', '2017-10-14 12:38:05', '2017-10-14 12:38:48', '197.210.28.151', '1509215189', NULL, NULL, NULL, NULL, 'Nigeria', 'IFWALEGYIO', NULL, 'hCokEqOOyeKrlHXcUAP5eznaEDjWyAb90LKmtEtqUypHjQy0vCB5wbhNvhlc', '2017-10-14 12:30:48', '2017-10-14 12:30:48'),
(32, '', NULL, '', 'tallyy6453@gmail.com', '$2y$10$q9ZldQ0jQ0mXXKlm15uZn.dONPenbSg1rAjyJqhtJsASpJITWNBOi', NULL, '3', '2348039246478', '2017-10-14 14:55:45', '2017-10-14 14:56:23', '197.211.61.29', '1507992661', NULL, NULL, NULL, NULL, 'Nigeria', '5745', NULL, NULL, '2017-10-14 14:51:01', '2017-10-15 15:05:42'),
(33, 'Stanley', NULL, 'Ezeifesie', 'stanpay2@gmail.com', '$2y$10$BBTyX0ng2Gz4V0dhhbuzGOzTUMJIOcNfsgsSnI/gnvg7i2uP/lTEa', NULL, '4', '2347038629279', '2017-10-14 22:47:06', '2017-10-14 22:46:16', '105.112.25.157', '1508021005', NULL, NULL, NULL, NULL, 'Nigeria', '1858', NULL, NULL, '2017-10-14 22:43:25', '2017-10-14 22:43:25'),
(34, 'Joshua', 'Pius', 'Akpan', 'sevengreatgates@gmail.com', '$2y$10$84UCmLb/AvvH./Ync7t4DecSfwxuCcyzoMnC/zeWA8UmZP.XysUhu', NULL, '4', '2348183128059', '2017-10-15 18:40:58', '2017-10-15 18:41:50', '129.56.12.46', '1510136709', NULL, NULL, NULL, NULL, 'Nigeria', '0290', NULL, NULL, '2017-10-14 23:33:03', '2017-10-14 23:33:03'),
(41, '', NULL, '', 'helpnaira@gmail.com', '$2y$10$febJxNKD07G61q0lnjgvx.falEBhbZjLyKl3XaWlNGSxxvM9LfWQq', NULL, '5', '', NULL, NULL, '197.211.61.170', '1508601140', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-18 14:01:26', '2017-10-18 14:01:26'),
(35, '', NULL, '', 'temitayooyalowo55@hotmail.com', '$2y$10$JMSz17dwTS5.SKw2Z7p6Ne4AOkDBPhiFJ1hGR0xws9p146n3QCCUi', NULL, '3', '2348136972180', '2017-10-17 06:16:30', '2017-10-17 06:22:00', '107.77.225.77', '1510369833', NULL, NULL, NULL, NULL, 'Nigeria', '2102', NULL, 'KxNZPua3iEfuzC297EhZ24fLMfzvG6bvVwu6Pbnc2KVMy1biR3JqyWaHKY5z', '2017-10-17 06:12:38', '2017-10-17 07:19:30'),
(36, '', NULL, '', 'esangubong1.eu@gmail.com', '$2y$10$aO9/5rZcjHWKM0ejwR8EFOAC6HhqyjnAA0ivZSHs0gC.lPi9wQGXW', NULL, '5', '', NULL, NULL, '141.101.99.82', '1509547454', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-17 08:59:03', '2017-10-17 08:59:03'),
(37, '', NULL, '', 'egbujorekene@gmail.com', '$2y$10$ISXGrDXBzQ9FauD1fa2Z9.4TfhLlI5i4.gZFnIphh0zO5a1azsai2', NULL, '5', '', NULL, NULL, '197.211.57.126', '1508243716', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-17 12:35:16', '2017-10-17 12:35:16'),
(38, '', NULL, '', 'egbujorbenny@gmail.com', '$2y$10$aUKpUn.sdXlrnnRPZFNLK.I6InNPYsNS/19/qUrWwRZ.T1xb1gNGG', NULL, '5', '', NULL, NULL, '197.211.57.126', '1508947207', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-17 12:37:49', '2017-10-17 12:37:49'),
(39, '', NULL, '', 'tochukwualor@gmail.com', '$2y$10$VX9P5Bsy4QBWgoHjESZt8eZA1Aw5xLU06JDTQghFGk.yKtFZjNbve', NULL, '5', '2348165244395', NULL, NULL, '197.210.226.166', '1508246229', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-17 13:07:53', '2017-10-17 13:07:53'),
(40, 'Akorvueze', 'Ihenacho', 'Nwakanma', 'Akorvuezenwakanma@gmail.com', '$2y$10$9DCCwryyMDl4EGjy.inl.O/GpUn0Yns3RzLUP5VNrFZDcjqH/dExa', NULL, '3', '2348131905078', '2017-10-17 15:52:46', '2017-10-17 16:15:00', '197.211.63.162', '1508410938', NULL, NULL, NULL, NULL, 'Nigeria', '8408', NULL, 'erjgnJmBobtZCGYF6oRVP7H1IrYX62FRArMeFXXoUPL3e3T3InYzWDj46lAn', '2017-10-17 15:41:27', '2017-10-17 17:38:40'),
(42, 'justin', 'tochukwu', 'emedosi', 'justintochukwu5@gmail.com', '$2y$10$qlqOyOMDFRsTlMZtEvhy..tqxBFObqdxUJ5NZJuZtORiOE08gpsMS', NULL, '5', '2348063495382', NULL, NULL, '197.211.57.127', '1508779191', NULL, NULL, NULL, NULL, 'Nigeria', '5023', NULL, NULL, '2017-10-18 22:04:11', '2017-10-18 22:04:11'),
(43, '', NULL, '', 'starlogic@gmail.com', '$2y$10$ktSyGDR3pO7RYzgnxwoq0OQ7.xVEsYgL5ycYD9F6Yq6HJvHP6BOSa', NULL, '4', '2348187944462', '2017-10-19 17:54:15', '2017-10-19 17:54:48', '154.66.48.231', '1508435506', NULL, NULL, NULL, NULL, 'Nigeria', '5165', NULL, NULL, '2017-10-19 17:51:46', '2017-10-19 17:51:46'),
(44, '', NULL, '', 'uticlinton@gmail.com', '$2y$10$5RTcRw2URM9seZdz7WBvc.BdQnBUZ4c/OOrBlfVVJzG9/0gC6X5Wm', NULL, '5', '', NULL, NULL, '154.118.21.128', '1508443353', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-19 20:02:33', '2017-10-19 20:02:33'),
(45, 'Egbujor', 'Martins', 'Chizoba', 'chizobaegbujor@gmail.com', '$2y$10$.GFVFZqUUqNxj6I4w0/g5OH0BuU3SiSG8c0UM3q/gtd075xo7VuW.', NULL, '5', '2348030953098', NULL, NULL, '197.210.226.50', '1510173847', NULL, NULL, NULL, NULL, 'Nigeria', '1526', NULL, NULL, '2017-10-19 21:09:52', '2017-10-19 21:09:52'),
(47, 'Chidera', 'Dimabo', 'Chukunda', 'chukwundac@yahoo.co.uk', '$2y$10$LrJzGf7EH8CrQGkEP/UEU.rHQDxQu8IZozRtcGY5Muh.Ox8M5zj/m', NULL, '4', '2348069100517', '2017-10-20 10:57:36', '2017-10-20 10:58:06', '105.112.39.17', '1508509943', NULL, NULL, NULL, NULL, 'Nigeria', '9140', NULL, NULL, '2017-10-20 09:46:48', '2017-10-20 09:46:48'),
(48, 'Sokari', NULL, 'Gillis-Harry', 'sokariharry@gmail.com', '$2y$10$dmGStadp/J1g0HThQ.nBN.eykNqGXaT8bwXSU0pwdSv0.r6YYGRGq', NULL, '4', '2348035373375', '2017-10-20 14:47:37', '2017-10-20 14:50:25', '129.56.12.119', '1509969033', NULL, NULL, NULL, NULL, 'Nigeria', '5198', NULL, 'STTkaTgtegAMd2iTMSq1hD1JxYgej4cwqcUp0e8xMgOcWo3QhpRMmYacvWHb', '2017-10-20 14:44:06', '2017-10-20 14:44:06'),
(49, 'Unicorn', NULL, 'Bitcoin Exchange', 'unicornbitex@gmail.com', '$2y$10$FzxuxniBX9xw5HFf/76yResKSTUXkTHu81lxhFZtxMaIrUEEZ6t4m', NULL, '2', '2348056152316', '2017-10-21 11:38:21', '2017-10-21 11:41:49', '197.211.61.186', '1510387108', NULL, NULL, 'https://lh5.googleusercontent.com/-bnjOHcY045Q/AAAAAAAAAAI/AAAAAAAAAAA/ANQ0kf4dDEXdSHBQY4QG9YvM8s5pvFhwmA/s96-c/photo.jpg', NULL, 'Nigeria', '5815', NULL, 'Hq5WivR2FWaAakxvxwEiF6gjZpEMccdrVrcXe9knWgiSTEhOi7zfP5cNIi6F', '2017-10-21 11:37:55', '2017-10-21 11:48:16'),
(50, 'Ihunanyachi Thompson', NULL, 'Amadi', 'thompsonamadi@gmail.com', '$2y$10$zxJIj4qpaWwMOKnkWX0Deer7AhBLNxTnui6F5ypIV7ujus6D2JIaW', NULL, '3', '2349059669490', '2017-10-24 08:53:12', '2017-10-24 08:52:33', '129.56.12.46', '1510582030', NULL, NULL, 'https://lh4.googleusercontent.com/-HnT2IqgXFD8/AAAAAAAAAAI/AAAAAAAABE4/Zq1KPWDrSms/s96-c/photo.jpg', NULL, 'Nigeria', '3580', NULL, NULL, '2017-10-21 15:48:22', '2017-10-26 15:09:50'),
(51, '', NULL, '', 'Nwadikeoluchi69@gmail.com', '$2y$10$uuLdCFTjcXyZaSyUulNQAeLhk3Hd62Zo5flNe/k5QyJFIE5p9t0C2', NULL, '5', '', NULL, NULL, '197.211.61.174', '1508688936', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-22 16:15:36', '2017-10-22 16:15:36'),
(52, '', NULL, '', 'temitopetola@gmail.com', '$2y$10$2k5Q/xpl9WzHmV1IV6VBmu1PFiPx59lFs6Im2fm/8bU6150u7Dzwu', NULL, '5', '', NULL, NULL, '105.112.27.66', '1508698530', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-22 18:55:30', '2017-10-22 18:55:30'),
(53, 'Benjamin', NULL, 'Arugu', 'arugub@gmail.com', '$2y$10$9hCaswuTcjr.Jxy55aiTcuQXH6G0Jra54pAb0dCOzuIxj2Enh/mty', NULL, '4', '2348150806956', '2017-10-22 21:13:04', '2017-10-22 21:13:51', '105.112.45.11', '1510081934', NULL, NULL, NULL, NULL, 'Nigeria', '9717', NULL, NULL, '2017-10-22 20:48:01', '2017-10-22 20:48:01'),
(54, 'Samuel', 'Bayo', 'Arogbonlo', 'vocalsheavenly@yahoo.com', '$2y$10$zA2MVx8Siqj3/vrds8lW4e3xw1OZ0WvTWXHaJYDLOkFaNEG.XqUMu', NULL, '5', '', NULL, NULL, '105.112.20.249', '1508712174', NULL, NULL, NULL, NULL, 'Nigeria', '0735', NULL, NULL, '2017-10-22 22:42:53', '2017-10-22 22:42:53'),
(55, '', NULL, '', 'seguntundeoladimeji@gmail.com', '$2y$10$Knry32agOfI6cOMu9DWNV.5bHXSkBIkXB26FxmuIHUpOxG2mglxXS', NULL, '5', '', NULL, NULL, '105.112.40.174', '1508747357', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-23 08:29:17', '2017-10-23 08:29:17'),
(56, '', NULL, '', 'jeffregin09@gmail.com', '$2y$10$EqS8JOzHSW.rRrUTfdjJ/OVIGjxsT2V.wVLltJ4mz8wi7IlLYA.tS', NULL, '5', '', NULL, NULL, '93.72.182.31', '1508809153', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-24 01:39:13', '2017-10-24 01:39:13'),
(57, 'Chukwunenye', NULL, 'Nyenke', 'Cnyenke1@gmail.com', '$2y$10$mKb8SaDBBzHs6j7/n2xpe.86LDa.Aw5IYo5Qfi4s4BjqIamFxwl0y', NULL, '4', '2348085781574', '2017-10-24 08:53:57', '2017-10-24 08:56:49', '141.101.99.190', '1510226965', NULL, NULL, NULL, NULL, 'Nigeria', '0589', NULL, NULL, '2017-10-24 08:51:46', '2017-10-24 08:51:46'),
(58, '', NULL, '', 'georgeordu@gmail.com', '$2y$10$FqOiTRtIRHPKQe1pYvKZPu2MpmkSMLSXr3A687ED0wOuICRhQ485C', NULL, '5', '2348032750335', '2017-10-24 14:16:16', NULL, '197.211.61.23', '1508921510', NULL, NULL, NULL, NULL, 'Nigeria', '1518', NULL, NULL, '2017-10-24 14:14:46', '2017-10-24 14:14:46'),
(59, '', NULL, '', 'iamfrankcute@gmail.com', '$2y$10$hTvsnjzLFdHI7QB4RYkVNOSxt5rtz.THN6hr.fl3sobcJabmsYAwi', NULL, '5', '', NULL, NULL, '169.159.70.95', '1508859637', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-24 15:40:37', '2017-10-24 15:40:37'),
(60, '', NULL, '', 'ibimi.v@gmail.com', '$2y$10$8wPioXFPeSSX8bQxmjTQeu/YGWc3C.Y9EPIakDBHhzn1DkobegiZ6', NULL, '5', '', NULL, NULL, '197.210.227.188', '1508860146', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-24 15:49:06', '2017-10-24 15:49:06'),
(61, '', NULL, '', 'smootpc@gmail.com', '$2y$10$AUtD6lOgZTiDnk7Z7o6AveWF2MeAtnk4.eJgpMhYVyh0E2zZDaLqe', NULL, '5', '', NULL, NULL, '197.210.37.44', '1509136321', NULL, NULL, NULL, NULL, 'Nigeria', '5193', NULL, NULL, '2017-10-24 17:36:37', '2017-10-24 17:36:37'),
(62, 'Darlington', 'Chibueze', 'Akwuiwu', 'akwuiwudarlington@gmail.com', '$2y$10$.nvepD31t/0JxP0pFjvcmepCDkE/w3QqTKrpKYBdiIHo0/T2KgSxS', NULL, '4', '2348032790073', '2017-10-25 15:45:21', '2017-10-25 15:41:06', '197.211.61.48', '1509471103', NULL, NULL, NULL, NULL, 'Nigeria', '0486', NULL, NULL, '2017-10-25 15:32:49', '2017-10-25 15:32:49'),
(63, '', NULL, '', 'egbujortex@gmail.com', '$2y$10$T6E.yYGAohzhl/jPEt7OyONQZynAZwOD19cTB901DtY5SWkT2OXQu', NULL, '5', '2349051348696', NULL, NULL, '197.211.61.20', '1508948195', NULL, NULL, NULL, NULL, 'Nigeria', '8320', NULL, NULL, '2017-10-25 16:01:12', '2017-10-25 16:01:12'),
(64, 'Samuel', 'Nyebuchi', 'Owabie', 'owabiesamuel@gmail.com', '$2y$10$S6dRqbG9FYoN6nMiusyJlu7xctnMUVIjPHbmhb3uaLbbh/XKzjfcu', NULL, '5', '2348064067469', '2017-10-27 01:11:11', NULL, '197.210.227.208', '1509066579', NULL, NULL, NULL, NULL, 'Nigeria', '6136', NULL, NULL, '2017-10-25 20:21:08', '2017-10-25 20:21:08'),
(65, '', NULL, '', 'Ugondaelechi@gmail.com', '$2y$10$n.EqWbZO3HVWoiiO3rvMl.WLdSxTp1/Q9/SpnInvxKO.W4D59SBvy', NULL, '5', '', NULL, NULL, '105.112.29.173', '1509023374', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-26 13:09:34', '2017-10-26 13:09:34'),
(66, '', NULL, '', 'samueloyakhilome@gmail.com', '$2y$10$KbCPn3uKbyDMcsbryQKVX.bCeFlEPvW3x3NVLnXcXw2j5V0MlOopO', NULL, '5', '', NULL, NULL, '23.235.227.106', '1509122377', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-27 16:39:37', '2017-10-27 16:39:37'),
(67, 'Egbujor', 'Benedict', 'Kene', 'bennytex@gmail.com', '$2y$10$xLryqhchwz7RiZtTM8E45.6s4TBJKM8nEESkwybFyY/kkynAW/6cS', NULL, '5', '2349051348696', NULL, '2017-10-28 10:24:38', '197.211.57.126', '1509359216', NULL, NULL, NULL, NULL, 'Nigeria', '5190', NULL, NULL, '2017-10-28 10:20:09', '2017-10-28 10:20:09'),
(68, 'Ugo', NULL, 'Kingsley', 'ugokingsley5@gmail.com', '$2y$10$SExMilGcDyvoIhGc58jzXeNBZLMEA57Rt3fti8TrJNn3L3r70WRAW', NULL, '5', '', NULL, NULL, '105.112.42.137', '1509303227', NULL, NULL, 'https://lh4.googleusercontent.com/-GxYp3zRQulo/AAAAAAAAAAI/AAAAAAAAAHg/OjQOsDH-5qs/s96-c/photo.jpg', NULL, 'Nigeria', NULL, NULL, '69wWnckTxJdB1AVKnfoIIC5w96FCAJsw8ioQtcfKYi2gAvISOYdqGkhlEEZn', '2017-10-29 18:53:47', '2017-10-29 18:53:47'),
(69, 'Damilare', NULL, 'Oluwatoba', 'thobah.dhar@gmail.com', '$2y$10$tnyTkJSfsXRsnzXFyKwYoeJQ67i5tgmP9qQ470Gphe7EqDqsje4jS', NULL, '5', '', NULL, NULL, '41.216.166.2', '1509377012', NULL, NULL, NULL, NULL, 'Nigeria', '9950', NULL, NULL, '2017-10-30 09:40:11', '2017-10-30 09:40:11'),
(70, '', NULL, '', 'endiumunna@gmail.com', '$2y$10$vPqyEo9hC/1yKpZ4q3cP9On5BF3btqidi24TY5FbLThQYXagT/Yl6', NULL, '5', '', NULL, NULL, '129.56.12.60', '1509368708', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-10-30 13:05:08', '2017-10-30 13:05:08'),
(71, 'Egbujor', 'Benny', 'Kene', 'bennycash@gmail.com', '$2y$10$wjFoiLqCRKfRQ1rLk4gPqeuDUG00uvVNYgZcw8v8wjT36msI9ptma', NULL, '5', '2349051348696', NULL, '2017-10-30 14:25:17', '41.217.118.176', '1509458704', NULL, NULL, NULL, NULL, 'Nigeria', '2783', NULL, NULL, '2017-10-30 14:20:29', '2017-10-30 14:20:29'),
(72, 'Kelechi', NULL, 'Orji', 'kckross@yahoo.com', '$2y$10$5OlQplp2bflCCyNnCb5mEOUPWn92WExkkT/44GZfyu3GWhxYGcZmG', NULL, '4', '2348032705268', '2017-10-31 07:50:02', '2017-10-31 07:48:39', '197.210.45.128', '1509432936', NULL, NULL, NULL, NULL, 'Nigeria', '3695', NULL, NULL, '2017-10-31 06:55:36', '2017-10-31 06:55:36'),
(73, 'Benedict', 'Ekene', 'Egbujor', 'ekenebenedict21@gmail.com', '$2y$10$m3pEU.lN8gvS6VOFKINKRO.lgl4phCbT4IcDJG3vfo9a4UBcxHJXS', NULL, '4', '2349051348696', '2017-11-01 11:34:54', '2017-11-01 11:24:10', '197.210.226.28', '1510175454', NULL, NULL, NULL, NULL, 'Nigeria', '5601', NULL, NULL, '2017-11-01 11:18:45', '2017-11-01 11:18:45'),
(74, '', NULL, '', 'Joseph.o.madu@gmail.com', '$2y$10$ehEWpfvjRU4f7xwgiOe1iupQXHjmestjwDn5LXYQXkny4B.7YYtuu', NULL, '5', '', NULL, NULL, '141.101.76.219', '1509546306', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-01 14:25:06', '2017-11-01 14:25:06'),
(75, '', NULL, '', 'drichgirl84@gmail.com', '$2y$10$20YSVaU93SyWgP83Fpx8JOlqyXw6RO3OcKqgULgaHjQXRVa1f8jTu', NULL, '5', '', NULL, NULL, '162.158.154.204', '1509558882', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-01 17:54:42', '2017-11-01 17:54:42'),
(79, 'Godswill', 'Chimankpa', 'Nnoka', 'nnokag@gmail.com', '$2y$10$8D8TuXYZoM68GV73NgkW5O7NkN0rQX1m/O5Za/Xh88TWO.y7qeKdm', NULL, '5', '2348130856226', '2017-11-03 08:33:39', NULL, '105.112.36.144', '1509697659', NULL, NULL, NULL, NULL, 'Nigeria', '8690', NULL, NULL, '2017-11-03 08:27:39', '2017-11-03 08:27:39'),
(76, 'Osemuahu', 'Andrew', 'Okoeguale', 'okoeguale25@gmail.com', '$2y$10$YNz2eU.4Em1J9925ocNEouEjEQ7AOIx2BoCu.a6nvawZz4DYmqJ66', NULL, '5', '2347052619734', NULL, '2017-11-02 20:07:53', '197.211.60.38', '1509653105', NULL, NULL, NULL, NULL, 'Nigeria', '8210', NULL, NULL, '2017-11-02 20:05:05', '2017-11-02 20:05:05'),
(77, 'Kaluxe', NULL, 'Automobile', 'kaluxeautomobile@gmail.com', '$2y$10$Aepm.WK/Lcsdc4eFgo74Be0gRsTGIKRNW1dkTuwDQzICCUSQ9S9ma', NULL, '5', '', NULL, NULL, '197.211.61.2', '1509655862', NULL, NULL, 'https://lh4.googleusercontent.com/-2sUudBQ8Yuk/AAAAAAAAAAI/AAAAAAAAAAA/ANQ0kf56ghgJS6rHLca2iFaQPLe6R-7iag/s96-c/photo.jpg', NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-02 20:51:02', '2017-11-02 20:51:02'),
(78, '', NULL, '', 'odionolumhense@gmail.com', '$2y$10$ssENlX5iQLj6BVu8dqUn0OkiE/b9cRLbiz6fIyLBzCYqkcNLo/73K', NULL, '5', '', '2017-11-03 06:28:23', NULL, '154.118.44.14', '1509690172', NULL, NULL, NULL, NULL, 'Nigeria', '0990', NULL, NULL, '2017-11-03 06:22:52', '2017-11-03 06:22:52'),
(80, '', NULL, '', 'mailsforeze@gmail.com', '$2y$10$X6im/XVNzN8JVejVQ9hS1.JZh2aHqjE2yqImuWy575RupS6rZ6Yoq', NULL, '5', '', NULL, NULL, '162.158.154.60', '1509697883', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-03 08:31:23', '2017-11-03 08:31:23'),
(81, 'Kinikachi', 'Joscelyn', 'Okwu', 'ojk564@gmail.com', '$2y$10$pZ1g6RGRKzC/5bc2cNPNY.QaniwFYThqN.cMiIZJttelXPT.jGSHS', NULL, '5', '2347061596824', '2017-11-03 14:46:46', NULL, '141.101.107.155', '1509720203', NULL, NULL, NULL, NULL, 'Nigeria', '7126', NULL, 'h0O8z18b7ozKFhwID6Fy4yzNpKfzfYTz4IN5Ktfg6HEdFjZij34uN9IwByjm', '2017-11-03 12:28:08', '2017-11-03 12:28:08'),
(82, '', NULL, '', 'anietzreuben@gmail.com', '$2y$10$6BSzDELfaIYpRHtZO6ySt.afDjDXFZPDHjeFi4pdtVoRKMyFh0mMy', NULL, '4', '2347064552404', '2017-11-03 15:40:36', '2017-11-03 15:41:10', '41.58.87.113', '1509723311', NULL, NULL, NULL, NULL, 'Nigeria', '0265', NULL, NULL, '2017-11-03 15:35:10', '2017-11-03 15:35:10'),
(83, '', NULL, '', 'danielrose68@yahoo.com', '$2y$10$iAPRPi7IxjrX2myCndp5be.WYQXj4/3P16NDokRJome07RRE5DVoK', NULL, '5', '', NULL, NULL, '141.101.105.143', '1509747460', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-03 17:31:39', '2017-11-03 17:31:39'),
(103, 'OLUGBENGA', 'OLADAPO', 'ARUWAJOYE', 'aruwajoyeoladapox@gmail.com', '$2y$10$LrYOtfZFK8ajGerHefD1GeQFsb8iRxoxsjTRPC4xIGLEZaM2drSj6', NULL, '4', '2348067144837', '2017-11-08 16:25:07', '2017-11-08 16:25:43', '162.158.111.102', '1510158223', NULL, NULL, NULL, NULL, 'Nigeria', '0803', NULL, NULL, '2017-11-08 16:23:43', '2017-11-08 16:23:43'),
(84, '', NULL, '', 'theachiversgroup@gmail.com', '$2y$10$2aeQBBMcXbAJiJTwKdAvXeceSOydKkMdbumzkRNw6.lpikhx5fzoC', NULL, '5', '', NULL, NULL, '141.101.104.124', '1509738512', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-03 19:48:32', '2017-11-03 19:48:32'),
(91, 'Ifunanya', 'Ifunanya', 'Ezewuzie', 'ezewuzieifunanya@gmail.com', '$2y$10$aHyIYl5XwX6Vm6x3JX5RbuR/QyoNNr.HguLMlUeSpLDaKLLHEHdte', NULL, '5', '2348038649414', NULL, '2017-11-06 08:14:02', '141.101.99.148', '1509955809', NULL, NULL, NULL, NULL, 'Nigeria', '6017', NULL, NULL, '2017-11-06 08:10:09', '2017-11-06 08:10:09'),
(85, '', NULL, '', 'unicornng@mailinator.com', '$2y$10$AR5V8s8lJEwXU1zoq6hr4eGyLOanUA6SpQpMM5Q6OUmOSPabEHG0i', NULL, '5', '', NULL, NULL, '141.101.99.88', '1509806779', NULL, 'Yes', NULL, NULL, 'Nigeria', NULL, 'Yes', NULL, '2017-11-04 14:46:19', '2017-11-04 14:46:19'),
(86, '', NULL, '', 'petertriumphant007@gmail.cm', '$2y$10$OPYJaO.qqLVBQg3GKKuuO.0rdDhkT03WglQKkv63eO5tDImfqbjDu', NULL, '5', '', NULL, NULL, '141.101.99.118', '1509811241', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-04 16:00:39', '2017-11-04 16:00:39'),
(87, 'Eze', NULL, 'Maximus', 'ezechukwujindu@gmail.com', '$2y$10$9JXhyBAHBMoavhNdrw2b4eWRskRB4tPNZdIt4vGOrkabPgN8GlOoG', NULL, '5', '', NULL, NULL, '141.101.76.111', '1509849061', NULL, NULL, 'https://lh6.googleusercontent.com/-xyU5WfnoaPQ/AAAAAAAAAAI/AAAAAAAAAG0/4hzpAuSsDwM/s96-c/photo.jpg', NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-05 02:31:01', '2017-11-05 02:31:01'),
(88, '', NULL, '', 'tunde364@gmail.com', '$2y$10$L1XsUu705vdiDelYhqzlxOqxF9xtM08S9PL./gQcSaXuC3bKj03rC', NULL, '5', '2347089619998', NULL, NULL, '162.158.111.246', '1509861431', NULL, NULL, NULL, NULL, 'Nigeria', '1706', NULL, NULL, '2017-11-05 04:53:46', '2017-11-05 04:53:46'),
(89, '', NULL, '', 'esinniobiwa.quareeb@gmail.com', '$2y$10$gvwzuqYGfruNCIkUPVTgjutS5gS2i.JLHJkuyItO4NdxMHXMsZTNq', NULL, '5', '', NULL, NULL, '141.101.105.101', '1509863740', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-05 06:35:40', '2017-11-05 06:35:40'),
(90, '', NULL, '', 'cjonnyjoe@yahoo.com', '$2y$10$3LWcsUYRhYhZyIIqX1j.Xuqx//3.5eQGzEyBxAM/1bpIJp9kq3ARC', NULL, '5', '', NULL, NULL, '141.101.107.239', '1509881713', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-05 11:35:13', '2017-11-05 11:35:13'),
(92, 'LEONARD', 'CHINEDU', 'NNAJI', 'nnaji.l@yahoo.com', '$2y$10$71YzZj4JWT/vyCQh8dtJKO5nqnQpyTmPklA8CxsB5jYOQQGmqLPE2', NULL, '5', '', NULL, NULL, '141.101.98.135', '1509957507', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-06 08:38:27', '2017-11-06 08:38:27'),
(93, '', NULL, '', 'pec4cj@yahoo.com', '$2y$10$G31MlxfGddbuwC1/yFQHcet3nqcRo/I2m09um9nneV4LxGXISbVPK', NULL, '5', '', NULL, NULL, '141.101.76.225', '1509959512', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-06 09:11:52', '2017-11-06 09:11:52'),
(94, '', NULL, '', 'contactnosa@gmail.com', '$2y$10$yCiBIntUy45J0uaZT6ZkgOmPDbvjHAfZfyL/4gLKJS2WjFNrK6v8a', NULL, '5', '', NULL, NULL, '141.101.107.59', '1509965102', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-06 10:45:02', '2017-11-06 10:45:02'),
(95, '', NULL, '', 'nwadikesally@gmail.com', '$2y$10$5oXR9C9BsnZfYgtCSWrXJ.1kt/Md00r1020Iczzl07eULrshPy42K', NULL, '5', '', NULL, NULL, '162.158.154.12', '1509968744', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-06 11:45:43', '2017-11-06 11:45:43'),
(96, '', NULL, '', 'austn007@gmail.com', '$2y$10$iLPNH.ThItsQjjGuyKFAre9zDFugzFjGmmKbZbbH67RSRw4B.QtWa', NULL, '5', '', NULL, NULL, '141.101.104.208', '1509979309', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-06 14:41:49', '2017-11-06 14:41:49'),
(97, 'Emmanuel', NULL, 'Wogundu', 'nuel.impact@gmail.com', '$2y$10$tj/1zgOaQm2Tj58t/.cSJehIgvefultptgaLwdffltqlgYUfu0d4m', NULL, '4', '2348180682246', '2017-11-06 14:50:30', '2017-11-06 14:51:04', '162.158.111.234', '1509979370', NULL, NULL, NULL, NULL, 'Nigeria', '5098', NULL, NULL, '2017-11-06 14:42:50', '2017-11-06 14:42:50'),
(98, '', NULL, '', 'mjaysworld@yahoo.com', '$2y$10$JOqp5dWQpsFkmTsXkCc7ku1WEHR5FadIKu7EF0j5.mEfJH/GX1T6y', NULL, '5', '', NULL, NULL, '141.101.107.77', '1509997565', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-06 19:46:05', '2017-11-06 19:46:05'),
(99, 'Clinton', NULL, 'Agburum', 'clinsgfx@gmail.com', '$2y$10$dPaOmBS//tfOXBR8majqXO5WK3l.hKX1F8ip9bx1pSdSbT95BKQKS', NULL, '3', '2348167021738', '2017-11-06 20:01:47', '2017-11-07 09:03:37', '162.158.111.102', '1510140690', NULL, NULL, NULL, NULL, 'Nigeria', '0453', NULL, NULL, '2017-11-06 20:00:21', '2017-11-07 12:15:50'),
(100, 'Solomon', NULL, 'Mark', 'solomonmark83@gmail.com', '$2y$10$9AlpbFkwtC8lRI7mY8Obv.J41Ooz146BErDvvgI2nKZU9By4ALAWq', NULL, '5', '2347066565577', NULL, '2017-11-07 21:00:10', '105.112.43.121', '1510409211', NULL, NULL, NULL, NULL, 'Nigeria', '7810', NULL, NULL, '2017-11-07 20:38:54', '2017-11-07 20:38:54'),
(101, 'Kaborlobari', 'Kilsi', 'Gawa', 'kb4flexy1@gmail.com', '$2y$10$EYDbuvyBU0v6Mpgc5DiOkOqEvD.VK6G4qErxxp9PvSzXWpi7YSrF.', NULL, '5', '2347067404689', NULL, NULL, '162.158.234.21', '1510118633', NULL, NULL, NULL, NULL, 'Nigeria', '1101', NULL, NULL, '2017-11-08 05:19:26', '2017-11-08 05:19:26'),
(102, '', NULL, '', 'Talk2ugomatt@gmail.com', '$2y$10$dahhjLrvQPk.WEXXgmyRz.Ft2zQCqcb47bvBE.1sRevaFueRUY0/m', NULL, '5', '', NULL, NULL, '162.158.154.30', '1510120907', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-08 06:01:47', '2017-11-08 06:01:47'),
(104, '', NULL, '', 'ucheyasystempro@gmail.com', '$2y$10$1jvxwDfVvLs4ov4gNuSinucLN6c2k.WLEes1fnGqrbjnfMIEsb/BO', NULL, '5', '', NULL, NULL, '162.158.154.186', '1510163414', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-08 17:50:14', '2017-11-08 17:50:14'),
(105, 'Chizoba', 'Martinz', 'Egbujor', 'chizoba8000@gmail.com', '$2y$10$2Jv5eHe6GPNC0E1VqRyOmeOshzux/rJHrM6QQ9M759MWcZPwgIXtm', NULL, '4', '2348030953098', '2017-11-08 21:01:36', '2017-11-08 21:46:16', '197.210.227.98', '1510260029', NULL, NULL, NULL, NULL, 'Nigeria', '7559', NULL, NULL, '2017-11-08 20:56:24', '2017-11-08 20:56:24'),
(106, 'Ohiorenua', 'Andrew', 'Ezekiel', 'ohiz2007@gmail.com', '$2y$10$Veyw6e0fLmg8RAyFKA/O2e98D9KzD12GyUJ941ho2.xd6f826Ngs2', NULL, '5', '2349021006939', NULL, '2017-11-08 23:18:05', '141.101.107.17', '1510183521', NULL, NULL, NULL, NULL, 'Nigeria', '1213', NULL, NULL, '2017-11-08 23:09:27', '2017-11-08 23:09:27'),
(107, 'Adeolu', 'oluwatobi', 'Adetunji', 'aadeoluoluwatobi@gmail.com', '$2y$10$Y6uyLtU/iaWeEPg1cVwMLOxQ6vZIRAYzMfY0o8RHc6OBmomZrZZEu', NULL, '4', '2348062957916', '2017-11-09 05:34:53', '2017-11-09 05:36:36', '141.101.105.215', '1510205395', NULL, NULL, NULL, NULL, 'Nigeria', '0012', NULL, NULL, '2017-11-09 05:29:55', '2017-11-09 05:29:55'),
(108, '', NULL, '', 'stefanobo3310@gmail.com', '$2y$10$gf6kqaIPR79.Mb9alp9fVei7DK4gn4SJBhTVbUj.Kx/AogcUiobx.', NULL, '4', '2348064816942', '2017-11-09 11:47:09', '2017-11-09 11:47:40', '141.101.99.82', '1510227920', NULL, NULL, NULL, NULL, 'Nigeria', '2003', NULL, NULL, '2017-11-09 11:45:19', '2017-11-09 11:45:19'),
(109, '', NULL, '', 'ikechukwuj35@gmail.com', '$2y$10$jox1P05AyXdhNgfas8x/MO7BkcfCJEvQ41WZt17J8ndhyMqHDBapu', NULL, '5', '', NULL, NULL, '162.158.154.60', '1510237848', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-09 14:30:48', '2017-11-09 14:30:48'),
(110, 'Theodora', 'Onoshoagbe', 'Isola', 'theodoraisola@gmail.com', '$2y$10$Bqlexbl5X/jIZdVoh.4YjumZhi8hNv6.UJAfeJwVlRtjcyrnieT0.', NULL, '4', '2348050705215', '2017-11-09 15:48:28', '2017-11-09 15:50:34', '141.101.99.184', '1510242326', NULL, NULL, NULL, NULL, 'Nigeria', '0348', NULL, NULL, '2017-11-09 15:45:26', '2017-11-09 15:45:26'),
(111, 'Nick', NULL, 'Uche', 'tonienickkie@gmail.com', '$2y$10$vlvOKhY97CBhXX0h8Qvmj.n5FvB4l1XpMWmJVn4A8rqbrz30V6UKy', NULL, '5', '2347030195298', '2017-11-09 18:46:55', NULL, '141.101.107.23', '1510486600', NULL, NULL, 'https://lh3.googleusercontent.com/-6STNMRDCHBw/AAAAAAAAAAI/AAAAAAAAFkA/LIcewPepc88/s96-c/photo.jpg', NULL, 'Nigeria', '4670', NULL, NULL, '2017-11-09 18:43:22', '2017-11-09 18:43:22'),
(112, '', NULL, '', 'vincentnug@gmail.com', '$2y$10$p03FT0BA9Be0DjqdL7rF.Og5rom3KAI0lmY6GSA3Z7ycSVAMiAJTW', NULL, '5', '', NULL, NULL, '141.101.107.71', '1510398296', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-11 11:04:56', '2017-11-11 11:04:56'),
(113, 'Olaniyi', NULL, 'Ogedengbe', 'ogedengbetitus00@gmail.com', '$2y$10$Z15APaNGVyIaRqZ1jLCeYe.kVC4xx6B3MBC0v.y90vZYdUZQDSlvK', NULL, '4', '2348097148672', '2017-11-12 15:22:33', '2017-11-12 15:23:34', '172.68.189.222', '1510498862', NULL, NULL, NULL, NULL, 'Nigeria', '1510', NULL, 'V6ks0fn37IKY1tPFwudaQZLBGN69i9PTfSG8mC8dqs62By5avk4mng5oIawu', '2017-11-12 15:01:02', '2017-11-12 15:01:02'),
(114, '', NULL, '', 'mebirimebenezer@gmail.com', '$2y$10$EmDlsS67Kxgpon0sX8cIJO0.Fk9u8stx3yVag742XghyA8sIc3RBy', NULL, '5', '2348068002914', NULL, NULL, '141.101.98.57', '1510502294', NULL, NULL, NULL, NULL, 'Nigeria', '0028', NULL, NULL, '2017-11-12 15:58:13', '2017-11-12 15:58:13'),
(115, 'Etinosa', 'Precious', 'Evbuomwan', 'etinohhsa@gmail.com', '$2y$10$Ct0pQLXE16CMqniRrEHD5eEO/1opEQ4/tMW5OIPJPf4F.oLVucGh2', NULL, '5', '2348103541471', NULL, NULL, '141.101.107.245', '1510553041', NULL, NULL, NULL, NULL, 'Nigeria', '5525', NULL, NULL, '2017-11-13 06:04:01', '2017-11-13 06:04:01'),
(116, '', NULL, '', 'patienceifeosame@gmail.com', '$2y$10$yAqethB9eFkPR5kZ7emO7uhCszsCqM4snz83/9G.JCR8uomexMjLu', NULL, '5', '', NULL, NULL, '141.101.99.16', '1510569983', NULL, NULL, NULL, NULL, 'Nigeria', NULL, NULL, NULL, '2017-11-13 10:46:23', '2017-11-13 10:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bitcash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ether` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `user_id`, `email`, `wallet`, `btc`, `bitcash`, `ether`, `currency`, `status`, `deleted`, `created_at`, `updated_at`) VALUES
(1, '2', 'calmpress@gmail.com', 'ESIACMRSMC', '0.008867', NULL, NULL, '0', 'normal', '0', '2017-10-10 13:18:28', '2017-11-06 06:54:40'),
(2, '3', 'Ighokenneth@live.com', 'LOIHOCKGEN', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-10 19:13:02', NULL),
(3, '4', 'the21stcenturyceo8887777@gmail.com', 'TUACTE1YOC', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-10 19:21:20', NULL),
(4, '5', 'providenceifeosame@gmail.com', 'EDOCIMLVSE', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-10 19:30:17', NULL),
(5, '6', 'lite2fine@gmail.com', 'IL2IILTOEF', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-10 19:31:28', NULL),
(6, '7', 'emmyifeanyi01@gmail.com', 'EIAFGYIA0I', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-10 20:06:04', NULL),
(7, '8', 'unicorntest@gmail.com', 'TCOICRTNML', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-10 20:38:59', NULL),
(8, '9', 'erastususo@gmail.com', 'AISGUSSMCM', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-10 21:56:27', NULL),
(9, '10', 'ifeosamep@yahoo.com', 'FOICMMAHOO', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 02:36:12', NULL),
(10, '11', 'dechosenuchenna@gmail.com', 'CEEAHHMNIE', '0', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 06:04:56', NULL),
(11, '12', 'raymondativie@gmail.com', 'MOLAAERINO', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 06:45:44', NULL),
(12, '13', 'ajayibamidele60@gmail.com', 'MIDMALOAIJ', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 06:50:27', NULL),
(13, '14', 'danieluokon@gmail.com', 'MLMNCAONIU', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 07:44:33', NULL),
(14, '15', 'nelsonpal55@gmail.com', '5AMLOPIOCA', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 09:41:15', NULL),
(15, '16', 'gizmodesign124@gmail.com', 'AO1EOS4MZG', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 10:00:10', NULL),
(16, '17', 'uniquewill9@gmail.com', 'WILUMCUILG', '0', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 10:03:53', NULL),
(17, '18', 'emmyifeanyi69@yahoo.com', 'YMOFAIYHEI', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 10:10:55', NULL),
(18, '19', 'jimkeneths@gmail.com', 'ESOLTMNICE', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 10:26:38', NULL),
(19, '20', 'winnymercy@gmail.com', 'LIEONGACMC', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 10:28:58', NULL),
(20, '21', 'the21stcenturyceo@gmail.com', 'TERNTOC2GA', '0.03067942', NULL, NULL, '0.002920000006270100', 'normal', '0', '2017-10-11 10:57:09', '2017-11-11 08:10:27'),
(21, '22', 'Ojimgerald@gmail.com', 'EDAGIROMMJ', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 11:06:52', NULL),
(22, '23', 'memesara73@gmail.com', 'GM3ASCMELE', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 12:49:25', NULL),
(23, '24', 'favourgolden@gmail.com', 'MDVNUGCOLR', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-11 20:46:30', NULL),
(24, '25', 'othuke.imonikiro@gmail.com', 'LNIHTUAOME', '0.0000002770000000000246', NULL, NULL, '1.8627114999999321', 'normal', '0', '2017-10-12 04:44:40', NULL),
(25, '26', 'workah10@gmail.com', 'GCRH1MKIMO', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-12 09:22:15', NULL),
(26, '27', 'Chicomzy9@gmail.com', 'ZOMAHYGCCL', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-12 09:23:48', NULL),
(27, '28', 'chiemelachinedum@gmail.com', 'HMMALMLMDC', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-12 11:09:15', NULL),
(28, '29', 'cloonicux@gmail.com', 'UGOMXOOLCI', '0.00000010000000000027348', NULL, NULL, '0', 'normal', '0', '2017-10-12 14:30:26', '2017-10-13 06:13:26'),
(29, '1', 'titan.offline@gmail.com', 'FANFOCIETT', '0', NULL, NULL, '0', 'normal', '0', '2017-10-13 06:20:04', NULL),
(30, '30', 'marritboss@gmail.com', 'GMOIMLMTCR', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-13 13:50:09', NULL),
(31, '31', 'ifeanyienweliku93@gmail.com', 'OIYEM9AUNL', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-14 12:30:49', NULL),
(32, '32', 'tallyy6453@gmail.com', 'YIYML4GA5A', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-14 14:51:02', NULL),
(33, '33', 'stanpay2@gmail.com', 'APAAC2IOTG', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-14 22:43:26', NULL),
(34, '34', 'sevengreatgates@gmail.com', 'LAEGTOEMSI', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-14 23:33:04', NULL),
(35, '35', 'temitayooyalowo55@hotmail.com', 'MLTWCTOILO', '0.0018689699999999997', NULL, NULL, '0.00', 'normal', '0', '2017-10-17 06:12:38', NULL),
(38, '40', 'Akorvuezenwakanma@gmail.com', 'ANAELCWEMV', '8.673617379884035e-19', NULL, NULL, '0.00', 'normal', '0', '2017-10-17 15:41:28', NULL),
(36, '36', 'esangubong1.eu@gmail.com', 'OSAAOUBIME', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-17 08:59:04', NULL),
(37, '39', 'tochukwualor@gmail.com', 'GLOTUCWAOM', '0', NULL, NULL, '0.00', 'normal', '0', '2017-10-17 13:07:54', NULL),
(39, '41', 'helpnaira@gmail.com', 'MIPAGANOLE', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-18 14:01:26', NULL),
(42, '44', 'uticlinton@gmail.com', 'NIOICNOUGM', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-19 20:02:34', NULL),
(40, '42', 'justintochukwu5@gmail.com', 'STOJNKUILH', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-18 22:04:11', NULL),
(41, '43', 'starlogic@gmail.com', 'SMOTLAAGGL', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-19 17:51:47', NULL),
(43, '45', 'chizobaegbujor@gmail.com', 'LAHARGCZII', '000', NULL, NULL, '000', 'normal', '0', '2017-10-19 21:09:52', '2017-11-02 23:16:49'),
(45, '47', 'chukwundac@yahoo.co.uk', 'UACHONCKUH', '0', NULL, NULL, '14.417449999999917', 'normal', '0', '2017-10-20 09:46:52', NULL),
(46, '48', 'sokariharry@gmail.com', 'GRCYMAIAHS', '0.00', NULL, NULL, '0.0000009990035323426127', 'normal', '0', '2017-10-20 14:44:07', '2017-10-23 11:30:39'),
(47, '49', 'unicornbitex@gmail.com', 'OILGXCRICA', NULL, NULL, NULL, '93280', 'normal', '0', '2017-10-21 11:37:55', '2017-11-11 08:13:01'),
(48, '50', 'thompsonamadi@gmail.com', 'NHIOMILMOO', '0.1522602346275100', NULL, NULL, '0', 'normal', '0', '2017-10-21 15:48:23', '2017-11-13 09:35:29'),
(49, '51', 'Nwadikeoluchi69@gmail.com', 'NWKADH9GCA', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-22 16:15:37', NULL),
(50, '52', 'temitopetola@gmail.com', 'TOPTLOMMET', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-22 18:55:30', NULL),
(51, '53', 'arugub@gmail.com', 'URMGBMAAGU', '0.031', NULL, NULL, '972.5144299999956', 'normal', '0', '2017-10-22 20:48:02', '2017-10-22 22:46:19'),
(52, '54', 'vocalsheavenly@yahoo.com', 'LNLEOYMYEO', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-22 22:42:55', NULL),
(53, '55', 'seguntundeoladimeji@gmail.com', 'EIAEANOMEU', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-23 08:29:19', NULL),
(65, '67', 'bennytex@gmail.com', 'NMTAYNCIMG', '0.00', NULL, NULL, '4.336808689942018e-19', 'normal', '0', '2017-10-28 10:20:10', '2017-10-30 07:39:30'),
(54, '56', 'jeffregin09@gmail.com', 'NC0IOGLEIR', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-24 01:39:13', NULL),
(55, '57', 'Cnyenke1@gmail.com', 'KMCN1LNAEM', '0.12761668186', NULL, NULL, '0.00', 'normal', '0', '2017-10-24 08:51:47', NULL),
(57, '59', 'iamfrankcute@gmail.com', 'KNFAMTMCGE', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-24 15:40:38', NULL),
(56, '58', 'georgeordu@gmail.com', 'OAICGOROMR', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-24 14:14:47', NULL),
(58, '60', 'ibimi.v@gmail.com', 'IICAMMOVLG', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-24 15:49:08', NULL),
(59, '61', 'smootpc@gmail.com', 'OMCCLOTPAO', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-24 17:36:38', NULL),
(60, '62', 'akwuiwudarlington@gmail.com', 'DIWATMAICW', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-25 15:32:49', NULL),
(61, '63', 'egbujortex@gmail.com', 'GREMATJUCI', '0.00', NULL, NULL, '0.00009999999999998899', 'normal', '0', '2017-10-25 16:01:13', '2017-10-25 16:09:05'),
(62, '64', 'owabiesamuel@gmail.com', 'BEEOSGALUL', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-25 20:21:09', NULL),
(63, '65', 'Ugondaelechi@gmail.com', 'GUENIOLIOL', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-26 13:09:34', NULL),
(64, '66', 'samueloyakhilome@gmail.com', 'EYMAOIOOCA', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-27 16:39:39', NULL),
(66, '68', 'ugokingsley5@gmail.com', 'OGMYLENMOC', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-29 18:53:49', NULL),
(67, '69', 'thobah.dhar@gmail.com', 'BHMMLDHHOO', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-30 09:40:11', NULL),
(68, '70', 'endiumunna@gmail.com', 'AMNNUNCEUA', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-30 13:05:09', NULL),
(69, '71', 'bennycash@gmail.com', 'LISNMMYHEG', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-30 14:20:30', NULL),
(70, '72', 'kckross@yahoo.com', 'HASYOOOOCK', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-10-31 06:55:37', NULL),
(71, '73', 'ekenebenedict21@gmail.com', 'C1NEADCIEN', '0.09070222919757348', NULL, NULL, '0', 'normal', '0', '2017-11-01 11:20:03', '2017-11-08 10:46:08'),
(72, '74', 'Joseph.o.madu@gmail.com', 'PJGOOAEHIU', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-01 14:25:07', NULL),
(73, '75', 'drichgirl84@gmail.com', 'IL8OCLH4MR', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-01 17:54:43', NULL),
(74, '76', 'okoeguale25@gmail.com', 'GL2KOAOCEM', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-02 20:05:06', NULL),
(75, '78', 'odionolumhense@gmail.com', 'OOILNIMDCM', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-03 06:22:53', NULL),
(76, '79', 'nnokag@gmail.com', 'AMLOMOANKI', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-03 08:27:40', NULL),
(77, '80', 'mailsforeze@gmail.com', 'ARZSGIIOLC', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-03 08:31:24', NULL),
(78, '81', 'ojk564@gmail.com', 'IO6LJA45GM', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-03 12:28:10', NULL),
(79, '82', 'anietzreuben@gmail.com', 'BZCRGEMLAM', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-03 15:35:11', NULL),
(80, '83', 'danielrose68@yahoo.com', 'ERAO8NE6DO', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-03 17:31:44', NULL),
(81, '84', 'theachiversgroup@gmail.com', 'ROIMPCLEVA', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-03 19:48:34', NULL),
(99, '102', 'Talk2ugomatt@gmail.com', 'GMTUTLMTAK', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-08 06:01:48', NULL),
(82, '85', 'unicornng@mailinator.com', 'CLONIMRINR', '0.00', NULL, NULL, '0.00', 'processing', '0', '2017-11-04 14:46:20', '2017-11-06 06:53:08'),
(83, '86', 'petertriumphant007@gmail.cm', 'GINETEAHTL', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-04 16:00:43', NULL),
(84, '87', 'ezechukwujindu@gmail.com', 'DGUAUKEILH', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-05 02:31:03', NULL),
(85, '88', 'tunde364@gmail.com', 'GCTIA43NLU', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-05 04:53:47', NULL),
(86, '89', 'esinniobiwa.quareeb@gmail.com', 'EEWBQMELNC', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-05 06:35:41', NULL),
(87, '90', 'cjonnyjoe@yahoo.com', 'OHYYEJCOCN', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-05 11:35:22', NULL),
(88, '91', 'ezewuzieifunanya@gmail.com', 'ANINLIEEUZ', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-06 08:10:11', NULL),
(89, '92', 'nnaji.l@yahoo.com', 'OHYNCALJOI', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-06 08:38:29', NULL),
(90, '93', 'pec4cj@yahoo.com', 'OC4HJOPMCA', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-06 09:11:54', NULL),
(91, '94', 'contactnosa@gmail.com', 'STLIOCCMMO', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-06 10:45:03', NULL),
(92, '95', 'nwadikesally@gmail.com', 'AADOYEAMKM', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-06 11:45:45', NULL),
(93, '96', 'austn007@gmail.com', 'I0NMGTAA0C', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-06 14:41:49', NULL),
(94, '97', 'nuel.impact@gmail.com', 'GOCMNEALPC', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-06 14:42:52', NULL),
(95, '98', 'mjaysworld@yahoo.com', 'LACYOAOSMO', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-06 19:46:07', NULL),
(96, '99', 'clinsgfx@gmail.com', 'XSGCALICMO', '0.0000007200000000000609', NULL, NULL, '17.55077800000072', 'normal', '0', '2017-11-06 20:00:23', '2017-11-07 09:32:17'),
(97, '100', 'solomonmark83@gmail.com', 'C8MRNMSOOO', '0.0012186999999999999', NULL, NULL, '0.00', 'normal', '0', '2017-11-07 20:39:08', NULL),
(98, '101', 'kb4flexy1@gmail.com', 'KMMYEBIL4C', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-08 05:19:26', NULL),
(100, '103', 'aruwajoyeoladapox@gmail.com', 'UOAPAOGAMX', '000', NULL, NULL, '0.00', 'normal', '0', '2017-11-08 16:23:44', NULL),
(101, '104', 'ucheyasystempro@gmail.com', 'YAORMUEYLG', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-08 17:50:15', NULL),
(102, '105', 'chizoba8000@gmail.com', 'MGIB0ML8OO', '0.07284017332947774', NULL, NULL, '0', 'normal', '0', '2017-11-08 20:56:25', '2017-11-09 02:34:42'),
(103, '106', 'ohiz2007@gmail.com', 'AOL2I0IMZC', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-08 23:09:29', NULL),
(104, '107', 'aadeoluoluwatobi@gmail.com', 'DATAGWOIBO', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-09 05:29:56', NULL),
(105, '108', 'stefanobo3310@gmail.com', 'MBECOI3T1S', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-09 11:45:20', NULL),
(106, '109', 'ikechukwuj35@gmail.com', 'ALUJHM5OCE', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-09 14:30:49', NULL),
(107, '110', 'theodoraisola@gmail.com', 'LOAOAMIOOG', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-09 15:45:27', NULL),
(108, '111', 'tonienickkie@gmail.com', 'EEIIIGOCML', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-09 18:43:23', NULL),
(109, '112', 'vincentnug@gmail.com', 'NATNUMNEMG', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-11 11:04:57', NULL),
(110, '113', 'ogedengbetitus00@gmail.com', 'LTUTADOC0E', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-12 15:01:02', NULL),
(111, '114', 'mebirimebenezer@gmail.com', 'IACEMEMEOR', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-12 15:58:15', NULL),
(112, '115', 'etinohhsa@gmail.com', 'THNEOMALIM', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-13 06:04:02', NULL),
(113, '116', 'patienceifeosame@gmail.com', 'MLESACPOOT', '0.00', NULL, NULL, '0.00', 'normal', '0', '2017-11-13 10:46:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_completed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_funded` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`id`, `user_id`, `email`, `type`, `currency`, `amount`, `description`, `transaction_id`, `time_completed`, `account_funded`, `account_name`, `account_number`, `bank`, `status`, `deleted`, `created_at`, `updated_at`) VALUES
(1, '21', 'the21stcenturyceo@gmail.com', 'Instant transfer', 'currency', '20010', 'currency funds withdrawal NGN', 'wsYUJfpoAe', NULL, NULL, 'Precious Chukundah', '3056148476', 'First Bank of Nigeria Plc', 'complete', '0', '2017-10-16 12:57:37', '2017-10-16 13:00:38'),
(2, '2', 'calmpress@gmail.com', 'Unicorn transfer', 'btc', '0.0044', 'btc funds transfer', 'error', NULL, NULL, '', '3JtuXVyHWjxiZXzrqGp8DRX2xdDjPQmBhP', 'btc', 'complete', '0', '2017-10-18 19:42:44', '2017-10-18 20:03:33'),
(3, '47', 'chukwundac@yahoo.co.uk', '24 Hrs transfer', 'currency', '5800', 'currency funds withdrawal NGN', '6201LuYMDV', NULL, NULL, 'Chidera Chukunda', '3090181756', 'First Bank of Nigeria Plc', 'complete', '0', '2017-10-20 14:40:33', '2017-10-20 14:51:09'),
(4, '21', 'the21stcenturyceo@gmail.com', '24 Hrs transfer', 'currency', '43311.57', 'currency funds withdrawal NGN', '91B07A6rQJ', NULL, NULL, 'Precious Chukundah', '3056148476', 'First Bank of Nigeria Plc', 'complete', '0', '2017-10-23 10:19:45', '2017-10-23 10:20:26'),
(5, '50', 'thompsonamadi@gmail.com', 'Unicorn transfer', 'btc', '0.0098043', 'btc funds transfer', 'error', NULL, NULL, '', '1M24TNcvZHRJst3Zk96DVt2inpyVaEDq7d', 'btc', 'complete', '0', '2017-10-26 10:55:27', '2017-10-28 05:36:11'),
(6, '50', 'thompsonamadi@gmail.com', 'Unicorn transfer', 'btc', '0.00871673', 'btc funds transfer', 'error', NULL, NULL, '', '1M24TNcvZHRJst3Zk96DVt2inpyVaEDq7d', 'btc', 'complete', '0', '2017-10-26 11:39:36', '2017-10-28 05:36:20'),
(7, '50', 'thompsonamadi@gmail.com', 'Unicorn transfer', 'btc', '0.0011', 'btc funds transfer', 'error', NULL, NULL, '', '1M24TNcvZHRJst3Zk96DVt2inpyVaEDq7d', 'btc', 'complete', '0', '2017-10-26 14:50:06', '2017-10-28 05:36:35'),
(8, '50', 'thompsonamadi@gmail.com', 'Unicorn transfer', 'btc', '0.0014299999999999998', 'btc funds transfer', 'error', NULL, NULL, '', '1M24TNcvZHRJst3Zk96DVt2inpyVaEDq7d', 'btc', 'complete', '0', '2017-10-26 14:53:37', '2017-10-28 05:36:43'),
(9, '50', 'thompsonamadi@gmail.com', 'Unicorn transfer', 'btc', '0.10200000000000001', 'btc funds transfer', 'error', NULL, NULL, '', '1M24TNcvZHRJst3Zk96DVt2inpyVaEDq7d', 'btc', 'complete', '0', '2017-10-26 14:58:37', '2017-10-28 05:36:50'),
(10, '25', 'othuke.imonikiro@gmail.com', 'transfer btc', 'btc', '0.0008181', 'btc funds withdrawal', '8fd18c62ca6af05add9165ea2073f7d31c3c386d371807dcc1920f3553bf44dd', NULL, NULL, NULL, '1Ly5DuqZkAe6qosfzhTppB2jMUiZAKag6E', NULL, 'complete', '0', '2017-10-31 12:40:48', '2017-10-31 13:15:38'),
(11, '50', 'thompsonamadi@gmail.com', 'Unicorn transfer', 'btc', '0.0039655', 'btc funds transfer', '9d93d78717113442f2ab259a2edd0a679b24285a7d756ade77253ae69a303c37', NULL, NULL, '', '12kuC9pWLCCaJHHHwbRbqq6zEDLsBtze6k', 'btc', 'complete', '0', '2017-11-02 08:20:59', '2017-11-02 09:00:58'),
(12, '50', 'thompsonamadi@gmail.com', 'Unicorn transfer', 'btc', '0.14854464', 'btc funds transfer', 'f22d24702b20ac4b6c28808c8fe53f8c52b35f229fe868052a6c2a91dedab1e6', NULL, NULL, '', '195RtqAnvF4xdSw4Nubb6oYeBT1pC3ELHy', 'btc', 'complete', '0', '2017-11-02 17:34:10', '2017-11-02 22:10:38'),
(13, '57', 'Cnyenke1@gmail.com', 'Unicorn transfer', 'btc', '0.054938', 'btc funds transfer', '0a7b4a78f019e3bfc2f73fcd09508ca3e32b7a2535ce3841373ee891fcfb504a', NULL, NULL, '', '195RtqAnvF4xdSw4Nubb6oYeBT1pC3ELHy', 'btc', 'complete', '0', '2017-11-03 15:25:03', '2017-11-03 20:15:39'),
(14, '50', 'thompsonamadi@gmail.com', 'Unicorn transfer', 'btc', '0.041479', 'btc funds transfer', 'ded823a9179979643c2e59caa33e4a7cab8e9ac5be707c6b83447bf770ace261', NULL, NULL, '', '18FXFmc3rPuQmU3VhqWvYPJnjRjRdjushv', 'btc', 'complete', '0', '2017-11-04 12:33:28', '2017-11-04 13:20:38'),
(15, '99', 'clinsgfx@gmail.com', '24 Hrs transfer', 'currency', '6100', 'currency funds withdrawal NGN', 'WzS2l0Zlv8', NULL, NULL, 'Clinton Agburum', '0128146090', 'Guaranty Trust Bank Plc', 'complete', '0', '2017-11-07 12:24:37', '2017-11-07 12:57:20'),
(16, '50', 'thompsonamadi@gmail.com', 'Unicorn transfer', 'btc', '0.1252473', 'btc funds transfer', 'd0351a48fab1c7f5588d2e4cdc7cf2ce6c61b8ac69cfd1d2394d0ec2d35f8635', NULL, NULL, '', '1DgMJgEr9K9RuZjTMvxGFZR5TKejqxkJQH', 'btc', 'complete', '0', '2017-11-07 14:06:12', '2017-11-07 14:15:38'),
(17, '57', 'Cnyenke1@gmail.com', 'Unicorn transfer', 'btc', '0.0478', 'btc funds transfer', '8627b204908219bb51b9fac73c7d43aec5b03a04edbfa0e943c3442d8d62898c', NULL, NULL, '', '1LDoXkevgMd9JGcjed7fpAzPgG1inCC5Cc', 'btc', 'complete', '0', '2017-11-07 14:15:26', '2017-11-07 14:30:57'),
(18, '50', 'thompsonamadi@gmail.com', 'Unicorn transfer', 'btc', '0.004983030000000001', 'btc funds transfer', 'd5951f5583eb279b08994dd246fb5ca2b5117aa608077140eb939474daab2b78', NULL, NULL, '', '1HAf67JgMix3QgejRDYnGDxGckMNQVDTLY', 'btc', 'complete', '0', '2017-11-13 08:27:04', '2017-11-13 09:20:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exchange`
--
ALTER TABLE `exchange`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exchange_market`
--
ALTER TABLE `exchange_market`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_read`
--
ALTER TABLE `news_read`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pre_launch`
--
ALTER TABLE `pre_launch`
  ADD UNIQUE KEY `prim` (`id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recieve`
--
ALTER TABLE `recieve`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upgrades`
--
ALTER TABLE `upgrades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `exchange`
--
ALTER TABLE `exchange`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `exchange_market`
--
ALTER TABLE `exchange_market`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `news_read`
--
ALTER TABLE `news_read`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `pre_launch`
--
ALTER TABLE `pre_launch`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `recieve`
--
ALTER TABLE `recieve`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;
--
-- AUTO_INCREMENT for table `upgrades`
--
ALTER TABLE `upgrades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
