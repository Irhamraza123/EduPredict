-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 12, 2024 at 12:09 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new`
--

-- --------------------------------------------------------

--
-- Table structure for table `admission_freezes`
--

CREATE TABLE `admission_freezes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `campus` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('1c9b28bd3cb8c5a0f5823e52d3882277', 'i:2;', 1730796486),
('1c9b28bd3cb8c5a0f5823e52d3882277:timer', 'i:1730796486;', 1730796486),
('3efb82b0e2ecb9fc525ee79d325d6886', 'i:1;', 1731409580),
('3efb82b0e2ecb9fc525ee79d325d6886:timer', 'i:1731409580;', 1731409580),
('9fffe7e43ed295f24d431bc937f45f72', 'i:1;', 1730796361),
('9fffe7e43ed295f24d431bc937f45f72:timer', 'i:1730796361;', 1730796361),
('adeel@gmail.com|127.0.0.1', 'i:3;', 1730796316),
('adeel@gmail.com|127.0.0.1:timer', 'i:1730796316;', 1730796316),
('c525a5357e97fef8d3db25841c86da1a', 'i:1;', 1731409626),
('c525a5357e97fef8d3db25841c86da1a:timer', 'i:1731409626;', 1731409626),
('eaf2fa6b5eba1918c3c05db42a651531', 'i:3;', 1730796316),
('eaf2fa6b5eba1918c3c05db42a651531:timer', 'i:1730796316;', 1730796316);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `fees_amount` int(11) NOT NULL,
  `student_campus` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_vouchers`
--

CREATE TABLE `fee_vouchers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_campus` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `status` varchar(255) NOT NULL,
  `generated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_19_044810_add_two_factor_columns_to_users_table', 1),
(5, '2024_07_19_045019_create_personal_access_tokens_table', 1),
(6, '2024_07_22_090958_create_student_information_table', 1),
(7, '2024_07_23_072336_create_student_attendence', 1),
(8, '2024_08_07_063030_create_fees_table', 1),
(9, '2024_08_07_090717_create_fee_vochers_table', 1),
(10, '2024_08_12_062435_create_payments_table', 1),
(11, '2024_08_16_110125_add_nic_images_to_students_table', 1),
(12, '2024_08_16_113102_add_profile_image_to_student_information_table', 1),
(13, '2024_08_19_064605_create_staff__information_table', 1),
(14, '2024_08_22_052806_create_admission_freezes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_campus` varchar(255) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `stripe_payment_id` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0XXa8Qqwn1eoVfFj9z3wNBa2i08b2Ckg1OY1eRWh', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTJaZWhnbFZDcEFYck5wRXF3c1JDRHlacGZsclBKMEM1WWVxY21zSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1731409594),
('MZkS6HOcIIj8PPZz4s1ZRvgjzXIBDNy91nMABlyL', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnNpdkU5bHppbFlmSEY4bDFKWGtDOHBPcTZnem95RWdETjYwaHRyYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1731392460);

-- --------------------------------------------------------

--
-- Table structure for table `staff_information`
--

CREATE TABLE `staff_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `nic_front` varchar(255) DEFAULT NULL,
  `nic_back` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) NOT NULL,
  `campus` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `residential_address` varchar(255) NOT NULL,
  `position_role` varchar(255) NOT NULL,
  `date_of_joining` date NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `qualifications_certifications` varchar(255) NOT NULL,
  `previous_work_experience` text NOT NULL,
  `special_skills` varchar(255) NOT NULL,
  `emergency_contact_details` varchar(255) NOT NULL,
  `highest_degree_earned` varchar(255) NOT NULL,
  `institutions_attended` varchar(255) NOT NULL,
  `graduation_year` year(4) NOT NULL,
  `additional_courses` varchar(255) NOT NULL,
  `medical_history` text DEFAULT NULL,
  `allergies` varchar(255) DEFAULT NULL,
  `health_conditions` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `account_holder_name` varchar(255) NOT NULL,
  `basic_salary` varchar(255) NOT NULL,
  `bank_branch` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_attendence`
--

CREATE TABLE `student_attendence` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `day` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_attendence`
--

INSERT INTO `student_attendence` (`id`, `student_id`, `status`, `date`, `day`, `created_at`, `updated_at`) VALUES
(1, 1, 'Present', '2024-10-29', 'Tuesday', '2024-10-29 00:26:28', '2024-10-29 00:26:28'),
(2, 1, 'Present', '2024-11-04', 'Monday', '2024-11-04 03:45:25', '2024-11-04 03:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `student_information`
--

CREATE TABLE `student_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `date_of_birth` date NOT NULL,
  `class` varchar(255) NOT NULL,
  `campus` varchar(255) NOT NULL,
  `roll_number` varchar(255) NOT NULL,
  `date_of_joining` date NOT NULL,
  `reason_for_joining` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `self_introduction` text NOT NULL,
  `fathers_name` varchar(255) NOT NULL,
  `fathers_age` int(11) NOT NULL,
  `fathers_job` varchar(255) NOT NULL,
  `fathers_whatsapp_number` varchar(255) NOT NULL,
  `mothers_name` varchar(255) NOT NULL,
  `mothers_age` int(11) NOT NULL,
  `mothers_job` varchar(255) NOT NULL,
  `mothers_whatsapp_number` varchar(255) NOT NULL,
  `number_of_siblings` int(11) NOT NULL,
  `favorite_food_dishes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`favorite_food_dishes`)),
  `plans_if_given_1_crore` text NOT NULL,
  `biggest_wish` text NOT NULL,
  `vision_for_10_years_ahead` text NOT NULL,
  `ideal_personalities` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`ideal_personalities`)),
  `students_whatsapp_number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nic_front_image` varchar(255) DEFAULT NULL,
  `nic_back_image` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_information`
--

INSERT INTO `student_information` (`id`, `student_id`, `name`, `email`, `age`, `date_of_birth`, `class`, `campus`, `roll_number`, `date_of_joining`, `reason_for_joining`, `city`, `country`, `self_introduction`, `fathers_name`, `fathers_age`, `fathers_job`, `fathers_whatsapp_number`, `mothers_name`, `mothers_age`, `mothers_job`, `mothers_whatsapp_number`, `number_of_siblings`, `favorite_food_dishes`, `plans_if_given_1_crore`, `biggest_wish`, `vision_for_10_years_ahead`, `ideal_personalities`, `students_whatsapp_number`, `created_at`, `updated_at`, `nic_front_image`, `nic_back_image`, `profile_image`) VALUES
(1, '1', 'qukyhy@mailinator.com', 'bagu@mailinator.com', 15, '2003-08-12', 'Sit cillum ea nisi v', 'korangi', '502', '2007-11-15', 'Ducimus reiciendis', 'Quia magna eligendi', 'Quis incidunt quia', 'Nobis et est modi ve', 'Callum Cannon', 24, 'Veritatis sint in al', '157', 'Ria Navarro', 72, 'Aliquid cum nostrud', '726', 868, '\"[\\\"M\\\",\\\"o\\\",\\\"l\\\"]\"', 'Pariatur Accusantiu', 'Dolor do qui impedit', 'Doloribus eius velit', '\"[\\\"D\\\",\\\"o\\\",\\\"l\\\"]\"', '766', '2024-10-29 00:26:10', '2024-10-29 04:14:42', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'student',
  `campus` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `campus`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'ahmed', 'ahmed@gmail.com', 'student', 'korangi', NULL, '$2y$12$/ldNJR4NeDIac3u6cfbV8eJ74jaJ2sVglaAKTQN3IT/bF8AH/1Zce', NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-28 23:45:41', '2024-10-28 23:45:41'),
(2, 'admin', 'admin@gmail.com', 'admin', 'korangi', NULL, '$2y$12$ztQ54eOg7QExMzdObQYKLeTVG6Mco4fbf141/9D1qMxusyD7/vQwO', NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-29 00:24:33', '2024-10-29 00:24:33'),
(3, 'Nasar', 'nasar@gmail.com', 'teacher', 'korangi', NULL, '$2y$12$YU94jCsjShn6oz/O55pUiuxlMd7pbFby3yQ5RvWHI5jQ.T8ig3Ob6', NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-29 05:33:29', '2024-10-29 05:33:29'),
(4, 'Irham', 'Irham@gmail.com', 'principle', 'korangi', NULL, '$2y$12$Rj8ml6ciJtj/ysL4e5qdouF56dCvQyhdscAQQX3FKZQZUwWsol8ZG', NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-29 05:36:37', '2024-10-29 05:36:37'),
(5, 'zuha', 'zuha@gmail.com', 'analyst', 'korangi', NULL, '$2y$12$QUpjCtqKChUrLJ.sVAw5d.tm4.CnldugcMYxG/eMYfKU17uF.l.TC', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-04 04:24:47', '2024-11-04 04:24:47'),
(7, 'Ayesha Khan', 'ayeshakhan1@gmail.com', 'student', 'Korangi', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(8, 'Ahmed Ali', 'ahmedali2@gmail.com', 'student', 'Munawar', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(9, 'Fatima Noor', 'fatimanoor3@gmail.com', 'student', 'Islamabad', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(10, 'Muhammad Zaid', 'muhammadzaid4@gmail.com', 'student', 'Online Academy', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(11, 'Sara Ahsan', 'saraahsan5@gmail.com', 'student', 'Korangi', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(12, 'Zain Ali', 'zainali6@gmail.com', 'student', 'Munawar', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(13, 'Hira Yousaf', 'hirayousaf7@gmail.com', 'student', 'Islamabad', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(14, 'Asad Qureshi', 'asadqureshi8@gmail.com', 'student', 'Online Academy', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(15, 'Alina Saeed', 'alinasaeed9@gmail.com', 'student', 'Korangi', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(16, 'Bilal Khan', 'bilalkhan10@gmail.com', 'student', 'Munawar', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(17, 'Hassan Farooq', 'hassanf11@gmail.com', 'student', 'Islamabad', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(18, 'Amina Tariq', 'aminatariq12@gmail.com', 'student', 'Korangi', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(19, 'Usman Raza', 'usmanraza13@gmail.com', 'student', 'Munawar', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(20, 'Nimra Aziz', 'nimraaziz14@gmail.com', 'student', 'Online Academy', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(21, 'Yousuf Arif', 'yousufarif15@gmail.com', 'student', 'Islamabad', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(22, 'Sadia Bukhari', 'sadiab16@gmail.com', 'student', 'Korangi', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(23, 'Adeel Malik', 'adeelmalik17@gmail.com', 'student', 'Munawar', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(24, 'Hina Saeed', 'hinasaeed18@gmail.com', 'student', 'Online Academy', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(25, 'Arham Javed', 'arhamjaved19@gmail.com', 'student', 'Islamabad', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(26, 'Rabia Khan', 'rabiakhan20@gmail.com', 'student', 'Korangi', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(27, 'Ali Raza', 'aliraza21@gmail.com', 'student', 'Munawar', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(28, 'Zara Hashmi', 'zarahashmi22@gmail.com', 'student', 'Islamabad', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(29, 'Sohail Asghar', 'sohailasghar23@gmail.com', 'student', 'Online Academy', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(30, 'Aisha Younus', 'aishayounus24@gmail.com', 'student', 'Korangi', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(31, 'Zainab Qureshi', 'zainabq25@gmail.com', 'student', 'Munawar', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(32, 'Ahmad Faraz', 'ahmadfaraz26@gmail.com', 'student', 'Islamabad', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(33, 'Amna Iqbal', 'amna27@gmail.com', 'student', 'Online Academy', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(34, 'Sami Ullah', 'samiullah28@gmail.com', 'student', 'Korangi', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(35, 'Hina Younis', 'hinayounis29@gmail.com', 'student', 'Munawar', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(36, 'Rizwan Khan', 'rizwan30@gmail.com', 'student', 'Islamabad', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(37, 'Saba Rafiq', 'sabarafiq31@gmail.com', 'student', 'Online Academy', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(38, 'Ali Sher', 'alisher32@gmail.com', 'student', 'Korangi', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(39, 'Maha Tariq', 'mahatariq33@gmail.com', 'student', 'Munawar', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(40, 'Maira Ahmed', 'mairaahmed34@gmail.com', 'student', 'Islamabad', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(41, 'Kashan Aslam', 'kashanaslam35@gmail.com', 'student', 'Online Academy', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(42, 'Rabail Zafar', 'rabailz36@gmail.com', 'student', 'Korangi', '2024-11-12 05:11:35', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:11:35', '2024-11-12 05:11:35'),
(43, 'Ammar Shafiq', 'ammarshafiq101@gmail.com', 'student', 'Korangi', '2024-11-12 05:12:56', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:12:56', '2024-11-12 05:12:56'),
(44, 'Mahnoor Ali', 'mahnoorali102@gmail.com', 'student', 'Munawar', '2024-11-12 05:12:56', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:12:56', '2024-11-12 05:12:56'),
(45, 'Hamza Abbas', 'hamzaabbas103@gmail.com', 'student', 'Islamabad', '2024-11-12 05:12:56', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:12:56', '2024-11-12 05:12:56'),
(46, 'Areeba Qasim', 'areebaqasim104@gmail.com', 'student', 'Online Academy', '2024-11-12 05:12:56', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:12:56', '2024-11-12 05:12:56'),
(47, 'Usman Tariq', 'usmantariq105@gmail.com', 'student', 'Korangi', '2024-11-12 05:12:56', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:12:56', '2024-11-12 05:12:56'),
(48, 'Sara Raza', 'saraza106@gmail.com', 'student', 'Munawar', '2024-11-12 05:12:56', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:12:56', '2024-11-12 05:12:56'),
(49, 'Ali Sher', 'alisher107@gmail.com', 'student', 'Islamabad', '2024-11-12 05:12:56', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:12:56', '2024-11-12 05:12:56'),
(50, 'Afshan Anwar', 'afshananwar108@gmail.com', 'student', 'Online Academy', '2024-11-12 05:12:56', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:12:56', '2024-11-12 05:12:56'),
(51, 'Bilal Haider', 'bilalhaider109@gmail.com', 'student', 'Korangi', '2024-11-12 05:12:56', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:12:56', '2024-11-12 05:12:56'),
(52, 'Maira Javed', 'mairajaved110@gmail.com', 'student', 'Munawar', '2024-11-12 05:12:56', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:12:56', '2024-11-12 05:12:56'),
(53, 'Zainab Malik', 'zainabmalik111@gmail.com', 'student', 'Islamabad', '2024-11-12 05:17:20', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:17:20', '2024-11-12 05:17:20'),
(54, 'Sohail Khan', 'sohailkhan112@gmail.com', 'student', 'Online Academy', '2024-11-12 05:17:20', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:17:20', '2024-11-12 05:17:20'),
(55, 'Rabia Mustafa', 'rabiamustafa113@gmail.com', 'student', 'Korangi', '2024-11-12 05:17:20', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:17:20', '2024-11-12 05:17:20'),
(56, 'Arslan Shah', 'arslanshah114@gmail.com', 'student', 'Munawar', '2024-11-12 05:17:20', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:17:20', '2024-11-12 05:17:20'),
(57, 'Laiba Kamal', 'laibakamal115@gmail.com', 'student', 'Islamabad', '2024-11-12 05:17:20', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:17:20', '2024-11-12 05:17:20'),
(58, 'Usama Tariq', 'usamatariq116@gmail.com', 'student', 'Online Academy', '2024-11-12 05:17:20', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:17:20', '2024-11-12 05:17:20'),
(59, 'Sania Farooq', 'saniafarooq117@gmail.com', 'student', 'Korangi', '2024-11-12 05:17:20', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:17:20', '2024-11-12 05:17:20'),
(60, 'Hassan Rafiq', 'hassanrafiq118@gmail.com', 'student', 'Munawar', '2024-11-12 05:17:20', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:17:20', '2024-11-12 05:17:20'),
(61, 'Nimra Yasir', 'nimrayasir119@gmail.com', 'student', 'Islamabad', '2024-11-12 05:17:20', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:17:20', '2024-11-12 05:17:20'),
(62, 'Imran Saeed', 'imransaeed120@gmail.com', 'student', 'Online Academy', '2024-11-12 05:17:20', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:17:20', '2024-11-12 05:17:20'),
(63, 'Asad Mehmood', 'asadmehmood121@gmail.com', 'student', 'Korangi', '2024-11-12 05:17:44', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:17:44', '2024-11-12 05:17:44'),
(64, 'Fariha Nadeem', 'farihanadeem122@gmail.com', 'student', 'Munawar', '2024-11-12 05:17:44', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:17:44', '2024-11-12 05:17:44'),
(65, 'Zeeshan Javed', 'zeeshanjaved123@gmail.com', 'student', 'Islamabad', '2024-11-12 05:17:44', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:17:44', '2024-11-12 05:17:44'),
(66, 'Aysha Aslam', 'ayshaaslam124@gmail.com', 'student', 'Online Academy', '2024-11-12 05:17:44', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:17:44', '2024-11-12 05:17:44'),
(67, 'Ahsan Khan', 'ahsankhan125@gmail.com', 'student', 'Korangi', '2024-11-12 05:17:44', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:17:44', '2024-11-12 05:17:44'),
(68, 'Iram Qadir', 'iramqadir126@gmail.com', 'student', 'Munawar', '2024-11-12 05:17:44', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:17:44', '2024-11-12 05:17:44'),
(69, 'Fahad Siddiqui', 'fahadsiddiqui127@gmail.com', 'student', 'Islamabad', '2024-11-12 05:17:44', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:17:44', '2024-11-12 05:17:44'),
(70, 'Anam Shaikh', 'anamshaikh128@gmail.com', 'student', 'Online Academy', '2024-11-12 05:17:44', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:17:44', '2024-11-12 05:17:44'),
(71, 'Saad Iqbal', 'saadiqbal129@gmail.com', 'student', 'Korangi', '2024-11-12 05:17:44', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:17:44', '2024-11-12 05:17:44'),
(72, 'Madiha Zahid', 'madhiazahid130@gmail.com', 'student', 'Munawar', '2024-11-12 05:17:44', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:17:44', '2024-11-12 05:17:44'),
(73, 'Raza Ahmed', 'razaahmed131@gmail.com', 'student', 'Islamabad', '2024-11-12 05:18:15', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:18:15', '2024-11-12 05:18:15'),
(74, 'Saba Tariq', 'sabatariq132@gmail.com', 'student', 'Online Academy', '2024-11-12 05:18:15', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:18:15', '2024-11-12 05:18:15'),
(75, 'Zain Rauf', 'zainrauf133@gmail.com', 'student', 'Korangi', '2024-11-12 05:18:15', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:18:15', '2024-11-12 05:18:15'),
(76, 'Areej Qureshi', 'areejqureshi134@gmail.com', 'student', 'Munawar', '2024-11-12 05:18:15', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:18:15', '2024-11-12 05:18:15'),
(77, 'Shahbaz Ali', 'shahbazali135@gmail.com', 'student', 'Islamabad', '2024-11-12 05:18:15', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:18:15', '2024-11-12 05:18:15'),
(78, 'Zara Shahid', 'zarashahid136@gmail.com', 'student', 'Online Academy', '2024-11-12 05:18:15', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:18:15', '2024-11-12 05:18:15'),
(79, 'Bilal Noor', 'bilalnoor137@gmail.com', 'student', 'Korangi', '2024-11-12 05:18:15', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:18:15', '2024-11-12 05:18:15'),
(80, 'Fatima Raza', 'fatimaraza138@gmail.com', 'student', 'Munawar', '2024-11-12 05:18:15', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:18:15', '2024-11-12 05:18:15'),
(81, 'Noman Saeed', 'nomansaeed139@gmail.com', 'student', 'Islamabad', '2024-11-12 05:18:15', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:18:15', '2024-11-12 05:18:15'),
(82, 'Kiran Bashir', 'kiranbashir140@gmail.com', 'student', 'Online Academy', '2024-11-12 05:18:15', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:18:15', '2024-11-12 05:18:15'),
(83, 'Nida Hassan', 'nidahassan141@gmail.com', 'student', 'Korangi', '2024-11-12 05:18:42', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:18:42', '2024-11-12 05:18:42'),
(84, 'Imran Qadir', 'imranqadir142@gmail.com', 'student', 'Munawar', '2024-11-12 05:18:42', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:18:42', '2024-11-12 05:18:42'),
(85, 'Rafia Jamil', 'rafiajamil143@gmail.com', 'student', 'Islamabad', '2024-11-12 05:18:42', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:18:42', '2024-11-12 05:18:42'),
(86, 'Ammara Khan', 'ammarakhan144@gmail.com', 'student', 'Online Academy', '2024-11-12 05:18:42', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:18:42', '2024-11-12 05:18:42'),
(87, 'Sameer Abbas', 'sameerabbas145@gmail.com', 'student', 'Korangi', '2024-11-12 05:18:42', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:18:42', '2024-11-12 05:18:42'),
(88, 'Aisha Rafiq', 'aisharafiq146@gmail.com', 'student', 'Munawar', '2024-11-12 05:18:42', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:18:42', '2024-11-12 05:18:42'),
(89, 'Haider Ali', 'haiderali147@gmail.com', 'student', 'Islamabad', '2024-11-12 05:18:42', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:18:42', '2024-11-12 05:18:42'),
(90, 'Mehwish Farooq', 'mehwishfarooq148@gmail.com', 'student', 'Online Academy', '2024-11-12 05:18:42', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:18:42', '2024-11-12 05:18:42'),
(91, 'Umar Raza', 'umarraza149@gmail.com', 'student', 'Korangi', '2024-11-12 05:18:42', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:18:42', '2024-11-12 05:18:42'),
(92, 'Sadia Malik', 'sadiamalik150@gmail.com', 'student', 'Munawar', '2024-11-12 05:18:42', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:18:42', '2024-11-12 05:18:42'),
(93, 'Irfan Ahmed', 'irfanahmed151@gmail.com', 'student', 'Islamabad', '2024-11-12 05:19:16', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:19:16', '2024-11-12 05:19:16'),
(94, 'Maryam Yousaf', 'maryamyousaf152@gmail.com', 'student', 'Online Academy', '2024-11-12 05:19:16', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:19:16', '2024-11-12 05:19:16'),
(95, 'Rizwan Shaikh', 'rizwanshaikh153@gmail.com', 'student', 'Korangi', '2024-11-12 05:19:16', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:19:16', '2024-11-12 05:19:16'),
(96, 'Naila Pervez', 'nailapervez154@gmail.com', 'student', 'Munawar', '2024-11-12 05:19:16', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:19:16', '2024-11-12 05:19:16'),
(97, 'Sarmad Hussain', 'sarmadhussain155@gmail.com', 'student', 'Islamabad', '2024-11-12 05:19:16', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:19:16', '2024-11-12 05:19:16'),
(98, 'Alina Javed', 'alinajaved156@gmail.com', 'student', 'Online Academy', '2024-11-12 05:19:16', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:19:16', '2024-11-12 05:19:16'),
(99, 'Waqar Anwar', 'waqaranwar157@gmail.com', 'student', 'Korangi', '2024-11-12 05:19:16', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:19:16', '2024-11-12 05:19:16'),
(100, 'Mahnoor Arif', 'mahnoorarif158@gmail.com', 'student', 'Munawar', '2024-11-12 05:19:16', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:19:16', '2024-11-12 05:19:16'),
(101, 'Talha Rafi', 'talharafi159@gmail.com', 'student', 'Islamabad', '2024-11-12 05:19:16', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:19:16', '2024-11-12 05:19:16'),
(102, 'Sumaira Iqbal', 'sumairaiqbal160@gmail.com', 'student', 'Online Academy', '2024-11-12 05:19:16', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:19:16', '2024-11-12 05:19:16'),
(103, 'Faisal Rashid', 'faisalrashid161@gmail.com', 'student', 'Korangi', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(104, 'Saira Bilal', 'sairabilal162@gmail.com', 'student', 'Munawar', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(105, 'Ahsan Javed', 'ahsanjaved163@gmail.com', 'student', 'Islamabad', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(106, 'Kainat Tariq', 'kainattariq164@gmail.com', 'student', 'Online Academy', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(107, 'Shamsa Nisar', 'shamsanisr165@gmail.com', 'student', 'Korangi', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(108, 'Osman Faiz', 'osmanfaiz166@gmail.com', 'student', 'Munawar', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(109, 'Neha Ahmed', 'nehaahmed167@gmail.com', 'student', 'Islamabad', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(110, 'Rizwana Siddiqui', 'rizwanasiddiqui168@gmail.com', 'student', 'Online Academy', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(111, 'Muneeb Raza', 'muneebraza169@gmail.com', 'student', 'Korangi', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(112, 'Maliha Shah', 'malihashah170@gmail.com', 'student', 'Munawar', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(113, 'Tariq Mehmood', 'tariqmehmood171@gmail.com', 'student', 'Islamabad', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(114, 'Nashit Anwar', 'nashitanwar172@gmail.com', 'student', 'Online Academy', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(115, 'Anwar Malik', 'anwarmalik173@gmail.com', 'student', 'Korangi', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(116, 'Asim Jamil', 'asimjamil174@gmail.com', 'student', 'Munawar', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(117, 'Nazia Abbas', 'naziaabbas175@gmail.com', 'student', 'Islamabad', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(118, 'Shiza Arif', 'shizaarif176@gmail.com', 'student', 'Online Academy', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(119, 'Sana Qureshi', 'sanaqureshi177@gmail.com', 'student', 'Korangi', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(120, 'Saif Ali', 'saifali178@gmail.com', 'student', 'Munawar', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(121, 'Lubna Khan', 'lubnakhan179@gmail.com', 'student', 'Islamabad', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(122, 'Aliya Baloch', 'aliyabaloch180@gmail.com', 'student', 'Online Academy', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(123, 'Rahat Aslam', 'rahataslam181@gmail.com', 'student', 'Korangi', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(124, 'Sufiyan Zaman', 'sufiyanzaman182@gmail.com', 'student', 'Munawar', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(125, 'Maryam Gul', 'maryamgul183@gmail.com', 'student', 'Islamabad', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(126, 'Anas Akhtar', 'anasakhtar184@gmail.com', 'student', 'Online Academy', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(127, 'Hira Farooq', 'hirafarooq185@gmail.com', 'student', 'Korangi', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(128, 'Taha Rehman', 'taharehman186@gmail.com', 'student', 'Munawar', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(129, 'Samar Shah', 'samarsah187@gmail.com', 'student', 'Islamabad', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(130, 'Mehreen Iqbal', 'mehreeniqbal188@gmail.com', 'student', 'Online Academy', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(131, 'Samiha Qasim', 'samihaqasim189@gmail.com', 'student', 'Korangi', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(132, 'Usman Khokhar', 'usmankhokhar190@gmail.com', 'student', 'Munawar', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(133, 'Fatima Naeem', 'fatimanaeem191@gmail.com', 'student', 'Islamabad', '2024-11-12 05:20:11', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:20:11', '2024-11-12 05:20:11'),
(134, 'Yasmin Azeem', 'yasminazeem192@gmail.com', 'student', 'Korangi', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(135, 'Shahbaz Ali', 'shahbazali193@gmail.com', 'student', 'Munawar', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(136, 'Mubashir Raza', 'mubashirraza194@gmail.com', 'student', 'Islamabad', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(137, 'Sakina Raza', 'sakinaraaza195@gmail.com', 'student', 'Online Academy', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(138, 'Hassan Mustafa', 'hassanmustafa196@gmail.com', 'student', 'Korangi', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(139, 'Nida Saleem', 'nidasaleem197@gmail.com', 'student', 'Munawar', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(140, 'Rohail Imran', 'rohailimran198@gmail.com', 'student', 'Islamabad', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(141, 'Sadia Khan', 'sadiakhan199@gmail.com', 'student', 'Online Academy', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(142, 'Samina Qureshi', 'saminaqureshi200@gmail.com', 'student', 'Korangi', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(143, 'Abdullah Javed', 'abdullahjaved201@gmail.com', 'student', 'Munawar', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(144, 'Mariam Bano', 'mariambano202@gmail.com', 'student', 'Islamabad', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(145, 'Afnan Ali', 'afnanali203@gmail.com', 'student', 'Online Academy', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(146, 'Kiran Aziz', 'kiranaziz204@gmail.com', 'student', 'Korangi', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(147, 'Bilal Sadiq', 'bilalsadiq205@gmail.com', 'student', 'Munawar', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(148, 'Uzma Ashraf', 'uzmaashraf206@gmail.com', 'student', 'Islamabad', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(149, 'Muneeb Ali', 'muneebali207@gmail.com', 'student', 'Online Academy', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(150, 'Mariam Gulzar', 'mariamgulzar208@gmail.com', 'student', 'Korangi', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(151, 'Tariq Mehmood', 'tariqmehmood209@gmail.com', 'student', 'Munawar', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(152, 'Sarah Ali', 'sarahali210@gmail.com', 'student', 'Islamabad', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(153, 'Aamir Khan', 'aamirkhan211@gmail.com', 'student', 'Online Academy', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(154, 'Shahzaib Usman', 'shahzaibusman212@gmail.com', 'student', 'Korangi', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(155, 'Fatima Nawaz', 'fatimanawaz213@gmail.com', 'student', 'Munawar', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(156, 'Raheel Ahmed', 'raheelahmed214@gmail.com', 'student', 'Islamabad', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(157, 'Alyana Bukhari', 'alyanabukhari215@gmail.com', 'student', 'Online Academy', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(158, 'Zainab Rafique', 'zainabrafique216@gmail.com', 'student', 'Korangi', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(159, 'Shahrukh Malik', 'shahrukhmalik217@gmail.com', 'student', 'Munawar', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(160, 'Kashan Ali', 'kashanali218@gmail.com', 'student', 'Islamabad', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(161, 'Madiha Zafar', 'madihazafar219@gmail.com', 'student', 'Online Academy', '2024-11-12 05:21:06', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:21:06', '2024-11-12 05:21:06'),
(162, 'Ali Hassan', 'alihassan220@gmail.com', 'teacher', 'Korangi', '2024-11-12 05:23:53', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:23:53', '2024-11-12 05:23:53'),
(163, 'Sara Ahmed', 'saraahmed221@gmail.com', 'teacher', 'Munawar', '2024-11-12 05:23:53', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:23:53', '2024-11-12 05:23:53'),
(164, 'Tariq Mehmood', 'tariqmehmood222@gmail.com', 'teacher', 'Islamabad', '2024-11-12 05:23:53', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:23:53', '2024-11-12 05:23:53'),
(165, 'Amna Shah', 'amnashah223@gmail.com', 'teacher', 'Online Academy', '2024-11-12 05:23:53', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:23:53', '2024-11-12 05:23:53'),
(166, 'Omar Farooq', 'omarfarooq224@gmail.com', 'teacher', 'Korangi', '2024-11-12 05:23:53', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:23:53', '2024-11-12 05:23:53'),
(167, 'Khadija Tariq', 'khadijatariq225@gmail.com', 'teacher', 'Munawar', '2024-11-12 05:23:53', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:23:53', '2024-11-12 05:23:53'),
(168, 'Bilal Anwar', 'bilalanwar226@gmail.com', 'teacher', 'Islamabad', '2024-11-12 05:23:53', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:23:53', '2024-11-12 05:23:53'),
(169, 'Zainab Ali', 'zainabali227@gmail.com', 'teacher', 'Online Academy', '2024-11-12 05:23:53', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:23:53', '2024-11-12 05:23:53'),
(170, 'Shahbaz Rehman', 'shahbazrehman228@gmail.com', 'teacher', 'Korangi', '2024-11-12 05:23:53', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:23:53', '2024-11-12 05:23:53'),
(171, 'Farah Saeed', 'farahsaeed229@gmail.com', 'teacher', 'Munawar', '2024-11-12 05:23:53', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:23:53', '2024-11-12 05:23:53'),
(172, 'Raza Ali', 'razaali230@gmail.com', 'teacher', 'Islamabad', '2024-11-12 05:23:53', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:23:53', '2024-11-12 05:23:53'),
(173, 'Sana Javed', 'sanjaved231@gmail.com', 'teacher', 'Online Academy', '2024-11-12 05:23:53', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:23:53', '2024-11-12 05:23:53'),
(174, 'Kasim Shah', 'kasimshah232@gmail.com', 'teacher', 'Korangi', '2024-11-12 05:23:53', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:23:53', '2024-11-12 05:23:53'),
(175, 'Nida Khalid', 'nidakhalid233@gmail.com', 'teacher', 'Munawar', '2024-11-12 05:23:53', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:23:53', '2024-11-12 05:23:53'),
(176, 'Shoaib Riaz', 'shoaibriaz234@gmail.com', 'teacher', 'Islamabad', '2024-11-12 05:23:53', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:23:53', '2024-11-12 05:23:53'),
(177, 'Madiha Saleem', 'madihasaleem235@gmail.com', 'teacher', 'Online Academy', '2024-11-12 05:23:53', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:23:53', '2024-11-12 05:23:53'),
(178, 'Rizwan Akhtar', 'rizwanakhtar236@gmail.com', 'teacher', 'Korangi', '2024-11-12 05:23:53', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:23:53', '2024-11-12 05:23:53'),
(179, 'Noreen Sultana', 'noreensultana237@gmail.com', 'teacher', 'Munawar', '2024-11-12 05:23:53', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:23:53', '2024-11-12 05:23:53'),
(180, 'Ahmed Nawaz', 'ahmednawaz238@gmail.com', 'teacher', 'Islamabad', '2024-11-12 05:23:53', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:23:53', '2024-11-12 05:23:53'),
(181, 'Maryam Jamil', 'maryamjamil239@gmail.com', 'teacher', 'Online Academy', '2024-11-12 05:23:53', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:23:53', '2024-11-12 05:23:53'),
(182, 'Fahad Javed', 'fahadjaved240@gmail.com', 'teacher', 'Korangi', '2024-11-12 05:23:53', 'hashed_password', NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-12 05:23:53', '2024-11-12 05:23:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admission_freezes`
--
ALTER TABLE `admission_freezes`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_vouchers`
--
ALTER TABLE `fee_vouchers`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `staff_information`
--
ALTER TABLE `staff_information`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_information_email_address_unique` (`email_address`),
  ADD UNIQUE KEY `staff_information_employee_id_unique` (`employee_id`);

--
-- Indexes for table `student_attendence`
--
ALTER TABLE `student_attendence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_attendence_student_id_foreign` (`student_id`);

--
-- Indexes for table `student_information`
--
ALTER TABLE `student_information`
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
-- AUTO_INCREMENT for table `admission_freezes`
--
ALTER TABLE `admission_freezes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_vouchers`
--
ALTER TABLE `fee_vouchers`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_information`
--
ALTER TABLE `staff_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_attendence`
--
ALTER TABLE `student_attendence`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_information`
--
ALTER TABLE `student_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_attendence`
--
ALTER TABLE `student_attendence`
  ADD CONSTRAINT `student_attendence_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
