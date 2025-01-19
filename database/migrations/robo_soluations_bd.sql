-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 19, 2025 at 06:49 PM
-- Server version: 8.0.30
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robo_soluations_bd`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `banner_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner_img`, `status`, `created_at`, `updated_at`) VALUES
(4, 'frontend/image/banner/678b763282878.png', '1', '2025-01-18 03:36:50', '2025-01-18 04:09:22'),
(5, 'frontend/image/banner/678b768e049de.jpeg', '1', '2025-01-18 03:38:22', '2025-01-18 04:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `image`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'frontend/image/blogs/6787b37343193.png', 'asdfsafsafas asdf', 'sdafa asdf asdf asdf dsfasdafa asdf asdf asdf dsfasdafa asdf asdf asdf dsfasdafa asdf asdf asdf dsfasdafa asdf asdf asdf dsfasdafa asdf asdf asdf dsfasdafa asdf asdf asdf dsfasdafa asdf asdf asdf dsfa', '1', '2025-01-15 07:09:07', '2025-01-19 12:47:36');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `image`, `title`, `status`, `created_at`, `updated_at`) VALUES
(2, 'frontend/image/clients/6788a4637a343.png', 'dsafas', '1', '2025-01-16 00:17:07', '2025-01-16 00:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `client__feedback`
--

CREATE TABLE `client__feedback` (
  `id` bigint UNSIGNED NOT NULL,
  `client_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client__feedback`
--

INSERT INTO `client__feedback` (`id`, `client_img`, `name`, `designation`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'frontend/image/feedback/6786244233729.jpg', 'Md.Afzal Hossen', 'CEO', 'Lift Maintenance & Servicing Charge For', '1', '2025-01-14 02:45:54', '2025-01-18 04:26:54'),
(3, 'frontend/image/feedback/678b7e8495152.png', 'afzal-swe', 'CEO', 'Lift Maintenance & Servicing Charge For', '1', '2025-01-18 04:12:20', '2025-01-18 04:26:56'),
(4, 'frontend/image/feedback/678b7e9889213.png', 'afzal', 'MD', 'Initial ideas or inspiration & Establishment of user needs.', '1', '2025-01-18 04:12:40', '2025-01-18 04:26:58');

-- --------------------------------------------------------

--
-- Table structure for table `development__software`
--

CREATE TABLE `development__software` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `development_options` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `development__software`
--

INSERT INTO `development__software` (`id`, `image`, `title`, `link`, `development_options`, `status`, `created_at`, `updated_at`) VALUES
(2, 'frontend/image/our_development/6787aa7905356.png', 'Home Automizition', 'https://github.com/afzal-swe/Today-News-newsportal-project-Dynamic/commits/main', '3', '1', '2025-01-15 06:30:49', '2025-01-15 06:35:31'),
(3, 'frontend/image/our_development/678bb8f22b361.jpeg', 'sadfasf', 'https://github.com/afzal-swe/Today-News-newsportal-project-Dynamic/commits/main', '1', '1', '2025-01-18 08:21:38', '2025-01-18 08:21:38'),
(4, 'frontend/image/our_development/678bb90d85809.png', 'aasdgfsaag', 'https://www.youtube.com/@PROGRAMMINGTRUSTBD', '2', '1', '2025-01-18 08:22:05', '2025-01-18 08:22:05'),
(5, 'frontend/image/our_development/678bb91dbdea8.png', 'asdasgadsa', 'https://github.com/afzal-swe/Today-News-newsportal-project-Dynamic/commits/main', '4', '1', '2025-01-18 08:22:21', '2025-01-18 08:22:21');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `innovative__products`
--

CREATE TABLE `innovative__products` (
  `id` bigint UNSIGNED NOT NULL,
  `products_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `innovative__products`
--

INSERT INTO `innovative__products` (`id`, `products_img`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'frontend/image/innovative/67863b77aadbf.png', 'Possimus ut sed velit assumenda', 'Sunt deserunt maiores voluptatem autem est rerum perferendis rerum blanditiis. Est laboriosam qui iste numquam laboriosam voluptatem architecto. Est laudantium sunt at quas aut hic. Eum dignissimos.', '1', '2025-01-14 04:24:56', '2025-01-18 06:35:59'),
(3, 'frontend/image/innovative/678ba05422a3a.jpg', 'asdfasdasdff', 'asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa asdfasfsa', '1', '2025-01-18 06:36:36', '2025-01-18 06:36:36');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2025_01_05_194325_create_banners_table', 2),
(7, '2025_01_08_213301_create_client__feedback_table', 3),
(8, '2025_01_08_214826_create_innovative__products_table', 4),
(9, '2025_01_09_060236_create_sister__concerns_table', 5),
(12, '2025_01_09_163134_create_blogs_table', 8),
(13, '2025_01_09_183831_create_our__expartics_table', 9),
(14, '2025_01_09_185958_create_clients_table', 10),
(15, '2025_01_09_191434_create_we__haves_table', 11),
(16, '2025_01_09_192722_create_service__areas_table', 12),
(17, '2025_01_09_204256_create_notices_table', 13),
(18, '2025_01_10_080311_create_seos_table', 14),
(19, '2025_01_10_083806_create_socials_table', 15),
(20, '2025_01_10_085909_create_website_settings_table', 16),
(21, '2025_01_09_125440_create_our__timelines_table', 17),
(22, '2025_01_09_133007_create_development__software_table', 18),
(24, '2025_01_16_084858_create_people__panels_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'asdfasfs', 'asdfasfsafsafasf asdfasdfasfsafsafasf asdfasdfasfsafsafasf asdfasdfasfsafsafasf asdfasdfasfsafsafasf asdfasdfasfsafsafasf asdf', '1', '2025-01-16 00:53:40', '2025-01-16 00:56:18');

-- --------------------------------------------------------

--
-- Table structure for table `our__expartics`
--

CREATE TABLE `our__expartics` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our__expartics`
--

INSERT INTO `our__expartics` (`id`, `image`, `title`, `status`, `created_at`, `updated_at`) VALUES
(2, 'frontend/image/our_expartics/67880da3e0559.png', 'asdfasfasf', '1', '2025-01-15 13:33:56', '2025-01-15 13:38:05');

-- --------------------------------------------------------

--
-- Table structure for table `our__timelines`
--

CREATE TABLE `our__timelines` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `timeline_options` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our__timelines`
--

INSERT INTO `our__timelines` (`id`, `image`, `title`, `description`, `timeline_options`, `status`, `created_at`, `updated_at`) VALUES
(4, 'frontend/image/out_timeline/678bb0383964d.png', 'Voluptatem dignissimos provident', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n Ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n Duis aute irure dolor in reprehenderit in voluptate velit.\r\n Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.', '1', '1', '2025-01-18 07:44:24', '2025-01-18 07:58:53'),
(5, 'frontend/image/out_timeline/678bb071daf50.jpeg', 'Neque exercitationem debitis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n Ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n Duis aute irure dolor in reprehenderit in voluptate velit.\r\n Provident mollitia neque rerum asperiores dolores quos qui a. Ipsum neque dolor voluptate nisi sed.\r\n Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.', '2', '1', '2025-01-18 07:45:22', '2025-01-18 08:07:03'),
(6, 'frontend/image/out_timeline/678bb0e3aae82.png', 'Voluptatibus commodi accusamu', 'Ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n Duis aute irure dolor in reprehenderit in voluptate velit.\r\n Provident mollitia neque rerum asperiores dolores quos qui a. Ipsum neque dolor voluptate nisi sed.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '3', '1', '2025-01-18 07:47:15', '2025-01-18 08:12:33'),
(7, 'frontend/image/out_timeline/678bb19144bb1.jpg', 'Omnis fugiat ea explicabo sunt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\r\n\r\n Ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\n Duis aute irure dolor in reprehenderit in voluptate velit.\r\n Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.', '4', '1', '2025-01-18 07:50:09', '2025-01-18 07:50:09');

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
-- Table structure for table `people__panels`
--

CREATE TABLE `people__panels` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `people_anel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `linkdin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `instragram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `people__panels`
--

INSERT INTO `people__panels` (`id`, `name`, `image`, `designation`, `people_anel`, `facebook`, `linkdin`, `instragram`, `website`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Md.Afzal Hossen', 'frontend/image/people/678b6ddaba42d.jpeg', 'CEO', '2', 'https://www.facebook.com/codeartist.IT', NULL, NULL, NULL, '0', '2025-01-18 03:01:15', '2025-01-18 03:20:40'),
(2, 'Hridoy', 'frontend/image/people/678b71a9463e0.jpg', 'MD', '2', 'https://www.facebook.com/codeartist.IT', 'https://www.facebook.com/codeartist.IT', 'https://www.facebook.com/codeartist.IT', 'https://www.facebook.com/codeartist.IT', '0', '2025-01-18 03:17:29', '2025-01-18 03:20:36');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `google_verification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alexa_analytics` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_author`, `meta_title`, `meta_keyword`, `meta_description`, `google_analytics`, `google_verification`, `alexa_analytics`, `created_at`, `updated_at`) VALUES
(1, 'aaaaaaa', 'aaaaaaaa', 'aaaaaaaa', 'aaaaaaaaa', 'aaaaaaaaaa', 'aaaaaaaaaaaa', 'aaaaaaa', NULL, '2025-01-10 02:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `service__areas`
--

CREATE TABLE `service__areas` (
  `id` bigint UNSIGNED NOT NULL,
  `country_flag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service__areas`
--

INSERT INTO `service__areas` (`id`, `country_flag`, `country_name`, `status`, `created_at`, `updated_at`) VALUES
(5, 'frontend/image/service_areas/6788aa8b16c5e.png', 'saffas', '1', '2025-01-16 00:43:23', '2025-01-16 00:43:23');

-- --------------------------------------------------------

--
-- Table structure for table `sister__concerns`
--

CREATE TABLE `sister__concerns` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sister__concerns`
--

INSERT INTO `sister__concerns` (`id`, `icon`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(3, 'fa-solid fa-mountain-city', 'asdf asdf asdf dasf dsafas adsfas sadfas asdf asdfa adf adsf', 'Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis tempore et consequatur.', '1', '2025-01-18 07:13:38', '2025-01-18 07:25:24');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint UNSIGNED NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `twitter`, `youtube`, `instagram`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com', 'https://www.twitter.com', 'https://youtube.com/programming/trustbd', 'https://instagram.com/sdasdfasd', 'https://linkedin.com/afzal', '2025-01-10 02:48:27', '2025-01-10 02:52:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$dgRHuqi.yrVEyIIowsmMbOMPuZYeiZK.pmF1ua5j0c2j1aSQHDDy.', NULL, '2025-01-05 11:19:05', '2025-01-16 02:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `website_settings`
--

CREATE TABLE `website_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `website_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `website_settings`
--

INSERT INTO `website_settings` (`id`, `website_name`, `currency`, `phone_one`, `phone_two`, `main_email`, `support_email`, `logo`, `favicon`, `address`, `description`, `created_at`, `updated_at`) VALUES
(1, 'ROBO SOLUTIONS BD', NULL, '145781245', '145781245', 'info@gmail.com', 'robosolutionbd@gmail.com', 'frontend/image/website/logo/robo-solutions-bd.png', 'frontend/image/website/favicon/robo-solutions-bd.png', 'Dhaka, Bangladesh', 'aaaaaaaaaaaa', '2025-01-16 02:23:55', '2025-01-16 02:23:55');

-- --------------------------------------------------------

--
-- Table structure for table `we__haves`
--

CREATE TABLE `we__haves` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `we__haves`
--

INSERT INTO `we__haves` (`id`, `icon`, `title`, `total`, `status`, `created_at`, `updated_at`) VALUES
(2, '<i class=\"fa-solid fa-mountain-city\"></i>', 'asdfsa', '50', '1', '2025-01-15 14:33:41', '2025-01-15 16:53:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_user_id_foreign` (`user_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client__feedback`
--
ALTER TABLE `client__feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `development__software`
--
ALTER TABLE `development__software`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `innovative__products`
--
ALTER TABLE `innovative__products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our__expartics`
--
ALTER TABLE `our__expartics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our__timelines`
--
ALTER TABLE `our__timelines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `people__panels`
--
ALTER TABLE `people__panels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service__areas`
--
ALTER TABLE `service__areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sister__concerns`
--
ALTER TABLE `sister__concerns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `website_settings`
--
ALTER TABLE `website_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `we__haves`
--
ALTER TABLE `we__haves`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `client__feedback`
--
ALTER TABLE `client__feedback`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `development__software`
--
ALTER TABLE `development__software`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `innovative__products`
--
ALTER TABLE `innovative__products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `our__expartics`
--
ALTER TABLE `our__expartics`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `our__timelines`
--
ALTER TABLE `our__timelines`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `people__panels`
--
ALTER TABLE `people__panels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service__areas`
--
ALTER TABLE `service__areas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sister__concerns`
--
ALTER TABLE `sister__concerns`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `website_settings`
--
ALTER TABLE `website_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `we__haves`
--
ALTER TABLE `we__haves`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
