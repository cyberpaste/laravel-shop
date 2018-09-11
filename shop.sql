-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 02 2018 г., 23:08
-- Версия сервера: 5.6.38
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` int(11) DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'default', 'App\\Permission model has been created', 1, 'App\\Permission', 1, 'App\\User', '[]', '2018-08-18 16:13:37', '2018-08-18 16:13:37'),
(2, 'default', 'App\\Permission model has been deleted', 1, 'App\\Permission', 1, 'App\\User', '[]', '2018-08-18 16:13:50', '2018-08-18 16:13:50'),
(3, 'default', 'App\\Permission model has been created', 2, 'App\\Permission', 1, 'App\\User', '[]', '2018-08-18 16:14:40', '2018-08-18 16:14:40'),
(4, 'default', 'App\\Role model has been created', 1, 'App\\Role', 1, 'App\\User', '[]', '2018-08-18 16:15:01', '2018-08-18 16:15:01'),
(5, 'default', 'App\\Page model has been created', 1, 'App\\Page', 1, 'App\\User', '[]', '2018-08-19 10:34:12', '2018-08-19 10:34:12'),
(6, 'default', 'App\\Page model has been deleted', 1, 'App\\Page', 1, 'App\\User', '[]', '2018-08-19 10:34:53', '2018-08-19 10:34:53'),
(7, 'default', 'App\\Category model has been created', 1, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 11:45:34', '2018-08-25 11:45:34'),
(9, 'default', 'App\\Permission model has been created', 3, 'App\\Permission', 1, 'App\\User', '[]', '2018-08-25 13:37:44', '2018-08-25 13:37:44'),
(10, 'default', 'App\\Category model has been updated', 1, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 14:05:16', '2018-08-25 14:05:16'),
(11, 'default', 'App\\Category model has been deleted', 1, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 14:07:04', '2018-08-25 14:07:04'),
(12, 'default', 'App\\Category model has been created', 2, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 14:07:18', '2018-08-25 14:07:18'),
(13, 'default', 'App\\Category model has been deleted', 2, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 14:08:56', '2018-08-25 14:08:56'),
(14, 'default', 'App\\Category model has been created', 3, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 17:56:43', '2018-08-25 17:56:43'),
(15, 'default', 'App\\Category model has been deleted', 3, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 17:57:05', '2018-08-25 17:57:05'),
(16, 'default', 'App\\Category model has been created', 4, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 17:57:16', '2018-08-25 17:57:16'),
(17, 'default', 'App\\Category model has been updated', 4, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 18:00:35', '2018-08-25 18:00:35'),
(18, 'default', 'App\\Category model has been updated', 4, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 18:18:22', '2018-08-25 18:18:22'),
(19, 'default', 'App\\Category model has been updated', 4, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 18:20:14', '2018-08-25 18:20:14'),
(20, 'default', 'App\\Category model has been updated', 4, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 18:25:36', '2018-08-25 18:25:36'),
(21, 'default', 'App\\Category model has been updated', 4, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 18:25:54', '2018-08-25 18:25:54'),
(22, 'default', 'App\\Category model has been deleted', 4, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 18:39:27', '2018-08-25 18:39:27'),
(23, 'default', 'App\\Category model has been created', 5, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 18:40:00', '2018-08-25 18:40:00'),
(24, 'default', 'App\\Category model has been deleted', 5, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 18:40:05', '2018-08-25 18:40:05'),
(25, 'default', 'App\\Category model has been created', 6, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 18:40:32', '2018-08-25 18:40:32'),
(26, 'default', 'App\\Category model has been deleted', 6, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 18:42:59', '2018-08-25 18:42:59'),
(27, 'default', 'App\\Category model has been created', 7, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 19:05:19', '2018-08-25 19:05:19'),
(28, 'default', 'App\\Category model has been deleted', 7, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 19:07:33', '2018-08-25 19:07:33'),
(29, 'default', 'App\\Category model has been created', 8, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 19:07:52', '2018-08-25 19:07:52'),
(30, 'default', 'App\\Category model has been deleted', 8, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 19:07:56', '2018-08-25 19:07:56'),
(31, 'default', 'App\\Category model has been created', 9, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 19:10:21', '2018-08-25 19:10:21'),
(32, 'default', 'App\\Category model has been deleted', 9, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 19:10:28', '2018-08-25 19:10:28'),
(33, 'default', 'App\\Category model has been created', 10, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 19:14:18', '2018-08-25 19:14:18'),
(34, 'default', 'App\\Category model has been deleted', 10, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 19:16:17', '2018-08-25 19:16:17'),
(35, 'default', 'App\\Category model has been created', 11, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 19:35:04', '2018-08-25 19:35:04'),
(36, 'default', 'App\\Category model has been deleted', 11, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 19:35:57', '2018-08-25 19:35:57'),
(37, 'default', 'App\\Category model has been created', 12, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 19:37:58', '2018-08-25 19:37:58'),
(38, 'default', 'App\\Category model has been updated', 12, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 19:38:56', '2018-08-25 19:38:56'),
(39, 'default', 'App\\Category model has been updated', 12, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 19:48:45', '2018-08-25 19:48:45'),
(40, 'default', 'App\\Category model has been updated', 12, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 19:50:18', '2018-08-25 19:50:18'),
(41, 'default', 'App\\Category model has been updated', 12, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 19:52:15', '2018-08-25 19:52:15'),
(42, 'default', 'App\\Category model has been updated', 12, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 20:01:21', '2018-08-25 20:01:21'),
(43, 'default', 'App\\Category model has been deleted', 12, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 20:09:58', '2018-08-25 20:09:58'),
(44, 'default', 'App\\Category model has been created', 13, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 20:12:09', '2018-08-25 20:12:09'),
(45, 'default', 'App\\Category model has been deleted', 13, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 20:12:23', '2018-08-25 20:12:23'),
(46, 'default', 'App\\Category model has been created', 14, 'App\\Category', 1, 'App\\User', '[]', '2018-08-25 20:13:07', '2018-08-25 20:13:07'),
(47, 'default', 'App\\Chunk model has been created', 1, 'App\\Chunk', 1, 'App\\User', '[]', '2018-08-28 17:35:41', '2018-08-28 17:35:41'),
(48, 'default', 'App\\Chunk model has been updated', 1, 'App\\Chunk', 1, 'App\\User', '[]', '2018-08-28 17:36:27', '2018-08-28 17:36:27'),
(49, 'default', 'App\\Chunk model has been created', 1, 'App\\Chunk', 1, 'App\\User', '[]', '2018-08-28 17:53:23', '2018-08-28 17:53:23'),
(50, 'default', 'App\\Chunk model has been created', 2, 'App\\Chunk', 1, 'App\\User', '[]', '2018-08-28 18:03:21', '2018-08-28 18:03:21'),
(51, 'default', 'App\\Chunk model has been updated', 2, 'App\\Chunk', 1, 'App\\User', '[]', '2018-08-28 18:04:55', '2018-08-28 18:04:55'),
(52, 'default', 'App\\Currency model has been created', 1, 'App\\Currency', 1, 'App\\User', '[]', '2018-09-01 11:59:08', '2018-09-01 11:59:08'),
(53, 'default', 'App\\Currency model has been updated', 1, 'App\\Currency', 1, 'App\\User', '[]', '2018-09-01 12:03:26', '2018-09-01 12:03:26'),
(54, 'default', 'App\\Currency model has been created', 2, 'App\\Currency', 1, 'App\\User', '[]', '2018-09-01 12:03:40', '2018-09-01 12:03:40'),
(55, 'default', 'App\\Currency model has been created', 3, 'App\\Currency', 1, 'App\\User', '[]', '2018-09-01 12:04:06', '2018-09-01 12:04:06'),
(56, 'default', 'App\\Category model has been updated', 14, 'App\\Category', 1, 'App\\User', '[]', '2018-09-01 18:31:55', '2018-09-01 18:31:55'),
(57, 'default', 'App\\Category model has been updated', 14, 'App\\Category', 1, 'App\\User', '[]', '2018-09-02 07:38:16', '2018-09-02 07:38:16'),
(58, 'default', 'App\\Category model has been updated', 14, 'App\\Category', 1, 'App\\User', '[]', '2018-09-02 07:43:04', '2018-09-02 07:43:04'),
(59, 'default', 'App\\Category model has been updated', 14, 'App\\Category', 1, 'App\\User', '[]', '2018-09-02 07:43:09', '2018-09-02 07:43:09'),
(60, 'default', 'App\\Category model has been updated', 14, 'App\\Category', 1, 'App\\User', '[]', '2018-09-02 07:45:33', '2018-09-02 07:45:33'),
(61, 'default', 'App\\Category model has been updated', 14, 'App\\Category', 1, 'App\\User', '[]', '2018-09-02 07:45:37', '2018-09-02 07:45:37'),
(62, 'default', 'App\\Category model has been updated', 14, 'App\\Category', 1, 'App\\User', '[]', '2018-09-02 07:45:49', '2018-09-02 07:45:49'),
(63, 'default', 'App\\Category model has been created', 15, 'App\\Category', 1, 'App\\User', '[]', '2018-09-02 09:32:04', '2018-09-02 09:32:04'),
(64, 'default', 'App\\Category model has been created', 16, 'App\\Category', 1, 'App\\User', '[]', '2018-09-02 09:33:46', '2018-09-02 09:33:46'),
(65, 'default', 'App\\Category model has been updated', 16, 'App\\Category', 1, 'App\\User', '[]', '2018-09-02 10:03:21', '2018-09-02 10:03:21'),
(66, 'default', 'App\\Category model has been updated', 16, 'App\\Category', 1, 'App\\User', '[]', '2018-09-02 12:10:03', '2018-09-02 12:10:03'),
(67, 'default', 'App\\Category model has been created', 17, 'App\\Category', 1, 'App\\User', '[]', '2018-09-02 12:10:50', '2018-09-02 12:10:50'),
(68, 'default', 'App\\Category model has been created', 18, 'App\\Category', 1, 'App\\User', '[]', '2018-09-02 12:15:20', '2018-09-02 12:15:20'),
(69, 'default', 'App\\Category model has been updated', 18, 'App\\Category', 1, 'App\\User', '[]', '2018-09-02 12:15:26', '2018-09-02 12:15:26'),
(70, 'default', 'App\\Category model has been updated', 18, 'App\\Category', 1, 'App\\User', '[]', '2018-09-02 12:35:41', '2018-09-02 12:35:41');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `parent_id`, `title`, `image`, `order`, `slug`) VALUES
(14, '2018-08-25 20:13:07', '2018-09-02 07:45:49', 0, 'Видеостены', '578', 3, 'video'),
(15, '2018-09-02 09:32:04', '2018-09-02 09:32:04', 0, 'Сенсорные столы', '579', 2, 'sensor-stol'),
(16, '2018-09-02 09:33:46', '2018-09-02 12:10:03', 0, 'Видеокубы', '580', 3, 'videokub'),
(17, '2018-09-02 12:10:50', '2018-09-02 12:10:50', 14, 'Panasonic', '581', 3, 'panasonic'),
(18, '2018-09-02 12:15:20', '2018-09-02 12:35:41', 14, 'Orion', '582', 1, 'orion');

-- --------------------------------------------------------

--
-- Структура таблицы `chunks`
--

CREATE TABLE `chunks` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `chunks`
--

INSERT INTO `chunks` (`id`, `created_at`, `updated_at`, `title`, `slug`, `content`) VALUES
(1, '2018-08-28 17:53:23', '2018-08-28 17:53:23', 'Тестовый', 'test', '<p>test</p>'),
(2, '2018-08-28 18:03:21', '2018-08-28 18:04:55', 'Телефон', 'phone', '+7 (499) 555-55-55');

-- --------------------------------------------------------

--
-- Структура таблицы `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `currencies`
--

INSERT INTO `currencies` (`id`, `created_at`, `updated_at`, `title`, `slug`, `active`) VALUES
(1, '2018-09-01 11:59:07', '2018-09-01 12:03:26', 'Рубль', 'RUB', 1),
(2, '2018-09-01 12:03:40', '2018-09-01 12:03:40', 'Доллар', 'USD', 1),
(3, '2018-09-01 12:04:06', '2018-09-01 12:04:06', 'Евро', 'EUR', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `image_uploads`
--

CREATE TABLE `image_uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `original_filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_filepath` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_filedir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_extension` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_mime` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_filesize` int(10) UNSIGNED DEFAULT NULL,
  `original_width` smallint(5) UNSIGNED DEFAULT NULL,
  `original_height` smallint(5) UNSIGNED DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exif` text COLLATE utf8mb4_unicode_ci,
  `square50_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square50_dir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square50_filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square50_filepath` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square50_filedir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square50_s3_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square50_filesize` int(10) UNSIGNED DEFAULT NULL,
  `square50_width` smallint(5) UNSIGNED DEFAULT NULL,
  `square50_height` smallint(5) UNSIGNED DEFAULT NULL,
  `square50_is_squared` tinyint(1) UNSIGNED DEFAULT NULL,
  `square100_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square100_dir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square100_filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square100_filepath` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square100_filedir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square100_s3_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square100_filesize` int(10) UNSIGNED DEFAULT NULL,
  `square100_width` smallint(5) UNSIGNED DEFAULT NULL,
  `square100_height` smallint(5) UNSIGNED DEFAULT NULL,
  `square100_is_squared` tinyint(1) UNSIGNED DEFAULT NULL,
  `square200_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square200_dir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square200_filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square200_filepath` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square200_filedir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square200_s3_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square200_filesize` int(10) UNSIGNED DEFAULT NULL,
  `square200_width` smallint(5) UNSIGNED DEFAULT NULL,
  `square200_height` smallint(5) UNSIGNED DEFAULT NULL,
  `square200_is_squared` tinyint(1) UNSIGNED DEFAULT NULL,
  `square400_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square400_dir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square400_filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square400_filepath` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square400_filedir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square400_s3_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square400_filesize` int(10) UNSIGNED DEFAULT NULL,
  `square400_width` smallint(5) UNSIGNED DEFAULT NULL,
  `square400_height` smallint(5) UNSIGNED DEFAULT NULL,
  `square400_is_squared` tinyint(1) UNSIGNED DEFAULT NULL,
  `size50_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size50_dir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size50_filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size50_filepath` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size50_filedir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size50_s3_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size50_filesize` int(10) UNSIGNED DEFAULT NULL,
  `size50_width` smallint(5) UNSIGNED DEFAULT NULL,
  `size50_height` smallint(5) UNSIGNED DEFAULT NULL,
  `size50_is_squared` tinyint(1) UNSIGNED DEFAULT NULL,
  `size100_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size100_dir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size100_filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size100_filepath` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size100_filedir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size100_s3_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size100_filesize` int(10) UNSIGNED DEFAULT NULL,
  `size100_width` smallint(5) UNSIGNED DEFAULT NULL,
  `size100_height` smallint(5) UNSIGNED DEFAULT NULL,
  `size100_is_squared` tinyint(1) UNSIGNED DEFAULT NULL,
  `size200_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size200_dir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size200_filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size200_filepath` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size200_filedir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size200_s3_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size200_filesize` int(10) UNSIGNED DEFAULT NULL,
  `size200_width` smallint(5) UNSIGNED DEFAULT NULL,
  `size200_height` smallint(5) UNSIGNED DEFAULT NULL,
  `size200_is_squared` tinyint(1) UNSIGNED DEFAULT NULL,
  `size400_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size400_dir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size400_filename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size400_filepath` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size400_filedir` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size400_s3_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size400_filesize` int(10) UNSIGNED DEFAULT NULL,
  `size400_width` smallint(5) UNSIGNED DEFAULT NULL,
  `size400_height` smallint(5) UNSIGNED DEFAULT NULL,
  `size400_is_squared` tinyint(1) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `image_uploads`
--

INSERT INTO `image_uploads` (`id`, `original_filename`, `original_filepath`, `original_filedir`, `original_extension`, `original_mime`, `original_filesize`, `original_width`, `original_height`, `path`, `dir`, `filename`, `basename`, `exif`, `square50_path`, `square50_dir`, `square50_filename`, `square50_filepath`, `square50_filedir`, `square50_s3_url`, `square50_filesize`, `square50_width`, `square50_height`, `square50_is_squared`, `square100_path`, `square100_dir`, `square100_filename`, `square100_filepath`, `square100_filedir`, `square100_s3_url`, `square100_filesize`, `square100_width`, `square100_height`, `square100_is_squared`, `square200_path`, `square200_dir`, `square200_filename`, `square200_filepath`, `square200_filedir`, `square200_s3_url`, `square200_filesize`, `square200_width`, `square200_height`, `square200_is_squared`, `square400_path`, `square400_dir`, `square400_filename`, `square400_filepath`, `square400_filedir`, `square400_s3_url`, `square400_filesize`, `square400_width`, `square400_height`, `square400_is_squared`, `size50_path`, `size50_dir`, `size50_filename`, `size50_filepath`, `size50_filedir`, `size50_s3_url`, `size50_filesize`, `size50_width`, `size50_height`, `size50_is_squared`, `size100_path`, `size100_dir`, `size100_filename`, `size100_filepath`, `size100_filedir`, `size100_s3_url`, `size100_filesize`, `size100_width`, `size100_height`, `size100_is_squared`, `size200_path`, `size200_dir`, `size200_filename`, `size200_filepath`, `size200_filedir`, `size200_s3_url`, `size200_filesize`, `size200_width`, `size200_height`, `size200_is_squared`, `size400_path`, `size400_dir`, `size400_filename`, `size400_filepath`, `size400_filedir`, `size400_s3_url`, `size400_filesize`, `size400_width`, `size400_height`, `size400_is_squared`, `created_at`, `updated_at`) VALUES
(578, 'videowal33-500x500.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/videowal33-500x500.jpg', '\\uploads/images/videowal33-500x500.jpg', 'jpg', 'image/jpeg', 39052, 500, 500, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images', '\\uploads/images', 'videowal33-500x500.jpg', 'videowal33-500x500', NULL, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square50', '\\uploads/images/square50/videowal33-500x500.jpg', 'videowal33-500x500.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square50/videowal33-500x500.jpg', '\\uploads/images/square50/videowal33-500x500.jpg', NULL, 1684, 50, 50, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square100', '\\uploads/images/square100/videowal33-500x500.jpg', 'videowal33-500x500.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square100/videowal33-500x500.jpg', '\\uploads/images/square100/videowal33-500x500.jpg', NULL, 3559, 100, 100, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square200', '\\uploads/images/square200/videowal33-500x500.jpg', 'videowal33-500x500.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square200/videowal33-500x500.jpg', '\\uploads/images/square200/videowal33-500x500.jpg', NULL, 9387, 200, 200, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square400', '\\uploads/images/square400/videowal33-500x500.jpg', 'videowal33-500x500.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square400/videowal33-500x500.jpg', '\\uploads/images/square400/videowal33-500x500.jpg', NULL, 25044, 400, 400, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size50', '\\uploads/images/size50/videowal33-500x500.jpg', 'videowal33-500x500.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size50/videowal33-500x500.jpg', '\\uploads/images/size50/videowal33-500x500.jpg', NULL, 1684, 50, 50, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size100', '\\uploads/images/size100/videowal33-500x500.jpg', 'videowal33-500x500.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size100/videowal33-500x500.jpg', '\\uploads/images/size100/videowal33-500x500.jpg', NULL, 3559, 100, 100, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size200', '\\uploads/images/size200/videowal33-500x500.jpg', 'videowal33-500x500.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size200/videowal33-500x500.jpg', '\\uploads/images/size200/videowal33-500x500.jpg', NULL, 9387, 200, 200, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size400', '\\uploads/images/size400/videowal33-500x500.jpg', 'videowal33-500x500.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size400/videowal33-500x500.jpg', '\\uploads/images/size400/videowal33-500x500.jpg', NULL, 25044, 400, 400, 1, '2018-08-25 20:13:07', '2018-08-25 20:13:07'),
(579, 'dn5.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/dn5.jpg', '\\uploads/images/dn5.jpg', 'jpg', 'image/jpeg', 88695, 800, 657, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images', '\\uploads/images', 'dn5.jpg', 'dn5', NULL, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square50', '\\uploads/images/square50/dn5.jpg', 'dn5.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square50/dn5.jpg', '\\uploads/images/square50/dn5.jpg', NULL, 1809, 50, 50, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square100', '\\uploads/images/square100/dn5.jpg', 'dn5.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square100/dn5.jpg', '\\uploads/images/square100/dn5.jpg', NULL, 3718, 100, 100, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square200', '\\uploads/images/square200/dn5.jpg', 'dn5.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square200/dn5.jpg', '\\uploads/images/square200/dn5.jpg', NULL, 9529, 200, 200, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square400', '\\uploads/images/square400/dn5.jpg', 'dn5.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square400/dn5.jpg', '\\uploads/images/square400/dn5.jpg', NULL, 27124, 400, 400, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size50', '\\uploads/images/size50/dn5.jpg', 'dn5.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size50/dn5.jpg', '\\uploads/images/size50/dn5.jpg', NULL, 1809, 50, 50, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size100', '\\uploads/images/size100/dn5.jpg', 'dn5.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size100/dn5.jpg', '\\uploads/images/size100/dn5.jpg', NULL, 3718, 100, 100, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size200', '\\uploads/images/size200/dn5.jpg', 'dn5.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size200/dn5.jpg', '\\uploads/images/size200/dn5.jpg', NULL, 9529, 200, 200, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size400', '\\uploads/images/size400/dn5.jpg', 'dn5.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size400/dn5.jpg', '\\uploads/images/size400/dn5.jpg', NULL, 27124, 400, 400, 1, '2018-09-02 09:32:04', '2018-09-02 09:32:04'),
(580, 'margayII_traffic_low_rgb.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/margayII_traffic_low_rgb.jpg', '\\uploads/images/margayII_traffic_low_rgb.jpg', 'jpg', 'image/jpeg', 33026, 350, 344, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images', '\\uploads/images', 'margayII_traffic_low_rgb.jpg', 'margayII_traffic_low_rgb', NULL, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square50', '\\uploads/images/square50/margayII_traffic_low_rgb.jpg', 'margayII_traffic_low_rgb.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square50/margayII_traffic_low_rgb.jpg', '\\uploads/images/square50/margayII_traffic_low_rgb.jpg', NULL, 2131, 50, 50, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square100', '\\uploads/images/square100/margayII_traffic_low_rgb.jpg', 'margayII_traffic_low_rgb.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square100/margayII_traffic_low_rgb.jpg', '\\uploads/images/square100/margayII_traffic_low_rgb.jpg', NULL, 5155, 100, 100, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square200', '\\uploads/images/square200/margayII_traffic_low_rgb.jpg', 'margayII_traffic_low_rgb.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square200/margayII_traffic_low_rgb.jpg', '\\uploads/images/square200/margayII_traffic_low_rgb.jpg', NULL, 14409, 200, 200, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square400', '\\uploads/images/square400/margayII_traffic_low_rgb.jpg', 'margayII_traffic_low_rgb.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square400/margayII_traffic_low_rgb.jpg', '\\uploads/images/square400/margayII_traffic_low_rgb.jpg', NULL, 36162, 344, 344, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size50', '\\uploads/images/size50/margayII_traffic_low_rgb.jpg', 'margayII_traffic_low_rgb.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size50/margayII_traffic_low_rgb.jpg', '\\uploads/images/size50/margayII_traffic_low_rgb.jpg', NULL, 2131, 50, 50, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size100', '\\uploads/images/size100/margayII_traffic_low_rgb.jpg', 'margayII_traffic_low_rgb.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size100/margayII_traffic_low_rgb.jpg', '\\uploads/images/size100/margayII_traffic_low_rgb.jpg', NULL, 5155, 100, 100, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size200', '\\uploads/images/size200/margayII_traffic_low_rgb.jpg', 'margayII_traffic_low_rgb.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size200/margayII_traffic_low_rgb.jpg', '\\uploads/images/size200/margayII_traffic_low_rgb.jpg', NULL, 14409, 200, 200, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size400', '\\uploads/images/size400/margayII_traffic_low_rgb.jpg', 'margayII_traffic_low_rgb.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size400/margayII_traffic_low_rgb.jpg', '\\uploads/images/size400/margayII_traffic_low_rgb.jpg', NULL, 36162, 344, 344, 1, '2018-09-02 09:33:46', '2018-09-02 09:33:46'),
(581, 'Без названия.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/Без названия.jpg', '\\uploads/images/Без названия.jpg', 'jpg', 'image/jpeg', 7072, 300, 168, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images', '\\uploads/images', 'Без названия.jpg', 'Без названия', NULL, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square50', '\\uploads/images/square50/Без названия.jpg', 'Без названия.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square50/Без названия.jpg', '\\uploads/images/square50/Без названия.jpg', NULL, 2286, 50, 50, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square100', '\\uploads/images/square100/Без названия.jpg', 'Без названия.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square100/Без названия.jpg', '\\uploads/images/square100/Без названия.jpg', NULL, 4881, 100, 100, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square200', '\\uploads/images/square200/Без названия.jpg', 'Без названия.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square200/Без названия.jpg', '\\uploads/images/square200/Без названия.jpg', NULL, 9692, 168, 168, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square400', '\\uploads/images/square400/Без названия.jpg', 'Без названия.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square400/Без названия.jpg', '\\uploads/images/square400/Без названия.jpg', NULL, 9692, 168, 168, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size50', '\\uploads/images/size50/Без названия.jpg', 'Без названия.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size50/Без названия.jpg', '\\uploads/images/size50/Без названия.jpg', NULL, 2286, 50, 50, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size100', '\\uploads/images/size100/Без названия.jpg', 'Без названия.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size100/Без названия.jpg', '\\uploads/images/size100/Без названия.jpg', NULL, 4881, 100, 100, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size200', '\\uploads/images/size200/Без названия.jpg', 'Без названия.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size200/Без названия.jpg', '\\uploads/images/size200/Без названия.jpg', NULL, 9692, 168, 168, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size400', '\\uploads/images/size400/Без названия.jpg', 'Без названия.jpg', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size400/Без названия.jpg', '\\uploads/images/size400/Без названия.jpg', NULL, 9692, 168, 168, 1, '2018-09-02 12:10:50', '2018-09-02 12:10:50'),
(582, 'videosteny.png', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/videosteny.png', '\\uploads/images/videosteny.png', 'png', 'image/png', 222402, 562, 450, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images', '\\uploads/images', 'videosteny.png', 'videosteny', NULL, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square50', '\\uploads/images/square50/videosteny.png', 'videosteny.png', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square50/videosteny.png', '\\uploads/images/square50/videosteny.png', NULL, 4962, 50, 50, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square100', '\\uploads/images/square100/videosteny.png', 'videosteny.png', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square100/videosteny.png', '\\uploads/images/square100/videosteny.png', NULL, 15919, 100, 100, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square200', '\\uploads/images/square200/videosteny.png', 'videosteny.png', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square200/videosteny.png', '\\uploads/images/square200/videosteny.png', NULL, 51143, 200, 200, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square400', '\\uploads/images/square400/videosteny.png', 'videosteny.png', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/square400/videosteny.png', '\\uploads/images/square400/videosteny.png', NULL, 163920, 400, 400, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size50', '\\uploads/images/size50/videosteny.png', 'videosteny.png', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size50/videosteny.png', '\\uploads/images/size50/videosteny.png', NULL, 4962, 50, 50, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size100', '\\uploads/images/size100/videosteny.png', 'videosteny.png', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size100/videosteny.png', '\\uploads/images/size100/videosteny.png', NULL, 15919, 100, 100, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size200', '\\uploads/images/size200/videosteny.png', 'videosteny.png', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size200/videosteny.png', '\\uploads/images/size200/videosteny.png', NULL, 51143, 200, 200, 1, 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size400', '\\uploads/images/size400/videosteny.png', 'videosteny.png', 'C:\\openserver2018\\OSPanel\\domains\\shop.loc\\public\\uploads/images/size400/videosteny.png', '\\uploads/images/size400/videosteny.png', NULL, 163920, 400, 400, 1, '2018-09-02 12:15:20', '2018-09-02 12:15:20');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_193651_create_roles_permissions_tables', 2),
(4, '2018_08_01_183154_create_pages_table', 2),
(5, '2018_08_04_122319_create_settings_table', 2),
(6, '2018_08_18_190921_create_activity_log_table', 2),
(9, '2018_08_25_144434_create_categories_table', 4),
(13, '2017_07_24_024410_create_image_upload_table', 5),
(14, '2018_08_28_203329_create_chunks_table', 6),
(15, '2018_08_28_204806_create_chunks_table', 7),
(16, '2018_08_28_205207_create_chunks_table', 8),
(17, '2018_09_01_145843_create_currencies_table', 9),
(18, '2018_09_01_205702_add_slug_categories', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `created_at`, `updated_at`, `deleted_at`, `title`, `content`) VALUES
(1, '2018-08-19 10:34:12', '2018-08-19 10:34:53', '2018-08-19 10:34:53', 'test', '<p>test</p>'),
(2, '2018-08-25 11:47:26', '2018-08-25 11:47:26', NULL, 'test', '<p>test</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('proovit09@yandex.ru', '$2y$10$BM1GgBTKQ2rAavQ.B9fo8ecHXS8QYFApxuP21xd2m0qSH1D6FriYC', '2018-08-18 19:02:16');

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `label`, `created_at`, `updated_at`) VALUES
(2, 'admin.panel', 'Доступ в админ панель', '2018-08-18 16:14:39', '2018-08-18 16:14:39'),
(3, 'upload.files', 'Загрузка файлов', '2018-08-25 13:37:44', '2018-08-25 13:37:44');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `label`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Администратор', '2018-08-18 16:15:01', '2018-08-18 16:15:01');

-- --------------------------------------------------------

--
-- Структура таблицы `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'vendor', 'proovit09@yandex.ru', '$2y$10$mHFm7oMnr6hCbcpUfv8U0eEhpHtZvG5K4o3i728CL6c9ZpmwZNUJC', 'MXMPVbRkLx0y6448u2dyOmE9IPwO1C7BGpzhWzDAG1TYQOjv5rsl2YAFOFqf', '2018-08-18 16:11:41', '2018-08-18 19:22:32');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `chunks`
--
ALTER TABLE `chunks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `image_uploads`
--
ALTER TABLE `image_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `chunks`
--
ALTER TABLE `chunks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `image_uploads`
--
ALTER TABLE `image_uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=583;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
