-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2024 at 04:46 PM
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
-- Database: `dbclinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `aesthetician_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_first_name` varchar(100) NOT NULL,
  `admin_last_name` varchar(100) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_date_of_birth` date NOT NULL,
  `admin_phone_no` varchar(30) NOT NULL,
  `admin_gender` varchar(30) NOT NULL,
  `admin_marital_status` varchar(30) NOT NULL,
  `admin_added_on` datetime NOT NULL,
  `admin_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_first_name`, `admin_last_name`, `admin_email`, `admin_password`, `admin_date_of_birth`, `admin_phone_no`, `admin_gender`, `admin_marital_status`, `admin_added_on`, `admin_status`) VALUES
(1, 'Juan', 'delaCruz', 'juan@yahoo.com', '', '2000-01-01', '123-456789', 'Male', 'Single', '2024-03-25 04:39:33', 'Active'),
(2, 'Antonio', 'Luna', 'luna@yahoo.com', '', '2000-01-02', '123-456789', 'Male', 'Single', '2024-03-25 04:39:55', 'Active'),
(3, 'Melchora', 'Aquino', 'mel@yahoo.com', '', '2000-03-03', '123-456789', 'Female', 'Single', '2024-03-25 04:44:36', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `aesthetician`
--

CREATE TABLE `aesthetician` (
  `aesthetician_id` int(11) NOT NULL,
  `aesthetician_first_name` varchar(100) NOT NULL,
  `aesthetician_last_name` varchar(100) NOT NULL,
  `aesthetician_email` varchar(200) NOT NULL,
  `aesthetician_password` varchar(100) NOT NULL,
  `aesthetician_date_of_birth` date NOT NULL,
  `aesthetician_phone_no` varchar(30) NOT NULL,
  `aesthetician_gender` varchar(30) NOT NULL,
  `aesthetician_marital_status` varchar(30) NOT NULL,
  `aesthetician_specialization` varchar(100) NOT NULL,
  `aesthetician_added_on` datetime NOT NULL,
  `aesthetician_status` varchar(30) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aesthetician`
--

INSERT INTO `aesthetician` (`aesthetician_id`, `aesthetician_first_name`, `aesthetician_last_name`, `aesthetician_email`, `aesthetician_password`, `aesthetician_date_of_birth`, `aesthetician_phone_no`, `aesthetician_gender`, `aesthetician_marital_status`, `aesthetician_specialization`, `aesthetician_added_on`, `aesthetician_status`, `admin_id`) VALUES
(5, 'Leanne ', 'Graham', 'sincere@april.biz', '', '2000-01-01', '123-456789', 'Female', 'Single', 'Dermatologic', '2024-03-25 04:47:13', 'Active', 1),
(6, 'Clementine ', 'Bauch', 'clementine@yesenia.net', '', '2000-01-01', '123-456789', 'Female', 'Single', 'Facial', '2024-03-25 04:49:28', 'Active', 2),
(11, 'Ervin ', 'Howell', 'ervin@melissa.tv', '', '2000-01-01', '123-456789', 'Male', 'Married', 'Laser', '2024-03-25 04:53:16', 'Active', 3),
(13, 'Kurtis ', 'Weissnat', 'kurtis@billy.biz', '', '2000-01-01', '123-456789', 'Male', 'Single', 'Dermatologic', '2024-03-25 04:56:23', 'Active', 3);

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(11) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` time NOT NULL,
  `appointment_status` varchar(20) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
('sample@yhaoo.com|127.0.0.1', 'i:2;', 1712534561),
('sample@yhaoo.com|127.0.0.1:timer', 'i:1712534561;', 1712534561),
('sample1@yahoo.com|127.0.0.1', 'i:3;', 1711813123),
('sample1@yahoo.com|127.0.0.1:timer', 'i:1711813123;', 1711813123);

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
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `client_first_name` varchar(100) NOT NULL,
  `client_last_name` varchar(100) NOT NULL,
  `client_email` varchar(200) NOT NULL,
  `client_password` varchar(100) NOT NULL,
  `client_date_of_birth` date NOT NULL,
  `client_phone_no` varchar(30) NOT NULL,
  `client_gender` varchar(30) NOT NULL,
  `client_marital_status` varchar(30) NOT NULL,
  `client_insurance_card` varchar(30) NOT NULL,
  `client_added_on` datetime NOT NULL,
  `client_status` varchar(30) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `consultation`
--

CREATE TABLE `consultation` (
  `consultation_id` int(11) NOT NULL,
  `consultation_client_name` varchar(255) NOT NULL,
  `consultation_client_email` varchar(200) NOT NULL,
  `consultation_client_phone_no` varchar(30) NOT NULL,
  `consultation_service_name` varchar(255) NOT NULL,
  `consultation_date` date NOT NULL,
  `consultation_time` time NOT NULL,
  `consultation_medical_info` varchar(255) NOT NULL,
  `consultation_comments` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consultation`
--

INSERT INTO `consultation` (`consultation_id`, `consultation_client_name`, `consultation_client_email`, `consultation_client_phone_no`, `consultation_service_name`, `consultation_date`, `consultation_time`, `consultation_medical_info`, `consultation_comments`, `status`, `created_at`, `updated_at`, `service_id`) VALUES
(1, 'Juan delaCruz', 'juan@yahoo.com', '123-456789', 'Carbon Peel Facial', '2000-01-01', '09:00:00', 'None', 'None', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(2, 'Antonio Luna', 'luna@yahoo.com', '123-456789', 'Galvanic Facial', '2000-01-02', '09:00:00', 'None', 'None', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(10, 'sample', 'sample@yahoo.com', '123456789', 'Carbon Peel Facial', '2024-04-15', '09:10:00', '1', '1', 1, '2024-04-10 00:10:46', '2024-04-10 00:10:46', NULL),
(11, 'sample2', 'sample2@yahoo.com', '123', 'Galvanic Facial', '2024-04-10', '09:45:00', '1', '1', 1, '2024-04-10 04:45:20', '2024-04-10 04:45:20', NULL),
(12, 'sample3', 'sample3@yahoo.com', '123', 'ntensive Acne Facial', '2024-04-10', '10:12:00', '1', '1', 1, '2024-04-10 05:10:19', '2024-04-10 05:10:19', NULL),
(13, 'sample4', 'sample4@yahoo.com', '123', 'Signature Hydra Facial', '2024-04-16', '10:35:00', '1', '1', 1, '2024-04-10 05:35:24', '2024-04-10 05:35:24', NULL);

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
(4, '2024_04_03_054950_add_soft_delete_clolumns_to_services', 2),
(5, '2024_04_03_072511_add_deleted_at_field_to_services', 3),
(6, '2024_04_03_071012_stub', 4),
(7, '2024_04_03_075541_add_soft_delete_columns_to_services', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('mdcagc@gmail.com', '$2y$12$2LKAMnsVM3YNLyXAHtgGjOSOKHNXDJyw9bCbJ87Y0SrDDf4MivbuO', '2024-04-02 21:18:20'),
('mydcagc@gmail.com', '$2y$12$8awuxVxdkm9e8WAsQKuJiOm9idn5a1BVErnlhKfFwbrskddHjYLAm', '2024-04-02 21:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `appointment_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_total` decimal(10,2) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_name` varchar(255) NOT NULL,
  `service_description` varchar(255) NOT NULL,
  `service_price` decimal(10,2) NOT NULL,
  `service_type` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `service_id` int(11) NOT NULL,
  `status` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_name`, `service_description`, `service_price`, `service_type`, `created_at`, `updated_at`, `service_id`, `status`) VALUES
('Carbon Peel Facials', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 4000.00, 'Facial', '0000-00-00 00:00:00', '2024-04-10 04:52:50', 5, 1),
('Galvanic Facial', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1000.00, 'Facial', '0000-00-00 00:00:00', '2024-04-07 23:01:55', 6, 1),
('Intensive Acne Facial', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 3000.00, 'Facial', '0000-00-00 00:00:00', '2024-04-07 21:41:26', 7, 1),
('Radiance Drip	', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 2000.00, 'IV Drip', '0000-00-00 00:00:00', '2024-04-07 21:50:38', 9, 1),
('Signature Hydra Facial	', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 2000.00, 'Facial', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 10, 1),
('Warts Removal', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 4000.00, 'Dermatologic', '0000-00-00 00:00:00', '2024-04-01 09:57:06', 11, 1),
('Skin Resurfacing Regular', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 4000.00, 'Laser', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 12, 1),
('Stem Cells Facial', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 4000.00, 'Facial', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 13, 1),
('Vitality Drip', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 3000.00, 'IV Drip', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 14, 1),
('Skin Resurfacing Premium', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 5000.00, 'Laser', '2024-04-01 11:13:00', '2024-04-01 11:13:00', 15, 1),
('Keloid Injection', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1000.00, 'Dermatologic', '2024-04-01 11:49:26', '2024-04-01 11:49:26', 16, 1),
('qqqqq', 'qqqqq', 123.00, 'qqqqq', '2024-04-10 04:51:11', '2024-04-10 04:51:11', 27, 1);

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
('8gTcrLmQeZTAQ9ekMuHRGvIGEciOxkNSUE533OfR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2ZlVmYwZEg5YmNOYVc4OVZHNjVEd0hXMnFlQnJLM0pvamZ3Z3ZmTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9jb25zdWx0YXRpb24iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712727324),
('AL5drlnRJOxMyjqbibjeYqal6GrNf5DN6rcK4wzU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidnBMNE1WQldmaDRSQU5rSXh0UHFIQURrQWlmZTNjbWM5cW1lVnZGWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9zZXJ2aWNlL3NlYXJjaD9xdWVyeT1mYWNpYWwiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712722585),
('CO0YrxUzDxRLr3klC1UA0slbj5IKoLcd5LS0MynJ', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1 Edg/123.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUdKMHRuMmtlUHR4Z3lrdTUwUWpUZDRJVk5vb2wzek9vVDQzaWhIbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9jcnVkU2VydmljZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712721520),
('dnb81eV773gbwhP5yhoWFX2pKUegnrsDNw5ZkHQm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 Edg/123.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3lPTmFMcUJteDhhQkdzQWRtWlVEd0dHMnVMVWl1SG9oY3FBQk1ndSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9jb25zdWx0YXRpb24iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712725835),
('E4PLGGlO8wZDEqPOvLvTszO8gtprGuCSpVNAQSd6', NULL, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmVPT0RDa1IxQ2V0eHdYeERMSlVid0JjTHp5aEpCUW1DMUFuM2ZQaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9zZXJ2aWNlL3NlYXJjaD9xdWVyeT1mYWNpYWwiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1712723778),
('pUZPu4BtkcmTVgZuXxR4yfwULzQODSuw9fgXnoP2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEdUcnM3VTJaelZUZ3BaMU1LUkZZWG1sU0tCdWdlMXVIQ0xhUE05NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zZXJ2aWNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1712725054);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sample', 'sample@yahoo.com', NULL, '$2y$12$Dja0pz2ZTnaW7.apVdW44uaHXShCmJMaf4DyPyaowPkFUzLpcn0gi', NULL, '2024-03-24 17:46:44', '2024-03-24 17:46:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `address_ibfk_1` (`admin_id`),
  ADD KEY `address_ibfk_2` (`client_id`),
  ADD KEY `address_ibfk_3` (`aesthetician_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_email` (`admin_email`);

--
-- Indexes for table `aesthetician`
--
ALTER TABLE `aesthetician`
  ADD PRIMARY KEY (`aesthetician_id`),
  ADD UNIQUE KEY `aesthetician_email` (`aesthetician_email`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `service_id` (`service_id`);

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
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`),
  ADD UNIQUE KEY `client_email` (`client_email`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `consultation`
--
ALTER TABLE `consultation`
  ADD PRIMARY KEY (`consultation_id`),
  ADD KEY `service_id` (`service_id`);

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
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `aesthetician`
--
ALTER TABLE `aesthetician`
  MODIFY `aesthetician_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `consultation`
--
ALTER TABLE `consultation`
  MODIFY `consultation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`),
  ADD CONSTRAINT `address_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `address_ibfk_3` FOREIGN KEY (`aesthetician_id`) REFERENCES `aesthetician` (`aesthetician_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `aesthetician`
--
ALTER TABLE `aesthetician`
  ADD CONSTRAINT `aesthetician_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`);

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

--
-- Constraints for table `consultation`
--
ALTER TABLE `consultation`
  ADD CONSTRAINT `consultation_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`appointment_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
