-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2025 at 01:05 PM
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
-- Database: `shikshavault`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_fields`
--

CREATE TABLE `academic_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `academic_fields`
--

INSERT INTO `academic_fields` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Engineering & Technology', 'engineering-technology', '2025-11-30 09:10:37', '2025-11-30 09:10:37'),
(2, 'Medical & Health Sciences', 'medical-health-sciences', '2025-11-30 09:10:37', '2025-11-30 09:10:37'),
(3, 'Computer Applications', 'computer-applications', '2025-11-30 09:10:37', '2025-11-30 09:10:37'),
(4, 'Commerce & Business', 'commerce-business', '2025-11-30 09:10:37', '2025-11-30 09:10:37'),
(5, 'Arts & Humanities', 'arts-humanities', '2025-11-30 09:10:37', '2025-11-30 09:10:37'),
(6, 'Science', 'science', '2025-11-30 09:10:37', '2025-11-30 09:10:37'),
(7, 'Management Studies', 'management-studies', '2025-11-30 09:10:37', '2025-11-30 09:10:37'),
(8, 'Law', 'law', '2025-11-30 09:10:37', '2025-11-30 09:10:37'),
(9, 'Architecture', 'architecture', '2025-11-30 09:10:37', '2025-11-30 09:10:37'),
(10, 'Education', 'education', '2025-11-30 09:10:37', '2025-11-30 09:10:37'),
(11, 'Agriculture', 'agriculture', '2025-11-30 09:10:37', '2025-11-30 09:10:37'),
(12, 'Pharmacy', 'pharmacy', '2025-11-30 09:10:37', '2025-11-30 09:10:37'),
(13, 'Design & Fashion', 'design-fashion', '2025-11-30 09:10:37', '2025-11-30 09:10:37'),
(14, 'Mass Communication', 'mass-communication', '2025-11-30 09:10:37', '2025-11-30 09:10:37'),
(15, 'Hotel Management', 'hotel-management', '2025-11-30 09:10:37', '2025-11-30 09:10:37'),
(16, 'Vocational Studies', 'vocational-studies', '2025-11-30 09:10:37', '2025-11-30 09:10:37'),
(17, 'Dental Science', 'dental-science', '2025-11-30 09:10:37', '2025-11-30 09:10:37'),
(18, 'Nursing', 'nursing', '2025-11-30 09:10:37', '2025-11-30 09:10:37'),
(19, 'Fine Arts', 'fine-arts', '2025-11-30 09:10:37', '2025-11-30 09:10:37'),
(20, 'Physiotherapy', 'physiotherapy', '2025-11-30 09:10:37', '2025-11-30 09:10:37');

-- --------------------------------------------------------

--
-- Table structure for table `academic_levels`
--

CREATE TABLE `academic_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `level_order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `academic_levels`
--

INSERT INTO `academic_levels` (`id`, `name`, `level_order`, `created_at`, `updated_at`) VALUES
(1, 'Semester 1', 1, '2025-11-30 09:10:56', '2025-11-30 09:10:56'),
(2, 'Semester 2', 2, '2025-11-30 09:10:56', '2025-11-30 09:10:56'),
(3, 'Semester 3', 3, '2025-11-30 09:10:56', '2025-11-30 09:10:56'),
(4, 'Semester 4', 4, '2025-11-30 09:10:56', '2025-11-30 09:10:56'),
(5, 'Semester 5', 5, '2025-11-30 09:10:56', '2025-11-30 09:10:56'),
(6, 'Semester 6', 6, '2025-11-30 09:10:56', '2025-11-30 09:10:56'),
(7, 'Semester 7', 7, '2025-11-30 09:10:56', '2025-11-30 09:10:56'),
(8, 'Semester 8', 8, '2025-11-30 09:10:56', '2025-11-30 09:10:56'),
(9, 'Year 1', 1, '2025-11-30 09:10:56', '2025-11-30 09:10:56'),
(10, 'Year 2', 2, '2025-11-30 09:10:56', '2025-11-30 09:10:56'),
(11, 'Year 3', 3, '2025-11-30 09:10:56', '2025-11-30 09:10:56'),
(12, 'Year 4', 4, '2025-11-30 09:10:56', '2025-11-30 09:10:56'),
(13, 'Year 5', 5, '2025-11-30 09:10:56', '2025-11-30 09:10:56'),
(14, 'Diploma Year 1', 1, '2025-11-30 09:10:56', '2025-11-30 09:10:56'),
(15, 'Diploma Year 2', 2, '2025-11-30 09:10:56', '2025-11-30 09:10:56'),
(16, 'Diploma Year 3', 3, '2025-11-30 09:10:56', '2025-11-30 09:10:56'),
(17, 'Foundation Course', 0, '2025-11-30 09:10:56', '2025-11-30 09:10:56'),
(18, 'Internship', 99, '2025-11-30 09:10:56', '2025-11-30 09:10:56'),
(19, 'Entrance Exam Prep', 0, '2025-11-30 09:10:56', '2025-11-30 09:10:56'),
(20, 'Research / PhD', 100, '2025-11-30 09:10:56', '2025-11-30 09:10:56');

-- --------------------------------------------------------

--
-- Table structure for table `accessed_files`
--

CREATE TABLE `accessed_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `file_id` bigint(20) UNSIGNED NOT NULL,
  `first_accessed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accessed_files`
--

INSERT INTO `accessed_files` (`id`, `user_id`, `file_id`, `first_accessed_at`) VALUES
(1, 1, 11, '2025-12-05 09:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `file_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
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
('laravel-cache-77de68daecd823babbb58edb1c8e14d7106e83bb', 'i:2;', 1764249546),
('laravel-cache-77de68daecd823babbb58edb1c8e14d7106e83bb:timer', 'i:1764249546;', 1764249546),
('laravel-cache-boost.roster.scan', 'a:2:{s:6:\"roster\";O:21:\"Laravel\\Roster\\Roster\":3:{s:13:\"\0*\0approaches\";O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:11:\"\0*\0packages\";O:32:\"Laravel\\Roster\\PackageCollection\":2:{s:8:\"\0*\0items\";a:8:{i:0;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^12.0\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:LARAVEL\";s:14:\"\0*\0packageName\";s:17:\"laravel/framework\";s:10:\"\0*\0version\";s:7:\"12.40.1\";s:6:\"\0*\0dev\";b:0;}i:1;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:6:\"v0.3.8\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:PROMPTS\";s:14:\"\0*\0packageName\";s:15:\"laravel/prompts\";s:10:\"\0*\0version\";s:5:\"0.3.8\";s:6:\"\0*\0dev\";b:0;}i:2;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:1:\"*\";s:10:\"\0*\0package\";E:38:\"Laravel\\Roster\\Enums\\Packages:LIVEWIRE\";s:14:\"\0*\0packageName\";s:17:\"livewire/livewire\";s:10:\"\0*\0version\";s:5:\"3.7.0\";s:6:\"\0*\0dev\";b:0;}i:3;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:6:\"v0.3.4\";s:10:\"\0*\0package\";E:33:\"Laravel\\Roster\\Enums\\Packages:MCP\";s:14:\"\0*\0packageName\";s:11:\"laravel/mcp\";s:10:\"\0*\0version\";s:5:\"0.3.4\";s:6:\"\0*\0dev\";b:1;}i:4;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^1.24\";s:10:\"\0*\0package\";E:34:\"Laravel\\Roster\\Enums\\Packages:PINT\";s:14:\"\0*\0packageName\";s:12:\"laravel/pint\";s:10:\"\0*\0version\";s:6:\"1.26.0\";s:6:\"\0*\0dev\";b:1;}i:5;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^1.41\";s:10:\"\0*\0package\";E:34:\"Laravel\\Roster\\Enums\\Packages:SAIL\";s:14:\"\0*\0packageName\";s:12:\"laravel/sail\";s:10:\"\0*\0version\";s:6:\"1.48.1\";s:6:\"\0*\0dev\";b:1;}i:6;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:4:\"^3.8\";s:10:\"\0*\0package\";E:34:\"Laravel\\Roster\\Enums\\Packages:PEST\";s:14:\"\0*\0packageName\";s:12:\"pestphp/pest\";s:10:\"\0*\0version\";s:5:\"3.8.4\";s:6:\"\0*\0dev\";b:1;}i:7;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:7:\"11.5.33\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:PHPUNIT\";s:14:\"\0*\0packageName\";s:15:\"phpunit/phpunit\";s:10:\"\0*\0version\";s:7:\"11.5.33\";s:6:\"\0*\0dev\";b:1;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:21:\"\0*\0nodePackageManager\";E:43:\"Laravel\\Roster\\Enums\\NodePackageManager:NPM\";}s:9:\"timestamp\";i:1764301401;}', 1764387801),
('laravel-cache-da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:1;', 1764249503),
('laravel-cache-da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1764249503;', 1764249503),
('laravel-cache-test!@mail.com|127.0.0.1', 'i:1;', 1764243985),
('laravel-cache-test!@mail.com|127.0.0.1:timer', 'i:1764243985;', 1764243985),
('shikshavault-cache-356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1764774659),
('shikshavault-cache-356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1764774659;', 1764774659),
('shikshavault-cache-boost.roster.scan', 'a:2:{s:6:\"roster\";O:21:\"Laravel\\Roster\\Roster\":3:{s:13:\"\0*\0approaches\";O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:11:\"\0*\0packages\";O:32:\"Laravel\\Roster\\PackageCollection\":2:{s:8:\"\0*\0items\";a:8:{i:0;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^12.0\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:LARAVEL\";s:14:\"\0*\0packageName\";s:17:\"laravel/framework\";s:10:\"\0*\0version\";s:7:\"12.40.1\";s:6:\"\0*\0dev\";b:0;}i:1;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:6:\"v0.3.8\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:PROMPTS\";s:14:\"\0*\0packageName\";s:15:\"laravel/prompts\";s:10:\"\0*\0version\";s:5:\"0.3.8\";s:6:\"\0*\0dev\";b:0;}i:2;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:4:\"^3.7\";s:10:\"\0*\0package\";E:38:\"Laravel\\Roster\\Enums\\Packages:LIVEWIRE\";s:14:\"\0*\0packageName\";s:17:\"livewire/livewire\";s:10:\"\0*\0version\";s:5:\"3.7.0\";s:6:\"\0*\0dev\";b:0;}i:3;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:6:\"v0.3.4\";s:10:\"\0*\0package\";E:33:\"Laravel\\Roster\\Enums\\Packages:MCP\";s:14:\"\0*\0packageName\";s:11:\"laravel/mcp\";s:10:\"\0*\0version\";s:5:\"0.3.4\";s:6:\"\0*\0dev\";b:1;}i:4;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^1.24\";s:10:\"\0*\0package\";E:34:\"Laravel\\Roster\\Enums\\Packages:PINT\";s:14:\"\0*\0packageName\";s:12:\"laravel/pint\";s:10:\"\0*\0version\";s:6:\"1.26.0\";s:6:\"\0*\0dev\";b:1;}i:5;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^1.41\";s:10:\"\0*\0package\";E:34:\"Laravel\\Roster\\Enums\\Packages:SAIL\";s:14:\"\0*\0packageName\";s:12:\"laravel/sail\";s:10:\"\0*\0version\";s:6:\"1.48.1\";s:6:\"\0*\0dev\";b:1;}i:6;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:4:\"^3.8\";s:10:\"\0*\0package\";E:34:\"Laravel\\Roster\\Enums\\Packages:PEST\";s:14:\"\0*\0packageName\";s:12:\"pestphp/pest\";s:10:\"\0*\0version\";s:5:\"3.8.4\";s:6:\"\0*\0dev\";b:1;}i:7;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:7:\"11.5.33\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:PHPUNIT\";s:14:\"\0*\0packageName\";s:15:\"phpunit/phpunit\";s:10:\"\0*\0version\";s:7:\"11.5.33\";s:6:\"\0*\0dev\";b:1;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:21:\"\0*\0nodePackageManager\";E:43:\"Laravel\\Roster\\Enums\\NodePackageManager:NPM\";}s:9:\"timestamp\";i:1764773721;}', 1764860121),
('shikshavault-cache-da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:1;', 1764945366),
('shikshavault-cache-da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1764945366;', 1764945366),
('shikshavault-cache-mail@mail.com|127.0.0.1', 'i:1;', 1764302075),
('shikshavault-cache-mail@mail.com|127.0.0.1:timer', 'i:1764302074;', 1764302074);

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
-- Table structure for table `collection_items`
--

CREATE TABLE `collection_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_collection_id` bigint(20) UNSIGNED NOT NULL,
  `digital_file_id` bigint(20) UNSIGNED NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `digital_files`
--

CREATE TABLE `digital_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `file_path` varchar(255) NOT NULL,
  `preview_path` varchar(255) DEFAULT NULL,
  `academic_field_id` bigint(20) UNSIGNED DEFAULT NULL,
  `program_stream_id` bigint(20) UNSIGNED DEFAULT NULL,
  `program_stream_level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `program_stream_level_subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `academic_level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `resource_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `institution_id` bigint(20) UNSIGNED DEFAULT NULL,
  `file_type` varchar(20) DEFAULT NULL,
  `file_size` bigint(20) UNSIGNED DEFAULT NULL,
  `page_count` int(10) UNSIGNED DEFAULT NULL,
  `content_hash` varchar(64) DEFAULT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tags`)),
  `keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`keywords`)),
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('active','pending','rejected','archived') NOT NULL DEFAULT 'active',
  `visibility` enum('public','private','restricted') NOT NULL DEFAULT 'public',
  `download_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `digital_files`
--

INSERT INTO `digital_files` (`id`, `slug`, `user_id`, `title`, `description`, `file_path`, `preview_path`, `academic_field_id`, `program_stream_id`, `program_stream_level_id`, `program_stream_level_subject_id`, `academic_level_id`, `subject_id`, `resource_type_id`, `institution_id`, `file_type`, `file_size`, `page_count`, `content_hash`, `tags`, `keywords`, `verified`, `status`, `visibility`, `download_count`, `average_rating`, `upload_date`, `last_updated`, `deleted_at`) VALUES
(1, 'test-note-mUkfEyZI', 1, 'Test Note', 'Test my dwdwjccccccccccccc', 'secure_docs/dbefcb17-655c-43b9-9a4a-7db3e964da34.pdf', NULL, 1, 1, 2, NULL, 2, 7, 14, 3093, 'pdf', 551778, NULL, '383089c0eb1709a31bcc9b554026a4ab', NULL, NULL, 1, 'active', 'public', 0, NULL, '2025-12-01 00:40:43', '2025-12-01 10:37:43', NULL),
(2, 'another-test-upload-WZDlo22z', 1, 'another test upload', 'this is a test upload of my file please verify it.', 'secure_docs/3bc98ede-0f6f-4902-9b84-b0d7f033a3e1.pdf', NULL, 3, 5, 8, NULL, 8, 1, 18, 3093, 'pdf', 24573, NULL, '92d3b7019bafdf238ad393425fabcb09', NULL, NULL, 0, 'active', 'public', 2, NULL, '2025-12-01 00:58:04', '2025-12-03 11:48:36', NULL),
(3, 'another-upload-jsut-for-verification-LCD8ED87', 1, 'Another UPload jsut for verification', 'This upload makes sure the file upload is working properly', 'secure_docs/4aa1ce68-b8d1-4f77-84f7-d40ed64c097f.pdf', NULL, 3, 5, 8, NULL, 8, 1, 2, 3093, 'pdf', 2911448, NULL, '0a51c7c115f1869e5ea8a37f27bd1d92', NULL, NULL, 0, 'active', 'public', 0, NULL, '2023-12-13 01:12:00', '2025-12-01 10:31:06', NULL),
(4, 'a-jpeg-upload-0eTPZ7', 1, 'A Jpeg UPload', 'test a upload by  adding jepeg', 'secure_docs/2540e797-aaa9-4a3d-b952-b20e5f0c65f3.jpg', NULL, 3, 5, 7, NULL, 7, 1, 11, 3093, 'jpg', 2124885, NULL, 'fc152ff9274346d741250611a3954d46', NULL, NULL, 1, 'active', 'public', 1, 4.00, '2025-12-01 03:39:31', '2025-12-03 11:50:08', NULL),
(6, 'web-technologies-by-tusher-godhela-RkNujF', 1, 'Web Technologies by Tusher Godhela.Download and get exclusive access to it now..!', 'This is web technologies general mythologies book written by Tusher Godhela :).', 'secure_docs/f604ea5e-7a59-4fff-808d-d7ae80679b72.pdf', NULL, 1, 1, 3, NULL, 3, 8, 2, 9, 'pdf', 24573, 2, '92d3b7019bafdf238ad393425fabcb09', NULL, NULL, 0, 'active', 'public', 2, 4.00, '2025-12-03 06:35:14', '2025-12-05 08:48:20', NULL),
(7, 'random-file-upload-test-by-me-gIKVPB', 1, 'Random file upload test by me ', 'this is just a random file upload test by me ', 'secure_docs/d1e17acd-719b-4abd-936a-db57007b4a5f.pdf', 'previews/preview_d1e17acd-719b-4abd-936a-db57007b4a5f.pdf', 3, 5, 9, NULL, 9, 25, 11, 2478, 'pdf', 24573, 2, '92d3b7019bafdf238ad393425fabcb09', NULL, NULL, 0, 'active', 'public', 0, NULL, '2025-12-03 09:26:08', '2025-12-03 09:26:08', NULL),
(9, 'this-is-ultimate-guide-to-conquer-the-universe-by-ourslef-tKcGvy', 2, 'This is ultimate guide to conquer the universe by ourslef', 'Umm just another test by me ..!', 'secure_docs/e48204ff-e6e0-422b-b8bb-551d0f304c05.pdf', 'previews/preview_e48204ff-e6e0-422b-b8bb-551d0f304c05.pdf', 8, 21, 22, NULL, 1, 19, 4, 2558, 'pdf', 8208, 1, '864f15bdbe3267d7de0320d1964bdb86', NULL, NULL, 0, 'active', 'public', 0, NULL, '2025-12-05 09:03:10', '2025-12-05 09:03:10', NULL),
(10, 'software-engineering-tb-DngaAa', 2, 'Software Engineering TB', 'This is advanced software engineering text book with all needed topics..!', 'secure_docs/eff33a4e-6d8c-497c-a848-95491183f697.pdf', 'previews/preview_eff33a4e-6d8c-497c-a848-95491183f697.pdf', 4, 7, 11, NULL, 9, 11, 13, 1947, 'pdf', 101094, 2, '255b0aa7b4bcb717d3efbc8bca27caf3', NULL, NULL, 0, 'active', 'public', 0, NULL, '2025-12-05 09:04:40', '2025-12-05 09:04:40', NULL),
(11, 'angular-test-sheet-by-me-NAhaWg', 2, 'Angular test sheet by me', 'Learnn and ace your angular tests now ...!', 'secure_docs/028b1a19-1671-4bfb-83e0-61cf3b65da9b.pdf', 'previews/preview_028b1a19-1671-4bfb-83e0-61cf3b65da9b.pdf', 6, 15, 24, NULL, 1, 1, 4, 2276, 'pdf', 75682, 11, '878ed2d87353d41f3576e1a6ed042f93', NULL, NULL, 0, 'active', 'public', 0, NULL, '2025-12-05 09:06:20', '2025-12-05 09:06:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `file_id` bigint(20) UNSIGNED NOT NULL,
  `downloaded_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`id`, `user_id`, `file_id`, `downloaded_at`, `ip_address`) VALUES
(1, 1, 4, '2025-12-02 05:18:42', '127.0.0.1'),
(2, 1, 6, '2025-12-03 12:05:54', '127.0.0.1'),
(3, 1, 2, '2025-12-03 17:18:36', '127.0.0.1'),
(4, 1, 6, '2025-12-05 14:18:20', '127.0.0.1');

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
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `file_id` bigint(20) UNSIGNED NOT NULL,
  `rating` tinyint(3) UNSIGNED NOT NULL,
  `comment` text DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `file_id`, `rating`, `comment`, `is_approved`, `created_at`, `updated_at`) VALUES
(3, 1, 4, 4, '', 1, '2025-12-01 23:38:59', '2025-12-01 23:38:59'),
(4, 1, 6, 4, 'Great work', 1, '2025-12-03 06:37:36', '2025-12-03 06:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `file_collections`
--

CREATE TABLE `file_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `visibility` enum('public','private') NOT NULL DEFAULT 'public',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institutions`
--

CREATE TABLE `institutions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) NOT NULL DEFAULT 'India',
  `website` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `institutions`
--

INSERT INTO `institutions` (`id`, `name`, `city`, `country`, `website`, `domain`, `is_verified`, `created_at`, `updated_at`) VALUES
(1, 'Indian Institute of Science Bangalore', 'Bengaluru', 'IN', 'http://www.iisc.ernet.in/', 'https://openalex.org/I59270414', 0, '2025-11-30 04:33:17', '2025-11-30 04:33:17'),
(2, 'All India Institute of Medical Sciences', 'New Delhi', 'IN', 'http://www.aiims.edu/en.html', 'https://openalex.org/I63739035', 0, '2025-11-30 04:33:17', '2025-11-30 04:33:17'),
(3, 'University of Delhi', 'New Delhi', 'IN', 'http://www.du.ac.in', 'https://openalex.org/I110166357', 0, '2025-11-30 04:33:17', '2025-11-30 04:33:17'),
(4, 'Banaras Hindu University', 'Varanasi', 'IN', 'http://www.bhu.ac.in/', 'https://openalex.org/I91357014', 0, '2025-11-30 04:33:17', '2025-11-30 04:33:17'),
(5, 'Indian Institute of Technology Kharagpur', 'Kharagpur', 'IN', 'http://www.iitkgp.ac.in/', 'https://openalex.org/I145894827', 0, '2025-11-30 04:33:17', '2025-11-30 04:33:17'),
(6, 'Indian Institute of Technology Delhi', 'New Delhi', 'IN', 'https://home.iitd.ac.in', 'https://openalex.org/I68891433', 0, '2025-11-30 04:33:17', '2025-11-30 04:33:17'),
(7, 'Vellore Institute of Technology University', 'Vellore', 'IN', 'https://vit.ac.in', 'https://openalex.org/I876193797', 0, '2025-11-30 04:33:17', '2025-11-30 04:33:17'),
(8, 'Indian Institute of Technology Madras', 'Chennai', 'IN', 'https://www.iitm.ac.in/', 'https://openalex.org/I24676775', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(9, 'Indian Institute of Technology Bombay', 'Mumbai', 'IN', 'http://www.iitb.ac.in/', 'https://openalex.org/I162827531', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(10, 'Post Graduate Institute of Medical Education and Research', 'Chandigarh', 'IN', 'http://pgimer.edu.in/PGIMER_PORTAL/PGIMERPORTAL/home.jsp', 'https://openalex.org/I45294948', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(11, 'Institute of Medical Sciences', 'Varanasi', 'IN', 'http://www.imsbhu.ac.in/', 'https://openalex.org/I51317819', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(12, 'Indian Institute of Technology Kanpur', 'Kanpur', 'IN', 'http://www.iitk.ac.in/', 'https://openalex.org/I94234084', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(13, 'Bhabha Atomic Research Centre', 'Mumbai', 'IN', 'http://www.barc.gov.in/', 'https://openalex.org/I1329621470', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(14, 'Indian Institute of Technology Roorkee', 'Roorkee', 'IN', 'http://www.iitr.ac.in/', 'https://openalex.org/I154851008', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(15, 'Manipal Academy of Higher Education', 'Manipal', 'IN', 'https://manipal.edu/', 'https://openalex.org/I164861460', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(16, 'University of Rajasthan', 'Jaipur', 'IN', 'http://www.uniraj.ac.in/', 'https://openalex.org/I99552915', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(17, 'Saveetha University', 'Chennai', 'IN', 'https://www.saveetha.com', 'https://openalex.org/I85461943', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(18, 'Jadavpur University', 'Kolkata', 'IN', 'http://www.jaduniv.edu.in/', 'https://openalex.org/I170979836', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(19, 'SRM Institute of Science and Technology', 'Chennai', 'IN', 'http://www.srmuniv.ac.in/index.html', 'https://openalex.org/I145286018', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(20, 'Anna University, Chennai', 'Chennai', 'IN', 'https://www.annauniv.edu/', 'https://openalex.org/I33585257', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(21, 'Aligarh Muslim University', 'Aligarh', 'IN', 'http://www.amu.ac.in/', 'https://openalex.org/I171210897', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(22, 'University of Calcutta', 'Kolkata', 'IN', 'http://www.caluniv.ac.in/', 'https://openalex.org/I106542073', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(23, 'Tata Institute of Fundamental Research', 'Mumbai', 'IN', 'http://www.tifr.res.in/', 'https://openalex.org/I11947397', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(24, 'Academy of Scientific and Innovative Research', 'Ghaziabad', 'IN', 'http://acsir.res.in/', 'https://openalex.org/I99364266', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(25, 'Panjab University', 'Chandigarh', 'IN', 'http://puchd.ac.in/', 'https://openalex.org/I51452335', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(26, 'Indian Institute of Technology Guwahati', 'Guwahati', 'IN', 'https://iitg.ac.in', 'https://openalex.org/I1317621060', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(27, 'Savitribai Phule Pune University', 'Pune', 'IN', 'http://www.unipune.ac.in/', 'https://openalex.org/I878213199', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(28, 'Amrita Vishwa Vidyapeetham', 'Coimbatore', 'IN', 'https://www.amrita.edu/', 'https://openalex.org/I81556334', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(29, 'Jawaharlal Nehru University', 'New Delhi', 'IN', 'https://www.jnu.ac.in', 'https://openalex.org/I152429107', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(30, 'Lovely Professional University', 'Phagwāra', 'IN', 'http://www.lpu.in/', 'https://openalex.org/I110360157', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(31, 'University of Hyderabad', 'Hyderabad', 'IN', 'https://uohyd.ac.in', 'https://openalex.org/I36893310', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(32, 'Annamalai University', 'Chidambaram', 'IN', 'http://www.annamalaiuniversity.ac.in/', 'https://openalex.org/I197081775', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(33, 'Chandigarh University', 'Mohali', 'IN', 'http://www.cuchd.in/', 'https://openalex.org/I101407740', 0, '2025-11-30 04:33:18', '2025-11-30 04:33:18'),
(34, 'Indian Statistical Institute', 'Kolkata', 'IN', 'http://www.isical.ac.in/', 'https://openalex.org/I6498739', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(35, 'Indian Institute of Technology Indore', 'Indore', 'IN', 'http://www.iiti.ac.in/', 'https://openalex.org/I64295750', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(36, 'Christian Medical College & Hospital', 'Vellore', 'IN', 'http://www.cmch-vellore.edu/', 'https://openalex.org/I172917736', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(37, 'Indian Institute of Technology Dhanbad', 'Dhanbad', 'IN', 'https://www.iitism.ac.in/', 'https://openalex.org/I189109744', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(38, 'Zoological Survey of India', 'Kolkata', 'IN', 'http://zsi.gov.in/App/index.aspx', 'https://openalex.org/I1338006420', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(39, 'Indian Agricultural Research Institute', 'New Delhi', 'IN', 'http://www.iari.res.in/', 'https://openalex.org/I45509622', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(40, 'Kasturba Medical College, Manipal', 'Manipal', 'IN', 'http://manipal.edu/kmc-manipal.html', 'https://openalex.org/I76414455', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(41, 'National Institute of Technology Rourkela', 'Rourkela', 'IN', 'https://nitrkl.ac.in', 'https://openalex.org/I16292982', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(42, 'Malaviya National Institute of Technology Jaipur', 'Jaipur', 'IN', 'http://www.mnit.ac.in/', 'https://openalex.org/I83205935', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(43, 'Amity University', 'Noida', 'IN', 'https://www.amity.edu', 'https://openalex.org/I191972202', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(44, 'Christ University', 'Bengaluru', 'IN', 'https://www.christuniversity.in', 'https://openalex.org/I48018076', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(45, 'Jamia Millia Islamia', 'New Delhi', 'IN', 'https://www.jmi.ac.in', 'https://openalex.org/I59475050', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(46, 'Homi Bhabha National Institute', 'Mumbai', 'IN', 'http://www.hbni.ac.in/', 'https://openalex.org/I200207707', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(47, 'Council of Scientific and Industrial Research', 'New Delhi', 'IN', 'http://www.csir.res.in/', 'https://openalex.org/I66760702', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(48, 'Indian Institute of Chemical Technology', 'Hyderabad', 'IN', 'http://www.iictindia.org/', 'https://openalex.org/I55664587', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(49, 'Birla Institute of Technology and Science, Pilani', 'Pilāni', 'IN', 'http://www.bits-pilani.ac.in/', 'https://openalex.org/I74796645', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(50, 'University of Madras', 'Chennai', 'IN', 'http://www.unom.ac.in/', 'https://openalex.org/I215927', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(51, 'National Chemical Laboratory', 'Pune', 'IN', 'http://www.ncl-india.org/', 'https://openalex.org/I3125981224', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(52, 'Graphic Era University', 'Dehradun', 'IN', 'https://geu.ac.in', 'https://openalex.org/I60054993', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(53, 'Chitkara University', 'Chandigarh', 'IN', 'https://www.chitkara.edu.in', 'https://openalex.org/I74319210', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(54, 'Koneru Lakshmaiah Education Foundation', 'Vijayawada', 'IN', 'http://www.kluniversity.in/', 'https://openalex.org/I875944469', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(55, 'Cancer Institute (WIA)', 'Chennai', 'IN', 'http://cancerinstitutewia.in/CIWIA/', 'https://openalex.org/I2801345345', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(56, 'KIIT University', 'Bhubaneswar', 'IN', 'http://www.kiit.ac.in/', 'https://openalex.org/I67357951', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(57, 'National Institute of Technology Tiruchirappalli', 'Tiruchchirappalli', 'IN', 'https://nitt.edu', 'https://openalex.org/I122964287', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(58, 'Pondicherry University', 'Puducherry', 'IN', 'http://www.pondiuni.edu.in/', 'https://openalex.org/I175691731', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(59, 'Andhra University', 'Visakhapatnam', 'IN', 'https://www.andhrauniversity.edu.in', 'https://openalex.org/I100887729', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(60, 'Osmania University', 'Hyderabad', 'IN', 'https://www.osmania.ac.in', 'https://openalex.org/I8975392', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(61, 'Indian Institute of Technology Hyderabad', 'Sangāreddi', 'IN', 'https://iith.ac.in', 'https://openalex.org/I65181880', 0, '2025-11-30 04:33:19', '2025-11-30 04:33:19'),
(62, 'Symbiosis International University', 'Pune', 'IN', 'http://www.siu.edu.in/', 'https://openalex.org/I244572783', 0, '2025-11-30 04:33:20', '2025-11-30 04:33:20'),
(63, 'Delhi Technological University', 'New Delhi', 'IN', 'https://www.dtu.ac.in', 'https://openalex.org/I863896202', 0, '2025-11-30 04:33:20', '2025-11-30 04:33:20'),
(64, 'Guru Nanak Dev University', 'Amritsar', 'IN', 'http://www.gndu.ac.in/', 'https://openalex.org/I165682329', 0, '2025-11-30 04:33:20', '2025-11-30 04:33:20'),
(65, 'Thapar Institute of Engineering & Technology', 'Patiāla', 'IN', 'https://thapar.edu', 'https://openalex.org/I162030827', 0, '2025-11-30 04:33:20', '2025-11-30 04:33:20'),
(66, 'Institute of Chemical Technology', 'Mumbai', 'IN', 'http://www.ictmumbai.edu.in/', 'https://openalex.org/I167751958', 0, '2025-11-30 04:33:20', '2025-11-30 04:33:20'),
(67, 'Bharathiar University', 'Coimbatore', 'IN', 'http://www.b-u.ac.in/', 'https://openalex.org/I111575329', 0, '2025-11-30 04:33:20', '2025-11-30 04:33:20'),
(68, 'Sathyabama Institute of Science and Technology', 'Chennai', 'IN', 'http://www.sathyabama.ac.in/', 'https://openalex.org/I43814544', 0, '2025-11-30 04:33:20', '2025-11-30 04:33:20'),
(69, 'University of Mumbai', 'Mumbai', 'IN', 'http://www.mu.ac.in/', 'https://openalex.org/I169877490', 0, '2025-11-30 04:33:20', '2025-11-30 04:33:20'),
(70, 'King George\'s Medical University', 'Lucknow', 'IN', 'http://kgmu.org/', 'https://openalex.org/I280994', 0, '2025-11-30 04:33:20', '2025-11-30 04:33:20'),
(71, 'Indian Association for the Cultivation of Science', 'Kolkata', 'IN', 'http://www.iacs.res.in/', 'https://openalex.org/I165998391', 0, '2025-11-30 04:33:20', '2025-11-30 04:33:20'),
(72, 'Jain University', 'Bengaluru', 'IN', 'http://www.jainuniversity.ac.in/', 'https://openalex.org/I106826634', 0, '2025-11-30 04:33:20', '2025-11-30 04:33:20'),
(73, 'Sanjay Gandhi Post Graduate Institute of Medical Sciences', 'Lucknow', 'IN', 'http://www.sgpgi.ac.in/', 'https://openalex.org/I161370692', 0, '2025-11-30 04:33:20', '2025-11-30 04:33:20'),
(74, 'National Institute of Technology Karnataka', 'Mangaluru', 'IN', 'https://www.nitk.ac.in', 'https://openalex.org/I11880225', 0, '2025-11-30 04:33:20', '2025-11-30 04:33:20'),
(75, 'All India Institute of Medical Sciences Bhopal', 'Bhopal', 'IN', 'https://www.aiimsbhopal.edu.in', 'https://openalex.org/I4210106490', 0, '2025-11-30 04:33:20', '2025-11-30 04:33:20'),
(76, 'Tata Memorial Hospital', 'Mumbai', 'IN', 'https://tmc.gov.in/', 'https://openalex.org/I2800098698', 0, '2025-11-30 04:33:20', '2025-11-30 04:33:20'),
(77, 'National Institute of Mental Health and Neurosciences', 'Bengaluru', 'IN', 'http://www.nimhans.kar.nic.in/', 'https://openalex.org/I699696', 0, '2025-11-30 04:33:20', '2025-11-30 04:33:20'),
(78, 'Siksha O Anusandhan University', 'Bhubaneswar', 'IN', 'http://soauniversity.ac.in/home/soa', 'https://openalex.org/I193073490', 0, '2025-11-30 04:33:20', '2025-11-30 04:33:20'),
(79, 'All India Institute of Medical Sciences Raipur', 'Raipur', 'IN', 'http://www.aiimsraipur.edu.in/', 'https://openalex.org/I129734738', 0, '2025-11-30 04:33:20', '2025-11-30 04:33:20'),
(80, 'Punjab Agricultural University', 'Ludhiana', 'IN', 'http://www.pau.edu/', 'https://openalex.org/I899646', 0, '2025-11-30 04:33:20', '2025-11-30 04:33:20'),
(81, 'Bharathidasan University', 'Tiruchchirappalli', 'IN', 'http://www.bdu.ac.in/', 'https://openalex.org/I4076070', 0, '2025-11-30 04:33:20', '2025-11-30 04:33:20'),
(82, 'University of Kalyani', 'Kalyani', 'IN', 'https://klyuniv.ac.in', 'https://openalex.org/I77501641', 0, '2025-11-30 04:33:20', '2025-11-30 04:33:20'),
(83, 'Tamil Nadu Agricultural University', 'Coimbatore', 'IN', 'https://tnau.ac.in', 'https://openalex.org/I134900695', 0, '2025-11-30 04:33:20', '2025-11-30 04:33:20'),
(84, 'Sri Venkateswara University', 'Tirumala - Tirupati', 'IN', 'http://www.svuniversity.ac.in/', 'https://openalex.org/I170558118', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(85, 'GITAM University', 'Vizag', 'IN', 'http://www.gitam.edu/WelcomePage.aspx', 'https://openalex.org/I885392262', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(86, 'SRM University', 'Sonīpat', 'IN', 'http://www.srmuniversity.ac.in/', 'https://openalex.org/I4210131147', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(87, 'University of Mysore', 'Mysore', 'IN', 'http://www.uni-mysore.ac.in/', 'https://openalex.org/I204743663', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(88, 'Indian Institute of Technology BHU', 'Varanasi', 'IN', 'http://www.iitbhu.ac.in/', 'https://openalex.org/I56404289', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(89, 'Jawaharlal Institute of Post Graduate Medical Education and Research', 'Puducherry', 'IN', 'http://jipmer.edu.in/', 'https://openalex.org/I61923386', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(90, 'Central University of Rajasthan', 'Ajmer', 'IN', 'https://www.curaj.ac.in', 'https://openalex.org/I76777374', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(91, 'University of Allahabad', 'Prayagraj', 'IN', 'https://allduniv.ac.in', 'https://openalex.org/I168893459', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(92, 'Dr. Hari Singh Gour University', 'Saugor', 'IN', 'http://www.dhsgsu.ac.in/', 'https://openalex.org/I8977528', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(93, 'National Institute of Technology Warangal', 'Warangal', 'IN', 'https://www.nitw.ac.in', 'https://openalex.org/I121750182', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(94, 'Indian Institute of Engineering Science and Technology, Shibpur', 'Howrah', 'IN', 'https://www.iiests.ac.in', 'https://openalex.org/I98365261', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(95, 'Bharati Vidyapeeth Deemed University', 'Pune', 'IN', 'https://bharatividyapeeth.edu', 'https://openalex.org/I887998513', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(96, 'Cochin University of Science and Technology', 'Ernakulam', 'IN', 'https://www.cusat.ac.in', 'https://openalex.org/I20497027', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(97, 'University of Lucknow', 'Lucknow', 'IN', 'https://www.lkouniv.ac.in', 'https://openalex.org/I186246823', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(98, 'Vel Tech Rangarajan Dr. Sagunthala R&D Institute of Science and Technology', 'Chennai', 'IN', 'https://www.veltech.edu.in', 'https://openalex.org/I1330855593', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(99, 'Sardar Vallabhbhai National Institute of Technology Surat', 'Surat', 'IN', 'http://www.svnit.ac.in/', 'https://openalex.org/I42014448', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(100, 'Punjabi University', 'Patiāla', 'IN', 'http://punjabiuniversity.ac.in/pbiuniweb/index.html', 'https://openalex.org/I79161377', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(101, 'National Institute of Technology Durgapur', 'Durgapur', 'IN', 'https://nitdgp.ac.in', 'https://openalex.org/I155837530', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(102, 'Jamia Hamdard', 'New Delhi', 'IN', 'http://jamiahamdard.edu/', 'https://openalex.org/I19716509', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(103, 'SASTRA University', 'Thanjavur', 'IN', 'http://www.sastra.edu/', 'https://openalex.org/I932239252', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(104, 'University of Petroleum and Energy Studies', 'Dehra Dūn', 'IN', 'https://www.upes.ac.in/', 'https://openalex.org/I5847235', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(105, 'Presidency University', 'Kolkata', 'IN', 'https://www.presiuniv.ac.in/web', 'https://openalex.org/I157674215', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(106, 'Sri Ramachandra Institute of Higher Education and Research', 'Porur', 'IN', 'http://www.sriramachandra.edu.in/', 'https://openalex.org/I20107917', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(107, 'Saha Institute of Nuclear Physics', 'Kolkata', 'IN', 'http://www.saha.ac.in/web/', 'https://openalex.org/I16019930', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(108, 'Birla Institute of Technology, Mesra', 'Ranchi', 'IN', 'https://www.bitmesra.ac.in', 'https://openalex.org/I115715567', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(109, 'Indira Gandhi Centre for Atomic Research', 'Kālpākkam', 'IN', 'http://www.igcar.gov.in/', 'https://openalex.org/I2802630050', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(110, 'Shivaji University', 'Kolhāpur', 'IN', 'http://www.unishivaji.ac.in/', 'https://openalex.org/I141641110', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(111, 'University of Kashmir', 'Srinagar', 'IN', 'https://www.kashmiruniversity.net', 'https://openalex.org/I135388327', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(112, 'Indian Council of Agricultural Research', 'New Delhi', 'IN', 'http://www.icar.org.in/', 'https://openalex.org/I179420787', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(113, 'Mangalore University', 'Mangalore', 'IN', 'http://www.mangaloreuniversity.ac.in/', 'https://openalex.org/I19008122', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(114, 'Government Medical College', 'Sangli', 'IN', 'http://gmcmiraj.co.in/', 'https://openalex.org/I4210157651', 0, '2025-11-30 04:33:21', '2025-11-30 04:34:35'),
(115, 'Institute of Post Graduate Medical Education and Research', 'Kolkata', 'IN', 'http://www.ipgmer.gov.in/', 'https://openalex.org/I4210100047', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(116, 'Maulana Azad Medical College', 'New Delhi', 'IN', 'http://www.mamc.ac.in/', 'https://openalex.org/I39190216', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(117, 'Jawaharlal Nehru Technological University, Hyderabad', 'Hyderabad', 'IN', 'https://www.jntuh.ac.in', 'https://openalex.org/I10874241', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(118, 'Maharaja Sayajirao University of Baroda', 'Vadodara', 'IN', 'http://www.msubaroda.ac.in/', 'https://openalex.org/I110116418', 0, '2025-11-30 04:33:21', '2025-11-30 04:33:21'),
(119, 'Datta Meghe Institute of Medical Sciences', 'Wardha', 'IN', 'http://www.dmimsu.edu.in/', 'https://openalex.org/I4210130476', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(120, 'Central Drug Research Institute', 'Lucknow', 'IN', 'http://www.cdriindia.org/', 'https://openalex.org/I185249246', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(121, 'GLA University', 'Mathura', 'IN', 'http://gla.ac.in/', 'https://openalex.org/I82571370', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(122, 'Christian Medical College', 'Ludhiana', 'IN', 'http://cmcludhiana.in/medical_college/', 'https://openalex.org/I4210108783', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(123, 'University of Kerala', 'Thiruvananthapuram', 'IN', 'https://keralauniversity.ac.in', 'https://openalex.org/I158338959', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(124, 'Galgotias University', 'Greater Noida', 'IN', 'https://www.galgotiasuniversity.edu.in/', 'https://openalex.org/I155125381', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(125, 'University of Burdwan', 'Barddhamān', 'IN', 'http://www.buruniv.ac.in/', 'https://openalex.org/I132359460', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(126, 'G.S. Science, Arts And Commerce College', 'Akola', 'IN', 'http://www.gsck.ac.in/', 'https://openalex.org/I4210144496', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(127, 'Indian Council of Medical Research', 'New Delhi', 'IN', 'http://www.icmr.nic.in/', 'https://openalex.org/I37048141', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(128, 'PSG INSTITUTE OF TECHNOLOGY AND APPLIED RESEARCH', 'Coimbatore', 'IN', 'https://psgitech.ac.in', 'https://openalex.org/I4210109528', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(129, 'Motilal Nehru National Institute of Technology', 'Prayagraj', 'IN', 'https://www.mnnit.ac.in', 'https://openalex.org/I152869788', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(130, 'Indian Veterinary Research Institute', 'Bareilly', 'IN', 'http://ivri.nic.in/', 'https://openalex.org/I185790649', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(131, 'Bangalore University', 'Bengaluru', 'IN', 'http://bangaloreuniversity.ac.in/', 'https://openalex.org/I53465836', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(132, 'Karpagam Academy of Higher Education', 'Coimbatore', 'IN', 'https://kahedu.edu.in/', 'https://openalex.org/I65220239', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(133, 'Chaudhary Charan Singh Haryana Agricultural University', 'Hisar', 'IN', 'http://www.hau.ernet.in/', 'https://openalex.org/I24927338', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(134, 'Government of India', 'New Delhi', 'IN', 'http://india.gov.in/', 'https://openalex.org/I2799351866', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(135, 'Govind Ballabh Pant University of Agriculture and Technology', 'Haldwani', 'IN', 'http://www.gbpuat.ac.in/', 'https://openalex.org/I252758333', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(136, 'Sharda University', 'Greater Noida', 'IN', 'https://www.sharda.ac.in', 'https://openalex.org/I74885063', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(137, 'Madurai Kamaraj University', 'Madurai', 'IN', 'https://mkuniversity.ac.in', 'https://openalex.org/I13268429', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(138, 'National Institute Of Technology Silchar', 'Silchar', 'IN', 'http://www.nits.ac.in/', 'https://openalex.org/I151903974', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(139, 'Indian Space Research Organisation', 'Bengaluru', 'IN', 'http://www.isro.gov.in/', 'https://openalex.org/I1289461252', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(140, 'National Institute of Technology Kurukshetra', 'Kurukshetra', 'IN', 'https://nitkkr.ac.in', 'https://openalex.org/I105094715', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(141, 'Maulana Azad National Institute of Technology', 'Bhopal', 'IN', 'http://www.manit.ac.in/manitbpl/', 'https://openalex.org/I91277730', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(142, 'Visva-Bharati University', 'Shānti Niketan', 'IN', 'http://www.visvabharati.ac.in/', 'https://openalex.org/I130291710', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(143, 'Dr. D. Y. Patil Medical College, Hospital and Research Centre', 'Pune', 'IN', 'http://medical.dpu.edu.in/', 'https://openalex.org/I4210089305', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(144, 'National Institute of Technology Calicut', 'Kozhikode', 'IN', 'https://nitc.ac.in', 'https://openalex.org/I114845381', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(145, 'Kalasalingam Academy of Research and Education', 'Srivilliputhur', 'IN', 'https://www.kalasalingam.ac.in', 'https://openalex.org/I98499257', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(146, 'Kurukshetra University', 'Kurukshetra', 'IN', 'https://kuk.ac.in', 'https://openalex.org/I178000100', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(147, 'Alagappa University', 'Karaikudi', 'IN', 'https://www.alagappauniversity.ac.in/homepage', 'https://openalex.org/I131155284', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(148, 'Karunya University', 'Coimbatore', 'IN', 'http://www.karunya.edu/', 'https://openalex.org/I119668213', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(149, 'Maharshi Dayanand University', 'Rohtak', 'IN', 'http://www.mdurohtak.ac.in/', 'https://openalex.org/I905734797', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(150, 'Jawaharlal Nehru Centre for Advanced Scientific Research', 'Bengaluru', 'IN', 'http://www.jncasr.ac.in/', 'https://openalex.org/I147481903', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(151, 'Guru Gobind Singh Indraprastha University', 'Delhi', 'IN', 'http://www.ipu.ac.in/', 'https://openalex.org/I105454292', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(152, 'Physical Research Laboratory', 'Ahmedabad', 'IN', 'https://www.prl.res.in/', 'https://openalex.org/I121502294', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(153, 'JSS Academy of Higher Education and Research', 'Mysuru', 'IN', 'https://jssuni.edu.in', 'https://openalex.org/I126824641', 0, '2025-11-30 04:33:22', '2025-11-30 04:33:22'),
(154, 'Gauhati University', 'Guwahati', 'IN', 'https://gauhati.ac.in', 'https://openalex.org/I138537684', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(155, 'Tezpur University', 'Tezpur', 'IN', 'http://www.tezu.ernet.in/', 'https://openalex.org/I126601174', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(156, 'Visvesvaraya National Institute of Technology', 'Nagpur', 'IN', 'http://vnit.ac.in/', 'https://openalex.org/I167153416', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(157, 'Dr. B. R. Ambedkar National Institute of Technology Jalandhar', 'Jalandhar', 'IN', 'https://nitj.ac.in', 'https://openalex.org/I70971781', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(158, 'Hindustan Institute of Technology and Science', 'Chennai', 'IN', 'https://hindustanuniv.ac.in', 'https://openalex.org/I43663321', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(159, 'Medical College and Hospital, Kolkata', 'Kolkata', 'IN', 'http://www.medicalcollegekolkata.org/', 'https://openalex.org/I68428275', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(160, 'National Institute of Technology Raipur', 'Raipur', 'IN', 'https://www.nitrr.ac.in', 'https://openalex.org/I38335241', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(161, 'Visvesvaraya Technological University', 'Belagavi', 'IN', 'http://vtu.ac.in/', 'https://openalex.org/I65674248', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(162, 'Indian Institute of Technology Patna', 'Patna', 'IN', 'http://www.iitp.ac.in/', 'https://openalex.org/I132153292', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(163, 'North Eastern Hill University', 'Shillong', 'IN', 'http://www.nehu.ac.in/', 'https://openalex.org/I197465736', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(164, 'University of Jammu', 'Jammu', 'IN', 'http://www.jammuuniversity.in/', 'https://openalex.org/I145846420', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(165, 'L V Prasad Eye Institute', 'Hyderabad', 'IN', 'https://www.lvpei.org', 'https://openalex.org/I2801255070', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(166, 'Mahatma Gandhi University', 'Kottayam', 'IN', 'http://www.mgu.ac.in/', 'https://openalex.org/I177436651', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(167, 'Institute of Minerals and Materials Technology', 'Bhubaneswar', 'IN', 'http://www.immt.res.in/', 'https://openalex.org/I4210107015', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(168, 'Siddhartha Medical College', 'Vijayawada', 'IN', 'http://smcvja.in/', 'https://openalex.org/I116891498', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(169, 'Indian Institute of Technology Bhubaneswar', 'Bhubaneswar', 'IN', 'https://www.iitbbs.ac.in', 'https://openalex.org/I99729588', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(170, 'Jaypee Institute of Information Technology', 'Noida', 'IN', 'https://www.jiit.ac.in', 'https://openalex.org/I154970844', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(171, 'Indian Institute of Science Education and Research Kolkata', 'Kolkata', 'IN', 'https://www.iiserkol.ac.in', 'https://openalex.org/I127439422', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(172, 'University of Calicut', 'Malappuram', 'IN', 'https://uoc.ac.in', 'https://openalex.org/I114176345', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(173, 'Maharishi Markandeshwar University, Mullana', 'Ambāla', 'IN', 'http://www.mmumullana.org/', 'https://openalex.org/I155284866', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(174, 'Banasthali University', 'Jaipur', 'IN', 'http://www.banasthali.org', 'https://openalex.org/I102117144', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(175, 'Indian Institute of Science Education and Research Pune', 'Pune', 'IN', 'http://www.iiserpune.ac.in/', 'https://openalex.org/I181996519', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(176, 'M S Ramaiah University of Applied Sciences', 'Bengaluru', 'IN', 'http://www.msruas.ac.in/', 'https://openalex.org/I302410947', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(177, 'National Institute of Oceanography', 'Panjim', 'IN', 'http://www.nio.org/', 'https://openalex.org/I75093019', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(178, 'University College of Medical Sciences', 'Delhi', 'IN', 'http://www.ucms.ac.in/', 'https://openalex.org/I172982924', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(179, 'Indian Institute of Information Technology Allahabad', 'Prayagraj', 'IN', 'https://www.iiita.ac.in/', 'https://openalex.org/I26072440', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(180, 'Netaji Subhas University of Technology', 'New Delhi', 'IN', 'http://www.nsut.ac.in', 'https://openalex.org/I36090812', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(181, 'Karnatak University', 'Dharwad', 'IN', 'https://www.kud.ac.in', 'https://openalex.org/I110083240', 0, '2025-11-30 04:33:23', '2025-11-30 04:33:23'),
(182, 'Narsee Monjee Institute of Management Studies', 'Mumbai', 'IN', 'https://www.nmims.edu', 'https://openalex.org/I226983648', 0, '2025-11-30 04:33:24', '2025-11-30 04:33:24'),
(183, 'Sardar Patel University', 'Vallabh Vidyanagar', 'IN', 'https://www.spuvvn.edu', 'https://openalex.org/I57085157', 0, '2025-11-30 04:33:24', '2025-11-30 04:33:24'),
(184, 'Bharath University', 'Chennai', 'IN', 'https://www.bharathuniv.ac.in', 'https://openalex.org/I860813019', 0, '2025-11-30 04:33:24', '2025-11-30 04:33:24'),
(185, 'Birla Institute of Technology and Science - Hyderabad Campus', 'Hyderabad', 'IN', 'http://www.bits-pilani.ac.in/hyderabad/', 'https://openalex.org/I4210101034', 0, '2025-11-30 04:33:24', '2025-11-30 04:33:24'),
(186, 'Public Health Department', 'Chennai', 'IN', 'http://www.chennaicorporation.gov.in/departments/health/publicHealthDept.htm', 'https://openalex.org/I4210092035', 0, '2025-11-30 04:33:24', '2025-11-30 04:33:24'),
(187, 'Indian Institute of Technology Gandhinagar', 'Gandhinagar', 'IN', 'https://iitgn.ac.in', 'https://openalex.org/I27674431', 0, '2025-11-30 04:33:24', '2025-11-30 04:33:24'),
(188, 'Vidyasagar University', 'Medinīpur', 'IN', 'https://vidyasagar.ac.in', 'https://openalex.org/I41549804', 0, '2025-11-30 04:33:24', '2025-11-30 04:33:24'),
(189, 'All India Institute of Medical Sciences Bhubaneswar', 'Bhubaneswar', 'IN', 'http://aiimsbhubaneswar.nic.in/', 'https://openalex.org/I4210117092', 0, '2025-11-30 04:33:24', '2025-11-30 04:33:24'),
(190, 'D.Y. Patil University', 'Navi Mumbai', 'IN', 'http://www.dypatil.edu/', 'https://openalex.org/I4210153931', 0, '2025-11-30 04:33:24', '2025-11-30 04:33:24'),
(191, 'National Dairy Research Institute', 'Karnāl', 'IN', 'http://www.ndri.res.in/ndri/Design/Index.html', 'https://openalex.org/I187279525', 0, '2025-11-30 04:33:24', '2025-11-30 04:33:24'),
(192, 'Indian Institute of Technology Ropar', 'Ropar', 'IN', 'https://iitrpr.ac.in', 'https://openalex.org/I119241673', 0, '2025-11-30 04:33:24', '2025-11-30 04:33:24'),
(193, 'Bose Institute', 'Kolkata', 'IN', 'http://www.boseinst.ernet.in/', 'https://openalex.org/I152754861', 0, '2025-11-30 04:33:24', '2025-11-30 04:33:24'),
(194, 'Rashtrasant Tukadoji Maharaj Nagpur University', 'Nagpur', 'IN', 'http://www.nagpuruniversity.org/', 'https://openalex.org/I133978751', 0, '2025-11-30 04:33:24', '2025-11-30 04:33:24'),
(195, 'PES University', 'Bengaluru', 'IN', 'https://pes.edu', 'https://openalex.org/I196608512', 0, '2025-11-30 04:33:24', '2025-11-30 04:33:24'),
(196, 'Central Food Technological Research Institute', 'Mysore', 'IN', 'http://www.cftri.com/', 'https://openalex.org/I150037166', 0, '2025-11-30 04:33:24', '2025-11-30 04:33:24'),
(197, 'Botanical Survey of India', 'Kolkata', 'IN', 'http://bsi.gov.in/', 'https://openalex.org/I1282638777', 0, '2025-11-30 04:33:24', '2025-11-30 04:33:24'),
(198, 'Sawai ManSingh Medical College and Hospital', 'Jaipur', 'IN', 'http://smshospital.rajasthan.gov.in/', 'https://openalex.org/I164135366', 0, '2025-11-30 04:33:24', '2025-11-30 04:33:24'),
(199, 'Sree Chitra Thirunal Institute for Medical Sciences and Technology', 'Thiruvananthapuram', 'IN', 'http://dst.gov.in/autonomous/stimst.htm', 'https://openalex.org/I2800373951', 0, '2025-11-30 04:33:24', '2025-11-30 04:33:24'),
(200, 'Institute of Management Technology', 'Ghaziabad', 'IN', 'http://www.imt.edu/', 'https://openalex.org/I166533956', 0, '2025-11-30 04:33:29', '2025-11-30 04:33:29'),
(201, 'National Institute of Technology Hamirpur', 'Mandi', 'IN', 'https://nith.ac.in', 'https://openalex.org/I36909309', 0, '2025-11-30 04:33:29', '2025-11-30 04:33:29'),
(202, 'Lady Hardinge Medical College', 'New Delhi', 'IN', 'http://lhmc-hosp.gov.in/', 'https://openalex.org/I114546181', 0, '2025-11-30 04:33:29', '2025-11-30 04:33:29'),
(203, 'Acharya Nagarjuna University', 'Guntur', 'IN', 'http://www.nagarjunauniversity.ac.in/', 'https://openalex.org/I177001074', 0, '2025-11-30 04:33:29', '2025-11-30 04:33:29'),
(204, 'Gujarat University', 'Ahmedabad', 'IN', 'https://www.gujaratuniversity.ac.in/', 'https://openalex.org/I114173286', 0, '2025-11-30 04:33:29', '2025-11-30 04:33:29'),
(205, 'Indian Institute of Chemical Biology', 'Kolkata', 'IN', 'http://www.iicb.res.in/', 'https://openalex.org/I160344538', 0, '2025-11-30 04:33:29', '2025-11-30 04:33:29'),
(206, 'Devi Ahilya Vishwavidyalaya', 'Indore', 'IN', 'http://www.dauniv.ac.in/', 'https://openalex.org/I138272832', 0, '2025-11-30 04:33:29', '2025-11-30 04:33:29'),
(207, 'All India Institute of Medical Sciences Jodhpur', 'Jodhpur', 'IN', 'http://www.aiimsjodhpur.edu.in/', 'https://openalex.org/I216021267', 0, '2025-11-30 04:33:29', '2025-11-30 04:33:29'),
(208, 'Indian Institute of Technology Jodhpur', 'Jodhpur', 'IN', 'https://iitj.ac.in', 'https://openalex.org/I154549908', 0, '2025-11-30 04:33:29', '2025-11-30 04:33:29'),
(209, 'St Xavier’s College', 'Ahmedabad', 'IN', 'http://www.sxca.edu.in/', 'https://openalex.org/I906608882', 0, '2025-11-30 04:33:29', '2025-11-30 04:33:29'),
(210, 'National Institute of Technology Patna', 'Patna', 'IN', 'http://www.nitp.ac.in/php/home.php', 'https://openalex.org/I11793825', 0, '2025-11-30 04:33:29', '2025-11-30 04:33:29'),
(211, 'Nirma University', 'Ahmedabad', 'IN', 'http://nirmauni.ac.in', 'https://openalex.org/I165831266', 0, '2025-11-30 04:33:29', '2025-11-30 04:33:29'),
(212, 'Indian Institute of Technology Mandi', 'Mandi', 'IN', 'https://www.iitmandi.ac.in', 'https://openalex.org/I9579091', 0, '2025-11-30 04:33:29', '2025-11-30 04:33:29'),
(213, 'Amrita Institute of Medical Sciences and Research Centre', 'Ernakulam', 'IN', 'http://www.amritahospitals.org/', 'https://openalex.org/I1282879092', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(214, 'King Edward Memorial Hospital and Seth G.S. Medical College', 'Mumbai', 'IN', 'https://www.kem.edu', 'https://openalex.org/I193353881', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(215, 'National Institute for Interdisciplinary Science and Technology', 'Thiruvananthapuram', 'IN', 'http://www.niist.res.in/english/', 'https://openalex.org/I146682468', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(216, 'Armed Forces Medical College', 'Pune', 'IN', 'http://afmc.nic.in/', 'https://openalex.org/I83878805', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(217, 'Vignan\'s Foundation for Science, Technology & Research', 'Guntur', 'IN', 'https://www.vignan.ac.in/', 'https://openalex.org/I149313025', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(218, 'Vels University', 'Chennai', 'IN', 'http://www.velsuniv.ac.in/', 'https://openalex.org/I138876546', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(219, 'Aditya Birla (India)', 'Mumbai', 'IN', 'http://www.adityabirla.com/home', 'https://openalex.org/I4210145126', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(220, 'Assam University', 'Silchar', 'IN', 'http://www.aus.ac.in/', 'https://openalex.org/I49278261', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(221, 'Parul University', 'Vadodara', 'IN', 'https://www.paruluniversity.ac.in/', 'https://openalex.org/I9694494', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(222, 'Tata Consultancy Services (India)', 'Pune', 'IN', 'http://www.tcs.com/', 'https://openalex.org/I55215948', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(223, 'National Institute of Science Education and Research', 'Bhubaneswar', 'IN', 'http://www.niser.ac.in/drupal_new/', 'https://openalex.org/I163389970', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(224, 'Uttaranchal University', 'Dehradun', 'IN', 'https://www.uudoon.in', 'https://openalex.org/I3132702812', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(225, 'Manonmaniam Sundaranar University', 'Tirunelveli', 'IN', 'https://msuniv.ac.in', 'https://openalex.org/I182997119', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(226, 'Jawaharlal Nehru Medical College', 'Belgaum', 'IN', 'https://www.jnmc.edu/', 'https://openalex.org/I4210104297', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:33'),
(227, 'Sarojini Naidu Medical College', 'Agra', 'IN', 'http://www.snmcagra.in/', 'https://openalex.org/I2799711398', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(228, 'Sher-e-Kashmir University of Agricultural Sciences and Technology of Kashmir', 'Srinagar', 'IN', 'http://www.skuastkashmir.ac.in/', 'https://openalex.org/I1306687154', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(229, 'KLE University', 'Belgaum', 'IN', 'http://www.kleuniversity.edu.in/', 'https://openalex.org/I4210125823', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(230, 'Periyar University', 'Salem', 'IN', 'http://www.periyaruniversity.ac.in/', 'https://openalex.org/I141431873', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(231, 'REVA University', 'Bengaluru', 'IN', 'https://www.reva.edu.in', 'https://openalex.org/I83737708', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(232, 'Guru Teg Bahadur Hospital', 'Delhi', 'IN', 'http://www.gtbhospital-gnctd.com/', 'https://openalex.org/I2802539864', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(233, 'Indian Institute of Science Education and Research Mohali', 'Mohali', 'IN', 'http://www.iisermohali.ac.in/', 'https://openalex.org/I165916956', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(234, 'Indian Institute of Science Education and Research, Bhopal', 'Bhopal', 'IN', 'https://www.iiserb.ac.in', 'https://openalex.org/I288749910', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(235, 'CSIR National Physical Laboratory of India', 'New Delhi', 'IN', 'http://www.nplindia.org/', 'https://openalex.org/I88910343', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(236, 'Dr. D.Y. Patil Vidyapeeth, Pune', 'Pune', 'IN', 'http://www.dpu.edu.in/', 'https://openalex.org/I4210103194', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(237, 'University of Agricultural Sciences, Dharwad', 'Hubli', 'IN', 'http://www.uasd.edu/', 'https://openalex.org/I139046659', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(238, 'Inter-University Centre for Astronomy and Astrophysics', 'Pune', 'IN', 'https://www.iucaa.in', 'https://openalex.org/I59781447', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(239, 'Sam Higginbottom Institute of Agriculture', 'Allahabad', 'IN', 'http://www.shiats.edu.in/', 'https://openalex.org/I223959643', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(240, 'Deen Dayal Upadhyaya Gorakhpur University', 'Gorakhpur', 'IN', 'http://ddugu.ac.in', 'https://openalex.org/I886702836', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(241, 'Hemwati Nandan Bahuguna Garhwal University', 'Srīnagar', 'IN', 'http://hnbgu.ac.in/', 'https://openalex.org/I185052938', 0, '2025-11-30 04:33:30', '2025-11-30 04:33:30'),
(242, 'Centre for Cellular and Molecular Biology', 'Hyderabad', 'IN', 'http://www.ccmb.res.in/', 'https://openalex.org/I185638415', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(243, 'Pandit Deendayal Petroleum University', 'Gandhinagar', 'IN', 'http://www.pdpu.ac.in/', 'https://openalex.org/I33586908', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(244, 'Pandit Bhagwat Dayal Sharma Post Graduate Institute of Medical Sciences', 'Rohtak', 'IN', 'http://pgimsrohtak.nic.in/', 'https://openalex.org/I13529149', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(245, 'National Institute of Technology Srinagar', 'Srinagar', 'IN', 'http://www.nitsri.net/', 'https://openalex.org/I8778637', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(246, 'B.J. Medical College', 'Ahmedabad', 'IN', 'http://www.bjmc.org/', 'https://openalex.org/I64157871', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(247, 'Geological Survey of India', 'Kolkata', 'IN', 'https://www.gsi.gov.in/', 'https://openalex.org/I64389444', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(248, 'Sher-i-Kashmir Institute of Medical Sciences', 'Srinagar', 'IN', 'http://skimsmc.edu.in/', 'https://openalex.org/I206040828', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(249, 'Indian Institute of Management Ahmedabad', 'Ahmedabad', 'IN', 'https://www.iima.ac.in', 'https://openalex.org/I150870154', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(250, 'St.John\'s Medical College Hospital', 'Bengaluru', 'IN', 'http://www.stjohns.in/medicalcollege/', 'https://openalex.org/I4210145302', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(251, 'Central Electrochemical Research Institute', 'Karaikudi', 'IN', 'http://www.cecri.res.in/', 'https://openalex.org/I106349282', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(252, 'National Centre for Biological Sciences', 'Bengaluru', 'IN', 'https://www.ncbs.res.in/', 'https://openalex.org/I194223965', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(253, 'Dr. Babasaheb Ambedkar Marathwada University', 'Aurangabad', 'IN', 'http://www.bamu.ac.in/', 'https://openalex.org/I165259314', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(254, 'Kakatiya University', 'Warangal', 'IN', 'https://kakatiya.ac.in', 'https://openalex.org/I28210344', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(255, 'Guru Jambheshwar University of Science and Technology', 'Hisar', 'IN', 'http://www.gjust.ac.in/', 'https://openalex.org/I15896350', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(256, 'University of Agricultural Sciences, Bangalore', 'Bengaluru', 'IN', 'http://www.uasbangalore.edu.in/', 'https://openalex.org/I199921877', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(257, 'Jawaharlal Nehru Technological University Anantapur', 'Anantapur', 'IN', 'https://www.jntua.ac.in', 'https://openalex.org/I52035452', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(258, 'Indraprastha Institute of Information Technology Delhi', 'Delhi', 'IN', 'https://www.iiitd.ac.in/', 'https://openalex.org/I119939252', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(259, 'Manav Rachna International Institute of Research and Studies', 'Faridabad', 'IN', 'https://manavrachna.edu.in/international-institute-of-research-and-studies/', 'https://openalex.org/I55016150', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(260, 'Yenepoya University', 'Mangaluru', 'IN', 'https://www.yenepoya.edu.in', 'https://openalex.org/I158688498', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(261, 'UGC DAE Consortium for Scientific Research', 'Indore', 'IN', 'https://www.csr.res.in', 'https://openalex.org/I4210132317', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(262, 'Central Leather Research Institute', 'Chennai', 'IN', 'http://www.clri.org/', 'https://openalex.org/I112576028', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(263, 'Institute of Child Health', 'Kolkata', 'IN', 'http://www.ichcalcutta.org/index.html', 'https://openalex.org/I4210135832', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(264, 'Punjab Engineering College', 'Chandigarh', 'IN', 'https://www.pec.ac.in/', 'https://openalex.org/I860003557', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(265, 'National Botanical Research Institute', 'Lucknow', 'IN', 'http://www.nbri.res.in/', 'https://openalex.org/I170396143', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(266, 'National Geophysical Research Institute', 'Hyderabad', 'IN', 'http://www.ngri.org.in/', 'https://openalex.org/I22716965', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(267, 'Kamineni Institute of Dental Sciences', 'Nalgonda', 'IN', 'http://www.kidsdentalcollege.org/', 'https://openalex.org/I99693012', 0, '2025-11-30 04:33:31', '2025-11-30 04:33:31'),
(268, 'Utkal University', 'Bhubaneswar', 'IN', 'http://www.utkaluniversity.ac.in/', 'https://openalex.org/I70699430', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(269, 'Jawaharlal Nehru Technological University, Kakinada', 'Kākināda', 'IN', 'http://www.jntuk.edu.in/', 'https://openalex.org/I142809039', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(270, 'Institute of Mathematical Sciences', 'Chennai', 'IN', 'https://www.imsc.res.in/', 'https://openalex.org/I59611059', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(271, 'Central Agricultural University', 'Imphal', 'IN', 'http://www.cau.ac.in/', 'https://openalex.org/I76253773', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(272, 'Barkatullah University', 'Bhopal', 'IN', 'http://www.bubhopal.nic.in/', 'https://openalex.org/I464993', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(273, 'Vikram Sarabhai Space Centre', 'Thiruvananthapuram', 'IN', 'https://www.vssc.gov.in', 'https://openalex.org/I71374576', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(274, 'Sant Gadge Baba Amravati University', 'Amravati', 'IN', 'http://www.sgbau.ac.in/', 'https://openalex.org/I150513749', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(275, 'Vardhman Mahavir Medical College & Safdarjung Hospital', 'New Delhi', 'IN', 'http://www.vmmc-sjh.nic.in/', 'https://openalex.org/I17972996', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(276, 'Central Salt and Marine Chemicals Research Institute', 'Bhavnagar', 'IN', 'https://www.csmcri.res.in/', 'https://openalex.org/I128420443', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(277, 'Indian Institute of Toxicology Research', 'Lucknow', 'IN', 'http://iitrindia.org/', 'https://openalex.org/I85145500', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(278, 'Chaudhary Charan Singh University', 'Meerut', 'IN', 'http://www.ccsuniversity.ac.in/default.htm', 'https://openalex.org/I303593345', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(279, 'National Institute of Technology Agartala', 'Agartala', 'IN', 'https://nita.ac.in', 'https://openalex.org/I196486160', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(280, 'S.N. Bose National Centre for Basic Sciences', 'Kolkata', 'IN', 'http://newweb.bose.res.in/', 'https://openalex.org/I77430839', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(281, 'Raja Ramanna Centre for Advanced Technology', 'Indore', 'IN', 'http://www.cat.ernet.in/', 'https://openalex.org/I1289303365', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(282, 'Babasaheb Bhimrao Ambedkar University', 'Lucknow', 'IN', 'http://bbauadmissions.in/', 'https://openalex.org/I143247161', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(283, 'KPR Institute of Engineering and Technology', 'Coimbatore', 'IN', 'https://www.kpriet.ac.in/', 'https://openalex.org/I4210133257', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(284, 'Integral University', 'Lucknow', 'IN', 'http://www.integraluniversity.ac.in/', 'https://openalex.org/I189949046', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(285, 'Ministry of Earth Sciences', 'New Delhi', 'IN', 'http://moes.gov.in/', 'https://openalex.org/I4210100914', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(286, 'Himachal Pradesh University', 'Shimla', 'IN', 'http://www.hpuniv.nic.in/', 'https://openalex.org/I904467727', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32');
INSERT INTO `institutions` (`id`, `name`, `city`, `country`, `website`, `domain`, `is_verified`, `created_at`, `updated_at`) VALUES
(287, 'Nitte University', 'Mangalore', 'IN', 'http://nitte.edu.in/', 'https://openalex.org/I1333540553', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(288, 'North Bengal University', 'Siliguri', 'IN', 'http://www.nbu.ac.in/', 'https://openalex.org/I56090587', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(289, 'Bidhan Chandra Krishi Viswavidyalaya', 'Krishnanagar', 'IN', 'http://www.bckv.edu.in/', 'https://openalex.org/I109963156', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(290, 'Madurai Medical College', 'Madurai', 'IN', 'http://www.mdmc.ac.in/', 'https://openalex.org/I15664174', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(291, 'Central Research Institute', 'Kasauli', 'IN', 'https://crikasauli.nic.in/', 'https://openalex.org/I4210108585', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(292, 'Shiv Nadar University', 'Dadri', 'IN', 'https://www.snu.edu.in/', 'https://openalex.org/I26604189', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(293, 'St. Joseph\'s Institute of Technology', 'Chennai', 'IN', 'https://www.stjosephstechnology.ac.in/web/index.html', 'https://openalex.org/I4210101093', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(294, 'Indian Institute of Astrophysics', 'Bengaluru', 'IN', 'https://www.iiap.res.in', 'https://openalex.org/I140717209', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(295, 'Government Medical College and Hospital', 'Akola', 'IN', 'http://www.gmcakola.in/', 'https://openalex.org/I4210136170', 0, '2025-11-30 04:33:32', '2025-11-30 04:34:35'),
(296, 'Inter-University Accelerator Centre', 'New Delhi', 'IN', 'https://iuac.res.in', 'https://openalex.org/I4210089002', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(297, 'Atal Bihari Vajpayee Indian Institute of Information Technology and Management', 'Gwalior', 'IN', 'http://www.iiitm.ac.in/', 'https://openalex.org/I9747756', 0, '2025-11-30 04:33:32', '2025-11-30 04:33:32'),
(298, 'Mizoram University', 'Aizawl', 'IN', 'https://mzu.edu.in', 'https://openalex.org/I195459967', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(299, 'Safdarjang Hospital', 'New Delhi', 'IN', 'http://vmmc-sjh.nic.in/index1.asp?linkid=221', 'https://openalex.org/I1312996466', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(300, 'International Crops Research Institute for the Semi-Arid Tropics', 'Patancheru', 'IN', 'http://www.icrisat.org/', 'https://openalex.org/I4210163774', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(301, 'Punjab Technical University', 'Kapurthala Town', 'IN', 'http://www.ptu.ac.in/', 'https://openalex.org/I94616015', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(302, 'Sir Ganga Ram Hospital', 'New Delhi', 'IN', 'http://sgrh.com/', 'https://openalex.org/I4210113434', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(303, 'Institute of Genomics and Integrative Biology', 'Delhi', 'IN', 'http://www.igib.res.in/', 'https://openalex.org/I177828482', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(304, 'Veer Surendra Sai University of Technology', 'Sambalpur', 'IN', 'https://www.vssut.ac.in', 'https://openalex.org/I185065464', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(305, 'KLE Technological University', 'Hubballi', 'IN', 'https://www.kletech.ac.in/', 'https://openalex.org/I3132975163', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(306, 'International Institute of Information Technology, Hyderabad', 'Hyderabad', 'IN', 'https://www.iiit.ac.in/', 'https://openalex.org/I64189192', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(307, 'O. P. Jindal Global University', 'Sonīpat', 'IN', 'https://jgu.edu.in', 'https://openalex.org/I4210129200', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(308, 'Indian Institute of Tropical Meteorology', 'Pune', 'IN', 'http://www.tropmet.res.in/', 'https://openalex.org/I1333651918', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(309, 'CMR University', 'Bengaluru', 'IN', 'http://www.cmr.edu.in/', 'https://openalex.org/I4210104573', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(310, 'Shoolini University', 'Solan', 'IN', 'https://shooliniuniversity.com', 'https://openalex.org/I4210133311', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(311, 'Lokmanya Tilak Municipal General Hospital and Lokmanya Tilak Municipal Medical College', 'Mumbai', 'IN', 'http://www.ltmgh.com/frontview/index.aspx', 'https://openalex.org/I2800471911', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(312, 'Odisha University of Agriculture and Technology', 'Bhubaneswar', 'IN', 'http://www.ouat.nic.in/', 'https://openalex.org/I13567498', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(313, 'English and Foreign Languages University', 'Hyderabad', 'IN', 'https://www.efluniversity.ac.in', 'https://openalex.org/I3131578490', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(314, 'Forest Research Institute', 'Dehra Dūn', 'IN', 'http://fri.icfre.gov.in/', 'https://openalex.org/I128076159', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(315, 'Kumaun University', 'Nainital', 'IN', 'http://www.kunainital.ac.in/', 'https://openalex.org/I119311299', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(316, 'Central University of Punjab', 'Bathinda', 'IN', 'https://cup.edu.in', 'https://openalex.org/I114724429', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(317, 'International Institute of Information Technology Bangalore', 'Bengaluru', 'IN', 'https://iiitb.ac.in', 'https://openalex.org/I181514455', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(318, 'Madras Medical College', 'Chennai', 'IN', 'http://www.mmc.tn.gov.in/', 'https://openalex.org/I159337121', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(319, 'Central Marine Fisheries Research Institute', 'Kochi', 'IN', 'http://www.cmfri.org.in/', 'https://openalex.org/I899802', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(320, 'National Institute of Technology Jamshedpur', 'Jamshedpur', 'IN', 'https://nitjsr.ac.in', 'https://openalex.org/I187761245', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(321, 'Dibrugarh University', 'Dibrugarh', 'IN', 'http://www.dibru.ac.in/', 'https://openalex.org/I64128412', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(322, 'Dr. M.G.R. Educational and Research Institute', 'Chennai', 'IN', 'http://www.drmgrdu.ac.in/', 'https://openalex.org/I19926482', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(323, 'Guru Ghasidas Vishwavidyalaya', 'Bilāspur', 'IN', 'http://www.ggu.ac.in/', 'https://openalex.org/I26285277', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(324, 'Government Dental College and Hospital', 'Ahmedabad', 'IN', 'http://www.gdchahmd.org/', 'https://openalex.org/I4210130008', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(325, 'Central Glass and Ceramic Research Institute', 'Kolkata', 'IN', 'http://www.cgcri.res.in/', 'https://openalex.org/I1309307044', 0, '2025-11-30 04:33:33', '2025-11-30 04:33:33'),
(326, 'Institute of Physics, Bhubaneshwar', 'Bhubaneswar', 'IN', 'https://www.iopb.res.in', 'https://openalex.org/I40912709', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(327, 'Gandhi Medical College & Hospital', 'Secunderabad', 'IN', 'http://www.gandhihospital.in/', 'https://openalex.org/I15853019', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(328, 'Raman Research Institute', 'Bengaluru', 'IN', 'https://www.rri.res.in', 'https://openalex.org/I119598438', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(329, 'Kerala Veterinary and Animal Sciences University', 'Kalpatta', 'IN', 'https://www.kvasu.ac.in', 'https://openalex.org/I335685885', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(330, 'Command Hospital', 'Lucknow', 'IN', NULL, 'https://openalex.org/I4210161889', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(331, 'B.S. Abdur Rahman Crescent Institute of Science & Technology', 'Chennai', 'IN', 'https://crescent.education/', 'https://openalex.org/I94948490', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(332, 'Infosys (India)', 'Bengaluru', 'IN', 'https://www.infosys.com/', 'https://openalex.org/I110675161', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(333, 'International Institute of Information Technology', 'Bhubaneswar', 'IN', 'http://www.iiit-bh.ac.in/', 'https://openalex.org/I4210097016', 0, '2025-11-30 04:33:34', '2025-11-30 04:34:10'),
(334, 'Nizam\'s Institute of Medical Sciences', 'Hyderabad', 'IN', 'http://www.nims.edu.in/', 'https://openalex.org/I139669409', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(335, 'Public Health Foundation of India', 'New Delhi', 'IN', 'http://www.phfi.org/', 'https://openalex.org/I74653059', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(336, 'Institute for Plasma Research', 'Gandhinagar', 'IN', 'http://www.ipr.res.in/', 'https://openalex.org/I4210106276', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(337, 'Hindu College of Pharmacy', 'Sonīpat', 'IN', 'http://www.hcpsonepat.org/', 'https://openalex.org/I4210151968', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(338, 'Goa University', 'Taleigao', 'IN', 'https://www.unigoa.ac.in/', 'https://openalex.org/I140887281', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(339, 'Charotar University of Science and Technology', 'Anand', 'IN', 'http://charusat.edu.in/', 'https://openalex.org/I33459947', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(340, 'Shree Guru Gobind Singh Tricentenary University', 'Gurgaon', 'IN', 'https://sgtuniversity.ac.in/', 'https://openalex.org/I3130021832', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(341, 'Chaitanya Bharathi Institute of Technology', 'Hyderabad', 'IN', 'https://www.cbit.ac.in', 'https://openalex.org/I134892692', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(342, 'Kerala Agricultural University', 'Thrissur', 'IN', 'https://www.kau.in', 'https://openalex.org/I54021868', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(343, 'Kuvempu University', 'Shimoga', 'IN', 'http://kuvempu.ac.in', 'https://openalex.org/I178319760', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(344, 'Central Institute of Medicinal and Aromatic Plants', 'Lucknow', 'IN', 'http://www.cimap.res.in/english/index.php', 'https://openalex.org/I68145777', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(345, 'Apollo Hospitals', 'Ahmedabad', 'IN', 'http://apolloahd.com/', 'https://openalex.org/I4210159024', 0, '2025-11-30 04:33:34', '2025-11-30 04:34:25'),
(346, 'Dr. Yashwant Singh Parmar University of Horticulture and Forestry', 'Solan', 'IN', 'https://www.yspuniversity.ac.in', 'https://openalex.org/I211055903', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(347, 'Assam Agricultural University', 'Jorhāt', 'IN', 'http://www.aau.ac.in/', 'https://openalex.org/I35839044', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(348, 'University of Engineering & Management', 'Kolkata', 'IN', 'https://uem.edu.in', 'https://openalex.org/I1296725772', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(349, 'National Defence Academy', 'Pune', 'IN', 'http://www.nda.nic.in/', 'https://openalex.org/I11414854', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(350, 'Wildlife Institute of India', 'Dehra Dūn', 'IN', 'http://www.wii.gov.in/', 'https://openalex.org/I31888360', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(351, 'Narayana Health', 'Bengaluru', 'IN', 'http://www.narayanahealth.org/', 'https://openalex.org/I288496929', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(352, 'National Institute of Nutrition', 'Hyderabad', 'IN', 'http://www.icmr.nic.in/000268/000229/nin.htm', 'https://openalex.org/I53421241', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(353, 'Institute of Life Sciences', 'Bhubaneswar', 'IN', 'https://www.ils.res.in/', 'https://openalex.org/I4210118921', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(354, 'Jaypee University of Information Technology', 'Solan', 'IN', 'https://www.juit.ac.in', 'https://openalex.org/I153954893', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(355, 'Raisoni Group of Institutions', 'Nagpur', 'IN', 'https://raisoni.net', 'https://openalex.org/I4210146358', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(356, 'Sant Longowal Institute of Engineering and Technology', 'Sangrur', 'IN', 'http://sliet.ac.in/', 'https://openalex.org/I63568130', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(357, 'Teerthanker Mahaveer University', 'Morādābād', 'IN', 'https://www.tmu.ac.in', 'https://openalex.org/I134705546', 0, '2025-11-30 04:33:34', '2025-11-30 04:33:34'),
(358, 'Govind Ballabh Pant Hospital', 'New Delhi', 'IN', 'http://www.delhi.gov.in/wps/wcm/connect/doit_gbph/GBPH/Home/About+Us', 'https://openalex.org/I4210156823', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(359, 'Sambalpur University', 'Sambalpur', 'IN', 'http://www.suniv.ac.in/', 'https://openalex.org/I112754052', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(360, 'Manipur University', 'Imphal', 'IN', 'https://manipuruniv.ac.in', 'https://openalex.org/I16471300', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(361, 'Gautam Buddha University', 'Greater Noida', 'IN', 'https://www.gbu.ac.in', 'https://openalex.org/I72769676', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(362, 'MIT World Peace University', 'Pune', 'IN', 'https://mitwpu.edu.in/', 'https://openalex.org/I4210088227', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(363, 'Institute of Molecular Medicine', 'Kolkata', 'IN', 'http://www.immindia.org/', 'https://openalex.org/I4210146488', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(364, 'Gandhigram Rural Institute', 'Dindigul', 'IN', 'http://www.ruraluniv.ac.in/', 'https://openalex.org/I880551032', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(365, 'National Environmental Engineering Research Institute', 'Nagpur', 'IN', 'http://www.neeri.res.in/', 'https://openalex.org/I170347488', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(366, 'Tamil Nadu Dr. M.G.R. Medical University', 'Chennai', 'IN', 'http://web.tnmgrmu.ac.in/', 'https://openalex.org/I2800701874', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(367, 'Indian Institute of Information Technology Design and Manufacturing Jabalpur', 'Jabalpur', 'IN', 'https://iiitdmj.ac.in', 'https://openalex.org/I207223250', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(368, 'Variable Energy Cyclotron Centre', 'Kolkata', 'IN', 'http://www.vecc.gov.in/', 'https://openalex.org/I1279672703', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(369, 'Ambedkar University Delhi', 'Delhi', 'IN', 'https://aud.ac.in/', 'https://openalex.org/I190765188', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(370, 'Aravind Eye Hospital', 'Madurai', 'IN', 'https://aravind.org', 'https://openalex.org/I2800958399', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(371, 'JSS Medical College and Hospital', 'Mysore', 'IN', 'http://jssmedicalcollege.in/', 'https://openalex.org/I86826812', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(372, 'Maulana Abul Kalam Azad University of Technology, West Bengal', 'Kolkata', 'IN', 'https://makautwb.ac.in', 'https://openalex.org/I99601430', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(373, 'Institute of Microbial Technology', 'Chandigarh', 'IN', 'http://www.imtech.res.in/', 'https://openalex.org/I4210147764', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(374, 'Dayanand Medical College & Hospital', 'Ludhiana', 'IN', 'http://www.dmch.edu/', 'https://openalex.org/I4210088867', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(375, 'Sankara Nethralaya', 'Chennai', 'IN', 'http://www.sankaranethralaya.org/', 'https://openalex.org/I118298837', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(376, 'North East Institute of Science and Technology', 'Jorhāt', 'IN', 'http://www.rrljorhat.res.in/', 'https://openalex.org/I2800857658', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(377, 'Government Medical College, Amritsar', 'Amritsar', 'IN', 'http://www.gmc.edu.in/', 'https://openalex.org/I2800494708', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(378, 'Patna Medical College and Hospital', 'Patna', 'IN', 'http://ww2.patnamedicalcollege.com/', 'https://openalex.org/I173956350', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(379, 'Maharaja Engineering College', 'Avinashi', 'IN', 'http://maharaja.in/MEC/', 'https://openalex.org/I2799452066', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(380, 'Jawaharlal Nehru Medical College Hospital', 'Aligarh', 'IN', 'http://amu.ac.in/principal.jsp?did=10146', 'https://openalex.org/I154971649', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(381, 'Vivekananda Global University', 'Jaipur', 'IN', 'https://vgu.ac.in/', 'https://openalex.org/I4210125057', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(382, 'IMS Unison University', 'Dehra Dūn', 'IN', 'http://www.iuu.ac/', 'https://openalex.org/I2800301432', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(383, 'Centurion University of Technology and Management', 'Bhubaneswar', 'IN', 'https://cutm.ac.in', 'https://openalex.org/I47639616', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(384, 'Tata Institute of Social Sciences', 'Mumbai', 'IN', 'http://www.tiss.edu/', 'https://openalex.org/I79741504', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(385, 'Saurashtra University', 'Rajkot', 'IN', 'http://www.saurashtrauniversity.edu/UserSideSaurashtr_Dyanamic/Default.aspx', 'https://openalex.org/I197181853', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(386, 'National Institute of Pharmaceutical Education and Research', 'Hājīpur', 'IN', 'http://niperhajipur.ac.in/', 'https://openalex.org/I4210098333', 0, '2025-11-30 04:33:35', '2025-11-30 04:34:36'),
(387, 'Defence Metallurgical Research Laboratory', 'Hyderabad', 'IN', 'https://drdo.gov.in/hi/labs-and-establishments/defence-metallurgical-research-laboratory-dmrl', 'https://openalex.org/I202429437', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(388, 'Centre for Development of Advanced Computing', 'Pune', 'IN', 'http://cdac.in/', 'https://openalex.org/I1331500379', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(389, 'Indian Institute of Management Lucknow', 'Lucknow', 'IN', 'https://www.iiml.ac.in', 'https://openalex.org/I91699865', 0, '2025-11-30 04:33:35', '2025-11-30 04:33:35'),
(390, 'National Institute of Technology Meghalaya', 'Shillong', 'IN', 'http://nitmeghalaya.in/nitm/index.html', 'https://openalex.org/I9523339', 0, '2025-11-30 04:33:36', '2025-11-30 04:33:36'),
(391, 'Tamil Nadu Veterinary and Animal Sciences University', 'Chennai', 'IN', 'http://www.tanuvas.tn.nic.in/', 'https://openalex.org/I82452031', 0, '2025-11-30 04:33:36', '2025-11-30 04:33:36'),
(392, 'Rajiv Gandhi University of Health Sciences', 'Bengaluru', 'IN', 'http://www.rguhs.ac.in/', 'https://openalex.org/I286135121', 0, '2025-11-30 04:33:36', '2025-11-30 04:33:36'),
(393, 'Maharana Pratap University of Agriculture and Technology', 'Udaipur', 'IN', 'http://www.mpuat.ac.in/', 'https://openalex.org/I253568910', 0, '2025-11-30 04:33:36', '2025-11-30 04:33:36'),
(394, 'Indraprastha Apollo Hospitals', 'New Delhi', 'IN', 'http://www.apollohospdelhi.com/', 'https://openalex.org/I1302839792', 0, '2025-11-30 04:33:36', '2025-11-30 04:33:36'),
(395, 'Bennett University', 'Greater Noida', 'IN', 'https://www.bennett.edu.in/', 'https://openalex.org/I3129773123', 0, '2025-11-30 04:33:42', '2025-11-30 04:33:42'),
(396, 'National Aerospace Laboratories', 'Bengaluru', 'IN', 'http://www.nal.res.in/', 'https://openalex.org/I1286499117', 0, '2025-11-30 04:33:42', '2025-11-30 04:33:42'),
(397, 'Shri Mata Vaishno Devi University', 'Katra', 'IN', 'https://www.smvdu.ac.in/', 'https://openalex.org/I59179055', 0, '2025-11-30 04:33:42', '2025-11-30 04:33:42'),
(398, 'Indian Institute of Space Science and Technology', 'Trivandrum', 'IN', 'https://www.iist.ac.in/', 'https://openalex.org/I882761360', 0, '2025-11-30 04:33:42', '2025-11-30 04:33:42'),
(399, 'Ramakrishna Mission Vivekananda Educational and Research Institute', 'Kolkata', 'IN', 'https://rkmvu.ac.in', 'https://openalex.org/I34034455', 0, '2025-11-30 04:33:42', '2025-11-30 04:33:42'),
(400, 'Indira Gandhi National Open University', 'New Delhi', 'IN', 'https://www.ignou.ac.in', 'https://openalex.org/I51969498', 0, '2025-11-30 04:33:42', '2025-11-30 04:33:42'),
(401, 'Defence Institute of Advanced Technology', 'Pune', 'IN', 'https://diat.ac.in', 'https://openalex.org/I156406944', 0, '2025-11-30 04:33:42', '2025-11-30 04:33:42'),
(402, 'Vinayaka Missions University', 'Salem', 'IN', 'http://www.vinayakamission.com/', 'https://openalex.org/I175548057', 0, '2025-11-30 04:33:42', '2025-11-30 04:33:42'),
(403, 'Indian Institute of Management Bangalore', 'Bengaluru', 'IN', 'http://www.iimb.ernet.in/', 'https://openalex.org/I44430492', 0, '2025-11-30 04:33:43', '2025-11-30 04:33:43'),
(404, 'Sri Siddhartha Medical College', 'Tumakuru', 'IN', 'http://www.ssmctumkur.org/', 'https://openalex.org/I510634243', 0, '2025-11-30 04:33:43', '2025-11-30 04:33:43'),
(405, 'Indian Institute of Horticultural Research', 'Bengaluru', 'IN', 'http://www.iihr.res.in/', 'https://openalex.org/I1332470094', 0, '2025-11-30 04:33:43', '2025-11-30 04:33:43'),
(406, 'Sriram Chandra Bhanja Medical College Hospital', 'Cuttack', 'IN', 'http://scbmch.nic.in/', 'https://openalex.org/I3133213366', 0, '2025-11-30 04:33:43', '2025-11-30 04:33:43'),
(407, 'Gulbarga University', 'Gulbarga', 'IN', 'http://www.gulbargauniversity.kar.nic.in/', 'https://openalex.org/I201958307', 0, '2025-11-30 04:33:43', '2025-11-30 04:33:43'),
(408, 'Centre for Social Sciences and Humanities', 'New Delhi', 'IN', 'http://www.csh-delhi.com/', 'https://openalex.org/I4210108414', 0, '2025-11-30 04:33:43', '2025-11-30 04:33:43'),
(409, 'Atal Bihari Vajpayee Institute of Medical Sciences and Dr. Ram Manohar Lohia Hospital', 'New Delhi', 'IN', 'http://rmlh.nic.in', 'https://openalex.org/I2800585909', 0, '2025-11-30 04:33:43', '2025-11-30 04:33:43'),
(410, 'International Centre for Genetic Engineering and Biotechnology', 'New Delhi', 'IN', 'http://www.icgeb.org/home-nd.html', 'https://openalex.org/I4210142124', 0, '2025-11-30 04:33:43', '2025-11-30 04:33:43'),
(411, 'Bangalore Medical College and Research Institute', 'Bengaluru', 'IN', 'http://www.bmcri.org/', 'https://openalex.org/I876098953', 0, '2025-11-30 04:33:43', '2025-11-30 04:33:43'),
(412, 'Mohanlal Sukhadia University', 'Udaipur', 'IN', 'https://www.mlsu.ac.in/', 'https://openalex.org/I43218427', 0, '2025-11-30 04:33:43', '2025-11-30 04:33:43'),
(413, 'Indian Institute of Management Calcutta', 'Kolkata', 'IN', 'https://www.iimcal.ac.in/', 'https://openalex.org/I71495548', 0, '2025-11-30 04:33:43', '2025-11-30 04:33:43'),
(414, 'Advanced Centre for Treatment, Research and Education in Cancer', 'Mumbai', 'IN', 'http://www.actrec.gov.in/', 'https://openalex.org/I4210157422', 0, '2025-11-30 04:33:43', '2025-11-30 04:33:43'),
(415, 'M.J.P. Rohilkhand University', 'Bareilly', 'IN', 'https://www.mjpru.ac.in', 'https://openalex.org/I139858224', 0, '2025-11-30 04:33:43', '2025-11-30 04:33:43'),
(416, 'Social Service Sericulture Project Trust', 'Dindigul', 'IN', 'http://www.sssptrust.org/', 'https://openalex.org/I4210119396', 0, '2025-11-30 04:33:43', '2025-11-30 04:33:43'),
(417, 'Harish-Chandra Research Institute', 'Allahabad', 'IN', 'http://www.hri.res.in/', 'https://openalex.org/I35409948', 0, '2025-11-30 04:33:43', '2025-11-30 04:33:43'),
(418, 'Max Super Speciality Hospital', 'Delhi', 'IN', 'http://www.maxhealthcare.in/hospital-network/max-super-speciality-hospital-saket', 'https://openalex.org/I2802464703', 0, '2025-11-30 04:33:43', '2025-11-30 04:33:43'),
(419, 'Indian Institute of Integrative Medicine', 'Jammu', 'IN', 'http://www.iiim.res.in/', 'https://openalex.org/I4210108071', 0, '2025-11-30 04:33:43', '2025-11-30 04:33:43'),
(420, 'Manipal Hospital', 'Bengaluru', 'IN', 'http://www.manipalhospitals.com/', 'https://openalex.org/I4210165321', 0, '2025-11-30 04:33:43', '2025-11-30 04:33:43'),
(421, 'Jiwaji University', 'Gwalior', 'IN', 'http://www.jiwaji.edu/', 'https://openalex.org/I102471911', 0, '2025-11-30 04:33:43', '2025-11-30 04:33:43'),
(422, 'Anand Agricultural University', 'Anand', 'IN', 'https://www.aau.in', 'https://openalex.org/I34750443', 0, '2025-11-30 04:33:43', '2025-11-30 04:33:43'),
(423, 'Sikkim Manipal University', 'Gangtok', 'IN', 'http://smu.edu.in/smu.html', 'https://openalex.org/I81433678', 0, '2025-11-30 04:33:44', '2025-11-30 04:33:44'),
(424, 'Deenbandhu Chhotu Ram University of Science and Technology', 'New Delhi', 'IN', 'http://www.dcrustm.ac.in/', 'https://openalex.org/I253188195', 0, '2025-11-30 04:33:44', '2025-11-30 04:33:44'),
(425, 'Dehradun Institute of Technology University', 'Dehra Dūn', 'IN', 'https://www.dituniversity.edu.in', 'https://openalex.org/I933318745', 0, '2025-11-30 04:33:44', '2025-11-30 04:33:44'),
(426, 'Swami Keshwanand Rajasthan Agricultural University', 'Bikaner', 'IN', 'http://raubikaner.org/', 'https://openalex.org/I2801834944', 0, '2025-11-30 04:33:44', '2025-11-30 04:33:44'),
(427, 'Central Electronics Engineering Research Institute', 'Pilāni', 'IN', 'http://www.ceeri.res.in/', 'https://openalex.org/I41763900', 0, '2025-11-30 04:33:44', '2025-11-30 04:33:44'),
(428, 'National Hospital', 'Kozhikode', 'IN', 'http://www.nationalhospitals.com/#', 'https://openalex.org/I4210087204', 0, '2025-11-30 04:33:44', '2025-11-30 04:33:44'),
(429, 'Guru Angad Dev Veterinary and Animal Sciences University', 'Ludhiana', 'IN', 'http://www.gadvasu.in/', 'https://openalex.org/I223471776', 0, '2025-11-30 04:33:44', '2025-11-30 04:33:44'),
(430, 'Shri Vile Parle Kelavani Mandal', 'Mumbai', 'IN', 'http://www.svkm.ac.in/#', 'https://openalex.org/I4210132590', 0, '2025-11-30 04:33:44', '2025-11-30 04:33:44'),
(431, 'Tripura University', 'Agartala', 'IN', 'https://www.tripurauniv.ac.in', 'https://openalex.org/I72677176', 0, '2025-11-30 04:33:44', '2025-11-30 04:33:44'),
(432, 'Seva Mandir', 'Udaipur', 'IN', 'http://www.sevamandir.org/', 'https://openalex.org/I4210103394', 0, '2025-11-30 04:33:44', '2025-11-30 04:33:44'),
(433, 'Jawaharlal Nehru Krishi Vishwa Vidyalaya', 'Jabalpur', 'IN', 'http://jnkvv.org/', 'https://openalex.org/I290859477', 0, '2025-11-30 04:33:44', '2025-11-30 04:33:44'),
(434, 'Techno India University', 'Kolkata', 'IN', 'https://technoindiauniversity.ac.in/', 'https://openalex.org/I1288043984', 0, '2025-11-30 04:33:44', '2025-11-30 04:33:44'),
(435, 'Acharya N. G. Ranga Agricultural University', 'Guntur', 'IN', 'https://angrau.ac.in', 'https://openalex.org/I12419238', 0, '2025-11-30 04:33:44', '2025-11-30 04:33:44'),
(436, 'Chhatrapati Shahu Ji Maharaj University', 'Kanpur', 'IN', 'http://www.kanpuruniversity.org/', 'https://openalex.org/I229991691', 0, '2025-11-30 04:33:44', '2025-11-30 04:33:44'),
(437, 'Pandit Ravishankar Shukla University', 'Raipur', 'IN', 'http://www.prsu.ac.in/', 'https://openalex.org/I38192578', 0, '2025-11-30 04:33:44', '2025-11-30 04:33:44'),
(438, 'Indian Institute of Science Education and Research Thiruvananthapuram', 'Thiruvananthapuram', 'IN', 'https://www.iisertvm.ac.in', 'https://openalex.org/I50557253', 0, '2025-11-30 04:33:44', '2025-11-30 04:33:44'),
(439, 'India Meteorological Department', 'New Delhi', 'IN', 'http://www.imd.gov.in/Welcome%20To%20IMD/Welcome.php', 'https://openalex.org/I2802599571', 0, '2025-11-30 04:33:44', '2025-11-30 04:33:44'),
(440, 'Defence Research and Development Organisation', 'New Delhi', 'IN', 'https://www.drdo.gov.in/', 'https://openalex.org/I1340206300', 0, '2025-11-30 04:33:44', '2025-11-30 04:33:44'),
(441, 'Sanskriti Samvardhan Mandal', 'Nanded', 'IN', 'http://ssmandal.net/', 'https://openalex.org/I4210093989', 0, '2025-11-30 04:33:44', '2025-11-30 04:33:44'),
(442, 'Maharishi University of Management and Technology', 'Ratanpur', 'IN', 'http://www.mumt.com/index.jsp', 'https://openalex.org/I4210133689', 0, '2025-11-30 04:33:44', '2025-11-30 04:33:44'),
(443, 'Jai Narain Vyas University', 'Jodhpur', 'IN', 'http://www.jnvu.edu.in/', 'https://openalex.org/I59100879', 0, '2025-11-30 04:33:44', '2025-11-30 04:33:44'),
(444, 'ESIC Hospital', 'Chennai', 'IN', 'http://www.esichennai.org/esihospital_KK.htm', 'https://openalex.org/I4210141935', 0, '2025-11-30 04:33:44', '2025-11-30 04:35:32'),
(445, 'R. G. Kar Medical College and Hospital', 'Kolkata', 'IN', 'http://rgkarmedicalcollege.org/', 'https://openalex.org/I336022086', 0, '2025-11-30 04:33:44', '2025-11-30 04:33:44'),
(446, 'M.S. Ramaiah Medical College', 'Bengaluru', 'IN', 'http://www.msrmc.ac.in/', 'https://openalex.org/I4210134671', 0, '2025-11-30 04:33:44', '2025-11-30 04:33:44'),
(447, 'KPC Medical College and Hospital', 'Kolkata', 'IN', 'http://www.kpcmedicalcollege.org/', 'https://openalex.org/I243989293', 0, '2025-11-30 04:33:44', '2025-11-30 04:33:44'),
(448, 'National Institute of Immunology', 'New Delhi', 'IN', 'http://www.nii.res.in/', 'https://openalex.org/I4210156726', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(449, 'Guntur Medical College', 'Guntur', 'IN', 'http://gunturmedicalcollege.edu.in/', 'https://openalex.org/I179150554', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(450, 'Indian Institute of Technology Bhilai', 'Bhilai', 'IN', 'https://www.iitbhilai.ac.in/', 'https://openalex.org/I4210121466', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(451, 'Berhampur University', 'Brahmapur', 'IN', 'http://www.buodisha.edu.in/', 'https://openalex.org/I90752740', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(452, 'Grant Medical College and Sir Jamshedjee Jeejeebhoy Group of Hospitals', 'Mumbai', 'IN', 'http://www.gmcjjh.org/', 'https://openalex.org/I169117269', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(453, 'Sree Balaji Dental College and Hospital', 'Chennai', 'IN', 'http://www.sbdch.ac.in/', 'https://openalex.org/I4210131094', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(454, 'Shri Venkateshwara University', 'Gajraula', 'IN', 'http://svu.edu.in/', 'https://openalex.org/I15517640', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(455, 'Swami Vivekanand College of Pharmacy', 'Namakkal', 'IN', 'http://vivekanandhapharmacy.org', 'https://openalex.org/I4210115326', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(456, 'Institute of Himalayan Bioresource Technology', 'Pālampur', 'IN', 'http://www.ihbt.res.in/', 'https://openalex.org/I4210128326', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(457, 'Mahatma Gandhi Memorial Medical College', 'Indore', 'IN', 'http://www.mgmmcindore.org/', 'https://openalex.org/I2801183603', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(458, 'Sacred Heart College', 'Kochi', 'IN', 'http://www.shcollege.ac.in/Home', 'https://openalex.org/I4210115584', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(459, 'Solid State Physics Laboratory', 'Delhi', 'IN', 'https://www.drdo.gov.in/hi/labs-and-establishments/solid-state-physics-laboratory-sspl-hi', 'https://openalex.org/I140777494', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(460, 'NIMS University', 'Jaipur', 'IN', 'https://www.nimsuniversity.org', 'https://openalex.org/I2800157045', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(461, 'International Institute for Population Sciences', 'Mumbai', 'IN', 'http://iipsindia.org/', 'https://openalex.org/I197882922', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(462, 'Madan Mohan Malaviya University of Technology', 'Gorakhpur', 'IN', 'http://www.mmmut.ac.in/Index.aspx', 'https://openalex.org/I2799532815', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(463, 'Mahatma Gandhi Medical College and Research Institute', 'Puducherry', 'IN', 'http://mgmcri.ac.in/', 'https://openalex.org/I1302623664', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(464, 'National Bureau of Agricultural Insect Resources', 'Bengaluru', 'IN', 'http://new.nbair.res.in/', 'https://openalex.org/I4210129780', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(465, 'Chaudhary Sarwan Kumar Himachal Pradesh Krishi Vishvavidyalaya', 'Pālampur', 'IN', 'http://www.hillagric.ac.in/', 'https://openalex.org/I377099284', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(466, 'Sri Krishnadevaraya University', 'Anantapur', 'IN', 'http://www.skuniversity.org/', 'https://openalex.org/I4031970', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(467, 'National Metallurgical Laboratory', 'Jamshedpur', 'IN', 'http://www.nmlindia.org/', 'https://openalex.org/I4210111921', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(468, 'ICAR Research Complex for NEH Region', 'Shillong', 'IN', 'https://icarrcer.icar.gov.in/', 'https://openalex.org/I4210111975', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(469, 'Army Hospital Research and Referral', 'New Delhi', 'IN', NULL, 'https://openalex.org/I4210165779', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(470, 'Department of Biotechnology', 'New Delhi', 'IN', 'http://www.dbtindia.nic.in/', 'https://openalex.org/I3141573830', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(471, 'Solapur University', 'Solapur', 'IN', 'http://su.digitaluniversity.ac/', 'https://openalex.org/I155907036', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(472, 'P. D. Hinduja Hospital and Medical Research Centre', 'Mumbai', 'IN', 'http://www.hindujahospital.com/', 'https://openalex.org/I2800474033', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(473, 'Indira Gandhi Medical College', 'Shimla', 'IN', 'http://www.igmcshimla.org/', 'https://openalex.org/I2799277952', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(474, 'Indira Gandhi Institute of Medical Sciences', 'Patna', 'IN', 'http://www.igims.org/#', 'https://openalex.org/I238035932', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(475, 'Chennai Mathematical Institute', 'Chennai', 'IN', 'https://www.cmi.ac.in', 'https://openalex.org/I19149307', 0, '2025-11-30 04:33:45', '2025-11-30 04:33:45'),
(476, 'Gurukul Kangri Vishwavidyalaya', 'Haridwar', 'IN', 'http://gkv.ac.in/', 'https://openalex.org/I114796046', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(477, 'Topiwala National Medical College & BYL Nair Charitable Hospital', 'Mumbai', 'IN', 'http://www.tnmcnair.com/', 'https://openalex.org/I3024917321', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(478, 'Advanced Materials and Processes Research Institute', 'Bhopal', 'IN', 'https://ampri.res.in/', 'https://openalex.org/I115635661', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(479, 'G Pulla Reddy Dental College & Hospital', 'Kurnool', 'IN', 'http://gprdch.com/', 'https://openalex.org/I4210134386', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(480, 'Tata Steel (India)', 'Mumbai', 'IN', 'http://www.tatasteel.com/', 'https://openalex.org/I87816474', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(481, 'Tumkur University', 'Tumakuru', 'IN', 'http://www.tumkuruniversity.ac.in/', 'https://openalex.org/I53508799', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(482, 'Institute of Rural Management Anand', 'Anand', 'IN', 'https://www.irma.ac.in/', 'https://openalex.org/I180801515', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(483, 'Bombay Hospital', 'Mumbai', 'IN', 'http://www.bombayhospital.com/', 'https://openalex.org/I4210135821', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(484, 'Ministry of Culture', 'Delhi', 'IN', 'https://www.indiaculture.nic.in/', 'https://openalex.org/I1314849024', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(485, 'Institute of Bioinformatics', 'Bengaluru', 'IN', 'https://www.ibioinformatics.org', 'https://openalex.org/I4210148697', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(486, 'Gujarat Technological University', 'Ahmedabad', 'IN', 'http://www.gtu.ac.in/', 'https://openalex.org/I29563240', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(487, 'Sher-e-Kashmir University of Agricultural Sciences and Technology of Jammu', 'Jammu', 'IN', 'http://www.skuast.org/', 'https://openalex.org/I235110982', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(488, 'Haldia Institute of Technology', 'Haldia', 'IN', 'http://hithaldia.in/main/', 'https://openalex.org/I175399479', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(489, 'Gandhi Medical College', 'Bhopal', 'IN', 'http://gmcbhopal.net/', 'https://openalex.org/I4210151372', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(490, 'SRM Dental College', 'Chennai', 'IN', 'http://srmdentalcollege.ac.in/', 'https://openalex.org/I4210101314', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(491, 'Dr D Y Patil Dental College & Hospital', 'Pimpri', 'IN', 'http://dental.dpu.edu.in/', 'https://openalex.org/I4210162544', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(492, 'Dayalbagh Educational Institute', 'Agra', 'IN', 'https://www.dei.ac.in/dei', 'https://openalex.org/I178254495', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(493, 'Rabindranath Tagore Medical College', 'Udaipur', 'IN', 'http://medicaleducation.rajasthan.gov.in/udaipur/index.asp', 'https://openalex.org/I2803033815', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(494, 'DAV University', 'Jalandhar', 'IN', 'http://www.davuniversity.org/', 'https://openalex.org/I1341847395', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(495, 'Professor Jayashankar Telangana State Agricultural University', 'Hyderabad', 'IN', 'http://www.pjtsau.ac.in/', 'https://openalex.org/I4210092736', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(496, 'Institute of Liver and Biliary Sciences', 'New Delhi', 'IN', 'http://www.ilbs.in/', 'https://openalex.org/I4210123001', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(497, 'Central Scientific Instruments Organisation', 'Chandigarh', 'IN', 'https://www.csio.res.in/', 'https://openalex.org/I42095658', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(498, 'Avinashilingam University', 'Coimbatore', 'IN', 'https://www.avinuty.ac.in', 'https://openalex.org/I161045824', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(499, 'Ganesh Shankar Vidyarthi Memorial Medical College', 'Kanpur', 'IN', 'http://www.gsvmmedicalcollege.com/', 'https://openalex.org/I2802359691', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(500, 'Birla Institute of Technology and Science, Pilani - Goa Campus', 'Sancoale', 'IN', 'http://www.bits-pilani.ac.in/Goa/', 'https://openalex.org/I4210148827', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(501, 'People’s University', 'Bhopal', 'IN', 'http://peoplesuniversity.edu.in/peoples-home/index.php', 'https://openalex.org/I4210144829', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(502, 'Swami Ramanand Teerth Marathwada University', 'Nanded', 'IN', 'http://www.srtmun.ac.in/', 'https://openalex.org/I196652580', 0, '2025-11-30 04:33:46', '2025-11-30 04:33:46'),
(503, 'National Bureau of Plant Genetic Resources', 'New Delhi', 'IN', 'http://www.nbpgr.ernet.in/', 'https://openalex.org/I4210097415', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(504, 'Institute of Medical Sciences and Sum Hospital', 'Bhubaneswar', 'IN', 'http://soauniversity.ac.in/', 'https://openalex.org/I4210133319', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(505, 'Indian Agricultural Statistics Research Institute', 'New Delhi', 'IN', 'http://iasri.res.in/', 'https://openalex.org/I1141210', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(506, 'Ramakrishna Mission Vidyamandira', 'Howrah', 'IN', 'http://vidyamandira.ac.in/', 'https://openalex.org/I2799306724', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(507, 'Institute of Technology Management', 'Mussoorie', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/institute-technology-management-itm', 'https://openalex.org/I4210145362', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(508, 'Thiruvalluvar University', 'Vellore', 'IN', 'http://www.thiruvalluvaruniversity.ac.in/', 'https://openalex.org/I117381506', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(509, 'Central University of Haryana', 'Mahendragarh', 'IN', 'https://cuh.ac.in', 'https://openalex.org/I4210133503', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(510, 'B. J. Medical College & Sassoon Hospital', 'Pune', 'IN', 'http://www.bjmcpune.org/', 'https://openalex.org/I201202376', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(511, 'Dhanalakshmi Srinivasan Group of Institutions', 'Perambalur', 'IN', 'http://www.dsgroups.org', 'https://openalex.org/I4210146157', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(512, 'Bangur Institute of Neurosciences', 'Kolkata', 'IN', 'http://binkolkata.in/', 'https://openalex.org/I2800966917', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(513, 'Indian Institute of Petroleum', 'Dehra Dūn', 'IN', 'http://www.iip.res.in/', 'https://openalex.org/I84279003', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(514, 'Alliance University', 'Bengaluru', 'IN', 'https://www.alliance.edu.in/', 'https://openalex.org/I144614875', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(515, 'Narayana Dental College and Hospital', 'Nellore', 'IN', 'http://www.narayanadentalcollege.com/', 'https://openalex.org/I4210093231', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(516, 'Dr. A.P.J. Abdul Kalam Technical University', 'Lucknow', 'IN', 'https://aktu.ac.in/', 'https://openalex.org/I116943215', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(517, 'North Maharashtra University', 'Jalgaon', 'IN', 'http://www.nmu.ac.in/', 'https://openalex.org/I157117621', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(518, 'Krishi Vigyan Kendra, Ghatkhed Amravati', 'Mumbai', 'IN', 'http://www.kvkghatkhed.org/', 'https://openalex.org/I4210105086', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(519, 'Central University of Tamil Nadu', 'Thiruvarur', 'IN', 'https://cutn.ac.in/', 'https://openalex.org/I112471378', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(520, 'Energy and Resources Institute', 'New Delhi', 'IN', 'http://www.teriin.org/', 'https://openalex.org/I1286858202', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(521, 'Bundelkhand University', 'Jhānsi', 'IN', 'https://www.bujhansi.org/index.aspx', 'https://openalex.org/I190570697', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(522, 'Shri Jagdishprasad Jhabarmal Tibrewala University', 'Jhunjhunūn', 'IN', 'https://jjtu.ac.in', 'https://openalex.org/I341451707', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(523, 'Dr. Bhim Rao Ambedkar University', 'Agra', 'IN', 'http://www.dbrau.ac.in/', 'https://openalex.org/I147727580', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(524, 'Indian Institute of Technology Jammu', 'Jammu', 'IN', 'https://iitjammu.ac.in', 'https://openalex.org/I4210127441', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(525, 'K J Somaiya Medical College', 'Mumbai', 'IN', 'https://www.somaiya.edu', 'https://openalex.org/I50783897', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(526, 'National Institute of Malaria Research', 'New Delhi', 'IN', 'http://www.nimr.org.in/', 'https://openalex.org/I76782289', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(527, 'Rajiv Gandhi Technical University', 'Bhopal', 'IN', 'https://www.rgpv.ac.in/', 'https://openalex.org/I196622127', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(528, 'Harcourt Butler Technical University', 'Kanpur', 'IN', 'http://hbtu.ac.in/', 'https://openalex.org/I4210090456', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(529, 'Central University of Kerala', 'Kāsaragod', 'IN', 'https://www.cukerala.ac.in', 'https://openalex.org/I35340524', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(530, 'Noorul Islam University', 'Kanniyākumāri', 'IN', 'https://www.niuniv.com', 'https://openalex.org/I96797292', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(531, 'National Centre for Cell Science', 'Pune', 'IN', 'http://www.nccs.res.in/', 'https://openalex.org/I4210104670', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(532, 'Ahmedabad University', 'Ahmedabad', 'IN', 'https://ahduni.edu.in/', 'https://openalex.org/I52527943', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(533, 'International Management Institute', 'New Delhi', 'IN', 'http://www.imi.edu/', 'https://openalex.org/I158867519', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(534, 'Central Institute of Fisheries Education', 'Mumbai', 'IN', 'http://www.cife.edu.in/cifemod2/index.php', 'https://openalex.org/I581031', 0, '2025-11-30 04:33:47', '2025-11-30 04:33:47'),
(535, 'Govt. Dental College & Hospital', 'Nagpur', 'IN', 'http://www.gdchnagpur.com/', 'https://openalex.org/I4210165136', 0, '2025-11-30 04:33:48', '2025-11-30 04:33:48'),
(536, 'North Eastern Regional Institute of Science and Technology', 'Itanagar', 'IN', 'https://www.nerist.ac.in/', 'https://openalex.org/I160302567', 0, '2025-11-30 04:33:48', '2025-11-30 04:33:48'),
(537, 'Mahatma Gandhi Institute of Medical Sciences', 'Wardha', 'IN', 'https://www.mgims.ac.in/', 'https://openalex.org/I90978372', 0, '2025-11-30 04:33:48', '2025-11-30 04:33:48'),
(538, 'K S Hegde Medical Academy', 'Mangalore', 'IN', 'http://nitte.edu.in/kshema/', 'https://openalex.org/I60324483', 0, '2025-11-30 04:33:48', '2025-11-30 04:33:48'),
(539, 'Marwadi University', 'Rajkot', 'IN', 'https://www.marwadiuniversity.ac.in/', 'https://openalex.org/I3132999081', 0, '2025-11-30 04:33:48', '2025-11-30 04:33:48'),
(540, 'Indira Gandhi Delhi Technical University for Women', 'New Delhi', 'IN', 'https://www.igdtuw.ac.in/', 'https://openalex.org/I4210143260', 0, '2025-11-30 04:33:48', '2025-11-30 04:33:48'),
(541, 'University College for Women', 'Hyderabad', 'IN', 'http://www.oucwkoti.ac.in/', 'https://openalex.org/I2802287669', 0, '2025-11-30 04:33:48', '2025-11-30 04:33:48'),
(542, 'Rajasthan Technical University', 'Kota', 'IN', 'http://www.rtu.ac.in/RTU/', 'https://openalex.org/I159219196', 0, '2025-11-30 04:33:48', '2025-11-30 04:33:48'),
(543, 'Babasaheb Bhimrao Ambedkar Bihar University', 'Muzaffarpur', 'IN', 'http://www.brabu.net/', 'https://openalex.org/I236004819', 0, '2025-11-30 04:33:48', '2025-11-30 04:33:48'),
(544, 'Indian Institute of Management Visakhapatnam', 'Visakhapatnam', 'IN', 'https://www.iimv.ac.in/', 'https://openalex.org/I4210156205', 0, '2025-11-30 04:33:48', '2025-11-30 04:33:48'),
(545, 'J.C. Bose University of Science & Technology, YMCA', 'Faridabad', 'IN', 'http://www.ymcaust.ac.in/', 'https://openalex.org/I55124831', 0, '2025-11-30 04:33:48', '2025-11-30 04:33:48'),
(546, 'Ragas Dental College & Hospital', 'Chennai', 'IN', 'http://rdc.ac.in/', 'https://openalex.org/I893914191', 0, '2025-11-30 04:33:48', '2025-11-30 04:33:48'),
(547, 'Swami Rama Himalayan University', 'Dehra Dūn', 'IN', 'http://www.srhu.edu.in/', 'https://openalex.org/I2802000655', 0, '2025-11-30 04:33:48', '2025-11-30 04:33:48'),
(548, 'Ravenshaw University', 'Cuttack', 'IN', 'https://ravenshawuniversity.ac.in', 'https://openalex.org/I6013171', 0, '2025-11-30 04:33:48', '2025-11-30 04:33:48'),
(549, 'Indian Institute of Management Indore', 'Indore', 'IN', 'http://www.iimidr.ac.in/', 'https://openalex.org/I33003672', 0, '2025-11-30 04:33:48', '2025-11-30 04:33:48'),
(550, 'Meenakshi Academy of Higher Education and Research', 'Chennai', 'IN', 'http://maheruniversity.org/', 'https://openalex.org/I290407205', 0, '2025-11-30 04:33:48', '2025-11-30 04:33:48'),
(551, 'Institute of Nuclear Medicine & Allied Sciences', 'New Delhi', 'IN', 'https://www.drdo.gov.in/hi/labs-and-establishments/institute-nuclear-medicine-allied-sciences-inmas', 'https://openalex.org/I4210114989', 0, '2025-11-30 04:33:48', '2025-11-30 04:33:48'),
(552, 'Advanced Numerical Research and Analysis Group', 'Hyderabad', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/advanced-numerical-research-analysis-group-anurag', 'https://openalex.org/I4210115222', 0, '2025-11-30 04:33:48', '2025-11-30 04:33:48'),
(553, 'Sinhgad Dental College and Hospital', 'Pune', 'IN', 'http://www.sdchpune.org/', 'https://openalex.org/I4210163301', 0, '2025-11-30 04:33:48', '2025-11-30 04:33:48'),
(554, 'National Institute of Cholera and Enteric Diseases', 'Kolkata', 'IN', 'http://www.niced.org.in/', 'https://openalex.org/I4210101909', 0, '2025-11-30 04:33:48', '2025-11-30 04:33:48'),
(555, 'Nalanda Medical College and Hospital', 'Patna', 'IN', 'http://nmchpatna.org/', 'https://openalex.org/I3130204378', 0, '2025-11-30 04:33:48', '2025-11-30 04:33:48'),
(556, 'Central Mechanical Engineering Research Institute', 'Durgapur', 'IN', 'http://www.cmeri.res.in/', 'https://openalex.org/I70735523', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(557, 'Central Rice Research Institute', 'Cuttack', 'IN', 'http://www.crri.nic.in/', 'https://openalex.org/I77541275', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(558, 'National Institute of Industrial Engineering', 'Mumbai', 'IN', 'https://www.nitie.edu/', 'https://openalex.org/I864998749', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(559, 'Medanta The Medicity', 'Indore', 'IN', 'https://www.medanta.org/career-location/indo/', 'https://openalex.org/I4210115207', 0, '2025-11-30 04:33:49', '2025-11-30 04:34:01'),
(560, 'Institute of Advanced Study in Science and Technology', 'Guwahati', 'IN', 'http://iasst.gov.in/', 'https://openalex.org/I4210148816', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(561, 'Shobhit University', 'Meerut', 'IN', 'https://www.shobhituniversity.ac.in', 'https://openalex.org/I191247993', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(562, 'Calcutta Research Group', 'Kolkata', 'IN', 'http://www.mcrg.ac.in/', 'https://openalex.org/I4210100231', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(563, 'Era\'s Lucknow Medical College and Hospital', 'Lucknow', 'IN', 'http://www.elmcindia.org/index.asp', 'https://openalex.org/I4210107565', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(564, 'National Remote Sensing Centre', 'Hyderabad', 'IN', 'https://www.nrsc.gov.in/', 'https://openalex.org/I1311524620', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(565, 'National Institute of Technical Teachers Training and Research', 'Chandigarh', 'IN', 'http://www.nitttrchd.ac.in/sitenew1/index11.php', 'https://openalex.org/I4210094717', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(566, 'Father Muller Medical College Hospital', 'Mangalore', 'IN', 'http://fathermuller.edu.in/frmullerhospital/index.php', 'https://openalex.org/I17647740', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49');
INSERT INTO `institutions` (`id`, `name`, `city`, `country`, `website`, `domain`, `is_verified`, `created_at`, `updated_at`) VALUES
(567, 'Pravara Institute of Medical Sciences', 'Ahmednagar', 'IN', 'http://www.pravara.com/', 'https://openalex.org/I3130684616', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(568, 'National Institute of Technology Delhi', 'New Delhi', 'IN', 'https://nitdelhi.ac.in', 'https://openalex.org/I44635919', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(569, 'Regional Cancer Center, Thiruvananthapuram', 'Thiruvananthapuram', 'IN', 'http://www.rcctvm.org/', 'https://openalex.org/I2800611740', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(570, 'MIT Art, Design and Technology University', 'Pune', 'IN', 'https://mituniversity.ac.in', 'https://openalex.org/I4210162439', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(571, 'Sir Sayajirao General Hospital Medical College', 'Vadodara', 'IN', 'http://www.medicalcollegebaroda.edu.in/', 'https://openalex.org/I259800356', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(572, 'Osmania Medical College', 'Hyderabad', 'IN', 'http://osmaniamedicalcollege.org/', 'https://openalex.org/I99557698', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(573, 'Ashoka University', 'Delhi', 'IN', 'https://ashoka.edu.in/', 'https://openalex.org/I347237974', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(574, 'Government of West Bengal', 'Kolkata', 'IN', 'http://westbengal.gov.in/', 'https://openalex.org/I2801424531', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(575, 'Chettinad Academy of Research and Education', 'Chennai', 'IN', 'https://care.edu.in/', 'https://openalex.org/I220840466', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(576, 'Yashoda Hospital', 'Secunderabad', 'IN', 'https://www.yashodahospitals.com', 'https://openalex.org/I4210129842', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(577, 'MNR Dental College and Hospital', 'Medak', 'IN', 'http://www.mnrindia.org/Dental_BDS.php', 'https://openalex.org/I4210142633', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(578, 'South Asian University', 'New Delhi', 'IN', 'http://www.sau.int/', 'https://openalex.org/I90425906', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(579, 'Management Development Institute', 'Gurgaon', 'IN', 'http://www.mdi.ac.in/', 'https://openalex.org/I110930757', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(580, 'Sri Sri University', 'Cuttack', 'IN', 'https://srisriuniversity.edu.in', 'https://openalex.org/I3129903175', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(581, 'National Institute of Technology Andhra Pradesh', 'Tādepallegūdem', 'IN', 'https://nitandhra.ac.in', 'https://openalex.org/I4210153924', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(582, 'Krishna Institute of Medical Sciences', 'Secunderabad', 'IN', 'http://www.kimshospitals.com/', 'https://openalex.org/I4210091132', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(583, 'Calcutta National Medical College and Hospital', 'Kolkata', 'IN', 'http://cnmckolkata.in/', 'https://openalex.org/I111058918', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(584, 'Jaipur National University', 'Jaipur', 'IN', 'http://jnujaipur.ac.in/', 'https://openalex.org/I9223067', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(585, 'Pacific Dental College and Hospital', 'Udaipur', 'IN', 'http://pacificdentalcollege.com/', 'https://openalex.org/I4210110304', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(586, 'Yogi Vemana University', 'Kadapa', 'IN', 'http://www.yogivemanauniversity.ac.in/', 'https://openalex.org/I83073037', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(587, 'Patna University', 'Patna', 'IN', 'http://www.patnauniversity.ac.in/', 'https://openalex.org/I2534966', 0, '2025-11-30 04:33:49', '2025-11-30 04:33:49'),
(588, 'Institute for Stem Cell Biology and Regenerative Medicine', 'Bengaluru', 'IN', 'https://www.instem.res.in/', 'https://openalex.org/I4210087873', 0, '2025-11-30 04:33:50', '2025-11-30 04:33:50'),
(589, 'Bhabha Atomic Research Center Hospital', 'Mumbai', 'IN', 'http://barc.gov.in/bmg/md/index.html', 'https://openalex.org/I4210091849', 0, '2025-11-30 04:33:54', '2025-11-30 04:33:54'),
(590, 'Navsari Agricultural University', 'Surat', 'IN', 'http://www.nau.in/', 'https://openalex.org/I152185767', 0, '2025-11-30 04:33:54', '2025-11-30 04:33:54'),
(591, 'Raiganj University', 'Rāiganj', 'IN', 'http://www.raiganjcollege.ac.in/', 'https://openalex.org/I275778967', 0, '2025-11-30 04:33:54', '2025-11-30 04:33:54'),
(592, 'Ranchi University', 'Ranchi', 'IN', 'http://ranchiuniversity.ac.in/', 'https://openalex.org/I112700253', 0, '2025-11-30 04:33:54', '2025-11-30 04:33:54'),
(593, 'Marathwada Agricultural University', 'Parbhani', 'IN', 'http://www.vnmkv.ac.in/', 'https://openalex.org/I120386524', 0, '2025-11-30 04:33:54', '2025-11-30 04:33:54'),
(594, 'Kannur University', 'Cannanore', 'IN', 'http://www.kannuruniversity.ac.in/', 'https://openalex.org/I52703040', 0, '2025-11-30 04:33:54', '2025-11-30 04:33:54'),
(595, 'Electronics and Radar Development Establishment', 'Bengaluru', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/electronics-radar-development-establishment-lrde', 'https://openalex.org/I4210086621', 0, '2025-11-30 04:33:54', '2025-11-30 04:33:54'),
(596, 'Bapuji Dental College and Hospital', 'Davangere', 'IN', 'http://www.bapujidental.edu/', 'https://openalex.org/I4210164514', 0, '2025-11-30 04:33:54', '2025-11-30 04:33:54'),
(597, 'Central University of Gujarat', 'Gandhinagar', 'IN', 'https://www.cug.ac.in', 'https://openalex.org/I89095802', 0, '2025-11-30 04:33:54', '2025-11-30 04:33:54'),
(598, 'The NorthCap University', 'Gurugram', 'IN', 'https://www.ncuindia.edu', 'https://openalex.org/I129798099', 0, '2025-11-30 04:33:54', '2025-11-30 04:33:54'),
(599, 'Indira Gandhi Institute of Technology', 'Tālcher', 'IN', 'http://www.igitsarang.ac.in/', 'https://openalex.org/I20791572', 0, '2025-11-30 04:33:54', '2025-11-30 04:33:54'),
(600, 'Veer Narmad South Gujarat University', 'Surat', 'IN', 'https://vnsgu.ac.in', 'https://openalex.org/I10926426', 0, '2025-11-30 04:33:54', '2025-11-30 04:33:54'),
(601, 'School of Planning and Architecture Delhi', 'New Delhi', 'IN', 'https://www.spa.ac.in', 'https://openalex.org/I1329536732', 0, '2025-11-30 04:33:54', '2025-11-30 04:33:54'),
(602, 'Oil and Natural Gas Corporation (India)', 'Dehra Dūn', 'IN', 'http://www.ongcindia.com/', 'https://openalex.org/I172790451', 0, '2025-11-30 04:33:54', '2025-11-30 04:33:54'),
(603, 'Indira Gandhi Agricultural University', 'Raipur', 'IN', 'http://www.igau.edu.in', 'https://openalex.org/I20632288', 0, '2025-11-30 04:33:54', '2025-11-30 04:33:54'),
(604, 'Indian Institute of Remote Sensing', 'Dehra Dūn', 'IN', 'http://www.iirs.gov.in/index.php', 'https://openalex.org/I51281103', 0, '2025-11-30 04:33:54', '2025-11-30 04:33:54'),
(605, 'Stanley Medical College', 'Chennai', 'IN', 'http://www.stanleymedicalcollege.ac.in/', 'https://openalex.org/I25051037', 0, '2025-11-30 04:33:54', '2025-11-30 04:33:54'),
(606, 'Agharkar Research Institute', 'Pune', 'IN', 'https://aripune.org', 'https://openalex.org/I151205615', 0, '2025-11-30 04:33:54', '2025-11-30 04:33:54'),
(607, 'Delhi Pharmaceutical Science and Research University', 'New Delhi', 'IN', 'http://dpsru.edu.in/', 'https://openalex.org/I39238937', 0, '2025-11-30 04:33:54', '2025-11-30 04:33:54'),
(608, 'National Institute of Ayurveda', 'Jaipur', 'IN', 'http://www.nia.nic.in/', 'https://openalex.org/I3133021252', 0, '2025-11-30 04:33:54', '2025-11-30 04:33:54'),
(609, 'Central University of South Bihar', 'Gaya', 'IN', 'https://www.cusb.ac.in', 'https://openalex.org/I343503978', 0, '2025-11-30 04:33:54', '2025-11-30 04:33:54'),
(610, 'Indo Soviet Friendship College of Pharmacy', 'Moga', 'IN', 'http://www.isfcp.org/', 'https://openalex.org/I4210092982', 0, '2025-11-30 04:33:54', '2025-11-30 04:33:54'),
(611, 'Nagpur Institute of Technology', 'Nagpur', 'IN', 'http://www.nit.edu.in/', 'https://openalex.org/I206816349', 0, '2025-11-30 04:33:54', '2025-11-30 04:33:54'),
(612, 'Microsoft Research (India)', 'Bengaluru', 'IN', 'http://research.microsoft.com/en-us/labs/india/', 'https://openalex.org/I4210124949', 0, '2025-11-30 04:33:55', '2025-11-30 04:33:55'),
(613, 'Tilka Manjhi Bhagalpur University', 'Bānka', 'IN', 'http://tmbuniv.ac.in/', 'https://openalex.org/I96307353', 0, '2025-11-30 04:33:55', '2025-11-30 04:33:55'),
(614, 'Ashoka Trust for Research in Ecology and the Environment', 'Bengaluru', 'IN', 'http://www.atree.org/', 'https://openalex.org/I4210116320', 0, '2025-11-30 04:33:55', '2025-11-30 04:33:55'),
(615, 'Velammal Medical College Hospital and Research Institute', 'Madurai', 'IN', 'http://www.velammalmedicalcollege.edu.in/', 'https://openalex.org/I4210104323', 0, '2025-11-30 04:33:55', '2025-11-30 04:33:55'),
(616, 'Burdwan Medical College & Hospital', 'Barddhamān', 'IN', 'http://www.wbhealth.gov.in/burdwan_medical_college.asp', 'https://openalex.org/I166813715', 0, '2025-11-30 04:33:55', '2025-11-30 04:33:55'),
(617, 'Vikram University', 'Ujjain', 'IN', 'http://www.vikramuniv.net/', 'https://openalex.org/I86381314', 0, '2025-11-30 04:33:55', '2025-11-30 04:33:55'),
(618, 'National Centre for Radio Astrophysics', 'Pune', 'IN', 'http://www.ncra.tifr.res.in/', 'https://openalex.org/I147602599', 0, '2025-11-30 04:33:55', '2025-11-30 04:33:55'),
(619, 'Rajiv Gandhi University', 'Itanagar', 'IN', 'https://rgu.ac.in', 'https://openalex.org/I4210102005', 0, '2025-11-30 04:33:55', '2025-11-30 04:33:55'),
(620, 'Rajasthan Dental College and Hospital', 'Jaipur', 'IN', 'http://www.rdchjaipur.com/', 'https://openalex.org/I4210166313', 0, '2025-11-30 04:33:55', '2025-11-30 04:33:55'),
(621, 'Indian School of Business', 'Hyderabad', 'IN', 'http://www.isb.edu/', 'https://openalex.org/I122328836', 0, '2025-11-30 04:33:55', '2025-11-30 04:33:55'),
(622, 'French Institute of Pondicherry', 'Puducherry', 'IN', 'https://www.ifpindia.org/', 'https://openalex.org/I86713406', 0, '2025-11-30 04:33:55', '2025-11-30 04:33:55'),
(623, 'Sri Padmavati Mahila Visvavidyalayam', 'Tirumala - Tirupati', 'IN', 'http://www.spmvv.ac.in/', 'https://openalex.org/I94415630', 0, '2025-11-30 04:33:55', '2025-11-30 04:33:55'),
(624, 'Gauhati Medical College and Hospital', 'Guwahati', 'IN', 'http://gmchassam.nic.in/', 'https://openalex.org/I134260573', 0, '2025-11-30 04:33:55', '2025-11-30 04:33:55'),
(625, 'Rajiv Gandhi Centre for Biotechnology', 'Trivandrum', 'IN', 'http://rgcb.res.in/', 'https://openalex.org/I89324447', 0, '2025-11-30 04:33:55', '2025-11-30 04:33:55'),
(626, 'National Institute of Plant Genome Research', 'New Delhi', 'IN', 'http://www.nipgr.res.in/home/home.php', 'https://openalex.org/I4210153536', 0, '2025-11-30 04:33:55', '2025-11-30 04:33:55'),
(627, 'Junagadh Agricultural University', 'Jūnāgadh', 'IN', 'http://www.jau.in/', 'https://openalex.org/I104917982', 0, '2025-11-30 04:33:55', '2025-11-30 04:33:55'),
(628, 'Bihar Agricultural University', 'Sabaur', 'IN', 'https://www.bausabour.ac.in', 'https://openalex.org/I2800696116', 0, '2025-11-30 04:33:55', '2025-11-30 04:33:55'),
(629, 'Vignana Jyothi Institute of Management', 'Hyderabad', 'IN', 'http://vjim.edu.in/', 'https://openalex.org/I2801452159', 0, '2025-11-30 04:33:55', '2025-11-30 04:33:55'),
(630, 'Dhirubhai Ambani Institute of Information and Communication Technology', 'Gandhinagar', 'IN', 'https://www.daiict.ac.in', 'https://openalex.org/I98389781', 0, '2025-11-30 04:33:55', '2025-11-30 04:33:55'),
(631, 'Guru Gobind Singh Medical College and Hospital', 'Farīdkot', 'IN', 'http://ggsmch.org/', 'https://openalex.org/I2800404181', 0, '2025-11-30 04:33:55', '2025-11-30 04:33:55'),
(632, 'Institute of Public Health', 'Bengaluru', 'IN', 'http://iphindia.org/', 'https://openalex.org/I4210088493', 0, '2025-11-30 04:33:55', '2025-11-30 04:33:55'),
(633, 'Netaji Subhash Chandra Bose Medical College', 'Jabalpur', 'IN', 'http://www.nscbmc.ac.in/', 'https://openalex.org/I235176910', 0, '2025-11-30 04:33:55', '2025-11-30 04:33:55'),
(634, 'Chandra Shekhar Azad University of Agriculture and Technology', 'Kanpur', 'IN', 'http://csauk.ac.in/', 'https://openalex.org/I4210143625', 0, '2025-11-30 04:33:56', '2025-11-30 04:33:56'),
(635, 'West Bengal University of Animal and Fishery Sciences', 'Kolkata', 'IN', 'http://www.wbuafscl.ac.in/frmHome.aspx', 'https://openalex.org/I75444546', 0, '2025-11-30 04:33:56', '2025-11-30 04:33:56'),
(636, 'Sri Venkateswara Institute of Medical Sciences', 'Tirumala - Tirupati', 'IN', 'http://svimstpt.ap.nic.in/', 'https://openalex.org/I107740395', 0, '2025-11-30 04:33:56', '2025-11-30 04:33:56'),
(637, 'Aliah University', 'Kolkata', 'IN', 'https://www.aliah.ac.in/', 'https://openalex.org/I180765649', 0, '2025-11-30 04:33:56', '2025-11-30 04:33:56'),
(638, 'Sardar Patel Medical College', 'Bikaner', 'IN', 'http://medicaleducation.rajasthan.gov.in/bikaner/index.asp', 'https://openalex.org/I2800123788', 0, '2025-11-30 04:33:56', '2025-11-30 04:33:56'),
(639, 'A P J Abdul Kalam Technological University', 'Trivandrum', 'IN', 'https://ktu.edu.in/', 'https://openalex.org/I3129367976', 0, '2025-11-30 04:33:56', '2025-11-30 04:33:56'),
(640, 'Wadia Institute of Himalayan Geology', 'Dehra Dūn', 'IN', 'http://www.wihg.res.in/', 'https://openalex.org/I1337471766', 0, '2025-11-30 04:33:56', '2025-11-30 04:33:56'),
(641, 'Dr. Reddy\'s Laboratories (India)', 'Hyderabad', 'IN', 'http://www.drreddys.com/', 'https://openalex.org/I4210117495', 0, '2025-11-30 04:33:56', '2025-11-30 04:33:56'),
(642, 'Motilal Nehru Medical College', 'Allahabad', 'IN', 'http://mlnmc.org/', 'https://openalex.org/I3056136', 0, '2025-11-30 04:33:56', '2025-11-30 04:33:56'),
(643, 'Indian Institute of Technology Tirupati', 'Tirupati', 'IN', 'https://www.iittp.ac.in', 'https://openalex.org/I4210109292', 0, '2025-11-30 04:33:56', '2025-11-30 04:33:56'),
(644, 'DR. B.R.A. Institute Rotary Cancer Hospital', 'New Delhi', 'IN', 'http://www.aiims.edu/en/departments-and-centers/specialty-centers.html?id=415', 'https://openalex.org/I4210161040', 0, '2025-11-30 04:33:56', '2025-11-30 04:33:56'),
(645, 'Dr. Ram Manohar Lohia Institute of Medical Sciences', 'Lucknow', 'IN', 'http://drrmlims.ac.in/', 'https://openalex.org/I4210126423', 0, '2025-11-30 04:33:56', '2025-11-30 04:33:56'),
(646, 'Indian Institute of Information Technology, Design and Manufacturing, Kancheepuram', 'Chennai', 'IN', 'https://iiitdm.ac.in', 'https://openalex.org/I39244652', 0, '2025-11-30 04:33:56', '2025-11-30 04:33:56'),
(647, 'Adesh University', 'Bathinda', 'IN', 'http://www.adeshuniversity.ac.in/', 'https://openalex.org/I3131177233', 0, '2025-11-30 04:33:56', '2025-11-30 04:33:56'),
(648, 'Rajiv Gandhi Cancer Institute and Research Centre', 'New Delhi', 'IN', 'http://www.rgcirc.org/#,', 'https://openalex.org/I4210092995', 0, '2025-11-30 04:33:56', '2025-11-30 04:33:56'),
(649, 'Defence Research and Development Establishment', 'Gwalior', 'IN', 'http://www.drdo.gov.in/drdo/labs/DRDE/English/index.jsp?pg=homebody.jsp', 'https://openalex.org/I2800900741', 0, '2025-11-30 04:33:56', '2025-11-30 04:33:56'),
(650, 'University of Agricultural Sciences Raichur', 'Rāichūr', 'IN', 'http://www.uasraichur.edu.in/', 'https://openalex.org/I61553790', 0, '2025-11-30 04:33:56', '2025-11-30 04:33:56'),
(651, 'Shri Sathya Sai Medical College and Research Institute', 'Ammāpettai', 'IN', 'http://www.sssmcri.ac.in/', 'https://openalex.org/I4210112828', 0, '2025-11-30 04:33:56', '2025-11-30 04:33:56'),
(652, 'Central University of Jharkhand', 'Ranchi', 'IN', 'https://www.cuj.ac.in', 'https://openalex.org/I175970653', 0, '2025-11-30 04:33:56', '2025-11-30 04:33:56'),
(653, 'Indian Institute of Technology Palakkad', 'Palakkad', 'IN', 'https://iitpkd.ac.in/', 'https://openalex.org/I4210113248', 0, '2025-11-30 04:33:56', '2025-11-30 04:33:56'),
(654, 'M. P. Shah Medical College', 'Jamnagar', 'IN', 'http://www.mpsmc.in/', 'https://openalex.org/I50268529', 0, '2025-11-30 04:33:56', '2025-11-30 04:33:56'),
(655, 'ITM University', 'Gwalior', 'IN', 'https://www.itmuniversity.ac.in', 'https://openalex.org/I191366470', 0, '2025-11-30 04:33:57', '2025-11-30 04:33:57'),
(656, 'IBM Research - India', 'New Delhi', 'IN', 'http://www.research.ibm.com/labs/india/', 'https://openalex.org/I4210103279', 0, '2025-11-30 04:33:57', '2025-11-30 04:33:57'),
(657, 'Rajendra Institute of Medical Sciences', 'Ranchi', 'IN', 'http://www.rimsranchi.org/', 'https://openalex.org/I304662888', 0, '2025-11-30 04:33:57', '2025-11-30 04:33:57'),
(658, 'Manubhai Patel Dental College and Hospital', 'Vadodara', 'IN', 'http://mpdentalcollege.edu.in/', 'https://openalex.org/I2800889234', 0, '2025-11-30 04:33:57', '2025-11-30 04:33:57'),
(659, 'Tirunelveli Medical College', 'Tirunelveli', 'IN', 'http://tvmc.ac.in/', 'https://openalex.org/I118826373', 0, '2025-11-30 04:33:57', '2025-11-30 04:33:57'),
(660, 'Subharti Medical College', 'Meerut', 'IN', 'http://medical.subharti.org/', 'https://openalex.org/I4210140167', 0, '2025-11-30 04:33:57', '2025-11-30 04:33:57'),
(661, 'Smt. N.H.L. Municipal Medical College', 'Ahmedabad', 'IN', 'http://www.nhlmmc.edu.in/', 'https://openalex.org/I4210165080', 0, '2025-11-30 04:33:57', '2025-11-30 04:33:57'),
(662, 'Sri Dharmasthala Manjunatheshwara College of Dental Sciences & Hospital', 'Hubli', 'IN', 'http://www.sdmcds.edu/', 'https://openalex.org/I3131333345', 0, '2025-11-30 04:33:57', '2025-11-30 04:33:57'),
(663, 'Sikkim University', 'Gangtok', 'IN', 'https://cus.ac.in', 'https://openalex.org/I43475992', 0, '2025-11-30 04:33:57', '2025-11-30 04:33:57'),
(664, 'Rani Durgavati University', 'Jabalpur', 'IN', 'http://www.rdunijbpin.org/', 'https://openalex.org/I234615573', 0, '2025-11-30 04:33:57', '2025-11-30 04:33:57'),
(665, 'Ministry of AYUSH', 'New Delhi', 'IN', 'http://ayush.gov.in', 'https://openalex.org/I4210124368', 0, '2025-11-30 04:33:57', '2025-11-30 04:33:57'),
(666, 'National Institute for Research in Reproductive Health', 'Mumbai', 'IN', 'http://www.nirrh.res.in/', 'https://openalex.org/I143929237', 0, '2025-11-30 04:33:57', '2025-11-30 04:33:57'),
(667, 'Central Institute of Mining and Fuel Research', 'Dhanbad', 'IN', 'http://cimfr.nic.in/profileglance.html', 'https://openalex.org/I4210127669', 0, '2025-11-30 04:33:57', '2025-11-30 04:33:57'),
(668, 'National Institute of Hydrology', 'Roorkee', 'IN', 'http://www.nih.ernet.in/', 'https://openalex.org/I4210147361', 0, '2025-11-30 04:33:57', '2025-11-30 04:33:57'),
(669, 'Nagaland University', 'Kohima', 'IN', 'https://nagalanduniversity.ac.in', 'https://openalex.org/I61198380', 0, '2025-11-30 04:33:57', '2025-11-30 04:33:57'),
(670, 'MVJ Medical College and Research Hospital', 'Hoskote', 'IN', 'http://www.mvjmc.edu.in/', 'https://openalex.org/I4210116476', 0, '2025-11-30 04:33:57', '2025-11-30 04:33:57'),
(671, 'Dr. Rajendra Prasad Central Agriculture University', 'Samāstipur', 'IN', 'https://www.rpcau.ac.in/', 'https://openalex.org/I205665586', 0, '2025-11-30 04:33:57', '2025-11-30 04:33:57'),
(672, 'Gyan Vihar University', 'Jaipur', 'IN', 'http://www.gyanvihar.org/', 'https://openalex.org/I91894341', 0, '2025-11-30 04:33:57', '2025-11-30 04:33:57'),
(673, 'Samsung (India)', 'Bengaluru', 'IN', 'http://www.samsung.com/in/home/', 'https://openalex.org/I4210139030', 0, '2025-11-30 04:33:57', '2025-11-30 04:33:57'),
(674, 'Rajagiri Hospital', 'Kochi', 'IN', 'http://www.rajagirihospital.com/', 'https://openalex.org/I4210113677', 0, '2025-11-30 04:33:57', '2025-11-30 04:33:57'),
(675, 'Smt. Kashibai Navale Medical College and General hospital', 'Pune', 'IN', 'http://www.sknmcgh.org/', 'https://openalex.org/I4210157510', 0, '2025-11-30 04:33:57', '2025-11-30 04:33:57'),
(676, 'West Bengal State University', 'Kolkata', 'IN', 'http://www.wbsubregistration.org/', 'https://openalex.org/I55862774', 0, '2025-11-30 04:33:57', '2025-11-30 04:33:57'),
(677, 'Airbus (India)', 'Bengaluru', 'IN', 'https://www.airbus.com', 'https://openalex.org/I33375025', 0, '2025-11-30 04:33:57', '2025-11-30 04:33:57'),
(678, 'Central University of Jammu', 'Jammu', 'IN', 'https://cujammu.ac.in', 'https://openalex.org/I4210142231', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(679, 'Great Lakes Institute of Management', 'Chennai', 'IN', 'http://www.greatlakes.edu.in/', 'https://openalex.org/I81020251', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(680, 'Indian Institute of Rice Research', 'Hyderabad', 'IN', 'http://www.drricar.org/', 'https://openalex.org/I1298986040', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(681, 'Madras Diabetes Research Foundation', 'Chennai', 'IN', 'http://mdrf.in/', 'https://openalex.org/I4210092311', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(682, 'Asian Institute of Gastroenterology', 'Hyderabad', 'IN', 'http://aigindia.net/', 'https://openalex.org/I4210137328', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(683, 'Jaipuria Institute of Management', 'Noida', 'IN', 'https://www.jaipuria.ac.in/', 'https://openalex.org/I26771391', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(684, 'Regional Institute of Medical Sciences', 'Imphal', 'IN', 'http://www.rims.edu.in/secure/', 'https://openalex.org/I43666680', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(685, 'Robert Bosch (India)', 'Bengaluru', 'IN', 'http://www.boschindia.com/en/in/startpage_5/country-landingpage.php', 'https://openalex.org/I4210151956', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(686, 'Rajarajeswari Medical College and Hospital', 'Bengaluru', 'IN', 'http://www.rrmch.org/', 'https://openalex.org/I1323219464', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(687, 'Fakir Mohan University', 'Balasore', 'IN', 'http://www.fmuniversity.nic.in/', 'https://openalex.org/I108526665', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(688, 'Government General Hospital', 'Chennai', 'IN', 'http://www.mmc.tn.gov.in/mmc.html', 'https://openalex.org/I2801220108', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(689, 'Indira Gandhi National Tribal University', 'Amarkantak', 'IN', 'https://www.igntu.ac.in', 'https://openalex.org/I296362101', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(690, 'Adamas University', 'Kolkata', 'IN', 'https://adamasuniversity.ac.in', 'https://openalex.org/I3130244785', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(691, 'United Nations Children\'s Fund India', 'New Delhi', 'IN', 'http://unicef.in/', 'https://openalex.org/I4210159699', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(692, 'Baba Ghulam Shah Badshah University', 'Rajaori', 'IN', 'http://www.bgsbu.ac.in/', 'https://openalex.org/I299920578', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(693, 'Central Forensic Science Laboratory', 'New Delhi', 'IN', 'http://cbi.nic.in/cfsl/about.htm', 'https://openalex.org/I2800034660', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(694, 'Kidwai Memorial Institute of Oncology', 'Bengaluru', 'IN', 'http://www.kidwai.kar.nic.in/', 'https://openalex.org/I2802933311', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(695, 'JSS Science and Technology University', 'Mysuru', 'IN', 'https://www.jssstuniv.in', 'https://openalex.org/I4210137436', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(696, 'Translational Health Science and Technology Institute', 'Gurgaon', 'IN', 'http://thsti.res.in/', 'https://openalex.org/I2801880299', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(697, 'Islamic University of Science and Technology', 'Awantipur', 'IN', 'http://iustlive.com/', 'https://openalex.org/I4264650', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(698, 'Sandip Foundation', 'Nashik', 'IN', 'http://www.sandipfoundation.org/', 'https://openalex.org/I2802982682', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(699, 'GIET University', 'Gunupur', 'IN', 'https://www.giet.edu', 'https://openalex.org/I4210139271', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(700, 'International Advanced Research Centre for Powder Metallurgy and New Materials', 'Hyderabad', 'IN', 'http://www.arci.res.in/', 'https://openalex.org/I4210103291', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(701, 'Indian Institute of Science Education and Research, Tirupati', 'Tirupati', 'IN', 'http://www.iisertirupati.ac.in/', 'https://openalex.org/I4210140410', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(702, 'Central Arid Zone Research Institute', 'Jodhpur', 'IN', 'http://www.cazri.res.in/', 'https://openalex.org/I138570494', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(703, 'ICMR-National Institute of Virology', 'Pune', 'IN', 'http://www.niv.co.in/', 'https://openalex.org/I60374024', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(704, 'Pondicherry Institute of Medical Sciences', 'Puducherry', 'IN', 'http://www.pimsmmm.com/', 'https://openalex.org/I163150328', 0, '2025-11-30 04:33:58', '2025-11-30 04:33:58'),
(705, 'Poornima University', 'Jaipur', 'IN', 'https://www.poornima.edu.in/', 'https://openalex.org/I4210126659', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(706, 'Chaudhary Devi Lal University', 'Sirsa', 'IN', 'https://www.cdlu.ac.in/', 'https://openalex.org/I107539069', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(707, 'Shree Krishna Hospital', 'Karamsad', 'IN', 'http://shreekrishnahospital.org', 'https://openalex.org/I4210109742', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(708, 'Centre For Development Studies', 'Thiruvananthapuram', 'IN', 'http://www.cds.edu/', 'https://openalex.org/I157886920', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(709, 'Assam Medical College', 'Dibrugarh', 'IN', 'http://www.assammedicalcollege.in/', 'https://openalex.org/I83844774', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(710, 'AMET University', 'Chennai', 'IN', 'https://www.ametuniv.ac.in/', 'https://openalex.org/I34628043', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(711, 'Aryabhatta Research Institute of Observational Sciences', 'Nainital', 'IN', 'http://www.aries.res.in/', 'https://openalex.org/I2803025293', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(712, 'Sri Balaji Vidyapeeth University', 'Puducherry', 'IN', 'http://sbvu.ac.in/', 'https://openalex.org/I4210115345', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(713, 'Maharaja Krishna Chandra Gajapati Medical College and Hospital', 'Brahmapur', 'IN', 'http://www.mkcgmch.org/', 'https://openalex.org/I250200457', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(714, 'Darbhanga Medical College and Hospital', 'Darbhanga', 'IN', 'http://darbhangamedicalcollege.in/', 'https://openalex.org/I2800710275', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(715, 'Sri Chandrasekharendra Saraswathi Viswa Mahavidyalaya', 'Kanchipuram', 'IN', 'https://kanchiuniv.ac.in', 'https://openalex.org/I180507071', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(716, 'Doon University', 'Dehra Dūn', 'IN', 'https://doonuniversity.org/', 'https://openalex.org/I44565152', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(717, 'Maharaja Sriram Chandra Bhanja Deo University', 'Baripāda', 'IN', 'http://www.nou.nic.in/', 'https://openalex.org/I58782413', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(718, 'Ramakrishna Mission Vidyalaya', 'Coimbatore', 'IN', 'http://www.srkv.org/', 'https://openalex.org/I4210141018', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(719, 'Centre for Policy Studies', 'Chennai', 'IN', 'http://www.cpsindia.org/', 'https://openalex.org/I4210157167', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(720, 'Ministry of Health and Family Welfare', 'New Delhi', 'IN', 'http://www.mohfw.nic.in/', 'https://openalex.org/I4210148677', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(721, 'International Centre for Theoretical Sciences', 'Bengaluru', 'IN', 'https://www.icts.res.in/', 'https://openalex.org/I4210090503', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(722, 'Cotton University', 'Guwahati', 'IN', 'https://cottonuniversity.ac.in', 'https://openalex.org/I4210102512', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(723, 'Mahatma Phule Krishi Vidyapeeth', 'Rāhuri', 'IN', 'http://mpkv.ac.in/', 'https://openalex.org/I167494164', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(724, 'Coimbatore Medical College and Hospital', 'Coimbatore', 'IN', 'http://www.cmccbe.ac.in/cmccbe/', 'https://openalex.org/I33851549', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(725, 'Narendra Dev University of Agriculture and Technology', 'Faizabad', 'IN', 'http://www.nduat.org', 'https://openalex.org/I4210097692', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(726, 'ICFAI Business School', 'Hyderabad', 'IN', 'http://www.ibsindia.org/', 'https://openalex.org/I4210102611', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(727, 'Babu Banarasi Das University', 'Lucknow', 'IN', 'https://bbdu.ac.in/', 'https://openalex.org/I276256525', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(728, 'National Institute of Research in Tuberculosis', 'Chennai', 'IN', 'https://www.nirt.res.in', 'https://openalex.org/I4210140595', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(729, 'Midnapore Medical College and Hospital', 'Medinīpur', 'IN', 'http://midnaporemmc.ac.in/', 'https://openalex.org/I251397004', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(730, 'Central Soil Salinity Research Institute', 'Karnāl', 'IN', 'http://www.cssri.org/', 'https://openalex.org/I1342238530', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(731, 'Chittaranjan National Cancer Institute', 'Kolkata', 'IN', 'http://cnci.org.in/', 'https://openalex.org/I2802271162', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(732, 'Bai Jerbai Wadia Hospital for Children', 'Mumbai', 'IN', 'http://www.wadiahospitals.org/BJWHC.aspx', 'https://openalex.org/I4210111325', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(733, 'National Institute of Food Technology Entrepreneurship and Management', 'Sonīpat', 'IN', 'http://www.niftem.ac.in/site/niftem_home.aspx', 'https://openalex.org/I342702707', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(734, 'Karnataka Institute of Medical Sciences', 'Hubli', 'IN', 'http://www.kimshubli.org/site/index.php', 'https://openalex.org/I77799889', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(735, 'Nightingale Hospital', 'Kolkata', 'IN', 'http://www.nightingalehospital.com/', 'https://openalex.org/I4210158225', 0, '2025-11-30 04:33:59', '2025-11-30 04:33:59'),
(736, 'St. Peter\'s Institute of Higher Education and Research', 'Chennai', 'IN', 'http://spiher.ac.in/', 'https://openalex.org/I3133098998', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(737, 'CT Group Of Institutions', 'Jalandhar', 'IN', 'http://www.ctgroup.in/', 'https://openalex.org/I4210094618', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(738, 'Central Council for Research in Ayurvedic Science', 'New Delhi', 'IN', 'http://www.ccras.nic.in/', 'https://openalex.org/I4210089662', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(739, 'Sri Manakula Vinayagar Medical College and Hospital', 'Puducherry', 'IN', 'http://www.smvmch.ac.in/', 'https://openalex.org/I4210141780', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(740, 'Sri Devaraj Urs Medical College', 'Kolār', 'IN', 'http://www.sdumc.ac.in/', 'https://openalex.org/I135234465', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(741, 'PSG Institute of Medical Sciences & Research', 'Coimbatore', 'IN', 'http://psgimsr.ac.in/', 'https://openalex.org/I174404548', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(742, 'Chettinad Health City', 'Chennai', 'IN', 'http://www.chettinadhealthcity.com/', 'https://openalex.org/I2801758192', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(743, 'Indian Institute of Technology Dharwad', 'Dharwad', 'IN', 'https://www.iitdh.ac.in', 'https://openalex.org/I4210152718', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(744, 'Swami Vivekanand Subharti University', 'Meerut', 'IN', 'http://subharti.org/web/', 'https://openalex.org/I2799707979', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(745, 'Maharaja Ranjit Singh Punjab Technical University', 'Bathinda', 'IN', 'http://www.mrsptu.ac.in/', 'https://openalex.org/I4210136518', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(746, 'Hemchandracharya North Gujarat University', 'Pātan', 'IN', 'http://www.ngu.ac.in/', 'https://openalex.org/I335036346', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(747, 'Assam Don Bosco University', 'Guwahati', 'IN', 'http://www.dbuniversity.ac.in', 'https://openalex.org/I10767319', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(748, 'CARE Hospitals', 'Hyderabad', 'IN', 'http://www.carehospitals.com/', 'https://openalex.org/I2802469017', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(749, 'Yashwantrao Chavan Maharashtra Open University', 'Nashik', 'IN', 'http://ycmou.digitaluniversity.ac/', 'https://openalex.org/I4210106255', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(750, 'Kalinga University', 'Raipur', 'IN', 'http://kalingauniversity.ac.in/Default.aspx', 'https://openalex.org/I2800614057', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(751, 'National Research Centre on Plant Biotechnology', 'New Delhi', 'IN', 'http://www.nrcpb.res.in/', 'https://openalex.org/I4210091233', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(752, 'Shri BM Patil Medical College', 'Bijapur', 'IN', 'http://www.bldeuniversity.ac.in/medcol/', 'https://openalex.org/I123665430', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(753, 'Davangere University', 'Davangere', 'IN', 'http://davangereuniversity.ac.in/', 'https://openalex.org/I214657376', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(754, 'Sri Sathya Sai Institute of Higher Learning', 'Puttaparthi', 'IN', 'http://sssihl.edu.in/', 'https://openalex.org/I4819740', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(755, 'Tata Medical Center', 'Kolkata', 'IN', 'https://tmckolkata.com', 'https://openalex.org/I4210089010', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(756, 'College of Medicine & JNM Hospital', 'Kalyani', 'IN', 'http://comjnmh.ac.in/', 'https://openalex.org/I4210130977', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(757, 'Government Ayurved College, Nanded', 'Nanded', 'IN', 'http://gacnanded.com/', 'https://openalex.org/I4210090019', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(758, 'Rajiv Gandhi Institute of Petroleum Technology', 'Raebareli', 'IN', 'https://www.rgipt.ac.in', 'https://openalex.org/I98210582', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(759, 'IFTM University', 'Morādābād', 'IN', 'https://www.iftmuniversity.ac.in', 'https://openalex.org/I2801192375', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(760, 'Bharat Heavy Electricals (India)', 'New Delhi', 'IN', 'http://www.bhel.com/home.php', 'https://openalex.org/I25547181', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(761, 'Dow Chemical (India)', 'Mumbai', 'IN', 'http://in.dow.com/', 'https://openalex.org/I1280527723', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(762, 'Ganpat University', 'Ahmedabad', 'IN', 'https://www.ganpatuniversity.ac.in/', 'https://openalex.org/I45372603', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(763, 'LNM Institute of Information Technology', 'Jaipur', 'IN', 'http://www.lnmiit.ac.in/', 'https://openalex.org/I33552525', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(764, 'Krishna Institute of Medical Sciences Deemed University', 'Karad', 'IN', 'http://kimsuniversity.in/', 'https://openalex.org/I4210130471', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(765, 'Central Building Research Institute', 'Roorkee', 'IN', 'http://cbri.res.in/', 'https://openalex.org/I2801347850', 0, '2025-11-30 04:34:00', '2025-11-30 04:34:00'),
(766, 'St. George Hospital', 'Mumbai', 'IN', 'http://www.stgeorgeshospital.in/', 'https://openalex.org/I4210152189', 0, '2025-11-30 04:34:01', '2025-11-30 04:34:01'),
(767, 'Tamil University', 'Thanjavur', 'IN', 'http://www.tamiluniversity.ac.in/', 'https://openalex.org/I125392429', 0, '2025-11-30 04:34:01', '2025-11-30 04:34:01'),
(768, 'Dr. C. V. Raman University', 'Kotā', 'IN', 'http://cvru.ac.in/', 'https://openalex.org/I3129960170', 0, '2025-11-30 04:34:01', '2025-11-30 04:34:01'),
(769, 'Jodhpur National University', 'Jodhpur', 'IN', 'http://jodhpurnationaluniversity.com/', 'https://openalex.org/I4724304', 0, '2025-11-30 04:34:01', '2025-11-30 04:34:01'),
(770, 'Narayan Medical College and Hospital', 'Nellore', 'IN', 'http://www.narayanamedicalcollege.com/', 'https://openalex.org/I4210141553', 0, '2025-11-30 04:34:01', '2025-11-30 04:34:01'),
(771, 'Central University of Himachal Pradesh', 'Dharamsala', 'IN', 'https://cuhimachal.ac.in', 'https://openalex.org/I180952551', 0, '2025-11-30 04:34:01', '2025-11-30 04:34:01'),
(772, 'Lala Lajpat Rai University of Veterinary and Animal Sciences', 'Hisar', 'IN', 'https://www.luvas.edu.in/', 'https://openalex.org/I233492666', 0, '2025-11-30 04:34:01', '2025-11-30 04:34:01'),
(773, 'National Institute of Advanced Studies', 'Bengaluru', 'IN', 'http://www.nias.res.in/', 'https://openalex.org/I22956069', 0, '2025-11-30 04:34:01', '2025-11-30 04:34:01'),
(774, 'University of Gour Banga', 'Ingrāj Bāzār', 'IN', 'http://www.ugb.ac.in/', 'https://openalex.org/I33932797', 0, '2025-11-30 04:34:01', '2025-11-30 04:34:01'),
(775, 'JECRC University', 'Jaipur', 'IN', 'https://jecrcuniversity.edu.in/', 'https://openalex.org/I3131927718', 0, '2025-11-30 04:34:01', '2025-11-30 04:34:01'),
(776, 'Government Ayurvedic College and Hospital', 'Guwahati', 'IN', 'https://gacassam.webs.com/', 'https://openalex.org/I4210114849', 0, '2025-11-30 04:34:01', '2025-11-30 04:34:01'),
(777, 'World Health Organization Regional Office for South-East Asia', 'New Delhi', 'IN', 'http://www.searo.who.int/en/', 'https://openalex.org/I4210112062', 0, '2025-11-30 04:34:01', '2025-11-30 04:34:01'),
(778, 'RK University', 'Rajkot', 'IN', 'http://rku.ac.in/', 'https://openalex.org/I137674396', 0, '2025-11-30 04:34:01', '2025-11-30 04:34:01'),
(779, 'Indian Institute of Management Kozhikode', 'Kozhikode', 'IN', 'https://www.iimk.ac.in/', 'https://openalex.org/I132357854', 0, '2025-11-30 04:34:01', '2025-11-30 04:34:01'),
(780, 'National Institute of Technology Manipur', 'Imphal', 'IN', 'http://www.nitmanipur.ac.in/', 'https://openalex.org/I265627732', 0, '2025-11-30 04:34:01', '2025-11-30 04:34:01'),
(781, 'GD Goenka University', 'Sohna', 'IN', 'http://www.gdgoenkauniversity.com/', 'https://openalex.org/I2802922787', 0, '2025-11-30 04:34:01', '2025-11-30 04:34:01'),
(782, 'American College, Madurai', 'Madurai', 'IN', 'http://americancollege.edu.in/', 'https://openalex.org/I2800849556', 0, '2025-11-30 04:34:01', '2025-11-30 04:34:01'),
(783, 'G.B. Pant Institute of Himalayan Environment and Development', 'Almora', 'IN', 'http://gbpihed.gov.in/', 'https://openalex.org/I4210163968', 0, '2025-11-30 04:34:01', '2025-11-30 04:34:01'),
(784, 'Central Inland Fisheries Research Institute', 'Bārākpur', 'IN', 'http://www.cifri.res.in/', 'https://openalex.org/I4210136827', 0, '2025-11-30 04:34:01', '2025-11-30 04:34:01'),
(785, 'GlaxoSmithKline (India)', 'Mumbai', 'IN', 'http://india-pharma.gsk.com/', 'https://openalex.org/I4210099842', 0, '2025-11-30 04:34:01', '2025-11-30 04:34:01'),
(786, 'BLDE University', 'Bijapur', 'IN', 'http://www.bldeuniversity.ac.in/', 'https://openalex.org/I4210116054', 0, '2025-11-30 04:34:01', '2025-11-30 04:34:01'),
(787, 'National Institute of Technical Teachers’ Training and Research', 'Bhopal', 'IN', 'http://nitttrbpl.ac.in/index.php', 'https://openalex.org/I4210094264', 0, '2025-11-30 04:34:06', '2025-11-30 04:34:06'),
(788, 'Desh Bhagat Ayurvedic College and Hospital', 'Amloh', 'IN', 'http://www.dbach.in/', 'https://openalex.org/I4210130322', 0, '2025-11-30 04:34:06', '2025-11-30 04:34:06'),
(789, 'Regional Centre for Biotechnology', 'Faridabad', 'IN', 'http://www.rcb.res.in/', 'https://openalex.org/I4210094671', 0, '2025-11-30 04:34:06', '2025-11-30 04:34:06'),
(790, 'Jaslok Hospital', 'Mumbai', 'IN', 'http://www.jaslokhospital.net/', 'https://openalex.org/I2802099312', 0, '2025-11-30 04:34:06', '2025-11-30 04:34:06'),
(791, 'Himalayan University', 'Naharlagun', 'IN', 'https://www.himalayanuniversity.com', 'https://openalex.org/I3133268928', 0, '2025-11-30 04:34:06', '2025-11-30 04:34:06'),
(792, 'Mahindra Group (India)', 'Mumbai', 'IN', 'http://www.mahindra.com/', 'https://openalex.org/I1336379959', 0, '2025-11-30 04:34:06', '2025-11-30 04:34:06'),
(793, 'The Sanskrit College and University', 'Kolkata', 'IN', 'http://sanskritcollegeanduniversity.org.in/', 'https://openalex.org/I3131826223', 0, '2025-11-30 04:34:06', '2025-11-30 04:34:06'),
(794, 'ICAR - Central Island Agricultural Research Institute', 'Port Blair', 'IN', 'https://ciari.icar.gov.in', 'https://openalex.org/I4210151296', 0, '2025-11-30 04:34:06', '2025-11-30 04:34:06'),
(795, 'North Bengal Medical College and Hospital', 'Darjeeling', 'IN', 'http://www.nbmch.org/', 'https://openalex.org/I40380974', 0, '2025-11-30 04:34:06', '2025-11-30 04:34:06'),
(796, 'Government of Himachal Pradesh', 'Shimla', 'IN', 'http://himachal.nic.in/en-IN/', 'https://openalex.org/I4210098857', 0, '2025-11-30 04:34:06', '2025-11-30 04:34:06'),
(797, 'Institute of Chartered Financial Analysts of India', 'Hyderabad', 'IN', 'http://www.icfai.org/', 'https://openalex.org/I78663439', 0, '2025-11-30 04:34:06', '2025-11-30 04:34:06'),
(798, 'Kurnool Medical College', 'Kurnool', 'IN', 'http://www.kmckurnool.com/', 'https://openalex.org/I61631359', 0, '2025-11-30 04:34:06', '2025-11-30 04:34:06'),
(799, 'Narayana Nethralaya', 'Bengaluru', 'IN', 'http://www.narayananethralaya.org/', 'https://openalex.org/I4210117994', 0, '2025-11-30 04:34:06', '2025-11-30 04:34:06'),
(800, 'Sri Venkateswara Veterinary University', 'Tirumala - Tirupati', 'IN', 'http://svvu.edu.in/', 'https://openalex.org/I3130939756', 0, '2025-11-30 04:34:06', '2025-11-30 04:34:06'),
(801, 'Mewar University', 'Chittaurgarh', 'IN', 'http://www.mewaruniversity.org', 'https://openalex.org/I49702814', 0, '2025-11-30 04:34:06', '2025-11-30 04:34:06'),
(802, 'Dr Panjabrao Deshmukh Krishi Vidyapeeth', 'Akola', 'IN', 'https://www.pdkv.ac.in/#sthash.QWHcXbXq.dpbs', 'https://openalex.org/I223781097', 0, '2025-11-30 04:34:06', '2025-11-30 04:34:06'),
(803, 'Shri Ramswaroop Memorial University', 'Lucknow', 'IN', 'http://srmu.ac.in/', 'https://openalex.org/I4210106473', 0, '2025-11-30 04:34:06', '2025-11-30 04:34:06'),
(804, 'Indian Institute of Management Rohtak', 'Rohtak', 'IN', 'http://www.iimrohtak.ac.in/', 'https://openalex.org/I56308077', 0, '2025-11-30 04:34:06', '2025-11-30 04:34:06'),
(805, 'Kerala University of Fisheries and Ocean Studies', 'Kochi', 'IN', 'http://kufos.ac.in/', 'https://openalex.org/I221342038', 0, '2025-11-30 04:34:06', '2025-11-30 04:34:06'),
(806, 'Desh Bhagat University', 'Amloh', 'IN', 'http://www.deshbhagatuniversity.in/', 'https://openalex.org/I3129196102', 0, '2025-11-30 04:34:06', '2025-11-30 04:34:06'),
(807, 'Sardar Vallabhbhai Patel University of Agriculture & Technology', 'Meerut', 'IN', 'http://www.svbpmeerut.ac.in/', 'https://openalex.org/I4210098184', 0, '2025-11-30 04:34:06', '2025-11-30 04:34:06'),
(808, 'Dwarkadas J. Sanghvi College of Engineering', 'Mumbai', 'IN', 'https://www.djsce.ac.in', 'https://openalex.org/I212738717', 0, '2025-11-30 04:34:06', '2025-11-30 04:34:06'),
(809, 'Nil Ratan Sircar Medical College and Hospital', 'Kolkata', 'IN', 'https://nrsmc.edu.in/', 'https://openalex.org/I158908536', 0, '2025-11-30 04:34:06', '2025-11-30 04:34:06'),
(810, 'Indira Gandhi Institute of Development Research', 'Mumbai', 'IN', 'http://www.igidr.ac.in/', 'https://openalex.org/I16319596', 0, '2025-11-30 04:34:06', '2025-11-30 04:34:06'),
(811, 'Uttarakhand Technical University', 'Dehra Dūn', 'IN', 'http://uktech.ac.in/', 'https://openalex.org/I201750527', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(812, 'Indian Institute of Pulses Research', 'Kanpur', 'IN', 'http://www.iipr.res.in/', 'https://openalex.org/I2800609603', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(813, 'Kanya Maha Vidyalaya', 'Jalandhar', 'IN', 'http://www.kmvjla.org', 'https://openalex.org/I28630478', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(814, 'Deccan College of Medical Sciences', 'Hyderabad', 'IN', 'https://www.dcms.ac.in', 'https://openalex.org/I149145351', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(815, 'Xavier School of Management', 'Jamshedpur', 'IN', 'http://www.xlri.ac.in/', 'https://openalex.org/I301324184', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(816, 'Max Healthcare', 'New Delhi', 'IN', 'https://www.maxhealthcare.in/', 'https://openalex.org/I307255591', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(817, 'KR Mangalam University', 'Gurgaon', 'IN', 'https://www.krmangalam.edu.in', 'https://openalex.org/I4210114149', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(818, 'Government of Haryana', 'Gurgaon', 'IN', 'http://www.haryana.gov.in/', 'https://openalex.org/I2799795791', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(819, 'Directorate of Medicinal and Aromatic Plants Research', 'Anand', 'IN', 'http://www.dmapr.org.in/', 'https://openalex.org/I4210147308', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(820, 'Sri Ramakrishna Institute of Paramedical Sciences', 'Coimbatore', 'IN', 'http://www.sripmscop.com', 'https://openalex.org/I4210099837', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(821, 'Goa Medical College', 'Bambolim', 'IN', 'http://www.gmc.goa.gov.in/index.php/en/', 'https://openalex.org/I238597064', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(822, 'Central Institute of Fisheries Technology', 'Kochi', 'IN', 'http://www.cift.res.in/', 'https://openalex.org/I1304743227', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(823, 'ICFAI Foundation for Higher Education', 'Hyderabad', 'IN', 'http://www.ifheindia.org/', 'https://openalex.org/I4210138731', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(824, 'Maulana Azad National Urdu University', 'Hyderabad', 'IN', 'http://www.manuu.ac.in/', 'https://openalex.org/I3133391162', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(825, 'JSS Dental College and Hospital', 'Mysuru', 'IN', 'http://jssuni.edu.in/dental/home', 'https://openalex.org/I70928359', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(826, 'Mamata Medical College', 'Khammam', 'IN', 'http://www.mamatamedicalcollege.com/', 'https://openalex.org/I37012753', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(827, 'Dr. Babasaheb Ambedkar Technological University', 'Goregaon', 'IN', 'https://dbatu.ac.in/', 'https://openalex.org/I132157868', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(828, 'Oxford Dental College and Hospital', 'Bengaluru', 'IN', 'http://www.theoxford.edu/dental/', 'https://openalex.org/I4210092865', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(829, 'National Institute of Technology Arunachal Pradesh', 'Itanagar', 'IN', 'http://www.nitap.in/', 'https://openalex.org/I57496824', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(830, 'GNA University', 'Amritsar', 'IN', 'https://www.gnauniversity.edu.in/', 'https://openalex.org/I4210097606', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(831, 'Biju Patnaik University of Technology', 'Raurkela', 'IN', 'http://www.bput.ac.in/', 'https://openalex.org/I4028839', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(832, 'Inspiration Innovation Synergy University', 'Jaipur', 'IN', 'http://iisuniv.ac.in/', 'https://openalex.org/I4210154633', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(833, 'Sri Jayadeva Institute of Cardiovascular Sciences and Research', 'Bengaluru', 'IN', 'http://www.jayadevacardiology.com/', 'https://openalex.org/I2803020280', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(834, 'Central Institute of Temperate Horticulture', 'Srinagar', 'IN', 'http://www.cith.org.in/', 'https://openalex.org/I4210125584', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(835, 'HCL Technologies (India)', 'Noida', 'IN', 'http://www.hcltech.com/', 'https://openalex.org/I96211989', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(836, 'Jaypee University of Engineering and Technology', 'Guna', 'IN', 'https://www.juet.ac.in/', 'https://openalex.org/I25205351', 0, '2025-11-30 04:34:07', '2025-11-30 04:34:07'),
(837, 'Sahyadri Hospital', 'Pune', 'IN', 'http://sahyadrihospital.com/#/', 'https://openalex.org/I4210163767', 0, '2025-11-30 04:34:08', '2025-11-30 04:34:08'),
(838, 'Patel Hospital', 'Jalandhar', 'IN', 'http://patelhospital.com/', 'https://openalex.org/I4210091825', 0, '2025-11-30 04:34:08', '2025-11-30 04:34:08'),
(839, 'Lilavati Hospital & Research Centre', 'Mumbai', 'IN', 'http://lilavatihospital.com/index.aspx', 'https://openalex.org/I2800084889', 0, '2025-11-30 04:34:08', '2025-11-30 04:34:08'),
(840, 'Baba Farid University of Health Sciences', 'Faridkot', 'IN', 'http://bfuhs.ac.in/', 'https://openalex.org/I340869894', 0, '2025-11-30 04:34:08', '2025-11-30 04:34:08'),
(841, 'Centre for DNA Fingerprinting and Diagnostics', 'Hyderabad', 'IN', 'http://www.cdfd.org.in/', 'https://openalex.org/I78270026', 0, '2025-11-30 04:34:08', '2025-11-30 04:34:08'),
(842, 'Central Institute of Plastics Engineering and Technology', 'Chennai', 'IN', 'http://www.cipet.gov.in/', 'https://openalex.org/I10640828', 0, '2025-11-30 04:34:08', '2025-11-30 04:34:08'),
(843, 'Reliance Industries (India)', 'Mumbai', 'IN', 'http://www.ril.com/', 'https://openalex.org/I4210136064', 0, '2025-11-30 04:34:08', '2025-11-30 04:34:08'),
(844, 'Institute of Bioinformatics and Applied Biotechnology', 'Bengaluru', 'IN', 'http://www.ibab.ac.in/', 'https://openalex.org/I4210153885', 0, '2025-11-30 04:34:08', '2025-11-30 04:34:08'),
(845, 'Institute of Economic Growth', 'New Delhi', 'IN', 'http://www.iegindia.org/', 'https://openalex.org/I4210098828', 0, '2025-11-30 04:34:08', '2025-11-30 04:34:08'),
(846, 'STMicroelectronics (India)', 'Greater Noida', 'IN', 'http://www.st.com/content/st_com/en.html', 'https://openalex.org/I4210094169', 0, '2025-11-30 04:34:08', '2025-11-30 04:34:08'),
(847, 'North Bengal Agricultural University', 'Koch Bihār', 'IN', 'http://www.ubkv.ac.in', 'https://openalex.org/I4210116187', 0, '2025-11-30 04:34:08', '2025-11-30 04:34:08'),
(848, 'Mahatma Gandhi Mission Medical College and Hospital', 'Aurangabad', 'IN', 'http://mgmmcha.org/', 'https://openalex.org/I4210113792', 0, '2025-11-30 04:34:08', '2025-11-30 04:34:08');
INSERT INTO `institutions` (`id`, `name`, `city`, `country`, `website`, `domain`, `is_verified`, `created_at`, `updated_at`) VALUES
(849, 'Indian Institute of Public Health Gandhinagar', 'Gandhinagar', 'IN', 'http://iiphg.edu.in/', 'https://openalex.org/I4210156591', 0, '2025-11-30 04:34:08', '2025-11-30 04:34:08'),
(850, 'University of Agricultural and Horticultural Sciences', 'Shivamogga', 'IN', 'https://uahs.edu.in/', 'https://openalex.org/I4210150675', 0, '2025-11-30 04:34:08', '2025-11-30 04:34:08'),
(851, 'Arunai Engineering College', 'Tiruvannamalai', 'IN', 'http://www.arunai.org/', 'https://openalex.org/I4210093364', 0, '2025-11-30 04:34:08', '2025-11-30 04:34:08'),
(852, 'Bankura Sammilani Medical College', 'Bānkura', 'IN', 'http://bsmedicalcollege.org.in/', 'https://openalex.org/I127174594', 0, '2025-11-30 04:34:08', '2025-11-30 04:34:08'),
(853, 'SDM College of Medical Science and Hospital', 'Hubli', 'IN', 'http://sdmmedicalcollege.org/', 'https://openalex.org/I4210134729', 0, '2025-11-30 04:34:08', '2025-11-30 04:34:08'),
(854, 'Sidho Kanho Birsa University', 'Puruliya', 'IN', 'http://skbu.ac.in/', 'https://openalex.org/I261330113', 0, '2025-11-30 04:34:08', '2025-11-30 04:34:08'),
(855, 'Mody University of Science and Technology', 'Laxmangarh', 'IN', 'https://modyuniversity.ac.in', 'https://openalex.org/I72563045', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(856, 'Uka Tarsadia University', 'Surat', 'IN', 'https://www.utu.ac.in', 'https://openalex.org/I140352217', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(857, 'National Brain Research Centre', 'Gurgaon', 'IN', 'http://www.nbrc.ac.in/', 'https://openalex.org/I85332549', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(858, 'Indian Institute of Wheat and Barley Research', 'Karnāl', 'IN', 'http://www.iiwbr.org/', 'https://openalex.org/I4210141360', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(859, 'Mahatma Gandhi Mission\'s Dental College and Hospital', 'Navi Mumbai', 'IN', 'http://www.mgmdchnavimumbai.edu.in/', 'https://openalex.org/I4210124941', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(860, 'Gujarat Cancer & Research Institute', 'Ahmedabad', 'IN', 'http://gcriindia.org/', 'https://openalex.org/I135230010', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(861, 'Aeronautical Development Agency', 'Bengaluru', 'IN', 'https://www.ada.gov.in/', 'https://openalex.org/I138535024', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(862, 'National Institute of Epidemiology', 'Chennai', 'IN', 'http://www.nie.gov.in/', 'https://openalex.org/I4210100069', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(863, 'Ministry of Defence', 'New Delhi', 'IN', 'http://www.mod.nic.in/', 'https://openalex.org/I4210150591', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(864, 'Shri Dharmasthala Manjunatheswara College of Ayurveda and Hospital', 'Hassan', 'IN', 'https://sdmcahhassan.org', 'https://openalex.org/I2890559060', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(865, 'National Institute of Technology Goa', 'Ponda', 'IN', 'https://nitgoa.ac.in', 'https://openalex.org/I4210109276', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(866, 'University of Kota', 'Kota', 'IN', 'https://www.uok.ac.in/', 'https://openalex.org/I200561399', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(867, 'Indian Institute of Technology Goa', 'Ponda', 'IN', 'https://iitgoa.ac.in', 'https://openalex.org/I4210112052', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(868, 'Centre for Sight', 'New Delhi', 'IN', 'https://www.centreforsight.net/', 'https://openalex.org/I4210165620', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(869, 'Veer Bahadur Singh Purvanchal University', 'Jaunpur', 'IN', 'http://www.vbspu.ac.in/', 'https://openalex.org/I875728190', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(870, 'Santosh University', 'Ghaziabad', 'IN', 'http://www.santoshuniversity.com/', 'https://openalex.org/I2800102685', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(871, 'Central Institute of Freshwater Aquaculture', 'Bhubaneswar', 'IN', 'http://www.cifa.in/', 'https://openalex.org/I197888225', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(872, 'Defence Institute of Physiology and Allied Sciences', 'Delhi', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/defence-institute-physiology-allied-sciences-dipas', 'https://openalex.org/I51313444', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(873, 'Novartis (India)', 'Hyderabad', 'IN', 'http://www.novartis.in/', 'https://openalex.org/I4210090302', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(874, 'Pramukhswami Medical College', 'Anand', 'IN', 'https://www.charutarhealth.org', 'https://openalex.org/I4210120131', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(875, 'Amicable Knowledge Solution University', 'Satna', 'IN', 'http://aksuniversity.ac.in/', 'https://openalex.org/I4210147242', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(876, 'P.V. Narsimha Rao Telangana Veterinary University', 'Hyderabad', 'IN', 'http://tsvu.nic.in/home.aspx', 'https://openalex.org/I4210098074', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(877, 'National Forensic Sciences University', 'Gandhinagar', 'IN', 'https://www.nfsu.ac.in', 'https://openalex.org/I1331084196', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(878, 'Navodaya Dental College and Hospital', 'Rāichūr', 'IN', 'http://www.navodaya.edu.in/', 'https://openalex.org/I4210086950', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(879, 'Dr. Vitthalrao Vikhe Patil Foundation’s Medical College', 'Ahmednagar', 'IN', 'http://vims.edu.in/node/23', 'https://openalex.org/I4210132103', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(880, 'Indian Institute of Soil Science', 'Bhopal', 'IN', 'http://www.iiss.nic.in/index.html', 'https://openalex.org/I173432400', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(881, 'Central Potato Research Institute', 'Shimla', 'IN', 'http://cpri.ernet.in/', 'https://openalex.org/I4210100544', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(882, 'Materials Research Center', 'Coimbatore', 'IN', 'http://mrckovai.in/', 'https://openalex.org/I4210145824', 0, '2025-11-30 04:34:09', '2025-11-30 04:34:09'),
(883, 'Centre for Materials for Electronics Technology', 'Pune', 'IN', 'http://www.cmet.gov.in/', 'https://openalex.org/I4210118327', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(884, 'Public Works Department Buildings and Roads', 'Ludhiana', 'IN', 'http://www.pwdpunjab.gov.in/', 'https://openalex.org/I4210149275', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(885, 'George Institute for Global Health', 'New Delhi', 'IN', 'http://www.georgeinstitute.org.in/', 'https://openalex.org/I4210138609', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(886, 'Philips (India)', 'Gurgaon', 'IN', 'https://www.philips.co.in/', 'https://openalex.org/I4210133649', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(887, 'Command Hospital Air Force', 'Bengaluru', 'IN', NULL, 'https://openalex.org/I4210153078', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(888, 'Meenakshi Ammal Dental College and Hospital', 'Chennai', 'IN', 'http://www.madc.edu.in/', 'https://openalex.org/I4210109571', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(889, 'Aster Medcity', 'Kochi', 'IN', 'http://astermedcity.com/', 'https://openalex.org/I4210150119', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(890, 'Gujarat Ayurved University', 'Jamnagar', 'IN', 'http://www.ayurveduniversity.edu.in/', 'https://openalex.org/I2800605627', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(891, 'Dr. Rajendra Prasad Government Medical College', 'Kāngar', 'IN', 'http://www.rpgmc.ac.in/', 'https://openalex.org/I4210148181', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(892, 'Saraswati Dental College and Hospital', 'Lucknow', 'IN', 'http://www.sdclucknow.com/', 'https://openalex.org/I4210127890', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(893, 'Institute of Infrastructure Technology Research and Management', 'Ahmedabad', 'IN', 'https://iitram.ac.in', 'https://openalex.org/I3130511786', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(894, 'National Center for Disease Control', 'New Delhi', 'IN', 'http://www.ncdc.gov.in/', 'https://openalex.org/I103004294', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(895, 'Assam Down Town University', 'Guwahati', 'IN', 'https://www.adtu.in/', 'https://openalex.org/I49068896', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(896, 'Career Point University', 'Kota', 'IN', 'http://cpur.in/', 'https://openalex.org/I4210091899', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(897, 'Jawaharlal Nehru Tropical Botanic Garden and Research Institute', 'Thiruvananthapuram', 'IN', 'http://jntbgri.res.in/', 'https://openalex.org/I2800926800', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(898, 'Center for Interdisciplinary Studies', 'Kolkata', 'IN', 'http://cintdis.org/', 'https://openalex.org/I4210137189', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(899, 'Ministry of Law and Justice', 'New Delhi', 'IN', 'https://lawmin.gov.in/', 'https://openalex.org/I4210166738', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(900, 'Institute of Development Studies', 'Jaipur', 'IN', 'https://www.idsj.org', 'https://openalex.org/I4210135264', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(901, 'Pushpagiri Medical College', 'Tiruvalla', 'IN', 'http://pushpagiri.in/', 'https://openalex.org/I2802498779', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(902, 'Shreemati Nathibai Damodar Thackersey Women\'s University', 'Mumbai', 'IN', 'https://sndt.ac.in/', 'https://openalex.org/I19986915', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(903, 'Central Pollution Control Board', 'New Delhi', 'IN', 'http://cpcb.nic.in/', 'https://openalex.org/I14467051', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(904, 'North Eastern Indira Gandhi Regional Institute of Health and Medical Sciences', 'Shillong', 'IN', 'http://www.neigrihms.gov.in/', 'https://openalex.org/I231543472', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(905, 'Population Council', 'New Delhi', 'IN', 'http://www.popcouncil.org/', 'https://openalex.org/I1314022388', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(906, 'Indian Army', 'New Delhi', 'IN', 'http://indianarmy.nic.in/', 'https://openalex.org/I2800341339', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(907, 'University B.D.T College of Engineering', 'Davangere', 'IN', 'http://www.ubdtce.org/', 'https://openalex.org/I142253595', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(908, 'Abasaheb Garware College', 'Pune', 'IN', 'http://mesgarwarecollege.org/', 'https://openalex.org/I183970581', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(909, 'Pt. Jawahar Lal Nehru Memorial Medical College', 'Raipur', 'IN', 'http://www.ptjnmcraipur.in/', 'https://openalex.org/I2799791569', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(910, 'Indian Institute of Management Ranchi', 'Ranchi', 'IN', 'https://iimranchi.ac.in/', 'https://openalex.org/I4210162014', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(911, 'Dharmsinh Desai University', 'Nadiād', 'IN', 'http://www.ddu.ac.in/', 'https://openalex.org/I10008193', 0, '2025-11-30 04:34:10', '2025-11-30 04:34:10'),
(912, 'National Institute of Technology Nagaland', 'Dimāpur', 'IN', 'https://nitnagaland.ac.in/', 'https://openalex.org/I3131484930', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(913, 'Indian Institute of Foreign Trade', 'New Delhi', 'IN', 'http://edu.iift.ac.in/', 'https://openalex.org/I38919395', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(914, 'Centre for Science and Environment', 'New Delhi', 'IN', 'http://www.cseindia.org/', 'https://openalex.org/I75971999', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(915, 'Kempegowda Institute of Medical Sciences', 'Bengaluru', 'IN', 'http://www.kimsbangalore.edu.in/', 'https://openalex.org/I169134981', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(916, 'Karnataka Veterinary Animal and Fisheries Sciences University', 'Bidar', 'IN', 'http://www.kvafsu.kar.nic.in/', 'https://openalex.org/I244504473', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(917, 'Maharaj Vijayaram Gajapathi Raj College of Engineering', 'Vizianagaram', 'IN', 'http://www.mvgrce.com/', 'https://openalex.org/I4210094866', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(918, 'Orthopaedic Research Group', 'Coimbatore', 'IN', 'https://orthopaedicresearchgroup.com/', 'https://openalex.org/I4210128379', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(919, 'Nature Conservation Foundation', 'Mysore', 'IN', 'http://ncf-india.org/', 'https://openalex.org/I80883720', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(920, 'Bharti Hospital', 'Karnāl', 'IN', 'http://www.bhartihospital.com/', 'https://openalex.org/I4210153282', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(921, 'Dr. Ram Manohar Lohia Avadh University', 'Faizabad', 'IN', 'http://www.rmlau.ac.in/', 'https://openalex.org/I1337315214', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(922, 'Gajara Raja Medical College', 'Gwalior', 'IN', 'http://www.grmcgwalior.org/', 'https://openalex.org/I2802001206', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(923, 'National Institute of Science and Technology', 'Brahmapur', 'IN', 'https://www.nist.edu/', 'https://openalex.org/I4210098947', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(924, 'Swami Vivekananda Yoga Anusandhana Samsthana', 'Bengaluru', 'IN', 'http://svyasa.edu.in/', 'https://openalex.org/I2800348719', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(925, 'Bhavnagar University', 'Bhavnagar', 'IN', 'http://www.mkbhavuni.edu.in/', 'https://openalex.org/I119336924', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(926, 'The Asiatic Society of Mumbai', 'Mumbai', 'IN', 'http://asiaticsociety.org.in/', 'https://openalex.org/I4210117205', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(927, 'Centre of Plasma Physics - Institute for Plasma Research', 'Gandhinagar', 'IN', 'http://www.cppipr.in/', 'https://openalex.org/I4210118770', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(928, 'Department of Space', 'Bengaluru', 'IN', 'http://dos.gov.in/', 'https://openalex.org/I3148377317', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(929, 'Structural Engineering Research Centre', 'Chennai', 'IN', 'http://www.serc.res.in/', 'https://openalex.org/I1341020899', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(930, 'General Motors (India)', 'Godhra', 'IN', 'http://careers.gm.com/worldwide-locations/asiamiddle-east/india.html', 'https://openalex.org/I2801120862', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(931, 'ACPM Dental College and Hospital', 'Dhule', 'IN', 'http://acpmjmf.com/dental/index.html', 'https://openalex.org/I4210119062', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(932, 'St. John\'s National Academy of Health Sciences', 'Bengaluru', 'IN', 'http://www.stjohns.in/', 'https://openalex.org/I4210129261', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(933, 'Bhagwant University', 'Ajmer', 'IN', 'http://bhagwantuniversity.ac.in/', 'https://openalex.org/I3132145264', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(934, 'Ganga Hospital', 'Coimbatore', 'IN', 'http://www.gangahospital.com/', 'https://openalex.org/I4210148936', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(935, 'National Agri-Food Biotechnology Institute', 'Mohali', 'IN', 'https://nabi.res.in/', 'https://openalex.org/I4210164849', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(936, 'Krishna University', 'Machilipatnam', 'IN', 'http://www.krishnauniversity.ac.in/', 'https://openalex.org/I221092938', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(937, 'Sugarcane Breeding Institute', 'Coimbatore', 'IN', 'http://www.sugarcane.res.in/', 'https://openalex.org/I4210142091', 0, '2025-11-30 04:34:11', '2025-11-30 04:34:11'),
(938, 'Amala Institute of Medical Sciences', 'Thrissur', 'IN', 'http://www.amalaims.org/', 'https://openalex.org/I173894486', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(939, 'Silchar Medical College and Hospital', 'Silchar', 'IN', 'http://smcassam.gov.in/', 'https://openalex.org/I2802488231', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(940, 'Animal Husbandry & Veterinary', 'Guwahati', 'IN', 'https://animalhusbandry.assam.gov.in/', 'https://openalex.org/I4210086717', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(941, 'Aarupadai Veedu Medical College & Hospital', 'Puducherry', 'IN', 'http://www.avmcpondy.com/', 'https://openalex.org/I222471920', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(942, 'Central Research Institute for Dryland Agriculture', 'Hyderabad', 'IN', 'http://www.crida.in/', 'https://openalex.org/I141953991', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(943, 'Glocal University', 'Sahāranpur', 'IN', 'http://www.glocaluniversity.edu.in/', 'https://openalex.org/I3130698519', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(944, 'Cluster University Srinagar', 'Srinagar', 'IN', 'http://www.cusrinagar.edu.in/', 'https://openalex.org/I4210099876', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(945, 'Mysore Medical College', 'Mysore', 'IN', 'http://www.mysoremedicalcollege.com/', 'https://openalex.org/I4210132256', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(946, 'King Edward Memorial Hospital Research Centre', 'Pune', 'IN', 'http://www.kemhospital.org/', 'https://openalex.org/I4210148958', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(947, 'Madras Institute of Development Studies', 'Chennai', 'IN', 'http://www.mids.ac.in/', 'https://openalex.org/I224417259', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(948, 'Rayat Shikshan Sanstha', 'Satara', 'IN', 'http://www.rayatshikshan.edu/', 'https://openalex.org/I2801997238', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(949, 'Global Hospitals', 'Hyderabad', 'IN', 'http://www.globalhospitalsindia.com/contact/hospital-in-hyderabad-lbnagar', 'https://openalex.org/I4210114360', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(950, 'Reserve Bank of India', 'Mumbai', 'IN', 'https://www.rbi.org.in/', 'https://openalex.org/I1287339526', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(951, 'Deenanath Mangeshkar Hospital and Research Center', 'Pune', 'IN', 'http://www.dmhospital.org', 'https://openalex.org/I4210116893', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(952, 'Vaidyaratnam P.S. Varier Ayurveda College', 'Malappuram', 'IN', 'https://www.kottakkalayurvedacollege.ac.in/', 'https://openalex.org/I4210119019', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(953, 'Flame University', 'Pune', 'IN', 'https://www.flame.edu.in', 'https://openalex.org/I2802865875', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(954, 'Magadh University', 'Bodh Gaya', 'IN', 'http://www.magadhuniversity.ac.in/', 'https://openalex.org/I127727965', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(955, 'Noorul Islam College of Dental Science', 'Thiruvananthapuram', 'IN', 'http://nicollegeofdentalscience.com/', 'https://openalex.org/I4210127342', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(956, 'Pandit Bhagwat Dayal Sharma University of Health Sciences', 'Rohtak', 'IN', 'http://www.uhsr.ac.in/', 'https://openalex.org/I4210140486', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(957, 'Government of Kerala', 'Thiruvananthapuram', 'IN', 'https://kerala.gov.in/', 'https://openalex.org/I2800731441', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(958, 'Woxsen School of Business', 'Hyderabad', 'IN', 'https://woxsen.edu.in', 'https://openalex.org/I3131870445', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(959, 'St. Stephen’s Hospital', 'Delhi', 'IN', 'http://www.ststephenshospital.org/', 'https://openalex.org/I4210147366', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(960, 'SRM University, Andhra Pradesh', 'Mangalagiri', 'IN', 'https://srmap.edu.in', 'https://openalex.org/I4210100463', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(961, 'Central University of Karnataka', 'Kalaburagi', 'IN', 'https://www.cuk.ac.in/', 'https://openalex.org/I106053113', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(962, 'PRIST University', 'Vallam', 'IN', 'http://prist.ac.in/', 'https://openalex.org/I160682246', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(963, 'Government Medical College Thoothukudi', 'Thoothukudi', 'IN', 'http://www.tmctkd.ac.in/tmctkd/', 'https://openalex.org/I2799761305', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(964, 'Dr. S.R. Chandrasekhar Institute of Speech and Hearing', 'Bengaluru', 'IN', 'http://www.speechear.org/', 'https://openalex.org/I4210154221', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(965, 'Noida International University', 'Greater Noida', 'IN', 'https://niu.edu.in/', 'https://openalex.org/I4210086299', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(966, 'Bombay College of Pharmacy', 'Mumbai', 'IN', 'https://www.bcp.edu.in/', 'https://openalex.org/I4210111665', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(967, 'INHS Asvini', 'Mumbai', 'IN', 'http://indiannavy.nic.in/content/inhs-asvini', 'https://openalex.org/I4210113533', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(968, 'Indian Oil Corporation (India)', 'New Delhi', 'IN', 'https://www.iocl.com/', 'https://openalex.org/I173709673', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(969, 'Patanjali Research Foundation', 'Haridwar', 'IN', 'http://www.patanjaliresearchfoundation.com/patanjali/', 'https://openalex.org/I4210145585', 0, '2025-11-30 04:34:12', '2025-11-30 04:34:12'),
(970, 'Madras Medical Mission', 'Chennai', 'IN', 'http://www.madrasmedicalmission.org/', 'https://openalex.org/I2802574061', 0, '2025-11-30 04:34:13', '2025-11-30 04:34:13'),
(971, 'Bharat Electronics (India)', 'Bengaluru', 'IN', 'http://www.bel-india.com/', 'https://openalex.org/I114602248', 0, '2025-11-30 04:34:13', '2025-11-30 04:34:13'),
(972, 'Indian Grassland and Fodder Research Institute', 'Jhānsi', 'IN', 'http://www.igfri.res.in/', 'https://openalex.org/I1296611117', 0, '2025-11-30 04:34:13', '2025-11-30 04:34:13'),
(973, 'Guru Nanak Institutions', 'Secunderabad', 'IN', 'http://gniindia.org/', 'https://openalex.org/I4210130653', 0, '2025-11-30 04:34:13', '2025-11-30 04:34:13'),
(974, 'Central Tuber Crops Research Institute', 'Thiruvananthapuram', 'IN', 'http://www.ctcri.org/', 'https://openalex.org/I1322336093', 0, '2025-11-30 04:34:13', '2025-11-30 04:34:13'),
(975, 'National Council Of Educational Research And Training', 'New Delhi', 'IN', 'https://www.ncert.nic.in', 'https://openalex.org/I15949855', 0, '2025-11-30 04:34:13', '2025-11-30 04:34:13'),
(976, 'Kokilaben Dhirubhai Ambani Hospital', 'Mumbai', 'IN', 'http://www.kokilabenhospital.com/', 'https://openalex.org/I4210131938', 0, '2025-11-30 04:34:13', '2025-11-30 04:34:13'),
(977, 'Centre for Policy Research', 'New Delhi', 'IN', 'http://www.cprindia.org/', 'https://openalex.org/I1301844980', 0, '2025-11-30 04:34:13', '2025-11-30 04:34:13'),
(978, 'Rayat Bahra University', 'Mohali', 'IN', 'https://rayatbahrauniversity.edu.in', 'https://openalex.org/I2801240201', 0, '2025-11-30 04:34:13', '2025-11-30 04:34:13'),
(979, 'National Institute of Construction Management and Research', 'Pune', 'IN', 'http://www.nicmar.ac.in/', 'https://openalex.org/I4210092165', 0, '2025-11-30 04:34:13', '2025-11-30 04:34:13'),
(980, 'Cancer Hospital and Research Institute', 'Gwalior', 'IN', 'http://cancerhospitalgwalior.com/', 'https://openalex.org/I4210119054', 0, '2025-11-30 04:34:13', '2025-11-30 04:34:13'),
(981, 'Mother Hospital', 'Thrissur', 'IN', 'http://motherhospitalthrissur.org/', 'https://openalex.org/I4210126340', 0, '2025-11-30 04:34:13', '2025-11-30 04:34:13'),
(982, 'Kazi Nazrul University', 'Asansol', 'IN', 'http://www.knu.ac.in/', 'https://openalex.org/I3131729800', 0, '2025-11-30 04:34:13', '2025-11-30 04:34:13'),
(983, 'Melaka Manipal Medical College', 'Manipal', 'IN', 'https://manipal.edu/mu/about-us/world-wide-manipal/melaka-manipal-medical-college.html', 'https://openalex.org/I4210093039', 0, '2025-11-30 04:34:18', '2025-11-30 04:34:18'),
(984, 'BLK Super Speciality Hospital', 'New Delhi', 'IN', 'http://www.blkhospital.com/', 'https://openalex.org/I4210122912', 0, '2025-11-30 04:34:18', '2025-11-30 04:34:18'),
(985, 'Index Medical College, Hospital & Research Centre', 'Indore', 'IN', 'http://www.indexgroup.co.in/home.htm', 'https://openalex.org/I4210115159', 0, '2025-11-30 04:34:18', '2025-11-30 04:34:18'),
(986, 'Indian Institute of Soil and Water Conservation', 'Dehra Dūn', 'IN', 'http://www.cswcrtiweb.org/', 'https://openalex.org/I4210158105', 0, '2025-11-30 04:34:18', '2025-11-30 04:34:18'),
(987, 'Indian Institute of Information Technology Guwahati', 'Guwahati', 'IN', 'http://www.iiitg.ac.in/', 'https://openalex.org/I4210089896', 0, '2025-11-30 04:34:18', '2025-11-30 04:34:18'),
(988, 'Fortis Escorts Heart Institute', 'New Delhi', 'IN', 'http://www.fortisescorts.in/', 'https://openalex.org/I4210102489', 0, '2025-11-30 04:34:18', '2025-11-30 04:34:18'),
(989, 'Rajiv Gandhi University of Knowledge Technologies', 'Adilabad', 'IN', 'http://www.rgukt.ac.in/', 'https://openalex.org/I46700001', 0, '2025-11-30 04:34:18', '2025-11-30 04:34:18'),
(990, 'National Centre for Earth Science Studies', 'Trivandrum', 'IN', 'http://ncess.gov.in/', 'https://openalex.org/I84913233', 0, '2025-11-30 04:34:18', '2025-11-30 04:34:18'),
(991, 'Sardarkrushinagar Dantiwada Agricultural University', 'Pālanpur', 'IN', 'http://www.sdau.edu.in/', 'https://openalex.org/I271267010', 0, '2025-11-30 04:34:18', '2025-11-30 04:34:18'),
(992, 'Terna Dental College and Hospital', 'Navi Mumbai', 'IN', 'http://www.ternadental.org/', 'https://openalex.org/I4210098157', 0, '2025-11-30 04:34:18', '2025-11-30 04:34:18'),
(993, 'Azim Premji University', 'Bengaluru', 'IN', 'https://azimpremjiuniversity.edu.in/SitePages/index.aspx', 'https://openalex.org/I14716724', 0, '2025-11-30 04:34:18', '2025-11-30 04:34:18'),
(994, 'NKP Salve Institute of Medical Sciences and Lata Mangeshkar Hospital', 'Nagpur', 'IN', 'http://www.nkpsims.edu.in/', 'https://openalex.org/I4210099933', 0, '2025-11-30 04:34:18', '2025-11-30 04:34:18'),
(995, 'National Bureau of Soil Survey and Land Use Planning', 'Nagpur', 'IN', 'http://www.nbsslup.in/', 'https://openalex.org/I4210162299', 0, '2025-11-30 04:34:18', '2025-11-30 04:34:18'),
(996, 'Central Institute of Technology Kokrajhar', 'Kokrajhar', 'IN', 'http://www.cit.ac.in/', 'https://openalex.org/I4210128956', 0, '2025-11-30 04:34:18', '2025-11-30 04:34:18'),
(997, 'Indian Institute of Information Technology Vadodara', 'Vadodara', 'IN', 'https://iiitvadodara.ac.in', 'https://openalex.org/I4210100893', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(998, 'Centre for Artificial Intelligence and Robotics', 'Bengaluru', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/centre-artificial-intelligence-robotics-cair', 'https://openalex.org/I4210121405', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(999, 'Government of Gujarat', 'Gandhinagar', 'IN', 'http://www.gujaratindia.com/', 'https://openalex.org/I2802014819', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1000, 'Jagannath University', 'Jhajjar', 'IN', 'http://jagannathuniversityncr.ac.in/', 'https://openalex.org/I150263970', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1001, 'Biotech Park', 'Lucknow', 'IN', 'https://www.biotechpark.org.in/', 'https://openalex.org/I4210100303', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1002, 'National Bureau of Fish Genetic Resources', 'Lucknow', 'IN', 'http://www.nbfgr.res.in/', 'https://openalex.org/I4210090005', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1003, 'Indian Numismatic, Historical and Cultural Research Foundation', 'Nashik', 'IN', 'http://www.inhcrf.org', 'https://openalex.org/I4210142428', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1004, 'Kalawati Saran Children\'s Hospital', 'New Delhi', 'IN', 'http://www.jivdayafound.org/kalawati-saran/', 'https://openalex.org/I4210150446', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1005, 'Deen Dayal Upadhyay Hospital', 'Delhi', 'IN', 'http://www.delhi.gov.in/wps/wcm/connect/doit_health/Health/Home/Hospitals/Deen+Dayal+Upadhyay+Hospital/', 'https://openalex.org/I4210095530', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1006, 'Shyam Shah Medical College', 'Rewa', 'IN', 'http://www.ssmcrewa.com/', 'https://openalex.org/I2802366294', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1007, 'National Institute of Immunohaematology', 'Mumbai', 'IN', 'http://www.niih.org.in/', 'https://openalex.org/I4210108545', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1008, 'Eternal University', 'Rājgarh', 'IN', 'http://www.eternaluniversity.edu.in/', 'https://openalex.org/I46781620', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1009, 'Indian Institute of Science Education and Research Berhampur', 'Brahmapur', 'IN', 'http://www.iiserbpr.ac.in/', 'https://openalex.org/I4210115612', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1010, 'Intel (India)', 'Bengaluru', 'IN', 'http://www.intel.in/', 'https://openalex.org/I4210146682', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1011, 'Central Plantation Crops Research Institute', 'Kāsaragod', 'IN', 'http://www.cpcri.gov.in/', 'https://openalex.org/I4210142041', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1012, 'National Institute of Ocean Technology', 'Chennai', 'IN', 'https://www.niot.res.in/', 'https://openalex.org/I25592554', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1013, 'National Atmospheric Research Laboratory', 'Pākāla', 'IN', 'http://www.narl.gov.in/', 'https://openalex.org/I152870717', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1014, 'National Institute of Fashion Technology', 'New Delhi', 'IN', 'https://nift.ac.in', 'https://openalex.org/I25621075', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1015, 'Institute of Mental Health', 'Chennai', 'IN', 'http://www.tnhealth.org/directorate/imh.htm', 'https://openalex.org/I4210088438', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1016, 'Institute for Social and Economic Change', 'Bengaluru', 'IN', 'http://www.isec.ac.in/', 'https://openalex.org/I4210092443', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1017, 'Centre for Development Economics', 'Delhi', 'IN', 'http://www.cdedse.org/', 'https://openalex.org/I4210152395', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1018, 'Kovai Medical Center and Hospital', 'Coimbatore', 'IN', 'http://www.kmchhospitals.com/', 'https://openalex.org/I4210111349', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1019, 'Mother Teresa Women\'s University', 'Kodaikānāl', 'IN', 'http://www.motherteresawomenuniv.ac.in/', 'https://openalex.org/I106841677', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1020, 'Centre for Nano and Soft Matter Sciences', 'Bengaluru', 'IN', 'http://www.cens.res.in/', 'https://openalex.org/I4210115714', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1021, 'Nethradhama Superspeciality Eye Hospital', 'Bengaluru', 'IN', 'http://nethradhama.org/', 'https://openalex.org/I4210147485', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1022, 'Regional Medical Research Centre', 'Belgaum', 'IN', 'http://icmr.nic.in/pinstitute/belgaum/index.htm', 'https://openalex.org/I4210093644', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:42'),
(1023, 'Cadila Healthcare (India)', 'Ahmedabad', 'IN', 'http://zyduscadila.com/', 'https://openalex.org/I4210132663', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1024, 'RKDF University', 'Bhopal', 'IN', 'http://www.rkdf.ac.in/', 'https://openalex.org/I2801027606', 0, '2025-11-30 04:34:19', '2025-11-30 04:34:19'),
(1025, 'University of Horticultural Sciences Bagalkote', 'Bagalkot', 'IN', 'https://www.uhsbagalkot.edu.in/', 'https://openalex.org/I102458738', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1026, 'Fatima Mata National College', 'Kollam', 'IN', 'http://fatimamatanationalcollege.ac.in/inner.php?m=178&p=2&n=2', 'https://openalex.org/I2802738084', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1027, 'Hindustan Aeronautics Limited (India)', 'Bengaluru', 'IN', 'http://www.hal-india.com/', 'https://openalex.org/I4210088939', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1028, 'Lingaya\'s Vidyapeeth', 'Faridabad', 'IN', 'http://www.lingayasuniversity.edu.in/', 'https://openalex.org/I182663762', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1029, 'Central Power Research Institute', 'Bengaluru', 'IN', 'http://www.cpri.in/', 'https://openalex.org/I109493002', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1030, 'Ahmedabad Civil Hospital', 'Ahmedabad', 'IN', 'http://civilhospitalamdavad.org/', 'https://openalex.org/I3016035982', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1031, 'Chhattisgarh Dental College & Research Institute', 'Rāj-Nāndgaon', 'IN', 'http://www.cdcri.org/', 'https://openalex.org/I4210130463', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1032, 'Central Institute of Agricultural Engineering', 'Bhopal', 'IN', 'http://www.ciae.nic.in/Content/index.aspx', 'https://openalex.org/I138367206', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1033, 'Government of Uttar Pradesh', 'Lucknow', 'IN', 'http://up.gov.in/', 'https://openalex.org/I2801491316', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1034, 'Lala Lajpat Rai Memorial Medical College', 'Meerut', 'IN', 'http://llrmmedicalcollege.nic.in/', 'https://openalex.org/I219845778', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1035, 'Central University of Kashmir', 'Gāndarbal', 'IN', 'http://cukashmir.ac.in/', 'https://openalex.org/I76202665', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1036, 'South Eastern Railway', 'Kolkata', 'IN', 'http://www.ser.indianrailways.gov.in/', 'https://openalex.org/I2803054517', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1037, 'Goverment Siddha Medical College', 'Chennai', 'IN', 'http://gsmcchennai.ac.in/', 'https://openalex.org/I4210088592', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1038, 'Regional Research Institute of Unani Medicine', 'Patna', 'IN', 'http://www.rriumpatna.in/', 'https://openalex.org/I4210158697', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1039, 'Chhattisgarh Kamdhenu Vishwavidyalaya', 'Raipur', 'IN', 'http://cgkv.ac.in/', 'https://openalex.org/I2800089517', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1040, 'T. D. Medical College', 'Alappuzha', 'IN', 'http://www.tdmcalappuzha.org/', 'https://openalex.org/I2802466914', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1041, 'Institute of Wood Science and Technology', 'Bengaluru', 'IN', 'http://iwst.icfre.gov.in/', 'https://openalex.org/I4210153472', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1042, 'Central Council for Research in Homoeopathy', 'New Delhi', 'IN', 'http://ccrhindia.org/', 'https://openalex.org/I4210155405', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1043, 'Kerala Forest Research Institute', 'Thrissur', 'IN', 'http://www.kfri.res.in/', 'https://openalex.org/I98944809', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1044, 'Mangalore Institute of Oncology', 'Mangalore', 'IN', 'https://www.miohospital.com/', 'https://openalex.org/I4210118226', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1045, 'Medi-Caps University', 'Indore', 'IN', 'https://www.medicaps.ac.in', 'https://openalex.org/I4210119567', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1046, 'Baba Raghav Das Medical College', 'Gorakhpur', 'IN', 'http://www.brdmc.org/', 'https://openalex.org/I2799408090', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1047, 'Periyar Maniammai Institute of Science & Technology', 'Vallam', 'IN', 'http://www.pmu.edu/', 'https://openalex.org/I207025910', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1048, 'ACS Medical College and Hospital', 'Chennai', 'IN', 'http://acsmch.ac.in/?page_id=13', 'https://openalex.org/I4210086035', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1049, 'Society for Applied Microwave Electronics Engineering & Research', 'Mumbai', 'IN', 'https://www.sameer.gov.in/', 'https://openalex.org/I4210137186', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1050, 'Shamnur Shivashankarappa Institute of Medical Sciences & Research Centre', 'Davangere', 'IN', 'http://www.ssimsrc.com/', 'https://openalex.org/I3129348228', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1051, 'Birsa Agricultural University', 'Ranchi', 'IN', 'https://www.bauranchi.org/', 'https://openalex.org/I205478545', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1052, 'Tamil Nadu Dr. J Jayalalitha Fisheries University', 'Nagapattinam', 'IN', 'http://tnjfu.ac.in/', 'https://openalex.org/I304343950', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1053, 'Voluntary Health Association Of India', 'New Delhi', 'IN', 'http://www.vhai.org/', 'https://openalex.org/I4210093800', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1054, 'National Institute of Medical Statistics', 'New Delhi', 'IN', 'http://nims-icmr.nic.in/NIMS/', 'https://openalex.org/I4210098320', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1055, 'Vijayanagara Institute of Medical Sciences', 'Bellary', 'IN', 'http://www.vimsbellary.org.in/', 'https://openalex.org/I2801873993', 0, '2025-11-30 04:34:20', '2025-11-30 04:34:20'),
(1056, 'Hindu Rao Hospital', 'Delhi', 'IN', 'http://www.hindurao.com/', 'https://openalex.org/I4210091779', 0, '2025-11-30 04:34:21', '2025-11-30 04:34:21'),
(1057, 'Centre For Wildlife Studies', 'Bengaluru', 'IN', 'https://cwsindia.org/', 'https://openalex.org/I4210128182', 0, '2025-11-30 04:34:21', '2025-11-30 04:34:21'),
(1058, 'National Institute of Pathology', 'New Delhi', 'IN', 'http://instpath.gov.in/', 'https://openalex.org/I4210096777', 0, '2025-11-30 04:34:21', '2025-11-30 04:34:21'),
(1059, 'Sri Guru Granth Sahib World University', 'Fatehgarh Chūriān', 'IN', 'https://sggswu.edu.in/', 'https://openalex.org/I199140397', 0, '2025-11-30 04:34:21', '2025-11-30 04:34:21'),
(1060, 'Sri Karan Narendra Agriculture University, Jobner', 'Jobner', 'IN', 'https://www.sknau.ac.in', 'https://openalex.org/I4210128752', 0, '2025-11-30 04:34:21', '2025-11-30 04:34:21'),
(1061, 'National Institute of Technology Sikkim', 'Gangtok', 'IN', 'https://nitsikkim.ac.in', 'https://openalex.org/I101326570', 0, '2025-11-30 04:34:21', '2025-11-30 04:34:21'),
(1062, 'BML Munjal University', 'Gurgaon', 'IN', 'https://www.bml.edu.in/', 'https://openalex.org/I1323093577', 0, '2025-11-30 04:34:21', '2025-11-30 04:34:21'),
(1063, 'Vector Control Research Centre', 'Puducherry', 'IN', 'http://vcrc.res.in/', 'https://openalex.org/I4210144797', 0, '2025-11-30 04:34:21', '2025-11-30 04:34:21'),
(1064, 'Dr. A. Ramachandran\'s Diabetes Hospitals', 'Chennai', 'IN', 'http://www.ardiabetes.org/', 'https://openalex.org/I4210120928', 0, '2025-11-30 04:34:21', '2025-11-30 04:34:21'),
(1065, 'Ruxmaniben Deepchand Gardi Medical College', 'Ujjain', 'IN', 'https://www.rdgmc.edu.in/', 'https://openalex.org/I3130004915', 0, '2025-11-30 04:34:21', '2025-11-30 04:34:21'),
(1066, 'Central Institute of Psychiatry', 'Ranchi', 'IN', 'http://cipranchi.nic.in/', 'https://openalex.org/I84356168', 0, '2025-11-30 04:34:21', '2025-11-30 04:34:21'),
(1067, 'World Health Organization - India', 'New Delhi', 'IN', 'http://www.who.int/countries/ind/en/', 'https://openalex.org/I4210162279', 0, '2025-11-30 04:34:21', '2025-11-30 04:34:21'),
(1068, 'Institute for Defence Studies and Analyses', 'New Delhi', 'IN', 'https://idsa.in', 'https://openalex.org/I3132522411', 0, '2025-11-30 04:34:21', '2025-11-30 04:34:21'),
(1069, 'Central Institute of Post-Harvest Engineering and Technology', 'Ludhiana', 'IN', 'http://www.ciphet.in/', 'https://openalex.org/I4210104382', 0, '2025-11-30 04:34:21', '2025-11-30 04:34:21'),
(1070, 'Vinayaka Missions Medical College and Hospitals', 'Salem', 'IN', 'http://vmmckkl.com/', 'https://openalex.org/I4210138697', 0, '2025-11-30 04:34:21', '2025-11-30 04:34:21'),
(1071, 'Apollo Gleneagles Hospitals', 'Kolkata', 'IN', 'http://kolkata.apollohospitals.com/', 'https://openalex.org/I2801225794', 0, '2025-11-30 04:34:21', '2025-11-30 04:34:21'),
(1072, 'International Development Research Centre', 'New Delhi', 'IN', 'https://www.idrc.ca/', 'https://openalex.org/I4210118552', 0, '2025-11-30 04:34:21', '2025-11-30 04:34:21'),
(1073, 'University of Science and Technology, Meghalaya', 'Nongpoh', 'IN', 'http://www.ustm.ac.in/', 'https://openalex.org/I4210133150', 0, '2025-11-30 04:34:21', '2025-11-30 04:34:21'),
(1074, 'Kothiwal Dental College and Research Centre', 'Morādābād', 'IN', 'http://www.kothiwaldentalcollege.com/', 'https://openalex.org/I4210090919', 0, '2025-11-30 04:34:21', '2025-11-30 04:34:21'),
(1075, 'Jai Prakash Vishwavidyalaya', 'Chāpra', 'IN', 'http://jpv.bih.nic.in/', 'https://openalex.org/I2914622271', 0, '2025-11-30 04:34:21', '2025-11-30 04:34:21'),
(1076, 'Dr. Mohan\'s Diabetes Specialities Centre', 'Chennai', 'IN', 'http://drmohansdiabetes.com/', 'https://openalex.org/I4210137848', 0, '2025-11-30 04:34:22', '2025-11-30 04:34:22'),
(1077, 'Centre for Chronic Disease Control', 'Gurgaon', 'IN', 'http://www.ccdcindia.org/', 'https://openalex.org/I4210119988', 0, '2025-11-30 04:34:22', '2025-11-30 04:34:22'),
(1078, 'Technology Information, Forecasting and Assessment Council', 'New Delhi', 'IN', 'http://tifac.org.in/', 'https://openalex.org/I4210154636', 0, '2025-11-30 04:34:22', '2025-11-30 04:34:22'),
(1079, 'Wildlife Information Liaison Development', 'Coimbatore', 'IN', 'https://wild.zooreach.org/', 'https://openalex.org/I4210130255', 0, '2025-11-30 04:34:22', '2025-11-30 04:34:22'),
(1080, 'Veterinary & Animal Husbandry', 'Kohima', 'IN', 'http://vetyngl.nic.in/', 'https://openalex.org/I4210121966', 0, '2025-11-30 04:34:22', '2025-11-30 04:34:22'),
(1081, 'Employees State Insurance Post Graduate Institute of Medical Sciences and Research', 'New Delhi', 'IN', 'http://www.esipgimsrbasai.com/', 'https://openalex.org/I4210091100', 0, '2025-11-30 04:34:22', '2025-11-30 04:34:22'),
(1082, 'Sri Venkateshwaraa Medical College Hospital and Research Centre', 'Puducherry', 'IN', 'http://www.svmcpondy.com/college/', 'https://openalex.org/I4210119048', 0, '2025-11-30 04:34:22', '2025-11-30 04:34:22'),
(1083, 'Social Change and Development', 'Tirunelveli', 'IN', 'http://www.scad.org.in/', 'https://openalex.org/I4210144541', 0, '2025-11-30 04:34:22', '2025-11-30 04:34:22'),
(1084, 'IITB-Monash Research Academy', 'Mumbai', 'IN', 'http://www.iitbmonash.org/', 'https://openalex.org/I2802772015', 0, '2025-11-30 04:34:22', '2025-11-30 04:34:22'),
(1085, 'SVS Medical College', 'Mahabubnagar', 'IN', 'http://svsmch.com/', 'https://openalex.org/I4210142847', 0, '2025-11-30 04:34:22', '2025-11-30 04:34:22'),
(1086, 'Institute of Transplantation Sciences', 'Ahmedabad', 'IN', 'http://www.ikdrc-its.org/', 'https://openalex.org/I4210111128', 0, '2025-11-30 04:34:22', '2025-11-30 04:34:22'),
(1087, 'Rama University', 'Kanpur', 'IN', 'http://www.ramauniversity.ac.in/', 'https://openalex.org/I2799634920', 0, '2025-11-30 04:34:22', '2025-11-30 04:34:22'),
(1088, 'Guru Kashi University', 'Sardulgarh', 'IN', 'http://gurukashiuniversity.in/', 'https://openalex.org/I3129634530', 0, '2025-11-30 04:34:22', '2025-11-30 04:34:22'),
(1089, 'Care Institute of Medical Sciences', 'Ahmedabad', 'IN', 'http://www.cims.org/', 'https://openalex.org/I2801933607', 0, '2025-11-30 04:34:22', '2025-11-30 04:34:22'),
(1090, 'Bankura University', 'Bishnupur', 'IN', 'http://www.bankurauniv.ac.in/', 'https://openalex.org/I2801141804', 0, '2025-11-30 04:34:22', '2025-11-30 04:34:22'),
(1091, 'Sir Padampat Singhania University', 'Udaipur', 'IN', 'https://www.spsu.ac.in/', 'https://openalex.org/I94511900', 0, '2025-11-30 04:34:22', '2025-11-30 04:34:22'),
(1092, 'National Centre for Antarctic and Ocean Research', 'Vasco', 'IN', 'http://www.ncaor.gov.in/', 'https://openalex.org/I106814784', 0, '2025-11-30 04:34:22', '2025-11-30 04:34:22'),
(1093, 'Guru Nanak Eye Centre', 'New Delhi', 'IN', 'http://delhi.gov.in/wps/wcm/connect/doit_gnec/GNEC/Home/General+Information', 'https://openalex.org/I4210093565', 0, '2025-11-30 04:34:22', '2025-11-30 04:34:22'),
(1094, 'Defence Food Research Laboratory', 'Mysore', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/defence-food-research-laboratory-dfrl', 'https://openalex.org/I2802608988', 0, '2025-11-30 04:34:22', '2025-11-30 04:34:22'),
(1095, 'Indian Council of Forestry Research and Education', 'Dehra Dūn', 'IN', 'http://www.icfre.org/index.php', 'https://openalex.org/I1286922834', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1096, 'Employees\' State Insurance Model Hospital', 'New Delhi', 'IN', 'http://www.esihospital.org/', 'https://openalex.org/I4210121909', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1097, 'Ministry of Environment, Forests and Climate Change', 'New Delhi', 'IN', 'http://envfor.nic.in/', 'https://openalex.org/I1291012402', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1098, 'Fortis Hospital', 'Mumbai', 'IN', 'https://www.fortismumbai.com/', 'https://openalex.org/I4210153334', 0, '2025-11-30 04:34:23', '2025-11-30 04:35:05'),
(1099, 'Institute of Human Behaviour and Allied Sciences', 'Delhi', 'IN', 'http://www.delhi.gov.in/wps/wcm/connect/DOIT_IHBAS1/ihbas/home', 'https://openalex.org/I4210118052', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1100, 'Vivekananda Institute of Medical Sciences', 'Kolkata', 'IN', 'http://www.rkmsevapratishthan.org/vims/aboutvims', 'https://openalex.org/I4210131107', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1101, 'Power Grid Corporation (India)', 'Gurgaon', 'IN', 'http://www.powergridindia.com/_layouts/PowerGrid/User/index.aspx?LangID=English', 'https://openalex.org/I867306930', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1102, 'Kamdhenu University', 'Gandhinagar', 'IN', 'http://ku-guj.org', 'https://openalex.org/I3133099055', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1103, 'MNR Medical College and Hospital', 'Sangāreddi', 'IN', 'http://www.mnrindia.org/Medical_MBBS.php', 'https://openalex.org/I4210144026', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1104, 'GSL Medical College & General Hospital', 'Rajahmundry', 'IN', 'http://www.gslmc.com/aboutus.html', 'https://openalex.org/I4210129665', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1105, 'Uttar Pradesh Pandit Deen Dayal Upadhyaya Pashu Chikitsa Vigyan Vishwavidyalaya Evam Go-Anusandhan Sansthan', 'Mathura', 'IN', 'http://www.upvetuniv.edu.in/', 'https://openalex.org/I4210141180', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1106, 'Indira Gandhi Institute of Child Health', 'Bengaluru', 'IN', 'http://www.igich.org/', 'https://openalex.org/I4210158200', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1107, 'K.S. Hegde Hospital', 'Mangalore', 'IN', 'http://kshegdehospital.in/', 'https://openalex.org/I4210089770', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1108, 'Central Institute of Brackishwater Aquaculture', 'Chennai', 'IN', 'http://ciba.res.in/', 'https://openalex.org/I2800988382', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1109, 'XIM University', 'Bhubaneswar', 'IN', 'https://xim.edu.in', 'https://openalex.org/I4210137468', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1110, 'Hi-Tech Medical College & Hospital', 'Bhubaneswar', 'IN', 'http://hi-techmedical.org/index.php', 'https://openalex.org/I4210141550', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1111, 'Government of Maharashtra', 'Mumbai', 'IN', 'https://www.maharashtra.gov.in/', 'https://openalex.org/I1315184752', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1112, 'Government Kilpauk Medical College', 'Chennai', 'IN', 'http://www.gkmc.in/', 'https://openalex.org/I169078443', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1113, 'College of Medicine & Sagore Dutta Hospital', 'Kolkata', 'IN', 'http://www.cmsdh.edu.in/', 'https://openalex.org/I265637623', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1114, 'Centre of Biomedical Research', 'Lucknow', 'IN', 'http://cbmr.res.in/', 'https://openalex.org/I4210161010', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1115, 'Sangath', 'Raia', 'IN', 'http://www.sangath.com/', 'https://openalex.org/I4210097859', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1116, 'T A Pai Management Institute', 'Manipal', 'IN', 'http://www.tapmi.edu.in/', 'https://openalex.org/I213512949', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1117, 'Sri Devaraj Urs Academy of Higher Education and Research', 'Kolār', 'IN', 'http://www.sduu.ac.in/', 'https://openalex.org/I4210137392', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1118, 'TERI University', 'New Delhi', 'IN', 'http://www.teriuniversity.ac.in/', 'https://openalex.org/I118315836', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1119, 'Maharani Laxmi Bai Medical College', 'Jhānsi', 'IN', 'http://www.mlbmcj.in/', 'https://openalex.org/I3132277748', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1120, 'India Habitat Centre', 'New Delhi', 'IN', 'https://www.indiahabitat.org/', 'https://openalex.org/I4210155917', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1121, 'Animal Husbandry and Veterinary Department', 'Shillong', 'IN', 'http://megahvt.gov.in/', 'https://openalex.org/I4210119745', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1122, 'National Institute of Abiotic Stress Management', 'Malegaon', 'IN', 'http://www.niam.res.in/', 'https://openalex.org/I4210166936', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1123, 'Bombay Natural History Society', 'Mumbai', 'IN', 'http://bnhs.org/bnhs/', 'https://openalex.org/I82034984', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1124, 'Malankara Orthodox Syrian Church Medical College Hospital', 'Kochi', 'IN', 'http://www.moscmm.org/', 'https://openalex.org/I2802105490', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1125, 'Biocon (India)', 'Bengaluru', 'IN', 'http://www.biocon.com/', 'https://openalex.org/I4210143327', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1126, 'Serampore College', 'Serampore', 'IN', 'http://www.seramporecollege.org/', 'https://openalex.org/I94349332', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23');
INSERT INTO `institutions` (`id`, `name`, `city`, `country`, `website`, `domain`, `is_verified`, `created_at`, `updated_at`) VALUES
(1127, 'Sir H.N. Reliance Foundation Hospital and Research Centre', 'Mumbai', 'IN', 'https://www.rfhospital.org', 'https://openalex.org/I2799514748', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1128, 'Sri Rajiv Gandhi College of Dental Sciences and Hospital', 'Bengaluru', 'IN', 'https://www.srgcds.ac.in/', 'https://openalex.org/I4210132864', 0, '2025-11-30 04:34:23', '2025-11-30 04:34:23'),
(1129, 'Malabar Medical College Hospital and Research Centre', 'Kozhikode', 'IN', 'http://mmccalicut.org/index.php', 'https://openalex.org/I2800318388', 0, '2025-11-30 04:34:24', '2025-11-30 04:34:24'),
(1130, 'National AIDS Research Institute', 'Pune', 'IN', 'http://www.nari-icmr.res.in/', 'https://openalex.org/I4210159305', 0, '2025-11-30 04:34:24', '2025-11-30 04:34:24'),
(1131, 'Indian Institute of Management Shillong', 'Shillong', 'IN', 'http://www.iimshillong.ac.in/', 'https://openalex.org/I2800084297', 0, '2025-11-30 04:34:24', '2025-11-30 04:34:24'),
(1132, 'KM Shah Dental College and Hospital', 'Vadodara', 'IN', 'http://dental.sumandeepuniversity.co.in/', 'https://openalex.org/I4210111427', 0, '2025-11-30 04:34:24', '2025-11-30 04:34:24'),
(1133, 'IPS Academy', 'Indore', 'IN', 'https://www.ipsacademy.org', 'https://openalex.org/I4210113021', 0, '2025-11-30 04:34:24', '2025-11-30 04:34:24'),
(1134, 'Mathrusri Ramabai Ambedkar Dental College & Hospital', 'Bengaluru', 'IN', 'http://www.mradc.ac.in/', 'https://openalex.org/I4210129991', 0, '2025-11-30 04:34:24', '2025-11-30 04:34:24'),
(1135, 'Research & Development Establishment (Engrs.)', 'Pune', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/research-development-establishment-rdee', 'https://openalex.org/I4210099971', 0, '2025-11-30 04:34:24', '2025-11-30 04:34:24'),
(1136, 'Arya Vaidya Sala', 'Malappuram', 'IN', 'http://www.aryavaidyasala.com', 'https://openalex.org/I4210160885', 0, '2025-11-30 04:34:24', '2025-11-30 04:34:24'),
(1137, 'Shadan Hospital and Institute of Medical Sciences', 'Hyderabad', 'IN', 'http://www.shadan.in/', 'https://openalex.org/I209674108', 0, '2025-11-30 04:34:24', '2025-11-30 04:34:24'),
(1138, 'Maulana Azad Institute of Dental Sciences', 'New Delhi', 'IN', 'http://maids.ac.in/home.html', 'https://openalex.org/I4210095482', 0, '2025-11-30 04:34:24', '2025-11-30 04:34:24'),
(1139, 'Vinoba Bhave University', 'Hazaribagh', 'IN', 'https://www.vbu.ac.in', 'https://openalex.org/I71631882', 0, '2025-11-30 04:34:24', '2025-11-30 04:34:24'),
(1140, 'Hans Raj Mahila Maha Vidyalaya', 'Jalandhar', 'IN', 'https://www.hrmmv.org/about-hmv', 'https://openalex.org/I3131378919', 0, '2025-11-30 04:34:24', '2025-11-30 04:34:24'),
(1141, 'Anugrah Narayan Magadh Medical College & Hospital', 'Gaya', 'IN', 'http://www.anmmc.bih.nic.in/', 'https://openalex.org/I3125884123', 0, '2025-11-30 04:34:24', '2025-11-30 04:34:24'),
(1142, 'IIHMR University', 'Jaipur', 'IN', 'https://www.iihmr.edu.in/', 'https://openalex.org/I183088076', 0, '2025-11-30 04:34:24', '2025-11-30 04:34:24'),
(1143, 'Ministry of Agriculture & Farmers Welfare', 'New Delhi', 'IN', 'http://agriculture.gov.in/', 'https://openalex.org/I4210105197', 0, '2025-11-30 04:34:24', '2025-11-30 04:34:24'),
(1144, 'National JALMA Institute for Leprosy & Other Mycobacterial Diseases', 'Agra', 'IN', 'http://www.jalma-icmr.org.in/', 'https://openalex.org/I4210132386', 0, '2025-11-30 04:34:24', '2025-11-30 04:34:24'),
(1145, 'Dr. Y.S.R Horticultural University', 'Eluru', 'IN', 'https://www.drysrhu.edu.in/', 'https://openalex.org/I3131536999', 0, '2025-11-30 04:34:24', '2025-11-30 04:34:24'),
(1146, 'Poornaprajna Institute of Scientific Research', 'Bengaluru', 'IN', 'http://www.ppisr.res.in/', 'https://openalex.org/I4210097624', 0, '2025-11-30 04:34:24', '2025-11-30 04:34:24'),
(1147, 'Sri Aurobindo Institute of Medical Sciences', 'Indore', 'IN', 'http://www.saimsonline.com/', 'https://openalex.org/I4210140180', 0, '2025-11-30 04:34:24', '2025-11-30 04:34:24'),
(1148, 'Central Sheep and Wool Research Institute', 'Tonk', 'IN', 'http://www.cswri.res.in/', 'https://openalex.org/I103109029', 0, '2025-11-30 04:34:24', '2025-11-30 04:34:24'),
(1149, 'Tata Motors (India)', 'Mumbai', 'IN', 'http://www.tatamotors.com/', 'https://openalex.org/I1301507905', 0, '2025-11-30 04:34:24', '2025-11-30 04:34:24'),
(1150, 'Daiichi Sankyo (India)', 'Gurgaon', 'IN', 'https://www.daiichisankyo.com/', 'https://openalex.org/I4210128598', 0, '2025-11-30 04:34:24', '2025-11-30 04:34:24'),
(1151, 'Government of Tamil Nadu', 'Chennai', 'IN', 'http://www.tn.gov.in/', 'https://openalex.org/I148776243', 0, '2025-11-30 04:34:25', '2025-11-30 04:34:25'),
(1152, 'Government Dental College & Research Institute', 'Bengaluru', 'IN', 'http://www.karnataka.gov.in/gdcrib/pages/home.aspx', 'https://openalex.org/I3132308339', 0, '2025-11-30 04:34:25', '2025-11-30 04:34:25'),
(1153, 'Indian Institute of Oilseeds Research', 'Hyderabad', 'IN', 'http://www.icar-iior.org.in/', 'https://openalex.org/I4210099769', 0, '2025-11-30 04:34:25', '2025-11-30 04:34:25'),
(1154, 'Indian Institute of Vegetable Research', 'Varanasi', 'IN', 'http://www.iivr.org.in/', 'https://openalex.org/I4210126648', 0, '2025-11-30 04:34:25', '2025-11-30 04:34:25'),
(1155, 'Indira Gandhi Medical College and Research Institute', 'Puducherry', 'IN', 'http://www.igmcri.com/', 'https://openalex.org/I4210092534', 0, '2025-11-30 04:34:25', '2025-11-30 04:34:25'),
(1156, 'Indian Institute of Management Raipur', 'Raipur', 'IN', 'https://iimraipur.ac.in', 'https://openalex.org/I111245572', 0, '2025-11-30 04:34:25', '2025-11-30 04:34:25'),
(1157, 'Rainbow Children\'s Hospital', 'Hyderabad', 'IN', 'http://www.rainbowhospitals.in/', 'https://openalex.org/I4210150241', 0, '2025-11-30 04:34:25', '2025-11-30 04:34:25'),
(1158, 'Government Medical College Bhavnagar', 'Bhavnagar', 'IN', 'http://www.bvnmedicol.org/', 'https://openalex.org/I4210086474', 0, '2025-11-30 04:34:25', '2025-11-30 04:34:25'),
(1159, 'Sardar Patel Post Graduate Institute of Dental and Medical Sciences', 'Lucknow', 'IN', 'http://sppgidms.org/', 'https://openalex.org/I4210127880', 0, '2025-11-30 04:34:25', '2025-11-30 04:34:25'),
(1160, 'Indian Institute of Information Technology and Management, Kerala', 'Thiruvananthapuram', 'IN', 'https://www.iiitmk.ac.in', 'https://openalex.org/I68695296', 0, '2025-11-30 04:34:25', '2025-11-30 04:34:25'),
(1161, 'Maharashtra Institute of Medical Science and Research', 'Latur', 'IN', 'http://mimsr.ac.in/', 'https://openalex.org/I2802663916', 0, '2025-11-30 04:34:25', '2025-11-30 04:34:25'),
(1162, 'Defence Materials and Stores Research and Development Establishment', 'Kanpur', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/defence-materials-and-stores-research-and-development-establishment-dmsrde', 'https://openalex.org/I4210113972', 0, '2025-11-30 04:34:25', '2025-11-30 04:34:25'),
(1163, 'Cooch Behar Panchanan Barma University', 'Koch Bihār', 'IN', 'https://cbpbu.ac.in/', 'https://openalex.org/I2611379103', 0, '2025-11-30 04:34:25', '2025-11-30 04:34:25'),
(1164, 'Central Ground Water Board', 'Faridabad', 'IN', 'http://cgwb.gov.in/', 'https://openalex.org/I4210113437', 0, '2025-11-30 04:34:25', '2025-11-30 04:34:25'),
(1165, 'Fortis Healthcare', 'Delhi', 'IN', 'http://www.fortishealthcare.com/india/hospitals-in-delhi-ncr', 'https://openalex.org/I264201830', 0, '2025-11-30 04:34:25', '2025-11-30 04:34:25'),
(1166, 'Institute for Human Development', 'New Delhi', 'IN', 'http://www.ihdindia.org/', 'https://openalex.org/I4210086295', 0, '2025-11-30 04:34:25', '2025-11-30 04:34:25'),
(1167, 'Government of Karnataka', 'Bengaluru', 'IN', 'http://www.karnataka.gov.in/english/pages/home.aspx', 'https://openalex.org/I2802584695', 0, '2025-11-30 04:34:25', '2025-11-30 04:34:25'),
(1168, 'Rajasthan University of Health Sciences', 'Jaipur', 'IN', 'https://www.ruhsraj.org', 'https://openalex.org/I2802772831', 0, '2025-11-30 04:34:25', '2025-11-30 04:34:25'),
(1169, 'Indira Gandhi Government Medical College & Hospital', 'Nagpur', 'IN', 'http://www.iggmc.org/', 'https://openalex.org/I4210099166', 0, '2025-11-30 04:34:25', '2025-11-30 04:34:25'),
(1170, 'Awadhesh Pratap Singh University', 'Rewa', 'IN', 'http://apsurewa.ac.in/', 'https://openalex.org/I59615845', 0, '2025-11-30 04:34:25', '2025-11-30 04:34:25'),
(1171, 'Central Avian Research Institute', 'Bareilly', 'IN', 'https://icar.org.in/cari/index.php', 'https://openalex.org/I48139335', 0, '2025-11-30 04:34:25', '2025-11-30 04:34:25'),
(1172, 'IILM Institute for Higher Education', 'New Delhi', 'IN', 'http://www.iilm.edu/', 'https://openalex.org/I2801787918', 0, '2025-11-30 04:34:25', '2025-11-30 04:34:25'),
(1173, 'Apollo Institute of Medical Sciences & Research', 'Chittoor', 'IN', 'https://www.aimsrchittoor.edu.in/', 'https://openalex.org/I4210118361', 0, '2025-11-30 04:34:25', '2025-11-30 04:34:25'),
(1174, 'Al-Ameen College of Pharmacy', 'Bengaluru', 'IN', 'http://www.alameenpharmacy.edu/', 'https://openalex.org/I70922119', 0, '2025-11-30 04:34:25', '2025-11-30 04:34:25'),
(1175, 'J. S. Ayurveda Mahavidyalaya and P.D. Patel Ayurveda Hospital', 'Nadiād', 'IN', 'http://nadiadayurveda.org/', 'https://openalex.org/I4210109271', 0, '2025-11-30 04:34:26', '2025-11-30 04:34:26'),
(1176, 'National Institute of Animal Nutrition and Physiology', 'Bengaluru', 'IN', 'http://www.nianp.res.in/', 'https://openalex.org/I4210126702', 0, '2025-11-30 04:34:26', '2025-11-30 04:34:26'),
(1177, 'Ruby Hall Clinic', 'Pune', 'IN', 'http://www.rubyhall.com/', 'https://openalex.org/I2801897644', 0, '2025-11-30 04:34:26', '2025-11-30 04:34:26'),
(1178, 'Dr. Shroff’s Charity Eye Hospital', 'Delhi', 'IN', 'https://sceh.net', 'https://openalex.org/I4210134825', 0, '2025-11-30 04:34:26', '2025-11-30 04:34:26'),
(1179, 'Teerthanker Mahaveer Medical College & Research Centre', 'Morādābād', 'IN', 'http://tmu.ac.in/medical-college-research-centre', 'https://openalex.org/I4210145376', 0, '2025-11-30 04:34:26', '2025-11-30 04:34:26'),
(1180, 'National Bureau of Animal Genetic Resources', 'Chandigarh', 'IN', 'http://www.nbagr.res.in/', 'https://openalex.org/I4210130815', 0, '2025-11-30 04:34:30', '2025-11-30 04:34:30'),
(1181, 'Jubilee Mission Medical College and Research Institute', 'Thrissur', 'IN', 'http://www.jubileemissionmedicalcollege.org/', 'https://openalex.org/I2800507371', 0, '2025-11-30 04:34:30', '2025-11-30 04:34:30'),
(1182, 'Veer Surendra Sai Medical College and Hospital', 'Sambalpur', 'IN', 'http://www.vimsar.ac.in/', 'https://openalex.org/I2803056085', 0, '2025-11-30 04:34:30', '2025-11-30 04:34:30'),
(1183, 'Cooper Hospital', 'Mumbai', 'IN', 'http://hbtmc.edu.in/', 'https://openalex.org/I2802985673', 0, '2025-11-30 04:34:30', '2025-11-30 04:34:30'),
(1184, 'Sri Venkateswara Medical College and Ruia Hospital', 'Tirupati', 'IN', 'https://svmctpt.edu.in/', 'https://openalex.org/I4210091246', 0, '2025-11-30 04:34:30', '2025-11-30 04:34:30'),
(1185, 'Indian Institute of Management Amritsar', 'Amritsar', 'IN', 'https://www.iimamritsar.ac.in/', 'https://openalex.org/I4210123047', 0, '2025-11-30 04:34:30', '2025-11-30 04:34:30'),
(1186, 'Laser Science & Technology Centre', 'Delhi', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/laser-science-technology-centre-lastec', 'https://openalex.org/I4210088856', 0, '2025-11-30 04:34:30', '2025-11-30 04:34:30'),
(1187, 'Bangalore Diabetes Centre', 'Bengaluru', 'IN', 'http://www.bangalorediabetescentre.com/', 'https://openalex.org/I4210127127', 0, '2025-11-30 04:34:30', '2025-11-30 04:34:30'),
(1188, 'National Law University, Delhi', 'New Delhi', 'IN', 'http://www.nludelhi.ac.in/', 'https://openalex.org/I866667741', 0, '2025-11-30 04:34:30', '2025-11-30 04:34:30'),
(1189, 'Rayalaseema University', 'Kurnool', 'IN', 'https://ruk.ac.in/', 'https://openalex.org/I119068399', 0, '2025-11-30 04:34:30', '2025-11-30 04:34:30'),
(1190, 'Defence Research and Development Laboratory', 'Hyderabad', 'IN', 'https://www.drdo.gov.in/hi/labs-and-establishments/defence-research-development-laboratory-drdl', 'https://openalex.org/I2800689258', 0, '2025-11-30 04:34:30', '2025-11-30 04:34:30'),
(1191, 'Institute for Development and Research in Banking Technology', 'Hyderabad', 'IN', 'http://www.idrbt.ac.in/', 'https://openalex.org/I150312865', 0, '2025-11-30 04:34:30', '2025-11-30 04:34:30'),
(1192, 'Indian Institute of Management Kashipur', 'Kashipur', 'IN', 'http://www.iimkashipur.ac.in/', 'https://openalex.org/I2799289540', 0, '2025-11-30 04:34:30', '2025-11-30 04:34:30'),
(1193, 'Government College Kodanchery', 'Kozhikode', 'IN', 'http://kodencherycollege.ac.in/', 'https://openalex.org/I4210133477', 0, '2025-11-30 04:34:30', '2025-11-30 04:34:30'),
(1194, 'Baba Mastnath University', 'Rohtak', 'IN', 'http://bmu.ac.in/', 'https://openalex.org/I4210134754', 0, '2025-11-30 04:34:30', '2025-11-30 04:34:30'),
(1195, 'Biological E (India)', 'Hyderabad', 'IN', 'http://www.biologicale.com/', 'https://openalex.org/I4210096236', 0, '2025-11-30 04:34:31', '2025-11-30 04:34:31'),
(1196, 'Rajasthan University of Veterinary and Animal Sciences', 'Bikaner', 'IN', 'http://rajuvas.org/', 'https://openalex.org/I4210128267', 0, '2025-11-30 04:34:31', '2025-11-30 04:34:31'),
(1197, 'AMRI Hospitals', 'Kolkata', 'IN', 'http://www.amrihospitals.in/', 'https://openalex.org/I46827455', 0, '2025-11-30 04:34:31', '2025-11-30 04:34:31'),
(1198, 'Maulana Abul Kalam Azad Institute of Asian Studies', 'Kolkata', 'IN', 'http://makaias.gov.in/', 'https://openalex.org/I63346067', 0, '2025-11-30 04:34:31', '2025-11-30 04:34:31'),
(1199, 'Indus University', 'Ahmedabad', 'IN', 'https://www.indusuni.ac.in', 'https://openalex.org/I70764227', 0, '2025-11-30 04:34:31', '2025-11-30 04:34:31'),
(1200, 'C. U. Shah University', 'Surendranagar', 'IN', 'http://www.cushahuniversity.ac.in/', 'https://openalex.org/I1320404931', 0, '2025-11-30 04:34:31', '2025-11-30 04:34:31'),
(1201, 'S Nijalingappa Medical College and HSK Hospital & Research Centre', 'Bagalkot', 'IN', 'http://www.snmcbgk.in/', 'https://openalex.org/I4210122420', 0, '2025-11-30 04:34:31', '2025-11-30 04:34:31'),
(1202, 'Global Development Network', 'New Delhi', 'IN', 'http://www.gdn.int/', 'https://openalex.org/I1281415640', 0, '2025-11-30 04:34:31', '2025-11-30 04:34:31'),
(1203, 'Maharashtra University of Health Sciences', 'Nashik', 'IN', 'http://www.muhs.ac.in/', 'https://openalex.org/I149766970', 0, '2025-11-30 04:34:31', '2025-11-30 04:34:31'),
(1204, 'Dr. Balasaheb Sawant Konkan Krishi Vidyapeeth', 'Ratnagiri', 'IN', 'http://www.dbskkv.org/', 'https://openalex.org/I2799533726', 0, '2025-11-30 04:34:31', '2025-11-30 04:34:31'),
(1205, 'Murshidabad Medical College and Hospital', 'Baharampur', 'IN', 'http://murshidabadmedicalcollege.in/', 'https://openalex.org/I4210136550', 0, '2025-11-30 04:34:31', '2025-11-30 04:34:31'),
(1206, 'National Informatics Centre', 'Delhi', 'IN', 'http://www.nic.in/', 'https://openalex.org/I4210160811', 0, '2025-11-30 04:34:31', '2025-11-30 04:34:31'),
(1207, 'Uttarakhand Ayurved University', 'Dehra Dūn', 'IN', 'http://www.uau.ac.in/index.php', 'https://openalex.org/I3131184031', 0, '2025-11-30 04:34:31', '2025-11-30 04:34:31'),
(1208, 'Indian Institute of Sugarcane Research', 'Lucknow', 'IN', 'http://www.iisr.nic.in/', 'https://openalex.org/I38395295', 0, '2025-11-30 04:34:31', '2025-11-30 04:34:31'),
(1209, 'Tata Main Hospital', 'Jamshedpur', 'IN', 'http://www.tatamainhospital.com/', 'https://openalex.org/I4210145015', 0, '2025-11-30 04:34:31', '2025-11-30 04:34:31'),
(1210, 'All India Institute of Hygiene and Public Health', 'Kolkata', 'IN', 'http://aiihph.gov.in/', 'https://openalex.org/I137794331', 0, '2025-11-30 04:34:31', '2025-11-30 04:34:31'),
(1211, 'Center for Excellence in Basic Sciences', 'Mumbai', 'IN', 'http://www.cbs.ac.in/', 'https://openalex.org/I4210156819', 0, '2025-11-30 04:34:31', '2025-11-30 04:34:31'),
(1212, 'Fortis Memorial Research Institute', 'Gurgaon', 'IN', 'http://www.fmri.in/', 'https://openalex.org/I4210108369', 0, '2025-11-30 04:34:31', '2025-11-30 04:34:31'),
(1213, 'Indian National Centre for Ocean Information Services', 'Hyderabad', 'IN', 'http://www.incois.gov.in/portal/index.jsp', 'https://openalex.org/I1333738725', 0, '2025-11-30 04:34:31', '2025-11-30 04:34:31'),
(1214, 'Mahatma Gandhi Mission Institute of Health Sciences', 'Mumbai', 'IN', 'http://www.mgmuhs.com/', 'https://openalex.org/I4210107677', 0, '2025-11-30 04:34:31', '2025-11-30 04:34:31'),
(1215, 'Lalit Narayan Mithila University', 'Darbhanga', 'IN', 'http://www.lnmuuniversity.in/login', 'https://openalex.org/I3130357712', 0, '2025-11-30 04:34:31', '2025-11-30 04:34:31'),
(1216, 'KG Hospital', 'Coimbatore', 'IN', 'http://www.kghospital.com', 'https://openalex.org/I4210095238', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1217, 'Dr. Agarwal\'s Eye Hospital', 'Chennai', 'IN', 'http://www.dragarwal.com/', 'https://openalex.org/I4210160748', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1218, 'Kamineni Hospitals', 'Hyderabad', 'IN', 'http://www.kaminenihospitals.com/', 'https://openalex.org/I4210127887', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1219, 'National Institute Of Veterinary Epidemiology And Disease Informatics', 'Bengaluru', 'IN', 'http://www.pdadmas.ernet.in/', 'https://openalex.org/I4210160780', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1220, 'Fore School of Management', 'New Delhi', 'IN', 'https://www.fsm.ac.in', 'https://openalex.org/I27878738', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1221, 'High Energy Materials Research Laboratory', 'Pune', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/high-energy-materials-research-laboratory-hemrl', 'https://openalex.org/I2800703609', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1222, 'Rajendra Memorial Research Institute of Medical Sciences', 'Patna', 'IN', 'http://www.rmrims.org.in/', 'https://openalex.org/I134315084', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1223, 'Indian Institute of Millets Research', 'Hyderabad', 'IN', 'http://millets.res.in', 'https://openalex.org/I4210118419', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1224, 'M S Swaminathan Research Foundation', 'Chennai', 'IN', 'http://www.mssrf.org/', 'https://openalex.org/I2799627270', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1225, 'Madhya Pradesh Bhoj Open University', 'Bhopal', 'IN', 'http://www.bhojvirtualuniversity.com/', 'https://openalex.org/I152391192', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1226, 'Nirma (India)', 'Ahmedabad', 'IN', 'http://www.nirma.co.in/', 'https://openalex.org/I4210100470', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1227, 'Kerala University of Health Sciences', 'Thrissur', 'IN', 'http://kuhs.ac.in/', 'https://openalex.org/I348718759', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1228, 'Central Institute for Research on Cotton Technology', 'Nagpur', 'IN', 'http://circot.res.in/circot/', 'https://openalex.org/I4210094422', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1229, 'Institute of Neurosciences Kolkata', 'Kolkata', 'IN', 'http://www.neurokolkata.org/', 'https://openalex.org/I4210115788', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1230, 'Indian Institute of Plantation Management', 'Bengaluru', 'IN', 'http://www.iipmb.edu.in/', 'https://openalex.org/I99383213', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1231, 'Chacha Nehru Bal Chikitsalaya', 'Delhi', 'IN', 'http://www.cnbchospital.in/', 'https://openalex.org/I4210151298', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1232, 'Indian Institute of Management Tiruchirappalli', 'Tiruchchirappalli', 'IN', 'https://www.iimtrichy.ac.in', 'https://openalex.org/I2802990396', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1233, 'NIIT (India)', 'New Delhi', 'IN', 'http://www.niit.com/', 'https://openalex.org/I134140186', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1234, 'Victoria Hospital', 'Bengaluru', 'IN', 'http://www.bmcri.org/victoria_hosp.html', 'https://openalex.org/I4210137705', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1235, 'Centre For Human Genetics', 'Bengaluru', 'IN', 'http://www.chg.res.in/', 'https://openalex.org/I4210098597', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1236, 'General Electric (India)', 'Bengaluru', 'IN', 'http://www.ge.com/', 'https://openalex.org/I4210142581', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1237, 'Central Road Research Institute', 'New Delhi', 'IN', 'http://www.crridom.gov.in', 'https://openalex.org/I4210106426', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1238, 'Dr. NTR University of Health Sciences', 'Vijayawada', 'IN', 'http://ntruhs.ap.nic.in/', 'https://openalex.org/I507952983', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1239, 'National Centre for Medium Range Weather Forecasting', 'Noida', 'IN', 'http://www.ncmrwf.gov.in/', 'https://openalex.org/I1329084839', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1240, 'Invertis University', 'Bareilly', 'IN', 'https://www.invertisuniversity.ac.in/', 'https://openalex.org/I19688894', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1241, 'TIFR Centre for Interdisciplinary Sciences', 'Hyderabad', 'IN', 'http://www.tifrh.res.in/', 'https://openalex.org/I4210112849', 0, '2025-11-30 04:34:32', '2025-11-30 04:34:32'),
(1242, 'Geometric (India)', 'Mumbai', 'IN', 'http://geometricglobal.com/', 'https://openalex.org/I4210153302', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1243, 'Punjab Institute of Medical Sciences', 'Jalandhar', 'IN', 'http://www.pimsj.com/', 'https://openalex.org/I2802171553', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1244, 'Maharashtra Animal and Fishery Sciences University', 'Nagpur', 'IN', 'http://www.mafsu.in', 'https://openalex.org/I3130477807', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1245, 'Mahatma Gandhi Dental College & Hospital', 'Jaipur', 'IN', 'https://www.mgumst.org', 'https://openalex.org/I4210097353', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1246, 'IT for Change', 'Bengaluru', 'IN', 'http://www.itforchange.net/', 'https://openalex.org/I4210137591', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1247, 'Bhubaneswar Borooah Cancer Institute', 'Guwahati', 'IN', 'http://www.bbcionline.org/', 'https://openalex.org/I2800073537', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1248, 'AISECT University', 'Bhopal', 'IN', 'http://aisectuniversityjharkhand.ac.in/', 'https://openalex.org/I4210111553', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1249, 'Pain Clinic of India', 'Mumbai', 'IN', 'http://www.painclinicofindia.com/', 'https://openalex.org/I4210131225', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1250, 'Gian Sagar Medical College and Hospital', 'Patiāla', 'IN', 'http://www.giansagar.org/medicalcollege.php', 'https://openalex.org/I4210156080', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1251, 'Foundation for Medical Research', 'Mumbai', 'IN', 'http://www.fmrindia.org/', 'https://openalex.org/I4210160584', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1252, 'Gas Turbine Research Establishment', 'Bengaluru', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/gas-turbine-research-establishment-gtre', 'https://openalex.org/I19144141', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1253, 'Fernandez Hospital', 'Hyderabad', 'IN', 'http://www.fernandezhospital.com/', 'https://openalex.org/I4210094209', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1254, 'Indian Institute of Management Udaipur', 'Udaipur', 'IN', 'https://www.iimu.ac.in/', 'https://openalex.org/I46130087', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1255, 'St. Joseph Dental College', 'Eluru', 'IN', 'http://sjdc.in/', 'https://openalex.org/I4210112433', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1256, 'Lok Nayak Jai Prakash Narayan Hospital', 'New Delhi', 'IN', 'http://tte.delhigovt.nic.in/wps/wcm/connect/DoIT_LNJP/lnjp/home', 'https://openalex.org/I4210096873', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1257, 'Kanchi Kamakoti CHILDS Trust Hospital', 'Chennai', 'IN', 'http://www.kkcth.org/', 'https://openalex.org/I4210135524', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1258, 'Armament Research and Development Establishment', 'Pune', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/armament-research-development-establishment-arde', 'https://openalex.org/I2801496733', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1259, 'Larsen & Toubro (India)', 'Mumbai', 'IN', 'http://www.larsentoubro.com/', 'https://openalex.org/I4210116539', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1260, 'Swami Devi Dyal Hospital and Dental College', 'Barwāla', 'IN', 'http://swamidevidyal.ac.in/dental-colleges-in-haryana.aspx', 'https://openalex.org/I4210133684', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1261, 'Jehangir Hospital', 'Pune', 'IN', 'http://www.jehangirhospital.com/', 'https://openalex.org/I2800733875', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1262, 'Vijayanagara Sri Krishnadevaraya University', 'Ballari', 'IN', 'https://vskub.ac.in', 'https://openalex.org/I4210124025', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1263, 'Rani Channamma University, Belagavi', 'Belgaum', 'IN', 'http://www.rcub.ac.in', 'https://openalex.org/I4210133707', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1264, 'Wildlife Conservation Society India', 'Bengaluru', 'IN', 'https://india.wcs.org/', 'https://openalex.org/I4210154569', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1265, 'Dr. V. M. Government Medical College', 'Solapur', 'IN', 'http://ww2.vmgmc-hsolapur.org/', 'https://openalex.org/I49124879', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1266, 'Central Sericultural Research and Training Institute', 'Mysore', 'IN', 'http://www.csrtimys.res.in/', 'https://openalex.org/I4210153341', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1267, 'Dr. K.N.Modi University', 'Tonk', 'IN', 'http://www.dknmu.org', 'https://openalex.org/I3133069541', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1268, 'Bodoland University', 'Kokrajhar', 'IN', 'http://bodolanduniversity.ac.in/s24c/', 'https://openalex.org/I2799638773', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1269, 'Jnana Deepa, Institute of Philosophy and Theology', 'Pune', 'IN', 'http://www.jdv.edu.in/', 'https://openalex.org/I2800874633', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1270, 'Meenakshi Medical College Hospital and Research Institute', 'Kanchipuram', 'IN', 'http://www.mmchri.res.in/', 'https://openalex.org/I4210133582', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1271, 'University B.T. & Evening College', 'Koch Bihār', 'IN', 'http://ubtec.org.in/', 'https://openalex.org/I3129549910', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1272, 'West Bengal University of Health Sciences', 'Kolkata', 'IN', 'http://www.wbuhs.ac.in/', 'https://openalex.org/I226431899', 0, '2025-11-30 04:34:33', '2025-11-30 04:34:33'),
(1273, 'Vivekananda Parvatiya Krishi Anusandhan Sansthan', 'Almora', 'IN', 'http://www.vpkas.nic.in/', 'https://openalex.org/I4210139489', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:34'),
(1274, 'Singhania University', 'Jhunjhunūn', 'IN', 'http://singhaniauniversity.co.in/', 'https://openalex.org/I76163968', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:34'),
(1275, 'Chhattisgarh Swami Vivekanand Technical University', 'Bhilai', 'IN', 'http://www.csvtu.ac.in/prev/', 'https://openalex.org/I2800818028', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:34'),
(1276, 'Holy Family Hospital', 'New Delhi', 'IN', 'http://hfhdelhi.org/', 'https://openalex.org/I1329324871', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:34'),
(1277, 'Central Institute for Cotton Research', 'Nagpur', 'IN', 'http://www.cicr.org.in/', 'https://openalex.org/I185412522', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:34'),
(1278, 'Gokhale Institute of Politics and Economics', 'Pune', 'IN', 'https://gipe.ac.in', 'https://openalex.org/I195377678', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:34'),
(1279, 'Indian Institute of Information Technology, Pune', 'Pune', 'IN', 'http://www.iiitp.ac.in/', 'https://openalex.org/I4210113821', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:34'),
(1280, 'Roland Institute of Pharmaceutical Sciences', 'Brahmapur', 'IN', 'http://www.rips.ac.in/', 'https://openalex.org/I4210099853', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:34'),
(1281, 'Sri Sathya Sai Institute of Higher Medical Sciences', 'Puttaparthi', 'IN', 'http://psg.sssihms.org.in', 'https://openalex.org/I4210113876', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:55'),
(1282, 'Rajarshee Chhatrapati Shahu Maharaj Government Medical College and CPR Hospital Kolhapur', 'Kolhāpur', 'IN', 'http://rcsmgmc.ac.in/', 'https://openalex.org/I3023212067', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:34'),
(1283, 'PSG Institute of Advanced Studies', 'Coimbatore', 'IN', 'http://www.psgias.ac.in/', 'https://openalex.org/I4210154029', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:34'),
(1284, 'Rangaraya Medical College', 'Kākināda', 'IN', 'http://www.rmckakinada.com/', 'https://openalex.org/I30589939', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:34'),
(1285, 'Father Muller Homoeopathic Medical College', 'Mangalore', 'IN', 'http://www.fathermuller.com/homeopathiccollege/', 'https://openalex.org/I4210133423', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:34'),
(1286, 'National Institute of Biomedical Genomics', 'Kolkata', 'IN', 'https://www.nibmg.ac.in/', 'https://openalex.org/I4210158866', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:34'),
(1287, 'Healthcare Global Enterprises', 'Bengaluru', 'IN', 'https://hcgel.com/', 'https://openalex.org/I4210136115', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:34'),
(1288, 'Atomic Minerals Directorate for Exploration and Research', 'Hyderabad', 'IN', 'http://www.amd.gov.in/', 'https://openalex.org/I1327905553', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:34'),
(1289, 'Udaipur Solar Observatory', 'Udaipur', 'IN', 'https://www.prl.res.in/~uso/', 'https://openalex.org/I2799756756', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:34'),
(1290, 'National Institute of Science, Technology and Development Studies', 'New Delhi', 'IN', 'http://www.nistads.res.in/index.php', 'https://openalex.org/I4210128462', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:34'),
(1291, 'Defence Research Laboratory', 'Tezpur', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/defence-research-laboratory-drl', 'https://openalex.org/I4210154459', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:34'),
(1292, 'International Maize and Wheat Improvement Center', 'New Delhi', 'IN', 'https://www.cimmyt.org/', 'https://openalex.org/I4210158324', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:34'),
(1293, 'Kanyakumari Government Medical College', 'Nagercoil', 'IN', 'http://www.kkmc.ac.in/kkmc/', 'https://openalex.org/I2802986704', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:34'),
(1294, 'Kasturba Medical College Hospital', 'Manipal', 'IN', 'https://manipal.edu/kmc-mangalore/hospital.html', 'https://openalex.org/I4210094269', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:34'),
(1295, 'National Bureau of Agriculturally Important Microorganisms', 'Mau', 'IN', 'http://nbaim.org.in/', 'https://openalex.org/I4210123061', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:34'),
(1296, 'Pallium India', 'Thiruvananthapuram', 'IN', 'http://palliumindia.org/', 'https://openalex.org/I2800781119', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:34'),
(1297, 'Kannur Medical College', 'Cannanore', 'IN', 'https://kannurmedicalcollege.ac.in/', 'https://openalex.org/I4210129664', 0, '2025-11-30 04:34:34', '2025-11-30 04:34:34'),
(1298, 'Bhagat Phool Singh Mahila Vishwavidyalaya', 'Rohtak', 'IN', 'http://www.bpswomenuniversity.ac.in/', 'https://openalex.org/I3130411899', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1299, 'Directorate of Weed Research', 'Jabalpur', 'IN', 'http://www.dwr.org.in', 'https://openalex.org/I4210131234', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1300, 'Sun Pharma Advanced Research (India)', 'Mumbai', 'IN', 'http://www.sunpharma.in/', 'https://openalex.org/I4210135484', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1301, 'Institute of Reproductive Medicine', 'Kolkata', 'IN', 'http://irm-bnc.org/', 'https://openalex.org/I4210127825', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1302, 'National Institute of Animal Biotechnology', 'Hyderabad', 'IN', 'http://www.niab.org.in/', 'https://openalex.org/I4210092980', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1303, 'Dr. R. Ahmed Dental College and Hospital', 'Kolkata', 'IN', 'http://radch.net/', 'https://openalex.org/I189266452', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1304, 'Indian Institute of Spices Research', 'Kozhikode', 'IN', 'http://www.spices.res.in/', 'https://openalex.org/I1296400463', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1305, 'Sanjivani Super Speciality Hospitals', 'Ahmedabad', 'IN', 'http://www.sanjivanihospitals.com/', 'https://openalex.org/I4210134118', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1306, 'Government of Mizoram', 'Aizawl', 'IN', 'https://mizoram.gov.in/', 'https://openalex.org/I4210157823', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1307, 'National Institute of Health and Family Welfare', 'New Delhi', 'IN', 'http://www.nihfw.org/index.aspx', 'https://openalex.org/I4210094607', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1308, 'Central Institute for Research on Goats', 'Farah', 'IN', 'http://cirg.res.in/', 'https://openalex.org/I4210108051', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1309, 'Kasturba Hospital', 'New Delhi', 'IN', 'http://www.kasturbahospital.org/', 'https://openalex.org/I4210120124', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1310, 'Bhailalbhai and Bhikhabhai Institute of Technology', 'Anand', 'IN', 'http://www.bbit.ac.in/', 'https://openalex.org/I4210127750', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1311, 'University of Trans-Disciplinary Health Sciences and Technology', 'Bengaluru', 'IN', 'http://tdu.edu.in/', 'https://openalex.org/I3132239849', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1312, 'Kerala Institute of Medical Sciences', 'Thiruvananthapuram', 'IN', 'http://trivandrum.kimsglobal.com/', 'https://openalex.org/I4210127957', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1313, 'National Institute of Cancer Prevention and Research', 'Noida', 'IN', 'http://www.nicpr.res.in/', 'https://openalex.org/I4210160993', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1314, 'Indian Institute of Information Technology, Nagpur', 'Nagpur', 'IN', 'https://iiitn.ac.in/', 'https://openalex.org/I4210138251', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1315, 'Southern Command Hospital', 'Pune', 'IN', 'http://www.afmc.nic.in/Departments/Hospitals/chsc.html', 'https://openalex.org/I4210104445', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1316, 'Nalanda University', 'Rājgīr', 'IN', 'https://www.nalandauniv.edu.in/', 'https://openalex.org/I4210140720', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1317, 'National Institute of Solar Energy', 'Gurgaon', 'IN', 'http://nise.res.in/', 'https://openalex.org/I4210155121', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1318, 'National Institute of Occupational Health', 'Ahmedabad', 'IN', 'http://www.nioh.org/', 'https://openalex.org/I4210105310', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1319, 'Fergusson College', 'Pune', 'IN', 'http://www.fergusson.edu/', 'https://openalex.org/I126227178', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1320, 'Central Coastal Agricultural Research Institute', 'Old Goa', 'IN', 'http://ccari.res.in/index.html', 'https://openalex.org/I4210094289', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1321, 'Osmania General Hospital', 'Hyderabad', 'IN', 'http://osmaniageneralhospital.org/', 'https://openalex.org/I2802348842', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1322, 'Maharshi Dayanand Saraswati University', 'Ajmer', 'IN', 'http://www.mdsuajmer.ac.in', 'https://openalex.org/I56287899', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1323, 'Muljibhai Patel Urological Hospital', 'Nadiād', 'IN', 'http://www.mpuh.org/', 'https://openalex.org/I2800452302', 0, '2025-11-30 04:34:35', '2025-11-30 04:34:35'),
(1324, 'Mahaveer Academy of Technology and Science University', 'Raipur', 'IN', 'https://www.matsuniversity.ac.in/', 'https://openalex.org/I179760745', 0, '2025-11-30 04:34:36', '2025-11-30 04:34:36'),
(1325, 'Thai Moogambigai Dental College and Hospital', 'Chennai', 'IN', 'http://www.tmdch.ac.in/', 'https://openalex.org/I4210141999', 0, '2025-11-30 04:34:36', '2025-11-30 04:34:36'),
(1326, 'Kadi Sarva Vishwavidyalaya', 'Gandhinagar', 'IN', 'http://ksvuniversity.org.in/', 'https://openalex.org/I333550923', 0, '2025-11-30 04:34:36', '2025-11-30 04:34:36'),
(1327, 'Central Council for Research in Siddha', 'Chennai', 'IN', 'http://www.siddhacouncil.com/', 'https://openalex.org/I4210161912', 0, '2025-11-30 04:34:36', '2025-11-30 04:34:36'),
(1328, 'Sancheti Institute For Orthopaedics & Rehabilitation', 'Pune', 'IN', 'http://www.sanchetihospital.org/', 'https://openalex.org/I4210131763', 0, '2025-11-30 04:34:36', '2025-11-30 04:34:36'),
(1329, 'HCG Cancer Centre', 'Mumbai', 'IN', 'https://www.hcgoncology.com/hospital_profiles/hcg-cancer-centre-mumbai', 'https://openalex.org/I4210135845', 0, '2025-11-30 04:34:36', '2025-11-30 04:34:36'),
(1330, 'Nanaji Deshmukh Veterinary Science University', 'Jabalpur', 'IN', 'http://www.mppcvv.org/', 'https://openalex.org/I4210156499', 0, '2025-11-30 04:34:36', '2025-11-30 04:34:36'),
(1331, 'Defence Laboratory Jodhpur', 'Jodhpur', 'IN', 'https://www.drdo.gov.in/hi/labs-and-establishments/defence-laboratory-dlj', 'https://openalex.org/I4210099439', 0, '2025-11-30 04:34:36', '2025-11-30 04:34:36'),
(1332, 'Chirayu Medical College & Hospital', 'Bhopal', 'IN', 'http://www.cmchbhopal.com/', 'https://openalex.org/I4210139797', 0, '2025-11-30 04:34:36', '2025-11-30 04:34:36'),
(1333, 'Rajarajeswari Dental College and Hospital', 'Bengaluru', 'IN', 'http://www.rrdch.org/', 'https://openalex.org/I4210153382', 0, '2025-11-30 04:34:36', '2025-11-30 04:34:36'),
(1334, 'Paras Hospitals', 'Gurgaon', 'IN', 'http://www.parashospitals.com/', 'https://openalex.org/I4210092216', 0, '2025-11-30 04:34:36', '2025-11-30 04:34:36'),
(1335, 'Centre for the Study of Developing Societies', 'Delhi', 'IN', 'http://www.csds.in/', 'https://openalex.org/I108294501', 0, '2025-11-30 04:34:36', '2025-11-30 04:34:36'),
(1336, 'Indian Spinal Injuries Centre', 'New Delhi', 'IN', 'http://www.isiconline.org/', 'https://openalex.org/I4210125424', 0, '2025-11-30 04:34:36', '2025-11-30 04:34:36'),
(1337, 'LRS Institute of Tuberculosis and Respiratory Diseases', 'New Delhi', 'IN', 'http://www.lrsitbrd.nic.in/', 'https://openalex.org/I4210094819', 0, '2025-11-30 04:34:36', '2025-11-30 04:34:36'),
(1338, 'Sanjay Ghodawat University', 'Kolhāpur', 'IN', 'http://www.sanjayghodawatuniversity.ac.in', 'https://openalex.org/I4210097370', 0, '2025-11-30 04:34:36', '2025-11-30 04:34:36'),
(1339, 'JRE Group of Institutions', 'Greater Noida', 'IN', 'http://www.jre.edu.in/', 'https://openalex.org/I4210086089', 0, '2025-11-30 04:34:36', '2025-11-30 04:34:36'),
(1340, 'Indian Institute of Advanced Research', 'Gandhinagar', 'IN', 'http://www.iiar.res.in/', 'https://openalex.org/I4210091027', 0, '2025-11-30 04:34:36', '2025-11-30 04:34:36'),
(1341, 'Shriram Institute for Industrial Research', 'Delhi', 'IN', 'http://www.shriraminstitute.org/', 'https://openalex.org/I4210115767', 0, '2025-11-30 04:34:36', '2025-11-30 04:34:36'),
(1342, 'Bloom Fertility Centre', 'Mumbai', 'IN', 'https://www.bloomivf.com/', 'https://openalex.org/I4210149782', 0, '2025-11-30 04:34:36', '2025-11-30 04:34:36'),
(1343, 'Naval Physical & Oceanographic Laboratory', 'Kochi', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/naval-physical-oceanographic-laboratory-npol', 'https://openalex.org/I4210101705', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1344, 'Indian Council of Social Science Research', 'New Delhi', 'IN', 'http://www.icssr.org/', 'https://openalex.org/I2801047287', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1345, 'Basavatarakam Indo American Cancer Hospital and Research Institute', 'Hyderabad', 'IN', 'https://induscancer.com/', 'https://openalex.org/I4210097897', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1346, 'YR Gaitonde Centre for AIDS Research and Education', 'Chennai', 'IN', 'http://www.yrgcare.org/', 'https://openalex.org/I4210127818', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1347, 'Mahindra University', 'Hyderabad', 'IN', 'https://www.mahindrauniversity.edu.in', 'https://openalex.org/I4210164565', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1348, 'Goa Dental College and Hospital', 'Bambolim', 'IN', 'http://www.gdch.goa.gov.in/', 'https://openalex.org/I2800979047', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1349, 'Centre for Studies in Social Sciences Calcutta', 'Kolkata', 'IN', 'http://cssscal.org/', 'https://openalex.org/I4210121529', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1350, 'Agartala Government Medical College', 'Agartala', 'IN', 'http://agmc.nic.in/', 'https://openalex.org/I4210167321', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1351, 'Naval Materials Research Laboratory', 'Ambarnath', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/naval-materials-research-laboratory-nmrl', 'https://openalex.org/I4210151674', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1352, 'Aurobindo Pharma (India)', 'Hyderabad', 'IN', 'http://www.aurobindo.com/', 'https://openalex.org/I4210110833', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1353, 'Sahara Hospital', 'Lucknow', 'IN', 'http://www.saharahospitals.com/', 'https://openalex.org/I2802142657', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1354, 'Malda Medical College and Hospital', 'Ingrāj Bāzār', 'IN', 'http://www.maldamedicalcollege.com/', 'https://openalex.org/I299657222', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1355, 'Voluntary Health Services Hospital', 'Chennai', 'IN', 'http://vhschennai.org/', 'https://openalex.org/I2802140467', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1356, 'National Institute for Research in Tribal Health', 'Jabalpur', 'IN', 'http://www.nirth.res.in/', 'https://openalex.org/I4210100515', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1357, 'Central Research Institute for Jute and Allied Fibres', 'Bārākpur', 'IN', 'http://www.crijaf.org.in/', 'https://openalex.org/I4210106876', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1358, 'National Research Centre on Equines', 'Hisar', 'IN', 'http://nrce.nic.in/', 'https://openalex.org/I17539415', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1359, 'Wipro (India)', 'Bengaluru', 'IN', 'http://www.wipro.com/', 'https://openalex.org/I4210090636', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1360, 'Government of Andhra Pradesh', 'Hyderabad', 'IN', 'http://www.ap.gov.in/', 'https://openalex.org/I2800401362', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1361, 'Tatyasaheb Kore Dental College and Research Centre', 'Pune', 'IN', 'http://www.tkdc.org/', 'https://openalex.org/I4210099951', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1362, 'ICAR-Indian Institute of Maize Research', 'Ludhiana', 'IN', 'https://iimr.icar.gov.in/', 'https://openalex.org/I4210155935', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1363, 'General Hospital Ernakulam', 'Kochi', 'IN', 'http://www.generalhospitalernakulam.com/', 'https://openalex.org/I2800816844', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1364, 'Artemis Hospitals', 'Gurgaon', 'IN', 'http://www.artemishospitals.com/', 'https://openalex.org/I4210165151', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1365, 'Office of the Registrar General & Census Commissioner', 'New Delhi', 'IN', 'http://censusindia.gov.in/', 'https://openalex.org/I4210145548', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1366, 'Anthropological Survey of India', 'Kolkata', 'IN', 'https://ansi.gov.in/', 'https://openalex.org/I1335376613', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1367, 'Rama Devi Women\'s University', 'Bhubaneswar', 'IN', 'https://www.rdwuniversity.nic.in/aboutuniversity.html', 'https://openalex.org/I3132208328', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1368, 'Open International University for Alternative Medicines', 'Nagapattinam', 'IN', 'http://ointunialtmed.net/', 'https://openalex.org/I4210130415', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1369, 'Rama Dental College Hospital & Research Centre', 'Kanpur', 'IN', 'http://ramadentalcollege.org/', 'https://openalex.org/I4210132157', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1370, 'Institute of Forest Genetics and Tree Breeding', 'Coimbatore', 'IN', 'http://ifgtb.icfre.gov.in/', 'https://openalex.org/I4210133185', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1371, 'Bhopal Memorial Hospital & Research Centre', 'Bhopal', 'IN', 'http://www.bmhrc.org/', 'https://openalex.org/I4210159332', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1372, 'Career Institute Of Medical & Dental Sciences and Hospital', 'Lucknow', 'IN', 'http://www.careermedicaldental.com/', 'https://openalex.org/I4210152575', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1373, 'Al-Ameen Medical College', 'Bijapur', 'IN', 'http://www.alameenmedical.org/medicalcollege.htm', 'https://openalex.org/I157458207', 0, '2025-11-30 04:34:37', '2025-11-30 04:34:37'),
(1374, 'Boehringer Ingelheim (India)', 'Mumbai', 'IN', 'https://www.boehringer-ingelheim.in', 'https://openalex.org/I4210121258', 0, '2025-11-30 04:34:42', '2025-11-30 04:34:42'),
(1375, 'Ganesamoni Hospital', 'Nagercoil', 'IN', 'https://ganesamonihospital.com', 'https://openalex.org/I4210092213', 0, '2025-11-30 04:34:42', '2025-11-30 04:34:42'),
(1376, 'Alwar Pharmacy College', 'Alwar', 'IN', 'http://www.ietpharmacy.com/', 'https://openalex.org/I4210127668', 0, '2025-11-30 04:34:42', '2025-11-30 04:34:42'),
(1377, 'Raksha Shakti University', 'Ahmedabad', 'IN', 'http://www.rsu.ac.in/', 'https://openalex.org/I3132447494', 0, '2025-11-30 04:34:42', '2025-11-30 04:34:42'),
(1378, 'Fourth Paradigm Institute', 'Bengaluru', 'IN', 'http://www.cmmacs.ernet.in/', 'https://openalex.org/I2799463389', 0, '2025-11-30 04:34:42', '2025-11-30 04:34:42'),
(1379, 'Diamond Harbour Women\'s University', 'Diamond Harbour', 'IN', 'http://dhwu.ac.in/', 'https://openalex.org/I3130807960', 0, '2025-11-30 04:34:42', '2025-11-30 04:34:42'),
(1380, 'Sree Gokulam Medical College and Research Foundation', 'Thiruvananthapuram', 'IN', 'http://www.sgmc.in/', 'https://openalex.org/I4210129408', 0, '2025-11-30 04:34:42', '2025-11-30 04:34:42'),
(1381, 'Seema Dental College and Hospital', 'Rishikesh', 'IN', 'http://www.seemadentalcollege.org/', 'https://openalex.org/I4210156603', 0, '2025-11-30 04:34:42', '2025-11-30 04:34:42'),
(1382, 'Synod Hospital', 'Aizawl', 'IN', 'http://www.synodhospital.org', 'https://openalex.org/I4210091811', 0, '2025-11-30 04:34:42', '2025-11-30 04:34:42'),
(1383, 'Tea Research Association', 'Jorhāt', 'IN', 'http://www.tocklai.net/', 'https://openalex.org/I4210144812', 0, '2025-11-30 04:34:42', '2025-11-30 04:34:42'),
(1384, 'Piramal (India)', 'Mumbai', 'IN', 'http://www.piramal.com/', 'https://openalex.org/I899992584', 0, '2025-11-30 04:34:42', '2025-11-30 04:34:42'),
(1385, 'Gujarat Cancer Society', 'Ahmedabad', 'IN', 'http://www.gcsmc.org/', 'https://openalex.org/I4210089564', 0, '2025-11-30 04:34:42', '2025-11-30 04:34:42'),
(1386, 'Department of Science and Technology', 'Kolkata', 'IN', 'http://dstwb-council.gov.in', 'https://openalex.org/I4210133337', 0, '2025-11-30 04:34:42', '2025-11-30 04:35:36'),
(1387, 'Directorate of Poultry Research', 'Hyderabad', 'IN', 'http://www.pdonpoultry.org/pdpnew/', 'https://openalex.org/I4210106975', 0, '2025-11-30 04:34:42', '2025-11-30 04:34:42'),
(1388, 'Mahavir Cancer Institute and Research Centre', 'Patna', 'IN', 'http://www.mahavircancersansthan.com/', 'https://openalex.org/I4210125216', 0, '2025-11-30 04:34:42', '2025-11-30 04:34:42'),
(1389, 'Diabetes Foundation', 'New Delhi', 'IN', 'http://www.diabetesfoundationindia.org/', 'https://openalex.org/I4210131664', 0, '2025-11-30 04:34:42', '2025-11-30 04:34:42'),
(1390, 'Sitaram Bhartia Institute of Science and Research', 'New Delhi', 'IN', 'http://www.sitarambhartia.org/', 'https://openalex.org/I4210118890', 0, '2025-11-30 04:34:42', '2025-11-30 04:34:42'),
(1391, 'Veer Kunwar Singh University', 'Arrah', 'IN', 'http://vksu.ac.in/', 'https://openalex.org/I116130893', 0, '2025-11-30 04:34:42', '2025-11-30 04:34:42'),
(1392, 'Sri Aurobindo Institute of Technology', 'Indore', 'IN', 'http://sait.ac.in/index.php', 'https://openalex.org/I4210115061', 0, '2025-11-30 04:34:42', '2025-11-30 04:34:42'),
(1393, 'Mediciti Institute of Medical Sciences', 'Hyderabad', 'IN', 'http://mims.edu.in/', 'https://openalex.org/I3130691990', 0, '2025-11-30 04:34:42', '2025-11-30 04:34:42'),
(1394, 'Madhya Pradesh Council of Science and Technology', 'Bhopal', 'IN', 'http://mpcost.gov.in/', 'https://openalex.org/I4210162153', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1395, 'Vasan Eye Care Hospital', 'Chennai', 'IN', 'http://www.vasaneye.in/', 'https://openalex.org/I4210148427', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1396, 'D.A.V Centenary Dental College', 'Yamunanagar', 'IN', 'http://www.davdentalynr.com/', 'https://openalex.org/I4210163719', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1397, 'Rajasthan Police Academy', 'Jaipur', 'IN', 'http://home.rajasthan.gov.in/rpa', 'https://openalex.org/I4210140672', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1398, 'Bastar University', 'Jagdalpur', 'IN', 'http://www.bvvjdp.ac.in/', 'https://openalex.org/I4210135828', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1399, 'Government Royapettah Hospital', 'Chennai', 'IN', 'http://royapettahhospital.com/', 'https://openalex.org/I2800345398', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43');
INSERT INTO `institutions` (`id`, `name`, `city`, `country`, `website`, `domain`, `is_verified`, `created_at`, `updated_at`) VALUES
(1400, 'Maharaja Yeshwantrao Hospital', 'Indore', 'IN', NULL, 'https://openalex.org/I2899701089', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1401, 'Kanchi Mamunivar Centre for Post Graduate Studies', 'Puducherry', 'IN', 'http://kmcpgs.puducherry.gov.in/', 'https://openalex.org/I4210089590', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1402, 'Indian Institute of Water Management', 'Bhubaneswar', 'IN', 'http://www.iiwm.res.in/', 'https://openalex.org/I4210133751', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1403, 'Jubilant Life Sciences (India)', 'Noida', 'IN', 'http://www.jubl.com/', 'https://openalex.org/I4210162011', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1404, 'Gokula Krishna College of Pharmacy', 'Nellore', 'IN', 'http://www.gkcp.org/', 'https://openalex.org/I4210093897', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1405, 'Fistulacure', 'Panchkula', 'IN', 'https://fistulacure.com/', 'https://openalex.org/I4210099752', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1406, 'Atmiya University', 'Rajkot', 'IN', 'https://atmiya.net/', 'https://openalex.org/I4210105737', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1407, 'P.M.N.M. Dental College and Hospital', 'Bagalkot', 'IN', 'http://pmnmdch.edu.in/', 'https://openalex.org/I4210110784', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1408, 'University Grants Commission', 'New Delhi', 'IN', 'http://www.ugc.ac.in/', 'https://openalex.org/I21131202', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1409, 'India Diabetes Research Foundation', 'Chennai', 'IN', 'http://www.indiadiabetesfoundation.org/', 'https://openalex.org/I4210096444', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1410, 'Rubber Board', 'Kottayam', 'IN', 'http://rubberboard.org.in/', 'https://openalex.org/I4210095491', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1411, 'Institute of Cytology and Preventive Oncology', 'Noida', 'IN', 'http://www.icpo.org.in/', 'https://openalex.org/I4210160116', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1412, 'Central Council for Research in Yoga & Naturopathy', 'New Delhi', 'IN', 'http://ccryn.org/', 'https://openalex.org/I4210123897', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1413, 'Research Centre Imarat', 'Hyderabad', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/research-centre-imarat-rci', 'https://openalex.org/I4210138561', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1414, 'Care India', 'Delhi', 'IN', 'https://www.careindia.org/', 'https://openalex.org/I4210100472', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1415, 'Ansal University', 'Gurgaon', 'IN', 'http://www.ansaluniversity.edu.in/', 'https://openalex.org/I170110779', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1416, 'Dr. Balabhai Nanavati Hospital', 'Mumbai', 'IN', 'http://www.nanavatihospital.org/', 'https://openalex.org/I2802044629', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1417, 'Ministry of Food Processing Industries', 'New Delhi', 'IN', 'http://www.mofpi.nic.in/', 'https://openalex.org/I4210160388', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1418, 'All India Council for Technical Education', 'New Delhi', 'IN', 'http://www.aicte-india.org/', 'https://openalex.org/I162289562', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1419, 'Institute of Bio-Resources and Sustainable Development', 'Imphal', 'IN', 'http://ibsd.gov.in/', 'https://openalex.org/I4210129117', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1420, 'Columbia Asia', 'Bengaluru', 'IN', 'http://india.columbiaasia.com/hospitals/yeshwanthpur', 'https://openalex.org/I920155683', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1421, 'Sunrise University', 'Alwar', 'IN', 'http://www.sunriseuniversity.in/', 'https://openalex.org/I2800472358', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1422, 'Breach Candy Hospital', 'Mumbai', 'IN', 'http://www.breachcandyhospital.org/', 'https://openalex.org/I2800671109', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1423, 'Lakshmibai National Institute of Physical Education', 'Gwalior', 'IN', 'http://lnipe.nic.in/', 'https://openalex.org/I1324220350', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1424, 'Aeronautical Development Establishment', 'Bengaluru', 'IN', 'https://drdo.gov.in/labs-and-establishments/aeronautical-development-establishment-ade', 'https://openalex.org/I4210093458', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1425, 'National Law School of India University', 'Bengaluru', 'IN', 'https://www.nls.ac.in/', 'https://openalex.org/I4210127798', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1426, 'National Institute of Food Technology, Entrepreneurship and Management - Thanjavur', 'Thanjavur', 'IN', 'https://niftem-t.ac.in', 'https://openalex.org/I116132077', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1427, 'Ion Exchange (India)', 'Mumbai', 'IN', 'http://www.ionindia.com/', 'https://openalex.org/I4210115349', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1428, 'Kalpana Chawla Government Medical College and Hospital', 'Karnāl', 'IN', 'http://www.kcgmc.edu.in/', 'https://openalex.org/I4210107157', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1429, 'Karnataka State Women\'s University', 'Bijapur', 'IN', 'http://www.kswu.ac.in/', 'https://openalex.org/I3130621514', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1430, 'CU Shah Medical College and Hospital', 'Surendranagar', 'IN', 'http://www.cusmc.org/', 'https://openalex.org/I4210115408', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:43'),
(1431, 'ESI - Post Graduate Institute of Medical Science and Research', 'Bengaluru', 'IN', 'http://esipgirnr.kar.nic.in/', 'https://openalex.org/I4210142364', 0, '2025-11-30 04:34:43', '2025-11-30 04:34:45'),
(1432, 'Bhabha Hospital', 'Mumbai', 'IN', NULL, 'https://openalex.org/I2799841569', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1433, 'D.Y. Patil Education Society', 'Kolhāpur', 'IN', 'http://www.dypatilunikop.org/', 'https://openalex.org/I4210145115', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1434, 'National Research Centre for Grapes', 'Pune', 'IN', 'http://nrcgrapes.nic.in/', 'https://openalex.org/I4210091646', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1435, 'Cognizant (India)', 'Mumbai', 'IN', 'http://www.cognizant.com/india', 'https://openalex.org/I4210117535', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1436, 'Gifu College of Nursing', 'Hāsimāra', 'IN', 'http://www.gifu-cn.ac.jp/', 'https://openalex.org/I4210122316', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1437, 'Indrashil University', 'Kadi', 'IN', 'http://indrashiluniversity.edu.in/', 'https://openalex.org/I4210162019', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1438, 'Advanced Systems Laboratory', 'Hyderabad', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/advanced-systems-laboratory-asl', 'https://openalex.org/I4210101698', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1439, 'Surya Hospitals', 'Mumbai', 'IN', 'https://suryahospitals.com/', 'https://openalex.org/I4210090617', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1440, 'Krishnadevaraya College of Dental Sciences and Hospital', 'Bengaluru', 'IN', 'http://www.kcdsh.org/', 'https://openalex.org/I2800607319', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1441, 'Rabindranath Tagore International Institute of Cardiac Sciences', 'Kolkata', 'IN', 'https://www.narayanahealth.org/hospitals/kolkata/rabindranath-tagore-international-institute-cardiac-sciences', 'https://openalex.org/I4210095468', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1442, 'Sri Sai University', 'Pathānkot', 'IN', 'http://www.srisaiuniversity.org/', 'https://openalex.org/I338496084', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1443, 'Syngene International (India)', 'Bengaluru', 'IN', 'https://www.syngeneintl.com', 'https://openalex.org/I4210149349', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1444, 'Lakeshore Hospital', 'Kochi', 'IN', 'http://www.lakeshorehospital.com/', 'https://openalex.org/I2799617311', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1445, 'National Research Centre for Banana', 'Tiruchchirappalli', 'IN', 'http://www.nrcb.res.in/', 'https://openalex.org/I4210095875', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1446, 'Mangalayatan University', 'Aligarh', 'IN', 'https://www.mangalayatan.in/', 'https://openalex.org/I244923355', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1447, 'Prin. L. N. Welingkar Institute of Management Development and Research', 'Mumbai', 'IN', 'https://www.welingkar.org', 'https://openalex.org/I2802797706', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1448, 'Dr. BMN College of Home Science', 'Mumbai', 'IN', 'http://www.bmncollege.com/', 'https://openalex.org/I4210135334', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1449, 'Gujarat Institute of Desert Ecology', 'Bhuj', 'IN', 'http://gujaratdesertecology.com', 'https://openalex.org/I4210159133', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1450, 'Mahatma Gandhi Chitrakoot Gramodaya Vishwavidyalaya', 'Satna', 'IN', 'http://www.mgcgvchitrakoot.com/', 'https://openalex.org/I2802348884', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1451, 'National Health Systems Resource Centre', 'New Delhi', 'IN', 'http://nhsrcindia.org/', 'https://openalex.org/I4210138037', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1452, 'CEPT University', 'Ahmedabad', 'IN', 'https://cept.ac.in', 'https://openalex.org/I25880638', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1453, 'Central Water and Power Research Station', 'Pune', 'IN', 'http://cwprs.gov.in/', 'https://openalex.org/I2801092184', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1454, 'Ministry of Science and Technology', 'New Delhi', 'IN', 'http://dst.gov.in/', 'https://openalex.org/I4210134808', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1455, 'Sparsh Hospital', 'Bengaluru', 'IN', 'http://www.sparshhospital.com/', 'https://openalex.org/I4210111950', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1456, 'Education and Research Network', 'New Delhi', 'IN', 'http://www.ernet.in/', 'https://openalex.org/I2802476300', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1457, 'Instruments Research & Development Establishment', 'Dehra Dūn', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/instruments-research-development-establishment-irde', 'https://openalex.org/I21449664', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1458, 'Directorate of Rapeseed-Mustard Research', 'Bharatpur', 'IN', 'http://www.drmr.res.in/', 'https://openalex.org/I4210110189', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1459, 'Subbaiah Medical College', 'Shimoga', 'IN', 'http://www.smcshimoga.com/', 'https://openalex.org/I4210111051', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1460, 'Texas Instruments (India)', 'Bengaluru', 'IN', 'http://www.ti.com/lsds/in/homepage.page', 'https://openalex.org/I4210109535', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1461, 'Atomic Energy Regulatory Board', 'Mumbai', 'IN', 'http://www.aerb.gov.in/', 'https://openalex.org/I1283797469', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1462, 'Indian Navy', 'New Delhi', 'IN', 'http://indiannavy.nic.in/', 'https://openalex.org/I2800120229', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1463, 'Rajendra Hospital', 'Patiāla', 'IN', 'http://www.gmcpatiala.com/', 'https://openalex.org/I4210102127', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1464, 'Tamil Nadu Government Dental College and Hospital', 'Chennai', 'IN', 'http://www.tamilnadudentalcollege.com/index.php', 'https://openalex.org/I2803091234', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1465, 'DKTE Society\'s Textile and Engineering Institute', 'Ichalkaranji', 'IN', 'http://www.dktes.com/', 'https://openalex.org/I4210103544', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1466, 'NIIT University', 'Jaipur', 'IN', 'https://www.niituniversity.in/', 'https://openalex.org/I4210123960', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1467, 'Mandya Institute of Medical Sciences', 'Mandya', 'IN', 'http://www.mimsmandya.org/', 'https://openalex.org/I4210154507', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1468, 'Naval Science & Technological Laboratory', 'Visakhapatnam', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/naval-science-technological-laboratory-nstl', 'https://openalex.org/I4210125896', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1469, 'Electronics Corporation of India', 'Hyderabad', 'IN', 'http://www.ecil.co.in/', 'https://openalex.org/I1336731492', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1470, 'Department of Public', 'Chennai', 'IN', 'http://www.tn.gov.in/department/24', 'https://openalex.org/I4210139346', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1471, 'Baby Memorial Hospital', 'Kozhikode', 'IN', 'http://www.babymhospital.org/', 'https://openalex.org/I4210147874', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1472, 'Jharkhand Rai University', 'Ranchi', 'IN', 'http://www.jru.edu.in/', 'https://openalex.org/I3133455736', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1473, 'KVG Dental College & Hospital', 'Sullia', 'IN', 'http://www.kvgdentalcollege.com/', 'https://openalex.org/I4210161346', 0, '2025-11-30 04:34:44', '2025-11-30 04:34:44'),
(1474, 'Trichy SRM Medical College Hospital and Research Centre', 'Tiruchi', 'IN', 'https://mchrc.srmtrichy.edu.in/', 'https://openalex.org/I4210115651', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1475, 'IBM (India)', 'Bengaluru', 'IN', 'https://www.ibm.com/in-en/', 'https://openalex.org/I4210129961', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1476, 'Apollo Proton Cancer Centre', 'Chennai', 'IN', 'https://proton.apollohospitals.com/', 'https://openalex.org/I4210154769', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1477, 'Akal University', 'Bathinda', 'IN', 'https://auts.ac.in', 'https://openalex.org/I3132890203', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1478, 'IFMR Graduate School of Business', 'Chennai', 'IN', 'http://ifmr.ac.in/', 'https://openalex.org/I3130082100', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1479, 'Andhra Pradesh Forest Department', 'Guntur', 'IN', 'http://www.forests.ap.gov.in', 'https://openalex.org/I4210126787', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1480, 'Haffkine Institute', 'Mumbai', 'IN', 'http://www.haffkineinstitute.org/', 'https://openalex.org/I182985392', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1481, 'Central Institute For Subtropical Horticulture', 'Lucknow', 'IN', 'https://cish.icar.gov.in', 'https://openalex.org/I4210099926', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1482, 'Ashok Leyland (India)', 'Chennai', 'IN', 'http://www.ashokleyland.com/', 'https://openalex.org/I59574800', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1483, 'Automotive Research Association of India', 'Pune', 'IN', 'http://www.araiindia.com/', 'https://openalex.org/I88213707', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1484, 'Indian Centre for Space Physics', 'Kolkata', 'IN', 'http://csp.res.in/', 'https://openalex.org/I2800614519', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1485, 'Tamil Nadu Government Multi Super Speciality Hospital', 'Chennai', 'IN', 'http://www.tngmssh.tn.gov.in/', 'https://openalex.org/I2925016909', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1486, 'National Law University Jodhpur', 'Jodhpur', 'IN', 'http://www.nlujodhpur.ac.in/index-main.php', 'https://openalex.org/I4210111489', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1487, 'Directorate of Coldwater Fisheries Research', 'Nainital', 'IN', 'https://www.dcfr.res.in', 'https://openalex.org/I4210119432', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1488, 'Wockhardt Hospitals', 'Mumbai', 'IN', 'https://www.wockhardthospitals.com/', 'https://openalex.org/I1316736586', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1489, 'Midas Multispeciality Hospital', 'Nagpur', 'IN', 'http://www.midashospital.com/', 'https://openalex.org/I4210089172', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1490, 'Central Institute for Research on Buffaloes', 'Hisar', 'IN', 'http://www.cirb.res.in/', 'https://openalex.org/I4210121957', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1491, 'Government Vidarbha Institute of Science and Humanities', 'Amrāvati', 'IN', 'http://www.gvishamt.org/', 'https://openalex.org/I4210162990', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1492, 'Saifee Hospital', 'Mumbai', 'IN', 'http://www.saifeehospital.com/', 'https://openalex.org/I2802630937', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1493, 'Ipca Laboratories (India)', 'Mumbai', 'IN', 'http://www.ipcalabs.com/', 'https://openalex.org/I145824119', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1494, 'Institute for Resource Analysis and Policy', 'Hyderabad', 'IN', 'http://irapindia.org/', 'https://openalex.org/I4210131359', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1495, 'Danish Hydraulic Institute (India)', 'New Delhi', 'IN', 'http://www.dhigroup.com/', 'https://openalex.org/I4210137866', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1496, 'Indian Institute of Soybean Research', 'Indore', 'IN', 'https://iisrindore.icar.gov.in/', 'https://openalex.org/I4210166498', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1497, 'KLE Society Hospital', 'Belgaum', 'IN', 'http://www.klehospital.org/', 'https://openalex.org/I4210135707', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1498, 'Indian Air Force', 'New Delhi', 'IN', 'http://indianairforce.nic.in/', 'https://openalex.org/I2801959050', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1499, 'Regional Plant Resource Centre', 'Bhubaneswar', 'IN', 'http://www.rprcbbsr.com/View/Home.aspx', 'https://openalex.org/I4210128503', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1500, 'Zoo Outreach Organisation', 'Coimbatore', 'IN', 'https://zooreach.org/', 'https://openalex.org/I4210141428', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1501, 'HCG Cancer Hospital', 'Bengaluru', 'IN', 'https://www.hcgoncology.com', 'https://openalex.org/I4210113515', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1502, 'Central Council for Research in Unani Medicine', 'New Delhi', 'IN', 'http://ccrum.res.in', 'https://openalex.org/I4210137253', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1503, 'Centre for Water Resources Development and Management', 'Kozhikode', 'IN', 'http://www.cwrdm.org/', 'https://openalex.org/I4210147492', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1504, 'Joshi Hospital', 'Pune', 'IN', 'http://joshihospital.in/', 'https://openalex.org/I2802569694', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1505, 'SciGenom Labs (India)', 'Kochi', 'IN', 'http://www.scigenom.com/', 'https://openalex.org/I4210154726', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1506, 'National Institute of Public Finance and Policy', 'New Delhi', 'IN', 'http://www.nipfp.org.in/home-page/', 'https://openalex.org/I4899593', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1507, 'ICAR-Indian Institute of Agricultural Biotechnology', 'Ranchi', 'IN', 'https://iiab.icar.gov.in/', 'https://openalex.org/I4210158390', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1508, 'Bhatia Hospital', 'Mumbai', 'IN', 'http://www.bhatiahospital.org/', 'https://openalex.org/I4210159644', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1509, 'D A Pandu Memorial RV Dental College and Hospital', 'Bengaluru', 'IN', 'http://www.rvdentalcollege.org/', 'https://openalex.org/I4210113629', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1510, 'King George Hospital', 'Visakhapatnam', 'IN', 'http://kghvisakhapatnam.org/', 'https://openalex.org/I4210162863', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1511, 'Defence Electronics Application Laboratory', 'Dehra Dūn', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/defence-electronics-application-laboratory-deal', 'https://openalex.org/I4210144350', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1512, 'Terminal Ballistics Research Laboratory', 'Chandigarh', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/terminal-ballistics-research-laboratory-tbrl', 'https://openalex.org/I56365517', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1513, 'Kerala State Council for Science, Technology and Environment', 'Thiruvananthapuram', 'IN', 'http://www.kscste.kerala.gov.in/', 'https://openalex.org/I1284637955', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1514, 'ICFAI University, Tripura', 'Mohanpur', 'IN', 'https://www.iutripura.edu.in/', 'https://openalex.org/I173462786', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1515, 'Central Citrus Research Institute', 'Nagpur', 'IN', 'http://www.ccringp.org.in/ccringp/#', 'https://openalex.org/I4210133365', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1516, 'Dr. Panjabrao Deshmukh Memorial Medical College', 'Amrāvati', 'IN', 'http://www.pdmmc.com/', 'https://openalex.org/I4210115678', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1517, 'Shri Maharaja Hari Singh Hospital', 'Srinagar', 'IN', 'http://www.gmcs.edu.in/SMHS_Hospital', 'https://openalex.org/I2802282215', 0, '2025-11-30 04:34:45', '2025-11-30 04:34:45'),
(1518, 'Apeejay Stya University', 'Sohna', 'IN', 'https://university.apeejay.edu', 'https://openalex.org/I3130994624', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1519, 'Directorate of Groundnut Research', 'Jūnāgadh', 'IN', 'http://nrcg.res.in/', 'https://openalex.org/I2801342896', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1520, 'Lourdes Hospital', 'Kochi', 'IN', 'http://lourdeshospital.in/', 'https://openalex.org/I4210086567', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1521, 'Indian Medical Association', 'New Delhi', 'IN', 'http://www.ima-india.org/', 'https://openalex.org/I4210150663', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1522, 'National Academy of Sciences India', 'Allahabad', 'IN', 'http://www.nasi.org.in/', 'https://openalex.org/I127462306', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1523, 'Deccan College Post Graduate and Research Institute', 'Pune', 'IN', 'https://www.dcpune.ac.in/', 'https://openalex.org/I352274', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1524, 'Government Rajaji Hospital', 'Madurai', 'IN', 'http://www.madurai.tn.nic.in/gh.html', 'https://openalex.org/I2801491149', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1525, 'Institute of Seismological Research', 'Gandhinagar', 'IN', 'http://isr.gujarat.gov.in/', 'https://openalex.org/I4210095987', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1526, 'ITPEnergised Group (India)', 'Puducherry', 'IN', 'http://www.itpower.co.in/', 'https://openalex.org/I4210144604', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1527, 'Indian Institute of Natural Resins and Gums', 'Ranchi', 'IN', 'https://iinrg.icar.gov.in/', 'https://openalex.org/I1307855090', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1528, 'Gastroenterology Medical Center and Hospital', 'Coimbatore', 'IN', 'https://www.gemhospitals.com/coimbatore/', 'https://openalex.org/I4210157337', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1529, 'Indira Gandhi Mirpur University', 'Gurugram', 'IN', 'https://www.igu.ac.in', 'https://openalex.org/I4210142013', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1530, 'Nalsar University of Law', 'Hyderabad', 'IN', 'https://www.nalsar.ac.in/', 'https://openalex.org/I2802231754', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1531, 'Budge Budge Institute of Technology', 'Budge Budge', 'IN', 'http://bbit.edu.in/', 'https://openalex.org/I3131908327', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1532, 'Government Mohan Kumaramangalam Medical College', 'Salem', 'IN', 'http://www.gmkmc.ac.in/gmkmc/', 'https://openalex.org/I4210154858', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1533, 'Maharashtra State Board of Technical Education', 'Mumbai', 'IN', 'http://msbte.com/msbte/', 'https://openalex.org/I2799436172', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1534, 'JK Lakshmipat University', 'Jaipur', 'IN', 'https://jklu.edu.in', 'https://openalex.org/I912344705', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1535, 'Tropical Forest Research Institute', 'Jabalpur', 'IN', 'http://tfri.icfre.gov.in/', 'https://openalex.org/I1284847757', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1536, 'Mitra Biotech (India)', 'Bengaluru', 'IN', 'http://www.mitrabiotech.com/', 'https://openalex.org/I4210118696', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1537, 'Engineers India (India)', 'New Delhi', 'IN', 'http://www.engineersindia.com/', 'https://openalex.org/I46308248', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1538, 'National Academy of Agricultural Research Management', 'Hyderabad', 'IN', 'http://www.naarm.ernet.in/index.php?lang=en', 'https://openalex.org/I174979866', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1539, 'Marwadi Education Foundation', 'Rajkot', 'IN', 'https://www.marwadieducation.edu.in/', 'https://openalex.org/I4210094966', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1540, 'Glenmark Pharmaceuticals (India)', 'Mumbai', 'IN', 'http://www.glenmarkpharma.com/', 'https://openalex.org/I4210131532', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1541, 'Indian Institute of Forest Management', 'Bhopal', 'IN', 'http://iifm.ac.in/', 'https://openalex.org/I176010741', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1542, 'Kaziranga University', 'Jorhāt', 'IN', 'http://www.kazirangauniversity.in/', 'https://openalex.org/I332121957', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1543, 'Borlaug Institute for South Asia', 'New Delhi', 'IN', 'https://bisa.org/', 'https://openalex.org/I4210105543', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1544, 'Vokkaligara Sangha Dental College & Hospital', 'Bengaluru', 'IN', 'http://www.vsdentalcollege.com/', 'https://openalex.org/I4210126134', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1545, 'Peerless Hospital & B.K.Roy Research Centre', 'Kolkata', 'IN', 'http://www.peerlesshospital.com/', 'https://openalex.org/I4210117605', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1546, 'Institute of Social Sciences', 'Bengaluru', 'IN', 'http://www.issin.org', 'https://openalex.org/I4210133783', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1547, 'Schizophrenia Research Foundation', 'Chennai', 'IN', 'http://www.scarfindia.org/', 'https://openalex.org/I1328782679', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1548, 'University of Technology and Management', 'Shillong', 'IN', 'http://www.utm.ac.in/', 'https://openalex.org/I45533404', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1549, 'Universal Engineering College', 'Thrissur', 'IN', 'http://universalcollege.net/', 'https://openalex.org/I2833836602', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1550, 'West Bengal National University of Juridical Sciences', 'Kolkata', 'IN', 'https://www.nujs.edu', 'https://openalex.org/I3129450392', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1551, 'Government ENT Hospital', 'Hyderabad', 'IN', 'http://www.telangana.gov.in/contacts/hospitals', 'https://openalex.org/I2801726870', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1552, 'Vikrama Simhapuri University', 'Nellore', 'IN', 'http://www.simhapuriuniv.ac.in/', 'https://openalex.org/I219774598', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1553, 'Society for Applied Studies', 'Kolkata', 'IN', 'http://sas.org.in/', 'https://openalex.org/I4210095463', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1554, 'Salim Ali Center for Ornithology and Natural History', 'Coimbatore', 'IN', 'http://www.sacon.in/', 'https://openalex.org/I4210113893', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1555, 'Suamandeep Vidyapeeth University', 'Vadodara', 'IN', 'https://sumandeepvidyapeethdu.edu.in', 'https://openalex.org/I4210119093', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1556, 'Maharaja Ganga Singh University', 'Bikaner', 'IN', 'http://mgsubikaner.ac.in/', 'https://openalex.org/I220911346', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1557, 'Entrepreneurship Development Institute of India', 'Ahmedabad', 'IN', 'http://www.ediindia.org/', 'https://openalex.org/I2801155476', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1558, 'North Eastern Space Applications Centre', 'Shillong', 'IN', 'http://nesac.gov.in/', 'https://openalex.org/I4210130634', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1559, 'Sickle Cell Institute Chhattisgarh, Raipur', 'Raipur', 'IN', 'http://www.scic.cg.nic.in/', 'https://openalex.org/I4210119209', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1560, 'Shell (India)', 'Gurgaon', 'IN', 'http://www.shell.in/', 'https://openalex.org/I4210094045', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1561, 'National Board of Examinations', 'New Delhi', 'IN', 'http://www.natboard.edu.in/', 'https://openalex.org/I4210140497', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1562, 'Madras Institute of Orthopaedics and Traumatology', 'Chennai', 'IN', 'http://www.miotinternational.com/', 'https://openalex.org/I1300678687', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1563, 'Defence Institute of High Altitude Research', 'Leh', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/defence-institute-high-altitude-research-dihar', 'https://openalex.org/I4210090935', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1564, 'Healthcare Technology Innovation Centre', 'Chennai', 'IN', 'https://htic.iitm.ac.in/', 'https://openalex.org/I4210102197', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1565, 'Sri Gokulam Hospital', 'Salem', 'IN', 'http://srigokulamhospital.com/', 'https://openalex.org/I4210105018', 0, '2025-11-30 04:34:46', '2025-11-30 04:34:46'),
(1566, 'Adikavi Nannaya University', 'Rajahmundry', 'IN', 'http://www.aknu.edu.in/', 'https://openalex.org/I247375439', 0, '2025-11-30 04:34:47', '2025-11-30 04:34:47'),
(1567, 'Regional Medical Research Center', 'Bhubaneswar', 'IN', 'http://www.rmrcbbsr.gov.in/', 'https://openalex.org/I2802952153', 0, '2025-11-30 04:34:47', '2025-11-30 04:34:47'),
(1568, 'Krantiguru Shyamji Krishna Verma Kachchh University', 'Bhuj', 'IN', 'http://kskvku.digitaluniversity.ac/', 'https://openalex.org/I3129616761', 0, '2025-11-30 04:34:47', '2025-11-30 04:34:47'),
(1569, 'Anusandhan Trust', 'Mumbai', 'IN', 'http://www.anusandhantrust.org/', 'https://openalex.org/I4210090968', 0, '2025-11-30 04:34:51', '2025-11-30 04:34:51'),
(1570, 'Niloufer Hospital', 'Hyderabad', 'IN', 'http://www.nilouferhospital.com/', 'https://openalex.org/I2801125169', 0, '2025-11-30 04:34:51', '2025-11-30 04:34:51'),
(1571, 'Translational Research Platform for Veterinary Biologicals (India)', 'Chennai', 'IN', 'http://www.trpvb.org.in/index.php', 'https://openalex.org/I4210166246', 0, '2025-11-30 04:34:51', '2025-11-30 04:34:51'),
(1572, 'Telangana University', 'Nizāmābād', 'IN', 'http://www.telanganauniversity.ac.in/', 'https://openalex.org/I3133026063', 0, '2025-11-30 04:34:51', '2025-11-30 04:34:51'),
(1573, 'Netaji Subhas National Institute of Sports', 'Patiāla', 'IN', 'http://nsnis.org/', 'https://openalex.org/I2800893945', 0, '2025-11-30 04:34:51', '2025-11-30 04:34:51'),
(1574, 'Central Silk Technological Research Institute', 'Bengaluru', 'IN', 'http://cstri.res.in/', 'https://openalex.org/I4210102363', 0, '2025-11-30 04:34:51', '2025-11-30 04:34:51'),
(1575, 'Tilak Maharashtra Vidyapeeth', 'Pune', 'IN', 'http://www.tmv.edu.in', 'https://openalex.org/I4210110873', 0, '2025-11-30 04:34:51', '2025-11-30 04:34:51'),
(1576, 'Aditya Jyot Eye Hospital', 'Mumbai', 'IN', 'http://www.adityajyoteyehospital.org/', 'https://openalex.org/I2801533027', 0, '2025-11-30 04:34:51', '2025-11-30 04:34:51'),
(1577, 'Homi Bhabha Centre for Science Education', 'Mumbai', 'IN', 'http://www.hbcse.tifr.res.in/', 'https://openalex.org/I57827967', 0, '2025-11-30 04:34:51', '2025-11-30 04:34:51'),
(1578, 'Ashwini Hospital', 'Pune', 'IN', 'http://www.ashwinihospital.in/', 'https://openalex.org/I4210108373', 0, '2025-11-30 04:34:51', '2025-11-30 04:34:51'),
(1579, 'Microsoft (India)', 'Hyderabad', 'IN', 'http://www.microsoft.com/en-in', 'https://openalex.org/I4210162141', 0, '2025-11-30 04:34:51', '2025-11-30 04:34:51'),
(1580, 'WWF-India', 'New Delhi', 'IN', 'https://www.wwfindia.org', 'https://openalex.org/I1329578906', 0, '2025-11-30 04:34:51', '2025-11-30 04:34:51'),
(1581, 'M S Ramaiah Memorial Hospital', 'Bengaluru', 'IN', 'https://msrmh.com/', 'https://openalex.org/I4210153998', 0, '2025-11-30 04:34:51', '2025-11-30 04:34:51'),
(1582, 'Apex Heart Institute', 'Ahmedabad', 'IN', 'http://www.apexheart.in/', 'https://openalex.org/I4210158554', 0, '2025-11-30 04:34:51', '2025-11-30 04:34:51'),
(1583, 'Dravidian University', 'Kuppam', 'IN', 'http://www.dravidianuniversity.ac.in/', 'https://openalex.org/I288045149', 0, '2025-11-30 04:34:51', '2025-11-30 04:34:51'),
(1584, 'Vigyan Prasar', 'Noida', 'IN', 'https://vigyanprasar.gov.in/', 'https://openalex.org/I4210089994', 0, '2025-11-30 04:34:51', '2025-11-30 04:34:51'),
(1585, 'Dhanvantari Ayurveda College Hospital and Research Centre', 'Siddāpur', 'IN', 'http://siddapurayuredu.org/', 'https://openalex.org/I4210145297', 0, '2025-11-30 04:34:51', '2025-11-30 04:34:51'),
(1586, 'Oil India (India)', 'Dibrugarh', 'IN', 'http://www.oil-india.com/oilnew/', 'https://openalex.org/I884363091', 0, '2025-11-30 04:34:51', '2025-11-30 04:34:51'),
(1587, 'Dr. Shakuntala Misra National Rehabilitation University', 'Lucknow', 'IN', 'http://dsmru.up.nic.in/', 'https://openalex.org/I3131131421', 0, '2025-11-30 04:34:51', '2025-11-30 04:34:51'),
(1588, 'Mittal hospital', 'Ajmer', 'IN', 'http://www.mittalhospital.com/', 'https://openalex.org/I4210141934', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1589, 'Almas Hospital', 'Malappuram', 'IN', 'http://www.almashospital.com/', 'https://openalex.org/I2800415795', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1590, 'Medical Trust Hospital', 'Kochi', 'IN', 'http://www.medicaltrusthospital.com/', 'https://openalex.org/I2801496111', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1591, 'ISRO Propulsion Complex', 'Tirunelveli', 'IN', 'https://www.iprc.gov.in/iprc/index.php/en', 'https://openalex.org/I4210095388', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1592, 'Indian Cancer Society', 'Mumbai', 'IN', 'http://www.indiancancersociety.org/', 'https://openalex.org/I4210139019', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1593, 'Batra Hospital and Medical Research Centre', 'New Delhi', 'IN', 'http://www.batrahospitaldelhi.org/', 'https://openalex.org/I4210137951', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1594, 'Central Pulp & Paper Research Institute', 'Sahāranpur', 'IN', 'http://www.cppri.org.in/', 'https://openalex.org/I4210125508', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1595, 'Choithram Hospital and Research Centre', 'Indore', 'IN', 'http://www.choithram.org/', 'https://openalex.org/I4210161314', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1596, 'Population Services International', 'New Delhi', 'IN', 'http://www.psi.org.in/psiindia/', 'https://openalex.org/I4210125691', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1597, 'Central India Institute of Medical Sciences', 'Nagpur', 'IN', 'http://www.ciimsnagpur.com/', 'https://openalex.org/I4210135505', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1598, 'Population Council Institute', 'Delhi', 'IN', 'https://popcouncilinstitute.org/', 'https://openalex.org/I4210155942', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1599, 'Swami Ramanand Teerth Rural Medical College', 'Ambajogai', 'IN', 'http://srtrmca.org/', 'https://openalex.org/I3132791605', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1600, 'Karnataka Health Promotion Trust', 'Bengaluru', 'IN', 'http://www.khpt.org/', 'https://openalex.org/I4210116282', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1601, 'Dr. Sarvepalli Radhakrishnan Rajasthan Ayurved University', 'Jodhpur', 'IN', 'http://www.education.rajasthan.gov.in', 'https://openalex.org/I4210157183', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1602, 'Diabetes Care & Hormone Clinic', 'Ahmedabad', 'IN', 'http://www.diacare.in/', 'https://openalex.org/I4210131238', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1603, 'Malabar Cancer Centre', 'Tellicherry', 'IN', 'http://www.mcc.kerala.gov.in/', 'https://openalex.org/I1316728056', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1604, 'Bharatiya Vidya Bhavan', 'Mumbai', 'IN', 'http://www.bhavans.info/', 'https://openalex.org/I2800445823', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1605, 'Mudra Institute of Communications Ahmedabad', 'Ahmedabad', 'IN', 'https://www.mica.ac.in/', 'https://openalex.org/I4210147161', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1606, 'Institute of Genetics and Hospital for Genetic Diseases', 'Hyderabad', 'IN', 'http://instituteofgenetics-ou.org/', 'https://openalex.org/I4210105935', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1607, 'Centre for Environment Education', 'Ahmedabad', 'IN', 'http://www.ceeindia.org/', 'https://openalex.org/I4210163038', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1608, 'Malabar Institute of Medical Sciences', 'Kozhikode', 'IN', 'http://www.mimsindia.com/', 'https://openalex.org/I165915565', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1609, 'Hygienic Research Institute (India)', 'Mumbai', 'IN', 'https://www.hriindia.com/', 'https://openalex.org/I4210165585', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1610, 'National Tuberculosis Institute', 'Bengaluru', 'IN', 'http://ntiindia.kar.nic.in/', 'https://openalex.org/I1285815856', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1611, 'CPCL Polytechnic College', 'Chennai', 'IN', 'http://www.cpclpolytechnic.com/', 'https://openalex.org/I4210155803', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1612, 'Serum Institute of India (India)', 'Pune', 'IN', 'http://www.seruminstitute.com/', 'https://openalex.org/I3131544347', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1613, 'Department of Atomic Energy', 'Mumbai', 'IN', 'http://dae.nic.in/', 'https://openalex.org/I3149292468', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1614, 'IQVIA (India)', 'Ahmedabad', 'IN', 'https://www.iqvia.com/locations/india', 'https://openalex.org/I4210096889', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1615, 'KVG Medical College & Hospital', 'Sullia', 'IN', 'http://www.kvgmch.org/', 'https://openalex.org/I4210110617', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1616, 'Mahesh Bhattacharyya Homeopathic Medical College and Hospital', 'Howrah', 'IN', 'http://mbhmch.org', 'https://openalex.org/I2802598772', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1617, 'Pandit Sundarlal Sharma Open University', 'Bilāspur', 'IN', 'http://pssou.ac.in/', 'https://openalex.org/I4210164645', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1618, 'Sri Ramachandra Medical Centre', 'Chennai', 'IN', 'http://www.sriramachandra.edu.in/medical/', 'https://openalex.org/I4210107332', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1619, 'Santokba Durlabhji Memorial hospital', 'Jaipur', 'IN', 'http://sdmh.in/', 'https://openalex.org/I2802577520', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1620, 'Meenakshi Mission Hospital and Research Centre', 'Madurai', 'IN', 'http://www.mmhrc.in/', 'https://openalex.org/I4210113550', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1621, 'Karmaveer Bhausaheb Hiray Dental College and Hospital', 'Nashik', 'IN', 'http://mgv.org.in/dental/', 'https://openalex.org/I4210105287', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1622, 'Palamuru University', 'Mahbūbnagar', 'IN', 'http://palamuruuniversity.ac.in/', 'https://openalex.org/I210116565', 0, '2025-11-30 04:34:52', '2025-11-30 04:34:52'),
(1623, 'Delhi Development Authority', 'Delhi', 'IN', 'https://dda.org.in/ddaweb/index.aspx', 'https://openalex.org/I4210124192', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1624, 'Eye Hospital in Bangalore', 'Bengaluru', 'IN', 'https://www.theeyefoundation.com/eye-hospital-in-bellandur-bangalore/', 'https://openalex.org/I4210161759', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1625, 'Government Vellore Medical College', 'Vellore', 'IN', 'http://www.gvmc.in/', 'https://openalex.org/I2800655513', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1626, 'M. S. Ramaiah Dental College and Hospital', 'Bengaluru', 'IN', 'http://www.msruas.ac.in/academics/dental_science', 'https://openalex.org/I4210149371', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1627, 'Dr. Somervell Memorial CSI Medical College and Hospital', 'Neyyāttinkara', 'IN', 'http://www.drsmcsimchk.org/', 'https://openalex.org/I2801643552', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1628, 'Science Health Allied Research Education', 'Hyderabad', 'IN', NULL, 'https://openalex.org/I4210150225', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1629, 'S.L. Raheja Hospital', 'Mumbai', 'IN', 'http://rahejahospital.com/', 'https://openalex.org/I4210155990', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1630, 'M.V. Hospital for Diabetes and Diabetes Research Centre', 'Chennai', 'IN', 'http://www.mvdiabetes.com/', 'https://openalex.org/I4210160007', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1631, 'ABB (India)', 'Bengaluru', 'IN', 'https://new.abb.com/indian-subcontinent/', 'https://openalex.org/I4210141791', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1632, 'Mahatma Gandhi Antarrashtriya Hindi Vishwavidyalaya', 'Wardha', 'IN', 'http://www.hindivishwa.org/Default.aspx', 'https://openalex.org/I2799626985', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1633, 'Z.V.M.Unani Medical College & Hospital', 'Pune', 'IN', 'http://www.zvmunanimchpune.org/', 'https://openalex.org/I4210087298', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1634, 'Darshan Dental College and Hospital', 'Udaipur', 'IN', 'http://darshandentalcollege.org/', 'https://openalex.org/I4210142127', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1635, 'Arid Forest Research Institute', 'Jodhpur', 'IN', 'http://www.icfre.org/index.php?linkid=sublnk1203&link=1&mainId=82', 'https://openalex.org/I140470919', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1636, 'Shalby Hospitals', 'Ahmedabad', 'IN', 'http://shalby.org/', 'https://openalex.org/I2801919287', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1637, 'Aryabhatta Knowledge University', 'Patna', 'IN', 'http://akubihar.ac.in/', 'https://openalex.org/I3133415137', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1638, 'Jawaharlal Nehru Cancer Hospital and Research Centre', 'Bhopal', 'IN', 'http://jnch.nic.in/', 'https://openalex.org/I4210104322', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1639, 'Orchid Pharma (India)', 'Chennai', 'IN', 'http://www.orchidpharma.com/', 'https://openalex.org/I4210132051', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1640, 'Bansal Institute Of Research Technology & Science', 'Bhopal', 'IN', 'http://www.birtbpl.ac.in/', 'https://openalex.org/I4210143989', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1641, 'National AIDS Control Organisation', 'New Delhi', 'IN', 'http://www.naco.gov.in/NACO/', 'https://openalex.org/I4210165666', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1642, 'Indian Academy of Pediatrics', 'New Delhi', 'IN', 'https://www.iapindia.org/', 'https://openalex.org/I151280546', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1643, 'Wockhardt (India)', 'Aurangabad', 'IN', 'http://www.wockhardt.com/home.aspx', 'https://openalex.org/I4210102159', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1644, 'BGS Global Hospital', 'Bengaluru', 'IN', 'http://www.globalhospitalsindia.com/bangalore', 'https://openalex.org/I4210150676', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1645, 'Strand Life Sciences (India)', 'Bengaluru', 'IN', 'http://www.strandls.com/', 'https://openalex.org/I1299343005', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1646, 'ICAR-National Research Centre on Pig', 'Guwahati', 'IN', 'http://nrcp.in/aboutus.htm#about', 'https://openalex.org/I4210121099', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1647, 'Administrative Staff College of India', 'Hyderabad', 'IN', 'http://www.asci.org.in/', 'https://openalex.org/I187424834', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1648, 'Scientific Analysis Group', 'Delhi', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/scientific-analysis-group-sag', 'https://openalex.org/I4210120887', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1649, 'Gujarat Vidyapith', 'Ahmedabad', 'IN', 'http://gujaratvidyapith.org/', 'https://openalex.org/I347335806', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1650, 'Mahatma Gandhi Kashi Vidyapith', 'Varanasi', 'IN', 'http://www.mgkvp.ac.in/', 'https://openalex.org/I2802997415', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1651, 'G. Kuppuswamy Naidu Memorial Hospital', 'Coimbatore', 'IN', 'http://www.gknmhospital.org/', 'https://openalex.org/I4210146939', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1652, 'International Centers for Excellence in Research', 'Chennai', 'IN', 'https://www.niaid.nih.gov/about/international-centers-excellence-research', 'https://openalex.org/I4210096703', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1653, 'National Council of Applied Economic Research', 'New Delhi', 'IN', 'http://www.ncaer.org/', 'https://openalex.org/I4210127254', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1654, 'Jayoti Vidyapeeth Women\'s University', 'Jaipur', 'IN', 'https://www.jvwu.ac.in', 'https://openalex.org/I319193654', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1655, 'Indian Council for Research on International Economic Relations', 'New Delhi', 'IN', 'http://icrier.org/', 'https://openalex.org/I4210105909', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1656, 'KLE Ayur World', 'Belgaum', 'IN', 'https://www.kleayurworld.edu.in/', 'https://openalex.org/I4210138071', 0, '2025-11-30 04:34:53', '2025-11-30 04:34:53'),
(1657, 'Gujarat National Law University', 'Gandhinagar', 'IN', 'http://www.gnlu.ac.in/', 'https://openalex.org/I266678185', 0, '2025-11-30 04:34:54', '2025-11-30 04:34:54'),
(1658, 'Institute of Public Enterprise', 'Hyderabad', 'IN', 'http://www.ipeindia.org/', 'https://openalex.org/I3131387778', 0, '2025-11-30 04:34:54', '2025-11-30 04:34:54'),
(1659, 'Tezpur Medical College & Hospital', 'Tezpur', 'IN', 'http://tmcassam.org/', 'https://openalex.org/I4210097972', 0, '2025-11-30 04:34:54', '2025-11-30 04:34:54'),
(1660, 'Podar Ayurved Medical College', 'Mumbai', 'IN', 'http://www.ayurvedinstitute.com/main.asp', 'https://openalex.org/I4210111247', 0, '2025-11-30 04:34:54', '2025-11-30 04:34:54'),
(1661, 'Dolphin (PG) Institute of Bio Medical and Natural Science', 'Dehra Dūn', 'IN', 'http://www.dolphininstitute.in/', 'https://openalex.org/I4210138733', 0, '2025-11-30 04:34:54', '2025-11-30 04:34:54'),
(1662, 'Hamidia Hospital', 'Bhopal', 'IN', 'http://www.gmcbhopal.net/history.asp', 'https://openalex.org/I2802696403', 0, '2025-11-30 04:34:54', '2025-11-30 04:34:54'),
(1663, 'B. V. Patel Pharmaceutical Education and Research Development Centre', 'Ahmedabad', 'IN', 'http://www.perdcentre.com/', 'https://openalex.org/I4210147659', 0, '2025-11-30 04:34:54', '2025-11-30 04:34:54'),
(1664, 'New Delhi Tuberculosis Center', 'New Delhi', 'IN', 'http://ndtbc.com/', 'https://openalex.org/I4210160788', 0, '2025-11-30 04:34:54', '2025-11-30 04:34:54'),
(1665, 'Central Leprosy Teaching & Research Institute', 'Chengalpattu', 'IN', 'http://www.cltri.gov.in/', 'https://openalex.org/I4210163634', 0, '2025-11-30 04:34:54', '2025-11-30 04:34:54'),
(1666, 'National Institute of Ecology', 'Jaipur', 'IN', 'https://nieindia.org/', 'https://openalex.org/I4210087709', 0, '2025-11-30 04:34:54', '2025-11-30 04:34:54'),
(1667, 'Kerala School of Mathematics', 'Kozhikode', 'IN', 'http://www.ksom.res.in/', 'https://openalex.org/I2800520468', 0, '2025-11-30 04:34:54', '2025-11-30 04:34:54'),
(1668, 'Cipla (India)', 'Mumbai', 'IN', 'https://www.cipla.com/', 'https://openalex.org/I4210133301', 0, '2025-11-30 04:34:54', '2025-11-30 04:34:54'),
(1669, 'Centre For Environment Architecture & Human Settlements', 'Kozhikode', 'IN', 'http://cearth.in/', 'https://openalex.org/I4210141617', 0, '2025-11-30 04:34:54', '2025-11-30 04:34:54'),
(1670, 'TIFR Centre for Applicable Mathematics', 'Bengaluru', 'IN', 'https://www.math.tifrbng.res.in/', 'https://openalex.org/I94595606', 0, '2025-11-30 04:34:54', '2025-11-30 04:34:54'),
(1671, 'Unilever (India)', 'Mumbai', 'IN', 'https://www.hul.co.in/', 'https://openalex.org/I4210124316', 0, '2025-11-30 04:34:54', '2025-11-30 04:34:54'),
(1672, 'Indian Institute for Human Settlements', 'Bengaluru', 'IN', 'http://iihs.co.in/', 'https://openalex.org/I4210136078', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1673, 'National University of Educational Planning and Administration', 'New Delhi', 'IN', 'http://www.nuepa.org/New/', 'https://openalex.org/I1317634868', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1674, 'Tata Technologies (India)', 'Pune', 'IN', 'http://www.tatatechnologies.com/', 'https://openalex.org/I4210114539', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1675, 'Saroj Gupta Cancer Centre & Research Institute', 'Kolkata', 'IN', 'http://www.cancercentrecalcutta.org/', 'https://openalex.org/I4210151504', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1676, 'Central University of Odisha', 'Koraput', 'IN', 'https://cuo.ac.in', 'https://openalex.org/I4210129043', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1677, 'Indian Academy of Sciences', 'Bengaluru', 'IN', 'https://www.ias.ac.in/', 'https://openalex.org/I94305156', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55');
INSERT INTO `institutions` (`id`, `name`, `city`, `country`, `website`, `domain`, `is_verified`, `created_at`, `updated_at`) VALUES
(1678, 'Dev Sanskriti Vishwavidyalaya', 'Haridwar', 'IN', 'https://www.dsvv.ac.in', 'https://openalex.org/I2801450391', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1679, 'Integrated Test Range', 'Balasore', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/integrated-test-range-itr', 'https://openalex.org/I4210125378', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1680, 'Bombay Veterinary College', 'Mumbai', 'IN', 'http://bvc.org.in/', 'https://openalex.org/I4210100467', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1681, 'National Research Centre for Integrated Pest Management', 'New Delhi', 'IN', 'http://www.ncipm.res.in/', 'https://openalex.org/I4210105200', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1682, 'Rabindra Bharati University', 'Kolkata', 'IN', 'http://rbu.ac.in/', 'https://openalex.org/I83916355', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1683, 'Kolkata Municipal Corporation', 'Kolkata', 'IN', 'https://www.kmcgov.in/KMCPortal/jsp/KMCPortalHome1.jsp', 'https://openalex.org/I2801352814', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1684, 'Centre for Development of Telematics', 'New Delhi', 'IN', 'http://www.cdot.in/', 'https://openalex.org/I43909382', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1685, 'Rain Forest Research Institute', 'Jorhāt', 'IN', 'http://rfri.icfre.gov.in/', 'https://openalex.org/I1291714003', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1686, 'Suven Life Sciences (India)', 'Hyderabad', 'IN', 'http://www.suven.com/', 'https://openalex.org/I4210097346', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1687, 'Honeywell (India)', 'Bengaluru', 'IN', 'https://honeywell.com/country/in/About/Pages/HTS.aspx', 'https://openalex.org/I4210101534', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1688, 'National Institute of Disaster Management', 'New Delhi', 'IN', 'http://nidm.gov.in/', 'https://openalex.org/I242113363', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1689, 'GLS University', 'Ahmedabad', 'IN', 'https://www.glsuniversity.ac.in', 'https://openalex.org/I4210088600', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1690, 'Martin Luther Christian University', 'Shillong', 'IN', 'http://www.mlcuniv.in/', 'https://openalex.org/I3133174604', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1691, 'Patliputra University', 'Patna', 'IN', 'http://ppup.ac.in/', 'https://openalex.org/I3131743352', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1692, 'Lupin Pharmaceuticals (India)', 'Mumbai', 'IN', 'http://www.lupinpharmaceuticals.com/rnd.htm', 'https://openalex.org/I21675474', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1693, 'King Institute of Preventive Medicine and Research', 'Chennai', 'IN', 'http://www.kipmr.org.in/', 'https://openalex.org/I323874257', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1694, 'Gujarat Institute of Development Research', 'Ahmedabad', 'IN', 'http://www.gidr.ac.in/', 'https://openalex.org/I4210092074', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1695, 'Fortune Institute of International Business', 'New Delhi', 'IN', 'https://www.fiib.edu.in/', 'https://openalex.org/I4210105362', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1696, 'Fortis Escorts Hospital', 'Faridabad', 'IN', 'http://www.fortishealthcare.com/india/hospitals-in-delhi-ncr/fortis-escorts-hospital-faridabad', 'https://openalex.org/I4210130647', 0, '2025-11-30 04:34:55', '2025-11-30 04:35:20'),
(1697, 'Sunshine Hospitals', 'Hyderabad', 'IN', 'http://www.sunshinehospitals.com/', 'https://openalex.org/I4210095867', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1698, 'Diabetes Care and Research Foundation', 'Pune', 'IN', 'http://www.dcrfpune.com/index.html', 'https://openalex.org/I4210096029', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1699, 'Adani Institute of Infrastructure Engineering', 'Ahmedabad', 'IN', 'http://www.aii.ac.in/aiie/', 'https://openalex.org/I4210102401', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1700, 'Sterling Hospitals', 'Ahmedabad', 'IN', 'http://www.sterlinghospitals.com/', 'https://openalex.org/I1332791849', 0, '2025-11-30 04:34:55', '2025-11-30 04:34:55'),
(1701, 'Gian Sagar Dental College and Hospital', 'Patiāla', 'IN', 'https://www.giansagar.org/dental/', 'https://openalex.org/I4210144609', 0, '2025-11-30 04:34:56', '2025-11-30 04:34:56'),
(1702, 'Tech Mahindra (India)', 'Pune', 'IN', 'http://www.techmahindra.com/pages/default.aspx', 'https://openalex.org/I4210130378', 0, '2025-11-30 04:34:56', '2025-11-30 04:34:56'),
(1703, 'Veer Chandra Singh Garhwali Uttarakhand University of Horticulture & Forestry', 'Pauri', 'IN', 'https://uuhf.ac.in/', 'https://openalex.org/I4210095517', 0, '2025-11-30 04:34:56', '2025-11-30 04:34:56'),
(1704, 'Mazumdar Shaw Medical Centre', 'Bengaluru', 'IN', 'https://www.narayanahealth.org/hospitals/bangalore/mazumdar-shaw-medical-center-bommasandra', 'https://openalex.org/I4210102983', 0, '2025-11-30 04:34:56', '2025-11-30 04:34:56'),
(1705, 'Vidya Prathishthan', 'Pune', 'IN', 'http://vidyapratishthan.com/vpc/', 'https://openalex.org/I4210108681', 0, '2025-11-30 04:34:56', '2025-11-30 04:34:56'),
(1706, 'Jagran Lakecity University', 'Bhopal', 'IN', 'https://www.jlu.edu.in/', 'https://openalex.org/I3130958653', 0, '2025-11-30 04:34:56', '2025-11-30 04:34:56'),
(1707, 'Shri Vishwakarma Skill University', 'Palwal', 'IN', 'https://www.svsu.ac.in/', 'https://openalex.org/I4210137508', 0, '2025-11-30 04:34:56', '2025-11-30 04:34:56'),
(1708, 'Institute of Chartered Accountants of India', 'New Delhi', 'IN', 'http://www.icai.org/', 'https://openalex.org/I4210160863', 0, '2025-11-30 04:34:56', '2025-11-30 04:34:56'),
(1709, 'Defence Scientific Information & Documentation Centre', 'Delhi', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/defence-scientific-information-documentation-centre-desidoc', 'https://openalex.org/I4210124208', 0, '2025-11-30 04:34:56', '2025-11-30 04:34:56'),
(1710, 'National Institute of Science Communication and Information Resources', 'New Delhi', 'IN', 'http://www.niscair.res.in/', 'https://openalex.org/I28700744', 0, '2025-11-30 04:34:56', '2025-11-30 04:34:56'),
(1711, 'Project Directorate on Foot and Mouth Disease', 'Nainital', 'IN', 'http://www.pdfmd.ernet.in/', 'https://openalex.org/I4210119663', 0, '2025-11-30 04:34:56', '2025-11-30 04:34:56'),
(1712, 'Bangalore Baptist Hospital', 'Bengaluru', 'IN', 'http://www.bangalorebaptisthospital.com/', 'https://openalex.org/I4210101251', 0, '2025-11-30 04:34:56', '2025-11-30 04:34:56'),
(1713, 'Indian Institute of Public Administration', 'New Delhi', 'IN', 'https://www.iipa.org.in/cms/public/', 'https://openalex.org/I55546527', 0, '2025-11-30 04:34:56', '2025-11-30 04:34:56'),
(1714, 'Acharya Shri Chander College of Medical Sciences and Hospital', 'Jammu', 'IN', 'http://ascomscollege.com/', 'https://openalex.org/I4210161218', 0, '2025-11-30 04:34:56', '2025-11-30 04:34:56'),
(1715, 'Lifeline Hospital', 'Adūr', 'IN', 'https://www.lifelinehospitalkerala.com/', 'https://openalex.org/I4210160031', 0, '2025-11-30 04:34:56', '2025-11-30 04:35:04'),
(1716, 'Uttarakhand Seva Nidhi Paryavaran Shiksha Sansthan', 'Almora', 'IN', 'http://www.sevanidhi.org/', 'https://openalex.org/I4210137318', 0, '2025-11-30 04:34:56', '2025-11-30 04:34:56'),
(1717, 'Indian Law Institute', 'New Delhi', 'IN', 'http://www.ili.ac.in/', 'https://openalex.org/I2799736751', 0, '2025-11-30 04:34:56', '2025-11-30 04:34:56'),
(1718, 'Society for Nutrition Education and Health Action', 'Mumbai', 'IN', 'http://www.snehamumbai.org/', 'https://openalex.org/I4210101725', 0, '2025-11-30 04:34:56', '2025-11-30 04:34:56'),
(1719, 'Eastern Command Hospital', 'Kolkata', 'IN', 'http://www.kvcommandhospital.org/', 'https://openalex.org/I4210113612', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1720, 'Institution of Engineers', 'Kolkata', 'IN', 'https://www.ieindia.org/', 'https://openalex.org/I2802895650', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1721, 'Microwave Tube Research & Development Centre', 'Bengaluru', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/microwave-tube-research-development-centre-mtrdc', 'https://openalex.org/I4210119409', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1722, 'National Institute of Research on Jute and Allied Fibre Technology', 'Kolkata', 'IN', 'http://www.nirjaft.res.in/', 'https://openalex.org/I4210122202', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1723, 'Government of Sikkim', 'Gangtok', 'IN', 'https://www.sikkim.gov.in/portal', 'https://openalex.org/I2801028658', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1724, 'Brihanmumbai Municipal Corporation', 'Mumbai', 'IN', 'http://www.mcgm.gov.in/', 'https://openalex.org/I2799318567', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1725, 'Bristol-Myers Squibb (India)', 'Mumbai', 'IN', 'http://www.bmsi.co.in/default.aspx', 'https://openalex.org/I4210139887', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1726, 'Centre for Military Airworthiness and Certification', 'Bengaluru', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/centre-military-airworthiness-certification-cemilac', 'https://openalex.org/I4210125149', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1727, 'Bethesda Hospital', 'Ambur', 'IN', 'http://www.bethesdahospitalambur.org/', 'https://openalex.org/I2801285029', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1728, 'Baddi University of Emerging Sciences and Technologies', 'Baddi', 'IN', 'http://www.baddiuniv.ac.in', 'https://openalex.org/I3131609308', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1729, 'Techno India Group (India)', 'Kolkata', 'IN', 'http://www.technoindiagroup.com/', 'https://openalex.org/I4210132326', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1730, 'Sant Parmanand Hospital', 'Delhi', 'IN', 'http://www.sphdelhi.org/', 'https://openalex.org/I4210134623', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1731, 'Program for Appropriate Technology in Health', 'New Delhi', 'IN', 'https://www.path.org/', 'https://openalex.org/I4210099049', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1732, 'ICAR - National Meat Research Institute', 'Hyderabad', 'IN', 'https://nrcmeat.icar.gov.in/', 'https://openalex.org/I4210131297', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1733, 'National Centre for Sustainable Coastal Management', 'Chennai', 'IN', 'http://www.ncscm.res.in/', 'https://openalex.org/I4210152768', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1734, 'National University of Advanced Legal Studies', 'Kochi', 'IN', 'http://www.nuals.ac.in/', 'https://openalex.org/I3129318662', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1735, 'Voluntary Health Association of Goa', 'Panjim', 'IN', 'http://vhag.org/', 'https://openalex.org/I4210124092', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1736, 'Centre for Economic and Social Studies', 'Hyderabad', 'IN', 'http://www.cess.ac.in/cesshome/cessmain.asp', 'https://openalex.org/I75274968', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1737, 'Usha Martin (India)', 'Kolkata', 'IN', 'http://www.ushamartin.com/en/', 'https://openalex.org/I4210150419', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1738, 'Indian Institute of Social Welfare and Business Management', 'Kolkata', 'IN', 'http://www.iiswbm.edu/', 'https://openalex.org/I166580119', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1739, 'SCMS Group of Educational Institutions', 'Ernakulam', 'IN', 'https://scmsgroup.org', 'https://openalex.org/I4210116159', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1740, 'Centre for Fire, Explosive and Environment Safety', 'Delhi', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/centre-fire-explosive-and-environment-safety-cfees', 'https://openalex.org/I4210153539', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1741, 'Combat Vehicles Research and Development Establishment', 'Chennai', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/combat-vehicles-research-development-estt-cvrde', 'https://openalex.org/I4210162812', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1742, 'Krishi Vigyan Kendra, Latur', 'Latur', 'IN', 'http://www.kvklatur.in/', 'https://openalex.org/I4210106304', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1743, 'Doaba College', 'Jalandhar', 'IN', 'https://doabacollege.net/', 'https://openalex.org/I270449672', 0, '2025-11-30 04:34:57', '2025-11-30 04:34:57'),
(1744, 'Sooriya Hospital', 'Chennai', 'IN', 'http://www.sooriyahospital.com/', 'https://openalex.org/I4210106285', 0, '2025-11-30 04:34:58', '2025-11-30 04:34:58'),
(1745, 'Snow & Avalanche Study Estt', 'Chandigarh', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/snow-avalanche-study-estt-sase', 'https://openalex.org/I173811610', 0, '2025-11-30 04:34:58', '2025-11-30 04:34:58'),
(1746, 'Tripura Medical College & Dr. B.R. Ambedkar Memorial Teaching Hospital', 'Agartala', 'IN', 'http://tmc.nic.in/', 'https://openalex.org/I3132316807', 0, '2025-11-30 04:34:58', '2025-11-30 04:34:58'),
(1747, 'Central Tobacco Research Institute', 'Rajahmundry', 'IN', 'http://www.ctri.org.in/', 'https://openalex.org/I4210138307', 0, '2025-11-30 04:34:58', '2025-11-30 04:34:58'),
(1748, 'INCLEN Trust International', 'New Delhi', 'IN', 'http://inclentrust.org/inclen/', 'https://openalex.org/I4210164175', 0, '2025-11-30 04:34:58', '2025-11-30 04:34:58'),
(1749, 'Coastal Impact', 'Old Goa', 'IN', 'https://coastalimpact.in/', 'https://openalex.org/I4210161503', 0, '2025-11-30 04:34:58', '2025-11-30 04:34:58'),
(1750, 'CR Rao Advanced Institute of Mathematics, Statistics and Computer Science', 'Hyderabad', 'IN', 'http://www.crraoaimscs.org/', 'https://openalex.org/I4210109466', 0, '2025-11-30 04:34:58', '2025-11-30 04:34:58'),
(1751, 'Gujarat Matikam Kalakari & Rural Technology Institute', 'Gandhinagar', 'IN', 'http://www.rtigujarat.org/', 'https://openalex.org/I4210113358', 0, '2025-11-30 04:34:58', '2025-11-30 04:34:58'),
(1752, 'Centre for Women\'s Development Studies', 'New Delhi', 'IN', 'http://www.cwds.ac.in', 'https://openalex.org/I4210149184', 0, '2025-11-30 04:34:58', '2025-11-30 04:34:58'),
(1753, 'Netaji Subhas Open University', 'Kolkata', 'IN', 'http://www.wbnsou.ac.in', 'https://openalex.org/I20238315', 0, '2025-11-30 04:34:58', '2025-11-30 04:34:58'),
(1754, 'Bhagwan Mahaveer Cancer Hospital and Research Centre', 'Jaipur', 'IN', 'https://www.bmchrc.org/', 'https://openalex.org/I4210113013', 0, '2025-11-30 04:34:58', '2025-11-30 04:34:58'),
(1755, 'Directorate of Onion and Garlic Research', 'Khed', 'IN', 'http://www.dogr.res.in/', 'https://openalex.org/I4210117699', 0, '2025-11-30 04:34:58', '2025-11-30 04:34:58'),
(1756, 'Institute of Environmental Studies & Wetland Management', 'Kolkata', 'IN', 'http://www.ieswm.org/', 'https://openalex.org/I4210132965', 0, '2025-11-30 04:34:58', '2025-11-30 04:34:58'),
(1757, 'Little Flower Hospital & Research Centre', 'Kochi', 'IN', 'http://www.lfhospital.org/', 'https://openalex.org/I4210126009', 0, '2025-11-30 04:34:58', '2025-11-30 04:34:58'),
(1758, 'National Heart Institute', 'New Delhi', 'IN', 'https://www.nationalheartinstitute.com/', 'https://openalex.org/I4210097122', 0, '2025-11-30 04:34:58', '2025-11-30 04:34:58'),
(1759, 'JSW Group (India)', 'Mumbai', 'IN', 'http://www.jsw.in/', 'https://openalex.org/I160856166', 0, '2025-11-30 04:34:58', '2025-11-30 04:34:58'),
(1760, 'Caritas Hospital', 'Kottayam', 'IN', 'http://www.caritashospital.org/', 'https://openalex.org/I2802841181', 0, '2025-11-30 04:34:58', '2025-11-30 04:34:58'),
(1761, 'Jaipur Golden Hospital', 'New Delhi', 'IN', 'http://www.jghdelhi.net/', 'https://openalex.org/I4210120374', 0, '2025-11-30 04:34:58', '2025-11-30 04:34:58'),
(1762, 'National Diabetes Obesity and Cholesterol Foundation', 'New Delhi', 'IN', 'http://n-doc.org/', 'https://openalex.org/I4210130025', 0, '2025-11-30 04:34:58', '2025-11-30 04:34:58'),
(1763, 'Themis (India)', 'Mumbai', 'IN', 'http://www.themismedicare.com/', 'https://openalex.org/I4210164012', 0, '2025-11-30 04:34:58', '2025-11-30 04:34:58'),
(1764, 'Bhartiya Skill Development University', 'Jaipur', 'IN', 'https://ruj-bsdu.in/', 'https://openalex.org/I3133421068', 0, '2025-11-30 04:34:58', '2025-11-30 04:34:58'),
(1765, 'Arignar Anna Memorial Cancer Hospital & Research Institute', 'Kanchipuram', 'IN', 'http://www.aamci.ac.in/', 'https://openalex.org/I4210151748', 0, '2025-11-30 04:34:58', '2025-11-30 04:34:58'),
(1766, 'National Institute for Implementation Research on Non-Communicable Diseases', 'Jodhpur', 'IN', 'http://dmrcjodhpur.nic.in/', 'https://openalex.org/I4210158034', 0, '2025-11-30 04:34:58', '2025-11-30 04:34:58'),
(1767, 'TVS Motor Company (India)', 'Chennai', 'IN', 'http://www.tvsmotor.com/', 'https://openalex.org/I1589757', 0, '2025-11-30 04:34:58', '2025-11-30 04:34:58'),
(1768, 'State Forest Research Institute', 'Itanagar', 'IN', 'http://www.sfri.nic.in/', 'https://openalex.org/I4210112836', 0, '2025-11-30 04:35:02', '2025-11-30 04:35:02'),
(1769, 'Ali Yavar Jung National Institute for the Hearing Handicapped', 'Mumbai', 'IN', 'http://ayjnihh.nic.in/index.asp', 'https://openalex.org/I4210124687', 0, '2025-11-30 04:35:02', '2025-11-30 04:35:02'),
(1770, 'Sambalpur University Institute of Information Technology', 'Sambalpur', 'IN', 'https://suiit.ac.in/', 'https://openalex.org/I4210146312', 0, '2025-11-30 04:35:02', '2025-11-30 04:35:02'),
(1771, 'Sarguja University', 'Ambikāpur', 'IN', 'http://www.sargujauniversity.in/', 'https://openalex.org/I3132343680', 0, '2025-11-30 04:35:02', '2025-11-30 04:35:02'),
(1772, 'Arni University', 'Dharamsala', 'IN', 'http://arni.in/', 'https://openalex.org/I344636078', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1773, 'National Research Centre on Camel', 'Bikaner', 'IN', 'http://www.nrccamel.res.in/', 'https://openalex.org/I4210126554', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1774, 'Punjab Remote Sensing Centre', 'Ludhiana', 'IN', 'https://prsc.gov.in/', 'https://openalex.org/I4210131364', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1775, 'Software Training and Development Centre', 'Thiruvananthapuram', 'IN', 'https://krc-t.in/', 'https://openalex.org/I4210094911', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1776, 'Netaji Subhas Chandra Bose Cancer Research Institute', 'Kolkata', 'IN', 'http://www.nscri.in/', 'https://openalex.org/I4210104904', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1777, 'Birla Institute of Scientific Research', 'Jaipur', 'IN', 'http://www.bisr.res.in/', 'https://openalex.org/I4210113324', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1778, 'National Institute of Design', 'Ahmedabad', 'IN', 'https://nid.edu/home', 'https://openalex.org/I5816614', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1779, 'Kolhan University', 'Chāībāsa', 'IN', 'http://www.kolhanuniversity.ac.in/', 'https://openalex.org/I3130993272', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1780, 'National Research Centre on Seed Spices', 'Ajmer', 'IN', 'http://www.nrcss.org.in/', 'https://openalex.org/I4210113425', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1781, 'Ispat General Hospital', 'Raurkela', 'IN', 'http://igh.sailrsp.co.in/', 'https://openalex.org/I4210106902', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1782, 'Bhagwan Mahaveer Jain Hospital', 'Bengaluru', 'IN', 'https://www.bmjh.org/home.html', 'https://openalex.org/I4210146892', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1783, 'K. J. Somaiya Hospital & Research Centre', 'Mumbai', 'IN', 'http://www.somaiya-ayurvihar.org/en', 'https://openalex.org/I4210154490', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1784, 'Pushpawati Singhania Research Institute', 'New Delhi', 'IN', 'http://www.psrihospital.com/', 'https://openalex.org/I4210102352', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1785, 'Maaruti College of Dental sciences & Research Center', 'Bengaluru', 'IN', 'http://www.aecsgroup.in/institution/AECSMCDSRC/overview/', 'https://openalex.org/I4210130611', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1786, 'Institute of Nephro Urology', 'Bengaluru', 'IN', 'http://www.nephrourology.in/', 'https://openalex.org/I4210136165', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1787, 'ICFAI University, Dehradun', 'Dehra Dūn', 'IN', 'https://www.iudehradun.edu.in/', 'https://openalex.org/I55124834', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1788, 'Rama Hospital & Research Centre', 'Kanpur', 'IN', 'http://www.ramahospital.com/', 'https://openalex.org/I4210116656', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1789, 'Excel Life Sciences (India)', 'Noida', 'IN', 'http://www.excellifesciences.com', 'https://openalex.org/I4210107402', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1790, 'Jaswant Rai Speciality Hospital', 'Meerut', 'IN', 'http://www.jaswantraihospital.com', 'https://openalex.org/I4210114808', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1791, 'Observer Research Foundation', 'New Delhi', 'IN', 'http://www.orfonline.org/', 'https://openalex.org/I2802103719', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1792, 'Indian Maritime University', 'Chennai', 'IN', 'https://www.imu.edu.in/', 'https://openalex.org/I47885761', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1793, 'Karnataka State Open University', 'Mysore', 'IN', 'http://ksoumysore.karnataka.gov.in', 'https://openalex.org/I342246540', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1794, 'Gujarat Kidney Foundation', 'Ahmedabad', 'IN', 'http://www.gujaratkidneyfoundation.com/', 'https://openalex.org/I4210116344', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1795, 'MaxCure Hospitals', 'Hyderabad', 'IN', 'http://www.maxcurehospitals.com/', 'https://openalex.org/I4210145498', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1796, 'Janardan Rai Nagar Rajasthan Vidyapeeth University', 'Udaipur', 'IN', 'http://www.jrnrvu.edu.in/index.php', 'https://openalex.org/I4210089973', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1797, 'Dr. Syamala Reddy Dental College Hospital & Research Center', 'Bengaluru', 'IN', 'http://sgrinstitutions.edu.in/dental/index.htm', 'https://openalex.org/I4210121354', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1798, 'Kalpavriksh', 'Pune', 'IN', 'http://kalpavriksh.org/', 'https://openalex.org/I4210148176', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1799, 'Sundaram Medical Foundation', 'Chennai', 'IN', 'http://www.smfhospital.org/', 'https://openalex.org/I107554421', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1800, 'Defence Bioengineering and Electromedical Laboratory', 'Bengaluru', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/defence-bio-engineering-electro-medical-laboratory-debel', 'https://openalex.org/I4210093312', 0, '2025-11-30 04:35:03', '2025-11-30 04:35:03'),
(1801, 'Healis Sekhsaria Institute For Public Health', 'Navi Mumbai', 'IN', 'http://www.healis.org/', 'https://openalex.org/I4210117867', 0, '2025-11-30 04:35:04', '2025-11-30 04:35:04'),
(1802, 'AstraZeneca (India)', 'Bengaluru', 'IN', 'https://www.astrazeneca.com/country-sites/india.html', 'https://openalex.org/I4210127920', 0, '2025-11-30 04:35:04', '2025-11-30 04:35:04'),
(1803, 'Noble Hospital', 'Pune', 'IN', 'https://www.noblehospitalspune.com/', 'https://openalex.org/I4210156439', 0, '2025-11-30 04:35:04', '2025-11-30 04:35:04'),
(1804, 'Indian Institute of Information Technology Una', 'Una', 'IN', 'http://www.iiitu.ac.in', 'https://openalex.org/I4210127244', 0, '2025-11-30 04:35:04', '2025-11-30 04:35:04'),
(1805, 'Joseph Eye Hospital', 'Tiruchchirappalli', 'IN', 'http://www.josepheye.in/', 'https://openalex.org/I4210113901', 0, '2025-11-30 04:35:04', '2025-11-30 04:35:04'),
(1806, 'TCG Lifesciences (India)', 'Kolkata', 'IN', 'http://www.tcgls.com/', 'https://openalex.org/I4210118991', 0, '2025-11-30 04:35:04', '2025-11-30 04:35:04'),
(1807, 'Holy Spirit Hospital', 'Mumbai', 'IN', 'http://www.holyspirithospital.org/', 'https://openalex.org/I1280398983', 0, '2025-11-30 04:35:04', '2025-11-30 04:35:04'),
(1808, 'National Academy of Agricultural Sciences', 'New Delhi', 'IN', 'http://naasindia.org/', 'https://openalex.org/I1340740451', 0, '2025-11-30 04:35:04', '2025-11-30 04:35:04'),
(1809, 'Shanmuganathan Engineering College', 'Karaikudi', 'IN', 'http://shanmuganathanengg.in/', 'https://openalex.org/I4210146606', 0, '2025-11-30 04:35:04', '2025-11-30 04:35:04'),
(1810, 'Bhupendra Narayan Mandal University', 'Madhepura', 'IN', 'http://bnmu.ac.in/', 'https://openalex.org/I3132435657', 0, '2025-11-30 04:35:04', '2025-11-30 04:35:04'),
(1811, 'MVN University', 'Faridabad', 'IN', 'http://mvn.edu.in/', 'https://openalex.org/I3132695963', 0, '2025-11-30 04:35:04', '2025-11-30 04:35:04'),
(1812, 'Balaji Dental & Craniofacial Hospital', 'Chennai', 'IN', 'https://www.smbalaji.com/', 'https://openalex.org/I4210092268', 0, '2025-11-30 04:35:04', '2025-11-30 04:35:04'),
(1813, 'Indian National Science Academy', 'New Delhi', 'IN', 'http://www.insaindia.org/', 'https://openalex.org/I124015162', 0, '2025-11-30 04:35:04', '2025-11-30 04:35:04'),
(1814, 'Defence Electronics Research Laboratory', 'Hyderabad', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/defence-electronics-research-laboratory-dlrl', 'https://openalex.org/I4210097327', 0, '2025-11-30 04:35:04', '2025-11-30 04:35:04'),
(1815, 'Central Institute for Research on Cattle', 'Meerut', 'IN', 'http://www.circ.org.in/', 'https://openalex.org/I4210109069', 0, '2025-11-30 04:35:04', '2025-11-30 04:35:04'),
(1816, 'Sri Konda Laxman Telangana State Horticultural University', 'Hyderabad', 'IN', 'http://skltshu.ac.in/', 'https://openalex.org/I3132430671', 0, '2025-11-30 04:35:04', '2025-11-30 04:35:04'),
(1817, 'Central Muga Eri Research and Training Institute', 'Dispur', 'IN', 'https://www.cmerti.res.in/', 'https://openalex.org/I4210161565', 0, '2025-11-30 04:35:04', '2025-11-30 04:35:04'),
(1818, 'National Institution for Transforming India Aayog', 'New Delhi', 'IN', 'http://niti.gov.in/content/', 'https://openalex.org/I4210137148', 0, '2025-11-30 04:35:04', '2025-11-30 04:35:04'),
(1819, 'Satguru Partap Singh Hospital', 'Ludhiana', 'IN', 'http://spshospitals.com/', 'https://openalex.org/I4210165137', 0, '2025-11-30 04:35:04', '2025-11-30 04:35:04'),
(1820, 'Rayat Institute of Engineering & Information Technology', 'Ropar', 'IN', 'http://rieit.rayatbahra.com/', 'https://openalex.org/I573716131', 0, '2025-11-30 04:35:05', '2025-11-30 04:35:05'),
(1821, 'Eternal Hospital', 'Jaipur', 'IN', 'https://www.eternalhospital.com/', 'https://openalex.org/I4210116742', 0, '2025-11-30 04:35:05', '2025-11-30 04:35:05'),
(1822, 'Asha Foundation', 'Bengaluru', 'IN', 'http://www.ashaf.org/', 'https://openalex.org/I4210156924', 0, '2025-11-30 04:35:05', '2025-11-30 04:35:05'),
(1823, 'IEC University', 'Baddi', 'IN', 'https://www.iecuniversity.com/', 'https://openalex.org/I4210127512', 0, '2025-11-30 04:35:05', '2025-11-30 04:35:05'),
(1824, 'Jaypee Hospital', 'Noida', 'IN', 'http://www.jaypeehealthcare.com/', 'https://openalex.org/I4210159756', 0, '2025-11-30 04:35:05', '2025-11-30 04:35:05'),
(1825, 'Open Source Drug Discovery', 'New Delhi', 'IN', 'http://www.osdd.net/', 'https://openalex.org/I2799982174', 0, '2025-11-30 04:35:05', '2025-11-30 04:35:05'),
(1826, 'D Y Patil International University', 'Pune', 'IN', 'https://www.dypiu.ac.in/', 'https://openalex.org/I4210096567', 0, '2025-11-30 04:35:05', '2025-11-30 04:35:05'),
(1827, 'Jammu Hospital', 'Jalandhar', 'IN', 'http://www.jammuhospital.com/', 'https://openalex.org/I4210118073', 0, '2025-11-30 04:35:05', '2025-11-30 04:35:05'),
(1828, 'Centre for Aromatic Plants', 'Dehra Dūn', 'IN', 'http://capuk.in/', 'https://openalex.org/I4210148696', 0, '2025-11-30 04:35:05', '2025-11-30 04:35:05'),
(1829, 'SRCC Children’s Hospital', 'Mumbai', 'IN', 'https://www.srcc.org.in/', 'https://openalex.org/I4210157253', 0, '2025-11-30 04:35:05', '2025-11-30 04:35:05'),
(1830, 'Axis Multispecialty Hospital', 'Mumbai', 'IN', 'http://www.axishospital.co/', 'https://openalex.org/I4210095285', 0, '2025-11-30 04:35:05', '2025-11-30 04:35:05'),
(1831, 'Hidayatullah National Law University', 'Raipur', 'IN', 'https://www.hnlu.ac.in/', 'https://openalex.org/I161765314', 0, '2025-11-30 04:35:05', '2025-11-30 04:35:05'),
(1832, 'National Research Centre on Litchi', 'Patna', 'IN', 'http://www.nrclitchi.org/', 'https://openalex.org/I4210094532', 0, '2025-11-30 04:35:05', '2025-11-30 04:35:05'),
(1833, 'Frontier Lifeline Hospital', 'Chennai', 'IN', 'http://www.frontierlifeline.com/', 'https://openalex.org/I4210104337', 0, '2025-11-30 04:35:05', '2025-11-30 04:35:05'),
(1834, 'Uttarakhand State Council for Science and Technology', 'Dehra Dūn', 'IN', 'http://www.ucost.in/', 'https://openalex.org/I4210140820', 0, '2025-11-30 04:35:05', '2025-11-30 04:35:05'),
(1835, 'Uttarakhand Open University', 'Haldwani', 'IN', 'http://www.uou.ac.in/', 'https://openalex.org/I185596852', 0, '2025-11-30 04:35:05', '2025-11-30 04:35:05'),
(1836, 'Directorate of Cashew Research', 'Udupi', 'IN', 'https://cashew.icar.gov.in/', 'https://openalex.org/I4210111898', 0, '2025-11-30 04:35:05', '2025-11-30 04:35:05'),
(1837, 'Defence Institute of Bio-Energy Research', 'Haldwani', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/defence-institute-bio-energy-research-diber', 'https://openalex.org/I4210120816', 0, '2025-11-30 04:35:05', '2025-11-30 04:35:05'),
(1838, 'Raghudeep Eye Hospital', 'Ahmedabad', 'IN', 'http://www.raghudeepeyehospital.com/', 'https://openalex.org/I4210110826', 0, '2025-11-30 04:35:05', '2025-11-30 04:35:05'),
(1839, 'Shri Bhausaheb Hire Government Medical College & Hospital', 'Dhule', 'IN', 'http://www.sbhgmc.org/', 'https://openalex.org/I4210155899', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1840, 'National Dairy Development Board', 'Anand', 'IN', 'http://www.nddb.org/', 'https://openalex.org/I57904185', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1841, 'National Research Centre on Mithun', 'Kohima', 'IN', 'http://www.nrcmithun.res.in/', 'https://openalex.org/I4210135502', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1842, 'Tata Institute for Genetics and Society', 'Bengaluru', 'IN', 'https://tigs.res.in/', 'https://openalex.org/I4210156799', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1843, 'Government College for Women Anantnag', 'Anantnag', 'IN', 'http://womencollegeanantnag.nic.in/', 'https://openalex.org/I2801651121', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1844, 'Campbell Collaboration', 'New Delhi', 'IN', 'https://campbellcollaboration.org/', 'https://openalex.org/I4210128352', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1845, 'Chaithanya Eye Hospital and Research Institute', 'Thiruvananthapuram', 'IN', 'http://www.chaithanya.org/', 'https://openalex.org/I4210128572', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1846, 'PAREXEL International (India)', 'Bengaluru', 'IN', 'https://www.parexel.com/', 'https://openalex.org/I4210107824', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1847, 'Asian Institute of Medical Sciences', 'Dombivali', 'IN', 'http://www.aimshospital.co.in/', 'https://openalex.org/I4210128359', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:47'),
(1848, 'Chaudhary Ranbir Singh University', 'Hisar', 'IN', 'http://www.crsu.ac.in', 'https://openalex.org/I3129388638', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1849, 'MNJ Institute Of Oncology and Regional Cancer Centre', 'Hyderabad', 'IN', 'http://www.mnjiorcc.in/', 'https://openalex.org/I4210089709', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1850, 'Hewlett-Packard (India)', 'Bengaluru', 'IN', 'http://www8.hp.com/in/en/home.html', 'https://openalex.org/I4210117576', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1851, 'Intas Pharmaceuticals (India)', 'Ahmedabad', 'IN', 'http://www.intaspharma.com/', 'https://openalex.org/I910881529', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1852, 'Mahatma Gandhi Institute for Rural Industrialization', 'Wardha', 'IN', 'http://www.mgiri.org/', 'https://openalex.org/I2800948379', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1853, 'Asia Pacific Institute of Management', 'New Delhi', 'IN', 'http://www.asiapacific.edu/', 'https://openalex.org/I6805998', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1854, 'Forest Survey of India', 'Dehra Dūn', 'IN', 'http://www.fsi.nic.in/', 'https://openalex.org/I15426020', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1855, 'Himgiri Zee University', 'Dehra Dūn', 'IN', 'http://www.himgirizeeuniversity.edu.in/', 'https://openalex.org/I2800232979', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1856, 'National Centre for Compositional Characterisation of Materials', 'Hyderabad', 'IN', 'http://www.cccm.gov.in/', 'https://openalex.org/I4210100447', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1857, 'Kamla Nehru Memorial Hospital', 'Allahabad', 'IN', 'http://knmhospital.org/', 'https://openalex.org/I2799611821', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1858, 'Punjab Government Dental College and Hospital', 'Amritsar', 'IN', 'http://www.gdcamritsar.com/', 'https://openalex.org/I4210120010', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1859, 'UPASI Tea Research Foundation', 'Coimbatore', 'IN', 'http://www.upasitearesearch.org/', 'https://openalex.org/I4210160079', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1860, 'Schieffelin Institute of Health Research and Leprosy Centre', 'Vellore', 'IN', 'http://leprosyhealth.org/', 'https://openalex.org/I4210123044', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1861, 'Institute of Animal Health and Veterinary Biologicals', 'Bengaluru', 'IN', 'http://iahvb.com', 'https://openalex.org/I4210155344', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1862, 'Satavahana University', 'Karīmnagar', 'IN', 'http://www.satavahana.ac.in', 'https://openalex.org/I3133249180', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1863, 'Chaitanya Hospital And Nursing Home', 'Pune', 'IN', 'http://www.chaitanyahospital.co.in/', 'https://openalex.org/I4210102821', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1864, 'St.Martha\'s College Of Nursing', 'Bengaluru', 'IN', 'http://www.stmarthasnursingcollege.com/', 'https://openalex.org/I4210132334', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1865, 'Asha Hospital', 'Hyderabad', 'IN', 'http://ashahospital.org/', 'https://openalex.org/I4210147497', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1866, 'Xavier Institute of Communications', 'Mumbai', 'IN', 'https://www.xaviercomm.org', 'https://openalex.org/I4210149145', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1867, 'GD Hospital & Diabetes Institute', 'Kolkata', 'IN', 'http://gddihealthcare.com/', 'https://openalex.org/I4210094756', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1868, 'Water Sanitation and Hygiene Institute', 'Kodaikānāl', 'IN', 'http://www.washinstitute.org/', 'https://openalex.org/I4210145333', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1869, 'Tanvir Hospital', 'Hyderabad', 'IN', 'http://tanvirhospital.com/', 'https://openalex.org/I4210116881', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1870, 'Chilika Development Authority', 'Bhubaneswar', 'IN', 'https://www.chilika.com', 'https://openalex.org/I4210130859', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1871, 'Gondwana University', 'Gadchiroli', 'IN', 'http://gondwanauniversity.org/Home.html', 'https://openalex.org/I3133345995', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1872, 'India Health Action Trust', 'Bengaluru', 'IN', 'https://www.ihat.in/', 'https://openalex.org/I4210136932', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1873, 'Hester', 'Ahmedabad', 'IN', 'https://www.hester.in/', 'https://openalex.org/I4210144873', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1874, 'Indian Education Society\'s V. N. Sule Guruji English Medium School', 'Mumbai', 'IN', 'http://www.iesvns.com/', 'https://openalex.org/I4210099072', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1875, 'Asian Institute of Public Health', 'Bhubaneswar', 'IN', 'http://www.aiph.ac.in/', 'https://openalex.org/I4210115110', 0, '2025-11-30 04:35:06', '2025-11-30 04:35:06'),
(1876, 'Vijaya Medical and Educational Trust', 'Chennai', 'IN', 'http://www.vijayahospital.org/', 'https://openalex.org/I4210104745', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1877, 'Sardar Swaran Singh National Institute of Bio-Energy', 'Kapurthala Town', 'IN', 'http://nibe.res.in/', 'https://openalex.org/I4210158177', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1878, 'Lata Medical Research Foundation', 'Nagpur', 'IN', 'http://latamedicalresearchfoundation.org/', 'https://openalex.org/I4210090168', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1879, 'Srishti Institute of Art Design and Technology', 'Yelahanka', 'IN', 'http://srishti.ac.in/', 'https://openalex.org/I4210124303', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1880, 'Nehru Gram Bharti University', 'Allahabad', 'IN', 'http://www.ngbu.edu.in/newsite/index.php', 'https://openalex.org/I4210150711', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1881, 'National Council for Cement and Building Materials', 'Ballabgarh', 'IN', 'http://www.ncbindia.com/', 'https://openalex.org/I4210099776', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1882, 'B M Birla Science Centre', 'Hyderabad', 'IN', 'http://www.birlasciencecentre.org/', 'https://openalex.org/I4210105276', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1883, 'TCG Crest', 'Kolkata', 'IN', 'https://www.tcgcrest.org/', 'https://openalex.org/I4210159890', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1884, 'Indian Institute of Oil Palm Research', 'Eluru', 'IN', 'http://dopr.gov.in/', 'https://openalex.org/I4210135205', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1885, 'Dr. Reddy\'s Foundation', 'Hyderabad', 'IN', 'https://drreddysfoundation.org/', 'https://openalex.org/I4210126655', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1886, 'Sify Technologies (India)', 'Chennai', 'IN', 'http://corporate.sify.com/', 'https://openalex.org/I4210146082', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1887, 'Welspun (India)', 'Mumbai', 'IN', 'http://www.welspun.com/', 'https://openalex.org/I2800176906', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1888, 'Wellcome Trust/DBT India Alliance', 'New Delhi', 'IN', 'https://www.indiaalliance.org/', 'https://openalex.org/I4210160166', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1889, 'Centre for Sexuality and Health Research and Policy', 'Chennai', 'IN', 'https://www.c-sharp.in/', 'https://openalex.org/I4210127262', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1890, 'Central Manufacturing Technology Institute', 'Bengaluru', 'IN', 'http://cmti-india.net/', 'https://openalex.org/I4210133459', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1891, 'Delhi State Cancer Institute', 'Delhi', 'IN', 'http://www.dsci.nic.in/', 'https://openalex.org/I4210147527', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1892, 'Pfizer (India)', 'Navi Mumbai', 'IN', 'http://www.pfizerindia.com/eNewsWebsite/index.aspx', 'https://openalex.org/I4210163853', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1893, 'Ministry of New and Renewable Energy', 'Delhi', 'IN', 'http://www.mnre.gov.in/', 'https://openalex.org/I4210159250', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1894, 'PBMA\'s H.V. Desai Eye Hospital', 'Pune', 'IN', 'http://hvdeh.org/', 'https://openalex.org/I4210096124', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1895, 'Fortis Flt. Lt. Rajan Dhall Hospital', 'New Delhi', 'IN', 'http://www.fortishealthcare.com/india/hospitals-in-delhi-ncr/fortis-flt-lt-rajan-dhall-hospital-vasant-kunj', 'https://openalex.org/I4210125089', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1896, 'Indian Institute of Advanced Study', 'Shimla', 'IN', 'http://iias.ac.in/', 'https://openalex.org/I2830045', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1897, 'Ananthapuri Hospitals and Research Institute', 'Thiruvananthapuram', 'IN', 'http://www.ananthapurihospitals.com/index.php', 'https://openalex.org/I4210125288', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1898, 'Indo Korea Science and Technology', 'Bengaluru', 'IN', 'https://www.ikst.res.in/', 'https://openalex.org/I4210152052', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1899, 'Nehru Memorial Museum & Library', 'New Delhi', 'IN', 'http://www.nehrumemorial.nic.in', 'https://openalex.org/I4210163448', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1900, 'West Bengal State Council of Technical Education', 'Kolkata', 'IN', 'http://webscte.org/', 'https://openalex.org/I3130133132', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1901, 'Mahindra and Mahindra Limited (India)', 'Mumbai', 'IN', 'http://www.mahindra.com/investors/mahindra-and-mahindra', 'https://openalex.org/I4210104682', 0, '2025-11-30 04:35:07', '2025-11-30 04:35:07'),
(1902, 'Dr. Mehta\'s Children\'s Hospital', 'Chennai', 'IN', 'http://www.mehtachildrenshospitals.com/', 'https://openalex.org/I4210137919', 0, '2025-11-30 04:35:08', '2025-11-30 04:35:08'),
(1903, 'Hindustan Petroleum Corporation Limited (India)', 'Mumbai', 'IN', 'https://www.hindustanpetroleum.com/', 'https://openalex.org/I4210091106', 0, '2025-11-30 04:35:08', '2025-11-30 04:35:08'),
(1904, 'Hyderabad Rheumatology Center', 'Hyderabad', 'IN', 'https://www.hyderabadrheumatologycenter.com/', 'https://openalex.org/I4210115048', 0, '2025-11-30 04:35:08', '2025-11-30 04:35:08'),
(1905, 'Maharaja Bir Bikram University', 'Agartala', 'IN', 'https://mbbuniversity.ac.in/', 'https://openalex.org/I4210156902', 0, '2025-11-30 04:35:08', '2025-11-30 04:35:08'),
(1906, 'Oracle (India)', 'Bengaluru', 'IN', 'http://www.oracle.com/', 'https://openalex.org/I4210165642', 0, '2025-11-30 04:35:08', '2025-11-30 04:35:08'),
(1907, 'Sir Sunderlal Hospital', 'Varanasi', 'IN', 'http://www.bhu.ac.in/ims/hospital/opdschm.htm', 'https://openalex.org/I2800141555', 0, '2025-11-30 04:35:08', '2025-11-30 04:35:08'),
(1908, 'Sawai Man Singh Hospital', 'Jaipur', 'IN', 'http://medicaleducation.rajasthan.gov.in/jaipur/index.asp', 'https://openalex.org/I2802525668', 0, '2025-11-30 04:35:08', '2025-11-30 04:35:08'),
(1909, 'Centre for Interdisciplinary Research and Education', 'Kolkata', 'IN', 'http://cire.co.in/', 'https://openalex.org/I4210089539', 0, '2025-11-30 04:35:08', '2025-11-30 04:35:08'),
(1910, 'National Neurosciences Centre', 'Kolkata', 'IN', 'http://www.nnccalcutta.com/', 'https://openalex.org/I4210094203', 0, '2025-11-30 04:35:08', '2025-11-30 04:35:08'),
(1911, 'National Institute of High Security Animal Diseases', 'Bhopal', 'IN', 'http://www.nihsad.nic.in/aboutnihsad.htm', 'https://openalex.org/I4210128070', 0, '2025-11-30 04:35:08', '2025-11-30 04:35:08'),
(1912, 'Shri Siddhivinayak Ganapati Cancer Hospital', 'Sangli', 'IN', 'http://cancermiraj.com/', 'https://openalex.org/I4210150465', 0, '2025-11-30 04:35:08', '2025-11-30 04:35:08'),
(1913, 'National University of Study and Research in Law', 'Ranchi', 'IN', 'http://www.nusrlranchi.ac.in/', 'https://openalex.org/I3129248420', 0, '2025-11-30 04:35:08', '2025-11-30 04:35:08'),
(1914, 'Medwin Hospital', 'Hyderabad', 'IN', 'http://www.medwinhospital.com/', 'https://openalex.org/I4210129951', 0, '2025-11-30 04:35:08', '2025-11-30 04:35:08'),
(1915, 'Indian Immunologicals (India)', 'Hyderabad', 'IN', 'http://www.indimmune.com/', 'https://openalex.org/I4210148208', 0, '2025-11-30 04:35:08', '2025-11-30 04:35:08'),
(1916, 'National Centre for Disease Informatics and Research', 'Bengaluru', 'IN', 'http://ncdirindia.org/', 'https://openalex.org/I4210151893', 0, '2025-11-30 04:35:08', '2025-11-30 04:35:08'),
(1917, 'Aurigene Discovery Technologies (India)', 'Bengaluru', 'IN', 'http://www.aurigene.com/', 'https://openalex.org/I4210152788', 0, '2025-11-30 04:35:08', '2025-11-30 04:35:08'),
(1918, 'Hislop College', 'Nagpur', 'IN', 'http://www.hislopcollege.ac.in/', 'https://openalex.org/I119204206', 0, '2025-11-30 04:35:08', '2025-11-30 04:35:08'),
(1919, 'Rotunda – The Center for Human Reproduction', 'Mumbai', 'IN', 'http://iwannagetpregnant.com/', 'https://openalex.org/I4210103821', 0, '2025-11-30 04:35:08', '2025-11-30 04:35:08'),
(1920, 'SMT (India)', 'Surat', 'IN', 'http://smtpl.com/', 'https://openalex.org/I4210109275', 0, '2025-11-30 04:35:08', '2025-11-30 04:35:08'),
(1921, 'Uttarakhand Government', 'Dehra Dūn', 'IN', 'http://uk.gov.in/', 'https://openalex.org/I4210124730', 0, '2025-11-30 04:35:09', '2025-11-30 04:35:09'),
(1922, 'Government Hospital of Thoracic Medicine', 'Chennai', 'IN', 'http://www.ghtm.in/', 'https://openalex.org/I2801866919', 0, '2025-11-30 04:35:09', '2025-11-30 04:35:09'),
(1923, 'Vikas Samvad', 'Bhopal', 'IN', 'http://vssmp.org/', 'https://openalex.org/I4210103340', 0, '2025-11-30 04:35:09', '2025-11-30 04:35:09'),
(1924, 'BAIF Development Research Foundation', 'Pune', 'IN', 'http://www.baif.org.in/', 'https://openalex.org/I2800340409', 0, '2025-11-30 04:35:09', '2025-11-30 04:35:09'),
(1925, 'Elite School of Optometry', 'Chennai', 'IN', 'https://www.eso.sankaranethralaya.org', 'https://openalex.org/I4210097797', 0, '2025-11-30 04:35:09', '2025-11-30 04:35:09'),
(1926, 'Fetal Care Research Foundation', 'Chennai', 'IN', 'http://fcrf.org.in', 'https://openalex.org/I4210138510', 0, '2025-11-30 04:35:09', '2025-11-30 04:35:09'),
(1927, 'Center for Study of Science Technology and Policy', 'Bengaluru', 'IN', 'http://www.cstep.in/', 'https://openalex.org/I2802876690', 0, '2025-11-30 04:35:09', '2025-11-30 04:35:09'),
(1928, 'Bharat Petroleum (India)', 'Mumbai', 'IN', 'http://www.bharatpetroleum.com/', 'https://openalex.org/I125565006', 0, '2025-11-30 04:35:09', '2025-11-30 04:35:09'),
(1929, 'Calorx Teachers\' University', 'Ahmedabad', 'IN', 'https://www.ctu.org.in/', 'https://openalex.org/I3129738059', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1930, 'Persistent Systems (India)', 'Pune', 'IN', 'http://www.persistent.com/', 'https://openalex.org/I2800727657', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1931, 'Bhaktivedanta Hospital & Research Institute', 'Mumbai', 'IN', 'http://www.bhaktivedantahospital.com', 'https://openalex.org/I4210102668', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1932, 'Prince Aly Khan Hospital', 'Mumbai', 'IN', 'http://www.agakhanhospitals.org/mumbai/', 'https://openalex.org/I2803014184', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1933, 'Mata Chanan Devi Hospital', 'New Delhi', 'IN', 'http://mcdh.in/index.aspx', 'https://openalex.org/I4210105062', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1934, 'CSI Holdsworth Memorial Hospital', 'Mysore', 'IN', 'https://www.cmf.org.uk/international/hsp/?o=945', 'https://openalex.org/I4210162192', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1935, 'Nazareth Hospital', 'Shillong', 'IN', 'http://www.nazarethshillong.in/', 'https://openalex.org/I4210157212', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1936, 'Sarojini Devi Eye Hospital', 'Hyderabad', 'IN', NULL, 'https://openalex.org/I2800620092', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1937, 'Neurogen Brain & Spine Institute', 'Navi Mumbai', 'IN', 'http://www.neurogenbsi.com/', 'https://openalex.org/I4210096296', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1938, 'Sami Labs (India)', 'Bengaluru', 'IN', 'http://www.samilabs.com/', 'https://openalex.org/I4210102658', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1939, 'Central Tasar Research & Training Institute', 'Ranchi', 'IN', 'http://www.ctrtiranchi.co.in/index.aspx', 'https://openalex.org/I4210162611', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1940, 'Kirloskar Group (India)', 'Pune', 'IN', 'http://www.kirloskar.com/', 'https://openalex.org/I4210157906', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1941, 'ICARE Eye Hospital & Postgraduate Institute', 'Noida', 'IN', 'http://www.icarehospital.org/', 'https://openalex.org/I4210127154', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1942, 'Novo Nordisk (India)', 'Bengaluru', 'IN', 'http://www.novonordisk.co.in/', 'https://openalex.org/I4210160744', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1943, 'Tata Chemicals (India)', 'Mumbai', 'IN', 'http://www.tatachemicals.com/', 'https://openalex.org/I2800685081', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1944, 'Auro University', 'Surat', 'IN', 'https://aurouniversity.edu.in/', 'https://openalex.org/I3131412830', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1945, 'Tata Elxsi (India)', 'Bengaluru', 'IN', 'http://www.tataelxsi.com/', 'https://openalex.org/I1318430499', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1946, 'Dabur Research Foundation (India)', 'Ghaziabad', 'IN', 'http://www.daburresearch.in/', 'https://openalex.org/I151154110', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1947, 'Mithila Minority Dental College And Hospital', 'Darbhanga', 'IN', 'http://www.mmdch.in/index.html', 'https://openalex.org/I2801980077', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1948, 'Cellworks Research (India)', 'Bengaluru', 'IN', 'http://cellworksgroup.com/', 'https://openalex.org/I4210097570', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1949, 'KMCT Group of Educational Institutions', 'Kozhikode', 'IN', 'http://www.kmct.edu.in/', 'https://openalex.org/I4210103484', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1950, 'Uttar Pradesh Council of sugarcane research', 'Shahjahanpur', 'IN', 'http://upcsr.org/Default.aspx#', 'https://openalex.org/I4210155610', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1951, 'Cloudnine', 'Gurgaon', 'IN', 'https://www.cloudninecare.com', 'https://openalex.org/I4210155872', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1952, 'Deccan School of Hospital Management', 'Hyderabad', 'IN', 'http://www.dshm.co.in/', 'https://openalex.org/I4210157863', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1953, 'Shilpa (India)', 'Rāichūr', 'IN', 'https://vbshilpa.com/', 'https://openalex.org/I4210087246', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10');
INSERT INTO `institutions` (`id`, `name`, `city`, `country`, `website`, `domain`, `is_verified`, `created_at`, `updated_at`) VALUES
(1954, 'Institute of Mental Health and Hospital', 'Agra', 'IN', 'http://www.imhh.org.in/', 'https://openalex.org/I4210158647', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1955, 'Men-Tsee-Khang', 'Dharamsala', 'IN', 'http://www.men-tsee-khang.org/index2.htm', 'https://openalex.org/I3131520793', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1956, 'Natural Remedies (India)', 'Bengaluru', 'IN', 'http://www.naturalremedy.com/', 'https://openalex.org/I4210102349', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1957, 'Shri Jagannath Sanskrit University', 'Puri', 'IN', 'http://www.sjsv.nic.in/', 'https://openalex.org/I4210089934', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1958, 'Virus Unit', 'Kolkata', 'IN', 'http://icmrvirusunit.org.in/', 'https://openalex.org/I4210093260', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1959, 'Avantha Centre for Industrial Research & Development', 'Yamunanagar', 'IN', 'http://avantharesearch.org/', 'https://openalex.org/I4210129589', 0, '2025-11-30 04:35:10', '2025-11-30 04:35:10'),
(1960, 'Institute of Forest Productivity', 'Ranchi', 'IN', 'http://ifp.icfre.gov.in/', 'https://openalex.org/I4210136636', 0, '2025-11-30 04:35:11', '2025-11-30 04:35:11'),
(1961, 'Sido Kanhu Murmu University', 'Dumka', 'IN', 'http://skmu.ac.in/', 'https://openalex.org/I3132909238', 0, '2025-11-30 04:35:11', '2025-11-30 04:35:11'),
(1962, 'National Power Training Institute', 'Faridabad', 'IN', 'http://npti.in/default.aspx', 'https://openalex.org/I4210167178', 0, '2025-11-30 04:35:11', '2025-11-30 04:35:11'),
(1963, 'Consumer VOICE', 'New Delhi', 'IN', 'https://www.consumer-voice.org/', 'https://openalex.org/I4210163601', 0, '2025-11-30 04:35:11', '2025-11-30 04:35:11'),
(1964, 'Nimbkar Agricultural Research Institute', 'Phaltan', 'IN', 'http://nariphaltan.org/', 'https://openalex.org/I117598194', 0, '2025-11-30 04:35:11', '2025-11-30 04:35:11'),
(1965, 'Confederation of Indian Industry', 'New Delhi', 'IN', 'http://www.cii.in/', 'https://openalex.org/I2801105518', 0, '2025-11-30 04:35:11', '2025-11-30 04:35:11'),
(1966, 'Vikram Hospital', 'Bengaluru', 'IN', 'https://www.vikramhospital.com/', 'https://openalex.org/I4210128967', 0, '2025-11-30 04:35:15', '2025-11-30 04:35:15'),
(1967, 'Sambodhi Research and Communications', 'Noida', 'IN', 'http://sambodhi.co.in/', 'https://openalex.org/I4210166856', 0, '2025-11-30 04:35:15', '2025-11-30 04:35:15'),
(1968, 'Science and Engineering Research Board', 'New Delhi', 'IN', 'http://www.serb.gov.in/home.php', 'https://openalex.org/I2799536621', 0, '2025-11-30 04:35:15', '2025-11-30 04:35:15'),
(1969, 'Mazumdar Shaw Medical Foundation', 'Bengaluru', 'IN', 'http://ms-mf.org/', 'https://openalex.org/I4210088285', 0, '2025-11-30 04:35:15', '2025-11-30 04:35:15'),
(1970, 'Maharashtra Hybrid Seeds (India)', 'Aurangabad', 'IN', 'http://www.mahyco.com/', 'https://openalex.org/I4210111342', 0, '2025-11-30 04:35:15', '2025-11-30 04:35:15'),
(1971, 'International Life Sciences Institute India', 'New Delhi', 'IN', 'http://www.ilsi-india.org/', 'https://openalex.org/I1291372781', 0, '2025-11-30 04:35:15', '2025-11-30 04:35:15'),
(1972, 'Indian Jute Industries Research Association', 'Kolkata', 'IN', 'http://www.ijira.org/', 'https://openalex.org/I4210100175', 0, '2025-11-30 04:35:15', '2025-11-30 04:35:15'),
(1973, 'Evalueserve (India)', 'Gurgaon', 'IN', 'http://www.evalueserve.com/', 'https://openalex.org/I4210144227', 0, '2025-11-30 04:35:15', '2025-11-30 04:35:15'),
(1974, 'CMJ University', 'Shillong', 'IN', 'http://www.cmjumeghalaya.edu.in', 'https://openalex.org/I136053868', 0, '2025-11-30 04:35:15', '2025-11-30 04:35:15'),
(1975, 'Maharashtra National Law University Mumbai', 'Mumbai', 'IN', 'http://nlumumbai.edu.in/', 'https://openalex.org/I2801938406', 0, '2025-11-30 04:35:15', '2025-11-30 04:35:15'),
(1976, 'World Laparoscopy Hospital', 'Gurgaon', 'IN', 'http://www.laparoscopyhospital.com/', 'https://openalex.org/I2799896569', 0, '2025-11-30 04:35:15', '2025-11-30 04:35:15'),
(1977, 'Tamil Nadu Open University', 'Chennai', 'IN', 'http://www.tnou.ac.in/', 'https://openalex.org/I4210098610', 0, '2025-11-30 04:35:15', '2025-11-30 04:35:15'),
(1978, 'Billroth Hospitals', 'Chennai', 'IN', 'http://www.billrothhospitals.com/', 'https://openalex.org/I2802397026', 0, '2025-11-30 04:35:15', '2025-11-30 04:35:15'),
(1979, 'Emcure Pharmaceuticals (India)', 'Pune', 'IN', 'https://emcure.com/', 'https://openalex.org/I4210098465', 0, '2025-11-30 04:35:15', '2025-11-30 04:35:15'),
(1980, 'Academy of Family Physicians of India', 'New Delhi', 'IN', 'http://www.afpionline.com/', 'https://openalex.org/I4210100600', 0, '2025-11-30 04:35:15', '2025-11-30 04:35:15'),
(1981, 'Health Action by People', 'Thiruvananthapuram', 'IN', 'http://www.hapindia.org/', 'https://openalex.org/I4210154316', 0, '2025-11-30 04:35:15', '2025-11-30 04:35:15'),
(1982, 'Council on Energy, Environment and Water', 'New Delhi', 'IN', 'https://www.ceew.in/', 'https://openalex.org/I4210111415', 0, '2025-11-30 04:35:15', '2025-11-30 04:35:15'),
(1983, 'Johnson & Johnson (India)', 'Mumbai', 'IN', 'https://www.jnj.in/', 'https://openalex.org/I4210163153', 0, '2025-11-30 04:35:16', '2025-11-30 04:35:16'),
(1984, 'Agri Biotech Foundation', 'Hyderabad', 'IN', 'http://www.abfindia.org/', 'https://openalex.org/I4210091695', 0, '2025-11-30 04:35:16', '2025-11-30 04:35:16'),
(1985, 'Tata Trusts', 'Mumbai', 'IN', 'https://www.tatatrusts.org', 'https://openalex.org/I4210146138', 0, '2025-11-30 04:35:16', '2025-11-30 04:35:16'),
(1986, 'Bikaner Technical University', 'Bikaner', 'IN', 'http://www.btu.ac.in', 'https://openalex.org/I3131129740', 0, '2025-11-30 04:35:16', '2025-11-30 04:35:16'),
(1987, 'Mamta Health Institute for Mother and Child', 'New Delhi', 'IN', 'http://mamta-himc.org', 'https://openalex.org/I4210141386', 0, '2025-11-30 04:35:16', '2025-11-30 04:35:16'),
(1988, 'National Law Institute University', 'Bhopal', 'IN', 'http://www.nliu.ac.in/', 'https://openalex.org/I4210116216', 0, '2025-11-30 04:35:16', '2025-11-30 04:35:16'),
(1989, 'Datar Cancer Genetics (India)', 'Nashik', 'IN', 'https://datarpgx.com/', 'https://openalex.org/I4210129775', 0, '2025-11-30 04:35:16', '2025-11-30 04:35:16'),
(1990, 'Chandragupt Institute of Management', 'Patna', 'IN', 'http://cimp.ac.in/', 'https://openalex.org/I2801293044', 0, '2025-11-30 04:35:16', '2025-11-30 04:35:16'),
(1991, 'Micro Insurance Academy', 'New Delhi', 'IN', 'http://www.microinsuranceacademy.org/', 'https://openalex.org/I4210098792', 0, '2025-11-30 04:35:16', '2025-11-30 04:35:16'),
(1992, 'Human Resource Development Group', 'New Delhi', 'IN', 'http://www.csirhrdg.res.in/', 'https://openalex.org/I4210154609', 0, '2025-11-30 04:35:16', '2025-11-30 04:35:16'),
(1993, 'Jothydev\'s Diabetes and Research Center', 'Thiruvananthapuram', 'IN', 'http://www.jothydev.net/', 'https://openalex.org/I4210137394', 0, '2025-11-30 04:35:16', '2025-11-30 04:35:16'),
(1994, 'Monad University', 'Haripur', 'IN', 'http://www.monad.edu.in/', 'https://openalex.org/I3132969668', 0, '2025-11-30 04:35:16', '2025-11-30 04:35:16'),
(1995, 'Centre for Research in Medical Entomology', 'Madurai', 'IN', 'http://crmeicmr.nic.in/', 'https://openalex.org/I4210110965', 0, '2025-11-30 04:35:16', '2025-11-30 04:35:16'),
(1996, 'National Law University Odisha', 'Cuttack', 'IN', 'https://nluo.ac.in', 'https://openalex.org/I4210166301', 0, '2025-11-30 04:35:16', '2025-11-30 04:35:16'),
(1997, 'Defence Institute of Psychological Research', 'Delhi', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/defence-institute-psychological-research-dipr', 'https://openalex.org/I72008476', 0, '2025-11-30 04:35:16', '2025-11-30 04:35:16'),
(1998, 'Lepra Society', 'Secunderabad', 'IN', 'http://www.leprasociety.org/', 'https://openalex.org/I4210146720', 0, '2025-11-30 04:35:16', '2025-11-30 04:35:16'),
(1999, 'Central Institute for Women in Agriculture', 'Bhubaneswar', 'IN', 'http://www.icar-ciwa.org.in/', 'https://openalex.org/I4210116406', 0, '2025-11-30 04:35:17', '2025-11-30 04:35:17'),
(2000, 'Aditya Birla Memorial Hospital', 'Pune', 'IN', 'http://www.adityabirlahospital.com/', 'https://openalex.org/I2801851450', 0, '2025-11-30 04:35:17', '2025-11-30 04:35:17'),
(2001, 'Tejas Networks (India)', 'Bengaluru', 'IN', 'https://www.tejasnetworks.com/', 'https://openalex.org/I4210095456', 0, '2025-11-30 04:35:17', '2025-11-30 04:35:17'),
(2002, 'Unit for Research and Development of Information Products', 'Pune', 'IN', 'http://www.urdip.res.in/', 'https://openalex.org/I4210141333', 0, '2025-11-30 04:35:17', '2025-11-30 04:35:17'),
(2003, 'Vedanta Resources (India)', 'Mumbai', 'IN', 'http://www.vedantaresources.com/', 'https://openalex.org/I4210093935', 0, '2025-11-30 04:35:17', '2025-11-30 04:35:17'),
(2004, 'Cadila Pharmaceuticals (India)', 'Ahmedabad', 'IN', 'http://cadilapharma.com', 'https://openalex.org/I4210108063', 0, '2025-11-30 04:35:17', '2025-11-30 04:35:17'),
(2005, 'Forensic Sciences Department', 'Chennai', 'IN', 'http://www.tn.gov.in/tamilforensic/about.htm', 'https://openalex.org/I4210109861', 0, '2025-11-30 04:35:17', '2025-11-30 04:35:17'),
(2006, 'Integrated Coastal and Marine Area Management Project Directorate', 'Chennai', 'IN', 'http://www.icmam.gov.in/', 'https://openalex.org/I4210117185', 0, '2025-11-30 04:35:17', '2025-11-30 04:35:17'),
(2007, 'Meiji (India)', 'Mumbai', 'IN', 'http://www.meijiindia.com/', 'https://openalex.org/I4210132281', 0, '2025-11-30 04:35:17', '2025-11-30 04:35:17'),
(2008, 'G. M. Reddy Research Foundation', 'Hyderabad', 'IN', 'http://www.gmrrf.org/', 'https://openalex.org/I4210134346', 0, '2025-11-30 04:35:17', '2025-11-30 04:35:17'),
(2009, 'Alkem (India)', 'Mumbai', 'IN', 'https://www.alkemlabs.com/', 'https://openalex.org/I4210150536', 0, '2025-11-30 04:35:17', '2025-11-30 04:35:17'),
(2010, 'Mission Hospital Durgapur', 'Asansol', 'IN', 'http://www.themissionhospital.com/', 'https://openalex.org/I4210124299', 0, '2025-11-30 04:35:17', '2025-11-30 04:35:17'),
(2011, 'Anthem Biosciences (India)', 'Bengaluru', 'IN', 'http://www.anthembio.com/', 'https://openalex.org/I4210138068', 0, '2025-11-30 04:35:17', '2025-11-30 04:35:17'),
(2012, 'Foundation for Revitalisation of Local Health Traditions', 'Bengaluru', 'IN', 'http://www.frlht.org/', 'https://openalex.org/I4210107901', 0, '2025-11-30 04:35:17', '2025-11-30 04:35:17'),
(2013, 'Sri Manakula Vinayagar Educational Trust', 'Puducherry', 'IN', 'https://smvsa.in/trust/', 'https://openalex.org/I4210116967', 0, '2025-11-30 04:35:17', '2025-11-30 04:35:17'),
(2014, 'Sanofi (India)', 'Mumbai', 'IN', 'http://www.sanofi.in/l/in/en/index.jsp', 'https://openalex.org/I4210138224', 0, '2025-11-30 04:35:17', '2025-11-30 04:35:17'),
(2015, 'Sardar Patel Renewable Energy Research Institute', 'Vallabh Vidyanagar', 'IN', 'https://www.spreri.org/', 'https://openalex.org/I4210142682', 0, '2025-11-30 04:35:17', '2025-11-30 04:35:17'),
(2016, 'Rajiv Gandhi National University of Law', 'Patiāla', 'IN', 'https://www.rgnul.ac.in/', 'https://openalex.org/I2801696903', 0, '2025-11-30 04:35:17', '2025-11-30 04:35:17'),
(2017, 'Nutrition Foundation of India', 'New Delhi', 'IN', 'http://nutritionfoundationofindia.org/', 'https://openalex.org/I4210136684', 0, '2025-11-30 04:35:18', '2025-11-30 04:35:18'),
(2018, 'Micro Labs (India)', 'Bengaluru', 'IN', 'http://www.microlabsltd.com/', 'https://openalex.org/I4210142779', 0, '2025-11-30 04:35:18', '2025-11-30 04:35:18'),
(2019, 'National Research Centre on Yak', 'Bomdila', 'IN', 'http://www.nrcy.org.in/', 'https://openalex.org/I4210088337', 0, '2025-11-30 04:35:18', '2025-11-30 04:35:18'),
(2020, 'Abbott (India)', 'Mumbai', 'IN', 'http://www.abbott.co.in/', 'https://openalex.org/I4210103925', 0, '2025-11-30 04:35:18', '2025-11-30 04:35:18'),
(2021, 'Institute Of Pesticides Formulation Technology', 'Gurgaon', 'IN', 'http://www.ipft.gov.in/', 'https://openalex.org/I4210132190', 0, '2025-11-30 04:35:18', '2025-11-30 04:35:18'),
(2022, 'Maharashtra Forest Department', 'Nagpur', 'IN', 'http://mahaforest.gov.in/', 'https://openalex.org/I4210140994', 0, '2025-11-30 04:35:18', '2025-11-30 04:35:18'),
(2023, 'Tamil Nadu Physical Education and Sports University', 'Chennai', 'IN', 'https://tnpesu.org', 'https://openalex.org/I2800444346', 0, '2025-11-30 04:35:18', '2025-11-30 04:35:18'),
(2024, 'National Institute of Indian Medical Heritage', 'Hyderabad', 'IN', 'http://niimh.nic.in/', 'https://openalex.org/I4210115412', 0, '2025-11-30 04:35:18', '2025-11-30 04:35:18'),
(2025, 'National Research Development Corporation', 'New Delhi', 'IN', 'https://www.nrdcindia.com/english/', 'https://openalex.org/I4210156257', 0, '2025-11-30 04:35:18', '2025-11-30 04:35:18'),
(2026, 'Public Health Research Institute Of India', 'Mysore', 'IN', 'http://www.phrii.com/', 'https://openalex.org/I4210148675', 0, '2025-11-30 04:35:18', '2025-11-30 04:35:18'),
(2027, 'National Institute of Urban Affairs', 'New Delhi', 'IN', 'http://www.niua.org/', 'https://openalex.org/I4210129587', 0, '2025-11-30 04:35:18', '2025-11-30 04:35:18'),
(2028, 'Torrent Pharma (India)', 'Ahmedabad', 'IN', 'http://www.torrentpharma.com', 'https://openalex.org/I4210137505', 0, '2025-11-30 04:35:18', '2025-11-30 04:35:18'),
(2029, 'Sai Nath University', 'Ranchi', 'IN', 'http://www.sainathuniversity.com/index.asp', 'https://openalex.org/I2801209558', 0, '2025-11-30 04:35:18', '2025-11-30 04:35:18'),
(2030, 'Velammal Educational Trust', 'Chennai', 'IN', 'http://www.velammaltrust.com/', 'https://openalex.org/I4210105562', 0, '2025-11-30 04:35:18', '2025-11-30 04:35:18'),
(2031, 'Centre for Rural Education and Economic Development', 'Chidambaram', 'IN', 'https://www.creed.co.in/', 'https://openalex.org/I4210166182', 0, '2025-11-30 04:35:18', '2025-11-30 04:35:18'),
(2032, 'Panacea Biotec (India)', 'New Delhi', 'IN', 'http://www.panacea-biotec.com/', 'https://openalex.org/I107947710', 0, '2025-11-30 04:35:18', '2025-11-30 04:35:18'),
(2033, 'Centre for Multi-disciplinary Development Research', 'Hubli', 'IN', 'http://www.cmdr.ac.in', 'https://openalex.org/I4210133794', 0, '2025-11-30 04:35:18', '2025-11-30 04:35:18'),
(2034, 'Industrial Credit and Investment Corporation of India', 'Mumbai', 'IN', 'http://www.icicibank.com/', 'https://openalex.org/I2800946588', 0, '2025-11-30 04:35:18', '2025-11-30 04:35:18'),
(2035, 'Central Institute of Indian Languages', 'Mysore', 'IN', 'http://www.ciil.org/', 'https://openalex.org/I2801245514', 0, '2025-11-30 04:35:18', '2025-11-30 04:35:18'),
(2036, 'Mylan (India)', 'Hyderabad', 'IN', 'http://mylanlabs.in/', 'https://openalex.org/I4210132119', 0, '2025-11-30 04:35:18', '2025-11-30 04:35:18'),
(2037, 'Center for Disease Dynamics, Economics and Policy', 'New Delhi', 'IN', 'https://cddep.org/', 'https://openalex.org/I4210163355', 0, '2025-11-30 04:35:19', '2025-11-30 04:35:19'),
(2038, 'Vardhaman Mahaveer Open University', 'Kota', 'IN', 'https://www.vmou.ac.in', 'https://openalex.org/I52496869', 0, '2025-11-30 04:35:19', '2025-11-30 04:35:19'),
(2039, 'Defence Terrain Research Laboratory', 'Delhi', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/defence-terrain-research-laboratory-dtrl', 'https://openalex.org/I4210112953', 0, '2025-11-30 04:35:19', '2025-11-30 04:35:19'),
(2040, 'International Institute of Biotechnology and Toxicology', 'Kanchipuram', 'IN', 'https://iibat.com', 'https://openalex.org/I4210138875', 0, '2025-11-30 04:35:19', '2025-11-30 04:35:19'),
(2041, 'Department of Health & Family Welfare', 'Bhubaneswar', 'IN', 'http://health.odisha.gov.in/', 'https://openalex.org/I4210087792', 0, '2025-11-30 04:35:19', '2025-11-30 04:35:19'),
(2042, 'Hari Shankar Singhania Elastomer And Tyre Research Institute', 'Mysore', 'IN', 'http://www.hasetri.com/', 'https://openalex.org/I4210099537', 0, '2025-11-30 04:35:19', '2025-11-30 04:35:19'),
(2043, 'GenePath Dx (India)', 'Pune', 'IN', 'http://www.genepathdx.com/', 'https://openalex.org/I4210110109', 0, '2025-11-30 04:35:19', '2025-11-30 04:35:19'),
(2044, 'Mondelēz International (India)', 'Mumbai', 'IN', 'https://in.mondelezinternational.com/home', 'https://openalex.org/I4210141416', 0, '2025-11-30 04:35:19', '2025-11-30 04:35:19'),
(2045, 'Stavya Spine Hospital & Research Institute', 'Ahmedabad', 'IN', 'http://spinehospital.in/', 'https://openalex.org/I4210128832', 0, '2025-11-30 04:35:19', '2025-11-30 04:35:19'),
(2046, 'Tamil Nadu Dr. Ambedkar Law University', 'Chennai', 'IN', 'http://www.tndalu.ac.in/', 'https://openalex.org/I2800591429', 0, '2025-11-30 04:35:19', '2025-11-30 04:35:19'),
(2047, 'Emami (India)', 'Kolkata', 'IN', 'http://www.emamiltd.in/', 'https://openalex.org/I4210096895', 0, '2025-11-30 04:35:19', '2025-11-30 04:35:19'),
(2048, 'Sri Kalabyraveshwara Swamy Ayurvedic Medical College, Hospital and Research Center', 'Bengaluru', 'IN', 'http://skayurvedichospitalbangalore.com/', 'https://openalex.org/I4210140475', 0, '2025-11-30 04:35:19', '2025-11-30 04:35:19'),
(2049, 'Saviour Hospital', 'Ahmedabad', 'IN', 'http://saviourhospital.com/', 'https://openalex.org/I4210115969', 0, '2025-11-30 04:35:19', '2025-11-30 04:35:19'),
(2050, 'Centre for Advanced Bioenergy Research', 'Faridabad', 'IN', 'http://www.dbtiocberc.org/', 'https://openalex.org/I4210141984', 0, '2025-11-30 04:35:19', '2025-11-30 04:35:19'),
(2051, 'Tata Power Solar (India)', 'Bengaluru', 'IN', 'http://www.tatapowersolar.com/', 'https://openalex.org/I4210162088', 0, '2025-11-30 04:35:19', '2025-11-30 04:35:19'),
(2052, 'Laila Impex (India)', 'Vijayawada', 'IN', 'http://lailaimpex.tradeindia.com/', 'https://openalex.org/I4210165793', 0, '2025-11-30 04:35:19', '2025-11-30 04:35:19'),
(2053, 'Dr. B. R. Ambedkar Open University', 'Hyderabad', 'IN', 'https://braou.ac.in/', 'https://openalex.org/I4210091685', 0, '2025-11-30 04:35:19', '2025-11-30 04:35:19'),
(2054, 'Sri Narayani Hospital & Research Centre', 'Vellore', 'IN', 'http://www.narayanihospital.org/', 'https://openalex.org/I4210092316', 0, '2025-11-30 04:35:19', '2025-11-30 04:35:19'),
(2055, 'Critical Art and Media Practice', 'Mumbai', 'IN', 'http://studio.camp/', 'https://openalex.org/I4210119473', 0, '2025-11-30 04:35:19', '2025-11-30 04:35:19'),
(2056, 'ITC (India)', 'Kolkata', 'IN', 'http://www.itcportal.com/default.aspx', 'https://openalex.org/I4210142449', 0, '2025-11-30 04:35:19', '2025-11-30 04:35:19'),
(2057, 'Jain Irrigation Systems (India)', 'Jalgaon', 'IN', 'http://www.jains.com/', 'https://openalex.org/I4210109228', 0, '2025-11-30 04:35:19', '2025-11-30 04:35:19'),
(2058, 'Sir Hurkisondas Nurrotumdas Medical Research Society', 'Mumbai', 'IN', NULL, 'https://openalex.org/I4210152086', 0, '2025-11-30 04:35:19', '2025-11-30 04:35:19'),
(2059, 'Thermax (India)', 'Pune', 'IN', 'http://www.thermaxglobal.com/', 'https://openalex.org/I2801392924', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2060, 'Indian Institute of Teacher Education', 'Gandhinagar', 'IN', 'http://www.iite.ac.in/', 'https://openalex.org/I3129229761', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2061, 'Midnapore Homeopathic Medical College and Hospital', 'Medinīpur', 'IN', 'http://www.mhmch.org/', 'https://openalex.org/I4210099750', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2062, 'Ford Hospital and Research Centre', 'Patna', 'IN', 'http://www.fordhospital.org/', 'https://openalex.org/I4210090906', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2063, 'Bharat Biotech (India)', 'Hyderabad', 'IN', 'https://www.bharatbiotech.com', 'https://openalex.org/I4210102382', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2064, 'Society for Education Welfare and Action Rural', 'Bharūch', 'IN', 'http://sewarural.org/', 'https://openalex.org/I4210110511', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2065, 'Eli Lilly (India)', 'Gurgaon', 'IN', 'https://www.lillyindia.co.in/', 'https://openalex.org/I4210114640', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2066, 'IMGENEX India (India)', 'Bhubaneswar', 'IN', 'https://www.imgenexindia.com/', 'https://openalex.org/I4210146179', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2067, 'Tamil Nadu Teachers Education University', 'Chennai', 'IN', 'http://www.tnteu.ac.in/', 'https://openalex.org/I4210094592', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2068, 'Dermatrendz', 'Hyderabad', 'IN', 'http://dermatrendz.com/', 'https://openalex.org/I4210133456', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2069, 'Deendayal Research Institute', 'New Delhi', 'IN', 'https://www.dri.org.in', 'https://openalex.org/I4210155951', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2070, 'Indian Plywood Industries Research and Training Institute', 'Bengaluru', 'IN', 'http://ipirti.gov.in/', 'https://openalex.org/I4210151780', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2071, 'Pandit Deendayal Upadhyaya Shekhawati University', 'Sīkar', 'IN', 'http://www.shekhauni.ac.in/', 'https://openalex.org/I3132169513', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2072, 'Mahendra Institute of Management and Technical Studies', 'Khurda', 'IN', 'https://www.mimts.org/', 'https://openalex.org/I4210110868', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2073, 'Seth Research Foundation', 'New Delhi', 'IN', 'http://www.sethfoundation.in/', 'https://openalex.org/I4210121851', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2074, 'ICARE Institute of Medical Sciences and Research & Dr. Bidhan Chandra Roy Hospital', 'Haldia', 'IN', 'http://icaremedicalcollege.in/final/', 'https://openalex.org/I4210155216', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2075, 'HLL Lifecare (India)', 'Thiruvananthapuram', 'IN', 'http://www.lifecarehll.com/', 'https://openalex.org/I4210092007', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2076, 'Association for Intelligent Transport Systems', 'Bhopal', 'IN', 'http://www.itsindia.org/', 'https://openalex.org/I4210112609', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2077, 'Coal India (India)', 'Kolkata', 'IN', 'https://www.coalindia.in/', 'https://openalex.org/I4210091699', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2078, 'Precise (India)', 'Mumbai', 'IN', 'http://www.precisegroup.co.in/', 'https://openalex.org/I4210128840', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2079, 'National Law University and Judicial Academy', 'Guwahati', 'IN', 'http://www.nluassam.ac.in/', 'https://openalex.org/I4210145317', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2080, 'Indian Institute of Packaging', 'Mumbai', 'IN', 'https://www.iip-in.com/', 'https://openalex.org/I4210088751', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2081, 'Venus Remedies (India)', 'Panchkula', 'IN', 'http://venusremedies.com/', 'https://openalex.org/I4210108566', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2082, 'Central Soil and Materials Research Station', 'New Delhi', 'IN', 'http://csmrs.nic.in/', 'https://openalex.org/I4210111264', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2083, 'Hindu Mission Hospital', 'Chennai', 'IN', 'http://hindumissionhospital.in/', 'https://openalex.org/I2801920981', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2084, 'Shree O.H. Nazar Ayurved College Shree Swami Atmanand Saraswati Ayurved Hospital', 'Surat', 'IN', 'http://www.suratayurvedcollegeandhospital.org/General/GHome.aspx', 'https://openalex.org/I4210114006', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2085, 'Ministry of External Affairs', 'New Delhi', 'IN', 'https://www.mea.gov.in/', 'https://openalex.org/I4210150435', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2086, 'Sree Sankaracharya University of Sanskrit', 'Ernakulam', 'IN', 'https://ssus.ac.in', 'https://openalex.org/I3131318560', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2087, 'Department of Higher Education', 'Kolkata', 'IN', 'http://highereducationwb.in/', 'https://openalex.org/I4210108449', 0, '2025-11-30 04:35:20', '2025-11-30 04:36:11'),
(2088, 'Moulana Hospital', 'Malappuram', 'IN', 'http://moulanahospital.com/en/', 'https://openalex.org/I4210114953', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2089, 'Dr. Ram Manohar Lohia National Law University', 'Lucknow', 'IN', 'http://www.rmlnlu.ac.in/', 'https://openalex.org/I4210134954', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2090, 'Spices Board India', 'Kochi', 'IN', 'http://www.indianspices.com/', 'https://openalex.org/I4210134647', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2091, 'DSMS Group of Institutions', 'Durgapur', 'IN', 'http://www.dsmsindia.org/', 'https://openalex.org/I4210118705', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2092, 'Mohammad Ali Jauhar University', 'Rampur Hat', 'IN', 'http://jauharuniversity.edu.in/', 'https://openalex.org/I3129486212', 0, '2025-11-30 04:35:20', '2025-11-30 04:35:20'),
(2093, 'Central Sericultural Germplasm Resources Centre', 'Krishnagiri', 'IN', 'http://csgrc.res.in/', 'https://openalex.org/I4210089075', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2094, 'Society for Community Health Awareness Research and Action', 'Bengaluru', 'IN', 'http://sochara.org/', 'https://openalex.org/I4210138674', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2095, 'Dr. Babasaheb Ambedkar Open University', 'Ahmedabad', 'IN', 'http://www.baou.edu.in/', 'https://openalex.org/I4210086803', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2096, 'NIILM University', 'Kaithal', 'IN', 'http://www.niilmuniversity.in/', 'https://openalex.org/I3129898747', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2097, 'Dalmia Institute of Scientific & Industrial Research', 'Sundargarh', 'IN', 'http://www.dalmiainstitute.in/', 'https://openalex.org/I4210098571', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2098, 'Alembic Pharmaceuticals (India)', 'Vadodara', 'IN', 'http://www.alembic-india.com/', 'https://openalex.org/I4210121895', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2099, 'Institute of Applied Dermatology', 'Kāsaragod', 'IN', 'https://iad.org.in/', 'https://openalex.org/I4210130939', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2100, 'Dr Vijay Kumar Foundation', 'Gurgaon', 'IN', 'http://www.vkf.in/', 'https://openalex.org/I4210163192', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2101, 'Swasthya Diabetes Care', 'Ahmedabad', 'IN', 'http://www.swasthyaindia.com/', 'https://openalex.org/I4210127635', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2102, 'Kims Bibi Hospital', 'Hyderabad', 'IN', 'http://hyderabad.kimsglobal.com', 'https://openalex.org/I4210134690', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2103, 'HCG NCHRI Cancer Centre', 'Nagpur', 'IN', 'https://www.hcgoncology.com/hospital_profiles/hcg-nchri-cancer-centre-nagpur', 'https://openalex.org/I4210143292', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2104, 'Veterinary And Animal Husbandry Services', 'Imphal', 'IN', 'https://vetymanipur.nic.in/index.html', 'https://openalex.org/I4210166231', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2105, 'Minto Ophthalmic Hospital', 'Bengaluru', 'IN', 'http://www.bmcri.org/minto_hosp.html', 'https://openalex.org/I2859090175', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2106, 'Centre for Public Policy Research', 'Kochi', 'IN', 'https://www.cppr.in', 'https://openalex.org/I4210092887', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2107, 'M.V. Hospital and Research Centre', 'Lucknow', 'IN', 'http://www.mvhrcenter.com/', 'https://openalex.org/I4210094003', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2108, 'Institute of Chartered Financial Analysts of India University, Jaipur', 'Jaipur', 'IN', 'https://www.iujaipur.edu.in/', 'https://openalex.org/I4210139590', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2109, 'Tilak Dhari Post Graduate College', 'Jaunpur', 'IN', 'http://www.tdcollege.org/', 'https://openalex.org/I4210087875', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2110, 'Emmanuel Hospital Association', 'New Delhi', 'IN', 'https://www.eha-health.org/', 'https://openalex.org/I4210091319', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2111, 'PVS Memorial Hospital', 'Kochi', 'IN', 'http://www.pvsmemorialhospital.com/', 'https://openalex.org/I4210111331', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2112, 'National Allergy Asthma Bronchitis Institute', 'Kolkata', 'IN', 'http://www.naabi.org/html/home.html', 'https://openalex.org/I4210149232', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2113, 'Kirloskar Hospital', 'Hyderabad', 'IN', 'http://kirloskarlaparoscopy.com', 'https://openalex.org/I4210164335', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2114, 'Seth Nandlal Dhoot Hospital', 'Aurangabad', 'IN', 'http://www.dhoothospital.com/', 'https://openalex.org/I4210148658', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2115, 'Manav Bharti University', 'Solan', 'IN', 'https://www.manavbhartiuniversity.edu.in/', 'https://openalex.org/I103104989', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2116, 'Institute of Livelihood Research and Training', 'Hyderabad', 'IN', 'https://ilrtindia.org/', 'https://openalex.org/I4210128641', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2117, 'Thrombosis Research Institute', 'Bengaluru', 'IN', 'http://www.tri-london.ac.uk/', 'https://openalex.org/I4210134763', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2118, 'Stempeutics (India)', 'Bengaluru', 'IN', 'http://www.stempeutics.com/', 'https://openalex.org/I4210137709', 0, '2025-11-30 04:35:21', '2025-11-30 04:35:21'),
(2119, 'United States India Educational Foundation', 'New Delhi', 'IN', 'http://www.usief.org.in/', 'https://openalex.org/I2800929305', 0, '2025-11-30 04:35:22', '2025-11-30 04:35:22'),
(2120, 'Professional Assistance for Development Action', 'New Delhi', 'IN', 'http://www.pradan.net/', 'https://openalex.org/I2802247371', 0, '2025-11-30 04:35:22', '2025-11-30 04:35:22'),
(2121, 'National Institute of Plant Health Management', 'Hyderabad', 'IN', 'http://niphm.gov.in/', 'https://openalex.org/I4210086241', 0, '2025-11-30 04:35:22', '2025-11-30 04:35:22'),
(2122, 'Ajanta Pharma (India)', 'Mumbai', 'IN', 'http://www.ajantapharma.com', 'https://openalex.org/I4210090021', 0, '2025-11-30 04:35:22', '2025-11-30 04:35:22'),
(2123, 'Cadence Design Systems (India)', 'Noida', 'IN', 'https://www.cadence.com/', 'https://openalex.org/I4210111610', 0, '2025-11-30 04:35:22', '2025-11-30 04:35:22'),
(2124, 'Hetero Drugs (India)', 'Hyderabad', 'IN', 'http://www.heteroworld.com/', 'https://openalex.org/I4210129016', 0, '2025-11-30 04:35:22', '2025-11-30 04:35:22'),
(2125, 'Therachem Research Medilab (India)', 'Jaipur', 'IN', 'http://www.therachem.net/', 'https://openalex.org/I4210120444', 0, '2025-11-30 04:35:22', '2025-11-30 04:35:22'),
(2126, 'BioAxis DNA Research Centre (India)', 'Hyderabad', 'IN', 'http://dnares.in/', 'https://openalex.org/I4210138323', 0, '2025-11-30 04:35:22', '2025-11-30 04:35:22'),
(2127, 'Kulkarni reconstructive Urology Center', 'Pune', 'IN', 'https://strictureurethra.in/', 'https://openalex.org/I4210153278', 0, '2025-11-30 04:35:22', '2025-11-30 04:35:22'),
(2128, 'University College of Commerce & Business Management', 'Hyderabad', 'IN', 'http://www.ou-mba.ac.in/', 'https://openalex.org/I4210164005', 0, '2025-11-30 04:35:22', '2025-11-30 04:35:22'),
(2129, 'Manovikas Kendra Rehabilitation and Research Institute', 'Kolkata', 'IN', 'http://www.manovikaskendra.org/', 'https://openalex.org/I4210166602', 0, '2025-11-30 04:35:22', '2025-11-30 04:35:22'),
(2130, 'Central University of Tibetan Studies', 'Varanasi', 'IN', 'http://www.cuts.ac.in/GuestSection/default.aspx', 'https://openalex.org/I2802930190', 0, '2025-11-30 04:35:22', '2025-11-30 04:35:22'),
(2131, 'Centre for Air Borne System', 'Bengaluru', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/centre-air-borne-system-cabs', 'https://openalex.org/I4210098194', 0, '2025-11-30 04:35:22', '2025-11-30 04:35:22'),
(2132, 'Office of the Principal Scientific Adviser', 'New Delhi', 'IN', 'http://psa.gov.in/', 'https://openalex.org/I4210091075', 0, '2025-11-30 04:35:22', '2025-11-30 04:35:22'),
(2133, 'Munger University', 'Munger', 'IN', 'http://www.mungeruniversity.ac.in/', 'https://openalex.org/I4210103923', 0, '2025-11-30 04:35:22', '2025-11-30 04:35:22'),
(2134, 'Indian Drugs and Pharmaceuticals Limited', 'New Delhi', 'IN', 'http://www.idpl.gov.in/home.html', 'https://openalex.org/I4210106346', 0, '2025-11-30 04:35:22', '2025-11-30 04:35:22'),
(2135, 'Suraj Eye Institute', 'Nagpur', 'IN', 'http://www.surajeyeinstitute.in/', 'https://openalex.org/I4210164344', 0, '2025-11-30 04:35:22', '2025-11-30 04:35:22'),
(2136, 'JSS Medical Research (India)', 'Faridabad', 'IN', 'http://maxneeman.com/', 'https://openalex.org/I4210115374', 0, '2025-11-30 04:35:22', '2025-11-30 04:35:22'),
(2137, 'Pharmaceutical Product Development (India)', 'Mumbai', 'IN', 'http://www.ppdi.com/', 'https://openalex.org/I4210132377', 0, '2025-11-30 04:35:22', '2025-11-30 04:35:22'),
(2138, 'Meril Life Sciences (India)', 'Mumbai', 'IN', 'http://www.merillife.com/', 'https://openalex.org/I4210150914', 0, '2025-11-30 04:35:23', '2025-11-30 04:35:23'),
(2139, 'USV (India)', 'Mumbai', 'IN', 'https://www.usvindia.com/', 'https://openalex.org/I4210119848', 0, '2025-11-30 04:35:23', '2025-11-30 04:35:23'),
(2140, 'Syneos Health (India)', 'Gurgaon', 'IN', 'https://www.syneoshealth.com/', 'https://openalex.org/I4210139218', 0, '2025-11-30 04:35:23', '2025-11-30 04:35:23'),
(2141, 'Kendriya Vidyalaya Sangathan', 'New Delhi', 'IN', 'https://www.kvsangathan.nic.in/', 'https://openalex.org/I4210154945', 0, '2025-11-30 04:35:23', '2025-11-30 04:35:23'),
(2142, 'Institute of Advanced Studies in Education', 'Sardārshahr', 'IN', 'http://www.iaseuniversity.org.in/', 'https://openalex.org/I3131379424', 0, '2025-11-30 04:35:23', '2025-11-30 04:35:23'),
(2143, 'Krishna Kanta Handiqui State Open University', 'Guwahati', 'IN', 'http://www.kkhsou.in/web_new/index.php', 'https://openalex.org/I4210087854', 0, '2025-11-30 04:35:23', '2025-11-30 04:35:23'),
(2144, 'West Bengal Electronics Industry Development Corporation Limited (India)', 'Kolkata', 'IN', 'http://www.webel-india.com/', 'https://openalex.org/I4210145740', 0, '2025-11-30 04:35:23', '2025-11-30 04:35:23'),
(2145, 'Catherine Booth Hospital', 'Kanniyākumāri', 'IN', NULL, 'https://openalex.org/I2801486053', 0, '2025-11-30 04:35:23', '2025-11-30 04:35:23'),
(2146, 'Bharat Forge (India)', 'Pune', 'IN', 'http://bharatforge.com/', 'https://openalex.org/I4210089955', 0, '2025-11-30 04:35:24', '2025-11-30 04:35:24'),
(2147, 'Spicer Adventist University', 'Pune', 'IN', 'https://sau.edu.in/', 'https://openalex.org/I4210151788', 0, '2025-11-30 04:35:24', '2025-11-30 04:35:24'),
(2148, 'Fortis Malar Hospital', 'Chennai', 'IN', 'http://www.fortismalar.com/', 'https://openalex.org/I2801764298', 0, '2025-11-30 04:35:24', '2025-11-30 04:35:24'),
(2149, 'All India Institute of Physical Medicine and Rehabilitation', 'Mumbai', 'IN', 'http://aiipmr.gov.in/', 'https://openalex.org/I4210102101', 0, '2025-11-30 04:35:24', '2025-11-30 04:35:24'),
(2150, 'Lipomic Healthcare (India)', 'New Delhi', 'IN', 'https://lipomic.com/', 'https://openalex.org/I4210130887', 0, '2025-11-30 04:35:24', '2025-11-30 04:35:24'),
(2151, 'Krantisinh Nana Patil College of Veterinary Science', 'Shirwal', 'IN', 'http://www.knpvc.in/#', 'https://openalex.org/I4210160490', 0, '2025-11-30 04:35:24', '2025-11-30 04:35:24'),
(2152, 'Genomix Biotech (India)', 'Hyderabad', 'IN', 'http://genomixbiotech.com/', 'https://openalex.org/I4210129787', 0, '2025-11-30 04:35:24', '2025-11-30 04:35:24'),
(2153, 'Dr. B.R.K.R. Government Ayurvedic College', 'Hyderabad', 'IN', 'http://brkrgac.org/', 'https://openalex.org/I4210139327', 0, '2025-11-30 04:35:24', '2025-11-30 04:35:24'),
(2154, 'Chhattisgarh Council of Science and Technology', 'Raipur', 'IN', 'http://cgcost.nic.in/', 'https://openalex.org/I4210148999', 0, '2025-11-30 04:35:24', '2025-11-30 04:35:24'),
(2155, 'Makhanlal Chaturvedi National University of Journalism and Communication', 'Bhopal', 'IN', 'http://www.mcu.ac.in', 'https://openalex.org/I3130984881', 0, '2025-11-30 04:35:24', '2025-11-30 04:35:24'),
(2156, 'Jyotirmay Eye Clinic', 'Mumbai', 'IN', 'http://www.jyotirmay.com/', 'https://openalex.org/I4210118713', 0, '2025-11-30 04:35:24', '2025-11-30 04:35:24'),
(2157, 'Indian Institute of Information Technology Senapati, Manipur', 'Imphal', 'IN', 'http://iiitmanipur.ac.in/', 'https://openalex.org/I4210161644', 0, '2025-11-30 04:35:24', '2025-11-30 04:35:24'),
(2158, 'Mangla Hospital and Research Center', 'Bijnor', 'IN', 'http://www.manglahospital.org/', 'https://openalex.org/I4210099525', 0, '2025-11-30 04:35:24', '2025-11-30 04:35:24'),
(2159, 'Information and Library Network', 'Gandhinagar', 'IN', 'http://www.inflibnet.ac.in/', 'https://openalex.org/I4210165007', 0, '2025-11-30 04:35:24', '2025-11-30 04:35:24'),
(2160, 'Indian Register of Shipping', 'Mumbai', 'IN', 'http://www.irclass.org/', 'https://openalex.org/I2802879718', 0, '2025-11-30 04:35:24', '2025-11-30 04:35:24'),
(2161, 'Indo-US Super Speciality Hospital', 'Hyderabad', 'IN', 'http://indoushospital.net/', 'https://openalex.org/I4210095467', 0, '2025-11-30 04:35:24', '2025-11-30 04:35:24'),
(2162, 'Chanakya National Law University', 'Patna', 'IN', 'http://www.cnlu.ac.in/index.php/en/', 'https://openalex.org/I2800362346', 0, '2025-11-30 04:35:24', '2025-11-30 04:35:24'),
(2163, 'Shanti Business School', 'Ahmedabad', 'IN', 'http://www.shantibschool.edu.in/', 'https://openalex.org/I4210089240', 0, '2025-11-30 04:35:24', '2025-11-30 04:35:24'),
(2164, 'Monilek Hospital and Research Center', 'Jaipur', 'IN', 'http://monilekhospital.com/', 'https://openalex.org/I4210130377', 0, '2025-11-30 04:35:24', '2025-11-30 04:35:24'),
(2165, 'Varsha Bioscience and Technology (India)', 'Hyderabad', 'IN', 'http://www.varshabioscience.com/', 'https://openalex.org/I4210132248', 0, '2025-11-30 04:35:29', '2025-11-30 04:35:29'),
(2166, 'Chameli Devi Group of Institutions', 'Indore', 'IN', 'https://cdgi.edu.in/cdgi.php', 'https://openalex.org/I4210139833', 0, '2025-11-30 04:35:29', '2025-11-30 04:35:29'),
(2167, 'National Maritime Foundation', 'New Delhi', 'IN', 'http://www.maritimeindia.org/', 'https://openalex.org/I4210151286', 0, '2025-11-30 04:35:29', '2025-11-30 04:35:29'),
(2168, 'Sun Pharma (India)', 'Mumbai', 'IN', 'http://www.sunpharma.com/', 'https://openalex.org/I4210133592', 0, '2025-11-30 04:35:29', '2025-11-30 04:35:29'),
(2169, 'GVK Emergency Management and Research Institute', 'Bengaluru', 'IN', 'http://www.emri.in/', 'https://openalex.org/I4210161618', 0, '2025-11-30 04:35:29', '2025-11-30 04:35:29'),
(2170, 'Community Eye Care Foundation', 'Pune', 'IN', 'http://cecfindia.com/', 'https://openalex.org/I4210091560', 0, '2025-11-30 04:35:30', '2025-11-30 04:35:30'),
(2171, 'Dabur (India)', 'Ghaziabad', 'IN', 'https://www.dabur.com/', 'https://openalex.org/I4210093971', 0, '2025-11-30 04:35:30', '2025-11-30 04:35:30'),
(2172, 'Diacon Hospital', 'Bengaluru', 'IN', 'http://www.diaconhospital.com/', 'https://openalex.org/I4210111528', 0, '2025-11-30 04:35:30', '2025-11-30 04:35:30'),
(2173, 'Research Design And Standards Organization', 'Lucknow', 'IN', 'http://www.rdso.indianrailways.gov.in/', 'https://openalex.org/I2799538346', 0, '2025-11-30 04:35:30', '2025-11-30 04:35:30'),
(2174, 'Government Nizamia General Hospital', 'Hyderabad', 'IN', NULL, 'https://openalex.org/I2800249105', 0, '2025-11-30 04:35:30', '2025-11-30 04:35:30'),
(2175, 'RG Stone Urology & Laparoscopy Hospital', 'Pitampura', 'IN', 'http://www.rghospitals.com/urology-hospitals/new-delhi/pitampura-north-delhi', 'https://openalex.org/I4210099754', 0, '2025-11-30 04:35:30', '2025-11-30 04:35:58'),
(2176, 'Shri Lakshmi Clinic & Scan Centre', 'Krishnagiri', 'IN', 'https://shri-lakshmi-clinic-scan-centre.business.site/', 'https://openalex.org/I4210130870', 0, '2025-11-30 04:35:30', '2025-11-30 04:35:30'),
(2177, 'Nansen Environmental Research Centre India', 'Kochi', 'IN', 'http://www.nerci.in/', 'https://openalex.org/I4210132485', 0, '2025-11-30 04:35:30', '2025-11-30 04:35:30'),
(2178, 'Indian Institute of Dalit Studies', 'New Delhi', 'IN', 'http://www.dalitstudies.org.in/', 'https://openalex.org/I4210161522', 0, '2025-11-30 04:35:30', '2025-11-30 04:35:30'),
(2179, 'Kaloji Narayana Rao University of Health Sciences', 'Warangal', 'IN', 'http://www.knruhs.in/public_org/', 'https://openalex.org/I4210126239', 0, '2025-11-30 04:35:30', '2025-11-30 04:35:30'),
(2180, 'Praj (India)', 'Pune', 'IN', 'https://www.praj.net/', 'https://openalex.org/I4210093169', 0, '2025-11-30 04:35:30', '2025-11-30 04:35:30'),
(2181, 'Department of Animal Husbandry', 'Bhopal', 'IN', 'http://www.mpdah.gov.in', 'https://openalex.org/I4210147265', 0, '2025-11-30 04:35:30', '2025-11-30 04:35:30'),
(2182, 'Bharat Serums and Vaccines (India)', 'Navi Mumbai', 'IN', 'https://www.bharatserums.com', 'https://openalex.org/I4210147940', 0, '2025-11-30 04:35:30', '2025-11-30 04:35:30'),
(2183, 'KKR ENT Hospital and Research Institute', 'Chennai', 'IN', 'http://www.kkrenthospital.org/', 'https://openalex.org/I4210139857', 0, '2025-11-30 04:35:30', '2025-11-30 04:35:30'),
(2184, 'NonFerrous Materials Technology Development Centre', 'Hyderabad', 'IN', 'http://www.nftdc.res.in/', 'https://openalex.org/I4210152210', 0, '2025-11-30 04:35:30', '2025-11-30 04:35:30'),
(2185, 'Ayurvet (India)', 'Ghaziabad', 'IN', 'https://www.ayurvet.com/', 'https://openalex.org/I4210157303', 0, '2025-11-30 04:35:30', '2025-11-30 04:35:30'),
(2186, 'Institution of Electronics and Telecommunication Engineers', 'New Delhi', 'IN', 'http://iete.org/', 'https://openalex.org/I4210164316', 0, '2025-11-30 04:35:30', '2025-11-30 04:35:30'),
(2187, 'Vittal Mallya Scientific Research Foundation', 'Bengaluru', 'IN', 'http://www.vmsrf.org/', 'https://openalex.org/I4210143280', 0, '2025-11-30 04:35:30', '2025-11-30 04:35:30'),
(2188, 'Foundation for Research in Community Health', 'Pune', 'IN', 'http://www.frchindia.org/', 'https://openalex.org/I4210105196', 0, '2025-11-30 04:35:30', '2025-11-30 04:35:30'),
(2189, 'Saras Environment Consultant', 'New Delhi', 'IN', 'http://www.saras-in.org/', 'https://openalex.org/I4210114094', 0, '2025-11-30 04:35:30', '2025-11-30 04:35:30'),
(2190, 'Pratham', 'New Delhi', 'IN', 'http://www.pratham.org/', 'https://openalex.org/I4210122899', 0, '2025-11-30 04:35:30', '2025-11-30 04:35:30'),
(2191, 'Einstein Institute of Science', 'Kottayam', 'IN', 'http://einsteininstitute.in/aboutus', 'https://openalex.org/I4210092592', 0, '2025-11-30 04:35:31', '2025-11-30 04:35:31'),
(2192, 'Seventh day Adventist Hospital', 'Ottappālam', 'IN', 'http://www.osdah.org/', 'https://openalex.org/I2799280452', 0, '2025-11-30 04:35:31', '2025-11-30 04:35:31'),
(2193, 'EIILM University', 'Jorethang', 'IN', 'http://www.eiilmuniversity.co.in/', 'https://openalex.org/I4210090269', 0, '2025-11-30 04:35:31', '2025-11-30 04:35:31'),
(2194, 'Samvedna Hospital', 'Varanasi', 'IN', 'http://samvednahospital.com/', 'https://openalex.org/I4210140934', 0, '2025-11-30 04:35:31', '2025-11-30 04:35:31'),
(2195, 'Virchow BioTech (India)', 'Hyderabad', 'IN', 'http://virchowbiotech.com', 'https://openalex.org/I4210142982', 0, '2025-11-30 04:35:31', '2025-11-30 04:35:31'),
(2196, 'Dr. Kamakshi Memorial Hospital', 'Chennai', 'IN', 'https://drkmh.com/', 'https://openalex.org/I4210114835', 0, '2025-11-30 04:35:31', '2025-11-30 04:35:31'),
(2197, 'Meditation De-Addiction Health AIDS Nutrition Trust', 'Amrāvati', 'IN', 'https://www.mahantrust.org/', 'https://openalex.org/I4210139172', 0, '2025-11-30 04:35:31', '2025-11-30 04:35:31'),
(2198, 'Indian Institute of Metals', 'Kolkata', 'IN', 'http://www.iim-india.net/', 'https://openalex.org/I1309988440', 0, '2025-11-30 04:35:31', '2025-11-30 04:35:31'),
(2199, 'Agilent Technologies (India)', 'Gurgaon', 'IN', 'http://www.agilent.com/home', 'https://openalex.org/I4210108186', 0, '2025-11-30 04:35:31', '2025-11-30 04:35:31'),
(2200, 'National Innovation Foundation', 'Gandhinagar', 'IN', 'http://nif.org.in/', 'https://openalex.org/I4210144596', 0, '2025-11-30 04:35:31', '2025-11-30 04:35:31'),
(2201, 'Asian Paints (India)', 'Mumbai', 'IN', 'https://www.asianpaints.com/pro/', 'https://openalex.org/I2803049109', 0, '2025-11-30 04:35:31', '2025-11-30 04:35:31'),
(2202, 'Getwell Hospital and Research Institute', 'Nagpur', 'IN', 'http://www.getwellhospitals.com/', 'https://openalex.org/I4210156793', 0, '2025-11-30 04:35:31', '2025-11-30 04:35:31'),
(2203, 'Sunder Lal Jain Hospital', 'New Delhi', 'IN', 'http://www.sljhospital.com/', 'https://openalex.org/I4210112375', 0, '2025-11-30 04:35:31', '2025-11-30 04:35:31'),
(2204, 'Plant Lipids (India)', 'Kochi', 'IN', 'http://www.plantlipids.com/', 'https://openalex.org/I4210116276', 0, '2025-11-30 04:35:31', '2025-11-30 04:35:31'),
(2205, 'Raipur Municipal Corporation', 'Raipur', 'IN', 'http://nagarnigamraipur.nic.in/', 'https://openalex.org/I4210108023', 0, '2025-11-30 04:35:31', '2025-11-30 04:35:31'),
(2206, 'Institute for Systems Studies & Analyses', 'Delhi', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/institute-systems-studies-analyses-issa', 'https://openalex.org/I4210165624', 0, '2025-11-30 04:35:31', '2025-11-30 04:35:31'),
(2207, 'Cama and Albless Hospital', 'Mumbai', 'IN', NULL, 'https://openalex.org/I2800719455', 0, '2025-11-30 04:35:31', '2025-11-30 04:35:31'),
(2208, 'Fresenius Medical Care (India)', 'Gurgaon', 'IN', 'https://www.freseniusmedicalcare.com/en/home/', 'https://openalex.org/I4210141848', 0, '2025-11-30 04:35:31', '2025-11-30 04:35:31'),
(2209, 'Aware Global Hospital', 'Hyderabad', 'IN', 'http://www.globalhospitalsindia.com/hyderabad-lbnagar', 'https://openalex.org/I2800943509', 0, '2025-11-30 04:35:31', '2025-11-30 04:35:31'),
(2210, 'Humsafar Trust', 'Mumbai', 'IN', 'http://www.humsafar.org/', 'https://openalex.org/I2800658603', 0, '2025-11-30 04:35:31', '2025-11-30 04:35:31'),
(2211, 'Asian Development Research Institute', 'Patna', 'IN', 'http://www.adriindia.org/', 'https://openalex.org/I2801208972', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2212, 'Laurus labs (India)', 'Hyderabad', 'IN', 'https://www.lauruslabs.com/', 'https://openalex.org/I4210090023', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2213, 'Durgabai Deshmukh Hospital', 'Hyderabad', 'IN', 'http://amsdd.org.in/ams-dr-durgabai-deshmukh-hospital-research-centre-2/', 'https://openalex.org/I2800910329', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2214, 'Lambda Therapeutic Research (India)', 'Ahmedabad', 'IN', 'http://www.lambda-cro.com/', 'https://openalex.org/I4210144591', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2215, 'Mamata General Hospital', 'Khammam', 'IN', 'https://www.mamatamedicalcollege.com/mamata-general-hospital.html', 'https://openalex.org/I4210096635', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2216, 'Indus Biotech (India)', 'Pune', 'IN', 'http://www.indusbiotech.com/', 'https://openalex.org/I4210104831', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2217, 'Sugen Life Sciences (India)', 'Tirumala - Tirupati', 'IN', 'http://www.sugenlife.com', 'https://openalex.org/I4210126799', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2218, 'Antara', 'Kolkata', 'IN', 'http://www.antaraglobal.org/', 'https://openalex.org/I4210119153', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2219, 'Bangalore Medical Center', 'Bengaluru', 'IN', 'http://www.bangaloremedicalcentre.com/', 'https://openalex.org/I4210124975', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2220, 'Directorate General of Training', 'New Delhi', 'IN', 'http://dget.nic.in/content/', 'https://openalex.org/I4210129721', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2221, 'Natco Pharma (India)', 'Hyderabad', 'IN', 'http://natcopharma.co.in/', 'https://openalex.org/I4210149203', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2222, 'GAIL (India)', 'New Delhi', 'IN', 'https://gailonline.com/', 'https://openalex.org/I333900126', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2223, 'Swami Pranavananda Homoeopathic Medical College and Hospital', 'Chhatarpur', 'IN', 'http://www.sphmedicalcollege.com/about_us.php', 'https://openalex.org/I4210108780', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2224, 'Aizawl Adventist Hospital', 'Aizawl', 'IN', 'http://aadhos.com/about-us.html', 'https://openalex.org/I4210110622', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2225, 'Bayer (India)', 'Mumbai', 'IN', 'http://www.bayer.in/', 'https://openalex.org/I4210148147', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2226, 'St. Theresa’s Multi-Speciality Hospital', 'Hyderabad', 'IN', 'https://saint-theresas-hospital.business.site/', 'https://openalex.org/I4210158938', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2227, 'Ayush & Health Sciences University Chhattisgarh', 'Raipur', 'IN', 'http://www.cghealthuniv.com/', 'https://openalex.org/I4210143923', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2228, 'Ekjut', 'Chakradharpur', 'IN', 'http://www.ekjutindia.org/main.html', 'https://openalex.org/I4210106683', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2229, 'Balaji Utthan Sansthan', 'Patna', 'IN', 'http://www.bus.org.in/', 'https://openalex.org/I4210155145', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2230, 'Seethapathy Clinic and Hospital', 'Chennai', 'IN', 'http://seethapathyclinic.org/', 'https://openalex.org/I4210164285', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2231, 'Kelkar Education Trust\'s Scientific Research Centre', 'Mumbai', 'IN', 'http://kelkarresearchcentre.org/', 'https://openalex.org/I4210089239', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2232, 'YMT Ayurvedic Medical College & Hospital. P.G.Institute', 'Navi Mumbai', 'IN', 'http://www.ymtayurvedcollege.org', 'https://openalex.org/I4210133670', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2233, 'Rashtriya Sanskrit Vidyapeetha', 'Tirumala - Tirupati', 'IN', 'http://rsvidyapeetha.ac.in/', 'https://openalex.org/I2801445914', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2234, 'Indian Institute of Business Management Patna', 'Patna', 'IN', 'http://www.w.iibm.in/', 'https://openalex.org/I4210111633', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32');
INSERT INTO `institutions` (`id`, `name`, `city`, `country`, `website`, `domain`, `is_verified`, `created_at`, `updated_at`) VALUES
(2235, 'Centre for Internet and Society', 'Bengaluru', 'IN', 'http://cis-india.org/', 'https://openalex.org/I2801717827', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2236, 'Jawaharlal Nehru Architecture and Fine Arts University', 'Hyderabad', 'IN', 'https://www.jnafau.ac.in/', 'https://openalex.org/I3130996612', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2237, 'Span Diagnostics (India)', 'Surat', 'IN', 'http://www.span.co.in/', 'https://openalex.org/I4210139432', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2238, 'Biogen (India)', 'Gurgaon', 'IN', 'https://www.biogen.com', 'https://openalex.org/I4210121832', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2239, 'Proof & Experimental Establishment', 'Balasore', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/proof-experimental-establishment-pxe', 'https://openalex.org/I4210140099', 0, '2025-11-30 04:35:32', '2025-11-30 04:35:32'),
(2240, 'Sudha Hospital and Medical Research Centre', 'Kota', 'IN', 'http://sudhahospitalkota.com/', 'https://openalex.org/I4210094672', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2241, 'Samatvam Endocrinology Diabetes Centre', 'Bengaluru', 'IN', 'http://www.samatvam.in/', 'https://openalex.org/I4210110614', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2242, 'Christian Institute of Health Sciences and Research Hospital', 'Dimāpur', 'IN', 'http://cihsr.in/#', 'https://openalex.org/I4210136454', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2243, 'Renewable Energy Corporation of India', 'New Delhi', 'IN', 'https://www.seci.co.in/', 'https://openalex.org/I4210146904', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2244, 'Dr. H. Gordon Roberts Hospital', 'Shillong', 'IN', 'http://robertshosp.org/', 'https://openalex.org/I2801949619', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2245, 'Child Health Foundation', 'Gāndhīdhām', 'IN', 'http://www.childhealthfoundation.net/', 'https://openalex.org/I4210143777', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2246, 'Jehangir Clinical development Centre', 'Pune', 'IN', 'http://jcdc.co.in/#', 'https://openalex.org/I4210165483', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2247, 'Himalayan Institute Hospital Trust', 'Dehra Dūn', 'IN', 'http://hihtindia.org/', 'https://openalex.org/I4210115474', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2248, 'Uttar Pradesh Rajarshi Tandon Open University', 'Prayagraj', 'IN', NULL, 'https://openalex.org/I4210153737', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2249, 'NTPC Consultancy (India)', 'Noida', 'IN', 'http://www.ntpc.co.in/en/', 'https://openalex.org/I4210096798', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2250, 'Advanced Center for Water Resources Development and Management', 'Pune', 'IN', 'http://www.acwadam.org/', 'https://openalex.org/I4210159060', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2251, 'International College of Nutrition', 'Morādābād', 'IN', 'http://icnhealthfoods.com/', 'https://openalex.org/I4210164002', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2252, 'School of Social Work Roshni Nilaya', 'Mangalore', 'IN', 'http://www.sswroshni.in/eng/', 'https://openalex.org/I3130842655', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2253, 'Ajmal College of Arts and Science', 'Dhubri', 'IN', 'http://acasdhubri.ajmalgroupofcolleges.org/', 'https://openalex.org/I4210089037', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2254, 'Sinha Institute of Medical Science & Technology', 'Kolkata', 'IN', NULL, 'https://openalex.org/I4210162677', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2255, 'Chameli Devi Institute of Pharmacy', 'Indore', 'IN', NULL, 'https://openalex.org/I4210162688', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2256, 'Veeda Clinical Research (India)', 'Ahmedabad', 'IN', 'https://veedacr.com/', 'https://openalex.org/I4210164969', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2257, 'Vedic Lifesciences (India)', 'Mumbai', 'IN', 'http://www.vediclifesciences.com', 'https://openalex.org/I4210101592', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2258, 'CUTS International', 'Jaipur', 'IN', 'http://www.cuts-international.org/', 'https://openalex.org/I4210130568', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2259, 'Kalam Institute of Health Technology', 'Visakhapatnam', 'IN', 'https://kiht.in/', 'https://openalex.org/I4210130604', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2260, 'Uttarakhand Forest Department', 'Dehra Dūn', 'IN', 'http://www.forest.uk.gov.in/', 'https://openalex.org/I4210142984', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2261, 'OmniActive Health Technologies (India)', 'Mumbai', 'IN', 'http://omniactives.com/', 'https://openalex.org/I4210146098', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2262, 'Ministry of Electronics and Information Technology', 'New Delhi', 'IN', 'https://www.meity.gov.in', 'https://openalex.org/I4210121746', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2263, 'Biotronik (India)', 'New Delhi', 'IN', 'https://www.biotronik.com/en-sea', 'https://openalex.org/I4210127419', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2264, 'Inlaks & Budhrani Hospital', 'Pune', 'IN', 'http://www.inlaksbudhranihospital.com/', 'https://openalex.org/I4210136549', 0, '2025-11-30 04:35:33', '2025-11-30 04:35:33'),
(2265, 'Grewal Eye Institute', 'Chandigarh', 'IN', 'http://www.gei.co.in/', 'https://openalex.org/I4210103007', 0, '2025-11-30 04:35:34', '2025-11-30 04:35:34'),
(2266, 'Life Care Institute of Medical Sciences & Research', 'Ahmedabad', 'IN', 'http://www.lifecare.co.in/', 'https://openalex.org/I4210103278', 0, '2025-11-30 04:35:34', '2025-11-30 04:35:34'),
(2267, 'Biotechnology Industry Research Assistance Council', 'New Delhi', 'IN', 'http://www.birac.nic.in/', 'https://openalex.org/I4210161818', 0, '2025-11-30 04:35:34', '2025-11-30 04:35:34'),
(2268, 'Vimta (India)', 'Hyderabad', 'IN', 'http://www.vimta.com/', 'https://openalex.org/I4210103938', 0, '2025-11-30 04:35:34', '2025-11-30 04:35:34'),
(2269, 'Dr V Seshiah Diabetes Research Institute', 'Chennai', 'IN', 'http://drbalaji.org/', 'https://openalex.org/I4210111690', 0, '2025-11-30 04:35:34', '2025-11-30 04:35:34'),
(2270, 'Mankind Pharma (India)', 'New Delhi', 'IN', 'https://www.mankindpharma.com/', 'https://openalex.org/I4210096665', 0, '2025-11-30 04:35:34', '2025-11-30 04:35:34'),
(2271, 'Bodyline Hospitals', 'Ahmedabad', 'IN', 'http://www.bodylinehospitals.com', 'https://openalex.org/I4210114606', 0, '2025-11-30 04:35:34', '2025-11-30 04:35:34'),
(2272, 'National Museum New Delhi', 'New Delhi', 'IN', 'http://www.nationalmuseumindia.gov.in/', 'https://openalex.org/I4210125305', 0, '2025-11-30 04:35:34', '2025-11-30 04:35:34'),
(2273, 'Fortis C-DOC Hospital', 'New Delhi', 'IN', 'https://www.fortiscdoc.com/', 'https://openalex.org/I4210140079', 0, '2025-11-30 04:35:34', '2025-11-30 04:35:34'),
(2274, 'Shri A.M.M. Murugappa Chettiar Research Centre', 'Chennai', 'IN', 'http://www.amm-mcrc.org/', 'https://openalex.org/I4210152587', 0, '2025-11-30 04:35:34', '2025-11-30 04:35:34'),
(2275, 'Tamil Nadu Horticulture University', 'Coimbatore', 'IN', NULL, 'https://openalex.org/I4210161674', 0, '2025-11-30 04:35:34', '2025-11-30 04:35:34'),
(2276, 'Chellaram Hospital', 'Pune', 'IN', 'https://www.cdi.org.in/', 'https://openalex.org/I4210089518', 0, '2025-11-30 04:35:34', '2025-11-30 04:35:34'),
(2277, 'Sir Takhtasinhji General Hospital', 'Bhavnagar', 'IN', 'http://sirthospital.org/', 'https://openalex.org/I4210118212', 0, '2025-11-30 04:35:34', '2025-11-30 04:35:34'),
(2278, 'National Institute of Financial Management', 'Faridabad', 'IN', 'https://www.ajnifm.ac.in', 'https://openalex.org/I4210122998', 0, '2025-11-30 04:35:34', '2025-11-30 04:35:34'),
(2279, 'Trichur Heart Hospital', 'Thrissur', 'IN', 'http://sunmedicalcentre.com/', 'https://openalex.org/I4210133383', 0, '2025-11-30 04:35:34', '2025-11-30 04:35:34'),
(2280, 'Nference (India)', 'Bengaluru', 'IN', 'https://nference.ai/', 'https://openalex.org/I4210143844', 0, '2025-11-30 04:35:34', '2025-11-30 04:35:34'),
(2281, 'Government Ayurvedic College and Hospital Osmanabad', 'Osmanabad', 'IN', 'http://gacosbd.edu.in/', 'https://openalex.org/I4210149201', 0, '2025-11-30 04:35:34', '2025-11-30 04:35:34'),
(2282, 'Department of Scientific and Industrial Research', 'New Delhi', 'IN', 'http://dsir.csir.res.in/webdsir/', 'https://openalex.org/I4210153020', 0, '2025-11-30 04:35:34', '2025-11-30 04:35:34'),
(2283, 'Child In Need Institute', 'Kolkata', 'IN', 'http://www.cini-india.org/', 'https://openalex.org/I2800755755', 0, '2025-11-30 04:35:34', '2025-11-30 04:35:34'),
(2284, 'Apollo KH Hospital', 'Vellore', 'IN', 'http://www.apollokh.com/', 'https://openalex.org/I2899992517', 0, '2025-11-30 04:35:34', '2025-11-30 04:35:34'),
(2285, 'Indian Institute of Mass Communication', 'New Delhi', 'IN', 'http://www.iimc.nic.in/', 'https://openalex.org/I3132921910', 0, '2025-11-30 04:35:34', '2025-11-30 04:35:34'),
(2286, 'CanKids KidsCan', 'Delhi', 'IN', 'http://www.cankidsindia.org/', 'https://openalex.org/I4210093120', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2287, 'Jindal Naturecure Institute', 'Bengaluru', 'IN', 'http://www.jindalnaturecure.in/', 'https://openalex.org/I4210141152', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2288, 'MSN Laboratories (India)', 'Hyderabad', 'IN', 'http://www.msnlabs.com/', 'https://openalex.org/I4210143183', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2289, 'National School of Leadership', 'Pune', 'IN', 'http://www.nsl.ac.in/', 'https://openalex.org/I3130603999', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2290, 'LifeForce Homoeopathy (India)', 'Mumbai', 'IN', 'http://www.lifeforce.in/', 'https://openalex.org/I4210110137', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2291, 'Allergan (India)', 'Bengaluru', 'IN', 'http://www.allergan.com/about/global-locations/countries/india', 'https://openalex.org/I4210115611', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2292, 'Dr. Kovil\'s Diabetes Care Centre', 'Mumbai', 'IN', 'http://www.diabetesmumbai.com/', 'https://openalex.org/I4210148244', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2293, 'Prashanti Cancer Care Mission', 'Pune', 'IN', 'https://www.prashanticancercare.org/', 'https://openalex.org/I4210149123', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2294, 'Maharaja Chhatrasal Bundelkhand University', 'Chhatarpur', 'IN', 'http://www.mchhatrasaluniversity.com/mch/index.php', 'https://openalex.org/I4210151682', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2295, 'Sasken (India)', 'Bengaluru', 'IN', 'https://www.sasken.com/', 'https://openalex.org/I4210156143', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2296, 'Bapu Nature Cure Hospital & Yogashram', 'New Delhi', 'IN', 'http://bnchy.org/', 'https://openalex.org/I4210096406', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2297, 'Department of Animal Husbandry and Veterinary', 'Aizawl', 'IN', 'https://ahvety.mizoram.gov.in/', 'https://openalex.org/I4210114729', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2298, 'Dr. B.L. Kapur Memorial Hospital', 'Ludhiana', 'IN', 'http://www.blkapurhospital.com/', 'https://openalex.org/I4210149795', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2299, 'Nilamber Pitamber University', 'Medininagar', 'IN', 'http://npu.ac.in/', 'https://openalex.org/I3133043454', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2300, 'Institute of Social Studies Trust', 'New Delhi', 'IN', 'https://www.isstindia.org/', 'https://openalex.org/I4210112438', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2301, 'Centre for the Study of Culture and Society', 'Bengaluru', 'IN', 'http://cscs.res.in', 'https://openalex.org/I4210145345', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2302, 'IDBI Bank', 'Mumbai', 'IN', 'https://www.idbibank.in/i', 'https://openalex.org/I4210154495', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2303, 'West Bengal Green Energy Development Corporation (India)', 'Kolkata', 'IN', 'http://www.wbgedcl.in/', 'https://openalex.org/I4210087359', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2304, 'Ministry of Social Justice and Empowerment', 'New Delhi', 'IN', 'http://socialjustice.nic.in/', 'https://openalex.org/I4210111704', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2305, 'Claims (India)', 'Mumbai', 'IN', 'http://www.claimscro.com', 'https://openalex.org/I4210132786', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2306, 'MSD (India)', 'Mumbai', 'IN', 'http://www.msdindia.in/home/', 'https://openalex.org/I4210166352', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2307, 'Mathura Das Mathur Hospital', 'Jodhpur', 'IN', 'http://www.education.rajasthan.gov.in/content/raj/education/dr--sampurnanand-medical-college--jodhpur/en/about-us/hospital/mathura-das-mathur-hospital.html', 'https://openalex.org/I2799540789', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2308, 'Karnataka State Law University', 'Hubli', 'IN', 'http://www.kslu.ac.in/', 'https://openalex.org/I2799975053', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2309, 'Kavikulaguru Kalidas Sanskrit University', 'Rāmtek', 'IN', 'http://kksu.org/', 'https://openalex.org/I4210106301', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2310, 'Krishna Maternity and Surgical Nursing Home', 'Ahmedabad', 'IN', 'http://krishnamaternity.com/', 'https://openalex.org/I4210119082', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2311, 'SoftTeam Solutions (India)', 'Chennai', 'IN', 'http://softteam.com/aboutus.html', 'https://openalex.org/I4210092731', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2312, 'Meher Hospitals', 'Vijayawada', 'IN', 'http://drmeher.com/', 'https://openalex.org/I4210114715', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2313, 'Desun Hospital & Heart Institute', 'Kolkata', 'IN', 'http://www.desunhospital.com/index.php', 'https://openalex.org/I4210120189', 0, '2025-11-30 04:35:35', '2025-11-30 04:35:35'),
(2314, 'SuVi Eye Institute and Lasik Laser Center', 'Kota', 'IN', 'https://www.suvieyehospital.com/', 'https://openalex.org/I4210130495', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2315, 'National Institute of Open Schooling', 'Noida', 'IN', 'http://www.nios.ac.in/', 'https://openalex.org/I3132744166', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2316, 'Spectrum Clinical Research (India)', 'Mumbai', 'IN', 'http://www.spectrumcr.com/', 'https://openalex.org/I4210096120', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2317, 'Procter & Gamble (India)', 'Mumbai', 'IN', 'https://www.pg.com/en_IN/', 'https://openalex.org/I4210102648', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2318, 'Swarnabhoomi Academy of Music', 'Kanchipuram', 'IN', 'http://sam.org.in/', 'https://openalex.org/I4210103656', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2319, 'TLM Shahdara Hospital', 'New Delhi', 'IN', 'https://www.leprosymission.in/what-we-do/institutions-and-projects/hospitals/tlm-shahdara-hospital/', 'https://openalex.org/I4210142617', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2320, 'Nestlé (India)', 'Gurgaon', 'IN', 'https://www.nestle.in', 'https://openalex.org/I4210151773', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2321, 'Kannada University', 'Hampi', 'IN', 'http://www.kannadauniversity.org/', 'https://openalex.org/I3129611220', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2322, 'Veterinary Biological and Research Institute', 'Hyderabad', 'IN', 'http://tgahd.nic.in/premier/vbri.html', 'https://openalex.org/I4210113335', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2323, 'Vivekananda Institute of Biotechnology', 'Jaynagar-Majilpur', 'IN', 'https://vibsran.webs.com/', 'https://openalex.org/I4210115007', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2324, 'Directorate of Health and Family Welfare Government of Chhattisgarh', 'Raipur', 'IN', 'http://cghealth.nic.in/dhs/index.html', 'https://openalex.org/I4210120812', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2325, 'Cliantha (India)', 'Ahmedabad', 'IN', 'http://www.cliantha.in/', 'https://openalex.org/I4210123727', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2326, 'Bharath Hospital & Institute of Oncology', 'Mysore', 'IN', 'http://www.bharathcancerhospital.com/', 'https://openalex.org/I4210128023', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2327, 'Krishi Vigyan Kendra, Karda', 'Risod', 'IN', 'http://www.kvkwashim.com/', 'https://openalex.org/I4210160580', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2328, 'Damodaram Sanjivayya National Law University', 'Visakhapatnam', 'IN', 'https://dsnlu.ac.in/', 'https://openalex.org/I2802767510', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2329, 'Shri Lal Bahadur Shastri Rashtriya Sanskrit Vidyapeetha', 'New Delhi', 'IN', 'http://www.slbsrsv.ac.in/Vidyapeetha.asp', 'https://openalex.org/I2889714354', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2330, 'VRR Diagnostic Services (India)', 'Chennai', 'IN', 'http://www.vrrdiagnostics.in/', 'https://openalex.org/I4210119803', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2331, 'Catholic Health Association of India', 'Secunderabad', 'IN', 'http://chai-india.org/', 'https://openalex.org/I4210144763', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2332, 'Suyash Hospital', 'Indore', 'IN', 'http://suyashhospital.com/', 'https://openalex.org/I4210164995', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2333, 'Semler Research Center (India)', 'Bengaluru', 'IN', 'http://semlerresearch.com/', 'https://openalex.org/I4210093043', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2334, 'Techno Global University', 'Shillong', 'IN', 'http://technoglobaluniversity.com/', 'https://openalex.org/I4210101339', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2335, 'Gurukul School of Design', 'Jaipur', 'IN', 'https://www.gurukulschoolofdesign.com/', 'https://openalex.org/I4210124073', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2336, 'All India Management Association', 'New Delhi', 'IN', 'https://www.aima.in/', 'https://openalex.org/I2801239737', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2337, 'DST Centre for Policy Research', 'Lucknow', 'IN', 'http://cprbbau.org.in/', 'https://openalex.org/I4210093969', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2338, 'LG (India)', 'Gurgaon', 'IN', 'http://lglsi.com/', 'https://openalex.org/I4210092541', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2339, 'Medtronic (India)', 'Mumbai', 'IN', 'http://www.medtronic.com/in-en/index.html?intcmp=mdt_com_country_selector_dropdown_atlasr22017', 'https://openalex.org/I4210097734', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2340, 'Alzheimer\'s and Related Disorders Society of India', 'New Delhi', 'IN', 'http://www.ardsi.org/', 'https://openalex.org/I4210146099', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2341, 'Amneal (India)', 'Ahmedabad', 'IN', 'http://www.amneal.co.in/', 'https://openalex.org/I4210093984', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2342, 'Maharishi Mahesh Yogi Vedic University', 'Murwāra', 'IN', 'http://www.mmyvv.com/index.htm', 'https://openalex.org/I4210117630', 0, '2025-11-30 04:35:36', '2025-11-30 04:35:36'),
(2343, 'Dhathri Ayurveda (India)', 'Kochi', 'IN', 'http://www.dhathri.com/', 'https://openalex.org/I4210118233', 0, '2025-11-30 04:35:37', '2025-11-30 04:35:37'),
(2344, 'Defence Avionics Research Establishment', 'Bengaluru', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/defence-avionics-research-establishment-dare', 'https://openalex.org/I4210119213', 0, '2025-11-30 04:35:37', '2025-11-30 04:35:37'),
(2345, 'JK Agri Genetics (India)', 'Hyderabad', 'IN', 'http://www.jkseeds.net/jk/index.php', 'https://openalex.org/I4210125235', 0, '2025-11-30 04:35:37', '2025-11-30 04:35:37'),
(2346, 'Zensa Hospital', 'Thiruvananthapuram', 'IN', NULL, 'https://openalex.org/I4210166164', 0, '2025-11-30 04:35:37', '2025-11-30 04:35:37'),
(2347, 'Umrao Hospital', 'Mumbai', 'IN', 'http://www.umraohospitals.com/', 'https://openalex.org/I2800941145', 0, '2025-11-30 04:35:37', '2025-11-30 04:35:37'),
(2348, 'Nalanda Open University', 'Patna', 'IN', 'http://www.nalandaopenuniversity.com/', 'https://openalex.org/I4210129035', 0, '2025-11-30 04:35:37', '2025-11-30 04:35:37'),
(2349, 'Charnock Hospital', 'Kolkata', 'IN', 'http://www.charnockhospital.com/', 'https://openalex.org/I4210136337', 0, '2025-11-30 04:35:37', '2025-11-30 04:35:37'),
(2350, 'NexusCRO (India)', 'Navi Mumbai', 'IN', 'http://www.nexuscro.com/', 'https://openalex.org/I4210160506', 0, '2025-11-30 04:35:37', '2025-11-30 04:35:37'),
(2351, 'Niramaya Hospital', 'Pune', 'IN', 'http://www.niramayahospital.com/', 'https://openalex.org/I4210090051', 0, '2025-11-30 04:35:37', '2025-11-30 04:35:37'),
(2352, 'Shridhar University', 'Pilāni', 'IN', 'http://www.shridharuniversity.org.in/#', 'https://openalex.org/I4210126289', 0, '2025-11-30 04:35:37', '2025-11-30 04:35:37'),
(2353, 'Human Factors International (India)', 'Mumbai', 'IN', 'http://www.humanfactors.com/', 'https://openalex.org/I4210136352', 0, '2025-11-30 04:35:37', '2025-11-30 04:35:37'),
(2354, 'AIDS Society of India', 'Mumbai', 'IN', 'http://asi-asicon.org/', 'https://openalex.org/I4210158149', 0, '2025-11-30 04:35:37', '2025-11-30 04:35:37'),
(2355, 'Foundation for Neglected Disease Research', 'Bengaluru', 'IN', 'https://fndr.in/', 'https://openalex.org/I4210160732', 0, '2025-11-30 04:35:37', '2025-11-30 04:35:37'),
(2356, 'Sujata Birla Hospital and Medical Research Center', 'Pune', 'IN', 'http://www.sujatabirlahospital.com/', 'https://openalex.org/I4210092586', 0, '2025-11-30 04:35:37', '2025-11-30 04:35:37'),
(2357, 'Animal Resources Development Department', 'Agartala', 'IN', 'https://ardd.tripura.gov.in/', 'https://openalex.org/I4210096202', 0, '2025-11-30 04:35:37', '2025-11-30 04:35:37'),
(2358, 'Jain Vishva Bharati University', 'Lādnūn', 'IN', 'http://jvbi.ac.in/', 'https://openalex.org/I4210107301', 0, '2025-11-30 04:35:37', '2025-11-30 04:35:37'),
(2359, 'Xcellon School of Business', 'Ahmedabad', 'IN', 'http://www.xcelloninstitute.com/', 'https://openalex.org/I4210124164', 0, '2025-11-30 04:35:37', '2025-11-30 04:35:37'),
(2360, 'Apollo Cradle For Women & Children', 'Gurgaon', 'IN', 'http://www.thecradlegurgaon.com/', 'https://openalex.org/I4210162555', 0, '2025-11-30 04:35:37', '2025-11-30 04:35:37'),
(2361, 'Merck (India)', 'Mumbai', 'IN', 'http://www.merck.co.in/en/index.html', 'https://openalex.org/I4210165871', 0, '2025-11-30 04:35:37', '2025-11-30 04:35:37'),
(2362, 'Scope e-Knowledge Center (India)', 'Chennai', 'IN', 'http://www.scopeknowledge.com/', 'https://openalex.org/I4210136635', 0, '2025-11-30 04:35:38', '2025-11-30 04:35:38'),
(2363, 'Quazar Technologies (India)', 'New Delhi', 'IN', 'http://quazartech.com/', 'https://openalex.org/I4210139001', 0, '2025-11-30 04:35:42', '2025-11-30 04:35:42'),
(2364, 'Hi Tech BioSciences India (India)', 'Pune', 'IN', 'http://www.htblindia.com/', 'https://openalex.org/I4210143991', 0, '2025-11-30 04:35:42', '2025-11-30 04:35:42'),
(2365, 'NRR Hospital', 'Bengaluru', 'IN', 'http://www.nrrhospital.com/about.html', 'https://openalex.org/I4210145103', 0, '2025-11-30 04:35:42', '2025-11-30 04:35:42'),
(2366, 'Indian National Academy of Engineering', 'New Delhi', 'IN', 'http://inae.in/', 'https://openalex.org/I271325593', 0, '2025-11-30 04:35:42', '2025-11-30 04:35:42'),
(2367, 'ACE Hospital', 'Pune', 'IN', 'http://www.acehospitals.in/', 'https://openalex.org/I4210089047', 0, '2025-11-30 04:35:42', '2025-11-30 04:35:42'),
(2368, 'Baxter (India)', 'Gurgaon', 'IN', 'http://www.baxter.in', 'https://openalex.org/I4210116718', 0, '2025-11-30 04:35:42', '2025-11-30 04:35:42'),
(2369, 'Tamil Virtual Academy', 'Chennai', 'IN', 'http://www.tamilvu.org/', 'https://openalex.org/I4210121043', 0, '2025-11-30 04:35:42', '2025-11-30 04:35:42'),
(2370, 'Liver Foundation West Bengal', 'Kolkata', 'IN', 'http://www.liverfoundation.in/', 'https://openalex.org/I4210135995', 0, '2025-11-30 04:35:42', '2025-11-30 04:35:42'),
(2371, 'Nargis Dutt Memorial Cancer Hospital', 'Solapur', 'IN', 'http://www.ndmch.org/', 'https://openalex.org/I4210140585', 0, '2025-11-30 04:35:42', '2025-11-30 04:35:42'),
(2372, 'Sri Ganapathi Sachchidananda Vagdevi Center', 'Bengaluru', 'IN', 'http://www.sgsvagdevi.org/', 'https://openalex.org/I4210150729', 0, '2025-11-30 04:35:42', '2025-11-30 04:35:42'),
(2373, 'Indian Society of International Law', 'New Delhi', 'IN', 'http://www.isil-aca.org/', 'https://openalex.org/I2802180738', 0, '2025-11-30 04:35:42', '2025-11-30 04:35:42'),
(2374, 'Seribiotechnology Research Laboratory', 'Bengaluru', 'IN', 'http://www.sbrl.res.in/', 'https://openalex.org/I4210098363', 0, '2025-11-30 04:35:42', '2025-11-30 04:35:42'),
(2375, 'Banki College', 'Cuttack', 'IN', 'https://bankicollege.ac.in/', 'https://openalex.org/I4210107397', 0, '2025-11-30 04:35:42', '2025-11-30 04:35:42'),
(2376, 'Sphaera Pharma (India)', 'Gurgaon', 'IN', 'http://www.sphaerapharma.com/', 'https://openalex.org/I4210131840', 0, '2025-11-30 04:35:42', '2025-11-30 04:35:42'),
(2377, 'Action for Autism', 'Delhi', 'IN', 'http://www.autism-india.org/', 'https://openalex.org/I2799944330', 0, '2025-11-30 04:35:42', '2025-11-30 04:35:42'),
(2378, 'Mahindra United World College India', 'Pune', 'IN', 'http://uwcmahindracollege.org/', 'https://openalex.org/I3132940215', 0, '2025-11-30 04:35:43', '2025-11-30 04:35:43'),
(2379, 'Connexios (India)', 'Bengaluru', 'IN', 'http://connexios.com', 'https://openalex.org/I4210105948', 0, '2025-11-30 04:35:43', '2025-11-30 04:35:43'),
(2380, 'International Planned Parenthood Federation', 'New Delhi', 'IN', 'https://www.ippf.org/', 'https://openalex.org/I4210106531', 0, '2025-11-30 04:35:43', '2025-11-30 04:35:43'),
(2381, 'Vasantdada Patil Ayurvedic Medical College & Institute Of Yoga', 'Sangli', 'IN', 'http://vdpacollegesangli.org/', 'https://openalex.org/I4210112119', 0, '2025-11-30 04:35:43', '2025-11-30 04:35:43'),
(2382, 'Vivekananda Memorial Hospital', 'Mysore', 'IN', 'http://svym.org/programs/view/Vivekananda_Memorial_Hospital_Saragur', 'https://openalex.org/I4210091732', 0, '2025-11-30 04:35:43', '2025-11-30 04:35:43'),
(2383, 'Suguna Holdings (India)', 'Coimbatore', 'IN', 'http://www.sugunaholdings.com/', 'https://openalex.org/I4210104737', 0, '2025-11-30 04:35:43', '2025-11-30 04:35:43'),
(2384, 'Monsanto (India)', 'Mumbai', 'IN', 'http://www.monsanto.com/global/in/pages/default.aspx', 'https://openalex.org/I4210111710', 0, '2025-11-30 04:35:43', '2025-11-30 04:35:43'),
(2385, 'Maharashtra Association of Anthropological Sciences', 'Pune', 'IN', 'http://maas.org.in/', 'https://openalex.org/I4210126160', 0, '2025-11-30 04:35:43', '2025-11-30 04:35:43'),
(2386, 'Irrigation Management Training Institute', 'Tiruchchirappalli', 'IN', 'http://www.tamilnaduimti.org/', 'https://openalex.org/I4210150526', 0, '2025-11-30 04:35:43', '2025-11-30 04:35:43'),
(2387, 'Vimhans PrimaMed Super Speciality Hospital', 'New Delhi', 'IN', 'https://www.primamedhospitals.com/', 'https://openalex.org/I3173610708', 0, '2025-11-30 04:35:43', '2025-11-30 04:35:43'),
(2388, 'Icon (India)', 'Chennai', 'IN', 'https://www.iconplc.com/', 'https://openalex.org/I4210089292', 0, '2025-11-30 04:35:43', '2025-11-30 04:35:43'),
(2389, 'Central Armed Police Forces', 'New Delhi', 'IN', 'http://www.mha.nic.in/armedforces', 'https://openalex.org/I4210109851', 0, '2025-11-30 04:35:43', '2025-11-30 04:35:43'),
(2390, 'Shushrusha Citizens\' Co-operative Hospital', 'Mumbai', 'IN', 'http://www.shushrushahospital.org/', 'https://openalex.org/I4210128828', 0, '2025-11-30 04:35:43', '2025-11-30 04:35:43'),
(2391, 'Freedom From Diabetes', 'Pune', 'IN', 'https://www.freedomfromdiabetes.org', 'https://openalex.org/I4210163819', 0, '2025-11-30 04:35:43', '2025-11-30 04:35:43'),
(2392, 'AquAgri Processing Private Limited (India)', 'New Delhi', 'IN', 'http://aquagri.in/', 'https://openalex.org/I4210096117', 0, '2025-11-30 04:35:43', '2025-11-30 04:35:43'),
(2393, 'Catalyst Chemical Industries (India)', 'Malappuram', 'IN', 'http://catalystchemicals.com/', 'https://openalex.org/I4210109954', 0, '2025-11-30 04:35:43', '2025-11-30 04:35:43'),
(2394, 'Thunchath Ezhuthachan Malayalam University', 'Malappuram', 'IN', 'http://malayalamuniversity.edu.in/en/', 'https://openalex.org/I4210120490', 0, '2025-11-30 04:35:44', '2025-11-30 04:35:44'),
(2395, 'Roquette Frères (India)', 'Mumbai', 'IN', 'https://www.roquette.com/', 'https://openalex.org/I4210132361', 0, '2025-11-30 04:35:44', '2025-11-30 04:35:44'),
(2396, 'Society For Development Alternatives', 'New Delhi', 'IN', 'http://www.devalt.org/', 'https://openalex.org/I4210138833', 0, '2025-11-30 04:35:44', '2025-11-30 04:35:44'),
(2397, 'Durbar Mahila Samanwaya Committee', 'Kolkata', 'IN', 'http://durbar.org/', 'https://openalex.org/I117023515', 0, '2025-11-30 04:35:44', '2025-11-30 04:35:44'),
(2398, 'Indian Council of Philosophical Research', 'New Delhi', 'IN', 'http://www.icpr.in/', 'https://openalex.org/I4210089524', 0, '2025-11-30 04:35:44', '2025-11-30 04:35:44'),
(2399, 'Covance (India)', 'Mumbai', 'IN', 'https://www.covance.com/', 'https://openalex.org/I4210112097', 0, '2025-11-30 04:35:44', '2025-11-30 04:35:44'),
(2400, 'Utkal University of Culture', 'Bhubaneswar', 'IN', 'http://uuc.ac.in/', 'https://openalex.org/I4210159837', 0, '2025-11-30 04:35:44', '2025-11-30 04:35:44'),
(2401, 'India HIV/AIDS Alliance', 'New Delhi', 'IN', 'http://www.allianceindia.org/', 'https://openalex.org/I339536765', 0, '2025-11-30 04:35:44', '2025-11-30 04:35:44'),
(2402, 'Eram Scientific Solutions (India)', 'Thiruvananthapuram', 'IN', 'http://www.eramscientific.com/', 'https://openalex.org/I4210098523', 0, '2025-11-30 04:35:44', '2025-11-30 04:35:44'),
(2403, 'Bharat Immunologicals and Biologicals Corporation (India)', 'Bulandshahr', 'IN', 'http://bibcol.in/', 'https://openalex.org/I4210120467', 0, '2025-11-30 04:35:44', '2025-11-30 04:35:44'),
(2404, 'Remidio Innovative Solutions (India)', 'Bengaluru', 'IN', 'http://www.remidio.com/', 'https://openalex.org/I4210126782', 0, '2025-11-30 04:35:44', '2025-11-30 04:35:44'),
(2405, 'IBC Pharmaceuticals (India)', 'Hyderabad', 'IN', 'http://ibcpharma.com/', 'https://openalex.org/I4210156640', 0, '2025-11-30 04:35:44', '2025-11-30 04:35:44'),
(2406, 'MediHope Super Specialty Hospital', 'Bengaluru', 'IN', 'http://www.medihopehospitals.com/', 'https://openalex.org/I4210159432', 0, '2025-11-30 04:35:44', '2025-11-30 04:35:44'),
(2407, 'Montfort Social Institute', 'Hyderabad', 'IN', 'http://msihyd.org/site/', 'https://openalex.org/I4210090915', 0, '2025-11-30 04:35:44', '2025-11-30 04:35:44'),
(2408, 'Kalyani Group (India)', 'Pune', 'IN', 'http://www.kalyanigroup.com/', 'https://openalex.org/I4210126520', 0, '2025-11-30 04:35:44', '2025-11-30 04:35:44'),
(2409, 'Adamas Pharmaceuticals (India)', 'Bengaluru', 'IN', 'https://www.adamaspharma.com/', 'https://openalex.org/I4210127650', 0, '2025-11-30 04:35:44', '2025-11-30 04:35:44'),
(2410, 'British Council', 'New Delhi', 'IN', 'https://www.britishcouncil.in/', 'https://openalex.org/I4210133535', 0, '2025-11-30 04:35:44', '2025-11-30 04:35:44'),
(2411, 'Centre for Environment Concerns', 'Hyderabad', 'IN', 'http://www.cechyd.org/', 'https://openalex.org/I4210088023', 0, '2025-11-30 04:35:44', '2025-11-30 04:35:44'),
(2412, 'Troikaa (India)', 'Ahmedabad', 'IN', 'http://www.troikaa.com', 'https://openalex.org/I4210099231', 0, '2025-11-30 04:35:44', '2025-11-30 04:35:44'),
(2413, 'Anchorage', 'Bengaluru', 'IN', 'http://www.idigitalbridge.org/index.htm', 'https://openalex.org/I4210141321', 0, '2025-11-30 04:35:44', '2025-11-30 04:35:44'),
(2414, 'Becton Dickinson (India)', 'Gurgaon', 'IN', 'http://www.bd.com/en-in', 'https://openalex.org/I4210141434', 0, '2025-11-30 04:35:44', '2025-11-30 04:35:44'),
(2415, 'InsPIRE Network for Environment', 'New Delhi', 'IN', 'http://www.inspirenetwork.org/', 'https://openalex.org/I4210143450', 0, '2025-11-30 04:35:44', '2025-11-30 04:35:44'),
(2416, 'Delhi Integrated Multi-Modal Transit System', 'New Delhi', 'IN', 'http://www.dimts.in/Symposium_on_Public.html', 'https://openalex.org/I4210144328', 0, '2025-11-30 04:35:45', '2025-11-30 04:35:45'),
(2417, 'Aerial Delivery Research and Development Establishment', 'Agra', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/aerial-delivery-research-and-development-establishment-adrde', 'https://openalex.org/I4210147754', 0, '2025-11-30 04:35:45', '2025-11-30 04:35:45'),
(2418, 'Janssen (India)', 'Mumbai', 'IN', 'http://www.janssen.com/india/', 'https://openalex.org/I4210150839', 0, '2025-11-30 04:35:45', '2025-11-30 04:35:45'),
(2419, 'Higher and Technical Education Department', 'Mumbai', 'IN', 'https://htedu.maharashtra.gov.in/en/', 'https://openalex.org/I4210162020', 0, '2025-11-30 04:35:45', '2025-11-30 04:35:45'),
(2420, 'Choithram College of Nursing', 'Indore', 'IN', 'http://www.cconursing.com/', 'https://openalex.org/I4210107190', 0, '2025-11-30 04:35:45', '2025-11-30 04:35:45'),
(2421, 'Punjab State Council for Science & Technology', 'Chandigarh', 'IN', 'http://pscst.gov.in/', 'https://openalex.org/I4210108378', 0, '2025-11-30 04:35:45', '2025-11-30 04:35:45'),
(2422, 'Nidan', 'Patna', 'IN', 'http://nidan.in/', 'https://openalex.org/I4210145935', 0, '2025-11-30 04:35:45', '2025-11-30 04:35:45'),
(2423, 'Keystone Foundation', 'Kotagiri', 'IN', 'http://keystone-foundation.org/', 'https://openalex.org/I4210164723', 0, '2025-11-30 04:35:45', '2025-11-30 04:35:45'),
(2424, 'ICFAI University, Mizoram', 'Aizawl', 'IN', 'https://www.iumizoram.edu.in/', 'https://openalex.org/I4210110686', 0, '2025-11-30 04:35:45', '2025-11-30 04:35:45'),
(2425, 'Athena Infonomics (India)', 'Chennai', 'IN', 'https://www.athenainfonomics.in/', 'https://openalex.org/I4210114135', 0, '2025-11-30 04:35:45', '2025-11-30 04:35:45'),
(2426, 'Accutest (India)', 'Mumbai', 'IN', 'http://accutestglobal.com/', 'https://openalex.org/I4210121074', 0, '2025-11-30 04:35:45', '2025-11-30 04:35:45'),
(2427, 'Inventia (India)', 'Mumbai', 'IN', 'http://www.inventiahealthcare.com/', 'https://openalex.org/I4210142905', 0, '2025-11-30 04:35:45', '2025-11-30 04:35:45'),
(2428, 'Association for Social and Environmental Development', 'Kolkata', 'IN', 'http://www.asedkol.org/', 'https://openalex.org/I4210145663', 0, '2025-11-30 04:35:45', '2025-11-30 04:35:45'),
(2429, 'Apotex (India)', 'Bengaluru', 'IN', 'https://www.apotex.com/in/en', 'https://openalex.org/I4210145985', 0, '2025-11-30 04:35:45', '2025-11-30 04:35:45'),
(2430, 'Association for Rural Development', 'Madurai', 'IN', 'https://ardmadurai.weebly.com/', 'https://openalex.org/I4210157314', 0, '2025-11-30 04:35:45', '2025-11-30 04:35:45'),
(2431, 'Association of Indian Universities', 'Delhi', 'IN', 'http://www.aiu.ac.in/index.asp', 'https://openalex.org/I2800554417', 0, '2025-11-30 04:35:45', '2025-11-30 04:35:45'),
(2432, 'Pain Relief and Palliative Care Society', 'Hyderabad', 'IN', 'http://www.palliativecarepartners.in/', 'https://openalex.org/I4210093809', 0, '2025-11-30 04:35:45', '2025-11-30 04:35:45'),
(2433, 'Astellas Pharma (India)', 'Mumbai', 'IN', 'https://www.astellas.com/in/', 'https://openalex.org/I4210104374', 0, '2025-11-30 04:35:45', '2025-11-30 04:35:45'),
(2434, 'Lotus Labs (India)', 'Bengaluru', 'IN', 'http://www.lotuslabs.com/', 'https://openalex.org/I4210135756', 0, '2025-11-30 04:35:45', '2025-11-30 04:35:45'),
(2435, 'Megafine Pharma (India)', 'Mumbai', 'IN', 'http://www.megafine.in/', 'https://openalex.org/I4210145051', 0, '2025-11-30 04:35:45', '2025-11-30 04:35:45'),
(2436, 'Trust for Advancement of Agricultural Sciences', 'New Delhi', 'IN', 'http://www.taas.in/', 'https://openalex.org/I4210147661', 0, '2025-11-30 04:35:45', '2025-11-30 04:35:45'),
(2437, 'S.R. Kalla Memorial Gastro and General Hospital', 'Jaipur', 'IN', 'http://www.srkallahospital.com/', 'https://openalex.org/I4210150837', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2438, 'Rashtreeya Sikshana Samithi Trust', 'Bengaluru', 'IN', 'http://www.rvinstitutions.com/', 'https://openalex.org/I3195475088', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2439, 'Roche (India)', 'Mumbai', 'IN', 'http://www.rocheindia.com/', 'https://openalex.org/I4210089206', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2440, 'Jackson Laboratories (India)', 'Amritsar', 'IN', 'http://www.jacksonlaboratories.com/', 'https://openalex.org/I4210099591', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2441, 'Fresenius Kabi (India)', 'Gurgaon', 'IN', 'http://www.fresenius-kabi-oncology.com/', 'https://openalex.org/I4210103818', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2442, 'Sheth M. L. Vaduwala Charitable Eye Hospital and Dr. Thakorbhai V. Patel Eye Institute', 'Vadodara', 'IN', 'http://tvpei.org/', 'https://openalex.org/I4210147565', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2443, 'Whirlpool (India)', 'Gurgaon', 'IN', 'http://www.whirlpoolindia.com/', 'https://openalex.org/I4210162508', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2444, 'Foundation for Innovation and Technology Transfer', 'Delhi', 'IN', 'http://fitt-iitd.org/', 'https://openalex.org/I4210119685', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2445, 'Indian Institute of Art & Design', 'Delhi', 'IN', 'https://www.iiad.edu.in/', 'https://openalex.org/I4210133633', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2446, 'Dr. Bidari’s Ashwini Hospital', 'Bijapur', 'IN', 'http://ashwinihospital.org/', 'https://openalex.org/I4210133732', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2447, 'Murugappa (India)', 'Chennai', 'IN', 'http://www.murugappa.com/', 'https://openalex.org/I4210138020', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2448, 'SciGenom Research Foundation', 'Bengaluru', 'IN', 'http://www.sgrf.org/', 'https://openalex.org/I4210139093', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2449, 'Oyster Hospital', 'Goregaon', 'IN', 'http://oysterhospital.com/', 'https://openalex.org/I4210157703', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2450, 'Urban Emissions Info', 'Delhi', 'IN', 'https://urbanemissions.info/', 'https://openalex.org/I4210160135', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2451, 'L\'Oréal (India)', 'Mumbai', 'IN', 'https://www.loreal.co.in/', 'https://openalex.org/I4210161494', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2452, 'Marico (India)', 'Mumbai', 'IN', 'http://marico.com/', 'https://openalex.org/I4210165128', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2453, 'Yerwada Mental Hospital', 'Pune', 'IN', NULL, 'https://openalex.org/I4210167055', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2454, 'Gyan Data (India)', 'Chennai', 'IN', 'http://www.gyandata.com/', 'https://openalex.org/I4210089689', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2455, 'Society for Participatory Research in Asia', 'New Delhi', 'IN', 'http://www.pria.org/', 'https://openalex.org/I4210090629', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2456, 'Church of South India Hospital', 'Bengaluru', 'IN', 'http://csihospitalblr.org/about%20us.htm', 'https://openalex.org/I4210104333', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2457, 'Foundation for Research in Health Systems', 'Delhi', 'IN', 'http://frhsindia.org/', 'https://openalex.org/I4210112831', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2458, 'Kushabhau Thakre Patrakarita Avam Jansanchar University', 'Raipur', 'IN', 'http://www.ktujm.ac.in/', 'https://openalex.org/I4210124674', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2459, 'NLR India', 'New Delhi', 'IN', 'https://www.nlrindia.co.in/', 'https://openalex.org/I4210098760', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2460, 'PepsiCo (India)', 'Gurgaon', 'IN', 'http://www.pepsicoindia.co.in/', 'https://openalex.org/I4210140125', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2461, 'Annaswamy Mudaliar General Hospital', 'Bengaluru', 'IN', 'http://annasawmyhospital.com/', 'https://openalex.org/I4210146976', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2462, 'Sweekaar', 'Secunderabad', 'IN', 'http://sweekaar.org.in/', 'https://openalex.org/I4210088721', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2463, 'Nulife Hospital', 'Delhi', 'IN', 'http://nulifehospital.in/', 'https://openalex.org/I4210115063', 0, '2025-11-30 04:35:46', '2025-11-30 04:35:46'),
(2464, 'The Mining, Geological & Metallurgical Insititute of India', 'Kolkata', 'IN', 'https://www.mgmiindia.in/', 'https://openalex.org/I4210136842', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2465, 'Gateway Group (India)', 'Ahmedabad', 'IN', 'http://www.gatewaytechnolabs.com/', 'https://openalex.org/I4210138748', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2466, 'Institute of Health Studies and Rehabilitation', 'Durgapur', 'IN', 'http://www.iihsr.in/', 'https://openalex.org/I4210162952', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2467, 'Hilleman Laboratories (India)', 'New Delhi', 'IN', 'http://www.hillemanlabs.org/', 'https://openalex.org/I3176327385', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2468, 'Oyster & Pearl Hospital', 'Pune', 'IN', 'http://onphospital.com/', 'https://openalex.org/I4210089579', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2469, 'Drugs for Neglected Diseases Initiative India', 'New Delhi', 'IN', 'https://dndi.org/region/dndi-in-india/', 'https://openalex.org/I4210108327', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2470, 'Cancer Foundation of India', 'Kolkata', 'IN', 'http://www.cancerfoundationofindia.org/', 'https://openalex.org/I4210111345', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2471, 'Guru Ravidas Ayurved University', 'Hoshiārpur', 'IN', 'http://www.graupunjab.org/', 'https://openalex.org/I4210157872', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2472, 'Vehicles Research Development Establishment', 'Ahmednagar', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/vehicle-research-development-establishment-vrde', 'https://openalex.org/I4210086389', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2473, 'GVK (India)', 'Hyderabad', 'IN', 'http://www.gvkbio.com/', 'https://openalex.org/I4210091129', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2474, 'Society for Promoting Participative Ecosystem Management', 'Pune', 'IN', 'https://www.soppecom.org/', 'https://openalex.org/I4210100590', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2475, 'Colgate-Palmolive (India)', 'Mumbai', 'IN', 'https://www.colgatepalmolive.co.in/?gclid=EAIaIQobChMI1OCvlr7D2wIVRIaPCh0piwhdEAAYASAAEgJr-vD_BwE', 'https://openalex.org/I4210100887', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2476, 'Breakthrough Science Society', 'Kolkata', 'IN', 'http://breakthrough-india.org/', 'https://openalex.org/I4210112029', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2477, 'State Council of Science and Technology for Sikkim', 'Gangtok', 'IN', 'http://www.picsikkim.gov.in/html/council1.html', 'https://openalex.org/I4210162586', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2478, 'Anandalok Hospital', 'Kolkata', 'IN', 'http://anandalokhospitalraniganj.com/', 'https://openalex.org/I2800261425', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2479, 'National Institute of Public Cooperation and Child Development', 'New Delhi', 'IN', 'http://nipccd.nic.in/prg.htm', 'https://openalex.org/I4210111463', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2480, 'Amrith Educational and Cultural Society', 'Bengaluru', 'IN', 'http://www.aecsgroup.in/', 'https://openalex.org/I4210129295', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2481, 'Vyome Biosciences (India)', 'New Delhi', 'IN', 'http://www.vyome.in/', 'https://openalex.org/I4210145574', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2482, 'Nightingales Medical Trust', 'Bengaluru', 'IN', 'http://www.nightingaleseldercare.com/', 'https://openalex.org/I4210091438', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2483, 'Society for Research and Initiatives for Sustainable Technologies and Institutions', 'Ahmedabad', 'IN', 'http://www.sristi.org/', 'https://openalex.org/I4210101838', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2484, 'Sampurnanand Sanskrit Vishwavidyalaya', 'Varanasi', 'IN', 'http://www.ssvv.ac.in/', 'https://openalex.org/I4210102817', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2485, 'Ayurvet Research Foundation', 'New Delhi', 'IN', 'https://www.ayurvetresearchfoundation.com/', 'https://openalex.org/I4210112002', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2486, 'Vaatsalya Healthcare', 'Bengaluru', 'IN', 'http://vaatsalya.com/2014backup/', 'https://openalex.org/I4210116498', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2487, 'Arthur Asirvatham Hospital', 'Madurai', 'IN', 'http://www.arthurasirvathamhospital.org/', 'https://openalex.org/I4210141741', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2488, 'Global Open University', 'Dimāpur', 'IN', 'http://www.nagaland.net.in/', 'https://openalex.org/I2799813086', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2489, 'Christian Medical Association of India', 'New Delhi', 'IN', 'http://cmai.org/', 'https://openalex.org/I2799928893', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2490, 'Tibetan Delek Hospital', 'Dharamsala', 'IN', 'http://www.delekhospital.org/delek', 'https://openalex.org/I2801592862', 0, '2025-11-30 04:35:47', '2025-11-30 04:35:47'),
(2491, 'Kumar Bhaskar Varma Sanskrit and Ancient Studies University', 'Dispur', 'IN', 'http://www.kbvsasun.ac.in', 'https://openalex.org/I3131583369', 0, '2025-11-30 04:35:48', '2025-11-30 04:35:48'),
(2492, 'Valagro (India)', 'Hyderabad', 'IN', 'https://www.valagro.com/india/en/corporate/group/', 'https://openalex.org/I4210091284', 0, '2025-11-30 04:35:48', '2025-11-30 04:35:48'),
(2493, 'Auroville Foundation', 'Auroville', 'IN', 'http://aurovillefoundation.org.in/', 'https://openalex.org/I4210113401', 0, '2025-11-30 04:35:48', '2025-11-30 04:35:48'),
(2494, 'Sharma Centre for Heritage Education India', 'Chennai', 'IN', 'http://www.sharmaheritage.com/', 'https://openalex.org/I4210132897', 0, '2025-11-30 04:35:48', '2025-11-30 04:35:48'),
(2495, 'Target Institute of Medical Education & Research', 'Mumbai', 'IN', 'http://www.targetinstitute.in/', 'https://openalex.org/I4210137172', 0, '2025-11-30 04:35:48', '2025-11-30 04:35:48'),
(2496, 'Centre for Health and Social Justice', 'New Delhi', 'IN', 'http://www.chsj.org/', 'https://openalex.org/I4210148754', 0, '2025-11-30 04:35:48', '2025-11-30 04:35:48'),
(2497, 'BioGenex (India)', 'Hyderabad', 'IN', 'http://biogenex.com/', 'https://openalex.org/I4210152521', 0, '2025-11-30 04:35:48', '2025-11-30 04:35:48'),
(2498, 'Maulana Mazharul Haque Arabic and Persian University', 'Patna', 'IN', 'http://mmhapu.bih.nic.in/results.htm', 'https://openalex.org/I4210140461', 0, '2025-11-30 04:35:48', '2025-11-30 04:35:48'),
(2499, 'N. V. Pharma (India)', 'Sinnar', 'IN', 'http://www.nvpharma.net/', 'https://openalex.org/I4210148086', 0, '2025-11-30 04:35:48', '2025-11-30 04:35:48'),
(2500, 'Sri Sai Super Speciality Hospital', 'Morādābād', 'IN', 'http://www.srisaihospital.com/', 'https://openalex.org/I4210150959', 0, '2025-11-30 04:35:48', '2025-11-30 04:35:48'),
(2501, 'Enzen (India)', 'Bengaluru', 'IN', 'https://www.enzen.com/', 'https://openalex.org/I4210151776', 0, '2025-11-30 04:35:48', '2025-11-30 04:35:48'),
(2502, 'Rajiv Gandhi Charitable Trust', 'Delhi', 'IN', 'http://www.rgct.in/', 'https://openalex.org/I4210153926', 0, '2025-11-30 04:35:48', '2025-11-30 04:35:48'),
(2503, 'MicroSave', 'Lucknow', 'IN', 'http://www.microsave.net/', 'https://openalex.org/I4210162516', 0, '2025-11-30 04:35:48', '2025-11-30 04:35:48'),
(2504, 'Peermade Development Society', 'Idukki', 'IN', 'http://www.pdspeermade.com/', 'https://openalex.org/I4210166952', 0, '2025-11-30 04:35:48', '2025-11-30 04:35:48'),
(2505, 'Indian National Trust for Art and Cultural Heritage', 'New Delhi', 'IN', 'http://www.intach.org/', 'https://openalex.org/I2802914827', 0, '2025-11-30 04:35:48', '2025-11-30 04:35:48'),
(2506, 'Iora Ecological Solutions', 'New Delhi', 'IN', 'http://ioraecological.com/', 'https://openalex.org/I4210101831', 0, '2025-11-30 04:35:48', '2025-11-30 04:35:48'),
(2507, 'Berry (India)', 'Vadodara', 'IN', 'http://www.berryplastics.com/', 'https://openalex.org/I4210108415', 0, '2025-11-30 04:35:48', '2025-11-30 04:35:48'),
(2508, 'Fragrance & Flavour Development Centre', 'Kannauj', 'IN', 'http://www.ffdcindia.org', 'https://openalex.org/I4210109303', 0, '2025-11-30 04:35:48', '2025-11-30 04:35:48'),
(2509, 'MS Clinical Research (India)', 'Bengaluru', 'IN', 'http://mscr.in/', 'https://openalex.org/I4210114856', 0, '2025-11-30 04:35:48', '2025-11-30 04:35:48'),
(2510, 'Sama Resource Group for Women and Health', 'New Delhi', 'IN', 'http://www.samawomenshealth.in/', 'https://openalex.org/I4210115565', 0, '2025-11-30 04:35:48', '2025-11-30 04:35:48'),
(2511, 'Hemalata Hospitals and Research Centre', 'Bhubaneswar', 'IN', 'http://www.hemalatahospitals.com/', 'https://openalex.org/I4210121982', 0, '2025-11-30 04:35:48', '2025-11-30 04:35:48'),
(2512, 'Satyajit Ray Film and Television Institute', 'Kolkata', 'IN', 'http://srfti.ac.in/', 'https://openalex.org/I4210135604', 0, '2025-11-30 04:35:48', '2025-11-30 04:35:48'),
(2513, 'TOTALL Diabetes Hormone Institute', 'Indore', 'IN', 'http://www.totall.in/', 'https://openalex.org/I4210142947', 0, '2025-11-30 04:35:48', '2025-11-30 04:35:48'),
(2514, 'DJ Academy of Design', 'Coimbatore', 'IN', 'https://www.djad.in/', 'https://openalex.org/I4210092154', 0, '2025-11-30 04:35:48', '2025-11-30 04:35:48'),
(2515, 'Opto Circuits (India)', 'Bengaluru', 'IN', 'http://www.optoindia.com/', 'https://openalex.org/I4210122373', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2516, 'Bharti Centre for Communication', 'Mumbai', 'IN', 'https://www.ee.iitb.ac.in/bharticentre/index.html', 'https://openalex.org/I4210144315', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2517, 'Centre for World Solidarity', 'Secunderabad', 'IN', 'http://www.cwsy.org/', 'https://openalex.org/I4210150152', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49');
INSERT INTO `institutions` (`id`, `name`, `city`, `country`, `website`, `domain`, `is_verified`, `created_at`, `updated_at`) VALUES
(2518, 'Niramaya Healthcare', 'Jaipur', 'IN', 'https://arthritiscarejaipur.com/', 'https://openalex.org/I4210158098', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2519, 'The Bhandarkar Oriental Research Institute', 'Pune', 'IN', 'http://www.bori.ac.in', 'https://openalex.org/I4210088482', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2520, 'Forum for Ethics Review Committees in India', 'Mumbai', 'IN', 'http://ferci.org/', 'https://openalex.org/I4210101256', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2521, 'Consortium for DEWATS Dissemination Society', 'Bengaluru', 'IN', 'http://www.cddindia.org/', 'https://openalex.org/I4210112680', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2522, 'Institute of Health Management Pachod', 'Pune', 'IN', 'http://www.ihmp.org/', 'https://openalex.org/I4210115563', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2523, 'World Health Partners', 'New Delhi', 'IN', 'http://whpindia.org/', 'https://openalex.org/I4210121624', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2524, 'Transport Corporation of India (India)', 'Gurgaon', 'IN', 'http://www.tcil.com/tcil/', 'https://openalex.org/I4210129039', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2525, 'Father Muller Charitable Institutions', 'Mangalore', 'IN', 'http://fathermuller.edu.in/', 'https://openalex.org/I4210149022', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2526, 'Karma Healthcare', 'Udaipur', 'IN', 'http://karmahealthcare.in/', 'https://openalex.org/I4210152174', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2527, 'Kerala Museum', 'Kochi', 'IN', 'https://www.keralamuseum.org/', 'https://openalex.org/I4210111044', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2528, 'Caplin Point Laboratories (India)', 'Chennai', 'IN', 'http://caplinpoint.net/', 'https://openalex.org/I4210119521', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2529, 'Ministry of Urban Development', 'New Delhi', 'IN', 'http://moud.gov.in/', 'https://openalex.org/I4210139413', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2530, 'International Clinical Epidemiology Network', 'New Delhi', 'IN', 'https://inclentrust.org/inclen/', 'https://openalex.org/I4210085937', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2531, 'Dakshina Bharat Hindi Prachar Sabha', 'Chennai', 'IN', 'http://www.dbhpscentral.org/', 'https://openalex.org/I4210087121', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2532, 'Sarvodaya Fertility & IVF Centre', 'New Delhi', 'IN', 'http://sarvodayafertilityandivfcentre.com/', 'https://openalex.org/I4210092115', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2533, 'Kalakshetra Foundation', 'Chennai', 'IN', 'http://www.kalakshetra.in/site/', 'https://openalex.org/I4210096210', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2534, 'Manjara Ayurvedic Medical College and Hospital', 'Latur', 'IN', 'http://www.mamchlatur.com/', 'https://openalex.org/I4210098555', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2535, 'Bal Umang Drishya Sanstha', 'New Delhi', 'IN', 'http://www.buds.in/', 'https://openalex.org/I4210116716', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2536, 'Calyx (India)', 'Mumbai', 'IN', 'http://calyx-pharma.com/', 'https://openalex.org/I4210117276', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2537, 'Centre for Conservation Biology & Sustainable Development', 'Sirsi', 'IN', 'http://www.ccbsd.com/', 'https://openalex.org/I4210124027', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2538, 'National Archives of India', 'New Delhi', 'IN', 'http://nationalarchives.nic.in/', 'https://openalex.org/I4210140375', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2539, 'Resource Optimization Initiative', 'Bengaluru', 'IN', 'http://www.roionline.org/', 'https://openalex.org/I4210141895', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2540, 'PriMove Infrastructure Development Consultants (India)', 'Pune', 'IN', 'http://www.primoveindia.com/', 'https://openalex.org/I4210154525', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2541, 'Tata Teleservices (India)', 'Mumbai', 'IN', 'http://www.tatateleservices.com/', 'https://openalex.org/I2802144689', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2542, 'Anveshi Research Centre for Women\'s Studies', 'Hyderabad', 'IN', 'http://www.anveshi.org.in/', 'https://openalex.org/I4210086030', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2543, 'Bharti Foundation', 'Gurgaon', 'IN', 'http://www.bhartifoundation.org/wps/wcm/connect/bhartifoundation/BhartiFoundation/Home/', 'https://openalex.org/I4210086215', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2544, 'Indira Kala Sangeet University', 'Khairāgarh', 'IN', 'http://www.iksv.ac.in/', 'https://openalex.org/I4210141909', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2545, 'Sir Ivan Stedeford Hospital', 'Chennai', 'IN', 'http://www.stedefordhospital.org/', 'https://openalex.org/I4210086010', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2546, 'HHV Solar Technologies (India)', 'Nelamangala', 'IN', 'http://www.hhvsolar.com/', 'https://openalex.org/I4210106290', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2547, 'Department of Pharmaceuticals', 'New Delhi', 'IN', 'http://pharmaceuticals.gov.in/', 'https://openalex.org/I4210108830', 0, '2025-11-30 04:35:49', '2025-11-30 04:35:49'),
(2548, 'Advanced Centre for Energetic Materials', 'Nashik', 'IN', 'https://www.drdo.gov.in/hi/labs-and-establishments/advanced-centre-energetic-materials-acem', 'https://openalex.org/I4210130659', 0, '2025-11-30 04:35:50', '2025-11-30 04:35:50'),
(2549, 'Vanivilas Women and Children Hospital', 'Bengaluru', 'IN', 'http://www.vanivilashospital.in/', 'https://openalex.org/I4210134478', 0, '2025-11-30 04:35:50', '2025-11-30 04:35:50'),
(2550, 'Ministry of Women and Child Development', 'New Delhi', 'IN', 'http://www.wcd.nic.in/', 'https://openalex.org/I4210135421', 0, '2025-11-30 04:35:50', '2025-11-30 04:35:50'),
(2551, 'Population Foundation of India', 'New Delhi', 'IN', 'http://populationfoundation.in/', 'https://openalex.org/I4210141845', 0, '2025-11-30 04:35:50', '2025-11-30 04:35:50'),
(2552, 'Olive Lifesciences (India)', 'Bengaluru', 'IN', 'https://www.olivelifesciences.com/', 'https://openalex.org/I4210145374', 0, '2025-11-30 04:35:50', '2025-11-30 04:35:50'),
(2553, 'Antrix Corporation (India)', 'Bengaluru', 'IN', 'http://www.antrix.gov.in/', 'https://openalex.org/I2800086464', 0, '2025-11-30 04:35:50', '2025-11-30 04:35:50'),
(2554, 'HelpAge India', 'New Delhi', 'IN', 'http://www.helpageindia.org/', 'https://openalex.org/I2800123302', 0, '2025-11-30 04:35:50', '2025-11-30 04:35:50'),
(2555, 'Rajiv Gandhi Foundation', 'New Delhi', 'IN', 'http://rgfindia.org/', 'https://openalex.org/I2800824377', 0, '2025-11-30 04:35:50', '2025-11-30 04:35:50'),
(2556, 'Indian Institute of Journalism and New Media', 'Bengaluru', 'IN', 'https://www.iijnm.org/', 'https://openalex.org/I3132582287', 0, '2025-11-30 04:35:50', '2025-11-30 04:35:50'),
(2557, 'Jagadguru Rambhadracharya Handicapped University', 'Chitrakoot', 'IN', 'https://jrhu.com/', 'https://openalex.org/I3133225825', 0, '2025-11-30 04:35:50', '2025-11-30 04:35:50'),
(2558, 'Lawyers Collective', 'New Delhi', 'IN', 'https://www.lawyerscollective.org/', 'https://openalex.org/I4210090338', 0, '2025-11-30 04:35:50', '2025-11-30 04:35:50'),
(2559, 'Sanskriti Foundation', 'New Delhi', 'IN', 'http://www.sanskritifoundation.org/index.htm', 'https://openalex.org/I4210094591', 0, '2025-11-30 04:35:50', '2025-11-30 04:35:50'),
(2560, 'VNIR Biotechnologies (India)', 'Bengaluru', 'IN', 'http://vnir.life/', 'https://openalex.org/I4210106886', 0, '2025-11-30 04:35:50', '2025-11-30 04:35:50'),
(2561, 'Dangoria Charitable Trust', 'Hyderabad', 'IN', 'http://dangoriatrust.org.in/', 'https://openalex.org/I4210115199', 0, '2025-11-30 04:35:50', '2025-11-30 04:35:50'),
(2562, 'Serdia Pharmaceuticals (India)', 'Mumbai', 'IN', 'http://www.serdiapharma.com/', 'https://openalex.org/I4210121767', 0, '2025-11-30 04:35:54', '2025-11-30 04:35:54'),
(2563, 'Deepak Foundation', 'Vadodara', 'IN', 'https://deepakfoundation.org/', 'https://openalex.org/I4210121893', 0, '2025-11-30 04:35:54', '2025-11-30 04:35:54'),
(2564, 'Innovation Center Denmark', 'New Delhi', 'IN', 'http://icdk.um.dk/', 'https://openalex.org/I4210129452', 0, '2025-11-30 04:35:54', '2025-11-30 04:35:54'),
(2565, 'Arbro Pharmaceuticals (India)', 'New Delhi', 'IN', 'https://arbropharma.com/', 'https://openalex.org/I4210137020', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2566, 'Centre for Equity Studies', 'New Delhi', 'IN', 'http://centreforequitystudies.org/', 'https://openalex.org/I4210145389', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2567, 'RenewSys (India)', 'Bengaluru', 'IN', 'http://www.renewsysworld.com/', 'https://openalex.org/I4210155987', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2568, 'Indian Agricultural Universities Association', 'New Delhi', 'IN', 'http://www.iauaindia.org/', 'https://openalex.org/I4210158565', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2569, 'U.S. Embassy and Consulates in India', 'New Delhi', 'IN', 'https://in.usembassy.gov/', 'https://openalex.org/I4210164403', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2570, 'Potti Sreeramulu Telugu University', 'Hyderabad', 'IN', 'http://teluguuniversity.ac.in/', 'https://openalex.org/I3131516641', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2571, 'Centre for Budget and Governance Accountability', 'Delhi', 'IN', 'http://www.cbgaindia.org/', 'https://openalex.org/I4210097647', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2572, 'Hindustan Bible Institute & College', 'Chennai', 'IN', 'http://www.hbionline.org/#', 'https://openalex.org/I4210135819', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2573, 'Mahila Abhivruddhi Society, Andhra Pradesh', 'Hyderabad', 'IN', 'http://www.apmas.org/', 'https://openalex.org/I4210147341', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2574, 'New India Foundation', 'Bengaluru', 'IN', 'http://newindiafoundation.org/wpr/', 'https://openalex.org/I4210087580', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2575, 'Parkinson’s Disease Foundation of India', 'Mumbai', 'IN', 'http://parkinsonsdiseaseindia.com/', 'https://openalex.org/I4210090144', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2576, 'Krishi Vigyan Kendra, Hingoli', 'Hingoli', 'IN', 'http://kvkhingoli.org/', 'https://openalex.org/I4210096718', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2577, 'Alternative Law Forum', 'Bengaluru', 'IN', 'http://altlawforum.org/', 'https://openalex.org/I4210099645', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2578, 'Society of Energy Engineers and Managers', 'Thiruvananthapuram', 'IN', 'http://seemindia.org', 'https://openalex.org/I4210100982', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2579, 'Catholic Bishops Conference of India', 'Bengaluru', 'IN', 'http://www.cbci.in/', 'https://openalex.org/I4210115692', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2580, 'Water Supply and Sanitation Department', 'Mumbai', 'IN', 'https://water.maharashtra.gov.in/default.aspx', 'https://openalex.org/I4210143994', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2581, 'Sahodaran', 'Chennai', 'IN', 'https://sahodaran.business.site/', 'https://openalex.org/I4210145469', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2582, 'Watershed Support Services and Activities Network', 'Secunderabad', 'IN', 'http://www.wassan.org/', 'https://openalex.org/I4210149890', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2583, 'NM Sadguru Water and Development Foundation', 'Ahmedabad', 'IN', 'http://www.nmsadguru.org/', 'https://openalex.org/I4210152555', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2584, 'Coir Board of India', 'Kochi', 'IN', 'http://coirboard.gov.in/', 'https://openalex.org/I4210163736', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2585, 'Byrraju Foundation', 'Hyderabad', 'IN', 'https://www.byrrajufoundation.org/', 'https://openalex.org/I2800406863', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2586, 'Institute of Town Planners India', 'New Delhi', 'IN', 'http://www.itpi.org.in/', 'https://openalex.org/I4210091698', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2587, 'Malladi Drugs and Pharmaceuticals Limited (India)', 'Chennai', 'IN', 'http://www.malladi.co.in/', 'https://openalex.org/I4210095247', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2588, 'Bhasha', 'Vadodara', 'IN', 'http://www.bhasharesearch.org/', 'https://openalex.org/I4210106938', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2589, 'Tamil Nadu Board of Rural Development', 'Chennai', 'IN', 'http://tnbrdngo.org/', 'https://openalex.org/I4210112391', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2590, 'Tamil Nadu State AIDS Control Society', 'Chennai', 'IN', 'http://www.tnsacs.in/', 'https://openalex.org/I4210117920', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2591, 'NovaLead Pharma (India)', 'Pune', 'IN', 'http://www.novaleadpharma.com/#about', 'https://openalex.org/I4210121419', 0, '2025-11-30 04:35:55', '2025-11-30 04:35:55'),
(2592, 'Society for Labour & Development', 'New Delhi', 'IN', 'http://sldindia.org/', 'https://openalex.org/I4210131495', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2593, 'ICBio (India)', 'Bengaluru', 'IN', 'http://www.icbiocro.com', 'https://openalex.org/I4210141531', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2594, 'QNu Labs (India)', 'Bengaluru', 'IN', 'https://www.qnulabs.com/', 'https://openalex.org/I4210142485', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2595, 'Indian Institute Of Bio social Research And Development', 'Kolkata', 'IN', 'http://www.ibradindia.org/', 'https://openalex.org/I4210143802', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2596, 'Darul Huda Islamic University', 'Malappuram', 'IN', 'http://www.dhiu.in/', 'https://openalex.org/I4210151103', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2597, 'Kraft Heinz (India)', 'Goregaon', 'IN', 'https://www.kraftheinzcompany.com/', 'https://openalex.org/I4210156837', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2598, 'Indus Business Systems (India)', 'Hyderabad', 'IN', 'http://www.indussoftware.com/', 'https://openalex.org/I4210166094', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2599, 'Appropriate Rural Technology Institute', 'Pune', 'IN', 'http://www.arti-india.org/', 'https://openalex.org/I2799598336', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2600, 'Oxford Educational Institutions', 'Bengaluru', 'IN', 'http://www.theoxford.edu/', 'https://openalex.org/I2801583272', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2601, 'Central Board of Secondary Education', 'Delhi', 'IN', 'http://cbseaff.nic.in/', 'https://openalex.org/I2803094843', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2602, 'Tata Sons (India)', 'Mumbai', 'IN', 'http://www.tata.com/company/profile/Tata-Sons', 'https://openalex.org/I4210086519', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2603, 'Indo-French Centre for the Promotion of Advanced Research', 'New Delhi', 'IN', 'http://www.cefipra.org/', 'https://openalex.org/I4210101699', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2604, 'Department of Ocean Development', 'New Delhi', 'IN', 'http://dod.nic.in/', 'https://openalex.org/I4210106419', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2605, 'Moving Academy of Medicine and Biomedicine', 'Pune', 'IN', 'http://movingacademy.in/', 'https://openalex.org/I4210119836', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2606, 'Saaz Genetics (India)', 'Hyderabad', 'IN', 'https://www.saazgenetics.com/', 'https://openalex.org/I4210121418', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2607, 'TAKE Solutions (India)', 'Chennai', 'IN', 'https://www.takesolutions.com/', 'https://openalex.org/I4210124858', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2608, 'Arunachal Pradesh State Council for Science & Technology', 'Itanagar', 'IN', 'http://ardst.arunachal.gov.in/', 'https://openalex.org/I4210125501', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2609, 'MAGJ Hospital', 'Angamāli', 'IN', 'http://magjhospital.org/', 'https://openalex.org/I4210125658', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2610, 'Centre for Operations Research and Training', 'Vadodara', 'IN', 'http://www.cortindia.in/', 'https://openalex.org/I4210127040', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2611, 'Centre For Development Alternatives', 'Ahmedabad', 'IN', 'http://www.cfda.ac.in/', 'https://openalex.org/I4210131772', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2612, 'Enovate Biolife (India)', 'Mumbai', 'IN', 'http://www.enovatebiolife.com', 'https://openalex.org/I4210142326', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2613, 'Asian Academy of Film and Television', 'Noida', 'IN', 'http://aaft.com/', 'https://openalex.org/I4210142877', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2614, 'India International Centre', 'New Delhi', 'IN', 'http://www.iicdelhi.nic.in/', 'https://openalex.org/I2802079887', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2615, 'Amrita Therapeutics (India)', 'Ahmedabad', 'IN', 'http://www.amritatherapeutics.com/', 'https://openalex.org/I4210094927', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2616, 'American Institute of Indian Studies', 'Gurgaon', 'IN', 'https://www.indiastudies.org/', 'https://openalex.org/I4210101505', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2617, 'Naval Research Board', 'New Delhi', 'IN', 'https://www.drdo.gov.in/naval-research-board/about-us', 'https://openalex.org/I4210103641', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2618, 'VGM Gastro Centre', 'Coimbatore', 'IN', 'https://www.vgmgastrocentre.com', 'https://openalex.org/I4210105109', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2619, 'St Anthonys Senior Secondary School', 'Lucknow', 'IN', 'http://sacbbk.hpage.com/', 'https://openalex.org/I4210120966', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2620, 'Praxis Institute for Participatory Practices', 'New Delhi', 'IN', 'http://www.praxisindia.org/', 'https://openalex.org/I4210131757', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2621, 'Matha Ayurveda Eye Hospital', 'Thiruvananthapuram', 'IN', 'https://www.mathahospital.com/', 'https://openalex.org/I4210133170', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2622, 'Dean Foundation', 'Chennai', 'IN', 'http://www.deanfoundation.org/', 'https://openalex.org/I4210144273', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2623, 'Collaborative Clean Air Policy Centre', 'New Delhi', 'IN', 'https://ccapc.org.in/', 'https://openalex.org/I4210147387', 0, '2025-11-30 04:35:56', '2025-11-30 04:35:56'),
(2624, 'Clinton Foundation', 'New Delhi', 'IN', 'https://www.clintonfoundation.org/', 'https://openalex.org/I4210150245', 0, '2025-11-30 04:35:57', '2025-11-30 04:35:57'),
(2625, 'Jagadguru Ramanandacharya Rajasthan Sanskrit University', 'Jaipur', 'IN', NULL, 'https://openalex.org/I4210165947', 0, '2025-11-30 04:35:57', '2025-11-30 04:35:57'),
(2626, 'Data Security Council of India', 'New Delhi', 'IN', 'https://www.dsci.in/', 'https://openalex.org/I2800472359', 0, '2025-11-30 04:35:57', '2025-11-30 04:35:57'),
(2627, 'Jaypee Group (India)', 'Noida', 'IN', 'http://www.jalindia.com/', 'https://openalex.org/I2800623768', 0, '2025-11-30 04:35:57', '2025-11-30 04:35:57'),
(2628, 'ICICI Lombard (India)', 'Mumbai', 'IN', 'https://www.icicilombard.com/', 'https://openalex.org/I2885483733', 0, '2025-11-30 04:35:57', '2025-11-30 04:35:57'),
(2629, 'Mohak Hitech Speciality Hospital', 'Indore', 'IN', 'http://www.mohakhitechhospital.org/', 'https://openalex.org/I4210086661', 0, '2025-11-30 04:35:57', '2025-11-30 04:35:57'),
(2630, 'Institute of Mind Control & Brain Development', 'New Delhi', 'IN', 'http://www.imemoryschool.com/', 'https://openalex.org/I4210088179', 0, '2025-11-30 04:35:57', '2025-11-30 04:35:57'),
(2631, 'Karnataka State Dr.Gangubai Hanagal Music and Performing Arts University', 'Mysore', 'IN', 'https://www.musicuniversity.ac.in/', 'https://openalex.org/I4210098095', 0, '2025-11-30 04:35:57', '2025-11-30 04:35:57'),
(2632, 'Spectrum Healthcare', 'Mumbai', 'IN', 'http://spectrumhealthcare.in/', 'https://openalex.org/I4210101426', 0, '2025-11-30 04:35:57', '2025-11-30 04:35:57'),
(2633, 'Sahaj Hospital', 'Indore', 'IN', 'http://www.sahajhospital.com/', 'https://openalex.org/I4210102420', 0, '2025-11-30 04:35:57', '2025-11-30 04:35:57'),
(2634, 'Kerala Livestock Development Board', 'Thiruvananthapuram', 'IN', 'https://livestock.kerala.gov.in', 'https://openalex.org/I4210102732', 0, '2025-11-30 04:35:57', '2025-11-30 04:35:57'),
(2635, 'Balipara Foundation', 'Tezpur', 'IN', 'https://baliparafoundation.com/', 'https://openalex.org/I4210102833', 0, '2025-11-30 04:35:57', '2025-11-30 04:35:57'),
(2636, 'Educomp Solutions (India)', 'Gurgaon', 'IN', 'http://educomp.com/', 'https://openalex.org/I4210107596', 0, '2025-11-30 04:35:57', '2025-11-30 04:35:57'),
(2637, 'Navdanya', 'Dehra Dūn', 'IN', 'http://www.navdanya.org/site/', 'https://openalex.org/I4210112880', 0, '2025-11-30 04:35:57', '2025-11-30 04:35:57'),
(2638, 'Avesthagen (India)', 'Bengaluru', 'IN', 'http://www.avesthagen.com/', 'https://openalex.org/I4210114325', 0, '2025-11-30 04:35:58', '2025-11-30 04:35:58'),
(2639, 'The Hindu Group (India)', 'Chennai', 'IN', 'https://www.thehindu.com/', 'https://openalex.org/I4210124002', 0, '2025-11-30 04:35:58', '2025-11-30 04:35:58'),
(2640, 'Jammu and Kashmir Academy of Art, Culture and Languages', 'Jammu', 'IN', 'http://art.uok.edu.in/Main/Default.aspx', 'https://openalex.org/I4210138958', 0, '2025-11-30 04:35:58', '2025-11-30 04:35:58'),
(2641, 'Guavus (India)', 'Gurgaon', 'IN', 'http://www.guavus.com/', 'https://openalex.org/I4210141756', 0, '2025-11-30 04:35:58', '2025-11-30 04:35:58'),
(2642, 'Centre for Advocacy and Research', 'New Delhi', 'IN', 'http://www.cfar.org.in/', 'https://openalex.org/I4210154724', 0, '2025-11-30 04:35:58', '2025-11-30 04:35:58'),
(2643, 'UN Women’s Office for India, Bhutan, Maldives and Sri Lanka', 'New Delhi', 'IN', 'http://asiapacific.unwomen.org/en', 'https://openalex.org/I4210161100', 0, '2025-11-30 04:35:58', '2025-11-30 04:35:58'),
(2644, 'Avvai Village Welfare Society', 'Nagapattinam', 'IN', 'http://www.avvai.org/', 'https://openalex.org/I4210161465', 0, '2025-11-30 04:35:58', '2025-11-30 04:35:58'),
(2645, 'Tibetan Children’s Village', 'Dharamsala', 'IN', 'https://tcv.org.in/', 'https://openalex.org/I4210107701', 0, '2025-11-30 04:35:58', '2025-11-30 04:35:58'),
(2646, 'MJ Group (India)', 'Mumbai', 'IN', 'http://www.mj-india.com/', 'https://openalex.org/I4210107836', 0, '2025-11-30 04:35:58', '2025-11-30 04:35:58'),
(2647, 'Tripura State Pollution Control Board', 'Agartala', 'IN', 'https://tspcb.tripura.gov.in/', 'https://openalex.org/I4210110177', 0, '2025-11-30 04:35:58', '2025-11-30 04:35:58'),
(2648, 'Ministry of Micro, Small and Medium Enterprises', 'New Delhi', 'IN', 'http://msme.gov.in/mob/home.aspx', 'https://openalex.org/I4210112479', 0, '2025-11-30 04:35:58', '2025-11-30 04:35:58'),
(2649, 'Biozeen (India)', 'Bengaluru', 'IN', 'http://www.biozeen.com/', 'https://openalex.org/I4210112589', 0, '2025-11-30 04:35:58', '2025-11-30 04:35:58'),
(2650, 'Senate of Serampore College', 'Serampore', 'IN', 'http://www.senateofseramporecollege.edu.in/', 'https://openalex.org/I4210118834', 0, '2025-11-30 04:35:58', '2025-11-30 04:35:58'),
(2651, 'Novo Informatics (India)', 'New Delhi', 'IN', 'http://www.novoinformatics.com/', 'https://openalex.org/I4210119686', 0, '2025-11-30 04:35:58', '2025-11-30 04:35:58'),
(2652, 'Kerala Kalamandalam', 'Thrissur', 'IN', 'http://www.kalamandalam.org/', 'https://openalex.org/I4210121106', 0, '2025-11-30 04:35:58', '2025-11-30 04:35:58'),
(2653, 'Chhandam School of Kathak', 'Mumbai', 'IN', 'http://www.kathak.org/', 'https://openalex.org/I4210128332', 0, '2025-11-30 04:35:58', '2025-11-30 04:35:58'),
(2654, 'CliniRx (India)', 'New Delhi', 'IN', 'http://clinirx.com/', 'https://openalex.org/I4210130313', 0, '2025-11-30 04:35:59', '2025-11-30 04:35:59'),
(2655, 'EchoStar (India)', 'Bengaluru', 'IN', 'http://www.echostar.com/', 'https://openalex.org/I4210132778', 0, '2025-11-30 04:35:59', '2025-11-30 04:35:59'),
(2656, 'Department of Information Technology, Biotechnology and Science and Technology', 'Bengaluru', 'IN', 'http://itbt.karnataka.gov.in/pages/home.aspx', 'https://openalex.org/I4210135121', 0, '2025-11-30 04:35:59', '2025-11-30 04:35:59'),
(2657, 'Indian Pharmacist Association', 'Delhi', 'IN', 'http://www.ipa-india.com/', 'https://openalex.org/I4210150644', 0, '2025-11-30 04:35:59', '2025-11-30 04:35:59'),
(2658, 'American India Foundation', 'Gurgaon', 'IN', 'http://aif.org/', 'https://openalex.org/I2801017091', 0, '2025-11-30 04:35:59', '2025-11-30 04:35:59'),
(2659, 'UDAAN for the Disabled', 'New Delhi', 'IN', 'http://www.udaan.org/', 'https://openalex.org/I2801404229', 0, '2025-11-30 04:35:59', '2025-11-30 04:35:59'),
(2660, 'BGR Energy Systems (India)', 'Chennai', 'IN', 'http://www.bgrcorp.com/', 'https://openalex.org/I4210088040', 0, '2025-11-30 04:35:59', '2025-11-30 04:35:59'),
(2661, 'Global ICT Standardization Forum for India', 'Delhi', 'IN', 'http://www.gisfi.org/', 'https://openalex.org/I4210088667', 0, '2025-11-30 04:35:59', '2025-11-30 04:35:59'),
(2662, 'CIDP Biotech (India)', 'New Delhi', 'IN', 'http://www.cidp-cro.com/', 'https://openalex.org/I4210096928', 0, '2025-11-30 04:35:59', '2025-11-30 04:35:59'),
(2663, 'Chazhikattu Hospital', 'Idukki', 'IN', 'http://chazhikattuhospital.com/', 'https://openalex.org/I4210097547', 0, '2025-11-30 04:35:59', '2025-11-30 04:35:59'),
(2664, 'Kasiak Research (India)', 'Mumbai', 'IN', 'http://www.kasiakresearch.com/', 'https://openalex.org/I4210099847', 0, '2025-11-30 04:36:00', '2025-11-30 04:36:00'),
(2665, 'Research and Action in Natural Wealth Administration', 'Pune', 'IN', 'http://www.ranwa.org/', 'https://openalex.org/I4210108946', 0, '2025-11-30 04:36:00', '2025-11-30 04:36:00'),
(2666, 'Medknow (India)', 'Mumbai', 'IN', 'http://www.medknow.com/', 'https://openalex.org/I4210111709', 0, '2025-11-30 04:36:00', '2025-11-30 04:36:00'),
(2667, 'Department of Science & Technology', 'Lucknow', 'IN', 'http://www.dstup.gov.in/', 'https://openalex.org/I4210117661', 0, '2025-11-30 04:36:00', '2025-11-30 04:36:00'),
(2668, 'Centre for Environmental Management and Participatory Development', 'Kolkata', 'IN', 'http://www.cempd.com/', 'https://openalex.org/I4210127990', 0, '2025-11-30 04:36:00', '2025-11-30 04:36:00'),
(2669, 'Sipra Labs (India)', 'Hyderabad', 'IN', 'http://www.sipralabs.com/', 'https://openalex.org/I4210133413', 0, '2025-11-30 04:36:00', '2025-11-30 04:36:00'),
(2670, 'Institute Of Horticulture Technology', 'Greater Noida', 'IN', 'http://www.iht.edu.in', 'https://openalex.org/I4210148187', 0, '2025-11-30 04:36:00', '2025-11-30 04:36:00'),
(2671, 'Berger Paints (India)', 'Kolkata', 'IN', 'http://www.bergerpaints.com/', 'https://openalex.org/I4210149480', 0, '2025-11-30 04:36:00', '2025-11-30 04:36:00'),
(2672, 'Solidarity and Action Against the HIV Infection in India', 'Chennai', 'IN', 'http://www.saathii.org/', 'https://openalex.org/I4210149988', 0, '2025-11-30 04:36:00', '2025-11-30 04:36:00'),
(2673, 'Impact India', 'Mumbai', 'IN', 'https://www.impactindia.org/', 'https://openalex.org/I4210157997', 0, '2025-11-30 04:36:00', '2025-11-30 04:36:00'),
(2674, 'Adesh Charitable Cancer Hospital', 'Muktsar', 'IN', NULL, 'https://openalex.org/I4210161684', 0, '2025-11-30 04:36:00', '2025-11-30 04:36:00'),
(2675, 'Khoj International Artists\' Association', 'New Delhi', 'IN', 'http://khojworkshop.org/', 'https://openalex.org/I4210163512', 0, '2025-11-30 04:36:00', '2025-11-30 04:36:00'),
(2676, 'Nehru Foundation for Development', 'Ahmedabad', 'IN', 'http://www.nfdindia.org/', 'https://openalex.org/I2802837860', 0, '2025-11-30 04:36:01', '2025-11-30 04:36:01'),
(2677, 'Columbia Global Centers', 'Mumbai', 'IN', 'https://globalcenters.columbia.edu/', 'https://openalex.org/I4210093615', 0, '2025-11-30 04:36:01', '2025-11-30 04:36:01'),
(2678, 'CB Healthcare (India)', 'Shimla', 'IN', 'http://cbhealthcare.in/', 'https://openalex.org/I4210098490', 0, '2025-11-30 04:36:01', '2025-11-30 04:36:01'),
(2679, 'Immunotherapy Centre for Prevention of Repeated Miscarriages', 'Mumbai', 'IN', 'http://www.icprm.in/', 'https://openalex.org/I4210100573', 0, '2025-11-30 04:36:01', '2025-11-30 04:36:01'),
(2680, 'Sanmar Group (India)', 'Chennai', 'IN', 'http://sanmargroup.com/', 'https://openalex.org/I4210102924', 0, '2025-11-30 04:36:01', '2025-11-30 04:36:01'),
(2681, 'National Foundation for India', 'New Delhi', 'IN', 'http://www.nfi.org.in/', 'https://openalex.org/I4210112725', 0, '2025-11-30 04:36:01', '2025-11-30 04:36:01'),
(2682, 'BIOCAD (India)', 'Bengaluru', 'IN', 'https://biocadglobal.com', 'https://openalex.org/I4210118398', 0, '2025-11-30 04:36:01', '2025-11-30 04:36:01'),
(2683, 'Kameshwar Singh Darbhanga Sanskrit University', 'Darbhanga', 'IN', 'http://www.ksdsu.edu.in/', 'https://openalex.org/I4210129172', 0, '2025-11-30 04:36:01', '2025-11-30 04:36:01'),
(2684, 'Participatory Rural Development Foundation', 'Gorakhpur', 'IN', 'https://www.prdf-agri.com/', 'https://openalex.org/I4210129454', 0, '2025-11-30 04:36:01', '2025-11-30 04:36:01'),
(2685, 'Ortin Laboratories (India)', 'Hyderabad', 'IN', 'https://www.ortinlabsindia.com/', 'https://openalex.org/I4210134502', 0, '2025-11-30 04:36:01', '2025-11-30 04:36:01'),
(2686, 'Bempu', 'Bengaluru', 'IN', 'http://www.bempu.com/', 'https://openalex.org/I4210136507', 0, '2025-11-30 04:36:01', '2025-11-30 04:36:01'),
(2687, 'Hindustan Latex Family Planning Promotion Trust', 'Noida', 'IN', 'http://www.hlfppt.org/', 'https://openalex.org/I4210141350', 0, '2025-11-30 04:36:01', '2025-11-30 04:36:01'),
(2688, 'Update Institute of Professional Studies', 'Allahabad', 'IN', 'http://updateinstitute.com', 'https://openalex.org/I4210142492', 0, '2025-11-30 04:36:01', '2025-11-30 04:36:01'),
(2689, 'Karnataka Medical Council', 'Bengaluru', 'IN', 'http://karnatakamedicalcouncil.com', 'https://openalex.org/I4210151295', 0, '2025-11-30 04:36:01', '2025-11-30 04:36:01'),
(2690, 'Udupi Shri Admar Mutt Education Council', 'Bengaluru', 'IN', 'http://udupishriamec.org/', 'https://openalex.org/I4210155918', 0, '2025-11-30 04:36:01', '2025-11-30 04:36:01'),
(2691, 'Vivus Heart Hospital', 'Bengaluru', 'IN', 'http://www.vivushealth.net/', 'https://openalex.org/I4210099056', 0, '2025-11-30 04:36:02', '2025-11-30 04:36:02'),
(2692, 'Language and Learning Foundation', 'New Delhi', 'IN', 'http://languageandlearningfoundation.org/', 'https://openalex.org/I4210100764', 0, '2025-11-30 04:36:02', '2025-11-30 04:36:02'),
(2693, 'Uttarakhand Jal Sansthan', 'Haridwar', 'IN', 'http://ujs.uk.gov.in/', 'https://openalex.org/I4210110416', 0, '2025-11-30 04:36:02', '2025-11-30 04:36:02'),
(2694, 'Himalayan Environmental Studies and Conservation Organization', 'Dehra Dūn', 'IN', 'http://hesco.in/', 'https://openalex.org/I4210111613', 0, '2025-11-30 04:36:02', '2025-11-30 04:36:02'),
(2695, 'Directorate General of Commercial Intelligence and Statistics', 'Kolkata', 'IN', 'http://www.dgciskol.nic.in/', 'https://openalex.org/I4210118146', 0, '2025-11-30 04:36:02', '2025-11-30 04:36:02'),
(2696, 'Lowry Memorial College & Group of Institutions', 'Bengaluru', 'IN', 'http://www.lowryinstitutions.org.in/', 'https://openalex.org/I4210126255', 0, '2025-11-30 04:36:02', '2025-11-30 04:36:02'),
(2697, 'PRS Legislative Research', 'New Delhi', 'IN', 'http://www.prsindia.org/', 'https://openalex.org/I4210131064', 0, '2025-11-30 04:36:02', '2025-11-30 04:36:02'),
(2698, 'International Association for Human Values', 'Bengaluru', 'IN', 'http://www.iahv.org/in-en/', 'https://openalex.org/I4210133045', 0, '2025-11-30 04:36:02', '2025-11-30 04:36:02'),
(2699, 'Habitat International Coalition', 'New Delhi', 'IN', 'http://www.hic-sarp.org/', 'https://openalex.org/I4210140588', 0, '2025-11-30 04:36:02', '2025-11-30 04:36:02'),
(2700, 'Amgen (India)', 'Mumbai', 'IN', 'https://www.amgen.com/', 'https://openalex.org/I4210140649', 0, '2025-11-30 04:36:02', '2025-11-30 04:36:02'),
(2701, 'Karnataka Folklore University, Haveri', 'Shiggaon', 'IN', NULL, 'https://openalex.org/I4210152857', 0, '2025-11-30 04:36:02', '2025-11-30 04:36:02'),
(2702, 'Department of Agriculture & Co-operation', 'New Delhi', 'IN', 'http://agricoop.nic.in/', 'https://openalex.org/I4210152907', 0, '2025-11-30 04:36:02', '2025-11-30 04:36:02'),
(2703, 'Urban Design Research Institute', 'Mumbai', 'IN', 'http://www.udri.org', 'https://openalex.org/I4210157369', 0, '2025-11-30 04:36:02', '2025-11-30 04:36:02'),
(2704, 'Kutch Mahila Vikas Sanghatan', 'Bhuj', 'IN', 'http://kmvs.org.in/', 'https://openalex.org/I4210161348', 0, '2025-11-30 04:36:02', '2025-11-30 04:36:02'),
(2705, 'Chennai Skin Foundation & Yesudian Research Institute', 'Chennai', 'IN', 'https://chennaiskinfoundation.com', 'https://openalex.org/I4210163932', 0, '2025-11-30 04:36:02', '2025-11-30 04:36:02'),
(2706, 'Foundation for Environment and Economic Development Services', 'Imphal', 'IN', 'http://www.feedsmanipur.org', 'https://openalex.org/I4210097852', 0, '2025-11-30 04:36:02', '2025-11-30 04:36:02'),
(2707, 'Multi Vaccines Development Program', 'New Delhi', 'IN', 'http://www.mvdp.org.in', 'https://openalex.org/I4210098359', 0, '2025-11-30 04:36:03', '2025-11-30 04:36:03'),
(2708, 'Lady Tata Memorial Trust', 'Mumbai', 'IN', 'https://www.ladytatatrust.org/', 'https://openalex.org/I4210103112', 0, '2025-11-30 04:36:03', '2025-11-30 04:36:03'),
(2709, 'Kerala Institute for Research, Training and Development Studies of Scheduled Castes and Tribes', 'Kozhikode', 'IN', 'http://www.kirtads.kerala.gov.in/', 'https://openalex.org/I4210110585', 0, '2025-11-30 04:36:03', '2025-11-30 04:36:03'),
(2710, 'Evolva (India)', 'Chennai', 'IN', 'http://www.evolva.com/', 'https://openalex.org/I4210111600', 0, '2025-11-30 04:36:03', '2025-11-30 04:36:03'),
(2711, 'Association for Stimulating Know How', 'Gurgaon', 'IN', 'http://www.askindia.org/contact.html', 'https://openalex.org/I4210112179', 0, '2025-11-30 04:36:03', '2025-11-30 04:36:03'),
(2712, 'Ultra Biotech (India)', 'Bengaluru', 'IN', 'http://www.ultrabiotech.co.in/', 'https://openalex.org/I4210116003', 0, '2025-11-30 04:36:03', '2025-11-30 04:36:03'),
(2713, 'Foundation for Agricultural Resources Management and Environmental Remediation', 'New Delhi', 'IN', 'http://farmer.org.in', 'https://openalex.org/I4210120780', 0, '2025-11-30 04:36:03', '2025-11-30 04:36:03'),
(2714, 'Navitas Life Sciences (India)', 'Bengaluru', 'IN', 'https://www.navitaslifesciences.com/index.php?option=com_content&id=283&view=article', 'https://openalex.org/I4210121335', 0, '2025-11-30 04:36:03', '2025-11-30 04:36:03'),
(2715, 'UNNATI', 'Ahmedabad', 'IN', 'http://www.unnati.org/', 'https://openalex.org/I4210122582', 0, '2025-11-30 04:36:03', '2025-11-30 04:36:03'),
(2716, 'Hardik Fintrade (India)', 'Ahmedabad', 'IN', 'http://hardikgroup.com/', 'https://openalex.org/I4210122736', 0, '2025-11-30 04:36:03', '2025-11-30 04:36:03'),
(2717, 'National Museum of Natural History', 'New Delhi', 'IN', 'http://nmnh.nic.in/home.html', 'https://openalex.org/I4210123012', 0, '2025-11-30 04:36:03', '2025-11-30 04:36:03'),
(2718, 'Cellix Bio (India)', 'Hyderabad', 'IN', 'https://www.cellixbio.com/index.html', 'https://openalex.org/I4210129055', 0, '2025-11-30 04:36:03', '2025-11-30 04:36:03'),
(2719, 'Codon Biosciences (India)', 'Panjim', 'IN', 'https://www.codonbspl.com/', 'https://openalex.org/I4210140917', 0, '2025-11-30 04:36:03', '2025-11-30 04:36:03'),
(2720, 'Shiv Nadar Foundation', 'Noida', 'IN', 'http://www.shivnadarfoundation.org/', 'https://openalex.org/I4210143284', 0, '2025-11-30 04:36:03', '2025-11-30 04:36:03'),
(2721, 'Sumana Hospital', 'Hyderabad', 'IN', 'http://sumanahospital.com/', 'https://openalex.org/I4210148152', 0, '2025-11-30 04:36:03', '2025-11-30 04:36:03'),
(2722, 'Diabetes Thyroid Hormone Research Institute', 'Indore', 'IN', 'http://www.diabeteshormone.com/', 'https://openalex.org/I4210151681', 0, '2025-11-30 04:36:03', '2025-11-30 04:36:03'),
(2723, 'Qiagen (India)', 'New Delhi', 'IN', 'https://www.qiagen.com/in/', 'https://openalex.org/I4210163395', 0, '2025-11-30 04:36:03', '2025-11-30 04:36:03'),
(2724, 'Centre of Technology & Entrepreneurship Development', 'Amethī', 'IN', 'https://ctedindia.org/', 'https://openalex.org/I4210164103', 0, '2025-11-30 04:36:03', '2025-11-30 04:36:03'),
(2725, 'Indian Institute of Ecology and Environment', 'New Delhi', 'IN', 'http://www.ecology.edu/', 'https://openalex.org/I2800340543', 0, '2025-11-30 04:36:03', '2025-11-30 04:36:03'),
(2726, 'India Foundation for the Arts', 'Bengaluru', 'IN', 'http://www.indiaifa.org/india-foundation-arts.html', 'https://openalex.org/I2801216521', 0, '2025-11-30 04:36:03', '2025-11-30 04:36:03'),
(2727, 'Ricardo (India)', 'New Delhi', 'IN', 'https://ricardo.com/', 'https://openalex.org/I4210089111', 0, '2025-11-30 04:36:03', '2025-11-30 04:36:03'),
(2728, 'M.B.Barvalia Foundation’s Spandan Organizations', 'Mumbai', 'IN', 'https://www.spandan.co/', 'https://openalex.org/I4210094100', 0, '2025-11-30 04:36:03', '2025-11-30 04:36:03'),
(2729, 'Mane (India)', 'Mumbai', 'IN', 'http://www.mane.com/', 'https://openalex.org/I4210100155', 0, '2025-11-30 04:36:03', '2025-11-30 04:36:03'),
(2730, 'Bhungroo (India)', 'Ahmedabad', 'IN', 'https://www.naireetaservices.com/', 'https://openalex.org/I4210101638', 0, '2025-11-30 04:36:04', '2025-11-30 04:36:04'),
(2731, 'Healing Fields Foundation', 'Hyderabad', 'IN', 'http://healing-fields.org/', 'https://openalex.org/I4210103228', 0, '2025-11-30 04:36:04', '2025-11-30 04:36:04'),
(2732, 'Suncon Engineers (India)', 'Pune', 'IN', 'http://www.sunconengineers.com/', 'https://openalex.org/I4210106875', 0, '2025-11-30 04:36:04', '2025-11-30 04:36:04'),
(2733, 'Jawaharlal Nehru Memorial Fund', 'New Delhi', 'IN', 'http://www.jnmf.in/', 'https://openalex.org/I4210121299', 0, '2025-11-30 04:36:04', '2025-11-30 04:36:04'),
(2734, 'Alcon (India)', 'Bengaluru', 'IN', 'https://www.alcon.com/', 'https://openalex.org/I4210123855', 0, '2025-11-30 04:36:04', '2025-11-30 04:36:04'),
(2735, 'Aurous HealthCare', 'Chennai', 'IN', 'http://www.auroushealthcare.com/', 'https://openalex.org/I4210127870', 0, '2025-11-30 04:36:04', '2025-11-30 04:36:04'),
(2736, 'Indian Society of Critical Care Medicine', 'Mumbai', 'IN', 'http://www.isccmmumbai.com/', 'https://openalex.org/I4210155080', 0, '2025-11-30 04:36:04', '2025-11-30 04:36:04'),
(2737, 'Directorate of Scheduled Tribes Development Department', 'Thiruvananthapuram', 'IN', 'http://www.stdd.kerala.gov.in/', 'https://openalex.org/I4210158546', 0, '2025-11-30 04:36:04', '2025-11-30 04:36:04'),
(2738, 'Institute of Urban Designers – India', 'New Delhi', 'IN', 'http://www.udesindia.org/', 'https://openalex.org/I4210159409', 0, '2025-11-30 04:36:04', '2025-11-30 04:36:04'),
(2739, 'Volkswagen Group (India)', 'Pune', 'IN', 'http://www.volkswagen.co.in/en.html', 'https://openalex.org/I4210161991', 0, '2025-11-30 04:36:04', '2025-11-30 04:36:04'),
(2740, 'Dendritic Cell Research (India)', 'Noida', 'IN', NULL, 'https://openalex.org/I4210162503', 0, '2025-11-30 04:36:04', '2025-11-30 04:36:04'),
(2741, 'Stanvac Superon Group (India)', 'Gurgaon', 'IN', 'http://www.superonindia.com/', 'https://openalex.org/I4210089498', 0, '2025-11-30 04:36:04', '2025-11-30 04:36:04'),
(2742, 'Karnataka Fisheries Development Corporation', 'Mangalore', 'IN', 'http://kfdcfish.com/', 'https://openalex.org/I4210091242', 0, '2025-11-30 04:36:04', '2025-11-30 04:36:04'),
(2743, 'Dronah Foundation', 'Gurgaon', 'IN', 'https://www.dronah.org/', 'https://openalex.org/I4210092362', 0, '2025-11-30 04:36:04', '2025-11-30 04:36:04'),
(2744, 'Evotec (India)', 'Mumbai', 'IN', 'https://www.evotec.com', 'https://openalex.org/I4210096469', 0, '2025-11-30 04:36:04', '2025-11-30 04:36:04'),
(2745, 'ZMQ Software Systems (India)', 'Gurgaon', 'IN', 'http://www.zmqsoft.com/', 'https://openalex.org/I4210098849', 0, '2025-11-30 04:36:05', '2025-11-30 04:36:05'),
(2746, 'Lifecare Innovations (India)', 'Gurgaon', 'IN', 'http://www.lifecareinnovations.com/', 'https://openalex.org/I4210099495', 0, '2025-11-30 04:36:05', '2025-11-30 04:36:05'),
(2747, 'International Collective in Support of Fishworkers', 'Chennai', 'IN', 'http://www.icsf.net/en/', 'https://openalex.org/I4210101166', 0, '2025-11-30 04:36:05', '2025-11-30 04:36:05'),
(2748, 'Department of Chemicals and Petrochemicals', 'New Delhi', 'IN', 'http://chemicals.nic.in/', 'https://openalex.org/I4210104156', 0, '2025-11-30 04:36:05', '2025-11-30 04:36:05'),
(2749, 'Ram Poly Clinic', 'Pollachi', 'IN', 'http://rampolyclinic.com/', 'https://openalex.org/I4210108512', 0, '2025-11-30 04:36:05', '2025-11-30 04:36:05'),
(2750, 'Koul Research Foundation', 'Jalandhar', 'IN', 'https://www.koulresearch.org/', 'https://openalex.org/I4210110663', 0, '2025-11-30 04:36:05', '2025-11-30 04:36:05'),
(2751, 'DRDO Young Scientist Laboratory', 'Chennai', 'IN', 'https://www.drdo.gov.in/labs-and-establishments/drdo-young-scientist-laboratory-dysl-ct', 'https://openalex.org/I4210110966', 0, '2025-11-30 04:36:05', '2025-11-30 04:36:05'),
(2752, 'L.V. Prasad Film & TV Academy', 'Chennai', 'IN', 'http://www.prasadacademy.com/', 'https://openalex.org/I4210112112', 0, '2025-11-30 04:36:05', '2025-11-30 04:36:05'),
(2753, 'Dorf Ketal (India)', 'Mumbai', 'IN', 'https://www.dorfketal.com/', 'https://openalex.org/I4210113780', 0, '2025-11-30 04:36:05', '2025-11-30 04:36:05'),
(2754, 'Isha Foundation', 'Coimbatore', 'IN', 'https://www.ishafoundation.org/?global', 'https://openalex.org/I4210124124', 0, '2025-11-30 04:36:05', '2025-11-30 04:36:05'),
(2755, 'Library of Tibetan Works and Archives', 'Dharamsala', 'IN', 'http://tibetanlibrary.org/', 'https://openalex.org/I4210126443', 0, '2025-11-30 04:36:05', '2025-11-30 04:36:05'),
(2756, 'Logistimo (India)', 'Bengaluru', 'IN', 'http://www.logistimo.com/', 'https://openalex.org/I4210130142', 0, '2025-11-30 04:36:05', '2025-11-30 04:36:05'),
(2757, 'Centre for Management Development', 'Thiruvananthapuram', 'IN', 'http://www.cmdkerala.net/', 'https://openalex.org/I4210133850', 0, '2025-11-30 04:36:05', '2025-11-30 04:36:05'),
(2758, 'Koshish Charitable Trust', 'Patna', 'IN', 'http://www.koshish.info/', 'https://openalex.org/I4210134738', 0, '2025-11-30 04:36:05', '2025-11-30 04:36:05'),
(2759, 'AxisCades (India)', 'Bengaluru', 'IN', 'http://www.axiscades.com/', 'https://openalex.org/I4210147976', 0, '2025-11-30 04:36:05', '2025-11-30 04:36:05'),
(2760, 'Bidar Organization for Medicinal and Aromatic plants', 'Bengaluru', 'IN', 'http://www.biomap.org.in/', 'https://openalex.org/I4210148632', 0, '2025-11-30 04:36:05', '2025-11-30 04:36:05'),
(2761, 'Seagull BioSolutions (India)', 'Pune', 'IN', 'http://www.seagullbiosolutions.in/', 'https://openalex.org/I4210151774', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2762, 'Himalayan Institute of Alternatives, Ladakh', 'Jammu', 'IN', 'https://www.hial.edu.in/', 'https://openalex.org/I4210154477', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2763, 'Sa-Dhan', 'New Delhi', 'IN', 'http://www.sa-dhan.net/#', 'https://openalex.org/I4210155054', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2764, 'Dadar Athornan Institute', 'Mumbai', 'IN', 'http://www.dadarathornaninstitute.org/', 'https://openalex.org/I4210156436', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2765, 'World Healthal Trust', 'Noida', 'IN', 'https://worldhealthaltrust.org/index2', 'https://openalex.org/I4210157884', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2766, 'Kattaikkuttu Sangam', 'Kanchipuram', 'IN', 'https://www.kattaikkuttu.org/', 'https://openalex.org/I4210158383', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2767, 'Centre for Study of Society and Secularism', 'Mumbai', 'IN', 'http://csss-isla.com/', 'https://openalex.org/I4210162061', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2768, 'Indian Society of Agribusiness Professionals', 'New Delhi', 'IN', 'http://www.isapindia.org/', 'https://openalex.org/I4210163297', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2769, 'Advenio TecnoSys (India)', 'Chandigarh', 'IN', 'https://www.adveniotecnosys.com/', 'https://openalex.org/I4210167256', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2770, 'Magic Lantern Movies', 'New Delhi', 'IN', 'http://magiclanternmovies.in/', 'https://openalex.org/I4210167284', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2771, 'Krishak Bharati Cooperative', 'Noida', 'IN', 'http://www.kribhco.net/', 'https://openalex.org/I2800417576', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2772, 'Petroleum Conservation Research Association', 'Chennai', 'IN', 'http://www.pcra.org/', 'https://openalex.org/I2802616447', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2773, 'Calcutta State Transport Corporation', 'Kolkata', 'IN', 'http://cstc.org.in/', 'https://openalex.org/I3194506854', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2774, 'Centre for Communication and Development Studies', 'Pune', 'IN', 'http://www.ccds.in/', 'https://openalex.org/I4210086923', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2775, 'Fhrai Institute of Hospitality Management', 'Greater Noida', 'IN', 'http://www.fhraiinstitute.com/', 'https://openalex.org/I4210089176', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2776, 'Institute of Sustainable Development, Environmental & Scientific Research', 'Jaipur', 'IN', 'https://www.isdesr.org/', 'https://openalex.org/I4210090037', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2777, 'Centre for Personnel Talent Management', 'Delhi', 'IN', 'https://drdo.gov.in/labs-and-establishments/centre-personnel-talent-management-ceptam', 'https://openalex.org/I4210091356', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2778, 'Mascot Spincontrol (India)', 'Mumbai', 'IN', 'http://www.mascotspincontrol.in/', 'https://openalex.org/I4210095494', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2779, 'Cognetix (India)', 'Chennai', 'IN', 'https://cognetix.com/', 'https://openalex.org/I4210102626', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2780, 'The K.R. Cama Oriental Institute', 'Mumbai', 'IN', 'http://krcama.org/', 'https://openalex.org/I4210105853', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2781, 'Gujarat Science City', 'Ahmedabad', 'IN', 'https://scity.gujarat.gov.in/', 'https://openalex.org/I4210106024', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2782, 'Armaments Research Board', 'Delhi', 'IN', 'https://www.drdo.gov.in/armaments-research-board/about-us', 'https://openalex.org/I4210112990', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2783, 'Antara Foundation', 'New Delhi', 'IN', 'http://www.antarafoundation.org/', 'https://openalex.org/I4210113388', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2784, 'Urolife Stone Hospital', 'New Delhi', 'IN', 'https://www.kidneystonetreatment.in/', 'https://openalex.org/I4210118343', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2785, 'Karnataka Chitrakala Parishath', 'Bengaluru', 'IN', 'http://www.karnatakachitrakalaparishath.com/', 'https://openalex.org/I4210121494', 0, '2025-11-30 04:36:08', '2025-11-30 04:36:08'),
(2786, 'Association for Prevention and Control of Rabies in India', 'Bengaluru', 'IN', 'http://www.apcri.org/', 'https://openalex.org/I4210123565', 0, '2025-11-30 04:36:09', '2025-11-30 04:36:09'),
(2787, 'Hamdard National Foundation', 'New Delhi', 'IN', 'http://www.hamdardnationalfoundation.org/', 'https://openalex.org/I4210124019', 0, '2025-11-30 04:36:09', '2025-11-30 04:36:09'),
(2788, 'Lokadharmi', 'Kochi', 'IN', 'https://lokadharmi.org/home/', 'https://openalex.org/I4210124265', 0, '2025-11-30 04:36:09', '2025-11-30 04:36:09'),
(2789, 'Ayush Arihant (India)', 'Sundargarh', 'IN', 'http://www.ayusharihantindustries.com', 'https://openalex.org/I4210127987', 0, '2025-11-30 04:36:09', '2025-11-30 04:36:09'),
(2790, 'Ishara Puppet Theatre Trust', 'New Delhi', 'IN', 'http://www.isharapuppet.com/IsharaPuppets/', 'https://openalex.org/I4210131340', 0, '2025-11-30 04:36:09', '2025-11-30 04:36:09'),
(2791, 'Indian Academy of Neurosciences', 'Lucknow', 'IN', 'http://neuroscienceacademy.org.in/', 'https://openalex.org/I4210132184', 0, '2025-11-30 04:36:09', '2025-11-30 04:36:09'),
(2792, 'Mattapally Technologies', 'Nalgonda', 'IN', 'https://www.mattapallytechnologies.com/', 'https://openalex.org/I4210134812', 0, '2025-11-30 04:36:09', '2025-11-30 04:36:09'),
(2793, 'IFMR Finance Foundation', 'Chennai', 'IN', 'http://foundation.ifmr.co.in/', 'https://openalex.org/I4210140455', 0, '2025-11-30 04:36:09', '2025-11-30 04:36:09'),
(2794, 'RPG Life Sciences (India)', 'Mumbai', 'IN', 'http://www.rpglifesciences.com/', 'https://openalex.org/I4210143730', 0, '2025-11-30 04:36:09', '2025-11-30 04:36:09'),
(2795, 'Chethana Special School', 'Kārkala', 'IN', 'http://chethanaspecialschool.com', 'https://openalex.org/I4210147201', 0, '2025-11-30 04:36:09', '2025-11-30 04:36:09'),
(2796, 'Piramal Clinical Research', 'Hyderabad', 'IN', 'http://www.piramalclinicalresearch.com/', 'https://openalex.org/I4210152046', 0, '2025-11-30 04:36:09', '2025-11-30 04:36:09'),
(2797, 'Ministry of Minority Affairs', 'New Delhi', 'IN', 'http://www.minorityaffairs.gov.in/', 'https://openalex.org/I4210152947', 0, '2025-11-30 04:36:09', '2025-11-30 04:36:09'),
(2798, 'National Library of India', 'Kolkata', 'IN', 'http://www.nationallibrary.gov.in/', 'https://openalex.org/I4210154244', 0, '2025-11-30 04:36:09', '2025-11-30 04:36:09'),
(2799, 'Phoenix Medical Systems (India)', 'Chennai', 'IN', 'http://www.phoenixmedicalsystems.com/', 'https://openalex.org/I4210154245', 0, '2025-11-30 04:36:09', '2025-11-30 04:36:09'),
(2800, 'Jana Sanskriti Centre for Theatre of the Oppressed', 'Madhyamgram', 'IN', 'http://www.janasanskriti.org', 'https://openalex.org/I4210154932', 0, '2025-11-30 04:36:09', '2025-11-30 04:36:09'),
(2801, 'Urban Management Centre', 'Ahmedabad', 'IN', 'http://www.umcasia.org/', 'https://openalex.org/I4210156757', 0, '2025-11-30 04:36:09', '2025-11-30 04:36:09');
INSERT INTO `institutions` (`id`, `name`, `city`, `country`, `website`, `domain`, `is_verified`, `created_at`, `updated_at`) VALUES
(2802, 'Sri Dharmasthala Manjunatheshwara Educational Society', 'Beltangadi', 'IN', 'http://www.sdmesociety.in/', 'https://openalex.org/I4210158476', 0, '2025-11-30 04:36:09', '2025-11-30 04:36:09'),
(2803, 'Social Awareness Through Human Involvement', 'Shimla', 'IN', 'http://sathihp.com/', 'https://openalex.org/I4210164925', 0, '2025-11-30 04:36:09', '2025-11-30 04:36:09'),
(2804, 'Society For Environment And Development', 'New Delhi', 'IN', 'http://www.sedindia.org/', 'https://openalex.org/I4210165966', 0, '2025-11-30 04:36:09', '2025-11-30 04:36:09'),
(2805, 'Sri Guru Harkrishan Sahib Charitable Eye Hospital Trust', 'Mohali', 'IN', 'http://www.sghshospitals.com/', 'https://openalex.org/I4210166614', 0, '2025-11-30 04:36:09', '2025-11-30 04:36:09'),
(2806, 'Indian National Defence University', 'Gurugram', 'IN', NULL, 'https://openalex.org/I4210167418', 0, '2025-11-30 04:36:09', '2025-11-30 04:36:09'),
(2807, 'Central Board of Irrgation and Power', 'New Delhi', 'IN', 'http://www.cbip.org/', 'https://openalex.org/I4210089006', 0, '2025-11-30 04:36:09', '2025-11-30 04:36:09'),
(2808, 'Namgyal Tantric College', 'Dharamsala', 'IN', 'https://www.namgyalmonastery.org/', 'https://openalex.org/I4210091747', 0, '2025-11-30 04:36:09', '2025-11-30 04:36:09'),
(2809, 'Institute for Transformative Technologies', 'Mumbai', 'IN', 'http://transformativetechnologies.org/', 'https://openalex.org/I4210091961', 0, '2025-11-30 04:36:09', '2025-11-30 04:36:09'),
(2810, 'Vertiver (India)', 'New Delhi', 'IN', 'https://vertiver.com/#firstPage', 'https://openalex.org/I4210092568', 0, '2025-11-30 04:36:10', '2025-11-30 04:36:10'),
(2811, 'Johar Health Maintenance Organization', 'Delhi', 'IN', 'http://joharhmo.com/', 'https://openalex.org/I4210095557', 0, '2025-11-30 04:36:10', '2025-11-30 04:36:10'),
(2812, 'Consortium Clinical Research', 'Coimbatore', 'IN', 'http://www.consortiumcr.com/', 'https://openalex.org/I4210096810', 0, '2025-11-30 04:36:10', '2025-11-30 04:36:10'),
(2813, 'National Museum Institute of the History of Art, Conservation and Museology', 'New Delhi', 'IN', 'http://nmi.gov.in/', 'https://openalex.org/I4210097986', 0, '2025-11-30 04:36:10', '2025-11-30 04:36:10'),
(2814, 'AINET Association of English Teachers', 'Bhandāra', 'IN', 'https://theainet.net/', 'https://openalex.org/I4210099005', 0, '2025-11-30 04:36:10', '2025-11-30 04:36:10'),
(2815, 'Indian Association for Cancer Research', 'Mumbai', 'IN', 'http://www.iacr.org.in/', 'https://openalex.org/I4210100903', 0, '2025-11-30 04:36:10', '2025-11-30 04:36:10'),
(2816, 'Hyderabad Cleft Society', 'Hyderabad', 'IN', 'http://www.craniofacialinstitute.org/', 'https://openalex.org/I4210101667', 0, '2025-11-30 04:36:10', '2025-11-30 04:36:10'),
(2817, 'Digital Empowerment Foundation', 'New Delhi', 'IN', 'http://defindia.org/', 'https://openalex.org/I4210101804', 0, '2025-11-30 04:36:10', '2025-11-30 04:36:10'),
(2818, 'Aryavarta Space Organization', 'Ahmedabad', 'IN', 'http://www.aryavartaspace.org/', 'https://openalex.org/I4210104249', 0, '2025-11-30 04:36:10', '2025-11-30 04:36:10'),
(2819, 'Town Planning and Valuation Department', 'Gandhinagar', 'IN', 'http://townplanning.gujarat.gov.in/', 'https://openalex.org/I4210107036', 0, '2025-11-30 04:36:10', '2025-11-30 04:36:10'),
(2820, 'Recruitment and Assesment Centre', 'New Delhi', 'IN', 'http://rac.gov.in/', 'https://openalex.org/I4210111551', 0, '2025-11-30 04:36:10', '2025-11-30 04:36:10'),
(2821, 'Al-Ameen Pre University College', 'Bengaluru', 'IN', 'http://www.alameenpuc.org/', 'https://openalex.org/I4210112838', 0, '2025-11-30 04:36:10', '2025-11-30 04:36:10'),
(2822, 'Medpace (India)', 'Navi Mumbai', 'IN', 'https://www.medpace.com/', 'https://openalex.org/I4210113216', 0, '2025-11-30 04:36:10', '2025-11-30 04:36:10'),
(2823, 'Surya Chest Foundation', 'Lucknow', 'IN', 'http://www.suryachest.com/', 'https://openalex.org/I4210119385', 0, '2025-11-30 04:36:10', '2025-11-30 04:36:10'),
(2824, 'National Centre for Advocacy Studies', 'Pune', 'IN', 'http://ncasindia.org/', 'https://openalex.org/I4210122562', 0, '2025-11-30 04:36:10', '2025-11-30 04:36:10'),
(2825, 'Diabetes in Asia Study Group', 'Ahmedabad', 'IN', 'http://da-sg.org/public/index', 'https://openalex.org/I4210127250', 0, '2025-11-30 04:36:10', '2025-11-30 04:36:10'),
(2826, 'NASSCOM Foundation', 'New Delhi', 'IN', 'http://www.nasscomfoundation.org/', 'https://openalex.org/I4210137442', 0, '2025-11-30 04:36:10', '2025-11-30 04:36:10'),
(2827, 'Migration & Asylum Project', 'Delhi', 'IN', 'https://www.migrationandasylumproject.org/', 'https://openalex.org/I4210140857', 0, '2025-11-30 04:36:10', '2025-11-30 04:36:10'),
(2828, 'Veolia (India)', 'New Delhi', 'IN', 'http://www.veolia.in/', 'https://openalex.org/I4210142906', 0, '2025-11-30 04:36:10', '2025-11-30 04:36:10'),
(2829, 'Life Sciences Research Board', 'Delhi', 'IN', 'https://drdo.gov.in/life-sciences-research-board/about-us', 'https://openalex.org/I4210145039', 0, '2025-11-30 04:36:10', '2025-11-30 04:36:10'),
(2830, 'Divya Shanthi Christian Association and Trust', 'Bengaluru', 'IN', 'http://divya-shanthi.org/home.html', 'https://openalex.org/I4210145269', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2831, 'PRA Health Sciences', 'Mumbai', 'IN', 'https://prahs.com/', 'https://openalex.org/I4210146644', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2832, 'Southern Cross Fertility & IVF Centre', 'Mumbai', 'IN', 'http://southerncrossfertility.com/', 'https://openalex.org/I4210151971', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2833, 'Ministry of Human Resource Development', 'Delhi', 'IN', 'http://mhrd.gov.in/', 'https://openalex.org/I4210152752', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2834, 'Sampark', 'Bengaluru', 'IN', 'http://sampark.org/', 'https://openalex.org/I4210154006', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2835, 'Council of Christian Hospitals', 'Kākināda', 'IN', NULL, 'https://openalex.org/I4210158413', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2836, 'Dr. Sadhana Nayak’s Voice Clinic and Center', 'Mumbai', 'IN', 'https://www.drsadhananayak.com/', 'https://openalex.org/I4210159984', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2837, 'Alcis Sports (India)', 'Noida', 'IN', 'https://www.alcissports.com', 'https://openalex.org/I4210165370', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2838, 'Christian Hospital Serkawn', 'Lunglei', 'IN', NULL, 'https://openalex.org/I4210166290', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2839, 'Indian Rheumatology Association', 'Gurgaon', 'IN', 'http://www.indianrheumatology.org/', 'https://openalex.org/I2800674713', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2840, 'Centre for Science, Development and Media Studies', 'Noida', 'IN', 'http://www.csdms.in/', 'https://openalex.org/I4210086520', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2841, 'Delhi Foundation of Deaf Women', 'New Delhi', 'IN', 'http://www.dfdw.net/', 'https://openalex.org/I4210087760', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2842, 'Extra Care Physiotherapy Centre', 'Lucknow', 'IN', 'http://www.spinephysiotherapy.com/', 'https://openalex.org/I4210090470', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2843, 'Seascape Learning (India)', 'New Delhi', 'IN', 'http://www.seascapelearning.com/', 'https://openalex.org/I4210092512', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2844, 'Vastu Shilpa Foundation', 'Ahmedabad', 'IN', 'http://www.vastushilpa.org/', 'https://openalex.org/I4210096081', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2845, 'Asia Pacific Observatory on Health Systems and Policies', 'New Delhi', 'IN', 'https://apo.who.int', 'https://openalex.org/I4210096505', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2846, 'Lanco Solar (India)', 'Gurgaon', 'IN', 'http://www.lancosolar.com/', 'https://openalex.org/I4210097898', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2847, 'Cook Medical (India)', 'Chennai', 'IN', 'http://www.cookmedical.co.in/', 'https://openalex.org/I4210098742', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2848, 'Euro-India Research Centre', 'Bengaluru', 'IN', 'http://www.euroindiaresearch.org/', 'https://openalex.org/I4210098876', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2849, 'Association of State Road Transport Undertakings', 'Pune', 'IN', 'http://www.asrtu.org/', 'https://openalex.org/I4210101571', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2850, 'Jal Seva Charitable Foundation', 'New Delhi', 'IN', 'http://www.jal-seva.org/', 'https://openalex.org/I4210101968', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2851, 'Abhikram (India)', 'Ahmedabad', 'IN', 'http://www.abhikram.com/home.php', 'https://openalex.org/I4210105298', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2852, 'Panchajanya Vidya Peetha Welfare Trust', 'Bengaluru', 'IN', 'http://www.pvpwt.org/', 'https://openalex.org/I4210106322', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2853, 'All India Artisans and Craftworkers Welfare Association', 'New Delhi', 'IN', 'http://www.aiacaonline.org/', 'https://openalex.org/I4210108297', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2854, 'Central Adoption Resource Authority', 'New Delhi', 'IN', 'http://cara.nic.in', 'https://openalex.org/I4210108398', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2855, 'DSM (India)', 'Mumbai', 'IN', 'https://www.dsm.com/corporate/home.html', 'https://openalex.org/I4210112405', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2856, 'Kentropy Technologies (India)', 'Bengaluru', 'IN', 'http://www.kentropy.com', 'https://openalex.org/I4210112531', 0, '2025-11-30 04:36:11', '2025-11-30 04:36:11'),
(2857, 'Department of Animal Husbandry, Veterinary and Dairy Development', 'Itanagar', 'IN', 'http://vetarun.gov.in/', 'https://openalex.org/I4210113779', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2858, 'bioMérieux (India)', 'New Delhi', 'IN', 'https://www.biomerieuxindia.in/', 'https://openalex.org/I4210115174', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2859, 'Association for Democratic Reforms', 'New Delhi', 'IN', 'https://adrindia.org/', 'https://openalex.org/I4210115811', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2860, 'Roja Muthiah Research Library', 'Chennai', 'IN', 'http://rmrl.in/', 'https://openalex.org/I4210117786', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2861, 'Mustard Research and Promotion Consortium', 'New Delhi', 'IN', 'http://www.mrpc.co.in/home-web.php', 'https://openalex.org/I4210118473', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2862, 'Programme on Women’s Economic, Social and Cultural Rights', 'New Delhi', 'IN', 'http://www.pwescr.org', 'https://openalex.org/I4210120558', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2863, 'Kaivalya Education Foundation', 'Mumbai', 'IN', 'http://www.kefindia.org/', 'https://openalex.org/I4210123351', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2864, 'i3gb Foundation', 'Guwahati', 'IN', 'http://selfgravitationbio.com/index.html', 'https://openalex.org/I4210127876', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2865, 'Richcore Lifesciences (India)', 'Bengaluru', 'IN', 'http://www.richcoreindia.com/', 'https://openalex.org/I4210128348', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2866, 'Bafna Group (India)', 'Pune', 'IN', 'http://www.bafnagroup.com/', 'https://openalex.org/I4210129300', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2867, 'Sri Caitanya Prema Samsthana', 'Mathura', 'IN', 'http://www.gambhira.com/', 'https://openalex.org/I4210131639', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2868, 'UCB Pharma (India)', 'Mumbai', 'IN', 'https://www.ucb.com/worldwide/india', 'https://openalex.org/I4210137332', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2869, 'Society of Indian Automobile Manufacturers', 'New Delhi', 'IN', 'http://www.siamindia.com/', 'https://openalex.org/I4210139537', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2870, 'Aeronautics Research and Development Board', 'New Delhi', 'IN', 'https://drdo.gov.in/aeronautics-research-development/about-us', 'https://openalex.org/I4210139781', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2871, 'Indravati Hospital & Research Centre', 'Mumbai', 'IN', 'http://indravatihospital.com/', 'https://openalex.org/I4210140144', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2872, 'Natural Resources Data Management System', 'New Delhi', 'IN', 'http://nrdms.gov.in/', 'https://openalex.org/I4210143133', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2873, 'Indo-US Science and Technology Forum', 'New Delhi', 'IN', 'http://www.iusstf.org/', 'https://openalex.org/I4210145276', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2874, 'International Longevity Centre - India', 'Pune', 'IN', 'https://www.ilcindia.org/', 'https://openalex.org/I4210146032', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2875, 'All India Kisan Sabha', 'Mathura', 'IN', 'http://kisansabha.org/', 'https://openalex.org/I4210148218', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2876, 'India China Economic and Cultural Council', 'New Delhi', 'IN', 'http://www.icec-council.org/', 'https://openalex.org/I4210154511', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2877, 'Department of Animal Husbandry Livestock, Fisheries & Veterinary', 'Gangtok', 'IN', 'http://www.sikkim-ahvs.gov.in/', 'https://openalex.org/I4210154865', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2878, 'Elder Pharmaceuticals (India)', 'Mumbai', 'IN', 'http://www.elderindia.com/announce.php', 'https://openalex.org/I4210156536', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2879, 'Tamil Nadu Forest Plantation (India)', 'Tiruchchirappalli', 'IN', 'http://www.tafcorn.tn.gov.in/', 'https://openalex.org/I4210158350', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2880, 'Calicut University Employees Union', 'Kozhikode', 'IN', NULL, 'https://openalex.org/I4210158956', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2881, 'Saamarthya Foundation', 'Ahmedabad', 'IN', 'http://www.saamarthyafoundation.com/', 'https://openalex.org/I4210159235', 0, '2025-11-30 04:36:12', '2025-11-30 04:36:12'),
(2882, 'FLAME TAO Knoware (India)', 'Chennai', 'IN', 'http://www.flametaoknoware.com/', 'https://openalex.org/I4210160911', 0, '2025-11-30 04:36:13', '2025-11-30 04:36:13'),
(2883, 'Amruta Sinchana Spiritual University', 'Bengaluru', 'IN', NULL, 'https://openalex.org/I4210163276', 0, '2025-11-30 04:36:13', '2025-11-30 04:36:13'),
(2884, 'Shramik Bharti', 'Kanpur', 'IN', 'http://www.shramikbharti.org.in/', 'https://openalex.org/I4210164825', 0, '2025-11-30 04:36:13', '2025-11-30 04:36:13'),
(2885, 'African Studies Association of India', 'New Delhi', 'IN', 'http://www.africanstudies.in/', 'https://openalex.org/I4210086127', 0, '2025-11-30 04:36:13', '2025-11-30 04:36:13'),
(2886, 'Siddharth Starch (India)', 'Pune', 'IN', 'http://www.siddharthstarch.com/', 'https://openalex.org/I4210088218', 0, '2025-11-30 04:36:13', '2025-11-30 04:36:13'),
(2887, 'Dr Dozo Laboratories', 'Mohali', 'IN', 'http://www.dozolaboratories.com/', 'https://openalex.org/I4210092776', 0, '2025-11-30 04:36:13', '2025-11-30 04:36:13'),
(2888, 'National Science and Technology Entrepreneurship Development Board', 'New Delhi', 'IN', 'http://www.nstedb.com/', 'https://openalex.org/I4210093561', 0, '2025-11-30 04:36:13', '2025-11-30 04:36:13'),
(2889, 'Deepam Educational Society for Health', 'Chennai', 'IN', 'http://deshhealth.org/', 'https://openalex.org/I4210094643', 0, '2025-11-30 04:36:13', '2025-11-30 04:36:13'),
(2890, 'AO Foundation', 'New Delhi', 'IN', 'https://www.aofoundation.org', 'https://openalex.org/I4210094822', 0, '2025-11-30 04:36:13', '2025-11-30 04:36:13'),
(2891, 'Inlaks Shivdasani Foundation', 'New Delhi', 'IN', 'http://www.inlaksfoundation.org/', 'https://openalex.org/I4210094935', 0, '2025-11-30 04:36:13', '2025-11-30 04:36:13'),
(2892, 'India Heritage Research Foundation', 'Rishikesh', 'IN', 'http://www.ihrf.com/', 'https://openalex.org/I4210098560', 0, '2025-11-30 04:36:13', '2025-11-30 04:36:13'),
(2893, 'English Language Teachers Association of India', 'Chennai', 'IN', 'http://eltai.in/', 'https://openalex.org/I4210098723', 0, '2025-11-30 04:36:13', '2025-11-30 04:36:13'),
(2894, 'Mehrangarh Museum Trust', 'Jodhpur', 'IN', 'http://www.mehrangarh.org/', 'https://openalex.org/I4210101906', 0, '2025-11-30 04:36:13', '2025-11-30 04:36:13'),
(2895, 'National Federation of Cooperative Sugar Factories', 'New Delhi', 'IN', 'https://www.coopsugar.org/', 'https://openalex.org/I4210104265', 0, '2025-11-30 04:36:13', '2025-11-30 04:36:13'),
(2896, 'Rebnok (India)', 'Mumbai', 'IN', 'http://rebnok.com/', 'https://openalex.org/I4210104772', 0, '2025-11-30 04:36:13', '2025-11-30 04:36:13'),
(2897, 'Windmill Health Technologies (India)', 'New Delhi', 'IN', 'http://www.windmillh.com/', 'https://openalex.org/I4210104957', 0, '2025-11-30 04:36:13', '2025-11-30 04:36:13'),
(2898, 'Association of Management Development Institutions in South Asia', 'Hyderabad', 'IN', 'http://www.amdisa.org/', 'https://openalex.org/I4210107197', 0, '2025-11-30 04:36:13', '2025-11-30 04:36:13'),
(2899, 'Helping Hand Society', 'Warangal', 'IN', 'http://helpinghandssociety.com/', 'https://openalex.org/I4210108890', 0, '2025-11-30 04:36:13', '2025-11-30 04:36:13'),
(2900, 'Mecpro Heavy Engineering (India)', 'New Delhi', 'IN', 'http://www.mecpro.com/', 'https://openalex.org/I4210113134', 0, '2025-11-30 04:36:13', '2025-11-30 04:36:13'),
(2901, 'Manav Vikas Evam Sewa Sansthan', 'Lucknow', 'IN', 'http://www.mvess.org.in/', 'https://openalex.org/I4210113647', 0, '2025-11-30 04:36:13', '2025-11-30 04:36:13'),
(2902, 'Zimmer Biomet (India)', 'Gurgaon', 'IN', 'http://www.zimmerindia.com/', 'https://openalex.org/I4210116441', 0, '2025-11-30 04:36:13', '2025-11-30 04:36:13'),
(2903, 'Alarsin (India)', 'Mumbai', 'IN', 'http://alarsin.com', 'https://openalex.org/I4210116519', 0, '2025-11-30 04:36:14', '2025-11-30 04:36:14'),
(2904, 'Centre for Rural Studies and Development', 'Anantapur', 'IN', 'https://www.crsdindia.org/', 'https://openalex.org/I4210116559', 0, '2025-11-30 04:36:14', '2025-11-30 04:36:14'),
(2905, 'Global Innovation and Technology Alliance', 'New Delhi', 'IN', 'http://gita.org.in/', 'https://openalex.org/I4210116932', 0, '2025-11-30 04:36:14', '2025-11-30 04:36:14'),
(2906, 'Association for Awareness on Rural and Tribal Health Institute', 'Kākināda', 'IN', 'https://aarthi.org/', 'https://openalex.org/I4210117135', 0, '2025-11-30 04:36:14', '2025-11-30 04:36:14'),
(2907, 'Abhivyakti Media for Development', 'Nashik', 'IN', 'http://www.abhivyakti.org.in/', 'https://openalex.org/I4210117298', 0, '2025-11-30 04:36:14', '2025-11-30 04:36:14'),
(2908, 'Astonfield (India)', 'Mumbai', 'IN', 'http://astonfield.com/', 'https://openalex.org/I4210117784', 0, '2025-11-30 04:36:14', '2025-11-30 04:36:14'),
(2909, 'Ravenbhel Healthcare (India)', 'Amritsar', 'IN', 'http://www.ravenbhel.com/', 'https://openalex.org/I4210117976', 0, '2025-11-30 04:36:14', '2025-11-30 04:36:14'),
(2910, 'Noida Deaf Society', 'Noida', 'IN', 'https://www.noidadeafsociety.org/', 'https://openalex.org/I4210120674', 0, '2025-11-30 04:36:14', '2025-11-30 04:36:14'),
(2911, 'State Council of Science Technology & Environment, Meghalaya', 'Shillong', 'IN', 'http://scste.org/', 'https://openalex.org/I4210120955', 0, '2025-11-30 04:36:14', '2025-11-30 04:36:14'),
(2912, 'Nehru Trust', 'New Delhi', 'IN', 'http://www.nehrutrustvam.org/', 'https://openalex.org/I4210122563', 0, '2025-11-30 04:36:14', '2025-11-30 04:36:14'),
(2913, 'Sante Mernaud (India)', 'Bengaluru', 'IN', 'http://www.santemernaud.com/', 'https://openalex.org/I4210123659', 0, '2025-11-30 04:36:14', '2025-11-30 04:36:14'),
(2914, 'Mysore Resettlement and Development Agency', 'Bengaluru', 'IN', 'http://myrada.org/', 'https://openalex.org/I4210123898', 0, '2025-11-30 04:36:14', '2025-11-30 04:36:14'),
(2915, 'Action for Agricultural Renewal in Maharashtra', 'Pune', 'IN', 'http://afarm.org/', 'https://openalex.org/I4210125442', 0, '2025-11-30 04:36:14', '2025-11-30 04:36:14'),
(2916, 'Poly Medicure (India)', 'Delhi', 'IN', 'https://www.polymedicure.com/', 'https://openalex.org/I4210126931', 0, '2025-11-30 04:36:14', '2025-11-30 04:36:14'),
(2917, 'Flags of Honour Foundation', 'Bengaluru', 'IN', 'http://www.flagsofhonour.in/', 'https://openalex.org/I4210129056', 0, '2025-11-30 04:36:14', '2025-11-30 04:36:14'),
(2918, 'Wikimedia India', 'Bengaluru', 'IN', 'http://wiki.wikimedia.in/Home', 'https://openalex.org/I4210132413', 0, '2025-11-30 04:36:14', '2025-11-30 04:36:14'),
(2919, 'Magbro Healthcare (India)', 'Solan', 'IN', 'http://www.magbro.in/', 'https://openalex.org/I4210133145', 0, '2025-11-30 04:36:14', '2025-11-30 04:36:14'),
(2920, 'Network for Preventive Environmental Management', 'Nagpur', 'IN', 'http://www.netpem.org/', 'https://openalex.org/I4210133207', 0, '2025-11-30 04:36:14', '2025-11-30 04:36:14'),
(2921, 'Klinera (India)', 'Mumbai', 'IN', 'http://www.klinera.com/', 'https://openalex.org/I4210133637', 0, '2025-11-30 04:36:14', '2025-11-30 04:36:14'),
(2922, 'MTEL-KTEI Teleinfra (India)', 'Pitampura', 'IN', 'http://www.mtelktei.com/', 'https://openalex.org/I4210134985', 0, '2025-11-30 04:36:14', '2025-11-30 04:36:14'),
(2923, 'IIDC (India)', 'New Delhi', 'IN', 'http://www.iidcindia.co.in/', 'https://openalex.org/I4210135107', 0, '2025-11-30 04:36:14', '2025-11-30 04:36:14'),
(2924, 'Maya Clinicals (India)', 'Hyderabad', 'IN', 'http://mayaclinicals.com/', 'https://openalex.org/I4210140830', 0, '2025-11-30 04:36:14', '2025-11-30 04:36:14'),
(2925, 'Oil Industry Development Board', 'Noida', 'IN', 'http://www.oidb.gov.in/', 'https://openalex.org/I4210142285', 0, '2025-11-30 04:36:14', '2025-11-30 04:36:14'),
(2926, 'Muthu Hospital', 'Madurai', 'IN', 'http://www.muthuhospital.in/', 'https://openalex.org/I4210144033', 0, '2025-11-30 04:36:15', '2025-11-30 04:36:15'),
(2927, 'Avantha (India)', 'New Delhi', 'IN', 'http://www.avanthagroup.com/', 'https://openalex.org/I4210144429', 0, '2025-11-30 04:36:15', '2025-11-30 04:36:15'),
(2928, 'Aravali Foundation for Education', 'New Delhi', 'IN', 'http://www.aravalifoundation.in/', 'https://openalex.org/I4210150876', 0, '2025-11-30 04:36:15', '2025-11-30 04:36:15'),
(2929, 'Anokhi Museum of Hand Printing', 'Jaipur', 'IN', 'https://www.anokhi.com', 'https://openalex.org/I4210151620', 0, '2025-11-30 04:36:15', '2025-11-30 04:36:15'),
(2930, 'Aaranya Biosciences (India)', 'Hyderabad', 'IN', 'http://www.aaranyabiosciences.com/', 'https://openalex.org/I4210152697', 0, '2025-11-30 04:36:15', '2025-11-30 04:36:15'),
(2931, 'Kerala State Chalachitra Academy', 'Thiruvananthapuram', 'IN', 'http://www.keralafilm.com/', 'https://openalex.org/I4210155664', 0, '2025-11-30 04:36:15', '2025-11-30 04:36:15'),
(2932, 'Mentaid', 'Kolkata', 'IN', 'http://mentaid.org/', 'https://openalex.org/I4210159527', 0, '2025-11-30 04:36:15', '2025-11-30 04:36:15'),
(2933, 'Society for Social Uplift Through Rural Action', 'Solan', 'IN', 'http://www.sutrahp.org/', 'https://openalex.org/I4210160029', 0, '2025-11-30 04:36:15', '2025-11-30 04:36:15'),
(2934, 'Interactive Technology Software and Media Association', 'Bengaluru', 'IN', 'http://www.itsmaindia.org/', 'https://openalex.org/I4210160520', 0, '2025-11-30 04:36:15', '2025-11-30 04:36:15'),
(2935, 'Kuantum Papers (India)', 'Chandigarh', 'IN', 'http://www.kuantumpapers.com/', 'https://openalex.org/I4210160706', 0, '2025-11-30 04:36:15', '2025-11-30 04:36:15'),
(2936, 'QPS (India)', 'Hyderabad', 'IN', 'https://www.qps.com/', 'https://openalex.org/I4210160843', 0, '2025-11-30 04:36:15', '2025-11-30 04:36:15'),
(2937, 'Asian Energy Institute', 'New Delhi', 'IN', 'http://www.aeinetwork.org/', 'https://openalex.org/I4210162131', 0, '2025-11-30 04:36:15', '2025-11-30 04:36:15'),
(2938, 'Jesuit Madurai Province', 'Dindigul', 'IN', 'http://www.maduraijesuits.org/', 'https://openalex.org/I4210163053', 0, '2025-11-30 04:36:15', '2025-11-30 04:36:15'),
(2939, 'Rajiv Poor People Welfare Society', 'Guntur', 'IN', NULL, 'https://openalex.org/I4210163372', 0, '2025-11-30 04:36:15', '2025-11-30 04:36:15'),
(2940, 'Bhatkhande Music Institute University', 'Lucknow', 'IN', NULL, 'https://openalex.org/I4210165471', 0, '2025-11-30 04:36:15', '2025-11-30 04:36:15'),
(2941, 'CBM Bethel Hospital', 'Vuyyūru', 'IN', NULL, 'https://openalex.org/I4210165961', 0, '2025-11-30 04:36:15', '2025-11-30 04:36:15'),
(2942, 'Research Institute for Social and Health Improvement Foundation', 'Bengaluru', 'IN', NULL, 'https://openalex.org/I4210166282', 0, '2025-11-30 04:36:15', '2025-11-30 04:36:15'),
(2943, 'Medicines Company (India)', 'Gurgaon', 'IN', 'http://www.themedicinescompany.com/', 'https://openalex.org/I4387156281', 0, '2025-11-30 04:36:16', '2025-11-30 04:36:16'),
(2944, 'All India Institute of Ayurveda, New Delhi', 'New Delhi', 'IN', 'https://aiia.gov.in', 'https://openalex.org/I4405252805', 0, '2025-11-30 04:36:16', '2025-11-30 04:36:16'),
(2945, 'All India Institute of Medical Sciences Bibinagar', 'Hyderabad', 'IN', 'https://aiimsbibinagar.edu.in', 'https://openalex.org/I4405252828', 0, '2025-11-30 04:36:16', '2025-11-30 04:36:16'),
(2946, 'Sanaka Educational Trust’s Group of Institutions', 'Durgapur', 'IN', 'https://icampus.setgoi.ac.in', 'https://openalex.org/I4405252868', 0, '2025-11-30 04:36:16', '2025-11-30 04:36:16'),
(2947, 'Cluster University of Jammu', 'Jammu', 'IN', 'https://www.clujammu.in', 'https://openalex.org/I4405252910', 0, '2025-11-30 04:36:16', '2025-11-30 04:36:16'),
(2948, 'Shri Lal Bahadur Shastri Degree College, Gonda', 'Gondā City', 'IN', 'https://lbsdc.org.in', 'https://openalex.org/I4405252911', 0, '2025-11-30 04:36:16', '2025-11-30 04:36:16'),
(2949, 'PROPUL Evidence LLP (India)', 'Chennai', 'IN', 'https://propulevidence.org', 'https://openalex.org/I4405252919', 0, '2025-11-30 04:36:16', '2025-11-30 04:36:16'),
(2950, 'Maharshi Vashishtha Autonomous State Medical College, Basti', 'Basti', 'IN', 'https://asmcbasti.edu.in', 'https://openalex.org/I4405253002', 0, '2025-11-30 04:36:16', '2025-11-30 04:36:16'),
(2951, 'ATLAS SkillTech University', 'Mumbai', 'IN', 'https://atlasuniversity.edu.in', 'https://openalex.org/I4405253011', 0, '2025-11-30 04:36:16', '2025-11-30 04:36:16'),
(2952, 'Advanced Institute for Wildlife Conservation', 'Vandalūr', 'IN', 'https://www.aiwc.res.in', 'https://openalex.org/I4405253052', 0, '2025-11-30 04:36:16', '2025-11-30 04:36:16'),
(2953, 'Tehatta Sadananda Mahavidyalaya', 'Kalna', 'IN', 'https://www.collegetsm.in', 'https://openalex.org/I4405253084', 0, '2025-11-30 04:36:16', '2025-11-30 04:36:16'),
(2954, 'NSS College of Engineering Palakkad', 'Palakkad', 'IN', 'https://www.nssce.ac.in', 'https://openalex.org/I4405253093', 0, '2025-11-30 04:36:16', '2025-11-30 04:36:16'),
(2955, 'Dharanidhar University, Keonjhar', 'Kendujhar', 'IN', 'https://dduniversity.ac.in', 'https://openalex.org/I4405253117', 0, '2025-11-30 04:36:16', '2025-11-30 04:36:16'),
(2956, 'Ajay Kumar Garg Institute of Management', 'Ghaziabad', 'IN', 'https://www.akgim.edu.in', 'https://openalex.org/I4405253234', 0, '2025-11-30 04:36:16', '2025-11-30 04:36:16'),
(2957, 'Government College of Engineering, Nagpur', 'Nagpur', 'IN', 'https://gcoen.ac.in', 'https://openalex.org/I4405253287', 0, '2025-11-30 04:36:16', '2025-11-30 04:36:16'),
(2958, 'Shivharsh Kisan Post Graduate College, Basti', 'Basti', 'IN', 'https://skpgcollege.ac.in', 'https://openalex.org/I4405253305', 0, '2025-11-30 04:36:16', '2025-11-30 04:36:16'),
(2959, 'Rani Lakshmi Bai Central Agricultural University, Jhansi', 'Jhansi', 'IN', 'https://rlbcau.ac.in', 'https://openalex.org/I4405253351', 0, '2025-11-30 04:36:16', '2025-11-30 04:36:16'),
(2960, 'International Institute of Justice and Police Sciences', 'Bengaluru', 'IN', 'https://www.icssinstitute.org', 'https://openalex.org/I4405253450', 0, '2025-11-30 04:36:18', '2025-11-30 04:36:18'),
(2961, 'Dhanalakshmi Srinivasan University', 'Tiruchchirappalli', 'IN', 'https://www.dsuniversity.ac.in', 'https://openalex.org/I4405253460', 0, '2025-11-30 04:36:18', '2025-11-30 04:36:18'),
(2962, 'Rajkiya Engineering College Kannauj', 'Kannauj', 'IN', 'https://reck.ac.in', 'https://openalex.org/I4405253485', 0, '2025-11-30 04:36:18', '2025-11-30 04:36:18'),
(2963, 'K. N. Bhise Arts, Commerce and Vinayakrao Patil Science College', 'Kurduvādi', 'IN', 'https://knbvpsc.com', 'https://openalex.org/I4405253511', 0, '2025-11-30 04:36:18', '2025-11-30 04:36:18'),
(2964, 'Ministry of Labour and Employment', 'Dhanbad', 'IN', 'https://labour.gov.in', 'https://openalex.org/I4405253515', 0, '2025-11-30 04:36:18', '2025-11-30 04:36:18'),
(2965, 'Jabalpur Engineering College', 'Jabalpur', 'IN', 'https://www.jecjabalpur.ac.in', 'https://openalex.org/I4405253601', 0, '2025-11-30 04:36:18', '2025-11-30 04:36:18'),
(2966, 'Venkateswara Homoeopathic Medical College and Hospital', 'Chennai', 'IN', 'https://www.venkathomoeo.org', 'https://openalex.org/I4405253660', 0, '2025-11-30 04:36:18', '2025-11-30 04:36:18'),
(2967, 'Dr. Om Parkash Eye Institute Pvt Ltd', 'Amritsar', 'IN', 'https://www.dromparkash.com', 'https://openalex.org/I4405253662', 0, '2025-11-30 04:36:18', '2025-11-30 04:36:18'),
(2968, 'CHRIST (Deemed to be) University, Delhi NCR', 'Ghaziabad', 'IN', 'https://ncr.christuniversity.in', 'https://openalex.org/I4405253679', 0, '2025-11-30 04:36:18', '2025-11-30 04:36:18'),
(2969, 'Sadiya College', 'Chapakhowa Town', 'IN', 'https://www.sadiyacollege.ac.in', 'https://openalex.org/I4405253726', 0, '2025-11-30 04:36:18', '2025-11-30 04:36:18'),
(2970, 'Manav Rachna University', 'Faridabad', 'IN', 'https://mru.edu.in', 'https://openalex.org/I4405253735', 0, '2025-11-30 04:36:19', '2025-11-30 04:36:19'),
(2971, 'Saibalaji International Institute of Management Sciences Pune', 'Pune', 'IN', 'https://sbiims.edu.in', 'https://openalex.org/I4405253766', 0, '2025-11-30 04:36:19', '2025-11-30 04:36:19'),
(2972, 'Atria University', 'Bengaluru', 'IN', 'https://www.atriauniversity.edu.in', 'https://openalex.org/I4405253771', 0, '2025-11-30 04:36:19', '2025-11-30 04:36:19'),
(2973, 'Autonomous State Medical College, Pilibhit', 'Pīlibhīt', 'IN', 'https://asmcpilibhit.com', 'https://openalex.org/I4405253775', 0, '2025-11-30 04:36:19', '2025-11-30 04:36:19'),
(2974, 'TKM College of Engineering', 'Kollam', 'IN', 'https://tkmce.ac.in', 'https://openalex.org/I4405253803', 0, '2025-11-30 04:36:19', '2025-11-30 04:36:19'),
(2975, 'Vivekanandha College of Nursing', 'Namakkal', 'IN', 'http://vivekanandha.ac.in/vcn', 'https://openalex.org/I4405253830', 0, '2025-11-30 04:36:19', '2025-11-30 04:36:19'),
(2976, 'National Institute of Rock Mechanics', 'Bengaluru', 'IN', 'https://nirm.in', 'https://openalex.org/I4405253853', 0, '2025-11-30 04:36:19', '2025-11-30 04:36:19'),
(2977, 'Directorate General of Mines Safety', 'Dhanbad', 'IN', 'https://dgms.gov.in', 'https://openalex.org/I4405253893', 0, '2025-11-30 04:36:19', '2025-11-30 04:36:19'),
(2978, 'Maharana Pratap Polytechnic Gorakhpur', 'Gorakhpur', 'IN', 'https://mppolytechnic.ac.in', 'https://openalex.org/I4405253918', 0, '2025-11-30 04:36:19', '2025-11-30 04:36:19'),
(2979, 'Kaliyaganj College', 'Dinajpur Uttar', 'IN', 'https://www.kaliyaganjcollege.ac.in', 'https://openalex.org/I4405253966', 0, '2025-11-30 04:36:19', '2025-11-30 04:36:19'),
(2980, 'Mahatma Gandhi Ayurved College Hospital and Research Centre', 'Wardha', 'IN', 'https://www.mgachrc.org', 'https://openalex.org/I4405253982', 0, '2025-11-30 04:36:19', '2025-11-30 04:36:19'),
(2981, 'St. Thomas College (Autonomous)', 'Thrissur', 'IN', 'https://stthomas.ac.in', 'https://openalex.org/I4405254056', 0, '2025-11-30 04:36:19', '2025-11-30 04:36:19'),
(2982, 'R. N. G. Patel Institute of Technology', 'Bārdoli', 'IN', 'https://rngpit.ac.in', 'https://openalex.org/I4405254091', 0, '2025-11-30 04:36:19', '2025-11-30 04:36:19'),
(2983, 'All India Institute of Medical Sciences, Rajkot', 'Rajkot', 'IN', 'https://aiimsrajkot.edu.in', 'https://openalex.org/I4405254203', 0, '2025-11-30 04:36:19', '2025-11-30 04:36:19'),
(2984, 'School of Management Sciences, Lucknow', 'Lucknow', 'IN', 'https://smslucknow.ac.in', 'https://openalex.org/I4405254213', 0, '2025-11-30 04:36:19', '2025-11-30 04:36:19'),
(2985, 'C. K. Pithawalla Institute of Pharmaceutical Science and Research', 'Surat', 'IN', 'https://ckpipsr.ac.in', 'https://openalex.org/I4405254266', 0, '2025-11-30 04:36:19', '2025-11-30 04:36:19'),
(2986, 'Sister Nibedita Government General Degree College for Girls', 'Kolkata', 'IN', 'https://www.snggdcg.ac.in', 'https://openalex.org/I4405254295', 0, '2025-11-30 04:36:19', '2025-11-30 04:36:19'),
(2987, 'The Apollo University', 'Chittoor', 'IN', 'https://apollouniversity.edu.in', 'https://openalex.org/I4405254339', 0, '2025-11-30 04:36:20', '2025-11-30 04:36:20'),
(2988, 'College of Engineering Trivandrum', 'Thiruvananthapuram', 'IN', 'https://www.cet.ac.in', 'https://openalex.org/I4405254352', 0, '2025-11-30 04:36:20', '2025-11-30 04:36:20'),
(2989, 'SAM Global University', 'Bhopal', 'IN', 'https://www.samglobaluniversity.ac.in', 'https://openalex.org/I4405254376', 0, '2025-11-30 04:36:20', '2025-11-30 04:36:20'),
(2990, 'Sree Narayana College, Punalur', 'Punalūr', 'IN', 'https://www.sncollegepunalur.in', 'https://openalex.org/I4405254405', 0, '2025-11-30 04:36:20', '2025-11-30 04:36:20'),
(2991, 'St. Xavier\'s College', 'Mapusa', 'IN', 'https://xavierscollegegoa.ac.in', 'https://openalex.org/I4405254408', 0, '2025-11-30 04:36:20', '2025-11-30 04:36:20'),
(2992, 'PSG College of Technology', 'Coimbatore', 'IN', 'https://www.psgtech.edu', 'https://openalex.org/I4405254442', 0, '2025-11-30 04:36:20', '2025-11-30 04:36:20'),
(2993, 'Newman College', 'Thodupuzha', 'IN', 'https://newmancollege.ac.in', 'https://openalex.org/I4405254459', 0, '2025-11-30 04:36:20', '2025-11-30 04:36:20'),
(2994, 'Jagannath International Management School, Vasant Kunj, New Delhi', 'Vasant Kunj', 'IN', 'https://www.jimsd.org', 'https://openalex.org/I4405254466', 0, '2025-11-30 04:36:20', '2025-11-30 04:36:20'),
(2995, 'Sri Sairam College of Engineering', 'Bengaluru', 'IN', 'https://sairamce.edu.in', 'https://openalex.org/I4405254487', 0, '2025-11-30 04:36:20', '2025-11-30 04:36:20'),
(2996, 'Puducherry Technological University', 'Puducherry', 'IN', 'https://ptuniv.edu.in', 'https://openalex.org/I4405254494', 0, '2025-11-30 04:36:20', '2025-11-30 04:36:20'),
(2997, 'Govt. College Mananthavady', 'Mananthavady', 'IN', 'https://gcmdy.org', 'https://openalex.org/I4405254586', 0, '2025-11-30 04:36:20', '2025-11-30 04:36:20'),
(2998, 'Ambika Prasad Research Foundation', 'Cuttack', 'IN', 'https://aprf.co.in', 'https://openalex.org/I4405254640', 0, '2025-11-30 04:36:20', '2025-11-30 04:36:20'),
(2999, 'Nephro Care India Limited (India)', 'Kolkata', 'IN', 'https://www.nephrocareindia.com', 'https://openalex.org/I4405254645', 0, '2025-11-30 04:36:20', '2025-11-30 04:36:20'),
(3000, 'Praxis Business School', 'Kolkata', 'IN', 'https://praxis.ac.in', 'https://openalex.org/I4405254716', 0, '2025-11-30 04:36:20', '2025-11-30 04:36:20'),
(3001, 'B.E.S.T Innovation University', 'Gorantla', 'IN', 'https://bestiu.edu.in', 'https://openalex.org/I4405254720', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3002, 'Adesh Medical College & Hospital', 'Shahbad', 'IN', 'https://amch.ac.in', 'https://openalex.org/I4405254729', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3003, 'LEAD College of Management', 'Palakkad', 'IN', 'https://lead.ac.in', 'https://openalex.org/I4405254774', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3004, 'Wildlife Trust of India', 'Noida', 'IN', 'https://www.wti.org.in', 'https://openalex.org/I4405254779', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3005, 'Shodh Sagar (India)', 'Delhi', 'IN', 'https://www.shodhsagar.org/index.php/home', 'https://openalex.org/I4405254812', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3006, 'Institute of Mechanics of Continua and Mathematical Sciences', 'Kolkata', 'IN', 'https://www.instituteimcms.org', 'https://openalex.org/I4405254816', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3007, 'Shree Somnath Sanskrit University', 'Verāval', 'IN', 'https://www.sssu.ac.in', 'https://openalex.org/I4405254836', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3008, 'Swami Vivekananda University', 'Bārākpur', 'IN', 'https://www.swamivivekanandauniversity.ac.in', 'https://openalex.org/I4405254891', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3009, 'Nirmala College for Women', 'Coimbatore', 'IN', 'https://www.nirmalacollegeonline.ac.in', 'https://openalex.org/I4405254926', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3010, 'Malla Reddy University', 'Hyderabad', 'IN', 'https://www.mallareddyuniversity.ac.in', 'https://openalex.org/I4405254961', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3011, 'KSCSTE - Institute for Climate Change Studies', 'Kottayam', 'IN', 'https://iccs.res.in', 'https://openalex.org/I4405255016', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3012, 'Islamia College of Science and Commerce, Srinagar', 'Srinagar', 'IN', 'https://www.islamiacollege.edu.in', 'https://openalex.org/I4405255054', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3013, 'ICAR - Agricultural Technology Application Research Institute', 'Jabalpur', 'IN', 'https://atarijabalpur.icar.gov.in', 'https://openalex.org/I4405255076', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3014, 'Priyadharshani Research and Development (OPC) Pvt. Ltd. (India)', 'Chennai', 'IN', 'https://pdit.in', 'https://openalex.org/I4405255126', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3015, 'Maulana Azad University Jodhpur', 'Jodhpur', 'IN', 'https://www.mauj.ac.in', 'https://openalex.org/I4405255144', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3016, 'Rajah Serfoji Government College (Autonomous)', 'Thanjavur', 'IN', 'https://www.rsgc.ac.in', 'https://openalex.org/I4405255148', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3017, 'Ramaiah Institute of Technology', 'Bengaluru', 'IN', 'https://www.msrit.edu', 'https://openalex.org/I4405255153', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3018, 'Government Medical College Omandurar', 'Chennai', 'IN', 'https://gmcomu.ac.in', 'https://openalex.org/I4405255192', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3019, 'Mahatma Basaveshwar Education Society\'s College of Engineering, Ambajogai', 'Ambejogai', 'IN', 'https://www.coea.ac.in', 'https://openalex.org/I4405255200', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3020, 'Indian Institute of Management Jammu', 'Jammu', 'IN', 'https://www.iimj.ac.in', 'https://openalex.org/I4405255249', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3021, 'Nootan Ayurvedic College & Research Centre', 'Visnagar', 'IN', 'https://nacrc.spu.ac.in', 'https://openalex.org/I4405255360', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3022, 'K.M.G. College of Arts and Science (Autonomous)', 'Gudiyatham', 'IN', 'https://kmgcollege.edu.in', 'https://openalex.org/I4405255366', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3023, 'Jagannath International Management School, Kalkaji, New Delhi', 'Kalkaji', 'IN', 'https://www.jagannath.org', 'https://openalex.org/I4405255379', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3024, 'Electrical Research and Development Association', 'Vadodara', 'IN', 'https://www.erda.org', 'https://openalex.org/I4405255462', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3025, 'All India Institute of Medical Sciences, Kalyani', 'Kalyani', 'IN', 'https://aiimskalyani.edu.in', 'https://openalex.org/I4405255515', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3026, 'City College, Kolkata', 'Kolkata', 'IN', 'https://citycollegekolkata.org', 'https://openalex.org/I4405255523', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3027, 'St. Andrews Institute of Technology and Management', 'Gurugram', 'IN', 'https://saitm.ac.in', 'https://openalex.org/I4405255584', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3028, 'Dr. Dayaram Patel Pharmacy College', 'Bārdoli', 'IN', 'https://dppc.ac.in', 'https://openalex.org/I4405255592', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3029, 'Gour Mahavidyalaya', 'Malda', 'IN', 'https://gourmaha.ac.in', 'https://openalex.org/I4405255597', 0, '2025-11-30 04:36:21', '2025-11-30 04:36:21'),
(3030, 'Jawahar Medical Foundation\'s Annasaheb Chudaman Patil Memorial Medical College & Hospital', 'Dhule', 'IN', 'https://jmfacpm.com', 'https://openalex.org/I4405255648', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3031, 'Shiv Nadar University, Chennai', 'Chennai', 'IN', 'https://www.snuchennai.edu.in', 'https://openalex.org/I4405255682', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3032, 'Government College of Pharmacy Rohru', 'Shimla', 'IN', 'https://gcprohru.ac.in', 'https://openalex.org/I4405255720', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3033, 'Indian Institute of Information Technology, Sonepat', 'Sonipat', 'IN', 'https://iiitsonepat.ac.in', 'https://openalex.org/I4405255737', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3034, 'Assumption College', 'Changanassery', 'IN', 'https://assumptioncollege.edu.in', 'https://openalex.org/I4405255754', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3035, 'Hooghly Engineering & Technology College', 'Hugli', 'IN', 'https://www.hetc.ac.in', 'https://openalex.org/I4405255795', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3036, 'School of Planning and Architecture, Vijayawada', 'Vijayawada', 'IN', 'https://www.spav.ac.in', 'https://openalex.org/I4405255821', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3037, 'P. R. Pote Patil College of Engineering & Management, Amravati', 'Amravati', 'IN', 'https://prpotepatilengg.ac.in', 'https://openalex.org/I4405255841', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3038, 'The Madura College', 'Madurai', 'IN', 'https://www.maduracollege.edu.in', 'https://openalex.org/I4405255910', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3039, 'Kannur Dental College', 'Kannur', 'IN', 'https://anjarakandy.in/kmcdental', 'https://openalex.org/I4405255938', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3040, 'Lakulish Yoga University', 'Ahmedabad', 'IN', 'https://lyu.ac.in', 'https://openalex.org/I4405256002', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3041, 'St. Xavier\'s College (Autonomous), Kolkata', 'Kolkata', 'IN', 'https://sxccal.edu', 'https://openalex.org/I4405256019', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3042, 'Biomaz Infosearch', 'Madurai', 'IN', 'https://biomaz.org.in', 'https://openalex.org/I4405256036', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3043, 'College of Engineering and Management, Kolaghat', 'Kolaghat', 'IN', 'https://www.cemkolaghat.in', 'https://openalex.org/I4405256050', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3044, 'Rishihood University', 'Bahālgarh', 'IN', 'https://rishihood.edu.in', 'https://openalex.org/I4405256055', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3045, 'Jhargram Raj College', 'Jhārgrām', 'IN', 'https://jrc.ac.in', 'https://openalex.org/I4405256066', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3046, 'Mata Gujri Memorial Medical College & Lions Seva Kendra Hospital', 'Kishanganj', 'IN', 'https://www.mgmmckishanganj.in', 'https://openalex.org/I4405256071', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3047, 'Symbiosis University of Applied Sciences', 'Indore', 'IN', 'https://www.suas.ac.in', 'https://openalex.org/I4405256131', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3048, 'Rajkiya Engineering College Mainpuri', 'Mainpuri', 'IN', 'https://recmainpuri.in', 'https://openalex.org/I4405256139', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3049, 'GM University Davanagere Karnataka', 'Davanagere District', 'IN', 'https://www.gmu.ac.in', 'https://openalex.org/I4405256143', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3050, 'Darul Uloom Deoband', 'Deoband', 'IN', 'https://darululoom-deoband.com', 'https://openalex.org/I4405256146', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3051, 'Government Ayurvedic College & Hospital, Balangir', 'Balangir', 'IN', 'https://www.gachbalangirodisha.ac.in', 'https://openalex.org/I4405256176', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3052, 'Sri Dev Suman Uttarakhand University', 'New Tehri', 'IN', 'https://sdsuv.ac.in', 'https://openalex.org/I4405256247', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3053, 'Malla Reddy Engineering College for Women', 'Hyderabad', 'IN', 'https://www.mallareddyecw.com', 'https://openalex.org/I4405256248', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3054, 'RVS College of Engineering & Technology, Jamshedpur', 'Jamshedpur', 'IN', 'https://www.rvscollege.ac.in', 'https://openalex.org/I4405256256', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3055, 'All India Institute of Medical Sciences, Vijaypur, Jammu', 'Jammu', 'IN', 'https://www.aiimsjammu.edu.in', 'https://openalex.org/I4405256279', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3056, 'Nabarangpur College', 'Nabarangapur District', 'IN', 'https://nabarangpurcollege.ac.in', 'https://openalex.org/I4405256317', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3057, 'The Assam Royal Global University', 'Guwahati', 'IN', 'https://www.rgu.ac', 'https://openalex.org/I4405256338', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3058, 'Sumathi Reddy Institute of Technology for Women', 'Warangal', 'IN', 'https://sritw.edu.in', 'https://openalex.org/I4405256363', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3059, 'National Institute of Unani Medicine', 'Bengaluru', 'IN', 'http://www.nium.in', 'https://openalex.org/I4405256369', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3060, 'Islamic University of Science and Technology, Kashmir', 'Srinagar', 'IN', 'https://www.iust.ac.in', 'https://openalex.org/I4405256391', 0, '2025-11-30 04:36:22', '2025-11-30 04:36:22'),
(3061, 'Ayurved Mahavidyalaya & Seth RV Ayurved Hospital', 'Mumbai', 'IN', 'https://www.sionayurved.org', 'https://openalex.org/I4405256402', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3062, 'Velalar College of Engineering and Technology', 'Erode', 'IN', 'https://www.velalarengg.ac.in', 'https://openalex.org/I4405256405', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3063, 'Squad Medicine and Research (SMR)', 'Amadalavalasa', 'IN', 'https://www.smrofficial.org', 'https://openalex.org/I4405256514', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3064, 'Indian Institute of Information Technology Lucknow', 'Lucknow', 'IN', 'https://iiitl.ac.in', 'https://openalex.org/I4405256517', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3065, 'JIS University', 'Kolkata', 'IN', 'https://www.jisuniversity.ac.in', 'https://openalex.org/I4405256552', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3066, 'Shivnagar Vidya Prasarak Mandal Institute of Technology and Engineering', 'Baramati', 'IN', 'https://ite.svpm.org.in', 'https://openalex.org/I4405256592', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3067, 'Sydenham College of Commerce and Economics, Mumbai', 'Mumbai', 'IN', 'https://sydenham.ac.in', 'https://openalex.org/I4405256601', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3068, 'Pontifical Oriental Institute of Religious Studies', 'Kottayam', 'IN', 'https://pvpkottayam.in', 'https://openalex.org/I4405256646', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3069, 'RajaRajeswari College of Engineering', 'Bengaluru', 'IN', 'https://www.rrce.org', 'https://openalex.org/I4405256669', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3070, 'Ministry of Mines', 'New Delhi', 'IN', 'https://mines.gov.in', 'https://openalex.org/I4405256676', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3071, 'Foundation for Advancement of Essential Diagnostics', 'Guwahati', 'IN', 'https://www.faed.in', 'https://openalex.org/I4405256689', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3072, 'Arunachal Pradesh University', 'Pasighat', 'IN', 'https://apupsg.ac.in', 'https://openalex.org/I4405256773', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3073, 'Mata Gujri University', 'Kishanganj', 'IN', 'https://www.matagujriuniversity.com', 'https://openalex.org/I4405256774', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3074, 'Jawaharlal Nehru Technological University-Gurajada, Vizianagaram', 'Vizianagaram', 'IN', 'https://jntugvcev.edu.in', 'https://openalex.org/I4405256783', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3075, 'Guru Nanak Institute of Management Studies', 'Mumbai', 'IN', 'https://www.gnims.edu.in', 'https://openalex.org/I4405256850', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3076, 'Manipur International University', 'Imphal', 'IN', 'https://miu.edu.in', 'https://openalex.org/I4405256854', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3077, 'Atria Institute of Technology', 'Bengaluru', 'IN', 'https://atria.edu', 'https://openalex.org/I4405256893', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3078, 'Bharathiyar Institute of Engineering for Women', 'Thalaivasal', 'IN', 'https://biew.ac.in', 'https://openalex.org/I4405256908', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3079, 'New Horizon College of Engineering', 'Bengaluru', 'IN', 'https://newhorizoncollegeofengineering.in', 'https://openalex.org/I4405256925', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3080, 'Agriculture University, Jodhpur', 'Jodhpur', 'IN', 'https://www.aujodhpur.ac.in', 'https://openalex.org/I4405256963', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3081, 'Institute of Health Management Research Bangalore', 'Bengaluru', 'IN', 'https://iihmrbangalore.edu.in', 'https://openalex.org/I4405256990', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3082, 'Dr. Subhash University', 'Junagadh', 'IN', 'https://dsuni.ac.in', 'https://openalex.org/I4405256992', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3083, 'S. G. Balekundri Institute of Technology Belagavi', 'Belagavi', 'IN', 'https://www.sgbit.edu.in', 'https://openalex.org/I4405257022', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23');
INSERT INTO `institutions` (`id`, `name`, `city`, `country`, `website`, `domain`, `is_verified`, `created_at`, `updated_at`) VALUES
(3084, 'Dr. D. Y. Patil B-School', 'Pune', 'IN', 'https://bschool.dpu.edu.in', 'https://openalex.org/I4405257030', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3085, 'National Institute of Biologicals', 'Noida', 'IN', 'https://www.nib.gov.in', 'https://openalex.org/I4405257039', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3086, 'Ajay Kumar Garg Engineering College', 'Ghaziabad', 'IN', 'https://www.akgec.ac.in', 'https://openalex.org/I4405257060', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3087, 'B.V. Raju College', 'Bhimavaram', 'IN', 'https://bvricedegree.edu.in', 'https://openalex.org/I4405257069', 0, '2025-11-30 04:36:23', '2025-11-30 04:36:23'),
(3088, 'National Institute for the Empowerment of Persons with Intellectual Disabilities', 'Secunderabad', 'IN', 'https://niepid.nic.in', 'https://openalex.org/I4405257076', 0, '2025-11-30 04:36:24', '2025-11-30 04:36:24'),
(3089, 'GloNeuro', 'Noida', 'IN', 'https://gloneuro.org', 'https://openalex.org/I4405257106', 0, '2025-11-30 04:36:24', '2025-11-30 04:36:24'),
(3090, 'All India Institute of Medical Sciences Gorakhpur', 'Gorakhpur', 'IN', 'https://aiimsgorakhpur.edu.in', 'https://openalex.org/I4405257162', 0, '2025-11-30 04:36:24', '2025-11-30 04:36:24'),
(3091, 'Bangabasi Morning College', 'Kolkata', 'IN', 'https://www.bangabasimorning.edu.in', 'https://openalex.org/I4405257178', 0, '2025-11-30 04:36:24', '2025-11-30 04:36:24'),
(3092, 'Assam Science and Technology University', 'Guwahati', 'IN', 'https://astu.ac.in', 'https://openalex.org/I4405257221', 0, '2025-11-30 04:36:24', '2025-11-30 04:36:24'),
(3093, 'LJ University', 'Ahmedabad', 'IN', 'https://ljku.edu.in', 'https://openalex.org/I4405257251', 0, '2025-11-30 04:36:24', '2025-11-30 04:36:24'),
(3094, 'School of Management Sciences, Varanasi', 'Varanasi', 'IN', 'https://www.smsvaranasi.com', 'https://openalex.org/I4405257256', 0, '2025-11-30 04:36:24', '2025-11-30 04:36:24'),
(3095, 'Bihar National College', 'Patna', 'IN', 'https://www.bncollegepatna.com', 'https://openalex.org/I4405257325', 0, '2025-11-30 04:36:24', '2025-11-30 04:36:24'),
(3096, 'Nalla Narasimha Reddy Education Society\'s Group of Institutions', 'Hyderabad', 'IN', 'https://www.nnrg.edu.in', 'https://openalex.org/I4405257354', 0, '2025-11-30 04:36:24', '2025-11-30 04:36:24'),
(3097, 'Sona College of Technology', 'Salem', 'IN', 'https://www.sonatech.ac.in', 'https://openalex.org/I4405257457', 0, '2025-11-30 04:36:24', '2025-11-30 04:36:24'),
(3098, 'Balagarh Bijoy Krishna Mahavidyalaya', 'Jirāt', 'IN', 'https://www.bbkm.ac.in', 'https://openalex.org/I4405257469', 0, '2025-11-30 04:36:24', '2025-11-30 04:36:24'),
(3099, 'Srusti Academy of Management', 'Bhubaneswar', 'IN', 'https://www.srustiacademy.ac.in', 'https://openalex.org/I4405257479', 0, '2025-11-30 04:36:24', '2025-11-30 04:36:24'),
(3100, 'Guru Nanak First Grade College Bidar', 'Bidar', 'IN', 'https://gnfgc.ac.in', 'https://openalex.org/I4405257600', 0, '2025-11-30 04:36:24', '2025-11-30 04:36:24'),
(3101, 'All India Institute of Medical Sciences, Mangalagiri', 'Mangalagiri', 'IN', 'https://www.aiimsmangalagiri.edu.in', 'https://openalex.org/I4405257640', 0, '2025-11-30 04:36:24', '2025-11-30 04:36:24'),
(3102, 'Center for Studies in Ethnobiology Biodiversity & Sustainability', 'Malda', 'IN', 'https://ceibatrust.org', 'https://openalex.org/I4405257641', 0, '2025-11-30 04:36:24', '2025-11-30 04:36:24'),
(3103, 'KV Institute of Management and Information Studies', 'Coimbatore', 'IN', 'https://kvimis.co.in', 'https://openalex.org/I4405257656', 0, '2025-11-30 04:36:24', '2025-11-30 04:36:24'),
(3104, 'Maharashtra Institute of Dental Science and Research', 'Latur', 'IN', 'https://mitmidsr.edu.in', 'https://openalex.org/I4405257707', 0, '2025-11-30 04:36:24', '2025-11-30 04:36:24'),
(3105, 'KMEA Engineering College', 'Ernakulam', 'IN', 'https://www.kmeacollege.ac.in', 'https://openalex.org/I4405257739', 0, '2025-11-30 04:36:25', '2025-11-30 04:36:25'),
(3106, 'M S Ramaiah Institute of Management', 'Bengaluru', 'IN', 'https://msrim.in', 'https://openalex.org/I4405257743', 0, '2025-11-30 04:36:25', '2025-11-30 04:36:25'),
(3107, 'Surya Sen Mahavidyalaya', 'Siliguri', 'IN', 'https://suryasencollege.org.in', 'https://openalex.org/I4405257758', 0, '2025-11-30 04:36:25', '2025-11-30 04:36:25'),
(3108, 'University of Engineering & Management, Jaipur', 'Jaipur', 'IN', 'https://jaipur.uem.edu.in', 'https://openalex.org/I4405257789', 0, '2025-11-30 04:36:25', '2025-11-30 04:36:25'),
(3109, 'St. Francis Institute of Management and Research', 'Mumbai', 'IN', 'https://www.sfimar.org', 'https://openalex.org/I4405257874', 0, '2025-11-30 04:36:25', '2025-11-30 04:36:25'),
(3110, 'Sustainable Futures Collaborative', 'New Delhi', 'IN', 'https://www.sustainablefutures.org', 'https://openalex.org/I4405257875', 0, '2025-11-30 04:36:25', '2025-11-30 04:36:25'),
(3111, 'Sree Abirami College of Occupational Therapy', 'Coimbatore', 'IN', 'https://www.abiramicot.com', 'https://openalex.org/I4405257896', 0, '2025-11-30 04:36:25', '2025-11-30 04:36:25'),
(3112, 'RV University', 'Bengaluru', 'IN', 'https://rvu.edu.in', 'https://openalex.org/I4405257909', 0, '2025-11-30 04:36:25', '2025-11-30 04:36:25'),
(3113, 'Amaltas University', 'Dewas', 'IN', 'https://amaltasuniversity.in', 'https://openalex.org/I4405257959', 0, '2025-11-30 04:36:25', '2025-11-30 04:36:25'),
(3114, 'Society for AgroEnvironmental Sustainability', 'Dehradun', 'IN', 'https://www.sagens.org', 'https://openalex.org/I4405258013', 0, '2025-11-30 04:36:25', '2025-11-30 04:36:25'),
(3115, 'Maharshi Dayanand Science College, Porbandar', 'Porbandar', 'IN', 'https://www.mdscience.in', 'https://openalex.org/I4405258030', 0, '2025-11-30 04:36:25', '2025-11-30 04:36:25');

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
(4, '2025_11_27_1', 1),
(5, '2025_11_27_2', 1),
(6, '2025_11_27_new_updates', 2),
(7, '2025_11_29_look_up_updates', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mime_types`
--

CREATE TABLE `mime_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `extension` varchar(20) NOT NULL,
  `mime_type` varchar(100) NOT NULL,
  `icon_class` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `action_url` varchar(255) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `program_streams`
--

CREATE TABLE `program_streams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_field_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_streams`
--

INSERT INTO `program_streams` (`id`, `academic_field_id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'B.Tech Computer Science', 'btech-cse', '2025-11-30 09:11:29', '2025-11-30 09:11:29'),
(2, 1, 'B.Tech Mechanical', 'btech-mech', '2025-11-30 09:11:29', '2025-11-30 09:11:29'),
(3, 1, 'B.Tech Civil', 'btech-civil', '2025-11-30 09:11:29', '2025-11-30 09:11:29'),
(4, 1, 'B.Tech Electrical', 'btech-electrical', '2025-11-30 09:11:29', '2025-11-30 09:11:29'),
(5, 3, 'BCA (Bachelor of Computer App)', 'bca', '2025-11-30 09:11:29', '2025-11-30 09:11:29'),
(6, 3, 'MCA (Master of Computer App)', 'mca', '2025-11-30 09:11:29', '2025-11-30 09:11:29'),
(7, 4, 'B.Com General', 'bcom-general', '2025-11-30 09:11:29', '2025-11-30 09:11:29'),
(8, 4, 'B.Com Honors', 'bcom-honors', '2025-11-30 09:11:29', '2025-11-30 09:11:29'),
(9, 7, 'BBA (Bachelor of Business Admin)', 'bba', '2025-11-30 09:11:29', '2025-11-30 09:11:29'),
(10, 7, 'MBA Finance', 'mba-finance', '2025-11-30 09:11:29', '2025-11-30 09:11:29'),
(11, 7, 'MBA Marketing', 'mba-marketing', '2025-11-30 09:11:29', '2025-11-30 09:11:29'),
(12, 2, 'MBBS', 'mbbs', '2025-11-30 09:11:29', '2025-11-30 09:11:29'),
(13, 2, 'BDS (Dental)', 'bds', '2025-11-30 09:11:29', '2025-11-30 09:11:29'),
(14, 12, 'B.Pharm', 'bpharm', '2025-11-30 09:11:29', '2025-11-30 09:11:29'),
(15, 6, 'B.Sc Physics', 'bsc-physics', '2025-11-30 09:11:29', '2025-11-30 09:11:29'),
(16, 6, 'B.Sc Mathematics', 'bsc-math', '2025-11-30 09:11:29', '2025-11-30 09:11:29'),
(17, 6, 'B.Sc Chemistry', 'bsc-chemistry', '2025-11-30 09:11:29', '2025-11-30 09:11:29'),
(18, 5, 'BA English', 'ba-english', '2025-11-30 09:11:29', '2025-11-30 09:11:29'),
(19, 5, 'BA Psychology', 'ba-psychology', '2025-11-30 09:11:29', '2025-11-30 09:11:29'),
(20, 5, 'MA History', 'ma-history', '2025-11-30 09:11:29', '2025-11-30 09:11:29'),
(21, 8, 'LLB', 'llb', '2025-11-30 09:11:29', '2025-11-30 09:11:29'),
(22, 14, 'BA Journalism', 'ba-journalism', '2025-11-30 09:11:29', '2025-11-30 09:11:29'),
(23, 9, 'B.Arch (Architecture)', 'barch', '2025-11-30 09:11:29', '2025-11-30 09:11:29'),
(24, 10, 'B.Ed (Education)', 'bed', '2025-11-30 09:11:29', '2025-11-30 09:11:29'),
(25, 1, 'M.Tech CSE', 'mtech-cse', '2025-11-30 09:11:29', '2025-11-30 09:11:29');

-- --------------------------------------------------------

--
-- Table structure for table `program_stream_levels`
--

CREATE TABLE `program_stream_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `program_stream_id` bigint(20) UNSIGNED NOT NULL,
  `academic_level_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_stream_levels`
--

INSERT INTO `program_stream_levels` (`id`, `program_stream_id`, `academic_level_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(2, 1, 2, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(3, 1, 3, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(4, 1, 4, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(5, 1, 5, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(6, 1, 6, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(7, 5, 1, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(8, 5, 2, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(9, 5, 3, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(10, 5, 4, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(11, 7, 9, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(12, 7, 10, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(13, 7, 11, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(14, 12, 9, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(15, 12, 10, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(16, 10, 1, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(17, 10, 2, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(18, 10, 3, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(19, 2, 1, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(20, 2, 2, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(21, 2, 3, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(22, 21, 1, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(23, 21, 2, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(24, 15, 1, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(25, 15, 2, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(26, 18, 1, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(27, 18, 2, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(28, 6, 1, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(29, 6, 2, '2025-11-30 09:11:41', '2025-11-30 09:11:41'),
(30, 23, 1, '2025-11-30 09:11:41', '2025-11-30 09:11:41');

-- --------------------------------------------------------

--
-- Table structure for table `program_stream_level_subjects`
--

CREATE TABLE `program_stream_level_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `program_stream_level_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_stream_level_subjects`
--

INSERT INTO `program_stream_level_subjects` (`id`, `program_stream_level_id`, `subject_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(2, 1, 2, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(3, 1, 25, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(4, 1, 20, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(5, 2, 24, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(6, 2, 23, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(7, 2, 27, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(8, 3, 3, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(9, 3, 10, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(10, 3, 26, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(11, 4, 4, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(12, 4, 5, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(13, 4, 7, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(14, 5, 6, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(15, 5, 8, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(16, 7, 1, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(17, 7, 25, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(18, 11, 12, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(19, 11, 11, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(20, 11, 13, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(21, 14, 17, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(22, 16, 14, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(23, 16, 15, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(24, 16, 12, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(25, 21, 21, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(26, 21, 22, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(27, 22, 19, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(28, 22, 13, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(29, 24, 2, '2025-11-30 09:12:01', '2025-11-30 09:12:01'),
(30, 24, 1, '2025-11-30 09:12:01', '2025-11-30 09:12:01');

-- --------------------------------------------------------

--
-- Table structure for table `program_stream_subjects`
--

CREATE TABLE `program_stream_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `program_stream_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_stream_subjects`
--

INSERT INTO `program_stream_subjects` (`id`, `program_stream_id`, `subject_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 20, NULL, NULL),
(4, 1, 25, NULL, NULL),
(5, 1, 23, NULL, NULL),
(6, 1, 24, NULL, NULL),
(7, 1, 27, NULL, NULL),
(8, 1, 3, NULL, NULL),
(9, 1, 10, NULL, NULL),
(10, 1, 26, NULL, NULL),
(11, 1, 4, NULL, NULL),
(12, 1, 5, NULL, NULL),
(13, 1, 7, NULL, NULL),
(14, 1, 6, NULL, NULL),
(15, 1, 8, NULL, NULL),
(16, 5, 1, NULL, NULL),
(17, 5, 25, NULL, NULL),
(18, 7, 11, NULL, NULL),
(19, 7, 12, NULL, NULL),
(20, 7, 13, NULL, NULL),
(21, 12, 17, NULL, NULL),
(22, 10, 12, NULL, NULL),
(23, 10, 14, NULL, NULL),
(24, 10, 15, NULL, NULL),
(25, 2, 21, NULL, NULL),
(26, 2, 22, NULL, NULL),
(27, 21, 13, NULL, NULL),
(28, 21, 19, NULL, NULL),
(29, 15, 1, NULL, NULL),
(30, 15, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reporter_id` bigint(20) UNSIGNED NOT NULL,
  `reportable_type` varchar(255) NOT NULL,
  `reportable_id` bigint(20) UNSIGNED NOT NULL,
  `reason` varchar(255) NOT NULL,
  `details` text DEFAULT NULL,
  `status` enum('pending','reviewed','resolved','dismissed') NOT NULL DEFAULT 'pending',
  `resolved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `resolved_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `reporter_id`, `reportable_type`, `reportable_id`, `reason`, `details`, `status`, `resolved_by`, `resolved_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'App\\Models\\DigitalFile', 4, 'Spam', 'Test', 'pending', NULL, NULL, '2025-12-01 23:19:22', '2025-12-01 23:19:22'),
(2, 1, 'App\\Models\\DigitalFile', 2, 'False Information', 'Test Report this ', 'pending', NULL, NULL, '2025-12-02 06:17:18', '2025-12-02 06:17:18');

-- --------------------------------------------------------

--
-- Table structure for table `resource_types`
--

CREATE TABLE `resource_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resource_types`
--

INSERT INTO `resource_types` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Lecture Notes', 'lecture-notes', '2025-11-30 09:11:06', '2025-11-30 09:11:06'),
(2, 'Textbook', 'textbook', '2025-11-30 09:11:06', '2025-11-30 09:11:06'),
(3, 'Previous Year Paper', 'previous-year-paper', '2025-11-30 09:11:06', '2025-11-30 09:11:06'),
(4, 'Assignment Solution', 'assignment-solution', '2025-11-30 09:11:06', '2025-11-30 09:11:06'),
(5, 'Lab Manual', 'lab-manual', '2025-11-30 09:11:06', '2025-11-30 09:11:06'),
(6, 'Project Report', 'project-report', '2025-11-30 09:11:06', '2025-11-30 09:11:06'),
(7, 'Syllabus', 'syllabus', '2025-11-30 09:11:06', '2025-11-30 09:11:06'),
(8, 'Presentation Slides', 'presentation-slides', '2025-11-30 09:11:06', '2025-11-30 09:11:06'),
(9, 'Research Paper', 'research-paper', '2025-11-30 09:11:06', '2025-11-30 09:11:06'),
(11, 'Cheat Sheet', 'cheat-sheet', '2025-11-30 09:11:06', '2025-11-30 09:11:06'),
(12, 'Question Bank', 'question-bank', '2025-11-30 09:11:06', '2025-11-30 09:11:06'),
(13, 'Case Study', 'case-study', '2025-11-30 09:11:06', '2025-11-30 09:11:06'),
(14, 'Thesis', 'thesis', '2025-11-30 09:11:06', '2025-11-30 09:11:06'),
(15, 'Practical File', 'practical-file', '2025-11-30 09:11:06', '2025-11-30 09:11:06'),
(17, 'Diagrams & Charts', 'diagrams-charts', '2025-11-30 09:11:06', '2025-11-30 09:11:06'),
(18, 'Seminar Report', 'seminar-report', '2025-11-30 09:11:06', '2025-11-30 09:11:06'),
(19, 'Workshop Material', 'workshop-material', '2025-11-30 09:11:06', '2025-11-30 09:11:06'),
(20, 'Class Handwriting', 'class-handwriting', '2025-11-30 09:11:06', '2025-11-30 09:11:06');

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
('o0GAcdtwyiYbpK9toU1quPHMwjGrzLRx4QebgNGX', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRW14eGlZalE5cFluYWJyOXRDVFJ6dFRVd25DQzJqYzZJU3VmcUNqWCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC91cGxvYWQiO3M6NToicm91dGUiO3M6MTM6InVwbG9hZC5jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTc2NTExMjY4Nzt9fQ==', 1765114650);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Engineering Mathematics I', 'MAT101', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(2, 'Engineering Physics', 'PHY101', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(3, 'Data Structures', 'CS201', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(4, 'Database Management Systems', 'CS301', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(5, 'Operating Systems', 'CS302', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(6, 'Computer Networks', 'CS303', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(7, 'Software Engineering', 'CS304', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(8, 'Web Development', 'CS401', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(9, 'Machine Learning', 'CS501', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(10, 'Digital Logic Design', 'EC201', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(11, 'Microeconomics', 'ECO101', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(12, 'Financial Accounting', 'ACC101', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(13, 'Business Law', 'LAW101', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(14, 'Marketing Management', 'MKT201', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(15, 'Human Resource Management', 'HRM201', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(16, 'Organic Chemistry', 'CHEM201', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(17, 'Human Anatomy', 'MED101', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(18, 'Pharmacology', 'PHAR201', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(19, 'Constitutional Law', 'LAW201', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(20, 'Communication Skills', 'HUM101', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(21, 'Thermodynamics', 'ME201', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(22, 'Fluid Mechanics', 'ME202', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(23, 'Circuit Theory', 'EE201', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(24, 'Discrete Mathematics', 'MAT202', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(25, 'Python Programming', 'CS105', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(26, 'Java Programming', 'CS205', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(27, 'Environmental Science', 'EVS101', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(28, 'Cost Accounting', 'ACC201', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(29, 'Psychology Basics', 'PSY101', '2025-11-30 09:11:15', '2025-11-30 09:11:15'),
(30, 'History of Art', 'ART101', '2025-11-30 09:11:15', '2025-11-30 09:11:15');

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `task` varchar(255) NOT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `priority` enum('low','medium','high') NOT NULL DEFAULT 'medium',
  `due_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `token_transactions`
--

CREATE TABLE `token_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `balance_after` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `reference_type` varchar(255) DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `token_transactions`
--

INSERT INTO `token_transactions` (`id`, `user_id`, `amount`, `balance_after`, `type`, `description`, `reference_type`, `reference_id`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 20, 'credit', 'Reward for uploading: Test Note', 'App\\Models\\DigitalFile', 1, '2025-12-01 00:40:43', '2025-12-01 00:40:43'),
(2, 1, 5, 25, 'credit', 'Reward for uploading: another test upload', 'App\\Models\\DigitalFile', 2, '2025-12-01 00:58:05', '2025-12-01 00:58:05'),
(3, 1, 5, 30, 'credit', 'Reward for uploading: Another UPload jsut...', 'App\\Models\\DigitalFile', 3, '2025-12-01 01:12:01', '2025-12-01 01:12:01'),
(4, 1, 3, 33, 'credit', 'Upload Reward', 'App\\Models\\DigitalFile', 4, '2025-12-01 03:39:32', '2025-12-01 03:39:32'),
(5, 1, 3, 36, 'credit', 'Upload Reward', 'App\\Models\\DigitalFile', 5, '2025-12-02 11:54:08', '2025-12-02 11:54:08'),
(6, 1, 3, 39, 'credit', 'Upload Reward', 'App\\Models\\DigitalFile', 6, '2025-12-03 06:35:15', '2025-12-03 06:35:15'),
(7, 1, 3, 42, 'credit', 'Upload Reward', 'App\\Models\\DigitalFile', 7, '2025-12-03 09:26:08', '2025-12-03 09:26:08'),
(8, 2, 3, 15, 'credit', 'Upload Reward', 'App\\Models\\DigitalFile', 9, '2025-12-05 09:03:10', '2025-12-05 09:03:10'),
(9, 2, 3, 18, 'credit', 'Upload Reward', 'App\\Models\\DigitalFile', 10, '2025-12-05 09:04:40', '2025-12-05 09:04:40'),
(10, 2, 3, 21, 'credit', 'Upload Reward', 'App\\Models\\DigitalFile', 11, '2025-12-05 09:06:20', '2025-12-05 09:06:20'),
(11, 1, -5, 37, 'debit', 'Unlocked: Angular test sheet by me', 'App\\Models\\DigitalFile', 11, '2025-12-05 09:07:17', '2025-12-05 09:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `avatar` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `tokens` int(11) NOT NULL DEFAULT 15,
  `status` enum('active','blocked') NOT NULL,
  `role` enum('user','admin','moderator') NOT NULL DEFAULT 'user',
  `profile_visibility` enum('public','private') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `tokens`, `status`, `role`, `profile_visibility`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'samkit', 'default_avatar.png', 'samkitjain2809@gmail.com', '2025-11-29 00:41:52', '$2y$12$7Hw8jOlfyNX6Gc8YrFABAu5td/oL1wvxBASmjskthBYUCMdczBCde', NULL, 37, 'active', 'admin', 'public', '2025-11-27 05:11:32', '2025-12-05 09:07:17', NULL),
(2, 'test', 'default_avatar.png', 'test@mail.com', '2025-11-27 06:15:55', '$2y$12$B48qOy35e4wLZvW0ITaD.e4DqV0I..YBXF0wuK.447aHK6qBdGAmm', NULL, 21, 'active', 'user', 'public', '2025-11-27 05:16:20', '2025-12-05 09:06:20', NULL),
(3, 'test2', 'default_avatar.png', 'main@mail.com', '2025-11-27 07:48:28', '$2y$12$maPgO0xmCoW8SaxBGAoSdOnp3dHG8zSQtstgT9yGGGjMbnTbga8F6', NULL, 18, 'blocked', 'user', 'public', '2025-11-27 07:46:02', '2025-11-27 22:40:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_follows`
--

CREATE TABLE `user_follows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `follower_id` bigint(20) UNSIGNED NOT NULL,
  `following_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_settings`
--

CREATE TABLE `user_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `profile_visibility` enum('public','private') NOT NULL DEFAULT 'public',
  `theme` enum('light','dark','system') NOT NULL DEFAULT 'system',
  `enable_todo_list` tinyint(1) NOT NULL DEFAULT 1,
  `allow_file_feedback` tinyint(1) NOT NULL DEFAULT 1,
  `newsletter_subscribed` tinyint(1) NOT NULL DEFAULT 1,
  `email_notifications` tinyint(1) NOT NULL DEFAULT 1,
  `notify_on_download` tinyint(1) NOT NULL DEFAULT 1,
  `notify_download_threshold` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `notify_token_updates` tinyint(1) NOT NULL DEFAULT 1,
  `notify_token_threshold` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_fields`
--
ALTER TABLE `academic_fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `academic_fields_name_unique` (`name`),
  ADD UNIQUE KEY `academic_fields_slug_unique` (`slug`);

--
-- Indexes for table `academic_levels`
--
ALTER TABLE `academic_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `academic_levels_name_unique` (`name`);

--
-- Indexes for table `accessed_files`
--
ALTER TABLE `accessed_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accessed_files_user_id_file_id_unique` (`user_id`,`file_id`),
  ADD KEY `accessed_files_file_id_foreign` (`file_id`);

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_logs_user_id_foreign` (`user_id`),
  ADD KEY `activity_logs_subject_type_subject_id_index` (`subject_type`,`subject_id`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bookmarks_user_id_file_id_unique` (`user_id`,`file_id`),
  ADD KEY `bookmarks_file_id_foreign` (`file_id`);

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
-- Indexes for table `collection_items`
--
ALTER TABLE `collection_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `collection_items_file_collection_id_digital_file_id_unique` (`file_collection_id`,`digital_file_id`),
  ADD KEY `collection_items_digital_file_id_foreign` (`digital_file_id`);

--
-- Indexes for table `digital_files`
--
ALTER TABLE `digital_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `digital_files_slug_unique` (`slug`),
  ADD KEY `digital_files_user_id_foreign` (`user_id`),
  ADD KEY `digital_files_academic_field_id_foreign` (`academic_field_id`),
  ADD KEY `digital_files_program_stream_id_foreign` (`program_stream_id`),
  ADD KEY `digital_files_academic_level_id_foreign` (`academic_level_id`),
  ADD KEY `digital_files_subject_id_foreign` (`subject_id`),
  ADD KEY `digital_files_resource_type_id_foreign` (`resource_type_id`),
  ADD KEY `digital_files_institution_id_foreign` (`institution_id`),
  ADD KEY `idx_main_browse` (`status`,`visibility`,`academic_field_id`,`resource_type_id`),
  ADD KEY `digital_files_content_hash_index` (`content_hash`),
  ADD KEY `digital_files_program_stream_level_id_foreign` (`program_stream_level_id`),
  ADD KEY `digital_files_program_stream_level_subject_id_foreign` (`program_stream_level_subject_id`);
ALTER TABLE `digital_files` ADD FULLTEXT KEY `digital_files_title_description_fulltext` (`title`,`description`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `downloads_user_id_foreign` (`user_id`),
  ADD KEY `downloads_file_id_foreign` (`file_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `feedback_user_id_file_id_unique` (`user_id`,`file_id`),
  ADD KEY `feedback_file_id_foreign` (`file_id`);

--
-- Indexes for table `file_collections`
--
ALTER TABLE `file_collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_collections_user_id_foreign` (`user_id`);

--
-- Indexes for table `institutions`
--
ALTER TABLE `institutions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `institutions_name_index` (`name`);

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
-- Indexes for table `mime_types`
--
ALTER TABLE `mime_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mime_types_extension_unique` (`extension`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`),
  ADD KEY `notifications_type_index` (`type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `program_streams`
--
ALTER TABLE `program_streams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `program_streams_academic_field_id_slug_unique` (`academic_field_id`,`slug`);

--
-- Indexes for table `program_stream_levels`
--
ALTER TABLE `program_stream_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `program_stream_levels_program_stream_id_academic_level_id_unique` (`program_stream_id`,`academic_level_id`),
  ADD KEY `program_stream_levels_academic_level_id_foreign` (`academic_level_id`);

--
-- Indexes for table `program_stream_level_subjects`
--
ALTER TABLE `program_stream_level_subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `psls_program_level_subject_unique` (`program_stream_level_id`,`subject_id`),
  ADD KEY `program_stream_level_subjects_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `program_stream_subjects`
--
ALTER TABLE `program_stream_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pss_stream_id_foreign` (`program_stream_id`),
  ADD KEY `pss_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_reporter_id_foreign` (`reporter_id`),
  ADD KEY `reports_reportable_type_reportable_id_index` (`reportable_type`,`reportable_id`),
  ADD KEY `reports_resolved_by_foreign` (`resolved_by`),
  ADD KEY `reports_status_index` (`status`);

--
-- Indexes for table `resource_types`
--
ALTER TABLE `resource_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `resource_types_name_unique` (`name`),
  ADD UNIQUE KEY `resource_types_slug_unique` (`slug`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subjects_name_unique` (`name`),
  ADD KEY `subjects_code_index` (`code`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `todos_user_id_is_completed_index` (`user_id`,`is_completed`);

--
-- Indexes for table `token_transactions`
--
ALTER TABLE `token_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `token_transactions_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  ADD KEY `token_transactions_user_id_type_index` (`user_id`,`type`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_follows`
--
ALTER TABLE `user_follows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_follows_follower_id_following_id_unique` (`follower_id`,`following_id`),
  ADD KEY `user_follows_following_id_foreign` (`following_id`);

--
-- Indexes for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_settings_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_fields`
--
ALTER TABLE `academic_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `academic_levels`
--
ALTER TABLE `academic_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `accessed_files`
--
ALTER TABLE `accessed_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collection_items`
--
ALTER TABLE `collection_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `digital_files`
--
ALTER TABLE `digital_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `file_collections`
--
ALTER TABLE `file_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `institutions`
--
ALTER TABLE `institutions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3116;

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
-- AUTO_INCREMENT for table `mime_types`
--
ALTER TABLE `mime_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `program_streams`
--
ALTER TABLE `program_streams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `program_stream_levels`
--
ALTER TABLE `program_stream_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `program_stream_level_subjects`
--
ALTER TABLE `program_stream_level_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `program_stream_subjects`
--
ALTER TABLE `program_stream_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `resource_types`
--
ALTER TABLE `resource_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `token_transactions`
--
ALTER TABLE `token_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_follows`
--
ALTER TABLE `user_follows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_settings`
--
ALTER TABLE `user_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accessed_files`
--
ALTER TABLE `accessed_files`
  ADD CONSTRAINT `accessed_files_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `digital_files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `accessed_files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD CONSTRAINT `bookmarks_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `digital_files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookmarks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `collection_items`
--
ALTER TABLE `collection_items`
  ADD CONSTRAINT `collection_items_digital_file_id_foreign` FOREIGN KEY (`digital_file_id`) REFERENCES `digital_files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `collection_items_file_collection_id_foreign` FOREIGN KEY (`file_collection_id`) REFERENCES `file_collections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `digital_files`
--
ALTER TABLE `digital_files`
  ADD CONSTRAINT `digital_files_academic_field_id_foreign` FOREIGN KEY (`academic_field_id`) REFERENCES `academic_fields` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `digital_files_academic_level_id_foreign` FOREIGN KEY (`academic_level_id`) REFERENCES `academic_levels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `digital_files_institution_id_foreign` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `digital_files_program_stream_id_foreign` FOREIGN KEY (`program_stream_id`) REFERENCES `program_streams` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `digital_files_program_stream_level_id_foreign` FOREIGN KEY (`program_stream_level_id`) REFERENCES `program_stream_levels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `digital_files_program_stream_level_subject_id_foreign` FOREIGN KEY (`program_stream_level_subject_id`) REFERENCES `program_stream_level_subjects` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `digital_files_resource_type_id_foreign` FOREIGN KEY (`resource_type_id`) REFERENCES `resource_types` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `digital_files_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `digital_files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `downloads`
--
ALTER TABLE `downloads`
  ADD CONSTRAINT `downloads_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `digital_files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `downloads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `digital_files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `feedback_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `file_collections`
--
ALTER TABLE `file_collections`
  ADD CONSTRAINT `file_collections_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `program_streams`
--
ALTER TABLE `program_streams`
  ADD CONSTRAINT `program_streams_academic_field_id_foreign` FOREIGN KEY (`academic_field_id`) REFERENCES `academic_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `program_stream_levels`
--
ALTER TABLE `program_stream_levels`
  ADD CONSTRAINT `program_stream_levels_academic_level_id_foreign` FOREIGN KEY (`academic_level_id`) REFERENCES `academic_levels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `program_stream_levels_program_stream_id_foreign` FOREIGN KEY (`program_stream_id`) REFERENCES `program_streams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `program_stream_level_subjects`
--
ALTER TABLE `program_stream_level_subjects`
  ADD CONSTRAINT `program_stream_level_subjects_program_stream_level_id_foreign` FOREIGN KEY (`program_stream_level_id`) REFERENCES `program_stream_levels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `program_stream_level_subjects_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `program_stream_subjects`
--
ALTER TABLE `program_stream_subjects`
  ADD CONSTRAINT `pss_stream_id_foreign` FOREIGN KEY (`program_stream_id`) REFERENCES `program_streams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pss_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_reporter_id_foreign` FOREIGN KEY (`reporter_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reports_resolved_by_foreign` FOREIGN KEY (`resolved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `todos`
--
ALTER TABLE `todos`
  ADD CONSTRAINT `todos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `token_transactions`
--
ALTER TABLE `token_transactions`
  ADD CONSTRAINT `token_transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_follows`
--
ALTER TABLE `user_follows`
  ADD CONSTRAINT `user_follows_follower_id_foreign` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_follows_following_id_foreign` FOREIGN KEY (`following_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD CONSTRAINT `user_settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
