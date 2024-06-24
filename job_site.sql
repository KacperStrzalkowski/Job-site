-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 24, 2024 at 10:52 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_site`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employers`
--

CREATE TABLE `employers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employers`
--

INSERT INTO `employers` (`id`, `user_id`, `name`, `logo`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dr. Devante Glover', 'https://via.placeholder.com/640x480.png/00aaee?text=quia', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(2, 2, 'Niko Erdman', 'https://via.placeholder.com/640x480.png/00ee33?text=ut', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(3, 3, 'Prof. Fernando Mertz IV', 'https://via.placeholder.com/640x480.png/009955?text=ab', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(4, 4, 'Selmer Lakin', 'https://via.placeholder.com/640x480.png/00ffcc?text=eos', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(5, 5, 'Donnell Cormier II', 'https://via.placeholder.com/640x480.png/00ffcc?text=hic', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(6, 6, 'Dr. Theresa Williamson III', 'https://via.placeholder.com/640x480.png/005566?text=qui', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(7, 7, 'Malachi Stokes', 'https://via.placeholder.com/640x480.png/0044aa?text=velit', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(8, 8, 'Prof. Austin Casper IV', 'https://via.placeholder.com/640x480.png/004488?text=et', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(9, 9, 'Josefina Bartell', 'https://via.placeholder.com/640x480.png/006622?text=et', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(10, 10, 'Dr. Doris Douglas III', 'https://via.placeholder.com/640x480.png/001188?text=architecto', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(11, 11, 'Prof. Johnny Shanahan', 'https://via.placeholder.com/640x480.png/0099cc?text=odio', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(12, 12, 'Pattie Steuber', 'https://via.placeholder.com/640x480.png/006699?text=hic', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(13, 13, 'Daisy Medhurst PhD', 'https://via.placeholder.com/640x480.png/0088aa?text=dolorum', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(14, 14, 'Gladys Von', 'https://via.placeholder.com/640x480.png/00dd55?text=quod', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(15, 15, 'Dillan Cartwright', 'https://via.placeholder.com/640x480.png/00eeaa?text=sit', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(16, 16, 'Uriel Bartoletti', 'https://via.placeholder.com/640x480.png/00ddaa?text=quia', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(17, 17, 'Ms. Johanna Schultz I', 'https://via.placeholder.com/640x480.png/008888?text=consequatur', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(18, 18, 'Urban Farrell V', 'https://via.placeholder.com/640x480.png/00ff00?text=id', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(19, 19, 'Prof. Raphael Simonis PhD', 'https://via.placeholder.com/640x480.png/00aa88?text=rerum', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(20, 20, 'Mrs. Annabel Hauck', 'https://via.placeholder.com/640x480.png/002277?text=fugiat', '2024-06-24 18:51:24', '2024-06-24 18:51:24');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employer_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `salary` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `schedule` varchar(255) NOT NULL DEFAULT 'Full Time',
  `url` varchar(255) NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `employer_id`, `title`, `salary`, `location`, `schedule`, `url`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lawyer', '$150,000', 'Remote', 'Full Time', 'https://armstrong.com/qui-et-accusamus-nam-veritatis-culpa-deleniti-est.html', 0, '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(2, 2, 'Manufacturing Sales Representative', '$50,000', 'Remote', 'Part Time', 'http://thompson.com/alias-ipsam-vero-quidem', 1, '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(3, 3, 'Tool and Die Maker', '$50,000', 'Remote', 'Full Time', 'http://funk.com/beatae-commodi-sit-qui-aperiam.html', 0, '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(4, 4, 'Transportation Manager', '$150,000', 'Remote', 'Part Time', 'http://www.cartwright.net/hic-magnam-assumenda-facere-soluta-rem.html', 1, '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(5, 5, 'Purchasing Agent', '$150,000', 'Remote', 'Full Time', 'https://www.kuhic.org/est-veniam-possimus-rerum', 0, '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(6, 6, 'Board Of Directors', '$80,000', 'Remote', 'Part Time', 'http://www.adams.org/', 1, '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(7, 7, 'Aircraft Launch and Recovery Officer', '$80,000', 'Remote', 'Full Time', 'http://hoeger.com/laborum-asperiores-hic-rerum-et-sint-consectetur.html', 0, '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(8, 8, 'Project Manager', '$80,000', 'Remote', 'Part Time', 'http://www.harvey.biz/nobis-molestiae-deleniti-ipsum-modi-omnis-commodi-sequi', 1, '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(9, 9, 'Mine Cutting Machine Operator', '$150,000', 'Remote', 'Full Time', 'http://lehner.biz/explicabo-quam-quisquam-consequuntur-et', 0, '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(10, 10, 'Library Technician', '$50,000', 'Remote', 'Part Time', 'http://marks.com/et-molestias-accusamus-sint', 1, '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(11, 11, 'Civil Drafter', '$50,000', 'Remote', 'Full Time', 'https://www.jerde.net/et-voluptatibus-sit-et', 0, '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(12, 12, 'Parking Enforcement Worker', '$80,000', 'Remote', 'Part Time', 'http://runte.com/veritatis-tempora-eveniet-repellendus-dolor', 1, '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(13, 13, 'Physician', '$80,000', 'Remote', 'Full Time', 'http://smith.org/quasi-quia-quia-dolorem-aut-aut-possimus', 0, '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(14, 14, 'Traffic Technician', '$150,000', 'Remote', 'Part Time', 'http://harber.net/', 1, '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(15, 15, 'Plate Finisher', '$150,000', 'Remote', 'Full Time', 'https://collins.com/deleniti-odio-sunt-deserunt-ut.html', 0, '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(16, 16, 'Aircraft Launch Specialist', '$80,000', 'Remote', 'Part Time', 'https://gaylord.com/enim-est-voluptates-omnis-voluptatem.html', 1, '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(17, 17, 'Commercial Diver', '$80,000', 'Remote', 'Full Time', 'https://harvey.com/at-itaque-sequi-dolor-natus-quis-numquam-culpa-est.html', 0, '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(18, 18, 'Museum Conservator', '$150,000', 'Remote', 'Part Time', 'http://dibbert.net/', 1, '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(19, 19, 'Diamond Worker', '$80,000', 'Remote', 'Full Time', 'http://www.reichert.org/et-fugiat-alias-dolores', 0, '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(20, 20, 'Preschool Education Administrators', '$150,000', 'Remote', 'Part Time', 'http://www.fay.info/et-aspernatur-fugit-iste', 1, '2024-06-24 18:51:24', '2024-06-24 18:51:24');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `job_tag`
--

CREATE TABLE `job_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_tag`
--

INSERT INTO `job_tag` (`id`, `job_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 2, 1, NULL, NULL),
(5, 2, 2, NULL, NULL),
(6, 2, 3, NULL, NULL),
(7, 3, 1, NULL, NULL),
(8, 3, 2, NULL, NULL),
(9, 3, 3, NULL, NULL),
(10, 4, 1, NULL, NULL),
(11, 4, 2, NULL, NULL),
(12, 4, 3, NULL, NULL),
(13, 5, 1, NULL, NULL),
(14, 5, 2, NULL, NULL),
(15, 5, 3, NULL, NULL),
(16, 6, 1, NULL, NULL),
(17, 6, 2, NULL, NULL),
(18, 6, 3, NULL, NULL),
(19, 7, 1, NULL, NULL),
(20, 7, 2, NULL, NULL),
(21, 7, 3, NULL, NULL),
(22, 8, 1, NULL, NULL),
(23, 8, 2, NULL, NULL),
(24, 8, 3, NULL, NULL),
(25, 9, 1, NULL, NULL),
(26, 9, 2, NULL, NULL),
(27, 9, 3, NULL, NULL),
(28, 10, 1, NULL, NULL),
(29, 10, 2, NULL, NULL),
(30, 10, 3, NULL, NULL),
(31, 11, 1, NULL, NULL),
(32, 11, 2, NULL, NULL),
(33, 11, 3, NULL, NULL),
(34, 12, 1, NULL, NULL),
(35, 12, 2, NULL, NULL),
(36, 12, 3, NULL, NULL),
(37, 13, 1, NULL, NULL),
(38, 13, 2, NULL, NULL),
(39, 13, 3, NULL, NULL),
(40, 14, 1, NULL, NULL),
(41, 14, 2, NULL, NULL),
(42, 14, 3, NULL, NULL),
(43, 15, 1, NULL, NULL),
(44, 15, 2, NULL, NULL),
(45, 15, 3, NULL, NULL),
(46, 16, 1, NULL, NULL),
(47, 16, 2, NULL, NULL),
(48, 16, 3, NULL, NULL),
(49, 17, 1, NULL, NULL),
(50, 17, 2, NULL, NULL),
(51, 17, 3, NULL, NULL),
(52, 18, 1, NULL, NULL),
(53, 18, 2, NULL, NULL),
(54, 18, 3, NULL, NULL),
(55, 19, 1, NULL, NULL),
(56, 19, 2, NULL, NULL),
(57, 19, 3, NULL, NULL),
(58, 20, 1, NULL, NULL),
(59, 20, 2, NULL, NULL),
(60, 20, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
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
(8, '0001_01_01_000000_create_users_table', 1),
(9, '0001_01_01_000001_create_cache_table', 1),
(10, '0001_01_01_000002_create_queued_jobs_table', 1),
(11, '2024_06_16_190146_create_employers_table', 1),
(12, '2024_06_16_190702_create_jobs_table', 1),
(13, '2024_06_16_193949_create_tags_table', 1),
(14, '2024_06_16_194240_create_job_tag_table', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `queued_failed_jobs`
--

CREATE TABLE `queued_failed_jobs` (
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
-- Struktura tabeli dla tabeli `queued_jobs`
--

CREATE TABLE `queued_jobs` (
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
-- Struktura tabeli dla tabeli `queued_job_batches`
--

CREATE TABLE `queued_job_batches` (
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
-- Struktura tabeli dla tabeli `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'dicta', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(2, 'quam', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(3, 'voluptatem', '2024-06-24 18:51:24', '2024-06-24 18:51:24');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
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
(1, 'Imogene Waters', 'eldon.nienow@example.org', '2024-06-24 18:51:24', '$2y$12$Cg42dH0HzTaI3gUISA7LMOA5EV48HEjQUxHbZ1MVw9bLLCrdO/y3y', 'oy7LTuHryQ', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(2, 'Kenya Bergstrom', 'amya.sauer@example.org', '2024-06-24 18:51:24', '$2y$12$Cg42dH0HzTaI3gUISA7LMOA5EV48HEjQUxHbZ1MVw9bLLCrdO/y3y', '0aLbGMr76c', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(3, 'Dwight Bechtelar', 'marley64@example.com', '2024-06-24 18:51:24', '$2y$12$Cg42dH0HzTaI3gUISA7LMOA5EV48HEjQUxHbZ1MVw9bLLCrdO/y3y', 'x0oO5MeJYq', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(4, 'Meta Deckow', 'william.funk@example.com', '2024-06-24 18:51:24', '$2y$12$Cg42dH0HzTaI3gUISA7LMOA5EV48HEjQUxHbZ1MVw9bLLCrdO/y3y', 'CsbG9IVYEX', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(5, 'Jude Wolff', 'trent74@example.net', '2024-06-24 18:51:24', '$2y$12$Cg42dH0HzTaI3gUISA7LMOA5EV48HEjQUxHbZ1MVw9bLLCrdO/y3y', 'HwcY7KqRyo', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(6, 'America King', 'branson95@example.net', '2024-06-24 18:51:24', '$2y$12$Cg42dH0HzTaI3gUISA7LMOA5EV48HEjQUxHbZ1MVw9bLLCrdO/y3y', 'BupCu3Ooza', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(7, 'Emmie Block', 'marco36@example.net', '2024-06-24 18:51:24', '$2y$12$Cg42dH0HzTaI3gUISA7LMOA5EV48HEjQUxHbZ1MVw9bLLCrdO/y3y', '9ENc96UZRp', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(8, 'Miss Trycia Gerlach', 'loma.harber@example.com', '2024-06-24 18:51:24', '$2y$12$Cg42dH0HzTaI3gUISA7LMOA5EV48HEjQUxHbZ1MVw9bLLCrdO/y3y', '4aojx90flF', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(9, 'Antoinette Will', 'amely69@example.net', '2024-06-24 18:51:24', '$2y$12$Cg42dH0HzTaI3gUISA7LMOA5EV48HEjQUxHbZ1MVw9bLLCrdO/y3y', 'PFk0inMIJx', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(10, 'Fredy Predovic DDS', 'elta90@example.com', '2024-06-24 18:51:24', '$2y$12$Cg42dH0HzTaI3gUISA7LMOA5EV48HEjQUxHbZ1MVw9bLLCrdO/y3y', 'MYUkf3WMPH', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(11, 'Jonas Orn', 'leuschke.dasia@example.com', '2024-06-24 18:51:24', '$2y$12$Cg42dH0HzTaI3gUISA7LMOA5EV48HEjQUxHbZ1MVw9bLLCrdO/y3y', 'B5wGTc4DNM', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(12, 'Isidro Mertz', 'geo08@example.com', '2024-06-24 18:51:24', '$2y$12$Cg42dH0HzTaI3gUISA7LMOA5EV48HEjQUxHbZ1MVw9bLLCrdO/y3y', 'EeZLvpKsYP', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(13, 'Rhoda Kihn', 'ktremblay@example.org', '2024-06-24 18:51:24', '$2y$12$Cg42dH0HzTaI3gUISA7LMOA5EV48HEjQUxHbZ1MVw9bLLCrdO/y3y', 'jup2B20VsU', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(14, 'Mr. Clint Konopelski', 'kariane85@example.net', '2024-06-24 18:51:24', '$2y$12$Cg42dH0HzTaI3gUISA7LMOA5EV48HEjQUxHbZ1MVw9bLLCrdO/y3y', '7ViOBtrdm3', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(15, 'Shea Hegmann DDS', 'itremblay@example.net', '2024-06-24 18:51:24', '$2y$12$Cg42dH0HzTaI3gUISA7LMOA5EV48HEjQUxHbZ1MVw9bLLCrdO/y3y', 'qJdASyfvHD', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(16, 'Lauriane Sanford', 'gfisher@example.com', '2024-06-24 18:51:24', '$2y$12$Cg42dH0HzTaI3gUISA7LMOA5EV48HEjQUxHbZ1MVw9bLLCrdO/y3y', 'H60wV5aFMM', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(17, 'Holden Blanda', 'dana.stiedemann@example.net', '2024-06-24 18:51:24', '$2y$12$Cg42dH0HzTaI3gUISA7LMOA5EV48HEjQUxHbZ1MVw9bLLCrdO/y3y', 'Wb8oUZAWld', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(18, 'Kattie Stracke', 'penelope18@example.net', '2024-06-24 18:51:24', '$2y$12$Cg42dH0HzTaI3gUISA7LMOA5EV48HEjQUxHbZ1MVw9bLLCrdO/y3y', 'g84KKD6dII', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(19, 'Sandy Little MD', 'ressie.brakus@example.net', '2024-06-24 18:51:24', '$2y$12$Cg42dH0HzTaI3gUISA7LMOA5EV48HEjQUxHbZ1MVw9bLLCrdO/y3y', 'MiJ9T7AGZA', '2024-06-24 18:51:24', '2024-06-24 18:51:24'),
(20, 'Mauricio Barrows DVM', 'ygleason@example.org', '2024-06-24 18:51:24', '$2y$12$Cg42dH0HzTaI3gUISA7LMOA5EV48HEjQUxHbZ1MVw9bLLCrdO/y3y', 'erSYGxp7Ak', '2024-06-24 18:51:24', '2024-06-24 18:51:24');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeksy dla tabeli `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeksy dla tabeli `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `job_tag`
--
ALTER TABLE `job_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_tag_job_id_foreign` (`job_id`),
  ADD KEY `job_tag_tag_id_foreign` (`tag_id`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeksy dla tabeli `queued_failed_jobs`
--
ALTER TABLE `queued_failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `queued_failed_jobs_uuid_unique` (`uuid`);

--
-- Indeksy dla tabeli `queued_jobs`
--
ALTER TABLE `queued_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queued_jobs_queue_index` (`queue`);

--
-- Indeksy dla tabeli `queued_job_batches`
--
ALTER TABLE `queued_job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeksy dla tabeli `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employers`
--
ALTER TABLE `employers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `job_tag`
--
ALTER TABLE `job_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `queued_failed_jobs`
--
ALTER TABLE `queued_failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `queued_jobs`
--
ALTER TABLE `queued_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `job_tag`
--
ALTER TABLE `job_tag`
  ADD CONSTRAINT `job_tag_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
