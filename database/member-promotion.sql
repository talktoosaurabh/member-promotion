-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2021 at 03:48 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `member-promotion`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet` int(11) NOT NULL DEFAULT '0',
  `pool_rank` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contact`, `wallet`, `pool_rank`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'administrator@app.com', '9898989890', 14, 2, '2021-05-22 13:26:43', '2021-05-22 17:30:30'),
(2, 'Saurabh Singh', 'talktoosaurabh@gmail.com', '6026472660', 8, 2, '2021-05-22 14:02:27', '2021-05-22 13:45:52'),
(3, 'Abhinav', 'abhi@gmail.com', '9898989890', 0, 1, '2021-05-22 16:45:29', '2021-05-22 16:45:29'),
(4, 'Bablu', 'bablu@gmail.com', '9898989890', 0, 1, '2021-05-22 16:46:12', '2021-05-22 16:46:12'),
(5, 'Aniket', 'aniket@gmail.com', '9898989890', 0, 1, '2021-05-22 16:46:37', '2021-05-22 16:46:37'),
(6, 'Suraj Rathod', 'suraj@gmail.com', '9898989890', 0, 1, '2021-05-22 16:47:04', '2021-05-22 16:47:04'),
(7, 'Kartik Lahane', 'kartik@gmail.com', '9898989890', 0, 1, '2021-05-22 16:47:31', '2021-05-22 16:47:31'),
(8, 'Suraj Magar', 'surya@gmail.com', '9898989890', 0, 1, '2021-05-22 16:48:11', '2021-05-22 16:48:11'),
(9, 'Mahesh', 'mahesh@gmail.com', '9898989890', 0, 1, '2021-05-22 16:48:44', '2021-05-22 16:48:44'),
(10, 'Rupesh Kanojiya', 'rupya@gmail.com', '9898989890', 0, 1, '2021-05-22 16:49:21', '2021-05-22 16:49:21'),
(11, 'Aayush Singh', 'aayush@gmail.com', '9898989890', 0, 1, '2021-05-22 16:49:55', '2021-05-22 16:49:55'),
(12, 'Darsh Singh', 'darshu@gmail.com', '9898989890', 0, 1, '2021-05-22 16:50:21', '2021-05-22 16:50:21'),
(17, 'Testing 1', 'test1@gmail.com', '9898989890', 0, 1, '2021-05-22 17:21:10', '2021-05-22 17:21:10'),
(24, 'D Singh', 'demo1@admin.com', '9898989890', 0, 1, '2021-05-22 17:30:29', '2021-05-22 17:30:29'),
(25, 'admin1@gmail.com', 'vftcdc@gmail.com', '9898989890', 0, 1, '2021-05-22 17:31:11', '2021-05-22 17:31:11'),
(26, 'Naved Akhtar', 'naved@gmail.com', '9898989890', 0, 1, '2021-05-22 17:36:04', '2021-05-22 17:36:04'),
(27, 'Mayank Singh', 'mayank@gmail.com', '9898989890', 0, 1, '2021-05-22 17:36:25', '2021-05-22 17:36:25'),
(28, 'Babbu Singh', 'babbu@gmail.com', '9898989890', 0, 1, '2021-05-22 17:37:00', '2021-05-22 17:37:00'),
(29, 'Sheikh Abdun', 'abdun@gmail.com', '9898989890', 0, 1, '2021-05-22 17:37:24', '2021-05-22 17:37:24'),
(30, 'Aman Agarwal', 'aman@gmail.com', '9898989890', 0, 1, '2021-05-22 17:37:59', '2021-05-22 17:37:59'),
(31, 'Suresh Kumar', 'suresh@gmail.com', '9898989890', 0, 1, '2021-05-22 17:38:21', '2021-05-22 17:38:21'),
(32, 'Dhananjay Singh', 'dhananjay@gmail.com', '9898989890', 0, 1, '2021-05-22 17:38:45', '2021-05-22 17:38:45'),
(33, 'Anurag Singh', 'anurag@gmail.com', '9898989890', 0, 1, '2021-05-22 17:39:50', '2021-05-22 17:39:50'),
(34, 'Shivam Singh', 'shivam@gmail.com', '9898989890', 0, 1, '2021-05-22 17:40:38', '2021-05-22 17:40:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
