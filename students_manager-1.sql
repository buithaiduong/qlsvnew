-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2024 at 02:49 PM
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
-- Database: `students_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `ip_client` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `role_id`, `user_id`, `username`, `password`, `status`, `ip_client`, `last_login`, `last_logout`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 'trieunt6', '123456789', 1, NULL, NULL, NULL, '2024-03-11 08:42:38', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `slug`, `department_id`, `status`, `created_at`, `updated_at`, `deleted_at`, `description`) VALUES
(1, 'tieng anh ', '\r\n\r\nsadasd\r\n', 1, 1, NULL, NULL, '2024-04-07 14:33:11', ''),
(6, 'cntt', 'Trieunt6', NULL, 1, '2024-04-07 14:32:57', '2024-04-07 15:17:06', '2024-04-07 17:01:59', ''),
(7, 'ew', 'w', NULL, 1, '2024-04-07 14:33:26', NULL, NULL, ''),
(8, 'ewe', 'ewew', NULL, 1, '2024-04-07 14:33:30', NULL, '2024-04-07 17:04:49', ''),
(9, 'ewe', 'd3d', 3, 1, '2024-04-07 14:33:36', '2024-04-08 12:26:00', '2024-04-08 12:26:02', ''),
(11, 'sa', 'sá', NULL, 1, '2024-04-07 17:07:18', NULL, NULL, ''),
(12, 'SDLC', 'Nguyễn Thanh Triều', 2, 1, '2024-04-08 12:22:39', '2024-04-08 14:53:07', NULL, ''),
(13, 'Database', 'Hà Ngọc Linh', 2, 1, '2024-04-08 12:22:48', '2024-04-08 16:37:19', NULL, ''),
(14, 'htr', 'rth', 6, 1, '2024-04-08 12:26:18', NULL, '2024-04-08 16:40:16', 'rtrt'),
(15, 'Thiet ke do hoa', 'Dowin', 4, 1, '2024-04-08 12:26:27', '2024-04-08 16:40:12', NULL, ''),
(16, 'Webbbb', 'Hoàng Văn KHải', 4, 1, '2024-04-08 12:57:13', '2024-04-08 17:15:52', NULL, ''),
(17, 'Programming', 'Nguyễn Trọng Hưng', 2, 1, '2024-04-08 14:52:56', '2024-04-08 16:39:36', NULL, ''),
(18, 'tai chinh', 'kien', 1, 1, '2024-04-08 17:14:51', NULL, '2024-04-08 17:51:14', 'đsds'),
(19, 'SDLC', 'Nguyễn Thanh Triều', 1, 1, '2024-04-08 17:15:13', NULL, NULL, 'dd'),
(20, 'lập trình java', 'nguyễn Trọng Hưng', 4, 1, '2024-04-08 17:31:59', '2024-04-08 17:33:44', NULL, ''),
(21, 'lập trình php', 'nguyễn Trọng Hưng', 5, 1, '2024-04-08 17:47:53', '2024-04-08 17:53:06', NULL, ''),
(22, 'lập trình c#', 'nguyễn Trọng Hưng', 1, 1, '2024-04-08 17:49:04', NULL, NULL, ''),
(23, 'Marketing', 'Việt', 5, 1, '2024-04-08 17:52:05', '2024-04-08 17:52:37', NULL, ''),
(24, 'Nguyễn Thành Đạt', 'Việt', 5, 1, '2024-04-09 19:39:46', NULL, NULL, ''),
(25, 'dfs', 'fd', 5, 1, '2024-04-09 19:40:11', NULL, NULL, 'fd');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `leader` varchar(60) NOT NULL,
  `date_beginning` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `logo` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `slug`, `leader`, `date_beginning`, `status`, `logo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Công nghệ thông tin', 'cong-nghe-thong-tin', 'Đỗ Quốc Bình', '2024-03-19', 1, 'pngtree-vector-user-young-boy-avatar-icon-png-image_1538408.jpg', '2024-03-19 02:10:44', '2024-04-07 15:12:48', '2024-04-08 17:51:31'),
(2, 'Cong nghe thong tin', 'cong-nghe-thong-tin', 'Pham Duc Viet', '2024-03-15', 1, 'avatar.png', '2024-03-25 02:58:10', '2024-03-26 17:36:39', '2024-03-26 17:36:45'),
(3, 'Tieng Anh', 'tieng-anh', 'Ngoc Tran', '2024-03-09', 1, 'teacher_PNG11.png', '2024-03-25 03:03:20', '2024-04-07 15:12:25', '2024-04-07 17:02:15'),
(4, 'Thiet Ke Do Hoa', 'thiet-ke-do-hoa', 'Ms Trang', '2017-01-01', 1, 'teacher_PNG11.png', '2024-03-25 03:04:02', '2024-04-07 15:12:37', '2024-04-08 17:47:29'),
(5, 'Quan Tri Kinh Doanh', 'quan-tri-kinh-doanh', 'Pham Duc Viet', '2024-03-22', 1, 'images.png', '2024-03-26 17:38:17', '2024-04-08 13:03:37', NULL),
(6, 'âss', 'âss', 'sá', '1970-01-01', 1, NULL, '2024-04-07 17:02:36', NULL, '2024-04-08 16:44:33'),
(7, 'đâ', 'đâ', 'dâd', '1970-01-01', 1, NULL, '2024-04-07 17:05:55', NULL, '2024-04-08 17:51:28'),
(8, 's', 's', 'ds', '1970-01-01', 1, NULL, '2024-04-08 16:44:54', NULL, '2024-04-08 17:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `student_numbers` int(10) UNSIGNED NOT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  `captain` varchar(60) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_student`
--

CREATE TABLE `group_student` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `absent` tinyint(4) NOT NULL DEFAULT 1,
  `present` tinyint(4) NOT NULL DEFAULT 0,
  `learning_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `slug` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `slug`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', NULL, 'admin', 1, '2024-03-11 08:33:12', NULL, NULL),
(2, 'student', 'student', 'student', 1, '2024-03-11 08:33:43', NULL, NULL),
(3, 'teacher', 'teacher', 'teacher', 1, '2024-03-11 08:34:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `year` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `extra_code` varchar(100) NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `full_name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `birthday` date NOT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT 1,
  `avatar` varchar(200) DEFAULT NULL,
  `information` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `extra_code`, `role_id`, `first_name`, `last_name`, `full_name`, `email`, `phone`, `address`, `birthday`, `gender`, `avatar`, `information`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'BH000999', 2, 'Thanh Trieu', 'Nguyen', 'Nguyen Thanh Trieu', 'trieunt6@fe.edu.vn', '0975091304', 'Ha Noi', '2024-03-11', 1, NULL, NULL, 1, '2024-03-11 08:39:40', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `group_student`
--
ALTER TABLE `group_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_student`
--
ALTER TABLE `group_student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `term`
--
ALTER TABLE `term`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `accounts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`term_id`) REFERENCES `term` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `groups_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `group_student`
--
ALTER TABLE `group_student`
  ADD CONSTRAINT `group_student_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `group_student_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `group_student_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `group_student_ibfk_4` FOREIGN KEY (`teacher_id`) REFERENCES `accounts` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
