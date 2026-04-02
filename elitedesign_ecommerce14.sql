-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 30, 2024 at 05:16 PM
-- Server version: 8.0.36-cll-lve
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elitedesign_ecommerce14`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'TmJR485pmSZvwNXXEVRItDxrEY5cRGbW', 1, '2023-05-02 21:08:11', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(2, 2, 'Gc1O9PoOehpyrzxnmAIaRiv3ABRwrpx6', 1, '2023-05-02 21:08:11', '2023-05-02 21:08:11', '2023-05-02 21:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `title`, `action_label`, `action_url`, `description`, `read_at`, `created_at`, `updated_at`, `permission`) VALUES
(7, 'New order', 'View', 'https://www.ecommerce14.elitedesign.com.bd/admin/orders/edit/87', 'Robiul  Islam Arzu ordered 1 product', '2024-11-06 15:19:30', '2024-11-06 15:19:07', '2024-11-06 15:19:30', ''),
(8, 'New order', 'View', 'https://www.ecommerce14.elitedesign.com.bd/admin/orders/edit/88', 'Robiul  Islam Arzu ordered 1 product', NULL, '2024-11-06 15:19:07', '2024-11-06 15:19:07', ''),
(9, 'New order', 'View', 'https://www.ecommerce14.elitedesign.com.bd/admin/orders/edit/94', ' ordered 1 product', NULL, '2024-11-27 23:40:12', '2024-11-27 23:40:12', ''),
(10, 'New order', 'View', 'https://www.ecommerce14.elitedesign.com.bd/admin/orders/edit/94', ' ordered 1 product', NULL, '2024-11-27 23:40:13', '2024-11-27 23:40:13', '');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `name`, `expired_at`, `location`, `key`, `image`, `url`, `clicked`, `order`, `status`, `created_at`, `updated_at`, `open_in_new_tab`) VALUES
(1, 'Everyday Fresh', '2028-05-03 00:00:00', 'not_set', 'IZ6WU8KUALYD', '1.png', '/products', 17, 1, 'published', '2023-05-02 21:08:12', '2024-11-28 20:47:51', 1),
(2, 'Make your Breakfast', '2028-05-03 00:00:00', 'not_set', 'ILSFJVYFGCPZ', '2.png', '/products', 9, 2, 'published', '2023-05-02 21:08:12', '2024-10-11 18:12:20', 1),
(3, 'The best Organic', '2028-05-03 00:00:00', 'not_set', 'ILSDKVYFGXPH', '3.png', '/products', 9, 3, 'published', '2023-05-02 21:08:12', '2024-11-21 14:06:06', 1),
(4, 'Bring nature into your home', '2028-05-03 00:00:00', 'not_set', 'IZ6WU8KUALYG', '4-3.png', '/products', 4, 4, 'published', '2023-05-02 21:08:12', '2023-11-09 00:33:13', 1),
(5, 'Delivered to your home', '2028-05-03 00:00:00', 'not_set', 'IZ6WU8KUALYH', '6-1.png', '/products', 4, 5, 'published', '2023-05-02 21:08:12', '2023-11-11 16:20:59', 1),
(6, 'Save 17% on Oganic Juice', '2028-05-03 00:00:00', 'not_set', 'IZ6WU8KUALYI', '6-1.png', '/products', 4, 6, 'published', '2023-05-02 21:08:12', '2023-11-06 01:17:25', 1),
(7, 'Everyday Fresh & Clean with Our Products', '2028-05-03 00:00:00', 'item-style-4', 'IZ6WU8KUALYJ', '7.png', '/products', 4, 7, 'published', '2023-05-02 21:08:12', '2023-11-08 09:05:58', 1),
(8, 'The best Organic Products Online', '2028-05-03 00:00:00', 'item-style-5', 'IZ6WU8KUALYK', 'products/8-2.png', '/products', 4, 8, 'published', '2023-05-02 21:08:12', '2023-11-14 12:13:52', 1),
(9, 'Everyday Fresh with Our Products', '2028-05-03 00:00:00', 'item-style-2', 'IZ6WU8KUALYL', '9.png', NULL, 0, 9, 'published', '2023-05-02 21:08:12', '2023-05-31 07:18:24', 1),
(10, '100% guaranteed all Fresh items', '2028-05-03 00:00:00', 'item-style-2', 'IZ6WU8KUALYM', '10.png', NULL, 0, 10, 'published', '2023-05-02 21:08:12', '2023-05-31 07:19:20', 1),
(11, 'Special grocery sale off this month', '2028-05-03 00:00:00', 'item-style-2', 'IZ6WU8KUALYN', '11.png', NULL, 0, 11, 'published', '2023-05-02 21:08:12', '2023-05-31 07:20:21', 1),
(12, 'Enjoy 15% OFF for all vegetable and fruit', '2028-05-03 00:00:00', 'item-style-2', 'IZ6WU8KUALYO', '12.png', NULL, 0, 12, 'published', '2023-05-02 21:08:12', '2023-05-31 07:21:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ads_translations`
--

CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `module` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint UNSIGNED NOT NULL,
  `reference_id` bigint UNSIGNED NOT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(196, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-03 05:29:28', '2024-11-03 05:29:28'),
(197, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-03 17:14:03', '2024-11-03 17:14:03'),
(198, 1, 'customer', '{\"name\":\"arzukhan\",\"email\":\"arzu12@gmail.com\",\"is_vendor\":\"1\",\"phone\":\"0125478961\",\"dob\":\"2024-11-03\",\"submit\":\"save\",\"status\":\"activated\",\"avatar\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '144.48.116.201', 1, 15, 'arzukhan', 'info', '2024-11-03 17:16:39', '2024-11-03 17:16:39'),
(199, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-03 23:07:15', '2024-11-03 23:07:15'),
(200, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-03 23:07:16', '2024-11-03 23:07:16'),
(201, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-04 11:11:42', '2024-11-04 11:11:42'),
(202, 1, 'product', '{\"name\":\"ywZ\\u2026yMvWhM\\u00fb\",\"slug\":\"ywzymvwhmu\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>\\u201eywvyw\\u201evywvy<\\/p>\",\"content\":\"<p>wyv\\u201eywvy\\u201ew<\\/p>\",\"images\":[null,\"1-2-1.png\"],\"product_type\":\"digital\",\"sale_type\":\"0\",\"sku\":\"ywv\",\"price\":\"20\",\"sale_price\":\"10\",\"cost_per_item\":\"20\",\"product_id\":null,\"barcode\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"0\",\"quantity\":\"0\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"is_added_attributes\":\"0\",\"has_product_options\":\"1\",\"related_products\":null,\"cross_sale_products\":null,\"faq_schema_config\":[[{\"key\":\"question\",\"value\":null},{\"key\":\"answer\",\"value\":null}]],\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"layout\":null,\"is_popular\":\"0\",\"status\":\"published\",\"store_id\":\"0\",\"is_featured\":\"1\",\"brand_id\":\"0\",\"image\":\"298737170-435256305288617-5919111556804315091-n.png\",\"tag\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '144.48.116.201', 1, 88, 'ywZ…yMvWhMû', 'info', '2024-11-04 12:59:12', '2024-11-04 12:59:12'),
(203, 1, 'product', '{\"name\":\"Robiul  Islam Arzu\",\"slug\":\"ywzymvwhmu\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>\\u201eywvyw\\u201evywvy<\\/p>\",\"content\":\"<p>wyv\\u201eywvy\\u201ew<\\/p>\",\"images\":[null,\"1-2-1.png\"],\"product_type\":\"physical\",\"sale_type\":\"0\",\"sku\":\"ywv\",\"price\":\"20\",\"sale_price\":\"10\",\"cost_per_item\":\"20\",\"product_id\":\"88\",\"barcode\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"0\",\"quantity\":\"0\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"is_added_attributes\":\"0\",\"has_product_options\":\"1\",\"related_products\":null,\"cross_sale_products\":null,\"faq_schema_config\":[[{\"key\":\"question\",\"value\":null},{\"key\":\"answer\",\"value\":null}]],\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"layout\":null,\"is_popular\":\"0\",\"status\":\"published\",\"store_id\":\"0\",\"is_featured\":\"1\",\"brand_id\":\"0\",\"image\":\"298737170-435256305288617-5919111556804315091-n.png\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '144.48.116.201', 1, 88, 'Robiul  Islam Arzu', 'primary', '2024-11-04 13:00:08', '2024-11-04 13:00:08'),
(204, 1, 'product', '{\"name\":\"Robiul  Islam Arzu\",\"slug\":\"ywzymvwhmu\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Ecommerce\\\\Models\\\\Product\",\"description\":\"<p>this new&nbsp;<\\/p>\",\"content\":\"<p>wyv\\u201eywvy\\u201ew<\\/p>\",\"images\":[null,\"1-2-1.png\"],\"product_type\":\"physical\",\"sale_type\":\"0\",\"sku\":\"ywv\",\"price\":\"20\",\"sale_price\":\"10\",\"cost_per_item\":\"20\",\"product_id\":\"88\",\"barcode\":null,\"start_date\":null,\"end_date\":null,\"with_storehouse_management\":\"0\",\"quantity\":\"0\",\"allow_checkout_when_out_of_stock\":\"0\",\"stock_status\":\"in_stock\",\"is_added_attributes\":\"0\",\"has_product_options\":\"1\",\"related_products\":null,\"cross_sale_products\":null,\"faq_schema_config\":[[{\"key\":\"question\",\"value\":null},{\"key\":\"answer\",\"value\":null}]],\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"layout\":null,\"is_popular\":\"0\",\"status\":\"published\",\"store_id\":\"0\",\"is_featured\":\"1\",\"brand_id\":\"0\",\"image\":\"298737170-435256305288617-5919111556804315091-n.png\",\"tag\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '144.48.116.201', 1, 88, 'Robiul  Islam Arzu', 'primary', '2024-11-04 13:01:34', '2024-11-04 13:01:34'),
(205, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-04 17:59:07', '2024-11-04 17:59:07'),
(206, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-04 17:59:27', '2024-11-04 17:59:27'),
(207, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-04 17:59:35', '2024-11-04 17:59:35'),
(208, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-04 17:59:59', '2024-11-04 17:59:59'),
(209, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-04 18:00:31', '2024-11-04 18:00:31'),
(210, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-05 09:47:07', '2024-11-05 09:47:07'),
(211, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-05 09:47:07', '2024-11-05 09:47:07'),
(212, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-05 09:47:07', '2024-11-05 09:47:07'),
(213, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-05 09:47:07', '2024-11-05 09:47:07'),
(214, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-05 09:47:08', '2024-11-05 09:47:08'),
(215, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-05 09:47:08', '2024-11-05 09:47:08'),
(216, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-05 09:47:08', '2024-11-05 09:47:08'),
(217, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-05 09:47:08', '2024-11-05 09:47:08'),
(218, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-06 00:22:24', '2024-11-06 00:22:24'),
(219, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-06 14:25:25', '2024-11-06 14:25:25'),
(220, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-06 15:11:40', '2024-11-06 15:11:40'),
(221, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-06 20:41:59', '2024-11-06 20:41:59'),
(222, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-06 21:50:22', '2024-11-06 21:50:22'),
(223, 1, 'flash-sale', '{\"name\":\"Daily Best Sales\",\"subtitle\":\"dfdfsgdfsd\",\"products\":\"2,3,4,1,5\",\"submit\":\"apply\",\"status\":\"published\",\"end_date\":\"2024-06-30\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '144.48.116.201', 1, 6, 'Daily Best Sales', 'primary', '2024-11-06 22:22:25', '2024-11-06 22:22:25'),
(224, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-06 23:00:49', '2024-11-06 23:00:49'),
(225, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-07 14:13:18', '2024-11-07 14:13:18'),
(226, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-07 14:13:20', '2024-11-07 14:13:20'),
(227, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-07 14:13:20', '2024-11-07 14:13:20'),
(228, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-07 14:13:20', '2024-11-07 14:13:20'),
(229, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-07 14:13:20', '2024-11-07 14:13:20'),
(230, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-07 14:13:20', '2024-11-07 14:13:20'),
(231, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-07 14:13:21', '2024-11-07 14:13:21'),
(232, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-07 14:13:21', '2024-11-07 14:13:21'),
(233, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-08 00:24:05', '2024-11-08 00:24:05'),
(234, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-08 00:24:07', '2024-11-08 00:24:07'),
(235, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-08 00:24:07', '2024-11-08 00:24:07'),
(236, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-08 00:24:07', '2024-11-08 00:24:07'),
(237, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-08 00:24:07', '2024-11-08 00:24:07'),
(238, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-08 00:24:08', '2024-11-08 00:24:08'),
(239, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-08 00:24:08', '2024-11-08 00:24:08'),
(240, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '144.48.116.201', 0, 1, 'Fresh Mart', 'info', '2024-11-08 00:24:09', '2024-11-08 00:24:09'),
(241, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '103.82.203.55', 0, 1, 'Fresh Mart', 'info', '2024-11-29 20:04:55', '2024-11-29 20:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint UNSIGNED NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Ecommerce', 0, 'Qui atque quas in vero ut. Nostrum est nemo qui qui culpa ut. Vero sequi dolores esse autem.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(2, 'Fashion', 0, 'Recusandae autem non perferendis. Labore repudiandae quia ut sapiente. Illum ipsam laborum placeat illum laudantium. Ut rem officiis magni quia qui debitis delectus. Ut voluptas animi cum iste quo.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(3, 'Electronic', 0, 'Nesciunt aliquam laudantium similique excepturi ut alias et. Blanditiis nemo et ad eius et in dolor. Inventore quod ut id natus eum eum ipsa.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(4, 'Commercial', 0, 'Qui molestiae sequi cum magnam possimus. Soluta quisquam qui sapiente iure qui. Perferendis corporis harum libero placeat ea voluptas atque deserunt. Saepe et beatae delectus eaque ut ut.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2023-05-02 21:08:11', '2023-05-02 21:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `categories_translations`
--

CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` bigint UNSIGNED NOT NULL,
  `country_id` bigint UNSIGNED DEFAULT NULL,
  `record_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities_translations`
--

CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint UNSIGNED NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries_translations`
--

CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_1', '2023-05-30 22:19:00', '2023-05-30 22:19:00'),
(2, 'widget_total_2', '2023-05-30 22:19:00', '2023-05-30 22:19:00'),
(3, 'widget_total_themes', '2023-05-30 22:19:00', '2023-05-30 22:19:00'),
(4, 'widget_total_3', '2023-05-30 22:19:00', '2023-05-30 22:19:00'),
(5, 'widget_total_4', '2023-05-30 22:19:00', '2023-05-30 22:19:00'),
(6, 'widget_total_users', '2023-05-30 22:19:00', '2023-05-30 22:19:00'),
(7, 'widget_total_pages', '2023-05-30 22:19:00', '2023-05-30 22:19:00'),
(8, 'widget_total_plugins', '2023-05-30 22:19:00', '2023-05-30 22:19:00'),
(9, 'widget_analytics_general', '2023-05-30 22:19:00', '2023-05-30 22:19:00'),
(10, 'widget_analytics_page', '2023-05-30 22:19:00', '2023-05-30 22:19:00'),
(11, 'widget_analytics_browser', '2023-05-30 22:19:00', '2023-05-30 22:19:00'),
(12, 'widget_analytics_referrer', '2023-05-30 22:19:00', '2023-05-30 22:19:00'),
(13, 'widget_posts_recent', '2023-05-30 22:19:00', '2023-05-30 22:19:00'),
(14, 'widget_audit_logs', '2023-05-30 22:19:00', '2023-05-30 22:19:00'),
(15, 'widget_ecommerce_report_general', '2023-05-30 22:19:00', '2023-05-30 22:19:00');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` bigint UNSIGNED NOT NULL,
  `widget_id` bigint UNSIGNED NOT NULL,
  `order` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widget_settings`
--

INSERT INTO `dashboard_widget_settings` (`id`, `settings`, `user_id`, `widget_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 9, 0, 1, '2023-08-04 01:13:43', '2023-08-04 01:13:43'),
(2, NULL, 1, 10, 3, 1, '2023-08-04 01:13:43', '2024-08-30 00:24:44'),
(3, NULL, 1, 11, 1, 1, '2023-08-04 01:13:43', '2023-08-04 01:14:11'),
(4, NULL, 1, 12, 2, 1, '2023-08-04 01:13:43', '2024-08-30 00:24:44'),
(5, NULL, 1, 13, 5, 1, '2023-08-04 01:13:43', '2024-08-30 00:24:47'),
(6, NULL, 1, 14, 4, 1, '2023-08-04 01:13:43', '2024-08-30 00:24:47'),
(7, NULL, 1, 15, 6, 1, '2023-08-04 01:13:43', '2023-08-04 01:13:43');

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands`
--

CREATE TABLE `ec_brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `is_featured` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_brands`
--

INSERT INTO `ec_brands` (`id`, `name`, `description`, `website`, `logo`, `status`, `order`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'RFL', NULL, NULL, 'unnamed.png', 'published', 0, 1, '2023-05-02 21:07:59', '2023-05-30 22:31:25'),
(2, 'Pure', NULL, NULL, 'pure.png', 'published', 1, 1, '2023-05-02 21:07:59', '2023-05-30 22:32:02'),
(3, 'Lava', NULL, NULL, 'lava.png', 'published', 2, 1, '2023-05-02 21:07:59', '2023-05-30 22:32:32'),
(4, 'Symphony', NULL, NULL, 'symphony.png', 'published', 3, 1, '2023-05-02 21:07:59', '2023-05-30 22:33:08'),
(5, 'Iphone', NULL, NULL, 'iphone-logo-17.png', 'published', 4, 1, '2023-05-02 21:07:59', '2023-05-30 23:40:44'),
(6, 'Walton', NULL, NULL, 'walton.png', 'published', 5, 1, '2023-05-02 21:07:59', '2023-05-30 23:41:18'),
(7, 'Twisted', NULL, NULL, 'attachment-123286452.png', 'published', 6, 1, '2023-05-02 21:07:59', '2023-05-30 23:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands_translations`
--

CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_cart`
--

CREATE TABLE `ec_cart` (
  `identifier` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_currencies`
--

CREATE TABLE `ec_currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `decimals` tinyint UNSIGNED DEFAULT '0',
  `order` int UNSIGNED DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_currencies`
--

INSERT INTO `ec_currencies` (`id`, `title`, `symbol`, `is_prefix_symbol`, `decimals`, `order`, `is_default`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'BDT', '৳', 1, 2, 2, 1, 1, '2023-05-02 21:07:59', '2023-05-31 07:44:46');

-- --------------------------------------------------------

--
-- Table structure for table `ec_customers`
--

CREATE TABLE `ec_customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customers`
--

INSERT INTO `ec_customers` (`id`, `name`, `email`, `password`, `avatar`, `dob`, `phone`, `remember_token`, `created_at`, `updated_at`, `confirmed_at`, `email_verify_token`, `status`, `is_vendor`, `vendor_verified_at`) VALUES
(1, 'Jewell Treutel', 'customer@botble.com', '$2y$10$mjYnDw6I/fQ5HmtLeBlln.aBssfqYxWoZpxhpvLZ/MD4Gkm..DQuC', 'flash-sales/16.png', '1976-05-01', '+12254795629', NULL, '2023-05-02 21:08:07', '2023-05-31 08:06:21', '2023-05-03 04:08:07', NULL, 'activated', 0, NULL),
(2, 'William Gerhold', 'vendor@botble.com', '$2y$10$Np8aysf87tdCBCoU/Ae3QuEmlNXjafkloId3ZIwgBroMJH.rEptbS', 'flash-sales/6-1.png', '1974-04-10', '+19203700962', NULL, '2023-05-02 21:08:07', '2023-05-31 08:05:53', '2023-05-03 04:08:07', NULL, 'activated', 1, '2023-05-03 04:08:15'),
(3, 'Prof. Gerry Armstrong II', 'haley.autumn@example.net', '$2y$10$hyup/5T1LNF28rpKZAh8YuGHI7B5CrOLQXcfjZsSO3v0BT8/vCW.u', 'flash-sales/15.png', '2003-04-06', '+17575382638', NULL, '2023-05-02 21:08:07', '2023-05-31 08:05:40', '2023-05-03 04:08:07', NULL, 'activated', 1, '2023-05-03 04:08:15'),
(4, 'Granville Johnston', 'pietro.hintz@example.org', '$2y$10$UAnaxvTBC0CsyHoP88I3H.P4fz0Ex/uVnV5.BaDErvKmlGjXe6D5S', 'flash-sales/3-2.png', '1990-04-15', '+13473584804', NULL, '2023-05-02 21:08:07', '2023-05-31 08:05:26', '2023-05-03 04:08:07', NULL, 'activated', 0, NULL),
(5, 'Retta Olson', 'bauch.marcel@example.net', '$2y$10$qHRru66Csj9X6l7eqUIUG.p/yMnsmJgsT3HgVgbeGvin9P4EfdRqm', 'flash-sales/11-1.png', '1992-04-05', '+19014395459', NULL, '2023-05-02 21:08:07', '2023-05-31 08:05:10', '2023-05-03 04:08:07', NULL, 'activated', 1, '2023-05-03 04:08:15'),
(6, 'Jaron Dibbert', 'okuneva.gerda@example.com', '$2y$10$T3FoAd3Vi/Dp7Q561XUEX.pPc7.VW1BUVNSYg.DJ4V/TOe6/ylWke', 'flash-sales/16.png', '1997-04-06', '+14427563385', NULL, '2023-05-02 21:08:07', '2023-05-31 08:04:56', '2023-05-03 04:08:07', NULL, 'activated', 1, '2023-05-03 04:08:15'),
(7, 'Prof. Santa Spinka', 'jkonopelski@example.com', '$2y$10$QvUSnDpCuvXTX1/aNqSOF.8BCZxBiazihis4Nv0XoJugiRXy4.xBS', 'flash-sales/16.png', '2003-04-21', '+15419005705', NULL, '2023-05-02 21:08:07', '2023-05-31 08:04:35', '2023-05-03 04:08:07', NULL, 'activated', 0, NULL),
(8, 'Alisha Fay', 'dallas.cormier@example.net', '$2y$10$NPyjf5KwTqc5EjmMwopznuRdFffRxc4mfKDgTTccOaP410VAZlOSS', 'flash-sales/6-1.png', '1982-04-19', '+14805863570', NULL, '2023-05-02 21:08:08', '2023-05-31 08:04:14', '2023-05-03 04:08:08', NULL, 'activated', 0, NULL),
(9, 'General Roob DDS', 'minerva78@example.com', '$2y$10$TG4eN83vobhI1sMIemWFguCXFC.TNBV7qsDsRXiaOU3Oohq6MJZZa', 'flash-sales/11-1.png', '1979-04-06', '+16892528330', NULL, '2023-05-02 21:08:08', '2023-05-31 08:04:01', '2023-05-03 04:08:08', NULL, 'activated', 1, '2023-05-03 04:08:15'),
(10, 'Tressa Schiller', 'dborer@example.net', '$2y$10$NGHW46x8pZx3VHnZqFnMVuVekI6oziKLpRohC6ZAM/MzNS.Hs4ETi', 'flash-sales/6-1.png', '2002-04-20', '+19596827447', NULL, '2023-05-02 21:08:08', '2023-05-31 08:03:31', '2023-05-03 04:08:08', NULL, 'activated', 1, '2023-05-03 04:08:15'),
(11, 'ttrr', 'dddd@gmail.com', '$2y$10$H1G9mbN46OaDWIZkUiZyJ.odK1yM5PsHmal3d8vNM/GzDc5mB4eWy', NULL, NULL, NULL, NULL, '2023-06-22 05:51:35', '2023-06-22 05:51:35', '2023-06-22 01:51:35', NULL, 'activated', 0, NULL),
(12, 'Labib Bashir', 'suvo.bashir45@gmail.com', '$2y$10$O1hgGATF2X1hQm3pZM7guuy4oGfucBrUotUeaFlrmwwraJ2uKnoni', NULL, NULL, NULL, NULL, '2023-07-12 16:33:34', '2023-07-12 16:33:34', '2023-07-12 12:33:34', NULL, 'activated', 0, NULL),
(13, 'Freelancer Shakib Chowdhury', 'freelancershakibchowdhury@gmail.com', '$2y$10$M8lUCG3r4AlUcloneanNTe3j6yLIpyJEBr9UUXsxYK1wgPNv4IqW.', NULL, NULL, NULL, NULL, '2023-08-04 01:16:58', '2023-08-04 01:16:58', '2023-08-03 21:16:58', NULL, 'activated', 0, NULL),
(14, 'Rafiqul Islam', 'rafiqulislam98316844@gmail.com', '$2y$10$BJh7Aw.R3AmfIJEgu1QUWOzN.1wnCM2zsx5bvxqG5PNOmePJ7swym', NULL, NULL, '+8801850636864', 'hweeHz7chQJZhJ9KOBEKqqTgW3mAiM1enP0ikKck0szNsyJDzRVWuqDoNLfU', '2023-10-10 21:13:07', '2023-10-10 21:13:07', NULL, NULL, 'activated', 0, NULL),
(15, 'arzukhan', 'arzu12@gmail.com', '$2y$10$pI7nCQS/nXNNS7OZdSN9feH5BvJO3V1Dm8/qaShbqJMvLNztDVNNm', NULL, '2024-11-03', '0125478961', NULL, '2024-11-03 17:16:38', '2024-11-03 17:16:39', '2024-11-03 17:16:38', NULL, 'activated', 1, NULL),
(16, 'Robiul  Islam Arzu', 'arzu13@gmail.com', '$2y$10$ZPuQXWkdZOFxGV/8OjwJHeh43eesxR.EwBHs7r5hoSlnG8S.C53Wa', NULL, NULL, NULL, NULL, '2024-11-06 15:03:56', '2024-11-06 15:03:56', '2024-11-06 15:03:56', NULL, 'activated', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_addresses`
--

CREATE TABLE `ec_customer_addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `is_default` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customer_addresses`
--

INSERT INTO `ec_customer_addresses` (`id`, `name`, `email`, `phone`, `country`, `state`, `city`, `address`, `customer_id`, `is_default`, `created_at`, `updated_at`, `zip_code`) VALUES
(1, 'Jewell Treutel', 'customer@botble.com', '+19844227197', 'SJ', 'Oregon', 'North Mallieport', '181 Keenan Camp', 1, 1, '2023-05-02 21:08:07', '2023-05-02 21:08:07', '57131-5294'),
(2, 'Jewell Treutel', 'customer@botble.com', '+18282415942', 'AO', 'Texas', 'New Tressiestad', '22755 Clara Port', 1, 0, '2023-05-02 21:08:07', '2023-05-02 21:08:07', '93449'),
(3, 'William Gerhold', 'vendor@botble.com', '+15598149441', 'ER', 'West Virginia', 'East Hassanberg', '27822 Pacocha Center Suite 472', 2, 1, '2023-05-02 21:08:07', '2023-05-02 21:08:07', '19511-8675'),
(4, 'William Gerhold', 'vendor@botble.com', '+12014168422', 'MU', 'Massachusetts', 'Pagacberg', '5075 Raynor Cove', 2, 0, '2023-05-02 21:08:07', '2023-05-02 21:08:07', '35392'),
(5, 'Prof. Gerry Armstrong II', 'haley.autumn@example.net', '+17797682603', 'LI', 'Nevada', 'Millerview', '798 Hanna Crossroad', 3, 1, '2023-05-02 21:08:07', '2023-05-02 21:08:07', '14743'),
(6, 'Granville Johnston', 'pietro.hintz@example.org', '+15803749849', 'MW', 'New Hampshire', 'Trevorhaven', '1009 Rutherford Run', 4, 1, '2023-05-02 21:08:07', '2023-05-02 21:08:07', '37193-2808'),
(7, 'Retta Olson', 'bauch.marcel@example.net', '+13858528959', 'MU', 'Missouri', 'Kiehnmouth', '58485 White Estate', 5, 1, '2023-05-02 21:08:07', '2023-05-02 21:08:07', '21498-6258'),
(8, 'Jaron Dibbert', 'okuneva.gerda@example.com', '+18208417718', 'SJ', 'Ohio', 'West Brennontown', '9749 Zetta Light Suite 682', 6, 1, '2023-05-02 21:08:07', '2023-05-02 21:08:07', '47114-8644'),
(9, 'Prof. Santa Spinka', 'jkonopelski@example.com', '+13396517190', 'SL', 'New Hampshire', 'Lake Madison', '4037 Florencio Trafficway Suite 911', 7, 1, '2023-05-02 21:08:07', '2023-05-02 21:08:07', '02595'),
(10, 'Alisha Fay', 'dallas.cormier@example.net', '+13462931421', 'PF', 'Oklahoma', 'Emmettville', '87320 Grady Inlet', 8, 1, '2023-05-02 21:08:08', '2023-05-02 21:08:08', '65318-5940'),
(11, 'General Roob DDS', 'minerva78@example.com', '+17184618317', 'GQ', 'Florida', 'Maudside', '307 Emmerich Pine Apt. 080', 9, 1, '2023-05-02 21:08:08', '2023-05-02 21:08:08', '22904-2889'),
(12, 'Tressa Schiller', 'dborer@example.net', '+19528791792', 'ML', 'Mississippi', 'Frederiquefort', '54404 Delfina Creek Apt. 719', 10, 1, '2023-05-02 21:08:08', '2023-05-02 21:08:08', '34646-8794'),
(13, 'Rafiqul Islam', 'rafiqulislam98316844@gmail.com', '+8801850636864', 'BD', 'Feni', 'Feni', 'Fazilpur, Feni', 14, 1, '2023-10-10 21:13:07', '2023-10-10 21:13:07', NULL),
(14, 'Robiul  Islam Arzu', 'arzu13@gmail.com', '12345621421', 'BD', 'sandwip', 'Chittagong', 'Maitbhanga, sandwip,chittagong', 16, 1, '2024-11-06 15:19:06', '2024-11-06 15:19:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_password_resets`
--

CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

INSERT INTO `ec_customer_recently_viewed_products` (`id`, `customer_id`, `product_id`) VALUES
(1, 16, 87),
(2, 16, 88);

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_used_coupons`
--

CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discounts`
--

CREATE TABLE `ec_discounts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int UNSIGNED NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int UNSIGNED DEFAULT NULL,
  `type_option` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_customers`
--

CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_products`
--

CREATE TABLE `ec_discount_products` (
  `discount_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_product_collections`
--

CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint UNSIGNED NOT NULL,
  `product_collection_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales`
--

CREATE TABLE `ec_flash_sales` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sales`
--

INSERT INTO `ec_flash_sales` (`id`, `name`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Deal of the Day', '2024-06-20 00:00:00', 'published', '2023-05-02 21:08:08', '2023-05-31 07:40:01'),
(2, 'Flash sale 2', '2025-06-13 00:00:00', 'published', '2023-05-02 21:08:08', '2023-05-31 07:36:28'),
(3, 'Flash sale 3', '2023-06-08 00:00:00', 'published', '2023-05-02 21:08:08', '2023-05-31 07:38:53'),
(4, 'Flash sale 4', '2024-05-10 00:00:00', 'published', '2023-05-02 21:08:08', '2023-05-31 07:38:47'),
(5, 'Flash sale 5', '2024-05-03 00:00:00', 'published', '2023-05-02 21:08:08', '2023-05-31 07:40:42'),
(6, 'Daily Best Sales', '2024-06-30 00:00:00', 'published', '2023-05-02 21:08:08', '2024-11-06 22:22:25');

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales_translations`
--

CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sale_products`
--

CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `price` double UNSIGNED DEFAULT NULL,
  `quantity` int UNSIGNED DEFAULT NULL,
  `sold` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sale_products`
--

INSERT INTO `ec_flash_sale_products` (`flash_sale_id`, `product_id`, `price`, `quantity`, `sold`) VALUES
(2, 22, 38.4, 170, 0),
(4, 16, 70.602, 170, 0),
(3, 5, 40, 1, 0),
(1, 20, 47.9171, 170, 0),
(5, 21, 44.28, 170, 0),
(5, 4, 81, 170, 0),
(5, 1, 433, 170, 0),
(1, 3, 413, 170, 1),
(1, 2, 367, 170, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ec_global_options`
--

CREATE TABLE `ec_global_options` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_global_options`
--

INSERT INTO `ec_global_options` (`id`, `name`, `option_type`, `required`, `created_at`, `updated_at`) VALUES
(1, 'Warranty', 'Botble\\Ecommerce\\Option\\OptionType\\RadioButton', 1, '2023-05-02 21:08:14', '2023-05-02 21:08:14'),
(2, 'RAM', 'Botble\\Ecommerce\\Option\\OptionType\\RadioButton', 1, '2023-05-02 21:08:14', '2023-05-02 21:08:14'),
(3, 'CPU', 'Botble\\Ecommerce\\Option\\OptionType\\RadioButton', 1, '2023-05-02 21:08:14', '2023-05-02 21:08:14'),
(4, 'HDD', 'Botble\\Ecommerce\\Option\\OptionType\\Dropdown', 0, '2023-05-02 21:08:14', '2023-05-02 21:08:14');

-- --------------------------------------------------------

--
-- Table structure for table `ec_global_options_translations`
--

CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_global_option_value`
--

CREATE TABLE `ec_global_option_value` (
  `option_id` bigint UNSIGNED NOT NULL COMMENT 'option id',
  `id` bigint UNSIGNED NOT NULL,
  `option_value` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_global_option_value`
--

INSERT INTO `ec_global_option_value` (`option_id`, `id`, `option_value`, `affect_price`, `order`, `affect_type`, `created_at`, `updated_at`) VALUES
(1, 1, '1 Year', 0, 9999, 0, '2023-05-02 21:08:14', '2023-05-02 21:08:14'),
(1, 2, '2 Year', 10, 9999, 0, '2023-05-02 21:08:14', '2023-05-02 21:08:14'),
(1, 3, '3 Year', 20, 9999, 0, '2023-05-02 21:08:14', '2023-05-02 21:08:14'),
(2, 4, '4GB', 0, 9999, 0, '2023-05-02 21:08:14', '2023-05-02 21:08:14'),
(2, 5, '8GB', 10, 9999, 0, '2023-05-02 21:08:14', '2023-05-02 21:08:14'),
(2, 6, '16GB', 20, 9999, 0, '2023-05-02 21:08:14', '2023-05-02 21:08:14'),
(3, 7, 'Core i5', 0, 9999, 0, '2023-05-02 21:08:14', '2023-05-02 21:08:14'),
(3, 8, 'Core i7', 10, 9999, 0, '2023-05-02 21:08:14', '2023-05-02 21:08:14'),
(3, 9, 'Core i9', 20, 9999, 0, '2023-05-02 21:08:14', '2023-05-02 21:08:14'),
(4, 10, '128GB', 0, 9999, 0, '2023-05-02 21:08:14', '2023-05-02 21:08:14'),
(4, 11, '256GB', 10, 9999, 0, '2023-05-02 21:08:14', '2023-05-02 21:08:14'),
(4, 12, '512GB', 20, 9999, 0, '2023-05-02 21:08:14', '2023-05-02 21:08:14');

-- --------------------------------------------------------

--
-- Table structure for table `ec_global_option_value_translations`
--

CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint UNSIGNED NOT NULL,
  `option_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_grouped_products`
--

CREATE TABLE `ec_grouped_products` (
  `id` bigint UNSIGNED NOT NULL,
  `parent_product_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_invoices`
--

CREATE TABLE `ec_invoices` (
  `id` bigint UNSIGNED NOT NULL,
  `reference_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) UNSIGNED NOT NULL,
  `tax_amount` decimal(15,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint UNSIGNED DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_invoices`
--

INSERT INTO `ec_invoices` (`id`, `reference_type`, `reference_id`, `code`, `customer_name`, `company_name`, `company_logo`, `customer_email`, `customer_phone`, `customer_address`, `customer_tax_id`, `sub_total`, `tax_amount`, `shipping_amount`, `discount_amount`, `shipping_option`, `shipping_method`, `coupon_code`, `discount_description`, `amount`, `description`, `payment_id`, `status`, `paid_at`, `created_at`, `updated_at`) VALUES
(50, 'Botble\\Ecommerce\\Models\\Order', 78, 'INV-1', 'MD Khal', '', NULL, 'khaleditsolution@gmail.com', '01885555555', 'hariatpur , Dhaka, Dhaka, Dhaka, BD', NULL, 2900.00, 0.00, 0.00, 0.00, '1', 'default', NULL, NULL, 2900.00, NULL, 54, 'pending', NULL, '2024-09-20 10:59:41', '2024-09-20 11:00:34'),
(51, 'Botble\\Ecommerce\\Models\\Order', 82, 'INV-51', 'HOSSAIN AHAMED', '', NULL, 'sarifesuport@gmail.com', '01905057193', 'SUVESTU NAZAR VALLY, DHAKA, Dhaka, BD', NULL, 1450.00, 0.00, 0.00, 0.00, '1', 'default', NULL, NULL, 1450.00, NULL, 55, 'pending', NULL, '2024-09-30 22:19:46', '2024-09-30 22:20:10'),
(52, 'Botble\\Ecommerce\\Models\\Order', 84, 'INV-52', 'Sjsbbb', '', NULL, 'admmj@gmana.fkfn', '0784555169', 'Lsns, Kssnbv, Isjskmk, BD', NULL, 1450.00, 0.00, 0.00, 0.00, '1', 'default', NULL, NULL, 1450.00, NULL, 56, 'pending', NULL, '2024-10-10 06:16:51', '2024-10-10 06:17:37'),
(53, 'Botble\\Ecommerce\\Models\\Order', 87, 'INV-53', 'Robiul  Islam Arzu', '', NULL, 'arzu13@gmail.com', '12345621421', 'Maitbhanga, sandwip,chittagong, Chittagong, sandwip, BD', NULL, 1450.00, 0.00, 0.00, 0.00, '1', 'default', NULL, NULL, 1450.00, NULL, 57, 'pending', NULL, '2024-11-06 15:04:36', '2024-11-06 15:19:06'),
(54, 'Botble\\Ecommerce\\Models\\Order', 88, 'INV-54', 'Robiul  Islam Arzu', '', NULL, 'arzu13@gmail.com', NULL, '', NULL, 10.00, 0.00, 0.00, 0.00, NULL, '', NULL, NULL, 10.00, NULL, 58, 'pending', NULL, '2024-11-06 15:18:04', '2024-11-06 15:19:07'),
(55, 'Botble\\Ecommerce\\Models\\Order', 94, 'INV-55', 'Boost', '', NULL, 'admin@sumaiyamartllc.xyz', '01788194094', '240 President Rd, Narayanganj 1400, Narayanganj, Dhaka Division, Bangladesh, SD, BD', NULL, 1450.00, 0.00, 0.00, 0.00, '1', 'default', NULL, NULL, 1450.00, NULL, 59, 'pending', NULL, '2024-11-27 23:38:51', '2024-11-27 23:40:11');

-- --------------------------------------------------------

--
-- Table structure for table `ec_invoice_items`
--

CREATE TABLE `ec_invoice_items` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice_id` bigint UNSIGNED NOT NULL,
  `reference_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int UNSIGNED NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) UNSIGNED NOT NULL,
  `tax_amount` decimal(15,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_invoice_items`
--

INSERT INTO `ec_invoice_items` (`id`, `invoice_id`, `reference_type`, `reference_id`, `name`, `description`, `image`, `qty`, `price`, `sub_total`, `tax_amount`, `discount_amount`, `amount`, `options`, `created_at`, `updated_at`) VALUES
(1, 1, 'Botble\\Ecommerce\\Models\\Product', 68, 'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)', NULL, 'products/17.jpg', 3, 121.00, 363.00, 0.00, 0.00, 363.00, '[]', '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(2, 2, 'Botble\\Ecommerce\\Models\\Product', 75, 'Perdue Simply Smart Organics Gluten Free', NULL, 'products/20-1.jpg', 3, 127.00, 381.00, 0.00, 0.00, 381.00, '[]', '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(3, 3, 'Botble\\Ecommerce\\Models\\Product', 84, 'Signature Wood-Fired Mushroom and Caramelized', NULL, 'products/24.jpg', 3, 125.00, 375.00, 0.00, 0.00, 375.00, '[]', '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(4, 4, 'Botble\\Ecommerce\\Models\\Product', 26, 'Seeds of Change Organic Quinoe (Digital)', NULL, 'products/1-1.jpg', 2, 433.00, 866.00, 0.00, 0.00, 866.00, '[]', '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(5, 5, 'Botble\\Ecommerce\\Models\\Product', 31, 'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn', NULL, 'products/3.jpg', 2, 413.00, 826.00, 0.00, 0.00, 826.00, '[]', '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(6, 5, 'Botble\\Ecommerce\\Models\\Product', 51, 'Nestle Original Coffee-Mate Coffee Creamer', NULL, 'products/11-1.jpg', 2, 130.00, 260.00, 0.00, 0.00, 260.00, '[]', '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(7, 5, 'Botble\\Ecommerce\\Models\\Product', 83, 'Colorful Banana', NULL, 'products/23.jpg', 2, 124.00, 248.00, 0.00, 0.00, 248.00, '[]', '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(8, 6, 'Botble\\Ecommerce\\Models\\Product', 55, 'Naturally Flavored Cinnamon Vanilla Light Roast Coffee', NULL, 'products/12-1.jpg', 1, 128.00, 128.00, 0.00, 0.00, 128.00, '[]', '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(9, 6, 'Botble\\Ecommerce\\Models\\Product', 56, 'Naturally Flavored Cinnamon Vanilla Light Roast Coffee', NULL, 'products/12.jpg', 1, 128.00, 128.00, 0.00, 0.00, 128.00, '[]', '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(10, 7, 'Botble\\Ecommerce\\Models\\Product', 27, 'Seeds of Change Organic Quinoe (Digital)', NULL, 'products/1.jpg', 2, 433.00, 866.00, 0.00, 0.00, 866.00, '[]', '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(11, 8, 'Botble\\Ecommerce\\Models\\Product', 43, 'Encore Seafoods Stuffed Alaskan', NULL, 'products/8.jpg', 2, 113.00, 226.00, 0.00, 0.00, 226.00, '[]', '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(12, 9, 'Botble\\Ecommerce\\Models\\Product', 50, 'Nestle Original Coffee-Mate Coffee Creamer', NULL, 'products/11.jpg', 2, 130.00, 260.00, 0.00, 0.00, 260.00, '[]', '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(13, 10, 'Botble\\Ecommerce\\Models\\Product', 67, 'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)', NULL, 'products/17-1.jpg', 1, 121.00, 121.00, 0.00, 0.00, 121.00, '[]', '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(14, 11, 'Botble\\Ecommerce\\Models\\Product', 46, 'Gorton’s Beer Battered Fish Fillets (Digital)', NULL, 'products/9-1.jpg', 2, 113.00, 226.00, 0.00, 0.00, 226.00, '[]', '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(15, 12, 'Botble\\Ecommerce\\Models\\Product', 58, 'Naturally Flavored Cinnamon Vanilla Light Roast Coffee', NULL, 'products/12.jpg', 1, 128.00, 128.00, 0.00, 0.00, 128.00, '[]', '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(16, 12, 'Botble\\Ecommerce\\Models\\Product', 61, 'Organic Frozen Triple Berry Blend', NULL, 'products/14.jpg', 1, 118.00, 118.00, 0.00, 0.00, 118.00, '[]', '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(17, 13, 'Botble\\Ecommerce\\Models\\Product', 40, 'Chobani Complete Vanilla Greek', NULL, 'products/6.jpg', 1, 53.00, 53.00, 0.00, 0.00, 53.00, '[]', '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(18, 14, 'Botble\\Ecommerce\\Models\\Product', 41, 'Canada Dry Ginger Ale – 2 L Bottle', NULL, 'products/7.jpg', 3, 121.00, 363.00, 0.00, 0.00, 363.00, '[]', '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(19, 14, 'Botble\\Ecommerce\\Models\\Product', 42, 'Canada Dry Ginger Ale – 2 L Bottle', NULL, 'products/7-1.jpg', 1, 121.00, 121.00, 0.00, 0.00, 121.00, '[]', '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(20, 14, 'Botble\\Ecommerce\\Models\\Product', 73, 'Simply Lemonade with Raspberry Juice', NULL, 'products/19.jpg', 3, 116.00, 348.00, 0.00, 0.00, 348.00, '[]', '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(21, 15, 'Botble\\Ecommerce\\Models\\Product', 42, 'Canada Dry Ginger Ale – 2 L Bottle', NULL, 'products/7-1.jpg', 1, 121.00, 121.00, 0.00, 0.00, 121.00, '[]', '2023-05-02 21:08:17', '2023-05-02 21:08:17'),
(22, 15, 'Botble\\Ecommerce\\Models\\Product', 53, 'Nestle Original Coffee-Mate Coffee Creamer', NULL, 'products/11.jpg', 3, 130.00, 390.00, 0.00, 0.00, 390.00, '[]', '2023-05-02 21:08:17', '2023-05-02 21:08:17'),
(23, 16, 'Botble\\Ecommerce\\Models\\Product', 74, 'Perdue Simply Smart Organics Gluten Free', NULL, 'products/20.jpg', 1, 127.00, 127.00, 0.00, 0.00, 127.00, '[]', '2023-05-02 21:08:17', '2023-05-02 21:08:17'),
(24, 16, 'Botble\\Ecommerce\\Models\\Product', 75, 'Perdue Simply Smart Organics Gluten Free', NULL, 'products/20-1.jpg', 3, 127.00, 381.00, 0.00, 0.00, 381.00, '[]', '2023-05-02 21:08:17', '2023-05-02 21:08:17'),
(25, 17, 'Botble\\Ecommerce\\Models\\Product', 31, 'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn', NULL, 'products/3.jpg', 2, 413.00, 826.00, 0.00, 0.00, 826.00, '[]', '2023-05-02 21:08:17', '2023-05-02 21:08:17'),
(26, 18, 'Botble\\Ecommerce\\Models\\Product', 35, 'Foster Farms Takeout Crispy Classic', NULL, 'products/4.jpg', 3, 81.00, 243.00, 0.00, 0.00, 243.00, '[]', '2023-05-02 21:08:17', '2023-05-02 21:08:17'),
(27, 19, 'Botble\\Ecommerce\\Models\\Product', 40, 'Chobani Complete Vanilla Greek', NULL, 'products/6.jpg', 1, 53.00, 53.00, 0.00, 0.00, 53.00, '[]', '2023-05-02 21:08:17', '2023-05-02 21:08:17'),
(28, 20, 'Botble\\Ecommerce\\Models\\Product', 50, 'Nestle Original Coffee-Mate Coffee Creamer', NULL, 'products/11.jpg', 3, 130.00, 390.00, 0.00, 0.00, 390.00, '[]', '2023-05-02 21:08:17', '2023-05-02 21:08:17'),
(29, 20, 'Botble\\Ecommerce\\Models\\Product', 83, 'Colorful Banana', NULL, 'products/23.jpg', 2, 124.00, 248.00, 0.00, 0.00, 248.00, '[]', '2023-05-02 21:08:17', '2023-05-02 21:08:17'),
(30, 21, 'Botble\\Ecommerce\\Models\\Product', 86, 'Signature Wood-Fired Mushroom and Caramelized', NULL, 'products/24.jpg', 3, 125.00, 375.00, 0.00, 0.00, 375.00, '[]', '2023-05-02 21:08:17', '2023-05-02 21:08:17'),
(31, 22, 'Botble\\Ecommerce\\Models\\Product', 52, 'Nestle Original Coffee-Mate Coffee Creamer', NULL, 'products/11.jpg', 3, 130.00, 390.00, 0.00, 0.00, 390.00, '[]', '2023-05-02 21:08:17', '2023-05-02 21:08:17'),
(32, 22, 'Botble\\Ecommerce\\Models\\Product', 81, 'Colorful Banana', NULL, 'products/23.jpg', 3, 124.00, 372.00, 0.00, 0.00, 372.00, '[]', '2023-05-02 21:08:17', '2023-05-02 21:08:17'),
(33, 23, 'Botble\\Ecommerce\\Models\\Product', 78, 'Chen Watermelon (Digital)', NULL, 'products/21.jpg', 3, 123.00, 369.00, 0.00, 0.00, 369.00, '[]', '2023-05-02 21:08:17', '2023-05-02 21:08:17'),
(34, 24, 'Botble\\Ecommerce\\Models\\Product', 34, 'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn', NULL, 'products/3.jpg', 2, 413.00, 826.00, 0.00, 0.00, 826.00, '[]', '2023-05-02 21:08:17', '2023-05-02 21:08:17'),
(35, 24, 'Botble\\Ecommerce\\Models\\Product', 53, 'Nestle Original Coffee-Mate Coffee Creamer', NULL, 'products/11.jpg', 3, 130.00, 390.00, 0.00, 0.00, 390.00, '[]', '2023-05-02 21:08:17', '2023-05-02 21:08:17'),
(36, 25, 'Botble\\Ecommerce\\Models\\Product', 38, 'Blue Diamond Almonds Lightly (Digital)', NULL, 'products/5-1.jpg', 2, 40.00, 80.00, 0.00, 0.00, 80.00, '[]', '2023-05-02 21:08:17', '2023-05-02 21:08:17'),
(37, 26, 'Botble\\Ecommerce\\Models\\Product', 68, 'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)', NULL, 'products/17.jpg', 2, 121.00, 242.00, 0.00, 0.00, 242.00, '[]', '2023-05-02 21:08:17', '2023-05-02 21:08:17'),
(38, 27, 'Botble\\Ecommerce\\Models\\Product', 71, 'Simply Lemonade with Raspberry Juice', NULL, 'products/19.jpg', 2, 116.00, 232.00, 0.00, 0.00, 232.00, '[]', '2023-05-02 21:08:17', '2023-05-02 21:08:17'),
(39, 27, 'Botble\\Ecommerce\\Models\\Product', 80, 'Organic Cage-Free Grade A Large Brown Eggs', NULL, 'products/22-1.jpg', 3, 128.00, 384.00, 0.00, 0.00, 384.00, '[]', '2023-05-02 21:08:17', '2023-05-02 21:08:17'),
(40, 28, 'Botble\\Ecommerce\\Models\\Product', 28, 'All Natural Italian-Style Chicken Meatballs', NULL, 'products/2.jpg', 1, 367.00, 367.00, 0.00, 0.00, 367.00, '[]', '2023-05-02 21:08:17', '2023-05-02 21:08:17'),
(41, 28, 'Botble\\Ecommerce\\Models\\Product', 30, 'All Natural Italian-Style Chicken Meatballs', NULL, 'products/2.jpg', 2, 367.00, 734.00, 0.00, 0.00, 734.00, '[]', '2023-05-02 21:08:17', '2023-05-02 21:08:17'),
(42, 29, 'Botble\\Ecommerce\\Models\\Product', 41, 'Canada Dry Ginger Ale – 2 L Bottle', NULL, 'products/7.jpg', 2, 121.00, 242.00, 0.00, 0.00, 242.00, '[]', '2023-05-02 21:08:17', '2023-05-02 21:08:17'),
(43, 30, 'Botble\\Ecommerce\\Models\\Product', 50, 'Nestle Original Coffee-Mate Coffee Creamer', NULL, 'products/11.jpg', 3, 130.00, 390.00, 0.00, 0.00, 390.00, '[]', '2023-05-02 21:08:18', '2023-05-02 21:08:18'),
(44, 30, 'Botble\\Ecommerce\\Models\\Product', 51, 'Nestle Original Coffee-Mate Coffee Creamer', NULL, 'products/11-1.jpg', 3, 130.00, 390.00, 0.00, 0.00, 390.00, '[]', '2023-05-02 21:08:18', '2023-05-02 21:08:18'),
(45, 30, 'Botble\\Ecommerce\\Models\\Product', 83, 'Colorful Banana', NULL, 'products/23.jpg', 2, 124.00, 248.00, 0.00, 0.00, 248.00, '[]', '2023-05-02 21:08:18', '2023-05-02 21:08:18'),
(46, 31, 'Botble\\Ecommerce\\Models\\Product', 57, 'Naturally Flavored Cinnamon Vanilla Light Roast Coffee', NULL, 'products/12.jpg', 1, 128.00, 128.00, 0.00, 0.00, 128.00, '[]', '2023-05-02 21:08:18', '2023-05-02 21:08:18'),
(47, 32, 'Botble\\Ecommerce\\Models\\Product', 57, 'Naturally Flavored Cinnamon Vanilla Light Roast Coffee', NULL, 'products/12.jpg', 2, 128.00, 256.00, 0.00, 0.00, 256.00, '[]', '2023-05-02 21:08:18', '2023-05-02 21:08:18'),
(48, 33, 'Botble\\Ecommerce\\Models\\Product', 59, 'Pepperidge Farm Farmhouse Hearty White Bread (Digital)', NULL, 'products/13.jpg', 1, 130.00, 130.00, 0.00, 0.00, 130.00, '[]', '2023-05-02 21:08:18', '2023-05-02 21:08:18'),
(49, 34, 'Botble\\Ecommerce\\Models\\Product', 41, 'Canada Dry Ginger Ale – 2 L Bottle', NULL, 'products/7.jpg', 1, 121.00, 121.00, 0.00, 0.00, 121.00, '[]', '2023-05-02 21:08:18', '2023-05-02 21:08:18'),
(50, 34, 'Botble\\Ecommerce\\Models\\Product', 72, 'Simply Lemonade with Raspberry Juice', NULL, 'products/19-1.jpg', 1, 116.00, 116.00, 0.00, 0.00, 116.00, '[]', '2023-05-02 21:08:18', '2023-05-02 21:08:18'),
(51, 35, 'Botble\\Ecommerce\\Models\\Product', 54, 'Naturally Flavored Cinnamon Vanilla Light Roast Coffee', NULL, 'products/12.jpg', 2, 128.00, 256.00, 0.00, 0.00, 256.00, '[]', '2023-05-02 21:08:18', '2023-05-02 21:08:18'),
(52, 36, 'Botble\\Ecommerce\\Models\\Product', 63, 'Oroweat Country Buttermilk Bread', NULL, 'products/15-1.jpg', 3, 112.00, 336.00, 0.00, 0.00, 336.00, '[]', '2023-05-02 21:08:18', '2023-05-02 21:08:18'),
(53, 37, 'Botble\\Ecommerce\\Models\\Product', 44, 'Encore Seafoods Stuffed Alaskan', NULL, 'products/8-1.jpg', 2, 113.00, 226.00, 0.00, 0.00, 226.00, '[]', '2023-05-02 21:08:18', '2023-05-02 21:08:18'),
(54, 38, 'Botble\\Ecommerce\\Models\\Product', 48, 'Haagen-Dazs Caramel Cone Ice Cream', NULL, 'products/10.jpg', 1, 364.00, 364.00, 0.00, 0.00, 364.00, '[]', '2023-05-02 21:08:18', '2023-05-02 21:08:18'),
(55, 39, 'Botble\\Ecommerce\\Models\\Product', 67, 'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)', NULL, 'products/17-1.jpg', 3, 121.00, 363.00, 0.00, 0.00, 363.00, '[]', '2023-05-02 21:08:18', '2023-05-02 21:08:18'),
(56, 40, 'Botble\\Ecommerce\\Models\\Product', 78, 'Chen Watermelon (Digital)', NULL, 'products/21.jpg', 1, 123.00, 123.00, 0.00, 0.00, 123.00, '[]', '2023-05-02 21:08:18', '2023-05-02 21:08:18'),
(57, 41, 'Botble\\Ecommerce\\Models\\Product', 25, 'Seeds of Change Organic Quinoe (Digital)', NULL, 'products/1.jpg', 3, 433.00, 1299.00, 0.00, 0.00, 1299.00, '[]', '2023-05-02 21:08:18', '2023-05-02 21:08:18'),
(58, 41, 'Botble\\Ecommerce\\Models\\Product', 68, 'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)', NULL, 'products/17.jpg', 3, 121.00, 363.00, 0.00, 0.00, 363.00, '[]', '2023-05-02 21:08:18', '2023-05-02 21:08:18'),
(59, 42, 'Botble\\Ecommerce\\Models\\Product', 35, 'Foster Farms Takeout Crispy Classic', NULL, 'products/4.jpg', 1, 81.00, 81.00, 0.00, 0.00, 81.00, '[]', '2023-05-02 21:08:18', '2023-05-02 21:08:18'),
(60, 43, 'Botble\\Ecommerce\\Models\\Product', 81, 'Colorful Banana', NULL, 'products/23.jpg', 3, 124.00, 372.00, 0.00, 0.00, 372.00, '[]', '2023-05-02 21:08:18', '2023-05-02 21:08:18'),
(61, 44, 'Botble\\Ecommerce\\Models\\Product', 31, 'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn', NULL, 'products/3.jpg', 3, 413.00, 1239.00, 0.00, 0.00, 1239.00, '[]', '2023-05-02 21:08:19', '2023-05-02 21:08:19'),
(62, 44, 'Botble\\Ecommerce\\Models\\Product', 32, 'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn', NULL, 'products/3-1.jpg', 2, 413.00, 826.00, 0.00, 0.00, 826.00, '[]', '2023-05-02 21:08:19', '2023-05-02 21:08:19'),
(63, 45, 'Botble\\Ecommerce\\Models\\Product', 45, 'Gorton’s Beer Battered Fish Fillets (Digital)', NULL, 'products/9.jpg', 3, 113.00, 339.00, 0.00, 0.00, 339.00, '[]', '2023-05-02 21:08:19', '2023-05-02 21:08:19'),
(64, 46, 'Botble\\Ecommerce\\Models\\Product', 75, 'Perdue Simply Smart Organics Gluten Free', NULL, 'products/20-1.jpg', 1, 127.00, 127.00, 0.00, 0.00, 127.00, '[]', '2023-05-02 21:08:19', '2023-05-02 21:08:19'),
(65, 47, 'Botble\\Ecommerce\\Models\\Product', 40, 'Chobani Complete Vanilla Greek', NULL, '960566440-ecom.webp', 1, 53.00, 53.00, 5.30, 0.00, 58.30, NULL, '2023-09-23 19:50:24', '2023-09-23 19:50:24'),
(66, 48, 'Botble\\Ecommerce\\Models\\Product', 31, 'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn', NULL, 'f23bfd63d6125cffa3a17f2579990b5ee1baf83ad4b2d9797e4f8f16b8bbd3c7.jpeg', 1, 413.00, 413.00, 41.30, 0.00, 454.30, NULL, '2023-09-26 17:19:52', '2023-09-26 17:19:52'),
(67, 49, 'Botble\\Ecommerce\\Models\\Product', 28, 'All Natural Italian-Style Chicken Meatballs', NULL, 'resize.webp', 1, 367.00, 367.00, 36.70, 0.00, 403.70, NULL, '2023-10-10 21:13:09', '2023-10-10 21:13:09'),
(68, 50, 'Botble\\Ecommerce\\Models\\Product', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', NULL, '21726742839.png', 2, 1450.00, 2900.00, 0.00, 0.00, 2900.00, NULL, '2024-09-20 11:00:34', '2024-09-20 11:00:34'),
(69, 51, 'Botble\\Ecommerce\\Models\\Product', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', NULL, '21726742839.png', 1, 1450.00, 1450.00, 0.00, 0.00, 1450.00, NULL, '2024-09-30 22:20:11', '2024-09-30 22:20:11'),
(70, 52, 'Botble\\Ecommerce\\Models\\Product', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', NULL, '21726742839.png', 1, 1450.00, 1450.00, 0.00, 0.00, 1450.00, NULL, '2024-10-10 06:17:37', '2024-10-10 06:17:37'),
(71, 53, 'Botble\\Ecommerce\\Models\\Product', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', NULL, '21726742839.png', 1, 1450.00, 1450.00, 0.00, 0.00, 1450.00, NULL, '2024-11-06 15:19:06', '2024-11-06 15:19:06'),
(72, 54, 'Botble\\Ecommerce\\Models\\Product', 88, 'Robiul  Islam Arzu', NULL, '298737170-435256305288617-5919111556804315091-n.png', 1, 10.00, 10.00, 0.00, 0.00, 10.00, NULL, '2024-11-06 15:19:07', '2024-11-06 15:19:07'),
(73, 55, 'Botble\\Ecommerce\\Models\\Product', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', NULL, '21726742839.png', 1, 1450.00, 1450.00, 0.00, 0.00, 1450.00, NULL, '2024-11-27 23:40:11', '2024-11-27 23:40:11');

-- --------------------------------------------------------

--
-- Table structure for table `ec_options`
--

CREATE TABLE `ec_options` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_options_translations`
--

CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_option_value`
--

CREATE TABLE `ec_option_value` (
  `option_id` bigint UNSIGNED NOT NULL COMMENT 'option id',
  `id` bigint UNSIGNED NOT NULL,
  `option_value` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_option_value_translations`
--

CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint UNSIGNED NOT NULL,
  `option_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_orders`
--

CREATE TABLE `ec_orders` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `shipping_option` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_orders`
--

INSERT INTO `ec_orders` (`id`, `code`, `user_id`, `shipping_option`, `shipping_method`, `status`, `amount`, `tax_amount`, `shipping_amount`, `description`, `coupon_code`, `discount_amount`, `sub_total`, `is_confirmed`, `discount_description`, `is_finished`, `completed_at`, `token`, `payment_id`, `created_at`, `updated_at`, `store_id`) VALUES
(47, '#10000047', 0, NULL, 'default', 'pending', 807.40, 73.40, 0.00, NULL, NULL, 0.00, 734.00, 0, NULL, 0, NULL, 'b939e437bbe9665482dbc7291937c097', NULL, '2023-06-02 01:07:17', '2023-06-02 01:07:17', 3),
(48, '#10000048', 0, NULL, 'default', 'pending', 78.41, 7.13, 0.00, NULL, NULL, 0.00, 71.28, 0, NULL, 0, NULL, '0075722e30be0359358b476fe4f74045', NULL, '2023-06-04 12:01:54', '2023-06-04 12:01:54', 4),
(49, '#10000049', 0, NULL, 'default', 'pending', 58.30, 5.30, 0.00, NULL, NULL, 0.00, 53.00, 0, NULL, 0, NULL, 'ab6a382b7f266f8e0f7023e18c4062bb', NULL, '2023-06-05 13:44:09', '2023-06-05 13:44:09', 5),
(50, '#10000050', 0, NULL, 'default', 'pending', 1201.20, 109.20, 0.00, NULL, NULL, 0.00, 1092.00, 0, NULL, 0, NULL, 'f5922b9f5bc5615b4cabe9d4547c6dc8', NULL, '2023-06-10 20:57:39', '2023-06-10 20:57:39', 1),
(51, '#10000051', 0, NULL, 'default', 'pending', 110.63, 10.06, 0.00, NULL, NULL, 0.00, 100.57, 0, NULL, 0, NULL, '20e11f7bdb8e5cd9d42b5eda572b7dc9', NULL, '2023-06-11 22:12:50', '2023-06-11 22:12:50', 5),
(52, '#10000052', 0, NULL, 'default', 'pending', 78.41, 7.13, 0.00, NULL, NULL, 0.00, 71.28, 0, NULL, 0, NULL, '85371f178ddbc4bb6036ab015352b27b', NULL, '2023-06-12 10:55:10', '2023-06-12 10:55:10', 4),
(53, '#10000053', 0, NULL, 'default', 'pending', 110.63, 10.06, 0.00, NULL, NULL, 0.00, 100.57, 0, NULL, 0, NULL, '8d792239506a92f97feed2af86a90c5d', NULL, '2023-06-21 09:46:12', '2023-06-21 09:46:12', 5),
(54, '#10000054', 0, NULL, 'default', 'pending', 78.41, 7.13, 0.00, NULL, NULL, 0.00, 71.28, 0, NULL, 0, NULL, '89fad0cbdf8916a614ec9491aafcaa40', NULL, '2023-06-29 04:20:26', '2023-06-29 04:20:26', 4),
(55, '#10000055', 0, NULL, 'default', 'pending', 403.70, 36.70, 0.00, NULL, NULL, 0.00, 367.00, 0, NULL, 0, NULL, 'a5487bc959e047a7628953550026a3a3', NULL, '2023-07-02 16:54:57', '2023-07-02 16:54:57', 3),
(56, '#10000056', 0, NULL, 'default', 'pending', 78.41, 7.13, 0.00, NULL, NULL, 0.00, 71.28, 0, NULL, 0, NULL, 'c38e547502e0e14651db05653276d0c2', NULL, '2023-07-28 01:19:04', '2023-07-28 01:19:04', 4),
(57, '#10000057', 0, NULL, 'default', 'pending', 403.70, 36.70, 0.00, NULL, NULL, 0.00, 367.00, 0, NULL, 0, NULL, 'd204785a276382dcf101f194bfacda60', NULL, '2023-08-04 17:39:08', '2023-08-04 17:39:08', 3),
(58, '#10000058', 0, NULL, 'default', 'pending', 78.41, 7.13, 0.00, NULL, NULL, 0.00, 71.28, 0, NULL, 0, NULL, 'ef2572ef31f9c64e70090a149d79b1db', NULL, '2023-08-09 06:36:06', '2023-08-09 06:36:06', 4),
(59, '#10000059', 0, NULL, 'default', 'pending', 908.60, 82.60, 0.00, NULL, NULL, 0.00, 826.00, 0, NULL, 0, NULL, '71a4b526e27996231a761b506bd27dc9', NULL, '2023-08-14 18:57:55', '2023-08-14 18:57:55', 1),
(60, '#10000060', 0, NULL, 'default', 'pending', 78.41, 7.13, 0.00, NULL, NULL, 0.00, 71.28, 0, NULL, 0, NULL, 'e90a0e0795bf223659f71a01d1242bf9', NULL, '2023-08-15 04:52:40', '2023-08-15 04:52:40', 4),
(61, '#10000061', 0, NULL, 'default', 'pending', 259.60, 23.60, 0.00, NULL, NULL, 0.00, 236.00, 0, NULL, 0, NULL, 'ab0975f0be81a3f9f27ad08fd1e6e792', NULL, '2023-08-25 00:15:04', '2023-08-25 00:15:04', 2),
(62, '#10000062', 0, NULL, 'default', 'pending', 156.82, 14.26, 0.00, NULL, NULL, 0.00, 142.56, 0, NULL, 0, NULL, 'e93a62e77338220f36b1f7d853b9eaf7', NULL, '2023-08-27 03:16:00', '2023-08-27 03:16:13', 4),
(63, '#10000063', 0, NULL, 'default', 'pending', 116.60, 10.60, 0.00, NULL, NULL, 0.00, 106.00, 0, NULL, 0, NULL, '9ecf310a7a94683172ee4027647b0ce7', NULL, '2023-08-27 06:08:33', '2023-08-27 06:08:33', 5),
(64, '#10000064', 0, NULL, 'default', 'pending', 110.63, 10.06, 0.00, NULL, NULL, 0.00, 100.57, 0, NULL, 0, NULL, 'bf6475e7c99a77562af5cb292573fcba', NULL, '2023-08-30 18:29:23', '2023-08-30 18:29:23', 5),
(65, '#10000065', 0, NULL, 'default', 'pending', 129.80, 11.80, 0.00, NULL, NULL, 0.00, 118.00, 0, NULL, 0, NULL, 'e8b5d7326b331e009646833a97fa970d', NULL, '2023-09-03 23:43:22', '2023-09-03 23:43:22', 2),
(66, '#10000066', 0, NULL, 'default', 'pending', 77.66, 7.06, 0.00, NULL, NULL, 0.00, 70.60, 0, NULL, 0, NULL, 'ffb6ed9d451d143b1c0d2c87100735b7', NULL, '2023-09-09 17:09:48', '2023-09-09 17:09:48', 6),
(69, '#10000069', 0, '1', 'default', 'pending', 403.70, 36.70, 0.00, NULL, NULL, 0.00, 367.00, 0, NULL, 0, NULL, '1eb59f84f280b187ff4e2ea624cc6426', NULL, '2023-09-26 17:22:22', '2023-09-26 17:22:54', 3),
(70, '#10000070', 0, NULL, 'default', 'pending', 58.30, 5.30, 0.00, NULL, NULL, 0.00, 53.00, 0, NULL, 0, NULL, '97d8709e1154c7333e43e1210e00b88b', NULL, '2023-09-27 16:37:08', '2023-09-27 16:37:08', 5),
(71, '#10000071', 0, NULL, 'default', 'pending', 403.70, 36.70, 0.00, NULL, NULL, 0.00, 367.00, 0, NULL, 0, NULL, 'a60e694b86022c60aa79d9c724451e72', NULL, '2023-10-02 04:14:25', '2023-10-02 04:14:25', 3),
(73, '#10000073', 0, NULL, 'default', 'pending', 403.70, 36.70, 0.00, NULL, NULL, 0.00, 367.00, 0, NULL, 0, NULL, 'd4aef484e859ce75a9f6917303cb3847', NULL, '2023-10-18 18:41:07', '2023-10-18 18:41:07', 3),
(74, '#10000074', 0, NULL, 'default', 'pending', 403.70, 36.70, 0.00, NULL, NULL, 0.00, 367.00, 0, NULL, 0, NULL, '7eccab238bfdff34c3265cf1309d15f7', NULL, '2023-10-20 12:10:00', '2023-10-20 12:10:00', 3),
(75, '#10000075', 0, NULL, 'default', 'pending', 403.70, 36.70, 0.00, NULL, NULL, 0.00, 367.00, 0, NULL, 0, NULL, '3e172c35ae09a0e9364f1ce4cb126262', NULL, '2023-10-21 12:37:10', '2023-10-21 12:37:10', 3),
(76, '#10000076', 0, NULL, 'default', 'pending', 99.97, 9.09, 0.00, NULL, NULL, 0.00, 90.88, 0, NULL, 0, NULL, '3338dbb3c7d7793b756514154a843e66', NULL, '2023-11-15 11:38:15', '2023-11-15 11:38:15', 2),
(77, '#10000077', 0, NULL, 'default', 'pending', 156.82, 14.26, 0.00, NULL, NULL, 0.00, 142.56, 0, NULL, 0, NULL, '2ce859de7ebc04eec934b01910d9129e', NULL, '2023-11-17 09:29:49', '2023-11-17 09:29:49', 4),
(78, '#10000078', 0, '1', 'default', 'pending', 2900.00, 0.00, 0.00, NULL, NULL, 0.00, 2900.00, 0, NULL, 1, NULL, 'd0ca2e27002c84070125fd9ee96ee29b', 54, '2024-09-20 10:59:41', '2024-09-20 11:00:37', 2),
(79, '#10000079', 0, NULL, 'default', 'pending', 1450.00, 0.00, 0.00, NULL, NULL, 0.00, 1450.00, 0, NULL, 0, NULL, '38626a7f6e0c2b6d15cfb11a6b596423', NULL, '2024-09-20 20:47:15', '2024-09-20 20:47:15', 2),
(80, '#10000080', 0, NULL, 'default', 'pending', 2900.00, 0.00, 0.00, NULL, NULL, 0.00, 2900.00, 0, NULL, 0, NULL, '420b35865530a1e5904302e6dc88196f', NULL, '2024-09-20 22:44:44', '2024-09-20 22:44:44', 2),
(81, '#10000081', 0, NULL, 'default', 'pending', 1450.00, 0.00, 0.00, NULL, NULL, 0.00, 1450.00, 0, NULL, 0, NULL, '81512d7e936b902acc32647765214505', NULL, '2024-09-26 10:54:29', '2024-09-26 10:54:29', 2),
(82, '#10000082', 0, '1', 'default', 'pending', 1450.00, 0.00, 0.00, NULL, NULL, 0.00, 1450.00, 0, NULL, 1, NULL, '09c84eccf59b93f8b3f67312f049c98a', 55, '2024-09-30 22:19:46', '2024-09-30 22:20:15', 2),
(83, '#10000083', 0, NULL, 'default', 'pending', 1450.00, 0.00, 0.00, NULL, NULL, 0.00, 1450.00, 0, NULL, 0, NULL, '2645a793377146df09981ae8df4f1599', NULL, '2024-10-01 23:02:32', '2024-10-01 23:02:32', 2),
(84, '#10000084', 0, '1', 'default', 'pending', 1450.00, 0.00, 0.00, NULL, NULL, 0.00, 1450.00, 0, NULL, 1, NULL, '9ccb5993637e3d5699c2c4f525e1036b', 56, '2024-10-10 06:16:51', '2024-10-10 06:17:41', 2),
(85, '#10000085', 0, NULL, 'default', 'pending', 1450.00, 0.00, 0.00, NULL, NULL, 0.00, 1450.00, 0, NULL, 0, NULL, '5cb1bac85e6de080f63017ee3a7f4ecc', NULL, '2024-10-11 19:08:48', '2024-10-11 19:08:48', 2),
(86, '#10000086', 0, NULL, 'default', 'pending', 4350.00, 0.00, 0.00, NULL, NULL, 0.00, 4350.00, 0, NULL, 0, NULL, 'bf3cfb91fe98b84cbe9900ceb0fb29c8', NULL, '2024-10-12 14:28:48', '2024-10-12 14:53:37', 2),
(87, '#10000087', 16, '1', 'default', 'pending', 1450.00, 0.00, 0.00, NULL, NULL, 0.00, 1450.00, 0, NULL, 1, NULL, '9175a22aa2a008575495937eb138f567', 57, '2024-11-06 15:04:36', '2024-11-06 15:19:07', 2),
(88, '#10000088', 16, NULL, '', 'pending', 10.00, 0.00, 0.00, NULL, NULL, 0.00, 10.00, 0, NULL, 1, NULL, '9175a22aa2a008575495937eb138f567', 58, '2024-11-06 15:18:04', '2024-11-06 15:19:07', NULL),
(89, '#10000089', 0, NULL, 'default', 'pending', 2900.00, 0.00, 0.00, NULL, NULL, 0.00, 2900.00, 0, NULL, 0, NULL, '1171b29eec3c3ccefe52100fd0ddafdc', NULL, '2024-11-13 13:29:41', '2024-11-13 13:29:41', 2),
(90, '#10000090', 0, NULL, 'default', 'pending', 1450.00, 0.00, 0.00, NULL, NULL, 0.00, 1450.00, 0, NULL, 0, NULL, 'e180c978c1e8ab2d4fca1419e13d8e96', NULL, '2024-11-20 16:03:12', '2024-11-20 16:03:12', 2),
(91, '#10000091', 0, NULL, 'default', 'pending', 1450.00, 0.00, 0.00, NULL, NULL, 0.00, 1450.00, 0, NULL, 0, NULL, 'b44839a3873f28cd314ae75179ef00eb', NULL, '2024-11-20 20:05:09', '2024-11-20 20:05:09', 2),
(92, '#10000092', 0, NULL, 'default', 'pending', 1450.00, 0.00, 0.00, NULL, NULL, 0.00, 1450.00, 0, NULL, 0, NULL, '919ad4fcf4d3f1dc65e9fbe94d9affdc', NULL, '2024-11-21 11:37:13', '2024-11-21 11:37:13', 2),
(93, '#10000093', 0, NULL, 'default', 'pending', 1450.00, 0.00, 0.00, NULL, NULL, 0.00, 1450.00, 0, NULL, 0, NULL, '6ffa42b0d2467c48f7b3b6bd53ca0ebd', NULL, '2024-11-23 17:15:51', '2024-11-23 17:15:51', 2),
(94, '#10000094', 0, '1', 'default', 'pending', 1450.00, 0.00, 0.00, NULL, NULL, 0.00, 1450.00, 0, NULL, 1, NULL, '039579c5df596498c508ea74d36e1331', 60, '2024-11-27 23:38:51', '2024-11-27 23:40:13', 2),
(95, '#10000095', 0, NULL, 'default', 'pending', 1450.00, 0.00, 0.00, NULL, NULL, 0.00, 1450.00, 0, NULL, 0, NULL, '4156238d3cb9650b050d9be2cd602bd7', NULL, '2024-11-28 08:25:52', '2024-11-28 08:25:52', 2),
(96, '#10000096', 0, NULL, 'default', 'pending', 1450.00, 0.00, 0.00, NULL, NULL, 0.00, 1450.00, 0, NULL, 0, NULL, '527692c26258531c36fa41625ac88841', NULL, '2024-11-28 19:39:59', '2024-11-28 19:39:59', 2),
(97, '#10000097', 0, NULL, 'default', 'pending', 2900.00, 0.00, 0.00, NULL, NULL, 0.00, 2900.00, 0, NULL, 0, NULL, '04128edda96bbdc51ad050f5507348e7', NULL, '2024-11-28 19:43:39', '2024-11-28 19:43:39', 2),
(98, '#10000098', 0, NULL, 'default', 'pending', 1450.00, 0.00, 0.00, NULL, NULL, 0.00, 1450.00, 0, NULL, 0, NULL, '8968c80ee00deddfdd8edc777c7bd816', NULL, '2024-11-28 22:19:09', '2024-11-28 22:19:09', 2),
(99, '#10000099', 0, NULL, 'default', 'pending', 1450.00, 0.00, 0.00, NULL, NULL, 0.00, 1450.00, 0, NULL, 0, NULL, '75027de58c845853e4123fe096a076c9', NULL, '2024-11-29 18:33:06', '2024-11-29 18:33:06', 2),
(100, '#10000100', 0, NULL, 'default', 'pending', 2900.00, 0.00, 0.00, NULL, NULL, 0.00, 2900.00, 0, NULL, 0, NULL, '8a04134ec3dedd1c314305842fc36e68', NULL, '2024-11-29 23:57:59', '2024-11-29 23:57:59', 2),
(101, '#10000101', 0, NULL, 'default', 'pending', 2900.00, 0.00, 0.00, NULL, NULL, 0.00, 2900.00, 0, NULL, 0, NULL, 'e1ec108d4fda47ce33038575537fd38f', NULL, '2024-11-30 04:20:36', '2024-11-30 04:20:36', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_addresses`
--

CREATE TABLE `ec_order_addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_addresses`
--

INSERT INTO `ec_order_addresses` (`id`, `name`, `phone`, `email`, `country`, `state`, `city`, `address`, `order_id`, `zip_code`, `type`) VALUES
(47, 'RAJ AHMED', '+8801674297522', 'rajahmed249@gmail.com', 'BD', 'Dhaka', 'Dhaka', 'Begum Rokeya Ave', 51, NULL, 'shipping_address'),
(52, 'mehedi hasan', '01747902939', 'kidarkarit@gmail.com', 'BD', 'tangail', 'tangail', 'Tangail shodor', 69, NULL, 'shipping_address'),
(54, 'MD Khal', '01885555555', 'khaleditsolution@gmail.com', 'BD', 'Dhaka', 'Dhaka', 'hariatpur , Dhaka', 78, NULL, 'shipping_address'),
(55, 'HOSSAIN AHAMED', '01905057193', 'sarifesuport@gmail.com', 'BD', 'Dhaka', 'DHAKA', 'SUVESTU NAZAR VALLY', 82, NULL, 'shipping_address'),
(56, 'Sjsbbb', '0784555169', 'admmj@gmana.fkfn', 'BD', 'Isjskmk', 'Kssnbv', 'Lsns', 84, NULL, 'shipping_address'),
(57, 'Robiul  Islam Arzu', '12345621421', 'arzu13@gmail.com', 'BD', 'sandwip', 'Chittagong', 'Maitbhanga, sandwip,chittagong', 87, NULL, 'shipping_address'),
(58, 'Boost &amp; Ads Campaign Specialist', '01788194094', 'admin@sumaiyamartllc.xyz', 'BD', 'SD', 'Narayanganj, Dhaka Division, Bangladesh', '240 President Rd, Narayanganj 1400', 94, NULL, 'shipping_address');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_histories`
--

CREATE TABLE `ec_order_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `extras` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_histories`
--

INSERT INTO `ec_order_histories` (`id`, `action`, `description`, `user_id`, `order_id`, `extras`, `created_at`, `updated_at`) VALUES
(224, 'create_order_from_payment_page', 'Order is created from checkout page', NULL, 69, NULL, '2023-09-26 17:22:36', '2023-09-26 17:22:36'),
(226, 'create_order_from_payment_page', 'Order is created from checkout page', NULL, 69, NULL, '2023-09-26 17:22:54', '2023-09-26 17:22:54'),
(229, 'create_order_from_payment_page', 'Order is created from checkout page', NULL, 78, NULL, '2024-09-20 11:00:34', '2024-09-20 11:00:34'),
(230, 'create_order', 'New order #10000078 from MD Khal', NULL, 78, NULL, '2024-09-20 11:00:39', '2024-09-20 11:00:39'),
(231, 'create_order_from_payment_page', 'Order is created from checkout page', NULL, 82, NULL, '2024-09-30 22:20:08', '2024-09-30 22:20:08'),
(232, 'create_order', 'New order #10000082 from HOSSAIN AHAMED', NULL, 82, NULL, '2024-09-30 22:20:17', '2024-09-30 22:20:17'),
(233, 'create_order_from_payment_page', 'Order is created from checkout page', NULL, 84, NULL, '2024-10-10 06:17:37', '2024-10-10 06:17:37'),
(234, 'create_order', 'New order #10000084 from Sjsbbb', NULL, 84, NULL, '2024-10-10 06:17:43', '2024-10-10 06:17:43'),
(235, 'create_order_from_payment_page', 'Order is created from checkout page', NULL, 87, NULL, '2024-11-06 15:19:06', '2024-11-06 15:19:06'),
(236, 'create_order_from_payment_page', 'Order is created from checkout page', NULL, 88, NULL, '2024-11-06 15:19:06', '2024-11-06 15:19:06'),
(237, 'create_order', 'New order #10000087 from Robiul  Islam Arzu', NULL, 87, NULL, '2024-11-06 15:19:08', '2024-11-06 15:19:08'),
(238, 'create_order', 'New order #10000088 from Robiul  Islam Arzu', NULL, 88, NULL, '2024-11-06 15:19:08', '2024-11-06 15:19:08'),
(239, 'create_order_from_payment_page', 'Order is created from checkout page', NULL, 94, NULL, '2024-11-27 23:40:09', '2024-11-27 23:40:09'),
(240, 'create_order_from_payment_page', 'Order is created from checkout page', NULL, 94, NULL, '2024-11-27 23:40:12', '2024-11-27 23:40:12'),
(241, 'create_order', 'New order #10000094 from Boost &amp; Ads Campaign Specialist', NULL, 94, NULL, '2024-11-27 23:40:14', '2024-11-27 23:40:14'),
(242, 'create_order', 'New order #10000094 from Boost &amp; Ads Campaign Specialist', NULL, 94, NULL, '2024-11-27 23:40:14', '2024-11-27 23:40:14');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_product`
--

CREATE TABLE `ec_order_product` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `product_options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `product_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_product`
--

INSERT INTO `ec_order_product` (`id`, `order_id`, `qty`, `price`, `tax_amount`, `options`, `product_options`, `product_id`, `product_name`, `product_image`, `weight`, `restock_quantity`, `created_at`, `updated_at`, `product_type`, `times_downloaded`) VALUES
(65, 47, 2, 367.00, 36.70, '{\"image\":\"products\\/2.jpg\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 4KG)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-191-A0\",\"weight\":737}', '[]', 28, 'All Natural Italian-Style Chicken Meatballs', 'resize.webp', 1474.00, 0, '2023-06-02 01:07:17', '2023-06-02 01:07:17', 'physical', 0),
(66, 48, 1, 71.28, 7.13, '{\"image\":\"products\\/4.jpg\",\"attributes\":\"(Boxes: 1 Box, Weight: 3KG)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-161-A0\",\"weight\":634}', '[]', 35, 'Foster Farms Takeout Crispy Classic', '00075278996706-7zctudki1qcxvw-en-us-0-s500.jpg', 634.00, 0, '2023-06-04 12:01:54', '2023-06-04 12:01:54', 'physical', 0),
(67, 49, 1, 53.00, 5.30, '{\"image\":\"products\\/6.jpg\",\"attributes\":\"(Weight: 1KG, Boxes: 4 Boxes)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-153-A0\",\"weight\":622}', '[]', 40, 'Chobani Complete Vanilla Greek', '960566440-ecom.webp', 622.00, 0, '2023-06-05 13:44:09', '2023-06-05 13:44:09', 'physical', 0),
(68, 50, 3, 364.00, 36.40, '{\"image\":\"products\\/10.jpg\",\"attributes\":\"(Weight: 2KG, Boxes: 5 Boxes)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-154-A0\",\"weight\":565}', '[]', 48, 'Haagen-Dazs Caramel Cone Ice Cream', 'haagen-dazs-caramel-cone-ice-cream-pint-1500x1140.png', 1695.00, 0, '2023-06-10 20:57:39', '2023-06-10 20:57:39', 'physical', 0),
(69, 51, 1, 100.57, 10.06, '{\"image\":\"products\\/8.jpg\",\"attributes\":\"(Weight: 4KG, Boxes: 5 Boxes)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-119-A0\",\"weight\":572}', '[]', 43, 'Encore Seafoods Stuffed Alaskan', 'images-1.jpeg', 572.00, 0, '2023-06-11 22:12:50', '2023-06-11 22:12:50', 'physical', 0),
(70, 52, 1, 71.28, 7.13, '{\"image\":\"products\\/4.jpg\",\"attributes\":\"(Boxes: 1 Box, Weight: 3KG)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-161-A0\",\"weight\":634}', '[]', 35, 'Foster Farms Takeout Crispy Classic', '00075278996706-7zctudki1qcxvw-en-us-0-s500.jpg', 634.00, 0, '2023-06-12 10:55:10', '2023-06-12 10:55:10', 'physical', 0),
(71, 53, 1, 100.57, 10.06, '{\"image\":\"products\\/8.jpg\",\"attributes\":\"(Weight: 4KG, Boxes: 5 Boxes)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-119-A0\",\"weight\":572}', '[]', 43, 'Encore Seafoods Stuffed Alaskan', 'images-1.jpeg', 572.00, 0, '2023-06-21 09:46:12', '2023-06-21 09:46:12', 'physical', 0),
(72, 54, 1, 71.28, 7.13, '{\"image\":\"products\\/4.jpg\",\"attributes\":\"(Boxes: 1 Box, Weight: 3KG)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-161-A0\",\"weight\":634}', '[]', 35, 'Foster Farms Takeout Crispy Classic', '00075278996706-7zctudki1qcxvw-en-us-0-s500.jpg', 634.00, 0, '2023-06-29 04:20:26', '2023-06-29 04:20:26', 'physical', 0),
(73, 55, 1, 367.00, 36.70, '{\"image\":\"products\\/2.jpg\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 4KG)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-191-A0\",\"weight\":737}', '[]', 28, 'All Natural Italian-Style Chicken Meatballs', 'resize.webp', 737.00, 0, '2023-07-02 16:54:57', '2023-07-02 16:54:57', 'physical', 0),
(74, 56, 1, 71.28, 7.13, '{\"image\":\"products\\/4.jpg\",\"attributes\":\"(Boxes: 1 Box, Weight: 3KG)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-161-A0\",\"weight\":634}', '[]', 35, 'Foster Farms Takeout Crispy Classic', '00075278996706-7zctudki1qcxvw-en-us-0-s500.jpg', 634.00, 0, '2023-07-28 01:19:04', '2023-07-28 01:19:04', 'physical', 0),
(75, 57, 1, 367.00, 36.70, '{\"image\":\"products\\/2.jpg\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 4KG)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-191-A0\",\"weight\":737}', '[]', 28, 'All Natural Italian-Style Chicken Meatballs', 'resize.webp', 737.00, 0, '2023-08-04 17:39:08', '2023-08-04 17:39:08', 'physical', 0),
(76, 58, 1, 71.28, 7.13, '{\"image\":\"products\\/4.jpg\",\"attributes\":\"(Boxes: 1 Box, Weight: 3KG)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-161-A0\",\"weight\":634}', '[]', 35, 'Foster Farms Takeout Crispy Classic', '00075278996706-7zctudki1qcxvw-en-us-0-s500.jpg', 634.00, 0, '2023-08-09 06:36:06', '2023-08-09 06:36:06', 'physical', 0),
(77, 59, 2, 413.00, 41.30, '{\"image\":\"flash-sales\\/f23bfd63d6125cffa3a17f2579990b5ee1baf83ad4b2d9797e4f8f16b8bbd3c7.jpeg\",\"attributes\":\"(Weight: 1KG, Boxes: 3 Boxes)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-191-A0\",\"weight\":727}', '[]', 31, 'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn', 'f23bfd63d6125cffa3a17f2579990b5ee1baf83ad4b2d9797e4f8f16b8bbd3c7.jpeg', 1454.00, 0, '2023-08-14 18:57:55', '2023-08-14 18:57:55', 'physical', 0),
(78, 60, 1, 71.28, 7.13, '{\"image\":\"products\\/4.jpg\",\"attributes\":\"(Boxes: 1 Box, Weight: 3KG)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-161-A0\",\"weight\":634}', '[]', 35, 'Foster Farms Takeout Crispy Classic', '00075278996706-7zctudki1qcxvw-en-us-0-s500.jpg', 634.00, 0, '2023-08-15 04:52:40', '2023-08-15 04:52:40', 'physical', 0),
(79, 61, 2, 118.00, 11.80, '{\"image\":\"products\\/14.jpg\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-184-A0\",\"weight\":522}', '[]', 61, 'Organic Frozen Triple Berry Blend', 'guest-8ea6b3ca-f4d9-4460-a04a-785d669235d5.jpeg', 1044.00, 0, '2023-08-25 00:15:04', '2023-08-25 00:15:04', 'physical', 0),
(80, 62, 2, 71.28, 7.13, '{\"image\":\"products\\/4.jpg\",\"attributes\":\"(Boxes: 1 Box, Weight: 3KG)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-161-A0\",\"weight\":634}', '[]', 35, 'Foster Farms Takeout Crispy Classic', '00075278996706-7zctudki1qcxvw-en-us-0-s500.jpg', 1268.00, 0, '2023-08-27 03:16:00', '2023-08-27 03:16:13', 'physical', 0),
(81, 63, 2, 53.00, 5.30, '{\"image\":\"products\\/6.jpg\",\"attributes\":\"(Weight: 1KG, Boxes: 4 Boxes)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-153-A0\",\"weight\":622}', '[]', 40, 'Chobani Complete Vanilla Greek', '960566440-ecom.webp', 1244.00, 0, '2023-08-27 06:08:33', '2023-08-27 06:08:33', 'physical', 0),
(82, 64, 1, 100.57, 10.06, '{\"image\":\"products\\/8.jpg\",\"attributes\":\"(Weight: 4KG, Boxes: 5 Boxes)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-119-A0\",\"weight\":572}', '[]', 43, 'Encore Seafoods Stuffed Alaskan', 'images-1.jpeg', 572.00, 0, '2023-08-30 18:29:23', '2023-08-30 18:29:23', 'physical', 0),
(83, 65, 1, 118.00, 11.80, '{\"image\":\"products\\/14.jpg\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-184-A0\",\"weight\":522}', '[]', 61, 'Organic Frozen Triple Berry Blend', 'guest-8ea6b3ca-f4d9-4460-a04a-785d669235d5.jpeg', 522.00, 0, '2023-09-03 23:43:22', '2023-09-03 23:43:22', 'physical', 0),
(84, 66, 1, 70.60, 7.06, '{\"image\":\"products\\/16.jpg\",\"attributes\":\"(Weight: 3KG, Boxes: 5 Boxes)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-105-A0\",\"weight\":614}', '[]', 65, 'Foster Farms Takeout Crispy Classic Buffalo Wings', 'foster-farms-wings.png', 614.00, 0, '2023-09-09 17:09:48', '2023-09-09 17:09:48', 'physical', 0),
(88, 69, 1, 367.00, 36.70, '{\"image\":\"products\\/2.jpg\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 4KG)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-191-A0\",\"weight\":737}', '[]', 28, 'All Natural Italian-Style Chicken Meatballs', 'resize.webp', 737.00, 0, '2023-09-26 17:22:22', '2023-09-26 17:22:22', 'physical', 0),
(89, 70, 1, 53.00, 5.30, '{\"image\":\"products\\/6.jpg\",\"attributes\":\"(Weight: 1KG, Boxes: 4 Boxes)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-153-A0\",\"weight\":622}', '[]', 40, 'Chobani Complete Vanilla Greek', '960566440-ecom.webp', 622.00, 0, '2023-09-27 16:37:08', '2023-09-27 16:37:08', 'physical', 0),
(90, 71, 1, 367.00, 36.70, '{\"image\":\"products\\/2.jpg\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 4KG)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-191-A0\",\"weight\":737}', '[]', 28, 'All Natural Italian-Style Chicken Meatballs', 'resize.webp', 737.00, 0, '2023-10-02 04:14:25', '2023-10-02 04:14:25', 'physical', 0),
(92, 73, 1, 367.00, 36.70, '{\"image\":\"products\\/2.jpg\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 4KG)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-191-A0\",\"weight\":737}', '[]', 28, 'All Natural Italian-Style Chicken Meatballs', 'resize.webp', 737.00, 0, '2023-10-18 18:41:07', '2023-10-18 18:41:07', 'physical', 0),
(93, 74, 1, 367.00, 36.70, '{\"image\":\"products\\/2.jpg\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 4KG)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-191-A0\",\"weight\":737}', '[]', 28, 'All Natural Italian-Style Chicken Meatballs', 'resize.webp', 737.00, 0, '2023-10-20 12:10:00', '2023-10-20 12:10:00', 'physical', 0),
(94, 75, 1, 367.00, 36.70, '{\"image\":\"products\\/2.jpg\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 4KG)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-191-A0\",\"weight\":737}', '[]', 28, 'All Natural Italian-Style Chicken Meatballs', 'resize.webp', 737.00, 0, '2023-10-21 12:37:10', '2023-10-21 12:37:10', 'physical', 0),
(95, 76, 1, 90.88, 9.09, '{\"image\":\"products\\/12.jpg\",\"attributes\":\"(Weight: 1KG, Boxes: 2 Boxes)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-181-A0\",\"weight\":681}', '[]', 54, 'Naturally Flavored Cinnamon Vanilla Light Roast Coffee', 'guest-84567422-da44-49a2-8738-0bba52e623c5.jpeg', 681.00, 0, '2023-11-15 11:38:15', '2023-11-15 11:38:15', 'physical', 0),
(96, 77, 2, 71.28, 7.13, '{\"image\":\"products\\/4.jpg\",\"attributes\":\"(Boxes: 1 Box, Weight: 3KG)\",\"taxRate\":10,\"options\":[],\"extras\":[],\"sku\":\"HS-161-A0\",\"weight\":634}', '[]', 35, 'Foster Farms Takeout Crispy Classic', '00075278996706-7zctudki1qcxvw-en-us-0-s500.jpg', 1268.00, 0, '2023-11-17 09:29:49', '2023-11-17 09:29:49', 'physical', 0),
(97, 78, 2, 1450.00, 0.00, '{\"image\":\"21726742839.png\",\"attributes\":\"\",\"taxRate\":0,\"options\":[],\"extras\":[],\"sku\":null,\"weight\":\"0.00\"}', '[]', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', '21726742839.png', 0.00, 0, '2024-09-20 10:59:42', '2024-09-20 10:59:42', 'physical', 0),
(98, 79, 1, 1450.00, 0.00, '{\"image\":\"21726742839.png\",\"attributes\":\"\",\"taxRate\":0,\"options\":[],\"extras\":[],\"sku\":null,\"weight\":\"0.00\"}', '[]', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', '21726742839.png', 0.00, 0, '2024-09-20 20:47:15', '2024-09-20 20:47:15', 'physical', 0),
(99, 80, 2, 1450.00, 0.00, '{\"image\":\"21726742839.png\",\"attributes\":\"\",\"taxRate\":0,\"options\":[],\"extras\":[],\"sku\":null,\"weight\":\"0.00\"}', '[]', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', '21726742839.png', 0.00, 0, '2024-09-20 22:44:44', '2024-09-20 22:44:44', 'physical', 0),
(100, 81, 1, 1450.00, 0.00, '{\"image\":\"21726742839.png\",\"attributes\":\"\",\"taxRate\":0,\"options\":[],\"extras\":[],\"sku\":null,\"weight\":\"0.00\"}', '[]', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', '21726742839.png', 0.00, 0, '2024-09-26 10:54:29', '2024-09-26 10:54:29', 'physical', 0),
(101, 82, 1, 1450.00, 0.00, '{\"image\":\"21726742839.png\",\"attributes\":\"\",\"taxRate\":0,\"options\":[],\"extras\":[],\"sku\":null,\"weight\":\"0.00\"}', '[]', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', '21726742839.png', 0.00, 0, '2024-09-30 22:19:46', '2024-09-30 22:19:46', 'physical', 0),
(102, 83, 1, 1450.00, 0.00, '{\"image\":\"21726742839.png\",\"attributes\":\"\",\"taxRate\":0,\"options\":[],\"extras\":[],\"sku\":null,\"weight\":\"0.00\"}', '[]', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', '21726742839.png', 0.00, 0, '2024-10-01 23:02:32', '2024-10-01 23:02:32', 'physical', 0),
(103, 84, 1, 1450.00, 0.00, '{\"image\":\"21726742839.png\",\"attributes\":\"\",\"taxRate\":0,\"options\":[],\"extras\":[],\"sku\":null,\"weight\":\"0.00\"}', '[]', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', '21726742839.png', 0.00, 0, '2024-10-10 06:16:51', '2024-10-10 06:16:51', 'physical', 0),
(104, 85, 1, 1450.00, 0.00, '{\"image\":\"21726742839.png\",\"attributes\":\"\",\"taxRate\":0,\"options\":[],\"extras\":[],\"sku\":null,\"weight\":\"0.00\"}', '[]', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', '21726742839.png', 0.00, 0, '2024-10-11 19:08:48', '2024-10-11 19:08:48', 'physical', 0),
(105, 86, 3, 1450.00, 0.00, '{\"image\":\"21726742839.png\",\"attributes\":\"\",\"taxRate\":0,\"options\":[],\"extras\":[],\"sku\":null,\"weight\":\"0.00\"}', '[]', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', '21726742839.png', 0.00, 0, '2024-10-12 14:28:48', '2024-10-12 14:53:37', 'physical', 0),
(106, 87, 1, 1450.00, 0.00, '{\"image\":\"21726742839.png\",\"attributes\":\"\",\"taxRate\":0,\"options\":[],\"extras\":[],\"sku\":null,\"weight\":0}', '[]', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', '21726742839.png', 0.00, 0, '2024-11-06 15:04:36', '2024-11-06 15:18:04', 'physical', 0),
(107, 88, 1, 10.00, 0.00, '{\"image\":\"298737170-435256305288617-5919111556804315091-n.png\",\"attributes\":\"\",\"taxRate\":0,\"options\":[],\"extras\":[],\"sku\":\"ywv\",\"weight\":null}', '[]', 88, 'Robiul  Islam Arzu', '298737170-435256305288617-5919111556804315091-n.png', 0.00, 0, '2024-11-06 15:18:04', '2024-11-06 15:18:04', 'digital', 0),
(108, 89, 2, 1450.00, 0.00, '{\"image\":\"21726742839.png\",\"attributes\":\"\",\"taxRate\":0,\"options\":[],\"extras\":[],\"sku\":null,\"weight\":0}', '[]', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', '21726742839.png', 0.00, 0, '2024-11-13 13:29:41', '2024-11-13 13:29:41', 'physical', 0),
(109, 90, 1, 1450.00, 0.00, '{\"image\":\"21726742839.png\",\"attributes\":\"\",\"taxRate\":0,\"options\":[],\"extras\":[],\"sku\":null,\"weight\":0}', '[]', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', '21726742839.png', 0.00, 0, '2024-11-20 16:03:12', '2024-11-20 16:03:12', 'physical', 0),
(110, 91, 1, 1450.00, 0.00, '{\"image\":\"21726742839.png\",\"attributes\":\"\",\"taxRate\":0,\"options\":[],\"extras\":[],\"sku\":null,\"weight\":0}', '[]', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', '21726742839.png', 0.00, 0, '2024-11-20 20:05:09', '2024-11-20 20:05:09', 'physical', 0),
(111, 92, 1, 1450.00, 0.00, '{\"image\":\"21726742839.png\",\"attributes\":\"\",\"taxRate\":0,\"options\":[],\"extras\":[],\"sku\":null,\"weight\":0}', '[]', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', '21726742839.png', 0.00, 0, '2024-11-21 11:37:13', '2024-11-21 11:37:13', 'physical', 0),
(112, 93, 1, 1450.00, 0.00, '{\"image\":\"21726742839.png\",\"attributes\":\"\",\"taxRate\":0,\"options\":[],\"extras\":[],\"sku\":null,\"weight\":0}', '[]', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', '21726742839.png', 0.00, 0, '2024-11-23 17:15:51', '2024-11-23 17:15:51', 'physical', 0),
(113, 94, 1, 1450.00, 0.00, '{\"image\":\"21726742839.png\",\"attributes\":\"\",\"taxRate\":0,\"options\":[],\"extras\":[],\"sku\":null,\"weight\":0}', '[]', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', '21726742839.png', 0.00, 0, '2024-11-27 23:38:51', '2024-11-27 23:38:51', 'physical', 0),
(114, 95, 1, 1450.00, 0.00, '{\"image\":\"21726742839.png\",\"attributes\":\"\",\"taxRate\":0,\"options\":[],\"extras\":[],\"sku\":null,\"weight\":0}', '[]', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', '21726742839.png', 0.00, 0, '2024-11-28 08:25:52', '2024-11-28 08:25:52', 'physical', 0),
(115, 96, 1, 1450.00, 0.00, '{\"image\":\"21726742839.png\",\"attributes\":\"\",\"taxRate\":0,\"options\":[],\"extras\":[],\"sku\":null,\"weight\":0}', '[]', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', '21726742839.png', 0.00, 0, '2024-11-28 19:39:59', '2024-11-28 19:39:59', 'physical', 0),
(116, 97, 2, 1450.00, 0.00, '{\"image\":\"21726742839.png\",\"attributes\":\"\",\"taxRate\":0,\"options\":[],\"extras\":[],\"sku\":null,\"weight\":0}', '[]', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', '21726742839.png', 0.00, 0, '2024-11-28 19:43:39', '2024-11-28 19:43:39', 'physical', 0),
(117, 98, 1, 1450.00, 0.00, '{\"image\":\"21726742839.png\",\"attributes\":\"\",\"taxRate\":0,\"options\":[],\"extras\":[],\"sku\":null,\"weight\":0}', '[]', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', '21726742839.png', 0.00, 0, '2024-11-28 22:19:09', '2024-11-28 22:19:09', 'physical', 0),
(118, 99, 1, 1450.00, 0.00, '{\"image\":\"21726742839.png\",\"attributes\":\"\",\"taxRate\":0,\"options\":[],\"extras\":[],\"sku\":null,\"weight\":0}', '[]', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', '21726742839.png', 0.00, 0, '2024-11-29 18:33:06', '2024-11-29 18:33:06', 'physical', 0),
(119, 100, 2, 1450.00, 0.00, '{\"image\":\"21726742839.png\",\"attributes\":\"\",\"taxRate\":0,\"options\":[],\"extras\":[],\"sku\":null,\"weight\":0}', '[]', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', '21726742839.png', 0.00, 0, '2024-11-29 23:57:59', '2024-11-29 23:57:59', 'physical', 0),
(120, 101, 2, 1450.00, 0.00, '{\"image\":\"21726742839.png\",\"attributes\":\"\",\"taxRate\":0,\"options\":[],\"extras\":[],\"sku\":null,\"weight\":0}', '[]', 87, 'খাটি সরিষা তেল ( ৫ কেজি )', '21726742839.png', 0.00, 0, '2024-11-30 04:20:36', '2024-11-30 04:20:36', 'physical', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_referrals`
--

CREATE TABLE `ec_order_referrals` (
  `id` bigint UNSIGNED NOT NULL,
  `ip` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_returns`
--

CREATE TABLE `ec_order_returns` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint UNSIGNED NOT NULL COMMENT 'Order ID',
  `store_id` bigint UNSIGNED DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint UNSIGNED NOT NULL COMMENT 'Customer ID',
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_return_items`
--

CREATE TABLE `ec_order_return_items` (
  `id` bigint UNSIGNED NOT NULL,
  `order_return_id` bigint UNSIGNED NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint UNSIGNED NOT NULL COMMENT 'Order product id',
  `product_id` bigint UNSIGNED NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_products`
--

CREATE TABLE `ec_products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int UNSIGNED NOT NULL DEFAULT '0',
  `quantity` int UNSIGNED DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `is_featured` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `brand_id` bigint UNSIGNED DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double UNSIGNED DEFAULT NULL,
  `sale_price` double UNSIGNED DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint UNSIGNED DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` bigint UNSIGNED DEFAULT '0',
  `created_by_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `store_id` bigint UNSIGNED DEFAULT NULL,
  `approved_by` bigint UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_products`
--

INSERT INTO `ec_products` (`id`, `name`, `description`, `content`, `status`, `images`, `sku`, `order`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `is_featured`, `brand_id`, `is_variation`, `sale_type`, `price`, `sale_price`, `start_date`, `end_date`, `length`, `wide`, `height`, `weight`, `tax_id`, `views`, `created_at`, `updated_at`, `stock_status`, `created_by_id`, `created_by_type`, `image`, `product_type`, `barcode`, `cost_per_item`, `store_id`, `approved_by`) VALUES
(87, 'খাটি সরিষা তেল ( ৫ কেজি )', '<p><strong style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);font-family:Rubik, sans-serif;font-size:16px;font-style:normal;word-spacing:0px;\">কাচ্চি ঘানি (Cold pressed) এই প্রক্রিয়ায় সরিষার দানা সরাসরি পিষে এ থেকে তেল বের করা হয় এই তেল হয় খুব ঘন এবং ঝাঁঝযুক্ত। এই তেল সবচেয়ে বেশী স্বাস্থ্য উপকারী। এটা হজম শক্তি বাড়ায়, হৃদপিন্ড ভাল রাখে, চুল গজানোয় সাহায্য করে এবং শরীরের মাংশ শক্ত হয়ে যাওয়া (muscle stiffness) রোধ করে।</strong></p>', '<h3 style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);font-family:Rubik, sans-serif;font-style:normal;line-height:1.3;margin:0px 0px 0px;word-spacing:0px;\">✅ সরিষার তেলের ১৩টি উপকারিতা যা অনেকেরই অজানাঃ</h3><p style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);font-family:Rubik, sans-serif;font-size:16px;font-style:normal;font-weight:400;margin:0px 0px 0px;word-spacing:0px;\">১। <strong>হজম প্রক্রিয়া:</strong> সরিষার তেল হজম প্রক্রিয়াকে সহায়তা করে এবং মেটাবলিক রেট বৃদ্ধি করে।</p><p style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);font-family:Rubik, sans-serif;font-size:16px;font-style:normal;font-weight:400;margin:0px 0px 0px;word-spacing:0px;\">২। <strong>সরিষার তেল ব্যথা কমায়:</strong> সরিষার তেলে থাকা প্রদাহ বিরোধী (Anti-inflammatory) উপাদান ব্যথা কমাতে সাহায্য করে। হাঁটুর ব্যথা, অন্যান্য জয়েন্টের ব্যথা, আর্থ্রাইটিস (বাত) এবং রিউম্যাটিক এর ব্যথাও দূর করে।</p><p style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);font-family:Rubik, sans-serif;font-size:16px;font-style:normal;font-weight:400;margin:0px 0px 0px;word-spacing:0px;\">৩। <strong>ক্যান্সার রোধ:</strong> এই তেলে থাকা গ্লুকোসিনোলেট (Glucosinolate) নামক উপাদান মলাশয় ক্যান্সার এবং অন্ত্রের ক্যান্সার রোধে সাহায্য করে।</p><p style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);font-family:Rubik, sans-serif;font-size:16px;font-style:normal;font-weight:400;margin:0px 0px 0px;word-spacing:0px;\">৪। <strong>সরিষার তেল ফুসফুস পরিষ্কার রাখে:</strong> সরিষার তেল এক ধরণের ডিকঞ্জেস্টেন্ট বা শ্বাসতন্ত্র পরিষ্কারক। এই তেলের সাথে রসুন মিশিয়ে বুকে ও পিঠে লাগালে কফজনিত সমস্যার সমাধান হয়।</p><p style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);font-family:Rubik, sans-serif;font-size:16px;font-style:normal;font-weight:400;margin:0px 0px 0px;word-spacing:0px;\">৫। <strong>হৃদিপিন্ড সুস্থ রাখে সরিষার তেল:</strong> সরিষার তেলে থাকা মনো আনস্যাচুরেটেড ফ্যাট এবং পলি আনস্যাচুরেটেড ফ্যাট ভাল কোলেস্টেরল বৃদ্ধি ক’রে হৃদরোগের ঝুঁকি ৭০% কমিয়ে আনতে পারে।</p><p style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);font-family:Rubik, sans-serif;font-size:16px;font-style:normal;font-weight:400;margin:0px 0px 0px;word-spacing:0px;\">৬। <strong>এজমা রোগে সরিষার তেল:</strong> এজমা এটাক (Asthma attack) হলে সরিষার তেল বুকে ঘষলে শ্বাস নেয়ার ক্ষমতা বেড়ে যায়। সবসময় এর ব্যবহার রোগ প্রতিরোধ ক্ষমতা বাড়িয়ে তোলে।</p><p style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);font-family:Rubik, sans-serif;font-size:16px;font-style:normal;font-weight:400;margin:0px 0px 0px;word-spacing:0px;\">৭। <strong>ত্বক ও চুলের যত্নে সরিষার তেল:</strong> শীতের সময় এই তেল ত্বকে ব্যবহার করলে ত্বকের শুষ্কতা দূর হয় এবং শরীর গরম থাকে। এই তেলের ব্যাক্টেরিয়া এবং ফাঙ্গাস বিরোধী গুণাগুণ ত্বক ও চুলকে উজ্জ্বল করে তুলে। এই তেল ব্যবহার করলে ত্বক কখনই কালো হয় না বরং ত্বকের টোনের উন্নতি হয়।</p><p style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);font-family:Rubik, sans-serif;font-size:16px;font-style:normal;font-weight:400;margin:0px 0px 0px;word-spacing:0px;\">৮। <strong>রাতে ঘুমাতে যাওয়ার আগে:</strong> রাতে ঘুমাতে যাওয়ার আগে নাভিতে কয়েক ফোঁটা সরিষার তেল দিলে সুফল পাওয়া যায়।</p><p style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);font-family:Rubik, sans-serif;font-size:16px;font-style:normal;font-weight:400;margin:0px 0px 0px;word-spacing:0px;\">৯। <strong>স্মরণশক্তি বৃদ্ধি ও চেতনার উন্নয়নে:</strong> সরিষার তেল স্মরণশক্তি বৃদ্ধি ও চেতনার উন্নয়নে সহায়তা করে।</p><p style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);font-family:Rubik, sans-serif;font-size:16px;font-style:normal;font-weight:400;margin:0px 0px 0px;word-spacing:0px;\">১০। <strong>মাসিকের ব্যথা:</strong> মেয়েদের মাসিকের ব্যথা এবং গ্যাস ও বদহজম জনিত পেটের ব্যথায় সরিষার তেল পেটে মালিশ করলে সুফল পাওয়া যায়।</p><p style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);font-family:Rubik, sans-serif;font-size:16px;font-style:normal;font-weight:400;margin:0px 0px 0px;word-spacing:0px;\">১১। <strong>পোকামাকড় এবং মশা তাড়ানো:</strong> পোকামাকড় এবং মশা তাড়ানোর জন্য ঔষধ হিসাবে সরিষার তেল ব্যবহৃত হয়। এর গন্ধে পোকামাকড় কাছে ঘেঁষে না।</p><p style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);font-family:Rubik, sans-serif;font-size:16px;font-style:normal;font-weight:400;margin:0px 0px 0px;word-spacing:0px;\">১২। <strong>ওজন কমাতে সরিষার তেল:</strong> রিবোফ্ল্যাভিন (Riboflavin) ও নায়াসিন (Niacin) সমৃদ্ধ সরিষার তেল শরীরে মেটাবলিজম বাড়িয়ে ওজন কমাতে সাহায্য করে।</p><p style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);font-family:Rubik, sans-serif;font-size:16px;font-style:normal;font-weight:400;margin:0px 0px 0px;word-spacing:0px;\">১৩। <strong>দাঁতের স্বাস্থ্য রক্ষায়:</strong> সুস্থ দাঁত ও জিঞ্জাভাইটিস ও পেরিওডন্টাইটিস রোগ প্রতিরোধে সরিষার তেল সহায়ক।</p><p style=\"background-color:rgb(255,255,255);color:rgb(0,0,0);font-family:Rubik, sans-serif;font-size:16px;font-style:normal;font-weight:400;margin:0px;word-spacing:0px;\">১/২ চা চামচ সরিষার তেল + ১ চা চামচ <a style=\"text-decoration:none;\" href=\"https://bdshop.live/\">হলুদের গুঁড়া</a> + ১/২ চা চামচ লবন মিশিয়ে দাঁত ও মাড়িতে হালকা করে দু’বেলা ঘষুন।</p>', 'published', '[\"21726742839.png\"]', NULL, 0, 0, 0, 0, 1, 0, 0, 0, 1450, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, NULL, 38, '2024-09-20 10:58:16', '2024-09-20 10:58:16', 'in_stock', 1, 'Botble\\ACL\\Models\\User', NULL, 'physical', NULL, 1200, 2, 0),
(88, 'Robiul  Islam Arzu', '<p>this new </p>', '<p>wyv„ywvy„w</p>', 'published', '[\"1-2-1.png\"]', 'ywv', 0, 0, 0, 0, 1, 0, 0, 0, 20, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, '2024-11-04 12:59:12', '2024-11-04 13:01:34', 'in_stock', 1, 'Botble\\ACL\\Models\\User', '298737170-435256305288617-5919111556804315091-n.png', 'digital', NULL, 20, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_products_translations`
--

CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes`
--

CREATE TABLE `ec_product_attributes` (
  `id` bigint UNSIGNED NOT NULL,
  `attribute_set_id` bigint UNSIGNED NOT NULL,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `order` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attributes`
--

INSERT INTO `ec_product_attributes` (`id`, `attribute_set_id`, `title`, `slug`, `color`, `image`, `is_default`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '1KG', '1kg', NULL, NULL, 1, 1, 'published', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(2, 1, '2KG', '2kg', NULL, NULL, 0, 2, 'published', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(3, 1, '3KG', '3kg', NULL, NULL, 0, 3, 'published', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(4, 1, '4KG', '4kg', NULL, NULL, 0, 4, 'published', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(5, 1, '5KG', '5kg', NULL, NULL, 0, 5, 'published', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(6, 2, '1 Box', '1box', NULL, NULL, 1, 1, 'published', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(7, 2, '2 Boxes', '2boxes', NULL, NULL, 0, 2, 'published', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(8, 2, '3 Boxes', '3boxes', NULL, NULL, 0, 3, 'published', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(9, 2, '4 Boxes', '4boxes', NULL, NULL, 0, 4, 'published', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(10, 2, '5 Boxes', '5boxes', NULL, NULL, 0, 5, 'published', '2023-05-02 21:08:01', '2023-05-02 21:08:01');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes_translations`
--

CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets`
--

CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `is_comparable` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_attribute_sets`
--

INSERT INTO `ec_product_attribute_sets` (`id`, `title`, `slug`, `display_layout`, `is_searchable`, `is_comparable`, `is_use_in_product_listing`, `status`, `order`, `created_at`, `updated_at`, `use_image_from_product_variation`) VALUES
(1, 'Weight', 'weight', 'text', 1, 1, 1, 'published', 0, '2023-05-02 21:08:01', '2023-05-02 21:08:01', 0),
(2, 'Boxes', 'boxes', 'text', 1, 1, 1, 'published', 1, '2023-05-02 21:08:01', '2023-05-02 21:08:01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories`
--

CREATE TABLE `ec_product_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_categories`
--

INSERT INTO `ec_product_categories` (`id`, `name`, `parent_id`, `description`, `status`, `order`, `image`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 'Milks and Dairies', 0, NULL, 'published', 0, 'icon-1-1.png', 1, '2023-05-02 21:08:01', '2023-05-31 06:44:29'),
(2, 'Clothing & beauty', 0, NULL, 'published', 1, 'icon-2.png', 1, '2023-05-02 21:08:01', '2023-05-31 06:44:56'),
(3, 'Pet Toy', 0, NULL, 'published', 2, 'icon-3.png', 1, '2023-05-02 21:08:01', '2023-05-31 06:45:28'),
(4, 'Baking material', 0, NULL, 'published', 3, 'icon-4.png', 1, '2023-05-02 21:08:01', '2023-05-31 06:45:53'),
(5, 'Fresh Fruit', 0, NULL, 'published', 4, 'icon-5.png', 1, '2023-05-02 21:08:01', '2023-05-31 06:46:21'),
(6, 'Wines & Drinks', 0, NULL, 'published', 5, 'icon-6.png', 1, '2023-05-02 21:08:01', '2023-05-31 06:46:58'),
(7, 'Fresh Seafood', 0, NULL, 'published', 6, 'icon-7.png', 1, '2023-05-02 21:08:01', '2023-05-31 06:47:29'),
(8, 'Fast food', 0, NULL, 'published', 7, 'icon-8.png', 1, '2023-05-02 21:08:01', '2023-05-31 06:47:54'),
(9, 'Vegetables', 0, NULL, 'published', 8, 'icon-9.png', 1, '2023-05-02 21:08:01', '2023-05-31 06:48:16'),
(10, 'Bread and Juice', 0, NULL, 'published', 9, 'icon-10.png', 1, '2023-05-02 21:08:01', '2023-05-31 06:48:42'),
(11, 'Cake & Milk', 0, NULL, 'published', 10, 'icon-11.png', 1, '2023-05-02 21:08:01', '2023-05-31 06:49:19'),
(12, 'Coffee & Teas', 0, NULL, 'published', 11, 'icon-12.png', 1, '2023-05-02 21:08:01', '2023-05-31 06:49:43'),
(13, 'Pet Foods', 0, NULL, 'published', 12, 'icon-13.png', 0, '2023-05-02 21:08:01', '2023-05-31 06:50:09'),
(14, 'Diet Foods', 0, NULL, 'published', 13, 'icon-14.png', 0, '2023-05-02 21:08:01', '2023-05-31 06:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories_translations`
--

CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_category_product`
--

CREATE TABLE `ec_product_category_product` (
  `category_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections`
--

CREATE TABLE `ec_product_collections` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collections`
--

INSERT INTO `ec_product_collections` (`id`, `name`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`, `is_featured`) VALUES
(1, 'New Arrival', 'new-arrival', NULL, NULL, 'published', '2023-05-02 21:08:01', '2023-05-02 21:08:01', 0),
(2, 'Best Sellers', 'best-sellers', NULL, NULL, 'published', '2023-05-02 21:08:01', '2023-05-02 21:08:01', 0),
(3, 'Special Offer', 'special-offer', NULL, NULL, 'published', '2023-05-02 21:08:01', '2023-05-02 21:08:01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections_translations`
--

CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collection_products`
--

CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_cross_sale_relations`
--

CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint UNSIGNED NOT NULL,
  `to_product_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_files`
--

CREATE TABLE `ec_product_files` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `url` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_files`
--

INSERT INTO `ec_product_files` (`id`, `product_id`, `url`, `extras`, `created_at`, `updated_at`) VALUES
(1, 25, 'product-files/1.jpg', '{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"1\",\"extension\":\"jpg\"}', '2023-05-02 21:08:05', '2023-05-02 21:08:05'),
(2, 25, 'product-files/1-1.jpg', '{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"1-1\",\"extension\":\"jpg\"}', '2023-05-02 21:08:05', '2023-05-02 21:08:05'),
(3, 26, 'product-files/1.jpg', '{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"1\",\"extension\":\"jpg\"}', '2023-05-02 21:08:05', '2023-05-02 21:08:05'),
(4, 26, 'product-files/1-1.jpg', '{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"1-1\",\"extension\":\"jpg\"}', '2023-05-02 21:08:05', '2023-05-02 21:08:05'),
(5, 27, 'product-files/1.jpg', '{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"1\",\"extension\":\"jpg\"}', '2023-05-02 21:08:05', '2023-05-02 21:08:05'),
(6, 27, 'product-files/1-1.jpg', '{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"1-1\",\"extension\":\"jpg\"}', '2023-05-02 21:08:05', '2023-05-02 21:08:05'),
(7, 37, 'product-files/5.jpg', '{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"5\",\"extension\":\"jpg\"}', '2023-05-02 21:08:05', '2023-05-02 21:08:05'),
(8, 37, 'product-files/5-1.jpg', '{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"5-1\",\"extension\":\"jpg\"}', '2023-05-02 21:08:05', '2023-05-02 21:08:05'),
(9, 38, 'product-files/5.jpg', '{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"5\",\"extension\":\"jpg\"}', '2023-05-02 21:08:05', '2023-05-02 21:08:05'),
(10, 38, 'product-files/5-1.jpg', '{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"5-1\",\"extension\":\"jpg\"}', '2023-05-02 21:08:05', '2023-05-02 21:08:05'),
(11, 39, 'product-files/5.jpg', '{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"5\",\"extension\":\"jpg\"}', '2023-05-02 21:08:05', '2023-05-02 21:08:05'),
(12, 39, 'product-files/5-1.jpg', '{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"5-1\",\"extension\":\"jpg\"}', '2023-05-02 21:08:05', '2023-05-02 21:08:05'),
(13, 45, 'product-files/9.jpg', '{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"9\",\"extension\":\"jpg\"}', '2023-05-02 21:08:05', '2023-05-02 21:08:05'),
(14, 45, 'product-files/9-1.jpg', '{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"9-1\",\"extension\":\"jpg\"}', '2023-05-02 21:08:05', '2023-05-02 21:08:05'),
(15, 46, 'product-files/9.jpg', '{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"9\",\"extension\":\"jpg\"}', '2023-05-02 21:08:05', '2023-05-02 21:08:05'),
(16, 46, 'product-files/9-1.jpg', '{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"9-1\",\"extension\":\"jpg\"}', '2023-05-02 21:08:05', '2023-05-02 21:08:05'),
(17, 47, 'product-files/9.jpg', '{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"9\",\"extension\":\"jpg\"}', '2023-05-02 21:08:05', '2023-05-02 21:08:05'),
(18, 47, 'product-files/9-1.jpg', '{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"9-1\",\"extension\":\"jpg\"}', '2023-05-02 21:08:05', '2023-05-02 21:08:05'),
(19, 59, 'product-files/13.jpg', '{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"13\",\"extension\":\"jpg\"}', '2023-05-02 21:08:05', '2023-05-02 21:08:05'),
(20, 59, 'product-files/13-1.jpg', '{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"13-1\",\"extension\":\"jpg\"}', '2023-05-02 21:08:05', '2023-05-02 21:08:05'),
(21, 60, 'product-files/13.jpg', '{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"13\",\"extension\":\"jpg\"}', '2023-05-02 21:08:05', '2023-05-02 21:08:05'),
(22, 60, 'product-files/13-1.jpg', '{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:05\",\"name\":\"13-1\",\"extension\":\"jpg\"}', '2023-05-02 21:08:05', '2023-05-02 21:08:05'),
(23, 66, 'product-files/17.jpg', '{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:06\",\"name\":\"17\",\"extension\":\"jpg\"}', '2023-05-02 21:08:06', '2023-05-02 21:08:06'),
(24, 66, 'product-files/17-1.jpg', '{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:06\",\"name\":\"17-1\",\"extension\":\"jpg\"}', '2023-05-02 21:08:06', '2023-05-02 21:08:06'),
(25, 67, 'product-files/17.jpg', '{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:06\",\"name\":\"17\",\"extension\":\"jpg\"}', '2023-05-02 21:08:06', '2023-05-02 21:08:06'),
(26, 67, 'product-files/17-1.jpg', '{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:06\",\"name\":\"17-1\",\"extension\":\"jpg\"}', '2023-05-02 21:08:06', '2023-05-02 21:08:06'),
(27, 68, 'product-files/17.jpg', '{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:06\",\"name\":\"17\",\"extension\":\"jpg\"}', '2023-05-02 21:08:06', '2023-05-02 21:08:06'),
(28, 68, 'product-files/17-1.jpg', '{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:06\",\"name\":\"17-1\",\"extension\":\"jpg\"}', '2023-05-02 21:08:06', '2023-05-02 21:08:06'),
(29, 76, 'product-files/21.jpg', '{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:06\",\"name\":\"21\",\"extension\":\"jpg\"}', '2023-05-02 21:08:06', '2023-05-02 21:08:06'),
(30, 76, 'product-files/21-1.jpg', '{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:06\",\"name\":\"21-1\",\"extension\":\"jpg\"}', '2023-05-02 21:08:06', '2023-05-02 21:08:06'),
(31, 77, 'product-files/21.jpg', '{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:06\",\"name\":\"21\",\"extension\":\"jpg\"}', '2023-05-02 21:08:06', '2023-05-02 21:08:06'),
(32, 77, 'product-files/21-1.jpg', '{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:06\",\"name\":\"21-1\",\"extension\":\"jpg\"}', '2023-05-02 21:08:06', '2023-05-02 21:08:06'),
(33, 78, 'product-files/21.jpg', '{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:06\",\"name\":\"21\",\"extension\":\"jpg\"}', '2023-05-02 21:08:06', '2023-05-02 21:08:06'),
(34, 78, 'product-files/21-1.jpg', '{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:08:06\",\"name\":\"21-1\",\"extension\":\"jpg\"}', '2023-05-02 21:08:06', '2023-05-02 21:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels`
--

CREATE TABLE `ec_product_labels` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_labels`
--

INSERT INTO `ec_product_labels` (`id`, `name`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hot', '#ec2434', 'published', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(2, 'New', '#00c9a7', 'published', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(3, 'Sale', '#fe9931', 'published', '2023-05-02 21:08:01', '2023-05-02 21:08:01');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels_translations`
--

CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_label_products`
--

CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_label_products`
--

INSERT INTO `ec_product_label_products` (`product_label_id`, `product_id`) VALUES
(2, 7),
(2, 14),
(2, 21);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_related_relations`
--

CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint UNSIGNED NOT NULL,
  `to_product_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tags`
--

CREATE TABLE `ec_product_tags` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_tags`
--

INSERT INTO `ec_product_tags` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Wallet', NULL, 'published', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(2, 'Bags', NULL, 'published', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(3, 'Shoes', NULL, 'published', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(4, 'Clothes', NULL, 'published', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(5, 'Hand bag', NULL, 'published', '2023-05-02 21:08:01', '2023-05-02 21:08:01');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tags_translations`
--

CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tag_product`
--

CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_tag_product`
--

INSERT INTO `ec_product_tag_product` (`product_id`, `tag_id`) VALUES
(1, 1),
(1, 3),
(1, 5),
(2, 1),
(2, 4),
(2, 6),
(3, 1),
(3, 2),
(3, 6),
(4, 3),
(4, 4),
(4, 6),
(5, 1),
(5, 5),
(5, 6),
(6, 1),
(6, 3),
(6, 5),
(7, 5),
(7, 6),
(8, 1),
(8, 4),
(8, 6),
(9, 2),
(9, 6),
(10, 4),
(10, 6),
(11, 1),
(11, 2),
(11, 3),
(12, 2),
(12, 3),
(12, 5),
(13, 4),
(13, 6),
(14, 1),
(14, 3),
(14, 5),
(15, 1),
(15, 2),
(16, 1),
(16, 4),
(16, 5),
(17, 2),
(17, 4),
(17, 6),
(18, 3),
(18, 4),
(18, 5),
(19, 4),
(19, 6),
(20, 2),
(20, 5),
(20, 6),
(21, 1),
(21, 2),
(21, 3),
(22, 1),
(22, 2),
(23, 1),
(23, 3),
(24, 2),
(24, 4),
(24, 6);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_up_sale_relations`
--

CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint UNSIGNED NOT NULL,
  `to_product_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variations`
--

CREATE TABLE `ec_product_variations` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `configurable_product_id` bigint UNSIGNED NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variation_items`
--

CREATE TABLE `ec_product_variation_items` (
  `id` bigint UNSIGNED NOT NULL,
  `attribute_id` bigint UNSIGNED NOT NULL,
  `variation_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_views`
--

CREATE TABLE `ec_product_views` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2023-05-03'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_views`
--

INSERT INTO `ec_product_views` (`id`, `product_id`, `views`, `date`) VALUES
(340, 87, 3, '2024-09-20'),
(343, 87, 2, '2024-09-22'),
(345, 87, 1, '2024-09-23'),
(346, 87, 1, '2024-09-26'),
(347, 87, 1, '2024-09-30'),
(348, 87, 1, '2024-10-01'),
(349, 87, 1, '2024-10-02'),
(350, 87, 1, '2024-10-11'),
(351, 87, 1, '2024-10-12'),
(352, 87, 1, '2024-11-04'),
(353, 88, 2, '2024-11-04'),
(355, 87, 1, '2024-11-05'),
(356, 87, 1, '2024-11-06'),
(357, 88, 1, '2024-11-06'),
(358, 87, 1, '2024-11-07'),
(359, 87, 1, '2024-11-08'),
(360, 87, 1, '2024-11-13'),
(361, 88, 1, '2024-11-13'),
(362, 87, 1, '2024-11-19'),
(363, 88, 1, '2024-11-19'),
(364, 87, 2, '2024-11-20'),
(366, 87, 2, '2024-11-21'),
(368, 87, 1, '2024-11-23'),
(369, 87, 1, '2024-11-25'),
(370, 87, 4, '2024-11-27'),
(374, 88, 3, '2024-11-28'),
(376, 87, 3, '2024-11-28'),
(380, 87, 3, '2024-11-29'),
(383, 87, 3, '2024-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_with_attribute_set`
--

CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `order` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_reviews`
--

CREATE TABLE `ec_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipments`
--

CREATE TABLE `ec_shipments` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipments`
--

INSERT INTO `ec_shipments` (`id`, `order_id`, `user_id`, `weight`, `shipment_id`, `rate_id`, `note`, `status`, `cod_amount`, `cod_status`, `cross_checking_status`, `price`, `store_id`, `created_at`, `updated_at`, `tracking_id`, `shipping_company_name`, `tracking_link`, `estimate_date_shipped`, `date_shipped`, `label_url`, `metadata`) VALUES
(50, 69, 0, 737.00, '', '', NULL, 'pending', 0.00, 'pending', 'pending', 0.00, 3, '2023-09-26 17:22:36', '2023-09-26 17:22:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 69, 0, 737.00, '', '', NULL, 'pending', 0.00, 'pending', 'pending', 0.00, 3, '2023-09-26 17:22:54', '2023-09-26 17:22:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 78, 0, 0.01, '', '', NULL, 'pending', 0.00, 'pending', 'pending', 0.00, 2, '2024-09-20 11:00:34', '2024-09-20 11:00:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 82, 0, 0.01, '', '', NULL, 'pending', 0.00, 'pending', 'pending', 0.00, 2, '2024-09-30 22:20:07', '2024-09-30 22:20:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 84, 0, 0.01, '', '', NULL, 'pending', 0.00, 'pending', 'pending', 0.00, 2, '2024-10-10 06:17:37', '2024-10-10 06:17:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 87, 0, 0.01, '', '', NULL, 'pending', 0.00, 'pending', 'pending', 0.00, 2, '2024-11-06 15:19:06', '2024-11-06 15:19:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 94, 0, 0.01, '', '', NULL, 'pending', 0.00, 'pending', 'pending', 0.00, 2, '2024-11-27 23:40:07', '2024-11-27 23:40:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 94, 0, 0.01, '', '', NULL, 'pending', 1450.00, 'pending', 'pending', 0.00, 2, '2024-11-27 23:40:12', '2024-11-27 23:40:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipment_histories`
--

CREATE TABLE `ec_shipment_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `shipment_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping`
--

CREATE TABLE `ec_shipping` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping`
--

INSERT INTO `ec_shipping` (`id`, `title`, `country`, `created_at`, `updated_at`) VALUES
(1, 'All', NULL, '2023-05-02 21:08:08', '2023-05-02 21:08:08');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rules`
--

CREATE TABLE `ec_shipping_rules` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint UNSIGNED NOT NULL,
  `type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping_rules`
--

INSERT INTO `ec_shipping_rules` (`id`, `name`, `shipping_id`, `type`, `from`, `to`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Free delivery', 1, 'based_on_price', 0.00, NULL, 0.00, '2023-05-02 21:08:08', '2023-05-02 21:08:08');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rule_items`
--

CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint UNSIGNED NOT NULL,
  `shipping_rule_id` bigint UNSIGNED NOT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_store_locators`
--

CREATE TABLE `ec_store_locators` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_store_locators`
--

INSERT INTO `ec_store_locators` (`id`, `name`, `email`, `phone`, `address`, `country`, `state`, `city`, `is_primary`, `is_shipping_location`, `created_at`, `updated_at`) VALUES
(1, 'Rexsonaltd', 'info@rexsonaltd.com', '+8801813759504', 'House: 20, Road # 12, Sector # 09', 'BD', 'Dhaka', 'Uttara', 1, 1, '2023-05-02 21:08:08', '2023-11-23 20:27:09');

-- --------------------------------------------------------

--
-- Table structure for table `ec_taxes`
--

CREATE TABLE `ec_taxes` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_taxes`
--

INSERT INTO `ec_taxes` (`id`, `title`, `percentage`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 'VAT', 10.000000, 1, 'published', '2023-05-02 21:08:06', '2023-05-02 21:08:06'),
(2, 'None', 0.000000, 2, 'published', '2023-05-02 21:08:06', '2023-05-02 21:08:06'),
(3, 'Import Tax', 15.000000, 3, 'published', '2023-05-02 21:08:06', '2023-05-02 21:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `ec_tax_products`
--

CREATE TABLE `ec_tax_products` (
  `tax_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_wish_lists`
--

CREATE TABLE `ec_wish_lists` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'What Shipping Methods Are Available?', 'Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.', 1, 'published', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(2, 'Do You Ship Internationally?', 'Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.', 1, 'published', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(3, 'How Long Will It Take To Get My Package?', 'Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.', 1, 'published', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(4, 'What Payment Methods Are Accepted?', 'Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.', 2, 'published', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(5, 'Is Buying On-Line Safe?', 'Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.', 2, 'published', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(6, 'How do I place an Order?', 'Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.', 3, 'published', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(7, 'How Can I Cancel Or Change My Order?', 'Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.', 3, 'published', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(8, 'Do I need an account to place an order?', 'Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.', 3, 'published', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(9, 'How Do I Track My Order?', 'Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.', 3, 'published', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(10, 'How Can I Return a Product?', 'Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.', 3, 'published', '2023-05-02 21:08:12', '2023-05-02 21:08:12');

-- --------------------------------------------------------

--
-- Table structure for table `faqs_translations`
--

CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint UNSIGNED NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Shipping', 0, 'published', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(2, 'Payment', 1, 'published', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(3, 'Order &amp; Returns', 2, 'published', '2023-05-02 21:08:12', '2023-05-02 21:08:12');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories_translations`
--

CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` bigint UNSIGNED NOT NULL,
  `lang_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` bigint UNSIGNED NOT NULL,
  `lang_meta_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint UNSIGNED NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'en_US', 'bcf397d7c2898d1774aaa9eed157ea20', 1, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(2, 'en_US', '6d8c439111a315db1284bef3efb58d1b', 2, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(3, 'en_US', '4421ab71370a3efca84c322b70deb288', 3, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(4, 'en_US', 'c5255356fd28b7a00239208c7575e81e', 4, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(5, 'en_US', '05b702516e52a4ab2e6d31dc391275f4', 5, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(6, 'en_US', 'f4943f5f07d30438044d91cc39ce85aa', 6, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(7, 'en_US', '36eb5f93bc882813ba82d9f200c95245', 7, 'Botble\\SimpleSlider\\Models\\SimpleSlider'),
(15, 'en_US', '9d26b3443d915f79db55e912dd38dbf9', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(16, 'en_US', '29b7971f691ab2a4038607d7f7a41a53', 1, 'Botble\\Menu\\Models\\Menu'),
(17, 'en_US', '806f56c16af7a6770423ed236d41162b', 2, 'Botble\\Menu\\Models\\MenuLocation'),
(18, 'en_US', '566a67ad8c0e75dd34b5c5d064289eed', 2, 'Botble\\Menu\\Models\\Menu'),
(19, 'en_US', '3aba5c85f02fcd2afee0e424f7950d01', 3, 'Botble\\Menu\\Models\\Menu'),
(20, 'en_US', 'd59692edc108f24b34cc6f9298323074', 4, 'Botble\\Menu\\Models\\Menu'),
(21, 'en_US', '33aafb9390fa927fcbe1e7741221cbe3', 5, 'Botble\\Menu\\Models\\Menu');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `mime_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `alt`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'icon-1', 'icon-1', 1, 'image/png', 1307, 'product-categories/icon-1.png', '[]', '2023-05-02 21:07:59', '2023-05-02 21:07:59', NULL),
(2, 0, 'icon-10', 'icon-10', 1, 'image/png', 1307, 'product-categories/icon-10.png', '[]', '2023-05-02 21:07:59', '2023-05-02 21:07:59', NULL),
(3, 0, 'icon-11', 'icon-11', 1, 'image/png', 1307, 'product-categories/icon-11.png', '[]', '2023-05-02 21:07:59', '2023-05-02 21:07:59', NULL),
(4, 0, 'icon-12', 'icon-12', 1, 'image/png', 1307, 'product-categories/icon-12.png', '[]', '2023-05-02 21:07:59', '2023-05-02 21:07:59', NULL),
(5, 0, 'icon-13', 'icon-13', 1, 'image/png', 1307, 'product-categories/icon-13.png', '[]', '2023-05-02 21:07:59', '2023-05-02 21:07:59', NULL),
(6, 0, 'icon-14', 'icon-14', 1, 'image/png', 1307, 'product-categories/icon-14.png', '[]', '2023-05-02 21:07:59', '2023-05-02 21:07:59', NULL),
(7, 0, 'icon-2', 'icon-2', 1, 'image/png', 1307, 'product-categories/icon-2.png', '[]', '2023-05-02 21:08:00', '2023-05-02 21:08:00', NULL),
(8, 0, 'icon-3', 'icon-3', 1, 'image/png', 1307, 'product-categories/icon-3.png', '[]', '2023-05-02 21:08:00', '2023-05-02 21:08:00', NULL),
(9, 0, 'icon-4', 'icon-4', 1, 'image/png', 1307, 'product-categories/icon-4.png', '[]', '2023-05-02 21:08:00', '2023-05-02 21:08:00', NULL),
(10, 0, 'icon-5', 'icon-5', 1, 'image/png', 1307, 'product-categories/icon-5.png', '[]', '2023-05-02 21:08:00', '2023-05-02 21:08:00', NULL),
(11, 0, 'icon-6', 'icon-6', 1, 'image/png', 1307, 'product-categories/icon-6.png', '[]', '2023-05-02 21:08:00', '2023-05-02 21:08:00', NULL),
(12, 0, 'icon-7', 'icon-7', 1, 'image/png', 1307, 'product-categories/icon-7.png', '[]', '2023-05-02 21:08:00', '2023-05-02 21:08:00', NULL),
(13, 0, 'icon-8', 'icon-8', 1, 'image/png', 1307, 'product-categories/icon-8.png', '[]', '2023-05-02 21:08:00', '2023-05-02 21:08:00', NULL),
(14, 0, 'icon-9', 'icon-9', 1, 'image/png', 1307, 'product-categories/icon-9.png', '[]', '2023-05-02 21:08:00', '2023-05-02 21:08:00', NULL),
(15, 0, 'image-1', 'image-1', 1, 'image/png', 1307, 'product-categories/image-1.png', '[]', '2023-05-02 21:08:00', '2023-05-02 21:08:00', NULL),
(16, 0, 'image-10', 'image-10', 1, 'image/png', 1307, 'product-categories/image-10.png', '[]', '2023-05-02 21:08:00', '2023-05-02 21:08:00', NULL),
(17, 0, 'image-11', 'image-11', 1, 'image/png', 1307, 'product-categories/image-11.png', '[]', '2023-05-02 21:08:00', '2023-05-02 21:08:00', NULL),
(18, 0, 'image-12', 'image-12', 1, 'image/png', 1307, 'product-categories/image-12.png', '[]', '2023-05-02 21:08:00', '2023-05-02 21:08:00', NULL),
(19, 0, 'image-13', 'image-13', 1, 'image/png', 1307, 'product-categories/image-13.png', '[]', '2023-05-02 21:08:00', '2023-05-02 21:08:00', NULL),
(20, 0, 'image-14', 'image-14', 1, 'image/png', 1307, 'product-categories/image-14.png', '[]', '2023-05-02 21:08:00', '2023-05-02 21:08:00', NULL),
(21, 0, 'image-15', 'image-15', 1, 'image/png', 1307, 'product-categories/image-15.png', '[]', '2023-05-02 21:08:00', '2023-05-02 21:08:00', NULL),
(22, 0, 'image-2', 'image-2', 1, 'image/png', 1307, 'product-categories/image-2.png', '[]', '2023-05-02 21:08:00', '2023-05-02 21:08:00', NULL),
(23, 0, 'image-3', 'image-3', 1, 'image/png', 1307, 'product-categories/image-3.png', '[]', '2023-05-02 21:08:00', '2023-05-02 21:08:00', NULL),
(24, 0, 'image-4', 'image-4', 1, 'image/png', 1307, 'product-categories/image-4.png', '[]', '2023-05-02 21:08:00', '2023-05-02 21:08:00', NULL),
(25, 0, 'image-5', 'image-5', 1, 'image/png', 1307, 'product-categories/image-5.png', '[]', '2023-05-02 21:08:01', '2023-05-02 21:08:01', NULL),
(26, 0, 'image-6', 'image-6', 1, 'image/png', 1307, 'product-categories/image-6.png', '[]', '2023-05-02 21:08:01', '2023-05-02 21:08:01', NULL),
(27, 0, 'image-7', 'image-7', 1, 'image/png', 1307, 'product-categories/image-7.png', '[]', '2023-05-02 21:08:01', '2023-05-02 21:08:01', NULL),
(28, 0, 'image-8', 'image-8', 1, 'image/png', 1307, 'product-categories/image-8.png', '[]', '2023-05-02 21:08:01', '2023-05-02 21:08:01', NULL),
(29, 0, 'image-9', 'image-9', 1, 'image/png', 1307, 'product-categories/image-9.png', '[]', '2023-05-02 21:08:01', '2023-05-02 21:08:01', NULL),
(30, 0, '1-1', '1-1', 2, 'image/jpeg', 2165, 'products/1-1.jpg', '[]', '2023-05-02 21:08:01', '2023-05-02 21:08:01', NULL),
(31, 0, '1', '1', 2, 'image/jpeg', 2165, 'products/1.jpg', '[]', '2023-05-02 21:08:01', '2023-05-02 21:08:01', NULL),
(32, 0, '10-1', '10-1', 2, 'image/jpeg', 2165, 'products/10-1.jpg', '[]', '2023-05-02 21:08:01', '2023-05-02 21:08:01', NULL),
(33, 0, '10', '10', 2, 'image/jpeg', 2165, 'products/10.jpg', '[]', '2023-05-02 21:08:01', '2023-05-02 21:08:01', NULL),
(34, 0, '11-1', '11-1', 2, 'image/jpeg', 2165, 'products/11-1.jpg', '[]', '2023-05-02 21:08:01', '2023-05-02 21:08:01', NULL),
(35, 0, '11', '11', 2, 'image/jpeg', 2165, 'products/11.jpg', '[]', '2023-05-02 21:08:01', '2023-05-02 21:08:01', NULL),
(36, 0, '12-1', '12-1', 2, 'image/jpeg', 2165, 'products/12-1.jpg', '[]', '2023-05-02 21:08:01', '2023-05-02 21:08:01', NULL),
(37, 0, '12', '12', 2, 'image/jpeg', 2165, 'products/12.jpg', '[]', '2023-05-02 21:08:01', '2023-05-02 21:08:01', NULL),
(38, 0, '13-1', '13-1', 2, 'image/jpeg', 2165, 'products/13-1.jpg', '[]', '2023-05-02 21:08:02', '2023-05-02 21:08:02', NULL),
(39, 0, '13', '13', 2, 'image/jpeg', 2165, 'products/13.jpg', '[]', '2023-05-02 21:08:02', '2023-05-02 21:08:02', NULL),
(40, 0, '14-1', '14-1', 2, 'image/jpeg', 2165, 'products/14-1.jpg', '[]', '2023-05-02 21:08:02', '2023-05-02 21:08:02', NULL),
(41, 0, '14', '14', 2, 'image/jpeg', 2165, 'products/14.jpg', '[]', '2023-05-02 21:08:02', '2023-05-02 21:08:02', NULL),
(42, 0, '15-1', '15-1', 2, 'image/jpeg', 2165, 'products/15-1.jpg', '[]', '2023-05-02 21:08:02', '2023-05-02 21:08:02', NULL),
(43, 0, '15', '15', 2, 'image/jpeg', 2165, 'products/15.jpg', '[]', '2023-05-02 21:08:02', '2023-05-02 21:08:02', NULL),
(44, 0, '16-1', '16-1', 2, 'image/jpeg', 2165, 'products/16-1.jpg', '[]', '2023-05-02 21:08:02', '2023-05-02 21:08:02', NULL),
(45, 0, '16-2', '16-2', 2, 'image/jpeg', 2165, 'products/16-2.jpg', '[]', '2023-05-02 21:08:02', '2023-05-02 21:08:02', NULL),
(46, 0, '16-3', '16-3', 2, 'image/jpeg', 2165, 'products/16-3.jpg', '[]', '2023-05-02 21:08:02', '2023-05-02 21:08:02', NULL),
(47, 0, '16-4', '16-4', 2, 'image/jpeg', 2165, 'products/16-4.jpg', '[]', '2023-05-02 21:08:02', '2023-05-02 21:08:02', NULL),
(48, 0, '16-5', '16-5', 2, 'image/jpeg', 2165, 'products/16-5.jpg', '[]', '2023-05-02 21:08:02', '2023-05-02 21:08:02', NULL),
(49, 0, '16-6', '16-6', 2, 'image/jpeg', 2165, 'products/16-6.jpg', '[]', '2023-05-02 21:08:02', '2023-05-02 21:08:02', NULL),
(50, 0, '16', '16', 2, 'image/jpeg', 2165, 'products/16.jpg', '[]', '2023-05-02 21:08:02', '2023-05-02 21:08:02', NULL),
(51, 0, '17-1', '17-1', 2, 'image/jpeg', 2165, 'products/17-1.jpg', '[]', '2023-05-02 21:08:02', '2023-05-02 21:08:02', NULL),
(52, 0, '17', '17', 2, 'image/jpeg', 2165, 'products/17.jpg', '[]', '2023-05-02 21:08:02', '2023-05-02 21:08:02', NULL),
(53, 0, '18-1', '18-1', 2, 'image/jpeg', 2165, 'products/18-1.jpg', '[]', '2023-05-02 21:08:03', '2023-05-02 21:08:03', NULL),
(54, 0, '18', '18', 2, 'image/jpeg', 2165, 'products/18.jpg', '[]', '2023-05-02 21:08:03', '2023-05-02 21:08:03', NULL),
(55, 0, '19-1', '19-1', 2, 'image/jpeg', 2165, 'products/19-1.jpg', '[]', '2023-05-02 21:08:03', '2023-05-02 21:08:03', NULL),
(56, 0, '19', '19', 2, 'image/jpeg', 2165, 'products/19.jpg', '[]', '2023-05-02 21:08:03', '2023-05-02 21:08:03', NULL),
(57, 0, '2-1', '2-1', 2, 'image/jpeg', 2165, 'products/2-1.jpg', '[]', '2023-05-02 21:08:03', '2023-05-02 21:08:03', NULL),
(58, 0, '2', '2', 2, 'image/jpeg', 2165, 'products/2.jpg', '[]', '2023-05-02 21:08:03', '2023-05-02 21:08:03', NULL),
(59, 0, '20-1', '20-1', 2, 'image/jpeg', 2165, 'products/20-1.jpg', '[]', '2023-05-02 21:08:03', '2023-05-02 21:08:03', NULL),
(60, 0, '20', '20', 2, 'image/jpeg', 2165, 'products/20.jpg', '[]', '2023-05-02 21:08:03', '2023-05-02 21:08:03', NULL),
(61, 0, '21-1', '21-1', 2, 'image/jpeg', 2165, 'products/21-1.jpg', '[]', '2023-05-02 21:08:03', '2023-05-02 21:08:03', NULL),
(62, 0, '21', '21', 2, 'image/jpeg', 2165, 'products/21.jpg', '[]', '2023-05-02 21:08:03', '2023-05-02 21:08:03', NULL),
(63, 0, '22-1', '22-1', 2, 'image/jpeg', 2165, 'products/22-1.jpg', '[]', '2023-05-02 21:08:03', '2023-05-02 21:08:03', NULL),
(64, 0, '22', '22', 2, 'image/jpeg', 2165, 'products/22.jpg', '[]', '2023-05-02 21:08:03', '2023-05-02 21:08:03', NULL),
(65, 0, '23-1', '23-1', 2, 'image/jpeg', 2165, 'products/23-1.jpg', '[]', '2023-05-02 21:08:03', '2023-05-02 21:08:03', NULL),
(66, 0, '23', '23', 2, 'image/jpeg', 2165, 'products/23.jpg', '[]', '2023-05-02 21:08:03', '2023-05-02 21:08:03', NULL),
(67, 0, '24-1', '24-1', 2, 'image/jpeg', 2165, 'products/24-1.jpg', '[]', '2023-05-02 21:08:03', '2023-05-02 21:08:03', NULL),
(68, 0, '24', '24', 2, 'image/jpeg', 2165, 'products/24.jpg', '[]', '2023-05-02 21:08:03', '2023-05-02 21:08:03', NULL),
(69, 0, '3-1', '3-1', 2, 'image/jpeg', 2165, 'products/3-1.jpg', '[]', '2023-05-02 21:08:04', '2023-05-02 21:08:04', NULL),
(70, 0, '3', '3', 2, 'image/jpeg', 2165, 'products/3.jpg', '[]', '2023-05-02 21:08:04', '2023-05-02 21:08:04', NULL),
(71, 0, '4-1', '4-1', 2, 'image/jpeg', 2165, 'products/4-1.jpg', '[]', '2023-05-02 21:08:04', '2023-05-02 21:08:04', NULL),
(72, 0, '4', '4', 2, 'image/jpeg', 2165, 'products/4.jpg', '[]', '2023-05-02 21:08:04', '2023-05-02 21:08:04', NULL),
(73, 0, '5-1', '5-1', 2, 'image/jpeg', 2165, 'products/5-1.jpg', '[]', '2023-05-02 21:08:04', '2023-05-02 21:08:04', NULL),
(74, 0, '5', '5', 2, 'image/jpeg', 2165, 'products/5.jpg', '[]', '2023-05-02 21:08:04', '2023-05-02 21:08:04', NULL),
(75, 0, '6-1', '6-1', 2, 'image/jpeg', 2165, 'products/6-1.jpg', '[]', '2023-05-02 21:08:04', '2023-05-02 21:08:04', NULL),
(76, 0, '6', '6', 2, 'image/jpeg', 2165, 'products/6.jpg', '[]', '2023-05-02 21:08:04', '2023-05-02 21:08:04', NULL),
(77, 0, '7-1', '7-1', 2, 'image/jpeg', 2165, 'products/7-1.jpg', '[]', '2023-05-02 21:08:04', '2023-05-02 21:08:04', NULL),
(78, 0, '7', '7', 2, 'image/jpeg', 2165, 'products/7.jpg', '[]', '2023-05-02 21:08:04', '2023-05-02 21:08:04', NULL),
(79, 0, '8-1', '8-1', 2, 'image/jpeg', 2165, 'products/8-1.jpg', '[]', '2023-05-02 21:08:04', '2023-05-02 21:08:04', NULL),
(80, 0, '8', '8', 2, 'image/jpeg', 2165, 'products/8.jpg', '[]', '2023-05-02 21:08:04', '2023-05-02 21:08:04', NULL),
(81, 0, '9-1', '9-1', 2, 'image/jpeg', 2165, 'products/9-1.jpg', '[]', '2023-05-02 21:08:04', '2023-05-02 21:08:04', NULL),
(82, 0, '9', '9', 2, 'image/jpeg', 2165, 'products/9.jpg', '[]', '2023-05-02 21:08:04', '2023-05-02 21:08:04', NULL),
(83, 0, '1', '1', 3, 'image/jpeg', 2165, 'customers/1.jpg', '[]', '2023-05-02 21:08:06', '2023-05-02 21:08:06', NULL),
(84, 0, '2', '2', 3, 'image/jpeg', 2165, 'customers/2.jpg', '[]', '2023-05-02 21:08:07', '2023-05-02 21:08:07', NULL),
(85, 0, '3', '3', 3, 'image/jpeg', 2165, 'customers/3.jpg', '[]', '2023-05-02 21:08:07', '2023-05-02 21:08:07', NULL),
(86, 0, '4', '4', 3, 'image/jpeg', 2165, 'customers/4.jpg', '[]', '2023-05-02 21:08:07', '2023-05-02 21:08:07', NULL),
(87, 0, '5', '5', 3, 'image/jpeg', 2165, 'customers/5.jpg', '[]', '2023-05-02 21:08:07', '2023-05-02 21:08:07', NULL),
(88, 0, '6', '6', 3, 'image/jpeg', 2165, 'customers/6.jpg', '[]', '2023-05-02 21:08:07', '2023-05-02 21:08:07', NULL),
(89, 0, '7', '7', 3, 'image/jpeg', 2165, 'customers/7.jpg', '[]', '2023-05-02 21:08:07', '2023-05-02 21:08:07', NULL),
(90, 0, '8', '8', 3, 'image/jpeg', 2165, 'customers/8.jpg', '[]', '2023-05-02 21:08:07', '2023-05-02 21:08:07', NULL),
(91, 0, '9', '9', 3, 'image/jpeg', 2165, 'customers/9.jpg', '[]', '2023-05-02 21:08:07', '2023-05-02 21:08:07', NULL),
(92, 0, '1', '1', 4, 'image/png', 3187, 'flash-sales/1.png', '[]', '2023-05-02 21:08:08', '2023-05-02 21:08:08', NULL),
(93, 0, '2', '2', 4, 'image/png', 2392, 'flash-sales/2.png', '[]', '2023-05-02 21:08:08', '2023-05-02 21:08:08', NULL),
(94, 0, '3', '3', 4, 'image/png', 2392, 'flash-sales/3.png', '[]', '2023-05-02 21:08:08', '2023-05-02 21:08:08', NULL),
(95, 0, '4', '4', 4, 'image/png', 2392, 'flash-sales/4.png', '[]', '2023-05-02 21:08:08', '2023-05-02 21:08:08', NULL),
(96, 0, '5', '5', 4, 'image/png', 2392, 'flash-sales/5.png', '[]', '2023-05-02 21:08:08', '2023-05-02 21:08:08', NULL),
(97, 0, '1-1', '1-1', 5, 'image/png', 10577, 'sliders/1-1.png', '[]', '2023-05-02 21:08:08', '2023-05-02 21:08:08', NULL),
(98, 0, '1-2', '1-2', 5, 'image/png', 10577, 'sliders/1-2.png', '[]', '2023-05-02 21:08:08', '2023-05-02 21:08:08', NULL),
(99, 0, '1-3', '1-3', 5, 'image/png', 2697, 'sliders/1-3.png', '[]', '2023-05-02 21:08:08', '2023-05-02 21:08:08', NULL),
(100, 0, '2-1', '2-1', 5, 'image/png', 4556, 'sliders/2-1.png', '[]', '2023-05-02 21:08:09', '2023-05-02 21:08:09', NULL),
(101, 0, '2-2', '2-2', 5, 'image/png', 4556, 'sliders/2-2.png', '[]', '2023-05-02 21:08:09', '2023-05-02 21:08:09', NULL),
(102, 0, '2-3', '2-3', 5, 'image/png', 2697, 'sliders/2-3.png', '[]', '2023-05-02 21:08:09', '2023-05-02 21:08:09', NULL),
(103, 0, '3-1', '3-1', 5, 'image/png', 10577, 'sliders/3-1.png', '[]', '2023-05-02 21:08:09', '2023-05-02 21:08:09', NULL),
(104, 0, '3-2', '3-2', 5, 'image/png', 10577, 'sliders/3-2.png', '[]', '2023-05-02 21:08:09', '2023-05-02 21:08:09', NULL),
(105, 0, '4-1', '4-1', 5, 'image/png', 10577, 'sliders/4-1.png', '[]', '2023-05-02 21:08:09', '2023-05-02 21:08:09', NULL),
(106, 0, '4-2', '4-2', 5, 'image/png', 10577, 'sliders/4-2.png', '[]', '2023-05-02 21:08:09', '2023-05-02 21:08:09', NULL),
(107, 0, '4-3', '4-3', 5, 'image/png', 2697, 'sliders/4-3.png', '[]', '2023-05-02 21:08:09', '2023-05-02 21:08:09', NULL),
(108, 0, '5-1', '5-1', 5, 'image/png', 5213, 'sliders/5-1.png', '[]', '2023-05-02 21:08:09', '2023-05-02 21:08:09', NULL),
(109, 0, '5-2', '5-2', 5, 'image/png', 5213, 'sliders/5-2.png', '[]', '2023-05-02 21:08:10', '2023-05-02 21:08:10', NULL),
(110, 0, 'banner-1', 'banner-1', 5, 'image/png', 12801, 'sliders/banner-1.png', '[]', '2023-05-02 21:08:10', '2023-05-02 21:08:10', NULL),
(111, 0, 'thumbnail-1', 'thumbnail-1', 5, 'image/jpeg', 2165, 'sliders/thumbnail-1.jpg', '[]', '2023-05-02 21:08:10', '2023-05-02 21:08:10', NULL),
(112, 0, 'thumbnail-2', 'thumbnail-2', 5, 'image/jpeg', 2165, 'sliders/thumbnail-2.jpg', '[]', '2023-05-02 21:08:10', '2023-05-02 21:08:10', NULL),
(113, 0, 'thumbnail-3', 'thumbnail-3', 5, 'image/jpeg', 2165, 'sliders/thumbnail-3.jpg', '[]', '2023-05-02 21:08:10', '2023-05-02 21:08:10', NULL),
(114, 0, 'thumbnail-4', 'thumbnail-4', 5, 'image/jpeg', 2165, 'sliders/thumbnail-4.jpg', '[]', '2023-05-02 21:08:10', '2023-05-02 21:08:10', NULL),
(115, 0, 'thumbnail-5', 'thumbnail-5', 5, 'image/jpeg', 2165, 'sliders/thumbnail-5.jpg', '[]', '2023-05-02 21:08:10', '2023-05-02 21:08:10', NULL),
(116, 0, 'thumbnail-6', 'thumbnail-6', 5, 'image/jpeg', 2165, 'sliders/thumbnail-6.jpg', '[]', '2023-05-02 21:08:10', '2023-05-02 21:08:10', NULL),
(117, 0, '1', '1', 6, 'image/png', 2165, 'news/1.png', '[]', '2023-05-02 21:08:10', '2023-05-02 21:08:10', NULL),
(118, 0, '10', '10', 6, 'image/png', 2165, 'news/10.png', '[]', '2023-05-02 21:08:10', '2023-05-02 21:08:10', NULL),
(119, 0, '11', '11', 6, 'image/png', 2165, 'news/11.png', '[]', '2023-05-02 21:08:11', '2023-05-02 21:08:11', NULL),
(120, 0, '2', '2', 6, 'image/png', 2165, 'news/2.png', '[]', '2023-05-02 21:08:11', '2023-05-02 21:08:11', NULL),
(121, 0, '3', '3', 6, 'image/png', 2165, 'news/3.png', '[]', '2023-05-02 21:08:11', '2023-05-02 21:08:11', NULL),
(122, 0, '4', '4', 6, 'image/png', 2165, 'news/4.png', '[]', '2023-05-02 21:08:11', '2023-05-02 21:08:11', NULL),
(123, 0, '5', '5', 6, 'image/png', 2165, 'news/5.png', '[]', '2023-05-02 21:08:11', '2023-05-02 21:08:11', NULL),
(124, 0, '6', '6', 6, 'image/png', 2165, 'news/6.png', '[]', '2023-05-02 21:08:11', '2023-05-02 21:08:11', NULL),
(125, 0, '7', '7', 6, 'image/png', 2165, 'news/7.png', '[]', '2023-05-02 21:08:11', '2023-05-02 21:08:11', NULL),
(126, 0, '8', '8', 6, 'image/png', 2165, 'news/8.png', '[]', '2023-05-02 21:08:11', '2023-05-02 21:08:11', NULL),
(127, 0, '9', '9', 6, 'image/png', 2165, 'news/9.png', '[]', '2023-05-02 21:08:11', '2023-05-02 21:08:11', NULL),
(128, 0, '1', '1', 7, 'image/png', 3010, 'promotion/1.png', '[]', '2023-05-02 21:08:11', '2023-05-02 21:08:11', NULL),
(129, 0, '10', '10', 7, 'image/png', 2722, 'promotion/10.png', '[]', '2023-05-02 21:08:12', '2023-05-02 21:08:12', NULL),
(130, 0, '11', '11', 7, 'image/png', 2722, 'promotion/11.png', '[]', '2023-05-02 21:08:12', '2023-05-02 21:08:12', NULL),
(131, 0, '12', '12', 7, 'image/png', 2722, 'promotion/12.png', '[]', '2023-05-02 21:08:12', '2023-05-02 21:08:12', NULL),
(132, 0, '2', '2', 7, 'image/png', 3010, 'promotion/2.png', '[]', '2023-05-02 21:08:12', '2023-05-02 21:08:12', NULL),
(133, 0, '3', '3', 7, 'image/png', 3010, 'promotion/3.png', '[]', '2023-05-02 21:08:12', '2023-05-02 21:08:12', NULL),
(134, 0, '4', '4', 7, 'image/png', 2266, 'promotion/4.png', '[]', '2023-05-02 21:08:12', '2023-05-02 21:08:12', NULL),
(135, 0, '5', '5', 7, 'image/png', 3847, 'promotion/5.png', '[]', '2023-05-02 21:08:12', '2023-05-02 21:08:12', NULL),
(136, 0, '6', '6', 7, 'image/png', 3847, 'promotion/6.png', '[]', '2023-05-02 21:08:12', '2023-05-02 21:08:12', NULL),
(137, 0, '7', '7', 7, 'image/png', 2905, 'promotion/7.png', '[]', '2023-05-02 21:08:12', '2023-05-02 21:08:12', NULL),
(138, 0, '8', '8', 7, 'image/png', 1926, 'promotion/8.png', '[]', '2023-05-02 21:08:12', '2023-05-02 21:08:12', NULL),
(139, 0, '9', '9', 7, 'image/png', 2722, 'promotion/9.png', '[]', '2023-05-02 21:08:12', '2023-05-02 21:08:12', NULL),
(140, 0, 'app-store', 'app-store', 8, 'image/jpeg', 1064, 'general/app-store.jpg', '[]', '2023-05-02 21:08:12', '2023-05-02 21:08:12', NULL),
(141, 0, 'category-1', 'category-1', 8, 'image/png', 231, 'general/category-1.png', '[]', '2023-05-02 21:08:13', '2023-05-02 21:08:13', NULL),
(142, 0, 'facebook', 'facebook', 8, 'image/png', 646, 'general/facebook.png', '[]', '2023-05-02 21:08:13', '2023-05-02 21:08:13', NULL),
(143, 0, 'favicon', 'favicon', 8, 'image/png', 3890, 'general/favicon.png', '[]', '2023-05-02 21:08:13', '2023-05-02 21:08:13', NULL),
(144, 0, 'google-play', 'google-play', 8, 'image/jpeg', 1064, 'general/google-play.jpg', '[]', '2023-05-02 21:08:13', '2023-05-02 21:08:13', NULL),
(145, 0, 'header-bg', 'header-bg', 8, 'image/png', 16995, 'general/header-bg.png', '[]', '2023-05-02 21:08:13', '2023-05-02 21:08:13', NULL),
(146, 0, 'home-6', 'home-6', 8, 'image/jpeg', 799491, 'general/home-6.jpeg', '[]', '2023-05-02 21:08:13', '2023-05-02 21:08:13', NULL),
(147, 0, 'icon-1', 'icon-1', 8, 'image/png', 2024, 'general/icon-1.png', '[]', '2023-05-02 21:08:13', '2023-05-02 21:08:13', NULL),
(148, 0, 'icon-2', 'icon-2', 8, 'image/png', 3531, 'general/icon-2.png', '[]', '2023-05-02 21:08:13', '2023-05-02 21:08:13', NULL),
(149, 0, 'icon-3', 'icon-3', 8, 'image/png', 2344, 'general/icon-3.png', '[]', '2023-05-02 21:08:13', '2023-05-02 21:08:13', NULL),
(150, 0, 'icon-4', 'icon-4', 8, 'image/png', 2314, 'general/icon-4.png', '[]', '2023-05-02 21:08:13', '2023-05-02 21:08:13', NULL),
(151, 0, 'icon-5', 'icon-5', 8, 'image/png', 2853, 'general/icon-5.png', '[]', '2023-05-02 21:08:13', '2023-05-02 21:08:13', NULL),
(152, 0, 'instagram', 'instagram', 8, 'image/png', 2586, 'general/instagram.png', '[]', '2023-05-02 21:08:13', '2023-05-02 21:08:13', NULL),
(153, 0, 'loading', 'loading', 8, 'image/gif', 25062, 'general/loading.gif', '[]', '2023-05-02 21:08:13', '2023-05-02 21:08:13', NULL),
(154, 0, 'login-1', 'login-1', 8, 'image/png', 3099, 'general/login-1.png', '[]', '2023-05-02 21:08:13', '2023-05-02 21:08:13', NULL),
(155, 0, 'logo', 'logo', 8, 'image/png', 16457, 'general/logo.png', '[]', '2023-05-02 21:08:13', '2023-05-02 21:08:13', NULL),
(156, 0, 'newsletter-background-image', 'newsletter-background-image', 8, 'image/png', 28409, 'general/newsletter-background-image.png', '[]', '2023-05-02 21:08:13', '2023-05-02 21:08:13', NULL),
(157, 0, 'newsletter-image', 'newsletter-image', 8, 'image/png', 3997, 'general/newsletter-image.png', '[]', '2023-05-02 21:08:14', '2023-05-02 21:08:14', NULL),
(158, 0, 'open-graph-image', 'open-graph-image', 8, 'image/png', 436809, 'general/open-graph-image.png', '[]', '2023-05-02 21:08:14', '2023-05-02 21:08:14', NULL),
(159, 0, 'payment-methods', 'payment-methods', 8, 'image/png', 268, 'general/payment-methods.png', '[]', '2023-05-02 21:08:14', '2023-05-02 21:08:14', NULL),
(160, 0, 'pinterest', 'pinterest', 8, 'image/png', 2128, 'general/pinterest.png', '[]', '2023-05-02 21:08:14', '2023-05-02 21:08:14', NULL),
(161, 0, 'twitter', 'twitter', 8, 'image/png', 1759, 'general/twitter.png', '[]', '2023-05-02 21:08:14', '2023-05-02 21:08:14', NULL),
(162, 0, 'youtube', 'youtube', 8, 'image/png', 1083, 'general/youtube.png', '[]', '2023-05-02 21:08:14', '2023-05-02 21:08:14', NULL),
(163, 0, '1', '1', 9, 'image/png', 1307, 'stores/1.png', '[]', '2023-05-02 21:08:14', '2023-05-02 21:08:14', NULL),
(164, 0, '10', '10', 9, 'image/png', 1307, 'stores/10.png', '[]', '2023-05-02 21:08:14', '2023-05-02 21:08:14', NULL),
(165, 0, '11', '11', 9, 'image/png', 1307, 'stores/11.png', '[]', '2023-05-02 21:08:14', '2023-05-02 21:08:14', NULL),
(166, 0, '12', '12', 9, 'image/png', 1307, 'stores/12.png', '[]', '2023-05-02 21:08:14', '2023-05-02 21:08:14', NULL),
(167, 0, '13', '13', 9, 'image/png', 1307, 'stores/13.png', '[]', '2023-05-02 21:08:14', '2023-05-02 21:08:14', NULL),
(168, 0, '14', '14', 9, 'image/png', 1307, 'stores/14.png', '[]', '2023-05-02 21:08:14', '2023-05-02 21:08:14', NULL),
(169, 0, '15', '15', 9, 'image/png', 1307, 'stores/15.png', '[]', '2023-05-02 21:08:14', '2023-05-02 21:08:14', NULL),
(170, 0, '16', '16', 9, 'image/png', 1307, 'stores/16.png', '[]', '2023-05-02 21:08:14', '2023-05-02 21:08:14', NULL),
(171, 0, '17', '17', 9, 'image/png', 1307, 'stores/17.png', '[]', '2023-05-02 21:08:14', '2023-05-02 21:08:14', NULL),
(172, 0, '2', '2', 9, 'image/png', 1307, 'stores/2.png', '[]', '2023-05-02 21:08:14', '2023-05-02 21:08:14', NULL),
(173, 0, '3', '3', 9, 'image/png', 1307, 'stores/3.png', '[]', '2023-05-02 21:08:14', '2023-05-02 21:08:14', NULL),
(174, 0, '4', '4', 9, 'image/png', 1307, 'stores/4.png', '[]', '2023-05-02 21:08:15', '2023-05-02 21:08:15', NULL),
(175, 0, '5', '5', 9, 'image/png', 1307, 'stores/5.png', '[]', '2023-05-02 21:08:15', '2023-05-02 21:08:15', NULL),
(176, 0, '6', '6', 9, 'image/png', 1307, 'stores/6.png', '[]', '2023-05-02 21:08:15', '2023-05-02 21:08:15', NULL),
(177, 0, '7', '7', 9, 'image/png', 1307, 'stores/7.png', '[]', '2023-05-02 21:08:15', '2023-05-02 21:08:15', NULL),
(178, 0, '8', '8', 9, 'image/png', 1307, 'stores/8.png', '[]', '2023-05-02 21:08:15', '2023-05-02 21:08:15', NULL),
(179, 0, '9', '9', 9, 'image/png', 1307, 'stores/9.png', '[]', '2023-05-02 21:08:15', '2023-05-02 21:08:15', NULL),
(180, 1, '4', '4', 0, 'image/jpeg', 51573, '4.jpg', '[]', '2023-05-30 22:21:25', '2023-05-30 22:21:25', NULL),
(181, 1, 'BeFunky-collage-7_1597325828', 'BeFunky-collage-7_1597325828', 0, 'image/jpeg', 179057, 'befunky-collage-7-1597325828.jpg', '[]', '2023-05-30 22:22:37', '2023-05-30 22:22:37', NULL),
(182, 1, 'fall-bag-trends', 'fall-bag-trends', 0, 'image/jpeg', 332768, 'fall-bag-trends.jpg', '[]', '2023-05-30 22:23:33', '2023-05-30 22:23:33', NULL),
(183, 1, 'purse-match-guide-2', 'purse-match-guide-2', 0, 'image/webp', 77334, 'purse-match-guide-2.webp', '[]', '2023-05-30 22:24:10', '2023-05-30 22:24:10', NULL),
(184, 1, 'maxresdefault', 'maxresdefault', 0, 'image/jpeg', 99765, 'maxresdefault.jpg', '[]', '2023-05-30 22:24:56', '2023-05-30 22:24:56', NULL),
(185, 1, '6', '6', 0, 'image/jpeg', 80696, '6.jpg', '[]', '2023-05-30 22:25:43', '2023-05-30 22:25:43', NULL),
(186, 1, 'mc-10-1170x752', 'mc-10-1170x752', 0, 'image/jpeg', 173483, 'mc-10-1170x752.jpg', '[]', '2023-05-30 22:26:23', '2023-05-30 22:26:23', NULL),
(187, 1, '04', '04', 0, 'image/jpeg', 313631, '04.jpg', '[]', '2023-05-30 22:27:09', '2023-05-30 22:27:09', NULL),
(188, 1, 'images', 'images', 0, 'image/jpeg', 11381, 'images.jpeg', '[]', '2023-05-30 22:28:08', '2023-05-30 22:28:08', NULL),
(189, 1, 'unnamed', 'unnamed', 0, 'image/png', 32903, 'unnamed.png', '[]', '2023-05-30 22:31:21', '2023-05-30 22:31:21', NULL),
(190, 1, 'pure', 'pure', 0, 'image/png', 11143, 'pure.png', '[]', '2023-05-30 22:31:56', '2023-05-30 22:31:56', NULL),
(191, 1, 'lava', 'lava', 0, 'image/png', 33332, 'lava.png', '[]', '2023-05-30 22:32:27', '2023-05-30 22:32:27', NULL),
(192, 1, 'symphony', 'symphony', 0, 'image/png', 60909, 'symphony.png', '[]', '2023-05-30 22:33:02', '2023-05-30 22:33:02', NULL),
(193, 1, 'iphone-logo-17', 'iphone-logo-17', 0, 'image/png', 116042, 'iphone-logo-17.png', '[]', '2023-05-30 23:37:15', '2023-05-30 23:37:15', NULL),
(194, 1, 'walton', 'walton', 0, 'image/png', 55947, 'walton.png', '[]', '2023-05-30 23:41:12', '2023-05-30 23:41:12', NULL),
(195, 1, 'attachment-123286452', 'attachment-123286452', 0, 'image/png', 80702, 'attachment-123286452.png', '[]', '2023-05-30 23:41:45', '2023-05-30 23:41:45', NULL),
(196, 1, 'product-image-36-346x310', 'product-image-36-346x310', 0, 'image/jpeg', 11262, 'product-image-36-346x310.jpg', '[]', '2023-05-30 23:44:22', '2023-05-30 23:44:22', NULL),
(197, 1, 'download', 'download', 0, 'image/jpeg', 6978, 'download.jpeg', '[]', '2023-05-30 23:45:19', '2023-05-30 23:45:19', NULL),
(198, 1, '0001111085975', '0001111085975', 0, 'image/webp', 14354, '0001111085975.webp', '[]', '2023-05-30 23:46:34', '2023-05-30 23:46:34', NULL),
(199, 1, '21-800x800', '21-800x800', 0, 'image/jpeg', 53938, '21-800x800.jpg', '[]', '2023-05-30 23:47:39', '2023-05-30 23:47:39', NULL),
(200, 1, '84378_640_84378_FV_clean_640', '84378_640_84378_FV_clean_640', 0, 'image/jpeg', 69802, '84378-640-84378-fv-clean-640.jpg', '[]', '2023-05-30 23:48:29', '2023-05-30 23:48:29', NULL),
(201, 1, 'GUEST_3863fbeb-b076-4eb7-8875-f70a000f472e', 'GUEST_3863fbeb-b076-4eb7-8875-f70a000f472e', 0, 'image/jpeg', 30258, 'guest-3863fbeb-b076-4eb7-8875-f70a000f472e.jpeg', '[]', '2023-05-30 23:49:16', '2023-05-30 23:49:16', NULL),
(202, 1, 'GUEST_36004ba0-f373-4b7f-b829-3df13d420bef', 'GUEST_36004ba0-f373-4b7f-b829-3df13d420bef', 0, 'image/jpeg', 37324, 'guest-36004ba0-f373-4b7f-b829-3df13d420bef.jpeg', '[]', '2023-05-30 23:50:13', '2023-05-30 23:50:13', NULL),
(203, 1, 'f23bfd63d6125cffa3a17f2579990b5ee1baf83ad4b2d9797e4f8f16b8bbd3c7', 'f23bfd63d6125cffa3a17f2579990b5ee1baf83ad4b2d9797e4f8f16b8bbd3c7', 0, 'image/jpeg', 25749, 'f23bfd63d6125cffa3a17f2579990b5ee1baf83ad4b2d9797e4f8f16b8bbd3c7.jpeg', '[]', '2023-05-30 23:51:07', '2023-05-30 23:51:07', NULL),
(204, 1, 'foster-farms-wings', 'foster-farms-wings', 0, 'image/png', 202734, 'foster-farms-wings.png', '[]', '2023-05-30 23:52:00', '2023-05-30 23:52:00', NULL),
(205, 1, '000401994-1', '000401994-1', 0, 'image/webp', 88846, '000401994-1.webp', '[]', '2023-05-30 23:53:01', '2023-05-30 23:53:01', NULL),
(206, 1, 'GUEST_8336b720-55d3-4217-bee1-7fb24d70e5e4', 'GUEST_8336b720-55d3-4217-bee1-7fb24d70e5e4', 0, 'image/webp', 16386, 'guest-8336b720-55d3-4217-bee1-7fb24d70e5e4.webp', '[]', '2023-05-30 23:53:50', '2023-05-30 23:53:50', NULL),
(207, 1, '960566440-ECOM', '960566440-ECOM', 0, 'image/webp', 57042, '960566440-ecom.webp', '[]', '2023-05-30 23:54:38', '2023-05-30 23:54:38', NULL),
(208, 1, '317d5a1b-ef04-4056-a0b9-6506e20f7540.239c1c62761c2e79968d9309f6b2ffa2', '317d5a1b-ef04-4056-a0b9-6506e20f7540.239c1c62761c2e79968d9309f6b2ffa2', 0, 'image/webp', 254874, '317d5a1b-ef04-4056-a0b9-6506e20f7540239c1c62761c2e79968d9309f6b2ffa2.webp', '[]', '2023-05-30 23:55:22', '2023-05-30 23:55:22', NULL),
(209, 1, 'images (1)', 'images (1)', 0, 'image/jpeg', 4405, 'images-1.jpeg', '[]', '2023-05-30 23:56:24', '2023-05-30 23:56:24', NULL),
(210, 1, 'Beer_Battered_Fish_Fillets_Club_Pack', 'Beer_Battered_Fish_Fillets_Club_Pack', 0, 'image/webp', 54146, 'beer-battered-fish-fillets-club-pack.webp', '[]', '2023-05-30 23:57:12', '2023-05-30 23:57:12', NULL),
(211, 1, 'haagen-dazs-caramel-cone-ice-cream-pint-1500x1140', 'haagen-dazs-caramel-cone-ice-cream-pint-1500x1140', 0, 'image/png', 58350, 'haagen-dazs-caramel-cone-ice-cream-pint-1500x1140.png', '[]', '2023-05-30 23:57:57', '2023-05-30 23:57:57', NULL),
(212, 1, '81EYUcRCGRL._SL1500_', '81EYUcRCGRL._SL1500_', 0, 'image/jpeg', 119634, '81eyucrcgrl-sl1500.jpg', '[]', '2023-05-30 23:58:43', '2023-05-30 23:58:43', NULL),
(213, 1, 'GUEST_84567422-da44-49a2-8738-0bba52e623c5', 'GUEST_84567422-da44-49a2-8738-0bba52e623c5', 0, 'image/jpeg', 26458, 'guest-84567422-da44-49a2-8738-0bba52e623c5.jpeg', '[]', '2023-05-30 23:59:30', '2023-05-30 23:59:30', NULL),
(214, 1, 'FH-Did-you-know-4', 'FH-Did-you-know-4', 0, 'image/webp', 265504, 'fh-did-you-know-4.webp', '[]', '2023-05-31 00:00:23', '2023-05-31 00:00:23', NULL),
(215, 1, 'GUEST_8ea6b3ca-f4d9-4460-a04a-785d669235d5', 'GUEST_8ea6b3ca-f4d9-4460-a04a-785d669235d5', 0, 'image/jpeg', 46156, 'guest-8ea6b3ca-f4d9-4460-a04a-785d669235d5.jpeg', '[]', '2023-05-31 00:01:17', '2023-05-31 00:01:17', NULL),
(216, 1, '00075278996706-7ZctuDKI1QCXvw-en-US-0_s500', '00075278996706-7ZctuDKI1QCXvw-en-US-0_s500', 0, 'image/jpeg', 54839, '00075278996706-7zctudki1qcxvw-en-us-0-s500.jpg', '[]', '2023-05-31 00:02:16', '2023-05-31 00:02:16', NULL),
(217, 1, 'resize', 'resize', 0, 'image/webp', 79408, 'resize.webp', '[]', '2023-05-31 00:04:10', '2023-05-31 00:04:10', NULL),
(218, 1, 'download (1)', 'download (1)', 0, 'image/jpeg', 11981, 'download-1.jpeg', '[]', '2023-05-31 00:04:50', '2023-05-31 00:04:50', NULL),
(220, 1, 'logo', 'logo', 0, 'image/png', 37835, 'logo.png', '[]', '2023-05-31 00:15:00', '2023-05-31 00:15:00', NULL),
(221, 1, 'fav', 'fav', 0, 'image/png', 148520, 'fav.png', '[]', '2023-05-31 00:15:17', '2023-05-31 00:15:17', NULL),
(222, 1, 'photo-1529539795054-3c162aab037a', 'photo-1529539795054-3c162aab037a', 0, 'image/jpeg', 114715, 'photo-1529539795054-3c162aab037a.jpeg', '[]', '2023-05-31 00:16:04', '2023-05-31 00:16:04', NULL),
(223, 1, '04 (1)', '04 (1)', 0, 'image/jpeg', 313631, '04-1.jpg', '[]', '2023-05-31 06:17:27', '2023-05-31 06:17:27', NULL),
(224, 1, 'login-1-150x150', 'login-1-150x150', 0, 'image/png', 35100, 'login-1-150x150.png', '[]', '2023-05-31 06:25:58', '2023-05-31 06:25:58', NULL),
(225, 1, '1-1', '1-1', 0, 'image/png', 519229, '1-1.png', '[]', '2023-05-31 06:31:36', '2023-05-31 06:31:36', NULL),
(226, 1, '1-2', '1-2', 0, 'image/png', 468469, '1-2.png', '[]', '2023-05-31 06:32:38', '2023-05-31 06:32:38', NULL),
(227, 1, '2-1', '2-1', 0, 'image/png', 159240, '2-1.png', '[]', '2023-05-31 06:34:30', '2023-05-31 06:34:30', NULL),
(228, 1, '2-2', '2-2', 0, 'image/png', 113574, '2-2.png', '[]', '2023-05-31 06:35:17', '2023-05-31 06:35:17', NULL),
(229, 1, '1-1-1', '1-1-1', 0, 'image/png', 519229, '1-1-1.png', '[]', '2023-05-31 06:37:04', '2023-05-31 06:37:04', NULL),
(230, 1, '4-1', '4-1', 0, 'image/png', 618556, '4-1.png', '[]', '2023-05-31 06:39:45', '2023-05-31 06:39:45', NULL),
(231, 1, '4-1 (1)', '4-1 (1)', 0, 'image/png', 618556, '4-1-1.png', '[]', '2023-05-31 06:40:52', '2023-05-31 06:40:52', NULL),
(232, 1, '4-2', '4-2', 0, 'image/png', 949745, '4-2.png', '[]', '2023-05-31 06:41:45', '2023-05-31 06:41:45', NULL),
(233, 1, 'icon-1 (1)', 'icon-1 (1)', 0, 'image/png', 4323, 'icon-1-1.png', '[]', '2023-05-31 06:44:19', '2023-05-31 06:44:19', NULL),
(234, 1, 'icon-2', 'icon-2', 0, 'image/png', 3204, 'icon-2.png', '[]', '2023-05-31 06:44:47', '2023-05-31 06:44:47', NULL),
(235, 1, 'icon-3', 'icon-3', 0, 'image/png', 4184, 'icon-3.png', '[]', '2023-05-31 06:45:19', '2023-05-31 06:45:19', NULL),
(236, 1, 'icon-4', 'icon-4', 0, 'image/png', 4648, 'icon-4.png', '[]', '2023-05-31 06:45:45', '2023-05-31 06:45:45', NULL),
(237, 1, 'icon-5', 'icon-5', 0, 'image/png', 4594, 'icon-5.png', '[]', '2023-05-31 06:46:11', '2023-05-31 06:46:11', NULL),
(238, 1, 'icon-6', 'icon-6', 0, 'image/png', 3518, 'icon-6.png', '[]', '2023-05-31 06:46:44', '2023-05-31 06:46:44', NULL),
(239, 1, 'icon-7', 'icon-7', 0, 'image/png', 3829, 'icon-7.png', '[]', '2023-05-31 06:47:17', '2023-05-31 06:47:17', NULL),
(240, 1, 'icon-8', 'icon-8', 0, 'image/png', 4815, 'icon-8.png', '[]', '2023-05-31 06:47:45', '2023-05-31 06:47:45', NULL),
(241, 1, 'icon-9', 'icon-9', 0, 'image/png', 3126, 'icon-9.png', '[]', '2023-05-31 06:48:08', '2023-05-31 06:48:08', NULL),
(242, 1, 'icon-10', 'icon-10', 0, 'image/png', 4357, 'icon-10.png', '[]', '2023-05-31 06:48:31', '2023-05-31 06:48:31', NULL),
(243, 1, 'icon-11', 'icon-11', 0, 'image/png', 2024, 'icon-11.png', '[]', '2023-05-31 06:49:09', '2023-05-31 06:49:09', NULL),
(244, 1, 'icon-12', 'icon-12', 0, 'image/png', 3531, 'icon-12.png', '[]', '2023-05-31 06:49:36', '2023-05-31 06:49:36', NULL),
(245, 1, 'icon-13', 'icon-13', 0, 'image/png', 2344, 'icon-13.png', '[]', '2023-05-31 06:50:00', '2023-05-31 06:50:00', NULL),
(246, 1, 'icon-14', 'icon-14', 0, 'image/png', 2314, 'icon-14.png', '[]', '2023-05-31 06:50:26', '2023-05-31 06:50:26', NULL),
(247, 1, '5-2', '5-2', 0, 'image/png', 695846, '5-2.png', '[]', '2023-05-31 06:51:51', '2023-05-31 06:51:51', NULL),
(248, 1, '5-1', '5-1', 0, 'image/png', 1273599, '5-1.png', '[]', '2023-05-31 06:52:43', '2023-05-31 06:52:43', NULL),
(249, 1, 'thumbnail-1', 'thumbnail-1', 0, 'image/jpeg', 28966, 'thumbnail-1.jpg', '[]', '2023-05-31 06:57:25', '2023-05-31 06:57:25', NULL),
(250, 1, 'thumbnail-2', 'thumbnail-2', 0, 'image/jpeg', 13975, 'thumbnail-2.jpg', '[]', '2023-05-31 06:58:39', '2023-05-31 06:58:39', NULL),
(251, 1, 'thumbnail-3', 'thumbnail-3', 0, 'image/jpeg', 15751, 'thumbnail-3.jpg', '[]', '2023-05-31 06:59:22', '2023-05-31 06:59:22', NULL),
(252, 1, 'thumbnail-4', 'thumbnail-4', 0, 'image/jpeg', 16846, 'thumbnail-4.jpg', '[]', '2023-05-31 06:59:50', '2023-05-31 06:59:50', NULL),
(253, 1, 'thumbnail-6', 'thumbnail-6', 0, 'image/jpeg', 63412, 'thumbnail-6.jpg', '[]', '2023-05-31 07:00:29', '2023-05-31 07:00:29', NULL),
(254, 1, 'thumbnail-5', 'thumbnail-5', 0, 'image/jpeg', 24938, 'thumbnail-5.jpg', '[]', '2023-05-31 07:01:02', '2023-05-31 07:01:02', NULL),
(255, 1, '3', '3', 0, 'image/png', 65066, '3.png', '[]', '2023-05-31 07:05:44', '2023-05-31 07:05:44', NULL),
(256, 1, '4-3', '4-3', 0, 'image/png', 62462, '4-3.png', '[]', '2023-05-31 07:07:12', '2023-05-31 07:07:12', NULL),
(257, 1, '6-1', '6-1', 0, 'image/png', 190175, '6-1.png', '[]', '2023-05-31 07:08:12', '2023-05-31 07:08:12', NULL),
(258, 1, '7', '7', 0, 'image/png', 272480, '7.png', '[]', '2023-05-31 07:14:41', '2023-05-31 07:14:41', NULL),
(259, 1, '8-2', '8-2', 2, 'image/png', 73547, 'products/8-2.png', '[]', '2023-05-31 07:17:01', '2023-05-31 07:17:01', NULL),
(260, 1, '9', '9', 0, 'image/png', 126894, '9.png', '[]', '2023-05-31 07:18:18', '2023-05-31 07:18:18', NULL),
(261, 1, '10', '10', 0, 'image/png', 108470, '10.png', '[]', '2023-05-31 07:19:13', '2023-05-31 07:19:13', NULL),
(262, 1, '11', '11', 0, 'image/png', 106453, '11.png', '[]', '2023-05-31 07:20:13', '2023-05-31 07:20:13', NULL),
(263, 1, '12', '12', 0, 'image/png', 104430, '12.png', '[]', '2023-05-31 07:20:56', '2023-05-31 07:20:56', NULL),
(264, 1, '2', '2', 0, 'image/png', 38339, '2.png', '[]', '2023-05-31 07:22:00', '2023-05-31 07:22:00', NULL),
(265, 1, '1', '1', 0, 'image/png', 50119, '1.png', '[]', '2023-05-31 07:23:00', '2023-05-31 07:23:00', NULL),
(266, 1, '1 (1)', '1 (1)', 0, 'image/png', 431894, '1-1.png', '[]', '2023-05-31 07:26:33', '2023-05-31 07:26:33', NULL),
(267, 1, '1 (2)', '1 (2)', 0, 'image/png', 431894, '1-2.png', '[]', '2023-05-31 07:26:52', '2023-05-31 07:26:52', NULL),
(268, 1, '1 (2)', '1 (2)', 4, 'image/png', 431894, 'flash-sales/1-2.png', '[]', '2023-05-31 07:27:21', '2023-05-31 07:27:21', NULL),
(269, 1, '1 (2)-1', '1 (2)-1', 0, 'image/png', 431894, '1-2-1.png', '[]', '2023-05-31 07:30:36', '2023-05-31 07:30:36', NULL),
(270, 1, '5-1', '5-1', 4, 'image/png', 153833, 'flash-sales/5-1.png', '[]', '2023-05-31 07:30:54', '2023-05-31 07:30:54', NULL),
(271, 1, '4 (1)', '4 (1)', 0, 'image/png', 195017, '4-1.png', '[]', '2023-05-31 07:32:29', '2023-05-31 07:32:29', NULL),
(272, 1, '4 (2)', '4 (2)', 4, 'image/png', 195017, 'flash-sales/4-2.png', '[]', '2023-05-31 07:32:45', '2023-05-31 07:32:45', NULL),
(273, 1, '3 (1)', '3 (1)', 0, 'image/png', 163085, '3-1.png', '[]', '2023-05-31 07:34:11', '2023-05-31 07:34:11', NULL),
(274, 1, '2 (1)', '2 (1)', 0, 'image/png', 118543, '2-1.png', '[]', '2023-05-31 07:36:05', '2023-05-31 07:36:05', NULL),
(275, 1, '2 (1)', '2 (1)', 4, 'image/png', 118543, 'flash-sales/2-1.png', '[]', '2023-05-31 07:36:16', '2023-05-31 07:36:16', NULL),
(276, 1, 'app-store', 'app-store', 4, 'image/jpeg', 29714, 'flash-sales/app-store.jpg', '[]', '2023-05-31 07:48:17', '2023-05-31 07:48:17', NULL),
(277, 1, 'google-play', 'google-play', 4, 'image/jpeg', 29477, 'flash-sales/google-play.jpg', '[]', '2023-05-31 07:48:32', '2023-05-31 07:48:32', NULL),
(278, 1, 'ev9xPxiiHYy2mWAroxUdrfjTMnlNtVAmM04zh3Rx', 'ev9xPxiiHYy2mWAroxUdrfjTMnlNtVAmM04zh3Rx', 4, 'image/png', 97309, 'flash-sales/ev9xpxiihyy2mwaroxudrfjtmnlntvamm04zh3rx.png', '[]', '2023-05-31 07:49:08', '2023-05-31 07:49:08', NULL),
(279, 1, 'sslcom', 'sslcom', 4, 'image/png', 51546, 'flash-sales/sslcom.png', '[]', '2023-05-31 07:50:35', '2023-05-31 07:50:35', NULL),
(280, 1, 'newsletter-image', 'newsletter-image', 4, 'image/png', 116235, 'flash-sales/newsletter-image.png', '[]', '2023-05-31 07:51:47', '2023-05-31 07:51:47', NULL),
(281, 1, '3 (2)', '3 (2)', 4, 'image/png', 10778, 'flash-sales/3-2.png', '[]', '2023-05-31 07:59:00', '2023-05-31 07:59:00', NULL),
(282, 1, '16', '16', 4, 'image/png', 4659, 'flash-sales/16.png', '[]', '2023-05-31 07:59:42', '2023-05-31 07:59:42', NULL),
(283, 1, '11 (1)', '11 (1)', 4, 'image/png', 6934, 'flash-sales/11-1.png', '[]', '2023-05-31 08:00:16', '2023-05-31 08:00:16', NULL),
(284, 1, '6 (1)', '6 (1)', 4, 'image/png', 14006, 'flash-sales/6-1.png', '[]', '2023-05-31 08:00:49', '2023-05-31 08:00:49', NULL),
(285, 1, '5 (1)', '5 (1)', 4, 'image/png', 13041, 'flash-sales/5-1.png', '[]', '2023-05-31 08:01:18', '2023-05-31 08:01:18', NULL),
(286, 1, '15', '15', 4, 'image/png', 7142, 'flash-sales/15.png', '[]', '2023-05-31 08:01:59', '2023-05-31 08:01:59', NULL),
(287, 1, 'banner-1', 'banner-1', 4, 'image/png', 104000, 'flash-sales/banner-1.png', '[]', '2023-05-31 08:19:09', '2023-05-31 08:19:09', NULL),
(288, 1, '317d5a1b-ef04-4056-a0b9-6506e20f7540239c1c62761c2e79968d9309f6b2ffa2-150x150', '317d5a1b-ef04-4056-a0b9-6506e20f7540239c1c62761c2e79968d9309f6b2ffa2-150x150', 4, 'image/webp', 3540, 'flash-sales/317d5a1b-ef04-4056-a0b9-6506e20f7540239c1c62761c2e79968d9309f6b2ffa2-150x150.webp', '[]', '2023-05-31 08:33:58', '2023-05-31 08:33:58', NULL),
(289, 1, 'f23bfd63d6125cffa3a17f2579990b5ee1baf83ad4b2d9797e4f8f16b8bbd3c7', 'f23bfd63d6125cffa3a17f2579990b5ee1baf83ad4b2d9797e4f8f16b8bbd3c7', 4, 'image/jpeg', 25749, 'flash-sales/f23bfd63d6125cffa3a17f2579990b5ee1baf83ad4b2d9797e4f8f16b8bbd3c7.jpeg', '[]', '2023-05-31 08:35:52', '2023-05-31 08:35:52', NULL),
(290, 1, '81eyucrcgrl-sl1500-150x150', '81eyucrcgrl-sl1500-150x150', 4, 'image/jpeg', 6345, 'flash-sales/81eyucrcgrl-sl1500-150x150.jpg', '[]', '2023-05-31 08:38:44', '2023-05-31 08:38:44', NULL),
(291, 1, '298737170_435256305288617_5919111556804315091_n', '298737170_435256305288617_5919111556804315091_n', 0, 'image/png', 6857, '298737170-435256305288617-5919111556804315091-n.png', '[]', '2023-11-23 20:05:15', '2023-11-23 20:05:15', NULL),
(292, 1, '298737170_435256305288617_5919111556804315091_n', '298737170_435256305288617_5919111556804315091_n', 10, 'image/png', 6857, 'users/298737170-435256305288617-5919111556804315091-n.png', '[]', '2023-11-23 20:12:35', '2023-11-23 20:12:35', NULL),
(293, 1, '21726742839', '21726742839', 0, 'image/png', 559992, '21726742839.png', '[]', '2024-09-20 10:55:25', '2024-09-20 10:55:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'product-categories', 'product-categories', 0, '2023-05-02 21:07:59', '2023-05-02 21:07:59', NULL),
(2, 0, 'products', 'products', 0, '2023-05-02 21:08:01', '2023-05-02 21:08:01', NULL),
(3, 0, 'customers', 'customers', 0, '2023-05-02 21:08:06', '2023-05-02 21:08:06', NULL),
(4, 0, 'flash-sales', 'flash-sales', 0, '2023-05-02 21:08:08', '2023-05-02 21:08:08', NULL),
(5, 0, 'sliders', 'sliders', 0, '2023-05-02 21:08:08', '2023-05-02 21:08:08', NULL),
(6, 0, 'news', 'news', 0, '2023-05-02 21:08:10', '2023-05-02 21:08:10', NULL),
(7, 0, 'promotion', 'promotion', 0, '2023-05-02 21:08:11', '2023-05-02 21:08:11', NULL),
(8, 0, 'general', 'general', 0, '2023-05-02 21:08:12', '2023-05-02 21:08:12', NULL),
(9, 0, 'stores', 'stores', 0, '2023-05-02 21:08:14', '2023-05-02 21:08:14', NULL),
(10, 1, 'users', 'users', 0, '2023-05-31 00:11:01', '2023-05-31 00:11:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(2, 'Header menu', 'header-menu', 'published', '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(3, 'Product categories', 'product-categories', 'published', '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(4, 'Information', 'information', 'published', '2023-05-02 21:08:15', '2023-07-02 19:36:28'),
(5, 'Company', 'company', 'published', '2023-05-02 21:08:15', '2023-05-02 21:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint UNSIGNED NOT NULL,
  `menu_id` bigint UNSIGNED NOT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(2, 2, 'header-navigation', '2023-05-02 21:08:15', '2023-05-02 21:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint UNSIGNED NOT NULL,
  `menu_id` bigint UNSIGNED NOT NULL,
  `parent_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `reference_id` bigint UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, NULL, NULL, '/', 'fi-rs-home', 0, 'Home', NULL, '_self', 1, '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(2, 1, 1, 1, 'Botble\\Page\\Models\\Page', '/homepage', NULL, 0, 'Home 1', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:16'),
(3, 1, 1, 2, 'Botble\\Page\\Models\\Page', '/homepage-2', NULL, 0, 'Home 2', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:16'),
(4, 1, 1, 3, 'Botble\\Page\\Models\\Page', '/homepage-3', NULL, 0, 'Home 3', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:16'),
(5, 1, 1, 4, 'Botble\\Page\\Models\\Page', '/homepage-4', NULL, 0, 'Home 4', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:16'),
(6, 1, 1, 16, 'Botble\\Page\\Models\\Page', '/homepage-5', NULL, 0, 'Home 5', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:16'),
(7, 1, 1, 17, 'Botble\\Page\\Models\\Page', '/homepage-6', NULL, 0, 'Home 6', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:16'),
(8, 1, 0, NULL, NULL, '/products', NULL, 0, 'Shop', NULL, '_self', 1, '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(9, 1, 8, NULL, NULL, '/products', NULL, 0, 'Shop Grid - Full Width', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(10, 1, 8, NULL, NULL, '/products?layout=product-right-sidebar', NULL, 0, 'Shop Grid - Right Sidebar', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(11, 1, 8, NULL, NULL, '/products?layout=product-left-sidebar', NULL, 0, 'Shop Grid - Left Sidebar', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(12, 1, 8, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/milks-and-dairies-1', NULL, 0, 'Products Of Category', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-31 06:44:29'),
(13, 1, 0, NULL, NULL, '/stores', NULL, 0, 'Stores', NULL, '_self', 1, '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(14, 1, 13, NULL, NULL, '/stores', NULL, 0, 'Stores - Grid', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(15, 1, 13, NULL, NULL, '/stores?layout=stores-list', NULL, 0, 'Stores - List', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(16, 1, 13, NULL, NULL, '/stores/gopro', NULL, 0, 'Store - Detail', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(17, 1, 0, NULL, NULL, '/products/seeds-of-change-organic-quinoe', NULL, 0, 'Product', NULL, '_self', 1, '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(18, 1, 17, NULL, NULL, '/products/seeds-of-change-organic-quinoe', NULL, 0, 'Product Right Sidebar', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(19, 1, 17, NULL, NULL, '/products/all-natural-italian-style-chicken-meatballs', NULL, 0, 'Product Left Sidebar', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(20, 1, 17, NULL, NULL, '/products/angies-boomchickapop-sweet-salty-kettle-corn', NULL, 0, 'Product Full Width', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(21, 1, 0, 5, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog', NULL, '_self', 1, '2023-05-02 21:08:15', '2023-05-02 21:08:16'),
(22, 1, 21, 5, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog Grid', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:16'),
(23, 1, 21, 13, 'Botble\\Page\\Models\\Page', '/blog-list', NULL, 0, 'Blog List', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:16'),
(24, 1, 21, 14, 'Botble\\Page\\Models\\Page', '/blog-big', NULL, 0, 'Blog Big', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:16'),
(25, 1, 21, 15, 'Botble\\Page\\Models\\Page', '/blog-wide', NULL, 0, 'Blog Wide', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:16'),
(26, 1, 21, NULL, NULL, '/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet', NULL, 0, 'Single Post', NULL, '_self', 1, '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(27, 1, 26, NULL, NULL, '/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet', NULL, 0, 'Single Post Right Sidebar', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(28, 1, 26, NULL, NULL, '/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', NULL, 0, 'Single Post Left Sidebar', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(29, 1, 26, NULL, NULL, '/blog/the-top-2020-handbag-trends-to-know', NULL, 0, 'Single Post Full Width', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(30, 1, 26, NULL, NULL, '/blog/how-to-match-the-color-of-your-handbag-with-an-outfit', NULL, 0, 'Single Post with Product Listing', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(31, 1, 0, 18, 'Botble\\Page\\Models\\Page', '/faq', NULL, 0, 'FAQ', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:16'),
(32, 1, 0, 6, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:16'),
(33, 2, 0, 7, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'About Us', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:16'),
(34, 2, 0, NULL, NULL, '/orders/tracking', NULL, 0, 'Order Tracking', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(35, 3, 0, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/milks-and-dairies-1', NULL, 0, 'Men', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-31 06:44:29'),
(36, 3, 0, 2, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/clothing-beauty', NULL, 0, 'Women', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:16'),
(37, 3, 0, 3, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/pet-toy', NULL, 0, 'Accessories', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:16'),
(38, 3, 0, 4, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/baking-material', NULL, 0, 'Shoes', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:16'),
(39, 3, 0, 5, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/fresh-fruit', NULL, 0, 'Denim', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:16'),
(40, 3, 0, 6, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/wines-drinks', NULL, 0, 'Dress', NULL, '_self', 0, '2023-05-02 21:08:15', '2023-05-02 21:08:16'),
(41, 4, 0, 6, 'Botble\\Page\\Models\\Page', '/contact', '', 0, 'Contact Us', '', '_self', 0, '2023-05-02 21:08:15', '2023-07-02 19:36:28'),
(42, 4, 0, 7, 'Botble\\Page\\Models\\Page', '/about-us', '', 1, 'About Us', '', '_self', 0, '2023-05-02 21:08:15', '2023-07-02 19:36:28'),
(43, 4, 0, 8, 'Botble\\Page\\Models\\Page', '/cookie-policy', '', 2, 'Cookie Policy', '', '_self', 0, '2023-05-02 21:08:15', '2023-07-02 19:36:28'),
(44, 4, 0, 9, 'Botble\\Page\\Models\\Page', '/terms-conditions', '', 3, 'Terms & Conditions', '', '_self', 0, '2023-05-02 21:08:15', '2023-07-02 19:36:28'),
(45, 4, 0, 10, 'Botble\\Page\\Models\\Page', '/returns-exchanges', '', 4, 'Returns & Exchanges', '', '_self', 0, '2023-05-02 21:08:15', '2023-07-02 19:36:28'),
(46, 4, 0, 11, 'Botble\\Page\\Models\\Page', '/shipping-delivery', '', 5, 'Shipping & Delivery', '', '_self', 0, '2023-05-02 21:08:15', '2023-07-02 19:36:28'),
(47, 4, 0, 12, 'Botble\\Page\\Models\\Page', '/privacy-policy', '', 6, 'Privacy Policy', '', '_self', 0, '2023-05-02 21:08:15', '2023-07-02 19:36:28'),
(48, 5, 0, 7, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'About us', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(49, 5, 0, NULL, NULL, '#', NULL, 0, 'Affiliate', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(50, 5, 0, NULL, NULL, '#', NULL, 0, 'Career', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(51, 5, 0, 6, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact us', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(52, 6, 0, NULL, NULL, '/', NULL, 0, 'Trang chủ', NULL, '_self', 1, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(53, 6, 52, 1, 'Botble\\Page\\Models\\Page', '/homepage', NULL, 0, 'Trang chủ 1', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(54, 6, 52, 2, 'Botble\\Page\\Models\\Page', '/homepage-2', NULL, 0, 'Trang chủ 2', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(55, 6, 52, 3, 'Botble\\Page\\Models\\Page', '/homepage-3', NULL, 0, 'Trang chủ 3', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(56, 6, 52, 4, 'Botble\\Page\\Models\\Page', '/homepage-4', NULL, 0, 'Trang chủ 4', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(57, 6, 52, 16, 'Botble\\Page\\Models\\Page', '/homepage-5', NULL, 0, 'Trang chủ 5', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(58, 6, 52, 17, 'Botble\\Page\\Models\\Page', '/homepage-6', NULL, 0, 'Trang chủ 6', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(59, 6, 0, NULL, NULL, '/products', NULL, 0, 'Bán hàng', NULL, '_self', 1, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(60, 6, 59, NULL, NULL, '/products', NULL, 0, 'Tất cả sản phẩm', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(61, 6, 59, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/milks-and-dairies-1', NULL, 0, 'Danh mục sản phẩm', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-31 06:44:29'),
(62, 6, 0, NULL, NULL, '/stores', NULL, 0, 'Cửa hàng', NULL, '_self', 1, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(63, 6, 62, NULL, NULL, '/stores', NULL, 0, 'Cửa hàng - Grid', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(64, 6, 62, NULL, NULL, '/stores?layout=stores-list', NULL, 0, 'Cửa hàng - List', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(65, 6, 62, NULL, NULL, '/stores/gopro', NULL, 0, 'Cửa hàng - Detail', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(66, 6, 0, NULL, NULL, '#', NULL, 0, 'Sản phẩm', NULL, '_self', 1, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(67, 6, 66, NULL, NULL, '/products/seeds-of-change-organic-quinoe', NULL, 0, 'Sản phẩm Sidebar phải', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(68, 6, 66, NULL, NULL, '/products/all-natural-italian-style-chicken-meatballs', NULL, 0, 'Sản phẩm Sidebar trái', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(69, 6, 66, NULL, NULL, '/products/angies-boomchickapop-sweet-salty-kettle-corn', NULL, 0, 'Sản phẩm full width', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(70, 6, 0, 5, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Tin tức', NULL, '_self', 1, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(71, 6, 70, 5, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Tin tức Sidebar phải', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(72, 6, 70, 13, 'Botble\\Page\\Models\\Page', '/blog-list', NULL, 0, 'Tin tức Sidebar trái', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(73, 6, 70, NULL, NULL, '/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet', NULL, 0, 'Bài viết Sidebar phải', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(74, 6, 70, NULL, NULL, '/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', NULL, 0, 'Bài viết Sidebar trái', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(75, 6, 70, NULL, NULL, '/blog/the-top-2020-handbag-trends-to-know', NULL, 0, 'Bài viết Full Width', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(76, 6, 70, NULL, NULL, '/blog/how-to-match-the-color-of-your-handbag-with-an-outfit', NULL, 0, 'Bài viết kèm sản phẩm', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(77, 6, 0, 18, 'Botble\\Page\\Models\\Page', '/faq', NULL, 0, 'FAQ', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(78, 6, 0, 6, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(79, 7, 0, 8, 'Botble\\Page\\Models\\Page', '/cookie-policy', NULL, 0, 'Về Chúng Tôi', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(80, 7, 0, NULL, NULL, '/orders/tracking', NULL, 0, 'Theo Dõi Đơn Hàng', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(81, 8, 0, 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/milks-and-dairies-1', NULL, 0, 'Sữa', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-31 06:44:29'),
(82, 8, 0, 2, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/clothing-beauty', NULL, 0, 'Quần áo và làm đẹp', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(83, 8, 0, 3, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/pet-toy', NULL, 0, 'Đồ chơi thú cưng', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(84, 8, 0, 4, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/baking-material', NULL, 0, 'Nguyên liệu làm bánh', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(85, 8, 0, 5, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/fresh-fruit', NULL, 0, 'Trái cây tươi', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(86, 8, 0, 6, 'Botble\\Ecommerce\\Models\\ProductCategory', '/product-categories/wines-drinks', NULL, 0, 'Rượu & Đồ uống', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(87, 9, 0, 6, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(88, 9, 0, 8, 'Botble\\Page\\Models\\Page', '/cookie-policy', NULL, 0, 'Về chúng tôi', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(89, 9, 0, 9, 'Botble\\Page\\Models\\Page', '/terms-conditions', NULL, 0, 'Điều khoản & quy định', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(90, 9, 0, 10, 'Botble\\Page\\Models\\Page', '/returns-exchanges', NULL, 0, 'Chính sách đổi trả', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(91, 9, 0, 11, 'Botble\\Page\\Models\\Page', '/shipping-delivery', NULL, 0, 'Chính sách vận chuyển', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(92, 9, 0, 12, 'Botble\\Page\\Models\\Page', '/privacy-policy', NULL, 0, 'Chính sách bảo mật', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(93, 10, 0, 7, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'Về chúng tôi', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(94, 10, 0, NULL, NULL, '#', NULL, 0, 'Tiếp thị liên kết', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(95, 10, 0, NULL, NULL, '#', NULL, 0, 'Tuyển dụng', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16'),
(96, 10, 0, 6, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2023-05-02 21:08:16', '2023-05-02 21:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint UNSIGNED NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 'icon_image', '[\"icon-1-1.png\"]', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-31 06:44:29'),
(2, 'background_color', '[\"#F2FCE4\"]', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(3, 'icon_image', '[\"icon-2.png\"]', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-31 06:44:56'),
(4, 'background_color', '[\"#FFFCEB\"]', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(5, 'icon_image', '[\"icon-3.png\"]', 3, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-31 06:45:28'),
(6, 'background_color', '[\"#ECFFEC\"]', 3, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(7, 'icon_image', '[\"icon-4.png\"]', 4, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-31 06:45:53'),
(8, 'background_color', '[\"#FEEFEA\"]', 4, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(9, 'icon_image', '[\"icon-5.png\"]', 5, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-31 06:46:21'),
(10, 'background_color', '[\"#FFF3EB\"]', 5, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(11, 'icon_image', '[\"icon-6.png\"]', 6, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-31 06:46:58'),
(12, 'background_color', '[\"#FFF3FF\"]', 6, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(13, 'icon_image', '[\"icon-7.png\"]', 7, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-31 06:47:29'),
(14, 'background_color', '[\"#F2FCE4\"]', 7, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(15, 'icon_image', '[\"icon-8.png\"]', 8, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-31 06:47:54'),
(16, 'background_color', '[\"#FFFCEB\"]', 8, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(17, 'icon_image', '[\"icon-9.png\"]', 9, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-31 06:48:16'),
(18, 'background_color', '[\"#ECFFEC\"]', 9, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(19, 'icon_image', '[\"icon-10.png\"]', 10, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-31 06:48:42'),
(20, 'background_color', '[\"#FEEFEA\"]', 10, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(21, 'icon_image', '[\"icon-11.png\"]', 11, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-31 06:49:19'),
(22, 'background_color', '[\"#FFF3EB\"]', 11, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(23, 'icon_image', '[\"icon-12.png\"]', 12, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-31 06:49:43'),
(24, 'background_color', '[\"#FFF3FF\"]', 12, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(25, 'icon_image', '[\"icon-13.png\"]', 13, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-31 06:50:09'),
(26, 'background_color', '[\"#F2FCE4\"]', 13, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(27, 'icon_image', '[\"icon-14.png\"]', 14, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-31 06:50:34'),
(28, 'background_color', '[\"#FFFCEB\"]', 14, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(68, 'image', '[\"flash-sales\\/1-2.png\"]', 1, 'Botble\\Ecommerce\\Models\\FlashSale', '2023-05-02 21:08:08', '2023-05-31 07:28:57'),
(69, 'image', '[\"flash-sales\\/2-1.png\"]', 2, 'Botble\\Ecommerce\\Models\\FlashSale', '2023-05-02 21:08:08', '2023-05-31 07:36:28'),
(70, 'image', '[\"3-1.png\"]', 3, 'Botble\\Ecommerce\\Models\\FlashSale', '2023-05-02 21:08:08', '2023-05-31 07:34:18'),
(71, 'image', '[\"flash-sales\\/4-2.png\"]', 4, 'Botble\\Ecommerce\\Models\\FlashSale', '2023-05-02 21:08:08', '2023-05-31 07:32:55'),
(72, 'image', '[\"flash-sales\\/5-1.png\"]', 5, 'Botble\\Ecommerce\\Models\\FlashSale', '2023-05-02 21:08:08', '2023-05-31 07:31:07'),
(73, 'vi_image', '[\"flash-sales\\/1.png\"]', 1, 'Botble\\Ecommerce\\Models\\FlashSale', '2023-05-02 21:08:08', '2023-05-02 21:08:08'),
(74, 'vi_image', '[\"flash-sales\\/2.png\"]', 2, 'Botble\\Ecommerce\\Models\\FlashSale', '2023-05-02 21:08:08', '2023-05-02 21:08:08'),
(75, 'vi_image', '[\"flash-sales\\/3.png\"]', 3, 'Botble\\Ecommerce\\Models\\FlashSale', '2023-05-02 21:08:08', '2023-05-02 21:08:08'),
(76, 'vi_image', '[\"flash-sales\\/4.png\"]', 4, 'Botble\\Ecommerce\\Models\\FlashSale', '2023-05-02 21:08:08', '2023-05-02 21:08:08'),
(77, 'vi_image', '[\"flash-sales\\/5.png\"]', 5, 'Botble\\Ecommerce\\Models\\FlashSale', '2023-05-02 21:08:08', '2023-05-02 21:08:08'),
(78, 'simple_slider_style', '[\"style-4\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(79, 'simple_slider_style', '[\"style-2\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(80, 'simple_slider_style', '[\"style-3\"]', 3, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(81, 'simple_slider_style', '[\"style-1\"]', 4, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(82, 'simple_slider_style', '[\"style-5\"]', 5, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(83, 'simple_slider_style', '[\"style-6\"]', 6, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(84, 'simple_slider_style', '[\"style-1\"]', 7, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(85, 'simple_slider_style', '[\"style-4\"]', 8, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(86, 'simple_slider_style', '[\"style-2\"]', 9, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(87, 'simple_slider_style', '[\"style-3\"]', 10, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(88, 'simple_slider_style', '[\"style-1\"]', 11, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(89, 'simple_slider_style', '[\"style-5\"]', 12, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(90, 'simple_slider_style', '[\"style-6\"]', 13, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(91, 'simple_slider_style', '[\"style-1\"]', 14, 'Botble\\SimpleSlider\\Models\\SimpleSlider', '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(92, 'layout', '[\"blog-post-right-sidebar\"]', 1, 'Botble\\Blog\\Models\\Post', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(93, 'layout', '[\"blog-post-left-sidebar\"]', 2, 'Botble\\Blog\\Models\\Post', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(94, 'layout', '[\"blog-post-full-width\"]', 3, 'Botble\\Blog\\Models\\Post', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(95, 'layout', '[\"blog-post-full-width\"]', 4, 'Botble\\Blog\\Models\\Post', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(96, 'header_style', '[\"header-style-5\"]', 16, 'Botble\\Page\\Models\\Page', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(97, 'header_style', '[\"header-style-5\"]', 17, 'Botble\\Page\\Models\\Page', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(98, 'button_text', '[\"Shop now\"]', 1, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(99, 'subtitle', '[\"Everyday Fresh & \\r\\nClean with Our \\r\\nProducts\"]', 1, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-31 07:23:08'),
(100, 'button_text', '[\"Shop now\"]', 2, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(101, 'subtitle', '[\"Make your Breakfast Healthy and Easy\"]', 2, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(102, 'button_text', '[\"Shop now\"]', 3, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(103, 'subtitle', '[\"The best Organic Products Online\"]', 3, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(104, 'button_text', '[\"Shop now\"]', 4, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(105, 'subtitle', '[\"Bring nature into your home\"]', 4, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(106, 'button_text', '[\"Shop now\"]', 5, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(107, 'subtitle', '[\"Delivered to your home\"]', 5, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(108, 'button_text', '[\"Shop now\"]', 6, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(109, 'subtitle', '[\"Save 17% <br \\/>on Oganic <br \\/>Juice\"]', 6, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(110, 'button_text', '[\"Shop now\"]', 7, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(111, 'subtitle', '[\"Everyday Fresh & Clean with Our Products\"]', 7, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(112, 'button_text', '[\"Shop now\"]', 8, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(113, 'subtitle', '[\"The best Organic Products Online\"]', 8, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(114, 'button_text', '[\"Go to supplier\"]', 9, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(115, 'subtitle', '[\"Everyday Fresh with\\r\\n Our Products\"]', 9, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-31 07:18:24'),
(116, 'button_text', '[\"Go to supplier\"]', 10, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(117, 'subtitle', '[\"100% guaranteed all\\r\\n Fresh items\"]', 10, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-31 07:19:20'),
(118, 'button_text', '[\"Go to supplier\"]', 11, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(119, 'subtitle', '[\"Special grocery sale\\r\\n off this month\"]', 11, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-31 07:20:21'),
(120, 'button_text', '[\"Go to supplier\"]', 12, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(121, 'subtitle', '[\"Enjoy 15% OFF for all\\r\\n vegetable and fruit\"]', 12, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-31 07:21:03'),
(122, 'vi_subtitle', '[\"S\\u1ea1ch s\\u1ebd h\\u00e0ng ng\\u00e0y v\\u1edbi \\nc\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a \\nch\\u00fang t\\u00f4i\"]', 1, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(123, 'vi_button_text', '[\"Mua ngay\"]', 1, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(124, 'vi_subtitle', '[\"N\\u1eabu b\\u1eefa s\\u00e1ng c\\u1ee7a b\\u1ea1n l\\u00e0nh m\\u1ea1nh v\\u00e0 d\\u1ec5 d\\u00e0ng\"]', 2, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(125, 'vi_button_text', '[\"Mua ngay\"]', 2, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(126, 'vi_subtitle', '[\"C\\u00e1c s\\u1ea3n ph\\u1ea9m h\\u1eefu c\\u01a1 t\\u1ed1t nh\\u1ea5t tr\\u1ef1c tuy\\u1ebfn\"]', 3, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(127, 'vi_button_text', '[\"Mua ngay\"]', 3, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(128, 'vi_subtitle', '[\"Mang thi\\u00ean nhi\\u00ean v\\u00e0o ng\\u00f4i nh\\u00e0 c\\u1ee7a b\\u1ea1n\"]', 4, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(129, 'vi_button_text', '[\"Mua ngay\"]', 4, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(130, 'vi_subtitle', '[\"Giao t\\u1eadn nh\\u00e0\"]', 5, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(131, 'vi_button_text', '[\"Mua ngay\"]', 5, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(132, 'vi_subtitle', '[\"Ti\\u1ebft ki\\u1ec7m 17% <br \\/> khi mua N\\u01b0\\u1edbc \\u00e9p <br \\/> Oganic\"]', 6, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(133, 'vi_button_text', '[\"Mua ngay\"]', 6, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(134, 'vi_subtitle', '[\"T\\u01b0\\u01a1i v\\u00e0 S\\u1ea1ch h\\u00e0ng ng\\u00e0y v\\u1edbi c\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a ch\\u00fang t\\u00f4i\"]', 7, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(135, 'vi_button_text', '[\"Shop now\"]', 7, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(136, 'vi_subtitle', '[\"C\\u00e1c s\\u1ea3n ph\\u1ea9m h\\u1eefu c\\u01a1 t\\u1ed1t nh\\u1ea5t tr\\u1ef1c tuy\\u1ebfn\"]', 8, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(137, 'vi_button_text', '[\"Shop now\"]', 8, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(138, 'vi_subtitle', '[\"T\\u01b0\\u01a1i m\\u1edbi m\\u1ed7i ng\\u00e0y v\\u1edbi\\n c\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a ch\\u00fang t\\u00f4i\"]', 9, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(139, 'vi_button_text', '[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]', 9, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(140, 'vi_subtitle', '[\"100% \\u0111\\u1ea3m b\\u1ea3o t\\u1ea5t c\\u1ea3\\n c\\u00e1c m\\u1eb7t h\\u00e0ng t\\u01b0\\u01a1i\"]', 10, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(141, 'vi_button_text', '[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]', 10, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(142, 'vi_subtitle', '[\"Gi\\u1ea3m gi\\u00e1 h\\u00e0ng t\\u1ea1p h\\u00f3a\\n \\u0111\\u1eb7c bi\\u1ec7t trong th\\u00e1ng n\\u00e0y\"]', 11, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(143, 'vi_button_text', '[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]', 11, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(144, 'vi_subtitle', '[\"GI\\u1ea2M GI\\u00c1 15% cho t\\u1ea5t c\\u1ea3\\n rau v\\u00e0 tr\\u00e1i c\\u00e2y\"]', 12, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(145, 'vi_button_text', '[\"\\u0110i \\u0111\\u1ebfn nh\\u00e0 cung c\\u1ea5p\"]', 12, 'Botble\\Ads\\Models\\Ads', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(146, 'social_links', '[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]', 1, 'Botble\\Marketplace\\Models\\Store', '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(147, 'social_links', '[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]', 2, 'Botble\\Marketplace\\Models\\Store', '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(148, 'social_links', '[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]', 3, 'Botble\\Marketplace\\Models\\Store', '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(149, 'social_links', '[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]', 4, 'Botble\\Marketplace\\Models\\Store', '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(150, 'social_links', '[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]', 5, 'Botble\\Marketplace\\Models\\Store', '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(151, 'social_links', '[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]', 6, 'Botble\\Marketplace\\Models\\Store', '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(152, 'time_to_read', '[null]', 1, 'Botble\\Blog\\Models\\Post', '2023-05-30 22:21:30', '2023-05-30 22:21:30'),
(153, 'time_to_read', '[null]', 2, 'Botble\\Blog\\Models\\Post', '2023-05-30 22:22:55', '2023-05-30 22:22:55'),
(154, 'time_to_read', '[null]', 3, 'Botble\\Blog\\Models\\Post', '2023-05-30 22:23:37', '2023-05-30 22:23:37'),
(155, 'time_to_read', '[null]', 4, 'Botble\\Blog\\Models\\Post', '2023-05-30 22:24:14', '2023-05-30 22:24:14'),
(156, 'time_to_read', '[null]', 5, 'Botble\\Blog\\Models\\Post', '2023-05-30 22:25:10', '2023-05-30 22:25:10'),
(157, 'layout', '[null]', 5, 'Botble\\Blog\\Models\\Post', '2023-05-30 22:25:11', '2023-05-30 22:25:11'),
(158, 'time_to_read', '[null]', 6, 'Botble\\Blog\\Models\\Post', '2023-05-30 22:25:48', '2023-05-30 22:25:48'),
(159, 'layout', '[null]', 6, 'Botble\\Blog\\Models\\Post', '2023-05-30 22:25:48', '2023-05-30 22:25:48'),
(160, 'time_to_read', '[null]', 7, 'Botble\\Blog\\Models\\Post', '2023-05-30 22:26:32', '2023-05-30 22:26:32'),
(161, 'layout', '[null]', 7, 'Botble\\Blog\\Models\\Post', '2023-05-30 22:26:32', '2023-05-30 22:26:32'),
(162, 'time_to_read', '[null]', 8, 'Botble\\Blog\\Models\\Post', '2023-05-30 22:27:16', '2023-05-30 22:27:16'),
(163, 'layout', '[null]', 8, 'Botble\\Blog\\Models\\Post', '2023-05-30 22:27:16', '2023-05-30 22:27:16'),
(164, 'time_to_read', '[null]', 9, 'Botble\\Blog\\Models\\Post', '2023-05-30 22:28:14', '2023-05-30 22:28:14'),
(165, 'layout', '[null]', 9, 'Botble\\Blog\\Models\\Post', '2023-05-30 22:28:14', '2023-05-30 22:28:14'),
(166, 'time_to_read', '[null]', 10, 'Botble\\Blog\\Models\\Post', '2023-05-30 22:28:50', '2023-05-30 22:28:50'),
(167, 'layout', '[null]', 10, 'Botble\\Blog\\Models\\Post', '2023-05-30 22:28:50', '2023-05-30 22:28:50'),
(225, 'tablet_image', '[\"1-1.png\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:31:49', '2023-05-31 06:31:49'),
(226, 'mobile_image', '[\"1-1.png\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:31:49', '2023-05-31 06:31:49'),
(227, 'tablet_image', '[\"1-2.png\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:32:52', '2023-05-31 06:32:52'),
(228, 'mobile_image', '[\"1-2.png\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:32:52', '2023-05-31 06:32:52'),
(229, 'tablet_image', '[\"2-1.png\"]', 4, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:34:43', '2023-05-31 06:34:43'),
(230, 'mobile_image', '[\"2-1.png\"]', 4, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:34:43', '2023-05-31 06:34:43'),
(231, 'tablet_image', '[\"2-2.png\"]', 3, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:35:30', '2023-05-31 06:35:30'),
(232, 'mobile_image', '[\"2-2.png\"]', 3, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:35:30', '2023-05-31 06:35:30'),
(233, 'tablet_image', '[\"1-1-1.png\"]', 5, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:37:18', '2023-05-31 06:37:18'),
(234, 'mobile_image', '[\"1-1-1.png\"]', 5, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:37:18', '2023-05-31 06:37:18'),
(235, 'tablet_image', '[\"1-2.png\"]', 6, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:37:49', '2023-05-31 06:38:18'),
(236, 'mobile_image', '[\"1-2.png\"]', 6, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:37:49', '2023-05-31 06:38:18'),
(237, 'tablet_image', '[\"4-1-1.png\"]', 8, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:40:07', '2023-05-31 06:41:04'),
(238, 'mobile_image', '[\"4-1-1.png\"]', 8, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:40:07', '2023-05-31 06:41:04'),
(239, 'tablet_image', '[\"4-2.png\"]', 7, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:41:59', '2023-05-31 06:41:59'),
(240, 'mobile_image', '[\"4-2.png\"]', 7, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:41:59', '2023-05-31 06:41:59'),
(241, 'icon', '[null]', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-31 06:44:29', '2023-05-31 06:44:29'),
(242, 'icon', '[null]', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-31 06:44:56', '2023-05-31 06:44:56'),
(243, 'icon', '[null]', 3, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-31 06:45:28', '2023-05-31 06:45:28'),
(244, 'icon', '[null]', 4, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-31 06:45:53', '2023-05-31 06:45:53'),
(245, 'icon', '[null]', 5, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-31 06:46:21', '2023-05-31 06:46:21'),
(246, 'icon', '[null]', 6, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-31 06:46:58', '2023-05-31 06:46:58'),
(247, 'icon', '[null]', 7, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-31 06:47:29', '2023-05-31 06:47:29'),
(248, 'icon', '[null]', 8, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-31 06:47:54', '2023-05-31 06:47:54'),
(249, 'icon', '[null]', 9, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-31 06:48:16', '2023-05-31 06:48:16'),
(250, 'icon', '[null]', 10, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-31 06:48:42', '2023-05-31 06:48:42'),
(251, 'icon', '[null]', 11, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-31 06:49:19', '2023-05-31 06:49:19'),
(252, 'icon', '[null]', 12, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-31 06:49:43', '2023-05-31 06:49:43'),
(253, 'icon', '[null]', 13, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-31 06:50:09', '2023-05-31 06:50:09'),
(254, 'icon', '[null]', 14, 'Botble\\Ecommerce\\Models\\ProductCategory', '2023-05-31 06:50:34', '2023-05-31 06:50:34'),
(255, 'tablet_image', '[\"5-2.png\"]', 10, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:52:03', '2023-05-31 06:52:03'),
(256, 'mobile_image', '[\"5-2.png\"]', 10, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:52:03', '2023-05-31 06:52:03'),
(257, 'tablet_image', '[\"5-1.png\"]', 9, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:52:55', '2023-05-31 06:52:55'),
(258, 'mobile_image', '[\"5-1.png\"]', 9, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:52:55', '2023-05-31 06:52:55'),
(259, 'tablet_image', '[\"thumbnail-1.jpg\"]', 12, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:57:37', '2023-05-31 06:57:37'),
(260, 'mobile_image', '[\"thumbnail-1.jpg\"]', 12, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:57:37', '2023-05-31 06:57:37'),
(261, 'tablet_image', '[\"thumbnail-2.jpg\"]', 13, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:58:52', '2023-05-31 06:58:52'),
(262, 'mobile_image', '[\"thumbnail-2.jpg\"]', 13, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:58:52', '2023-05-31 06:58:52'),
(263, 'tablet_image', '[\"thumbnail-3.jpg\"]', 14, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:59:32', '2023-05-31 06:59:32'),
(264, 'mobile_image', '[\"thumbnail-3.jpg\"]', 14, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 06:59:32', '2023-05-31 06:59:32'),
(265, 'tablet_image', '[\"thumbnail-4.jpg\"]', 15, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 07:00:02', '2023-05-31 07:00:02'),
(266, 'mobile_image', '[\"thumbnail-4.jpg\"]', 15, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 07:00:02', '2023-05-31 07:00:02'),
(267, 'tablet_image', '[\"thumbnail-6.jpg\"]', 16, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 07:00:41', '2023-05-31 07:00:41'),
(268, 'mobile_image', '[\"thumbnail-6.jpg\"]', 16, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 07:00:41', '2023-05-31 07:00:41'),
(269, 'tablet_image', '[\"thumbnail-5.jpg\"]', 17, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 07:01:13', '2023-05-31 07:01:13'),
(270, 'mobile_image', '[\"thumbnail-5.jpg\"]', 17, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2023-05-31 07:01:13', '2023-05-31 07:01:13'),
(271, 'subtitle', '[\"dfdfsgdfsd\"]', 6, 'Botble\\Ecommerce\\Models\\FlashSale', '2023-05-31 07:25:03', '2024-11-06 22:22:25'),
(272, 'image', '[null]', 6, 'Botble\\Ecommerce\\Models\\FlashSale', '2023-05-31 07:25:03', '2023-05-31 07:25:03'),
(273, 'subtitle', '[null]', 1, 'Botble\\Ecommerce\\Models\\FlashSale', '2023-05-31 07:28:57', '2023-05-31 07:28:57'),
(274, 'subtitle', '[null]', 5, 'Botble\\Ecommerce\\Models\\FlashSale', '2023-05-31 07:31:07', '2023-05-31 07:31:07'),
(275, 'subtitle', '[null]', 4, 'Botble\\Ecommerce\\Models\\FlashSale', '2023-05-31 07:32:55', '2023-05-31 07:32:55'),
(276, 'subtitle', '[null]', 3, 'Botble\\Ecommerce\\Models\\FlashSale', '2023-05-31 07:34:18', '2023-05-31 07:34:18'),
(277, 'subtitle', '[null]', 2, 'Botble\\Ecommerce\\Models\\FlashSale', '2023-05-31 07:36:28', '2023-05-31 07:36:28'),
(278, 'header_style', '[null]', 2, 'Botble\\Page\\Models\\Page', '2023-05-31 08:19:16', '2023-05-31 08:19:16'),
(285, 'icon_image', '[\"4-3.png\"]', 41, 'Botble\\Menu\\Models\\MenuNode', '2023-07-02 19:36:28', '2023-07-02 19:36:28'),
(286, 'layout', '[null]', 87, 'Botble\\Ecommerce\\Models\\Product', '2024-09-20 10:58:16', '2024-09-20 10:58:16'),
(287, 'is_popular', '[\"1\"]', 87, 'Botble\\Ecommerce\\Models\\Product', '2024-09-20 10:58:16', '2024-09-20 10:58:16'),
(288, 'layout', '[null]', 88, 'Botble\\Ecommerce\\Models\\Product', '2024-11-04 12:59:12', '2024-11-04 12:59:12'),
(289, 'is_popular', '[\"0\"]', 88, 'Botble\\Ecommerce\\Models\\Product', '2024-11-04 12:59:12', '2024-11-04 12:59:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(5, '2016_06_10_230148_create_acl_tables', 1),
(6, '2016_06_14_230857_create_menus_table', 1),
(7, '2016_06_28_221418_create_pages_table', 1),
(8, '2016_10_05_074239_create_setting_table', 1),
(9, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(10, '2016_12_16_084601_create_widgets_table', 1),
(11, '2017_05_09_070343_create_media_tables', 1),
(12, '2017_11_03_070450_create_slug_table', 1),
(13, '2019_01_05_053554_create_jobs_table', 1),
(14, '2019_08_19_000000_create_failed_jobs_table', 1),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(16, '2022_04_20_100851_add_index_to_media_table', 1),
(17, '2022_04_20_101046_add_index_to_menu_table', 1),
(18, '2022_07_10_034813_move_lang_folder_to_root', 1),
(19, '2022_08_04_051940_add_missing_column_expires_at', 1),
(20, '2022_09_01_000001_create_admin_notifications_tables', 1),
(21, '2022_10_14_024629_drop_column_is_featured', 1),
(22, '2022_11_18_063357_add_missing_timestamp_in_table_settings', 1),
(23, '2022_12_02_093615_update_slug_index_columns', 1),
(24, '2023_01_30_024431_add_alt_to_media_table', 1),
(25, '2023_02_16_042611_drop_table_password_resets', 1),
(26, '2023_04_23_005903_add_column_permissions_to_admin_notifications', 1),
(27, '2020_11_18_150916_ads_create_ads_table', 2),
(28, '2021_12_02_035301_add_ads_translations_table', 2),
(29, '2023_04_17_062645_add_open_in_new_tab', 2),
(30, '2015_06_29_025744_create_audit_history', 3),
(31, '2015_06_18_033822_create_blog_table', 4),
(32, '2021_02_16_092633_remove_default_value_for_author_type', 4),
(33, '2021_12_03_030600_create_blog_translations', 4),
(34, '2022_04_19_113923_add_index_to_table_posts', 4),
(35, '2016_06_17_091537_create_contacts_table', 5),
(36, '2020_03_05_041139_create_ecommerce_tables', 6),
(37, '2021_01_01_044147_ecommerce_create_flash_sale_table', 6),
(38, '2021_01_17_082713_add_column_is_featured_to_product_collections_table', 6),
(39, '2021_01_18_024333_add_zip_code_into_table_customer_addresses', 6),
(40, '2021_02_18_073505_update_table_ec_reviews', 6),
(41, '2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers', 6),
(42, '2021_03_10_025153_change_column_tax_amount', 6),
(43, '2021_03_20_033103_add_column_availability_to_table_ec_products', 6),
(44, '2021_04_28_074008_ecommerce_create_product_label_table', 6),
(45, '2021_05_31_173037_ecommerce_create_ec_products_translations', 6),
(46, '2021_06_28_153141_correct_slugs_data', 6),
(47, '2021_08_17_105016_remove_column_currency_id_in_some_tables', 6),
(48, '2021_08_30_142128_add_images_column_to_ec_reviews_table', 6),
(49, '2021_09_01_115151_remove_unused_fields_in_ec_products', 6),
(50, '2021_10_04_030050_add_column_created_by_to_table_ec_products', 6),
(51, '2021_10_05_122616_add_status_column_to_ec_customers_table', 6),
(52, '2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses', 6),
(53, '2021_11_23_071403_correct_languages_for_product_variations', 6),
(54, '2021_11_28_031808_add_product_tags_translations', 6),
(55, '2021_12_01_031123_add_featured_image_to_ec_products', 6),
(56, '2022_01_01_033107_update_table_ec_shipments', 6),
(57, '2022_02_16_042457_improve_product_attribute_sets', 6),
(58, '2022_03_22_075758_correct_product_name', 6),
(59, '2022_04_19_113334_add_index_to_ec_products', 6),
(60, '2022_04_28_144405_remove_unused_table', 6),
(61, '2022_05_05_115015_create_ec_customer_recently_viewed_products_table', 6),
(62, '2022_05_18_143720_add_index_to_table_ec_product_categories', 6),
(63, '2022_06_16_095633_add_index_to_some_tables', 6),
(64, '2022_06_30_035148_create_order_referrals_table', 6),
(65, '2022_07_24_153815_add_completed_at_to_ec_orders_table', 6),
(66, '2022_08_14_032836_create_ec_order_returns_table', 6),
(67, '2022_08_14_033554_create_ec_order_return_items_table', 6),
(68, '2022_08_15_040324_add_billing_address', 6),
(69, '2022_08_30_091114_support_digital_products_table', 6),
(70, '2022_09_13_095744_create_options_table', 6),
(71, '2022_09_13_104347_create_option_value_table', 6),
(72, '2022_10_05_163518_alter_table_ec_order_product', 6),
(73, '2022_10_12_041517_create_invoices_table', 6),
(74, '2022_10_12_142226_update_orders_table', 6),
(75, '2022_10_13_024916_update_table_order_returns', 6),
(76, '2022_10_21_030830_update_columns_in_ec_shipments_table', 6),
(77, '2022_10_28_021046_update_columns_in_ec_shipments_table', 6),
(78, '2022_11_16_034522_update_type_column_in_ec_shipping_rules_table', 6),
(79, '2022_11_19_041643_add_ec_tax_product_table', 6),
(80, '2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table', 6),
(81, '2022_12_17_041532_fix_address_in_order_invoice', 6),
(82, '2022_12_26_070329_create_ec_product_views_table', 6),
(83, '2023_01_04_033051_fix_product_categories', 6),
(84, '2023_01_09_050400_add_ec_global_options_translations_table', 6),
(85, '2023_01_10_093754_add_missing_option_value_id', 6),
(86, '2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table', 6),
(87, '2023_01_26_021854_add_ec_customer_used_coupons_table', 6),
(88, '2023_02_08_015900_update_options_column_in_ec_order_product_table', 6),
(89, '2023_02_27_095752_remove_duplicate_reviews', 6),
(90, '2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table', 6),
(91, '2023_05_03_011331_add_missing_column_price_into_invoice_items_table', 6),
(92, '2018_07_09_221238_create_faq_table', 7),
(93, '2021_12_03_082134_create_faq_translations', 7),
(94, '2016_10_03_032336_create_languages_table', 8),
(95, '2021_10_25_021023_fix-priority-load-for-language-advanced', 9),
(96, '2021_12_03_075608_create_page_translations', 9),
(97, '2019_11_18_061011_create_country_table', 10),
(98, '2021_12_03_084118_create_location_translations', 10),
(99, '2021_12_03_094518_migrate_old_location_data', 10),
(100, '2021_12_10_034440_switch_plugin_location_to_use_language_advanced', 10),
(101, '2022_01_16_085908_improve_plugin_location', 10),
(102, '2022_08_04_052122_delete_location_backup_tables', 10),
(103, '2023_04_23_061847_increase_state_translations_abbreviation_column', 10),
(104, '2021_07_06_030002_create_marketplace_table', 11),
(105, '2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table', 11),
(106, '2021_10_04_033903_add_column_approved_by_into_table_ec_products', 11),
(107, '2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table', 11),
(108, '2021_10_10_054216_add_columns_to_mp_customer_revenues_table', 11),
(109, '2021_12_06_031304_update_table_mp_customer_revenues', 11),
(110, '2022_10_19_152916_add_columns_to_mp_stores_table', 11),
(111, '2022_10_20_062849_create_mp_category_sale_commissions_table', 11),
(112, '2022_11_02_071413_add_more_info_for_store', 11),
(113, '2022_11_02_080444_add_tax_info', 11),
(114, '2023_02_01_062030_add_store_translations', 11),
(115, '2023_02_13_032133_update_fee_column_mp_customer_revenues_table', 11),
(116, '2023_02_17_023648_fix_store_prefix', 11),
(117, '2017_10_24_154832_create_newsletter_table', 12),
(118, '2017_05_18_080441_create_payment_tables', 13),
(119, '2021_03_27_144913_add_customer_type_into_table_payments', 13),
(120, '2021_05_24_034720_make_column_currency_nullable', 13),
(121, '2021_08_09_161302_add_metadata_column_to_payments_table', 13),
(122, '2021_10_19_020859_update_metadata_field', 13),
(123, '2022_06_28_151901_activate_paypal_stripe_plugin', 13),
(124, '2022_07_07_153354_update_charge_id_in_table_payments', 13),
(125, '2017_07_11_140018_create_simple_slider_table', 14),
(126, '2016_10_07_193005_create_translations_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `mp_category_sale_commissions`
--

CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint UNSIGNED NOT NULL,
  `product_category_id` bigint UNSIGNED NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mp_customer_revenues`
--

CREATE TABLE `mp_customer_revenues` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mp_customer_revenues`
--

INSERT INTO `mp_customer_revenues` (`id`, `customer_id`, `order_id`, `sub_amount`, `fee`, `amount`, `current_balance`, `currency`, `description`, `created_at`, `updated_at`, `user_id`, `type`) VALUES
(1, 10, 4, 866.00, 0.00, 866.00, 0.00, 'USD', NULL, '2023-04-29 13:08:19', '2023-04-29 13:08:19', 0, 'add-amount'),
(2, 2, 5, 1334.00, 0.00, 1334.00, 0.00, 'USD', NULL, '2023-05-01 21:08:19', '2023-05-01 21:08:19', 0, 'add-amount'),
(3, 3, 6, 256.00, 0.00, 256.00, 0.00, 'USD', NULL, '2023-05-01 17:08:19', '2023-05-01 17:08:19', 0, 'add-amount'),
(4, 2, 9, 260.00, 0.00, 260.00, 1334.00, 'USD', NULL, '2023-04-24 13:08:19', '2023-04-24 13:08:19', 0, 'add-amount'),
(5, 10, 10, 121.00, 0.00, 121.00, 866.00, 'USD', NULL, '2023-04-30 03:08:19', '2023-04-30 03:08:19', 0, 'add-amount'),
(6, 9, 13, 53.00, 0.00, 53.00, 0.00, 'USD', NULL, '2023-04-29 09:08:19', '2023-04-29 09:08:19', 0, 'add-amount'),
(7, 2, 14, 832.00, 0.00, 832.00, 1594.00, 'USD', NULL, '2023-04-30 09:08:20', '2023-04-30 09:08:20', 0, 'add-amount'),
(8, 3, 16, 508.00, 0.00, 508.00, 256.00, 'USD', NULL, '2023-04-30 01:08:20', '2023-04-30 01:08:20', 0, 'add-amount'),
(9, 2, 22, 762.00, 0.00, 762.00, 2426.00, 'USD', NULL, '2023-04-23 07:08:20', '2023-04-23 07:08:20', 0, 'add-amount'),
(10, 10, 26, 242.00, 0.00, 242.00, 987.00, 'USD', NULL, '2023-04-10 09:08:20', '2023-04-10 09:08:20', 0, 'add-amount'),
(11, 2, 27, 616.00, 0.00, 616.00, 3188.00, 'USD', NULL, '2023-04-18 21:08:20', '2023-04-18 21:08:20', 0, 'add-amount'),
(12, 5, 28, 1101.00, 0.00, 1101.00, 0.00, 'USD', NULL, '2023-04-18 09:08:20', '2023-04-18 09:08:20', 0, 'add-amount'),
(13, 3, 31, 128.00, 0.00, 128.00, 764.00, 'USD', NULL, '2023-04-24 21:08:20', '2023-04-24 21:08:20', 0, 'add-amount'),
(14, 2, 34, 237.00, 0.00, 237.00, 3804.00, 'USD', NULL, '2023-04-06 15:08:21', '2023-04-06 15:08:21', 0, 'add-amount'),
(15, 9, 36, 336.00, 0.00, 336.00, 53.00, 'USD', NULL, '2023-04-08 05:08:21', '2023-04-08 05:08:21', 0, 'add-amount'),
(16, 2, 38, 364.00, 0.00, 364.00, 4041.00, 'USD', NULL, '2023-03-31 09:08:21', '2023-03-31 09:08:21', 0, 'add-amount'),
(17, 3, 40, 123.00, 0.00, 123.00, 892.00, 'USD', NULL, '2023-04-19 05:08:21', '2023-04-19 05:08:21', 0, 'add-amount'),
(18, 10, 41, 1662.00, 0.00, 1662.00, 1229.00, 'USD', NULL, '2023-04-01 09:08:21', '2023-04-01 09:08:21', 0, 'add-amount'),
(19, 2, 44, 2065.00, 0.00, 2065.00, 4405.00, 'USD', NULL, '2023-03-26 09:08:21', '2023-03-26 09:08:21', 0, 'add-amount');

-- --------------------------------------------------------

--
-- Table structure for table `mp_customer_withdrawals`
--

CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `fee` decimal(15,2) UNSIGNED DEFAULT '0.00',
  `amount` decimal(15,2) UNSIGNED DEFAULT '0.00',
  `current_balance` decimal(15,2) UNSIGNED DEFAULT '0.00',
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bank_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mp_customer_withdrawals`
--

INSERT INTO `mp_customer_withdrawals` (`id`, `customer_id`, `fee`, `amount`, `current_balance`, `currency`, `description`, `bank_info`, `payment_channel`, `user_id`, `status`, `images`, `created_at`, `updated_at`, `transaction_id`) VALUES
(1, 2, 0.00, 845.00, 6470.00, 'USD', '', '{\"name\":\"Frederik Moen\",\"number\":\"+13082709741\",\"full_name\":\"Lincoln Hagenes\",\"description\":\"Kathryne Upton\"}', NULL, 0, 'pending', NULL, '2023-05-02 21:08:21', '2023-05-02 21:08:21', NULL),
(2, 2, 0.00, 1276.00, 5625.00, 'USD', '', '{\"name\":\"Frederik Moen\",\"number\":\"+13082709741\",\"full_name\":\"Lincoln Hagenes\",\"description\":\"Kathryne Upton\"}', NULL, 0, 'pending', NULL, '2023-05-02 21:08:21', '2023-05-02 21:08:21', NULL),
(3, 2, 0.00, 349.00, 4349.00, 'USD', '', '{\"name\":\"Frederik Moen\",\"number\":\"+13082709741\",\"full_name\":\"Lincoln Hagenes\",\"description\":\"Kathryne Upton\"}', NULL, 0, 'pending', NULL, '2023-05-02 21:08:22', '2023-05-02 21:08:22', NULL),
(4, 2, 0.00, 291.00, 4000.00, 'USD', '', '{\"name\":\"Frederik Moen\",\"number\":\"+13082709741\",\"full_name\":\"Lincoln Hagenes\",\"description\":\"Kathryne Upton\"}', NULL, 0, 'completed', NULL, '2023-05-02 21:08:22', '2023-05-02 21:08:22', NULL),
(5, 3, 0.00, 299.00, 1015.00, 'USD', '', '{\"name\":\"Eli Moore\",\"number\":\"+14437369379\",\"full_name\":\"Alden Hessel\",\"description\":\"Emely Hagenes\"}', NULL, 0, 'completed', NULL, '2023-05-02 21:08:22', '2023-05-02 21:08:22', NULL),
(6, 3, 0.00, 74.00, 716.00, 'USD', '', '{\"name\":\"Eli Moore\",\"number\":\"+14437369379\",\"full_name\":\"Alden Hessel\",\"description\":\"Emely Hagenes\"}', NULL, 0, 'pending', NULL, '2023-05-02 21:08:22', '2023-05-02 21:08:22', NULL),
(7, 5, 0.00, 145.00, 1101.00, 'USD', '', '{\"name\":\"Lavonne Konopelski\",\"number\":\"+14802288371\",\"full_name\":\"Wendy Gerlach\",\"description\":\"Dr. Maria Kovacek V\"}', NULL, 0, 'completed', NULL, '2023-05-02 21:08:22', '2023-05-02 21:08:22', NULL),
(8, 5, 0.00, 113.00, 956.00, 'USD', '', '{\"name\":\"Lavonne Konopelski\",\"number\":\"+14802288371\",\"full_name\":\"Wendy Gerlach\",\"description\":\"Dr. Maria Kovacek V\"}', NULL, 0, 'completed', NULL, '2023-05-02 21:08:22', '2023-05-02 21:08:22', NULL),
(9, 6, 0.00, 1.00, 0.00, 'USD', '', '{\"name\":\"Allison Renner\",\"number\":\"+12184536713\",\"full_name\":\"Beth Kuphal IV\",\"description\":\"Jordane Dooley\"}', NULL, 0, 'processing', NULL, '2023-05-02 21:08:22', '2023-05-02 21:08:22', NULL),
(10, 6, 0.00, 1.00, 0.00, 'USD', '', '{\"name\":\"Allison Renner\",\"number\":\"+12184536713\",\"full_name\":\"Beth Kuphal IV\",\"description\":\"Jordane Dooley\"}', NULL, 0, 'pending', NULL, '2023-05-02 21:08:22', '2023-05-02 21:08:22', NULL),
(11, 9, 0.00, 61.00, 389.00, 'USD', '', '{\"name\":\"Melyna Rodriguez\",\"number\":\"+16617936793\",\"full_name\":\"Easton Runolfsson\",\"description\":\"Prof. Ruthie Gleichner IV\"}', NULL, 0, 'processing', NULL, '2023-05-02 21:08:23', '2023-05-02 21:08:23', NULL),
(12, 9, 0.00, 37.00, 328.00, 'USD', '', '{\"name\":\"Melyna Rodriguez\",\"number\":\"+16617936793\",\"full_name\":\"Easton Runolfsson\",\"description\":\"Prof. Ruthie Gleichner IV\"}', NULL, 0, 'processing', NULL, '2023-05-02 21:08:23', '2023-05-02 21:08:23', NULL),
(13, 10, 0.00, 125.00, 2891.00, 'USD', '', '{\"name\":\"Ms. Edythe Flatley IV\",\"number\":\"+14306779013\",\"full_name\":\"Dr. Theron Raynor DDS\",\"description\":\"Evelyn Gerhold\"}', NULL, 0, 'completed', NULL, '2023-05-02 21:08:23', '2023-05-02 21:08:23', NULL),
(14, 10, 0.00, 500.00, 2766.00, 'USD', '', '{\"name\":\"Ms. Edythe Flatley IV\",\"number\":\"+14306779013\",\"full_name\":\"Dr. Theron Raynor DDS\",\"description\":\"Evelyn Gerhold\"}', NULL, 0, 'processing', NULL, '2023-05-02 21:08:23', '2023-05-02 21:08:23', NULL),
(15, 10, 0.00, 245.00, 2266.00, 'USD', '', '{\"name\":\"Ms. Edythe Flatley IV\",\"number\":\"+14306779013\",\"full_name\":\"Dr. Theron Raynor DDS\",\"description\":\"Evelyn Gerhold\"}', NULL, 0, 'processing', NULL, '2023-05-02 21:08:23', '2023-05-02 21:08:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mp_stores`
--

CREATE TABLE `mp_stores` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mp_stores`
--

INSERT INTO `mp_stores` (`id`, `name`, `email`, `phone`, `address`, `country`, `state`, `city`, `customer_id`, `logo`, `description`, `content`, `status`, `vendor_verified_at`, `created_at`, `updated_at`, `zip_code`, `company`) VALUES
(1, 'GoPro', 'jefferey.waters@example.org', '+13517972601', '30204 Juvenal Brook', 'BO', 'New York', 'South Zelda', 2, 'flash-sales/15.png', 'Sint unde odio dolor excepturi.', '<p>Earum inventore et est ut. Totam pariatur adipisci quidem ea perspiciatis. Minima ipsum numquam consequatur est.</p>', 'published', NULL, '2023-05-02 21:08:15', '2023-05-31 08:05:53', NULL, NULL),
(2, 'Global Office', 'fabiola.donnelly@example.org', '+15055495991', '58425 Pink Freeway Suite 895', 'IS', 'Florida', 'South Emelia', 3, 'flash-sales/3-2.png', 'Facere perferendis quisquam magni numquam.', '<p>Numquam possimus ad non reprehenderit nulla et. Qui tempora neque et. Dolorem occaecati dignissimos sint qui.</p>', 'published', NULL, '2023-05-02 21:08:15', '2023-05-31 08:05:40', NULL, NULL),
(3, 'Young Shop', 'karli14@example.net', '+16614197408', '200 O\'Hara Radial Apt. 969', 'EG', 'Pennsylvania', 'Schadenside', 5, 'flash-sales/16.png', 'Et consequatur eos sit aliquid nulla.', '<p>Consequatur qui aliquam soluta. Sed sed voluptas eos voluptas. Non necessitatibus quaerat harum et perferendis ullam.</p>', 'published', NULL, '2023-05-02 21:08:15', '2023-05-31 08:05:10', NULL, NULL),
(4, 'Global Store', 'silas.oconnell@example.com', '+19857359995', '817 Johns Vista Suite 795', 'SK', 'Utah', 'Erdmanburgh', 6, 'flash-sales/11-1.png', 'Eaque provident pariatur molestiae sed qui aut.', '<p>Enim dolores iusto sint. Nostrum atque est et iusto odio aperiam accusamus.</p>', 'published', NULL, '2023-05-02 21:08:15', '2023-05-31 08:04:56', NULL, NULL),
(5, 'Robert’s Store', 'kschamberger@example.org', '+14244062538', '7767 Wilma Squares', 'BY', 'Pennsylvania', 'Kubshire', 9, 'flash-sales/6-1.png', 'Eligendi non architecto fugit.', '<p>Officiis tempore rerum unde sit asperiores. Quidem aut nesciunt voluptatum voluptas vel. Quia illo quos sit.</p>', 'published', NULL, '2023-05-02 21:08:15', '2023-05-31 08:04:01', NULL, NULL),
(6, 'Stouffer', 'holly.schaefer@example.org', '+14323319134', '8530 Kreiger Row', 'IT', 'Kentucky', 'Jodiebury', 10, 'flash-sales/6-1.png', 'Quam neque quo iure ipsum explicabo inventore.', '<p>Qui maxime error occaecati aut ducimus cum. Recusandae odit inventore vitae sint. Consectetur est eos blanditiis ratione qui deserunt id.</p>', 'published', NULL, '2023-05-02 21:08:15', '2023-05-31 08:03:31', NULL, NULL),
(7, 'arzukhan', NULL, '0125478961', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, 'published', NULL, '2024-11-03 17:16:39', '2024-11-03 17:16:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mp_stores_translations`
--

CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mp_vendor_info`
--

CREATE TABLE `mp_vendor_info` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mp_vendor_info`
--

INSERT INTO `mp_vendor_info` (`id`, `customer_id`, `balance`, `total_fee`, `total_revenue`, `signature`, `bank_info`, `created_at`, `updated_at`, `payout_payment_method`, `tax_info`) VALUES
(1, 2, 3709.00, 0.00, 6470.00, '$2y$10$o3gfe6vAvcp4hBkKzRUaVus3Yn71JF0XwxAIOorr4VUqerwjkEwXS', '{\"name\":\"Frederik Moen\",\"code\":null,\"number\":\"+13082709741\",\"full_name\":\"Lincoln Hagenes\",\"upi_id\":null,\"description\":\"Kathryne Upton\",\"paypal_id\":null}', '2023-05-02 21:08:15', '2023-05-31 08:02:05', 'bank_transfer', '{\"business_name\":null,\"tax_id\":null,\"address\":null}'),
(2, 3, 642.00, 0.00, 1015.00, '$2y$10$RY/yR1bHhax0XgkIBARoTuk0bicu/Q6QLn.BudGTR8HBLCY.Zq8DS', '{\"name\":\"Eli Moore\",\"code\":null,\"number\":\"+14437369379\",\"full_name\":\"Alden Hessel\",\"upi_id\":null,\"description\":\"Emely Hagenes\",\"paypal_id\":null}', '2023-05-02 21:08:15', '2023-05-31 07:59:06', 'bank_transfer', '{\"business_name\":null,\"tax_id\":null,\"address\":null}'),
(3, 5, 843.00, 0.00, 1101.00, '$2y$10$s2evzQIVJevYZCgPO/1hy.2QIKwUN44B40AvB3XuLsU8ZoDyQ2qDq', '{\"name\":\"Lavonne Konopelski\",\"code\":null,\"number\":\"+14802288371\",\"full_name\":\"Wendy Gerlach\",\"upi_id\":null,\"description\":\"Dr. Maria Kovacek V\",\"paypal_id\":null}', '2023-05-02 21:08:15', '2023-05-31 07:59:47', 'bank_transfer', '{\"business_name\":null,\"tax_id\":null,\"address\":null}'),
(4, 6, -2.00, 0.00, 0.00, '$2y$10$t45iWMzPl69rfeYZ1Y9eJO184LXXeB7GezYEuk1wXHj1Q3oXovqUq', '{\"name\":\"Allison Renner\",\"code\":null,\"number\":\"+12184536713\",\"full_name\":\"Beth Kuphal IV\",\"upi_id\":null,\"description\":\"Jordane Dooley\",\"paypal_id\":null}', '2023-05-02 21:08:15', '2023-05-31 08:00:23', 'bank_transfer', '{\"business_name\":null,\"tax_id\":null,\"address\":null}'),
(5, 9, 291.00, 0.00, 389.00, '$2y$10$iaTFf8JGI6bMzDFaaYZ44OLhTb2P99XuUoX7fvbcp0TeLrIqtHk4i', '{\"name\":\"Melyna Rodriguez\",\"code\":null,\"number\":\"+16617936793\",\"full_name\":\"Easton Runolfsson\",\"upi_id\":null,\"description\":\"Prof. Ruthie Gleichner IV\",\"paypal_id\":null}', '2023-05-02 21:08:15', '2023-05-31 08:00:53', 'bank_transfer', '{\"business_name\":null,\"tax_id\":null,\"address\":null}'),
(6, 10, 2021.00, 0.00, 2891.00, '$2y$10$N1JGjBW583pseuIpnN5fieCkarl7Kd.FBFIkkBK.tCKMqTdKprR3u', '{\"name\":\"Ms. Edythe Flatley IV\",\"code\":null,\"number\":\"+14306779013\",\"full_name\":\"Dr. Theron Raynor DDS\",\"upi_id\":null,\"description\":\"Evelyn Gerhold\",\"paypal_id\":null}', '2023-05-02 21:08:15', '2023-05-31 08:01:27', 'bank_transfer', '{\"business_name\":null,\"tax_id\":null,\"address\":null}'),
(7, 15, 0.00, 0.00, 0.00, '$2y$10$GhcX4Q/qUi8WpSnE87jCc.7G7YxaHbNag3ZlpYoZKxs1n3AgxYUF6', NULL, '2024-11-03 17:16:38', '2024-11-03 17:16:38', 'bank_transfer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Homepage', '<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>', 1, NULL, 'homepage', NULL, 'published', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(2, 'Homepage 2', '<shortcode class=\"bb-shortcode\">[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"flash-sales/banner-1.png\"][/simple-slider]</shortcode><shortcode class=\"bb-shortcode\">[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</shortcode><shortcode class=\"bb-shortcode\">[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</shortcode><shortcode class=\"bb-shortcode\">[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</shortcode><shortcode class=\"bb-shortcode\">[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</shortcode><shortcode class=\"bb-shortcode\">[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</shortcode><shortcode class=\"bb-shortcode\">[product-categories title=\"Shop by Categories\"][/product-categories]</shortcode>', 1, NULL, 'homepage', '', 'published', '2023-05-02 21:08:11', '2023-05-31 08:19:16'),
(3, 'Homepage 3', '<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>', 1, NULL, 'homepage', NULL, 'published', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(4, 'Homepage 4', '<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>', 1, NULL, 'homepage', NULL, 'published', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(5, 'Blog', '<p>---</p>', 1, NULL, 'blog-grid', NULL, 'published', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(6, 'Contact', '<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>', 1, NULL, 'default', NULL, 'published', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(7, 'About us', '<p>And the executioner myself,\' said the Caterpillar called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came back again. \'Keep your temper,\' said the Caterpillar. \'Well, perhaps your feelings may be different,\' said Alice; \'it\'s laid for a conversation. \'You don\'t know one,\' said Alice. \'Why, you don\'t know one,\' said Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. One of the ground--and I should be raving mad--at least not so mad as it.</p><p>She said the Gryphon. Alice did not get hold of it; and as Alice could see, as she could. The next thing is, to get to,\' said the Gryphon. \'Then, you know,\' the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was no use in waiting by the pope, was soon left alone. \'I wish the creatures wouldn\'t be so easily offended, you know!\' The Mouse gave a look askance-- Said he thanked the whiting kindly, but he could think of any that do,\' Alice said very politely, \'if I had our Dinah here, I know.</p><p>When the Mouse had changed his mind, and was delighted to find that her neck from being broken. She hastily put down her flamingo, and began singing in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went on again: \'Twenty-four hours, I THINK; or is it twelve? I--\' \'Oh, don\'t talk about her and to stand on your shoes and stockings for you now, dears? I\'m sure _I_ shan\'t be able! I shall fall right THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own feet! And how odd the.</p><p>No, there were no arches left, and all dripping wet, cross, and uncomfortable. The first question of course was, how to spell \'stupid,\' and that you have just been reading about; and when Alice had been looking over his shoulder with some curiosity. \'What a curious dream, dear, certainly: but now run in to your places!\' shouted the Queen. \'Well, I never heard of one,\' said Alice, (she had grown to her very earnestly, \'Now, Dinah, tell me your history, you know,\' Alice gently remarked; \'they\'d.</p>', 1, NULL, 'right-sidebar', NULL, 'published', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(8, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', NULL, 'published', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(9, 'Terms &amp; Conditions', '<p>Lory, who at last she spread out her hand again, and looking anxiously about her. \'Oh, do let me hear the rattle of the jury had a pencil that squeaked. This of course, I meant,\' the King had said that day. \'A likely story indeed!\' said Alice, in a tone of great curiosity. \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'besides, that\'s not a mile high,\' said Alice. \'Why, you don\'t explain it as she could, for the pool was getting quite crowded with the bread-and-butter getting so used to.</p><p>This question the Dodo solemnly presented the thimble, saying \'We beg your pardon,\' said Alice in a low trembling voice, \'Let us get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the same side of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King looked anxiously round, to make ONE respectable person!\' Soon her eye fell upon a little sharp bark just over her head through the doorway; \'and even if.</p><p>Hatter. \'You MUST remember,\' remarked the King, \'unless it was very deep, or she fell past it. \'Well!\' thought Alice \'without pictures or conversations?\' So she was always ready to play croquet.\' Then they all stopped and looked at it uneasily, shaking it every now and then, if I would talk on such a thing as \"I get what I say,\' the Mock Turtle went on, \'that they\'d let Dinah stop in the distance. \'Come on!\' and ran till she was coming back to the general conclusion, that wherever you go on?.</p><p>Alice again, for this curious child was very uncomfortable, and, as they came nearer, Alice could speak again. In a little startled when she turned the corner, but the Rabbit say to this: so she helped herself to some tea and bread-and-butter, and went down on her lap as if she did not get hold of its mouth open, gazing up into the earth. Let me see--how IS it to be no chance of getting up and bawled out, \"He\'s murdering the time! Off with his nose, you know?\' \'It\'s the first question, you.</p>', 1, NULL, 'default', NULL, 'published', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(10, 'Returns &amp; Exchanges', '<p>Footman remarked, \'till tomorrow--\' At this moment Alice felt a very good advice, (though she very good-naturedly began hunting about for some minutes. The Caterpillar and Alice rather unwillingly took the least idea what Latitude was, or Longitude I\'ve got to see what this bottle was NOT marked \'poison,\' so Alice went on in a languid, sleepy voice. \'Who are YOU?\' said the King exclaimed, turning to Alice, that she began thinking over other children she knew, who might do very well to.</p><p>Alice looked all round the hall, but they were mine before. If I or she fell past it. \'Well!\' thought Alice to herself, \'if one only knew the name again!\' \'I won\'t indeed!\' said the Hatter. \'Stolen!\' the King said to the Gryphon. \'--you advance twice--\' \'Each with a trumpet in one hand and a large fan in the window, I only wish people knew that: then they both sat silent and looked at the picture.) \'Up, lazy thing!\' said Alice, as she swam nearer to make out at all the party were placed along.</p><p>And oh, I wish you could manage it?) \'And what are YOUR shoes done with?\' said the Duchess; \'and most of \'em do.\' \'I don\'t like them!\' When the sands are all dry, he is gay as a boon, Was kindly permitted to pocket the spoon: While the Duchess was VERY ugly; and secondly, because they\'re making such a capital one for catching mice--oh, I beg your acceptance of this elegant thimble\'; and, when it grunted again, and the pair of white kid gloves: she took up the conversation a little. \'\'Tis so,\'.</p><p>SOMEBODY ought to be executed for having missed their turns, and she jumped up in spite of all the time they had to run back into the way down one side and then a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they walked off together. Alice laughed so much contradicted in her lessons in the kitchen that did not like the Mock Turtle went on. \'Or would you tell me,\' said Alice, always ready to make out that part.\' \'Well, at any rate, the Dormouse sulkily remarked, \'If you do.</p>', 1, NULL, 'default', NULL, 'published', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(11, 'Shipping &amp; Delivery', '<p>Duchess; \'and that\'s why. Pig!\' She said this she looked up, and began by producing from under his arm a great many more than three.\' \'Your hair wants cutting,\' said the Queen. \'Their heads are gone, if it likes.\' \'I\'d rather not,\' the Cat again, sitting on the bank, with her head!\' Alice glanced rather anxiously at the end.\' \'If you didn\'t sign it,\' said Alice. \'Exactly so,\' said the March Hare said--\' \'I didn\'t!\' the March Hare said in a sort of way to hear the very middle of one! There.</p><p>Dormouse,\' thought Alice; but she was not going to shrink any further: she felt that she was in a few minutes, and began whistling. \'Oh, there\'s no use in talking to herself, \'I wish I could shut up like a mouse, you know. But do cats eat bats? Do cats eat bats? Do cats eat bats? Do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, Miss, this here ought to eat or drink something or other; but the Gryphon replied very politely, \'if I had it written up somewhere.\' Down, down.</p><p>Alice alone with the lobsters to the door. \'Call the next witness. It quite makes my forehead ache!\' Alice watched the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of sight. Alice remained looking thoughtfully at the mushroom (she had grown to her feet as the rest of the fact. \'I keep them to sell,\' the Hatter went on, turning to the beginning of the court, arm-in-arm with the bread-knife.\' The March Hare was said to herself. \'Shy, they seem to dry me at all.\' \'In that.</p><p>Alice thought to herself what such an extraordinary ways of living would be grand, certainly,\' said Alice, rather doubtfully, as she went on for some time in silence: at last she spread out her hand, and a large ring, with the distant green leaves. As there seemed to be a great many more than Alice could hardly hear the very middle of the shepherd boy--and the sneeze of the March Hare will be the use of a feather flock together.\"\' \'Only mustard isn\'t a letter, written by the Queen said--\' \'Get.</p>', 1, NULL, 'default', NULL, 'published', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(12, 'Privacy Policy', '<p>Alice thought the poor little thing sobbed again (or grunted, it was her turn or not. \'Oh, PLEASE mind what you\'re talking about,\' said Alice. \'Well, then,\' the Gryphon replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d been the whiting,\' said the King in a low, hurried tone. He looked at poor Alice, \'to speak to this mouse? Everything is so out-of-the-way down here, and I\'m sure I have dropped them, I wonder?\' Alice guessed in a great crash, as if it likes.\' \'I\'d.</p><p>IV. The Rabbit started violently, dropped the white kid gloves: she took courage, and went on so long since she had a head unless there was no longer to be a letter, written by the end of the officers: but the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was a very respectful tone, but frowning and making quite a new idea to Alice, \'Have you seen the Mock Turtle. So she set to work, and very soon finished it off. \'If everybody minded their own business,\' the Duchess to play with, and.</p><p>Duchess sang the second verse of the room. The cook threw a frying-pan after her as hard as she did not seem to put down the little thing was snorting like a wild beast, screamed \'Off with their heads off?\' shouted the Queen, and Alice was not here before,\' said the King. \'It began with the Queen was in livery: otherwise, judging by his face only, she would get up and to stand on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it,\' but none of my life.\' \'You are old, Father.</p><p>THE SLUGGARD,\"\' said the King triumphantly, pointing to the door, she walked off, leaving Alice alone with the words have got in as well,\' the Hatter continued, \'in this way:-- \"Up above the world she was ever to get an opportunity of adding, \'You\'re looking for it, she found herself lying on their hands and feet, to make out what it meant till now.\' \'If that\'s all I can kick a little!\' She drew her foot as far as they came nearer, Alice could speak again. The Mock Turtle to sing \"Twinkle.</p>', 1, NULL, 'default', NULL, 'published', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(13, 'Blog List', '<p>[blog-posts paginate=\"12\"][/blog-posts]</p>', 1, NULL, 'blog-list', NULL, 'published', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(14, 'Blog Big', '<p>[blog-posts paginate=\"12\"][/blog-posts]</p>', 1, NULL, 'blog-big', NULL, 'published', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(15, 'Blog Wide', '<p>[blog-posts paginate=\"12\"][/blog-posts]</p>', 1, NULL, 'blog-wide', NULL, 'published', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(16, 'Homepage 5', '<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"6\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>', 1, NULL, 'homepage', NULL, 'published', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(17, 'Homepage 6', '<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"What are you looking for?\"][/big-banner]</div><div>[trending-products title=\"Trending items\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"2\" flash_sale_2=\"3\" flash_sale_3=\"4\" flash_sale_4=\"5\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>', 1, NULL, 'homepage', NULL, 'published', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(18, 'Faq', '<div>[faqs][/faqs]</div>', 1, NULL, 'default', NULL, 'published', '2023-05-02 21:08:11', '2023-05-02 21:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translations`
--

CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint UNSIGNED DEFAULT NULL,
  `refunded_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `refund_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `currency`, `user_id`, `charge_id`, `payment_channel`, `description`, `amount`, `order_id`, `status`, `payment_type`, `customer_id`, `refunded_amount`, `refund_note`, `created_at`, `updated_at`, `customer_type`, `metadata`) VALUES
(50, 'BDT', 0, 'NWLEPEWB7N', 'cod', NULL, 403.70, 69, 'pending', 'confirm', NULL, NULL, NULL, '2023-09-26 17:22:37', '2023-09-26 17:22:37', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(52, 'BDT', 0, 'UM9EHGBQN9', 'cod', NULL, 403.70, 69, 'pending', 'confirm', NULL, NULL, NULL, '2023-09-26 17:22:54', '2023-09-26 17:22:54', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(54, 'BDT', 0, 'ZGF3QNFPJO', 'cod', NULL, 2900.00, 78, 'pending', 'confirm', NULL, NULL, NULL, '2024-09-20 11:00:34', '2024-09-20 11:00:34', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(55, 'BDT', 0, '7F0AQXTQX9', 'cod', NULL, 1450.00, 82, 'pending', 'confirm', NULL, NULL, NULL, '2024-09-30 22:20:09', '2024-09-30 22:20:09', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(56, 'BDT', 0, '8UYAMHU1GI', 'cod', NULL, 1450.00, 84, 'pending', 'confirm', NULL, NULL, NULL, '2024-10-10 06:17:37', '2024-10-10 06:17:37', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(57, 'BDT', 0, 'GLSZSDNZSO', 'cod', NULL, 1450.00, 87, 'pending', 'confirm', 16, NULL, NULL, '2024-11-06 15:19:06', '2024-11-06 15:19:06', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(58, 'BDT', 0, 'GLSZSDNZSO', 'cod', NULL, 10.00, 88, 'pending', 'confirm', 16, NULL, NULL, '2024-11-06 15:19:06', '2024-11-06 15:19:06', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(59, 'BDT', 0, 'VPV369449S', 'cod', NULL, 1450.00, 94, 'pending', 'confirm', NULL, NULL, NULL, '2024-11-27 23:40:10', '2024-11-27 23:40:10', 'Botble\\Ecommerce\\Models\\Customer', NULL),
(60, 'BDT', 0, 'QIC9IXYGVJ', 'cod', NULL, 1450.00, 94, 'pending', 'confirm', NULL, NULL, NULL, '2024-11-27 23:40:13', '2024-11-27 23:40:13', 'Botble\\Ecommerce\\Models\\Customer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint UNSIGNED NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int UNSIGNED NOT NULL DEFAULT '0',
  `format_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, '4 Expert Tips On How To Choose The Right Men’s Wallet', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p><p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p><p style=\"text-align:center;\"><img src=\"/storage/news/1.png\" alt=\"f4\"></p><p><br>&nbsp;</p><p><i><strong>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</strong></i></p><h4><strong>Number 1: Choose A Neat Wallet</strong></h4><p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p><p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p><p style=\"text-align:center;\"><img src=\"/storage/news/2.png\" alt=\"f5\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4><p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p><p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p><p style=\"text-align:center;\"><img src=\"/storage/news/3.png\" alt=\"f1\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4><p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p><p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p><p style=\"text-align:center;\"><img src=\"/storage/news/4.png\" alt=\"f6\" height=\"375\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4><p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p><p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p><p style=\"text-align:center;\"><img src=\"/storage/news/5.png\" alt=\"f2\" height=\"400\"></p><p>&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, '4.jpg', 1699, NULL, '2023-05-02 21:08:11', '2023-05-30 22:21:30'),
(2, 'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p><p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p><p style=\"text-align:center;\"><img src=\"/storage/news/1.png\" alt=\"f4\"></p><p><br>&nbsp;</p><p><i><strong>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</strong></i></p><h4><strong>Number 1: Choose A Neat Wallet</strong></h4><p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p><p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p><p style=\"text-align:center;\"><img src=\"/storage/news/2.png\" alt=\"f5\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4><p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p><p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p><p style=\"text-align:center;\"><img src=\"/storage/news/3.png\" alt=\"f1\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4><p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p><p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p><p style=\"text-align:center;\"><img src=\"/storage/news/4.png\" alt=\"f6\" height=\"375\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4><p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p><p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p><p style=\"text-align:center;\"><img src=\"/storage/news/5.png\" alt=\"f2\" height=\"400\"></p><p>&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'befunky-collage-7-1597325828.jpg', 1047, NULL, '2023-05-02 21:08:11', '2023-05-30 22:22:55'),
(3, 'The Top 2020 Handbag Trends to Know', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p><p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p><p style=\"text-align:center;\"><img src=\"/storage/news/1.png\" alt=\"f4\"></p><p><br>&nbsp;</p><p><i><strong>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</strong></i></p><h4><strong>Number 1: Choose A Neat Wallet</strong></h4><p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p><p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p><p style=\"text-align:center;\"><img src=\"/storage/news/2.png\" alt=\"f5\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4><p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p><p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p><p style=\"text-align:center;\"><img src=\"/storage/news/3.png\" alt=\"f1\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4><p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p><p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p><p style=\"text-align:center;\"><img src=\"/storage/news/4.png\" alt=\"f6\" height=\"375\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4><p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p><p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p><p style=\"text-align:center;\"><img src=\"/storage/news/5.png\" alt=\"f2\" height=\"400\"></p><p>&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'fall-bag-trends.jpg', 1733, NULL, '2023-05-02 21:08:11', '2023-05-30 22:23:37'),
(4, 'How to Match the Color of Your Handbag With an Outfit', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p><p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p><p style=\"text-align:center;\"><img src=\"/storage/news/1.png\" alt=\"f4\"></p><p><br>&nbsp;</p><shortcode class=\"bb-shortcode\">[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]</shortcode><p><i><strong>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</strong></i></p><h4><strong>Number 1: Choose A Neat Wallet</strong></h4><p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p><p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p><p style=\"text-align:center;\"><img src=\"/storage/news/2.png\" alt=\"f5\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4><p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p><p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p><p style=\"text-align:center;\"><img src=\"/storage/news/3.png\" alt=\"f1\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4><p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p><p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p><p style=\"text-align:center;\"><img src=\"/storage/news/4.png\" alt=\"f6\" height=\"375\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4><p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p><p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p><p style=\"text-align:center;\"><img src=\"/storage/news/5.png\" alt=\"f2\" height=\"400\"></p><p>&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'purse-match-guide-2.webp', 2064, NULL, '2023-05-02 21:08:11', '2023-05-30 22:24:14'),
(5, 'How to Care for Leather Bags', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p><p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p><p style=\"text-align:center;\"><img src=\"/storage/news/1.png\" alt=\"f4\"></p><p><br>&nbsp;</p><p><i><strong>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</strong></i></p><h4><strong>Number 1: Choose A Neat Wallet</strong></h4><p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p><p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p><p style=\"text-align:center;\"><img src=\"/storage/news/2.png\" alt=\"f5\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4><p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p><p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p><p style=\"text-align:center;\"><img src=\"/storage/news/3.png\" alt=\"f1\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4><p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p><p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p><p style=\"text-align:center;\"><img src=\"/storage/news/4.png\" alt=\"f6\" height=\"375\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4><p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p><p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p><p style=\"text-align:center;\"><img src=\"/storage/news/5.png\" alt=\"f2\" height=\"400\"></p><p>&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'maxresdefault.jpg', 1222, NULL, '2023-05-02 21:08:11', '2023-05-30 22:25:10'),
(6, 'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p><p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p><p style=\"text-align:center;\"><img src=\"/storage/news/1.png\" alt=\"f4\"></p><p><br>&nbsp;</p><p><i><strong>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</strong></i></p><h4><strong>Number 1: Choose A Neat Wallet</strong></h4><p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p><p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p><p style=\"text-align:center;\"><img src=\"/storage/news/2.png\" alt=\"f5\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4><p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p><p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p><p style=\"text-align:center;\"><img src=\"/storage/news/3.png\" alt=\"f1\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4><p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p><p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p><p style=\"text-align:center;\"><img src=\"/storage/news/4.png\" alt=\"f6\" height=\"375\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4><p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p><p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p><p style=\"text-align:center;\"><img src=\"/storage/news/5.png\" alt=\"f2\" height=\"400\"></p><p>&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, '6.jpg', 944, NULL, '2023-05-02 21:08:11', '2023-05-30 22:25:48'),
(7, 'Essential Qualities of Highly Successful Music', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p><p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p><p style=\"text-align:center;\"><img src=\"/storage/news/1.png\" alt=\"f4\"></p><p><br>&nbsp;</p><p><i><strong>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</strong></i></p><h4><strong>Number 1: Choose A Neat Wallet</strong></h4><p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p><p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p><p style=\"text-align:center;\"><img src=\"/storage/news/2.png\" alt=\"f5\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4><p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p><p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p><p style=\"text-align:center;\"><img src=\"/storage/news/3.png\" alt=\"f1\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4><p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p><p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p><p style=\"text-align:center;\"><img src=\"/storage/news/4.png\" alt=\"f6\" height=\"375\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4><p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p><p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p><p style=\"text-align:center;\"><img src=\"/storage/news/5.png\" alt=\"f2\" height=\"400\"></p><p>&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'mc-10-1170x752.jpg', 169, NULL, '2023-05-02 21:08:11', '2023-05-30 22:26:32'),
(8, '9 Things I Love About Shaving My Head', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p><p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p><p style=\"text-align:center;\"><img src=\"/storage/news/1.png\" alt=\"f4\"></p><p><br>&nbsp;</p><p><i><strong>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</strong></i></p><h4><strong>Number 1: Choose A Neat Wallet</strong></h4><p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p><p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p><p style=\"text-align:center;\"><img src=\"/storage/news/2.png\" alt=\"f5\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4><p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p><p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p><p style=\"text-align:center;\"><img src=\"/storage/news/3.png\" alt=\"f1\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4><p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p><p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p><p style=\"text-align:center;\"><img src=\"/storage/news/4.png\" alt=\"f6\" height=\"375\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4><p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p><p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p><p style=\"text-align:center;\"><img src=\"/storage/news/5.png\" alt=\"f2\" height=\"400\"></p><p>&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, '04.jpg', 1207, NULL, '2023-05-02 21:08:11', '2023-05-30 22:27:16'),
(9, 'Why Teamwork Really Makes The Dream Work', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p><p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p><p style=\"text-align:center;\"><img src=\"/storage/news/1.png\" alt=\"f4\"></p><p><br>&nbsp;</p><p><i><strong>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</strong></i></p><h4><strong>Number 1: Choose A Neat Wallet</strong></h4><p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p><p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p><p style=\"text-align:center;\"><img src=\"/storage/news/2.png\" alt=\"f5\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4><p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p><p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p><p style=\"text-align:center;\"><img src=\"/storage/news/3.png\" alt=\"f1\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4><p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p><p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p><p style=\"text-align:center;\"><img src=\"/storage/news/4.png\" alt=\"f6\" height=\"375\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4><p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p><p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p><p style=\"text-align:center;\"><img src=\"/storage/news/5.png\" alt=\"f2\" height=\"400\"></p><p>&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'images.jpeg', 214, NULL, '2023-05-02 21:08:11', '2023-05-30 22:28:14'),
(10, 'The World Caters to Average People', 'You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.', '<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p><p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p><p style=\"text-align:center;\"><img src=\"/storage/news/1.png\" alt=\"f4\"></p><p><br>&nbsp;</p><p><i><strong>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</strong></i></p><h4><strong>Number 1: Choose A Neat Wallet</strong></h4><p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p><p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p><p style=\"text-align:center;\"><img src=\"/storage/news/2.png\" alt=\"f5\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4><p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p><p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p><p style=\"text-align:center;\"><img src=\"/storage/news/3.png\" alt=\"f1\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4><p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p><p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p><p style=\"text-align:center;\"><img src=\"/storage/news/4.png\" alt=\"f6\" height=\"375\"></p><p><br>&nbsp;</p><hr><h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4><p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p><p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p><p style=\"text-align:center;\"><img src=\"/storage/news/5.png\" alt=\"f2\" height=\"400\"></p><p>&nbsp;</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, '04.jpg', 136, NULL, '2023-05-02 21:08:11', '2023-05-30 22:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `posts_translations`
--

CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `category_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`category_id`, `post_id`) VALUES
(1, 1),
(4, 1),
(2, 2),
(3, 2),
(2, 3),
(3, 3),
(1, 4),
(4, 4),
(1, 5),
(4, 5),
(1, 6),
(3, 6),
(1, 7),
(3, 7),
(1, 8),
(3, 8),
(1, 9),
(3, 9),
(1, 10),
(4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `tag_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`tag_id`, `post_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(5, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 6),
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(5, 7),
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(5, 8),
(1, 9),
(2, 9),
(3, 9),
(4, 9),
(5, 9),
(1, 10),
(2, 10),
(3, 10),
(4, 10),
(5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Botble\\Blog\\Models\\Post', 1, 1, 'image', 'news/1.png', '4.jpg', '2023-05-30 22:21:30', '2023-05-30 22:21:30'),
(2, 'Botble\\Blog\\Models\\Post', 2, 1, 'image', 'news/2.png', 'befunky-collage-7-1597325828.jpg', '2023-05-30 22:22:55', '2023-05-30 22:22:55'),
(3, 'Botble\\Blog\\Models\\Post', 3, 1, 'image', 'news/3.png', 'fall-bag-trends.jpg', '2023-05-30 22:23:37', '2023-05-30 22:23:37'),
(4, 'Botble\\Blog\\Models\\Post', 4, 1, 'image', 'news/4.png', 'purse-match-guide-2.webp', '2023-05-30 22:24:14', '2023-05-30 22:24:14'),
(5, 'Botble\\Blog\\Models\\Post', 5, 1, 'image', 'news/5.png', 'maxresdefault.jpg', '2023-05-30 22:25:10', '2023-05-30 22:25:10'),
(6, 'Botble\\Blog\\Models\\Post', 6, 1, 'image', 'news/6.png', '6.jpg', '2023-05-30 22:25:48', '2023-05-30 22:25:48'),
(7, 'Botble\\Blog\\Models\\Post', 7, 1, 'image', 'news/7.png', 'mc-10-1170x752.jpg', '2023-05-30 22:26:32', '2023-05-30 22:26:32'),
(8, 'Botble\\Blog\\Models\\Post', 8, 1, 'image', 'news/8.png', '04.jpg', '2023-05-30 22:27:16', '2023-05-30 22:27:16'),
(9, 'Botble\\Blog\\Models\\Post', 9, 1, 'image', 'news/9.png', 'images.jpeg', '2023-05-30 22:28:14', '2023-05-30 22:28:14'),
(10, 'Botble\\Blog\\Models\\Post', 10, 1, 'image', 'news/10.png', '04.jpg', '2023-05-30 22:28:50', '2023-05-30 22:28:50'),
(11, 'Botble\\Page\\Models\\Page', 2, 1, 'description', NULL, '', '2023-05-31 08:19:16', '2023-05-31 08:19:16');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"api.settings\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"plugins.ecommerce\":true,\"ecommerce.settings\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.destroy\":true,\"shipping_methods.index\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.invoice-template.index\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.settings\":true,\"marketplace.reports\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}', NULL, 1, 1, 1, '2023-05-02 21:08:11', '2023-05-02 21:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2023-05-02 21:08:11', '2023-05-02 21:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'activated_plugins', '[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"bottom-bar-menu\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\",\"mollie\"]', NULL, '2024-11-29 20:05:09'),
(4, 'language_hide_default', '1', NULL, '2024-11-29 20:05:15'),
(5, 'language_switcher_display', 'dropdown', NULL, '2024-11-29 20:05:15'),
(6, 'language_display', 'all', NULL, '2024-11-29 20:05:15'),
(7, 'language_hide_languages', '[]', NULL, '2024-11-29 20:05:15'),
(8, 'ecommerce_store_name', 'Rexsona Ltd', NULL, '2024-11-29 20:05:14'),
(9, 'ecommerce_store_phone', '+8801813759504', NULL, '2024-11-29 20:05:14'),
(10, 'ecommerce_store_address', 'House: 20, Road # 12, Sector # 09', NULL, '2024-11-29 20:05:14'),
(11, 'ecommerce_store_state', 'Dhaka', NULL, '2024-11-29 20:05:14'),
(12, 'ecommerce_store_city', 'Uttara', NULL, '2024-11-29 20:05:14'),
(13, 'ecommerce_store_country', 'BD', NULL, '2024-11-29 20:05:14'),
(14, 'media_random_hash', '552b94947f819f8733680d88c9dc973c', NULL, '2024-11-29 20:05:15'),
(15, 'permalink-botble-blog-models-post', 'blog', NULL, '2024-11-29 20:05:16'),
(16, 'permalink-botble-blog-models-category', 'blog', NULL, '2024-11-29 20:05:16'),
(17, 'payment_cod_status', '1', NULL, '2024-11-29 20:05:16'),
(18, 'payment_cod_description', 'Please pay money directly to the postman, if you choose cash on delivery method (COD).', NULL, '2024-11-29 20:05:16'),
(19, 'payment_bank_transfer_status', '1', NULL, '2024-11-29 20:05:16'),
(20, 'payment_bank_transfer_description', 'Please send money to our bank account: ACB - 69270 213 19.', NULL, '2024-11-29 20:05:16'),
(21, 'plugins_ecommerce_customer_new_order_status', '0', NULL, '2024-11-29 20:05:17'),
(22, 'plugins_ecommerce_admin_new_order_status', '0', NULL, '2024-11-29 20:05:17'),
(23, 'ecommerce_load_countries_states_cities_from_location_plugin', '0', NULL, '2024-11-29 20:05:13'),
(24, 'payment_stripe_payment_type', 'stripe_checkout', NULL, '2024-11-29 20:05:16'),
(25, 'simple_slider_using_assets', '0', NULL, '2024-11-29 20:05:17'),
(26, 'sale_popup_display_pages', '[\"public.index\"]', NULL, '2024-11-29 20:05:17'),
(27, 'ecommerce_is_enabled_support_digital_products', '1', NULL, '2024-11-29 20:05:13'),
(28, 'theme', 'nest', NULL, '2024-11-29 20:05:17'),
(29, 'admin_favicon', 'fav.png', NULL, '2024-11-29 20:05:09'),
(30, 'admin_logo', 'logo.png', NULL, '2024-11-29 20:05:09'),
(31, 'theme-nest-site_title', 'Rexsona Ltd', NULL, '2024-11-29 20:05:21'),
(32, 'theme-nest-seo_description', 'Rexsona Ltd is a trusted virtual e-commerce marketplace. It is an online retailer that sells various products online from anywhere in Bangladesh. We have more than 25000 products. We sell them online. We have 30 days money-back guarantee service. We always work with fidelity. Thanks for staying with us.', NULL, '2024-11-29 20:05:21'),
(33, 'theme-nest-copyright', 'Copyright © 2023 Freshmart all rights reserved', NULL, '2024-11-29 20:05:20'),
(34, 'theme-nest-favicon', 'fav.png', NULL, '2024-11-29 20:05:20'),
(35, 'theme-nest-logo', 'logo.png', NULL, '2024-11-29 20:05:21'),
(36, 'theme-nest-seo_og_image', 'logo.png', NULL, '2024-11-29 20:05:21'),
(37, 'theme-nest-address', 'House: 20, Road # 12, Sector # 09, Uttara, Dhaka, Bangladesh.', NULL, '2024-11-29 20:05:17'),
(38, 'theme-nest-hotline', '+8801813759504', NULL, '2024-11-29 20:05:21'),
(39, 'theme-nest-phone', '+8801813759504', NULL, '2024-11-29 20:05:21'),
(40, 'theme-nest-working_hours', '10:00 - 18:00, Sat - Fri', NULL, '2024-11-29 20:05:21'),
(41, 'theme-nest-homepage_id', '1', NULL, '2024-11-29 20:05:21'),
(42, 'theme-nest-blog_page_id', '5', NULL, '2024-11-29 20:05:18'),
(43, 'theme-nest-cookie_consent_message', 'আমাদের এই ওয়েব সাইটটি হল একটি ই-কমার্স এর ডেমো।', NULL, '2024-11-29 20:05:20'),
(44, 'theme-nest-cookie_consent_learn_more_url', 'https://www.elitedesign.com.bd', NULL, '2024-11-29 20:05:19'),
(45, 'theme-nest-cookie_consent_learn_more_text', 'বিস্তারিত জানতে ভিজিট করুন', NULL, '2024-11-29 20:05:19'),
(46, 'theme-nest-payment_methods', 'general/payment-methods.png', NULL, '2024-11-29 20:05:21'),
(47, 'theme-nest-number_of_cross_sale_product', '4', NULL, '2024-11-29 20:05:21'),
(48, 'theme-nest-mobile-header-message', '<span>Grand opening, <strong>up to 15%</strong> off all items. Only <strong>3 days</strong> left</span>', NULL, '2024-11-29 20:05:21'),
(49, 'theme-nest-blog_page_background', 'general/header-bg.png', NULL, '2024-11-29 20:05:18'),
(50, 'theme-nest-blog_page_icon', 'logo.png', NULL, '2024-11-29 20:05:18'),
(51, 'theme-nest-image_in_login_page', 'login-1-150x150.png', NULL, '2024-11-29 20:05:21'),
(52, 'theme-nest-number_of_products_per_page', '12', NULL, '2024-11-29 20:05:21'),
(53, 'theme-nest-preloader_enabled', 'yes', NULL, '2024-11-29 20:05:21'),
(54, 'theme-nest-preloader_version', 'v2', NULL, '2024-11-29 20:05:21'),
(55, 'theme-nest-preloader_image', 'logo.png', NULL, '2024-11-29 20:05:21'),
(56, 'theme-nest-social_links', '[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"general\\/facebook.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/elitedesignbd\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"general\\/twitter.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/elitedesignbd\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"general\\/instagram.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/elitedesignbd\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"general\\/pinterest.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/elitedesignbd\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"general\\/youtube.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.youtube.com\\/elitedesignbd\"}]]', NULL, '2024-11-29 20:05:21'),
(57, 'theme-nest-header_messages', '[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\"> Trendy 25<\\/b> silver jewelry, save up 35% off today\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">Super Value Deals<\\/b> - Save more with coupons\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fi-rs-angle-double-right\"},{\"key\":\"message\",\"value\":\"Get great devices up to 50% off\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"View details\"}]]', NULL, '2024-11-29 20:05:21'),
(58, 'theme-nest-contact_info_boxes', '[[{\"key\":\"name\",\"value\":\"Head Office\"},{\"key\":\"address\",\"value\":\"House: 20, Road #12, Sector #09, Uttara, Model Town, Uttara, Dhaka-1230.\"},{\"key\":\"phone\",\"value\":\"+8801813759504\"},{\"key\":\"email\",\"value\":\"info@rexsonaltd.com\"}],[{\"key\":\"name\",\"value\":\"Rexsona Ltd\"},{\"key\":\"address\",\"value\":\"House: 20, Road #12, Sector #09, Uttara, Model Town, Uttara, Dhaka-1230.\"},{\"key\":\"phone\",\"value\":\"+8801813759504\"},{\"key\":\"email\",\"value\":\"info@rexsonaltd.com\"}],[{\"key\":\"name\",\"value\":\"Rexsona Ltd\"},{\"key\":\"address\",\"value\":\"House: 20, Road #12, Sector #09, Uttara, Model Town, Uttara, Dhaka-1230.\"},{\"key\":\"phone\",\"value\":\"+8801813759504\"},{\"key\":\"email\",\"value\":\"info@rexsonaltd.com\"}]]', NULL, '2024-11-29 20:05:19'),
(69, 'membership_authorization_at', '2024-11-29 20:05:09', NULL, '2024-11-29 20:05:15'),
(70, 'admin_email', '[\"info@rexsonaltd.com\"]', NULL, '2024-11-29 20:05:09'),
(71, 'time_zone', 'Asia/Dhaka', NULL, '2024-11-29 20:05:22'),
(72, 'locale_direction', 'ltr', NULL, '2024-11-29 20:05:15'),
(73, 'enable_send_error_reporting_via_email', '0', NULL, '2024-11-29 20:05:15'),
(74, 'login_screen_backgrounds', '{\"1\":\"logo.png\"}', NULL, '2024-11-29 20:05:15'),
(75, 'admin_title', 'RexsonaLtd', NULL, '2024-11-29 20:05:10'),
(76, 'rich_editor', 'ckeditor', NULL, '2024-11-29 20:05:17'),
(77, 'enable_change_admin_theme', '0', NULL, '2024-11-29 20:05:15'),
(78, 'enable_cache', '0', NULL, '2024-11-29 20:05:15'),
(79, 'cache_time', '10', NULL, '2024-11-29 20:05:10'),
(80, 'disable_cache_in_the_admin_panel', '1', NULL, '2024-11-29 20:05:11'),
(81, 'cache_admin_menu_enable', '0', NULL, '2024-11-29 20:05:10'),
(82, 'optimize_page_speed_enable', '0', NULL, '2024-11-29 20:05:16'),
(83, 'optimize_collapse_white_space', '0', NULL, '2024-11-29 20:05:16'),
(84, 'optimize_elide_attributes', '0', NULL, '2024-11-29 20:05:16'),
(85, 'optimize_inline_css', '0', NULL, '2024-11-29 20:05:16'),
(86, 'optimize_insert_dns_prefetch', '0', NULL, '2024-11-29 20:05:16'),
(87, 'optimize_remove_comments', '0', NULL, '2024-11-29 20:05:16'),
(88, 'optimize_remove_quotes', '0', NULL, '2024-11-29 20:05:16'),
(89, 'optimize_defer_javascript', '0', NULL, '2024-11-29 20:05:16'),
(90, 'enable_cache_site_map', '1', NULL, '2024-11-29 20:05:15'),
(91, 'cache_time_site_map', '60', NULL, '2024-11-29 20:05:11'),
(92, 'show_admin_bar', '1', NULL, '2024-11-29 20:05:17'),
(93, 'redirect_404_to_homepage', '0', NULL, '2024-11-29 20:05:17'),
(94, 'show_theme_guideline_link', '0', NULL, '2024-11-29 20:05:17'),
(95, 'enable_faq_schema', '0', NULL, '2024-11-29 20:05:15'),
(96, 'blacklist_keywords', '', NULL, '2024-11-29 20:05:10'),
(97, 'blacklist_email_domains', '', NULL, '2024-11-29 20:05:10'),
(98, 'enable_math_captcha_for_contact_form', '0', NULL, '2024-11-29 20:05:15'),
(99, 'google_analytics', '', NULL, '2024-11-29 20:05:15'),
(100, 'analytics_type', 'ua', NULL, '2024-11-29 20:05:10'),
(101, 'analytics_view_id', '', NULL, '2024-11-29 20:05:10'),
(102, 'analytics_property_id', '', NULL, '2024-11-29 20:05:10'),
(103, 'analytics_service_account_credentials', '', NULL, '2024-11-29 20:05:10'),
(104, 'blog_post_schema_enabled', '1', NULL, '2024-11-29 20:05:10'),
(105, 'blog_post_schema_type', 'NewsArticle', NULL, '2024-11-29 20:05:10'),
(106, 'enable_newsletter_contacts_list_api', '0', NULL, '2024-11-29 20:05:15'),
(107, 'newsletter_mailchimp_api_key', '', NULL, '2024-11-29 20:05:15'),
(108, 'newsletter_mailchimp_list_id', '', NULL, '2024-11-29 20:05:16'),
(109, 'newsletter_sendgrid_api_key', '', NULL, '2024-11-29 20:05:16'),
(110, 'newsletter_sendgrid_list_id', '', NULL, '2024-11-29 20:05:16'),
(111, 'enable_captcha', '0', NULL, '2024-11-29 20:05:15'),
(112, 'captcha_type', 'v2', NULL, '2024-11-29 20:05:11'),
(113, 'captcha_hide_badge', '0', NULL, '2024-11-29 20:05:11'),
(114, 'captcha_site_key', '', NULL, '2024-11-29 20:05:11'),
(115, 'captcha_secret', '', NULL, '2024-11-29 20:05:11'),
(116, 'locale', 'en', NULL, '2024-11-29 20:05:15'),
(117, 'default_admin_theme', 'default', NULL, '2024-11-29 20:05:11'),
(118, 'admin_locale_direction', 'ltr', NULL, '2024-11-29 20:05:09'),
(119, 'theme-nest-show_site_name', '', NULL, '2024-11-29 20:05:21'),
(120, 'theme-nest-seo_title', 'Rexsona Ltd', NULL, '2024-11-29 20:05:21'),
(121, 'theme-nest-animation_enabled', 'yes', NULL, '2024-11-29 20:05:17'),
(122, 'theme-nest-enabled_browse_categories_on_header', 'yes', NULL, '2024-11-29 20:05:20'),
(123, 'theme-nest-enabled_sticky_header', 'yes', NULL, '2024-11-29 20:05:20'),
(124, 'theme-nest-facebook_chat_enabled', 'no', NULL, '2024-11-29 20:05:20'),
(125, 'theme-nest-facebook_page_id', '', NULL, '2024-11-29 20:05:20'),
(126, 'theme-nest-facebook_comment_enabled_in_post', 'no', NULL, '2024-11-29 20:05:20'),
(127, 'theme-nest-facebook_app_id', '', NULL, '2024-11-29 20:05:20'),
(128, 'theme-nest-facebook_admins', '[[{\"key\":\"text\",\"value\":null}]]', NULL, '2024-11-29 20:05:20'),
(129, 'theme-nest-facebook_comment_enabled_in_product', 'no', NULL, '2024-11-29 20:05:20'),
(130, 'theme-nest-font_text', 'Lato', NULL, '2024-11-29 20:05:21'),
(131, 'theme-nest-font_heading', 'Lato', NULL, '2024-11-29 20:05:21'),
(132, 'theme-nest-header_style', '', NULL, '2024-11-29 20:05:21'),
(133, 'theme-nest-color_brand', '#3BB77E', NULL, '2024-11-29 20:05:18'),
(134, 'theme-nest-color_brand_dark', '#29A56C', NULL, '2024-11-29 20:05:18'),
(135, 'theme-nest-color_brand_2', '#FDC040', NULL, '2024-11-29 20:05:18'),
(136, 'theme-nest-color_primary', '#5A97FA', NULL, '2024-11-29 20:05:18'),
(137, 'theme-nest-color_secondary', '#3E5379', NULL, '2024-11-29 20:05:19'),
(138, 'theme-nest-color_warning', '#F0FF00', NULL, '2024-11-29 20:05:19'),
(139, 'theme-nest-color_danger', '#8800FF', NULL, '2024-11-29 20:05:18'),
(140, 'theme-nest-color_success', '#81B13D', NULL, '2024-11-29 20:05:19'),
(141, 'theme-nest-color_info', '#2CC1D8', NULL, '2024-11-29 20:05:18'),
(142, 'theme-nest-color_text', '#7E7E7E', NULL, '2024-11-29 20:05:19'),
(143, 'theme-nest-color_heading', '#253D4E', NULL, '2024-11-29 20:05:18'),
(144, 'theme-nest-color_grey_1', '#253D4E', NULL, '2024-11-29 20:05:18'),
(145, 'theme-nest-color_grey_2', '#242424', NULL, '2024-11-29 20:05:18'),
(146, 'theme-nest-color_grey_4', '#ADADAD', NULL, '2024-11-29 20:05:18'),
(147, 'theme-nest-color_grey_9', '#F4F5F9', NULL, '2024-11-29 20:05:18'),
(148, 'theme-nest-color_muted', '#B6B6B6', NULL, '2024-11-29 20:05:18'),
(149, 'theme-nest-color_body', '#7E7E7E', NULL, '2024-11-29 20:05:18'),
(151, 'theme-nest-blog_single_layout', '', NULL, '2024-11-29 20:05:18'),
(152, 'theme-nest-number_of_posts_in_a_category', '12', NULL, '2024-11-29 20:05:21'),
(153, 'theme-nest-number_of_posts_in_a_tag', '12', NULL, '2024-11-29 20:05:21'),
(154, 'theme-nest-product_single_layout', '', NULL, '2024-11-29 20:05:21'),
(155, 'theme-nest-product_list_layout', '', NULL, '2024-11-29 20:05:21'),
(156, 'theme-nest-max_filter_price', '100000', NULL, '2024-11-29 20:05:21'),
(158, 'theme-nest-cookie_consent_enable', 'yes', NULL, '2024-11-29 20:05:19'),
(159, 'theme-nest-cookie_consent_style', 'full-width', NULL, '2024-11-29 20:05:20'),
(160, 'theme-nest-cookie_consent_button_text', 'আমি বুঝতে পেরেছি', NULL, '2024-11-29 20:05:19'),
(161, 'theme-nest-cookie_consent_background_color', '#000000', NULL, '2024-11-29 20:05:19'),
(162, 'theme-nest-cookie_consent_text_color', '#FFFFFF', NULL, '2024-11-29 20:05:20'),
(163, 'theme-nest-cookie_consent_max_width', '1170', NULL, '2024-11-29 20:05:19'),
(166, 'theme-nest-logo_vendor_dashboard', 'logo.png', NULL, '2024-11-29 20:05:21'),
(168, 'theme-nest-logo_in_the_checkout_page', 'logo.png', NULL, '2024-11-29 20:05:21'),
(169, 'ecommerce_store_company', 'Rexsonaltd', NULL, '2024-11-29 20:05:14'),
(170, 'ecommerce_store_email', 'info@rexsonaltd.com', NULL, '2024-11-29 20:05:14'),
(174, 'ecommerce_store_weight_unit', 'g', NULL, '2024-11-29 20:05:14'),
(175, 'ecommerce_store_width_height_unit', 'cm', NULL, '2024-11-29 20:05:14'),
(176, 'ecommerce_enable_auto_detect_visitor_currency', '0', NULL, '2024-11-29 20:05:12'),
(178, 'ecommerce_thousands_separator', ',', NULL, '2024-11-29 20:05:14'),
(179, 'ecommerce_decimal_separator', '.', NULL, '2024-11-29 20:05:12'),
(180, 'ecommerce_currencies_is_default', '2', NULL, '2024-11-29 20:05:12'),
(185, 'licensed_to', 'infoelitedesignsbd', NULL, '2024-11-29 20:05:15'),
(186, 'api_enabled', '1', NULL, '2024-11-29 20:05:10'),
(191, 'ecommerce_shopping_cart_enabled', '1', NULL, '2024-11-29 20:05:14'),
(192, 'ecommerce_wishlist_enabled', '1', NULL, '2024-11-29 20:05:15'),
(193, 'ecommerce_compare_enabled', '1', NULL, '2024-11-29 20:05:11'),
(194, 'ecommerce_ecommerce_tax_enabled', '1', NULL, '2024-11-29 20:05:12'),
(195, 'ecommerce_default_tax_rate', '0', NULL, '2024-11-29 20:05:12'),
(196, 'ecommerce_display_product_price_including_taxes', '0', NULL, '2024-11-29 20:05:12'),
(197, 'ecommerce_order_tracking_enabled', '1', NULL, '2024-11-29 20:05:14'),
(198, 'ecommerce_order_auto_confirmed', '0', NULL, '2024-11-29 20:05:14'),
(199, 'ecommerce_review_enabled', '1', NULL, '2024-11-29 20:05:14'),
(200, 'ecommerce_review_max_file_size', '2', NULL, '2024-11-29 20:05:14'),
(201, 'ecommerce_review_max_file_number', '6', NULL, '2024-11-29 20:05:14'),
(202, 'ecommerce_only_allow_customers_purchased_to_review', '0', NULL, '2024-11-29 20:05:14'),
(203, 'ecommerce_enable_quick_buy_button', '1', NULL, '2024-11-29 20:05:13'),
(204, 'ecommerce_quick_buy_target_page', 'checkout', NULL, '2024-11-29 20:05:14'),
(205, 'ecommerce_zip_code_enabled', '0', NULL, '2024-11-29 20:05:15'),
(206, 'ecommerce_billing_address_enabled', '0', NULL, '2024-11-29 20:05:11'),
(207, 'ecommerce_verify_customer_email', '0', NULL, '2024-11-29 20:05:14'),
(208, 'ecommerce_enable_recaptcha_in_register_page', '0', NULL, '2024-11-29 20:05:13'),
(209, 'ecommerce_enable_math_captcha_in_register_page', '0', NULL, '2024-11-29 20:05:13'),
(210, 'ecommerce_enable_guest_checkout', '1', NULL, '2024-11-29 20:05:13'),
(211, 'ecommerce_how_to_display_product_variation_images', 'only_variation_images', NULL, '2024-11-29 20:05:13'),
(212, 'ecommerce_show_number_of_products', '1', NULL, '2024-11-29 20:05:14'),
(213, 'ecommerce_show_out_of_stock_products', '1', NULL, '2024-11-29 20:05:14'),
(214, 'ecommerce_minimum_order_amount', '0', NULL, '2024-11-29 20:05:14'),
(215, 'ecommerce_make_phone_field_at_the_checkout_optional', '0', NULL, '2024-11-29 20:05:13'),
(216, 'ecommerce_enable_customer_recently_viewed_products', '1', NULL, '2024-11-29 20:05:13'),
(217, 'ecommerce_max_customer_recently_viewed_products', '24', NULL, '2024-11-29 20:05:13'),
(218, 'ecommerce_hide_other_shipping_options_if_it_has_free_shipping', '0', NULL, '2024-11-29 20:05:13'),
(219, 'ecommerce_company_name_for_invoicing', 'Rexsona Ltd', NULL, '2024-11-29 20:05:11'),
(220, 'ecommerce_company_address_for_invoicing', 'House: 20, Road # 12, Sector # 09, Uttara, Dhaka, Bangladesh', NULL, '2024-11-29 20:05:11'),
(221, 'ecommerce_company_email_for_invoicing', 'info@rexsonaltd.com', NULL, '2024-11-29 20:05:11'),
(222, 'ecommerce_company_phone_for_invoicing', '+8801813759504', NULL, '2024-11-29 20:05:11'),
(224, 'ecommerce_company_logo_for_invoicing', '298737170-435256305288617-5919111556804315091-n.png', NULL, '2024-11-29 20:05:11'),
(225, 'ecommerce_using_custom_font_for_invoice', '0', NULL, '2024-11-29 20:05:14'),
(227, 'ecommerce_invoice_support_arabic_language', '0', NULL, '2024-11-29 20:05:13'),
(228, 'ecommerce_enable_invoice_stamp', '1', NULL, '2024-11-29 20:05:13'),
(229, 'ecommerce_invoice_code_prefix', 'INV-', NULL, '2024-11-29 20:05:13'),
(230, 'ecommerce_disable_order_invoice_until_order_confirmed', '0', NULL, '2024-11-29 20:05:12'),
(231, 'ecommerce_search_for_an_exact_phrase', '0', NULL, '2024-11-29 20:05:14'),
(232, 'ecommerce_search_products_by.0', 'name', NULL, '2024-11-29 20:05:14'),
(233, 'ecommerce_search_products_by.1', 'sku', NULL, '2024-11-29 20:05:14'),
(234, 'ecommerce_search_products_by.2', 'description', NULL, '2024-11-29 20:05:14'),
(236, 'ecommerce_is_enabled_order_return', '1', NULL, '2024-11-29 20:05:13'),
(237, 'ecommerce_can_custom_return_product_quantity', '0', NULL, '2024-11-29 20:05:11'),
(239, 'ecommerce_allow_guest_checkout_for_digital_products', '0', NULL, '2024-11-29 20:05:11'),
(240, 'ecommerce_available_countries', '[\"AF\",\"AX\",\"AL\",\"DZ\",\"AS\",\"AD\",\"AO\",\"AI\",\"AQ\",\"AG\",\"AR\",\"AM\",\"AW\",\"AU\",\"AT\",\"AZ\",\"BS\",\"BH\",\"BD\",\"BB\",\"BY\",\"BE\",\"PW\",\"BZ\",\"BJ\",\"BM\",\"BT\",\"BO\",\"BQ\",\"BA\",\"BW\",\"BV\",\"BR\",\"IO\",\"BN\",\"BG\",\"BF\",\"BI\",\"KH\",\"CM\",\"CA\",\"CV\",\"KY\",\"CF\",\"TD\",\"CL\",\"CN\",\"CX\",\"CC\",\"CO\",\"KM\",\"CG\",\"CD\",\"CK\",\"CR\",\"HR\",\"CU\",\"CW\",\"CY\",\"CZ\",\"DK\",\"DJ\",\"DM\",\"DO\",\"EC\",\"EG\",\"SV\",\"GQ\",\"ER\",\"EE\",\"ET\",\"FK\",\"FO\",\"FJ\",\"FI\",\"FR\",\"GF\",\"PF\",\"TF\",\"GA\",\"GM\",\"GE\",\"DE\",\"GH\",\"GI\",\"GR\",\"GL\",\"GD\",\"GP\",\"GU\",\"GT\",\"GG\",\"GN\",\"GW\",\"GY\",\"HT\",\"HM\",\"HN\",\"HK\",\"HU\",\"IS\",\"IN\",\"ID\",\"IR\",\"IQ\",\"IE\",\"IM\",\"IL\",\"IT\",\"CI\",\"JM\",\"JP\",\"JE\",\"JO\",\"KZ\",\"KE\",\"KI\",\"KW\",\"XK\",\"KG\",\"LA\",\"LV\",\"LB\",\"LS\",\"LR\",\"LY\",\"LI\",\"LT\",\"LU\",\"MO\",\"MK\",\"MG\",\"MW\",\"MY\",\"MV\",\"ML\",\"MT\",\"MH\",\"MQ\",\"MR\",\"MU\",\"YT\",\"MX\",\"FM\",\"MD\",\"MC\",\"MN\",\"ME\",\"MS\",\"MA\",\"MZ\",\"MM\",\"NA\",\"NR\",\"NP\",\"NL\",\"NC\",\"NZ\",\"NI\",\"NE\",\"NG\",\"NU\",\"NF\",\"MP\",\"KP\",\"NO\",\"OM\",\"PK\",\"PS\",\"PA\",\"PG\",\"PY\",\"PE\",\"PH\",\"PN\",\"PL\",\"PT\",\"PR\",\"QA\",\"RE\",\"RO\",\"RU\",\"RW\",\"BL\",\"SH\",\"KN\",\"LC\",\"MF\",\"SX\",\"PM\",\"VC\",\"SM\",\"ST\",\"SA\",\"SN\",\"RS\",\"SC\",\"SL\",\"SG\",\"SK\",\"SI\",\"SB\",\"SO\",\"ZA\",\"GS\",\"KR\",\"SS\",\"ES\",\"LK\",\"SD\",\"SR\",\"SJ\",\"SZ\",\"SE\",\"CH\",\"SY\",\"TW\",\"TJ\",\"TZ\",\"TH\",\"TL\",\"TG\",\"TK\",\"TO\",\"TT\",\"TN\",\"TR\",\"TM\",\"TC\",\"TV\",\"UG\",\"UA\",\"AE\",\"GB\",\"US\",\"UM\",\"UY\",\"UZ\",\"VU\",\"VA\",\"VE\",\"VN\",\"VG\",\"VI\",\"WF\",\"EH\",\"WS\",\"YE\",\"ZM\",\"ZW\"]', NULL, '2024-11-29 20:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `simple_sliders`
--

CREATE TABLE `simple_sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_sliders`
--

INSERT INTO `simple_sliders` (`id`, `name`, `key`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home slider 1', 'home-slider-1', '', 'published', '2023-05-02 21:08:10', '2023-05-31 06:33:38'),
(2, 'Home slider 2', 'home-slider-2', '', 'published', '2023-05-02 21:08:10', '2023-05-31 06:36:06'),
(3, 'Home slider 3', 'home-slider-3', '', 'published', '2023-05-02 21:08:10', '2023-05-31 06:38:21'),
(4, 'Home slider 4', 'home-slider-4', '', 'published', '2023-05-02 21:08:10', '2023-05-31 06:42:02'),
(5, 'Home slider 5', 'home-slider-5', '', 'published', '2023-05-02 21:08:10', '2023-05-31 06:52:58'),
(6, 'Home slider 6', 'home-slider-6', NULL, 'published', '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(7, 'Blog slider 1', 'blog-slider-1', '', 'published', '2023-05-02 21:08:10', '2023-05-31 07:01:16');

-- --------------------------------------------------------

--
-- Table structure for table `simple_slider_items`
--

CREATE TABLE `simple_slider_items` (
  `id` bigint UNSIGNED NOT NULL,
  `simple_slider_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_slider_items`
--

INSERT INTO `simple_slider_items` (`id`, `simple_slider_id`, `title`, `image`, `link`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Don’t miss amazing<br> grocery deals', '1-2.png', '/products', 'Sign up for the daily newsletter', 1, '2023-05-02 21:08:10', '2023-05-31 06:32:52'),
(2, 1, 'Fresh Vegetables<br>										Big discount', '1-1.png', '/products', 'Save up to 50% off on your first order', 2, '2023-05-02 21:08:10', '2023-05-31 06:31:49'),
(3, 2, 'Don’t miss amazing<br> grocery deals', '2-2.png', '/products', 'Sign up for the daily newsletter', 1, '2023-05-02 21:08:10', '2023-05-31 06:35:30'),
(4, 2, 'Fresh Vegetables<br>										Big discount', '2-1.png', '/products', 'Save up to 50% off on your first order', 2, '2023-05-02 21:08:10', '2023-05-31 06:34:43'),
(5, 3, 'Don’t miss amazing<br> grocery deals', '1-1-1.png', '/products', 'Sign up for the daily newsletter', 1, '2023-05-02 21:08:10', '2023-05-31 06:37:18'),
(6, 3, 'Fresh Vegetables<br>										Big discount', '1-2.png', '/products', 'Save up to 50% off on your first order', 2, '2023-05-02 21:08:10', '2023-05-31 06:38:18'),
(7, 4, 'Don’t miss amazing<br> grocery deals', '4-2.png', '/products', 'Sign up for the daily newsletter', 1, '2023-05-02 21:08:10', '2023-05-31 06:41:59'),
(8, 4, 'Fresh Vegetables<br>										Big discount', '4-1-1.png', '/products', 'Save up to 50% off on your first order', 2, '2023-05-02 21:08:10', '2023-05-31 06:41:04'),
(9, 5, 'Don’t miss amazing<br> grocery deals', '5-1.png', '/products', 'Sign up for the daily newsletter', 1, '2023-05-02 21:08:10', '2023-05-31 06:52:55'),
(10, 5, 'Fresh Vegetables<br>										Big discount', '5-2.png', '/products', 'Save up to 50% off on your first order', 2, '2023-05-02 21:08:10', '2023-05-31 06:52:03'),
(11, 6, 'Don’t miss amazing<br> grocery deals', 'sliders/6-1.png', '/products', 'Sign up for the daily newsletter', 1, '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(12, 7, '', 'thumbnail-1.jpg', '', '', 1, '2023-05-02 21:08:10', '2023-05-31 06:57:37'),
(13, 7, '', 'thumbnail-2.jpg', '', '', 2, '2023-05-02 21:08:10', '2023-05-31 06:58:52'),
(14, 7, '', 'thumbnail-3.jpg', '', '', 3, '2023-05-02 21:08:10', '2023-05-31 06:59:32'),
(15, 7, '', 'thumbnail-4.jpg', '', '', 4, '2023-05-02 21:08:10', '2023-05-31 07:00:02'),
(16, 7, '', 'thumbnail-6.jpg', '', '', 5, '2023-05-02 21:08:10', '2023-05-31 07:00:41'),
(17, 7, '', 'thumbnail-5.jpg', '', '', 6, '2023-05-02 21:08:10', '2023-05-31 07:01:13'),
(18, 8, 'Đừng bỏ lỡ <br> tuyệt vời giao dịch hàng tạp hóa', 'sliders/1-1.png', '/products', 'Tiết kiệm hơn với mã giảm giá 70%', 1, '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(19, 8, 'Rau tươi <br>Giảm giá lớn', 'sliders/1-2.png', '/products', 'Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn', 2, '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(20, 9, 'Đừng bỏ lỡ <br> tuyệt vời giao dịch hàng tạp hóa', 'sliders/2-1.png', '/products', 'Tiết kiệm hơn với mã giảm giá 70%', 1, '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(21, 9, 'Rau tươi <br>Giảm giá lớn', 'sliders/2-2.png', '/products', 'Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn', 2, '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(22, 10, 'Đừng bỏ lỡ <br> tuyệt vời giao dịch hàng tạp hóa', 'sliders/3-1.png', '/products', 'Tiết kiệm hơn với mã giảm giá 70%', 1, '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(23, 10, 'Rau tươi <br>Giảm giá lớn', 'sliders/3-2.png', '/products', 'Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn', 2, '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(24, 11, 'Đừng bỏ lỡ <br> tuyệt vời giao dịch hàng tạp hóa', 'sliders/4-1.png', '/products', 'Tiết kiệm hơn với mã giảm giá 70%', 1, '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(25, 11, 'Rau tươi <br>Giảm giá lớn', 'sliders/4-2.png', '/products', 'Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn', 2, '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(26, 12, 'Đừng bỏ lỡ <br> tuyệt vời giao dịch hàng tạp hóa', 'sliders/5-1.png', '/products', 'Tiết kiệm hơn với mã giảm giá 70%', 1, '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(27, 12, 'Rau tươi <br>Giảm giá lớn', 'sliders/5-2.png', '/products', 'Tiết kiệm đến 50% cho đơn đặt hàng đầu tiên của bạn', 2, '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(28, 13, 'Đừng bỏ lỡ <br> tuyệt vời giao dịch hàng tạp hóa', 'sliders/6-1.png', '/products', 'Tiết kiệm hơn với mã giảm giá 70%', 1, '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(29, 14, NULL, 'sliders/thumbnail-1.jpg', NULL, NULL, 1, '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(30, 14, NULL, 'sliders/thumbnail-2.jpg', NULL, NULL, 2, '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(31, 14, NULL, 'sliders/thumbnail-3.jpg', NULL, NULL, 3, '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(32, 14, NULL, 'sliders/thumbnail-4.jpg', NULL, NULL, 4, '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(33, 14, NULL, 'sliders/thumbnail-5.jpg', NULL, NULL, 5, '2023-05-02 21:08:10', '2023-05-02 21:08:10'),
(34, 14, NULL, 'sliders/thumbnail-6.jpg', NULL, NULL, 6, '2023-05-02 21:08:10', '2023-05-02 21:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint UNSIGNED NOT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, 'perxsion', 1, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2023-05-02 21:07:59', '2023-05-02 21:07:59'),
(2, 'hiching', 2, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2023-05-02 21:07:59', '2023-05-02 21:07:59'),
(3, 'kepslo', 3, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2023-05-02 21:07:59', '2023-05-02 21:07:59'),
(4, 'groneba', 4, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2023-05-02 21:07:59', '2023-05-02 21:07:59'),
(5, 'babian', 5, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2023-05-02 21:07:59', '2023-05-02 21:07:59'),
(6, 'valorant', 6, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2023-05-02 21:07:59', '2023-05-02 21:07:59'),
(7, 'pure', 7, 'Botble\\Ecommerce\\Models\\Brand', 'brands', '2023-05-02 21:07:59', '2023-05-02 21:07:59'),
(8, 'milks-and-dairies-1', 1, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-05-02 21:08:01', '2023-05-31 06:44:29'),
(9, 'clothing-beauty', 2, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(10, 'pet-toy', 3, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(11, 'baking-material', 4, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(12, 'fresh-fruit', 5, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(13, 'wines-drinks', 6, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(14, 'fresh-seafood', 7, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(15, 'fast-food', 8, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(16, 'vegetables', 9, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(17, 'bread-and-juice', 10, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(18, 'cake-milk', 11, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(19, 'coffee-teas', 12, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(20, 'pet-foods', 13, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(21, 'diet-foods', 14, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(22, 'wallet', 1, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(23, 'bags', 2, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(24, 'shoes', 3, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(25, 'clothes', 4, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(26, 'hand-bag', 5, 'Botble\\Ecommerce\\Models\\ProductTag', 'product-tags', '2023-05-02 21:08:01', '2023-05-02 21:08:01'),
(51, 'ecommerce', 1, 'Botble\\Blog\\Models\\Category', 'blog', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(52, 'fashion', 2, 'Botble\\Blog\\Models\\Category', 'blog', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(53, 'electronic', 3, 'Botble\\Blog\\Models\\Category', 'blog', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(54, 'commercial', 4, 'Botble\\Blog\\Models\\Category', 'blog', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(55, 'general', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(56, 'design', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(57, 'fashion', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(58, 'branding', 4, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(59, 'modern', 5, 'Botble\\Blog\\Models\\Tag', 'tag', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(60, '4-expert-tips-on-how-to-choose-the-right-mens-wallet', 1, 'Botble\\Blog\\Models\\Post', 'blog', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(61, 'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', 2, 'Botble\\Blog\\Models\\Post', 'blog', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(62, 'the-top-2020-handbag-trends-to-know', 3, 'Botble\\Blog\\Models\\Post', 'blog', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(63, 'how-to-match-the-color-of-your-handbag-with-an-outfit', 4, 'Botble\\Blog\\Models\\Post', 'blog', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(64, 'how-to-care-for-leather-bags', 5, 'Botble\\Blog\\Models\\Post', 'blog', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(65, 'were-crushing-hard-on-summers-10-biggest-bag-trends', 6, 'Botble\\Blog\\Models\\Post', 'blog', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(66, 'essential-qualities-of-highly-successful-music', 7, 'Botble\\Blog\\Models\\Post', 'blog', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(67, '9-things-i-love-about-shaving-my-head', 8, 'Botble\\Blog\\Models\\Post', 'blog', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(68, 'why-teamwork-really-makes-the-dream-work', 9, 'Botble\\Blog\\Models\\Post', 'blog', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(69, 'the-world-caters-to-average-people', 10, 'Botble\\Blog\\Models\\Post', 'blog', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(71, 'homepage', 1, 'Botble\\Page\\Models\\Page', '', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(72, 'homepage-2', 2, 'Botble\\Page\\Models\\Page', '', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(73, 'homepage-3', 3, 'Botble\\Page\\Models\\Page', '', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(74, 'homepage-4', 4, 'Botble\\Page\\Models\\Page', '', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(75, 'blog', 5, 'Botble\\Page\\Models\\Page', '', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(76, 'contact', 6, 'Botble\\Page\\Models\\Page', '', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(77, 'about-us', 7, 'Botble\\Page\\Models\\Page', '', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(78, 'cookie-policy', 8, 'Botble\\Page\\Models\\Page', '', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(79, 'terms-conditions', 9, 'Botble\\Page\\Models\\Page', '', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(80, 'returns-exchanges', 10, 'Botble\\Page\\Models\\Page', '', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(81, 'shipping-delivery', 11, 'Botble\\Page\\Models\\Page', '', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(82, 'privacy-policy', 12, 'Botble\\Page\\Models\\Page', '', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(83, 'blog-list', 13, 'Botble\\Page\\Models\\Page', '', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(84, 'blog-big', 14, 'Botble\\Page\\Models\\Page', '', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(85, 'blog-wide', 15, 'Botble\\Page\\Models\\Page', '', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(86, 'homepage-5', 16, 'Botble\\Page\\Models\\Page', '', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(87, 'homepage-6', 17, 'Botble\\Page\\Models\\Page', '', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(88, 'faq', 18, 'Botble\\Page\\Models\\Page', '', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(89, 'gopro', 1, 'Botble\\Marketplace\\Models\\Store', 'stores', '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(90, 'global-office', 2, 'Botble\\Marketplace\\Models\\Store', 'stores', '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(91, 'young-shop', 3, 'Botble\\Marketplace\\Models\\Store', 'stores', '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(92, 'global-store', 4, 'Botble\\Marketplace\\Models\\Store', 'stores', '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(93, 'roberts-store', 5, 'Botble\\Marketplace\\Models\\Store', 'stores', '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(94, 'stouffer', 6, 'Botble\\Marketplace\\Models\\Store', 'stores', '2023-05-02 21:08:15', '2023-05-02 21:08:15'),
(95, 'khati-srisha-tel-5-keji', 87, 'Botble\\Ecommerce\\Models\\Product', 'products', '2024-09-20 10:58:16', '2024-09-20 10:58:16'),
(96, 'arzukhan', 7, 'Botble\\Marketplace\\Models\\Store', 'stores', '2024-11-03 17:16:39', '2024-11-03 17:16:39'),
(97, 'ywzymvwhmu', 88, 'Botble\\Ecommerce\\Models\\Product', 'products', '2024-11-04 12:59:12', '2024-11-04 12:59:12');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint UNSIGNED DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states_translations`
--

CREATE TABLE `states_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint UNSIGNED NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(2, 'Design', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(3, 'Fashion', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(4, 'Branding', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-05-02 21:08:11', '2023-05-02 21:08:11'),
(5, 'Modern', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2023-05-02 21:08:11', '2023-05-02 21:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `tags_translations`
--

CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(2, 1, 'en', 'auth', 'password', 'The provided password is incorrect.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(3, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(4, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(5, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(6, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(7, 1, 'en', 'passwords', 'sent', 'We have emailed your password reset link!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(8, 1, 'en', 'passwords', 'throttled', 'Please wait before retrying.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(9, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(10, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that email address.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(11, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(12, 1, 'en', 'validation', 'accepted_if', 'The :attribute must be accepted when :other is :value.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(13, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(14, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(15, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(16, 1, 'en', 'validation', 'alpha', 'The :attribute must only contain letters.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(17, 1, 'en', 'validation', 'alpha_dash', 'The :attribute must only contain letters, numbers, dashes and underscores.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(18, 1, 'en', 'validation', 'alpha_num', 'The :attribute must only contain letters and numbers.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(19, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(20, 1, 'en', 'validation', 'ascii', 'The :attribute must only contain single-byte alphanumeric characters and symbols.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(21, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(22, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(23, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(24, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(25, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(26, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(27, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(28, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(29, 1, 'en', 'validation', 'current_password', 'The password is incorrect.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(30, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(31, 1, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(32, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(33, 1, 'en', 'validation', 'decimal', 'The :attribute must have :decimal decimal places.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(34, 1, 'en', 'validation', 'declined', 'The :attribute must be declined.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(35, 1, 'en', 'validation', 'declined_if', 'The :attribute must be declined when :other is :value.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(36, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(37, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(38, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(39, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(40, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(41, 1, 'en', 'validation', 'doesnt_end_with', 'The :attribute may not end with one of the following: :values.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(42, 1, 'en', 'validation', 'doesnt_start_with', 'The :attribute may not start with one of the following: :values.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(43, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(44, 1, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(45, 1, 'en', 'validation', 'enum', 'The selected :attribute is invalid.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(46, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(47, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(48, 1, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(49, 1, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(50, 1, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(51, 1, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(52, 1, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(53, 1, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(54, 1, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal to :value kilobytes.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(55, 1, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal to :value.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(56, 1, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal to :value characters.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(57, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(58, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(59, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(60, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(61, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(62, 1, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(63, 1, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(64, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(65, 1, 'en', 'validation', 'lowercase', 'The :attribute must be lowercase.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(66, 1, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(67, 1, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(68, 1, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(69, 1, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(70, 1, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(71, 1, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal to :value kilobytes.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(72, 1, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal to :value.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(73, 1, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal to :value characters.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(74, 1, 'en', 'validation', 'mac_address', 'The :attribute must be a valid MAC address.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(75, 1, 'en', 'validation', 'max.array', 'The :attribute must not have more than :max items.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(76, 1, 'en', 'validation', 'max.file', 'The :attribute must not be greater than :max kilobytes.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(77, 1, 'en', 'validation', 'max.numeric', 'The :attribute must not be greater than :max.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(78, 1, 'en', 'validation', 'max.string', 'The :attribute must not be greater than :max characters.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(79, 1, 'en', 'validation', 'max_digits', 'The :attribute must not have more than :max digits.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(80, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(81, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(82, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(83, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(84, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(85, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(86, 1, 'en', 'validation', 'min_digits', 'The :attribute must have at least :min digits.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(87, 1, 'en', 'validation', 'missing', 'The :attribute field must be missing.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(88, 1, 'en', 'validation', 'missing_if', 'The :attribute field must be missing when :other is :value.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(89, 1, 'en', 'validation', 'missing_unless', 'The :attribute field must be missing unless :other is :value.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(90, 1, 'en', 'validation', 'missing_with', 'The :attribute field must be missing when :values is present.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(91, 1, 'en', 'validation', 'missing_with_all', 'The :attribute field must be missing when :values are present.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(92, 1, 'en', 'validation', 'multiple_of', 'The :attribute must be a multiple of :value.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(93, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(94, 1, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(95, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(96, 1, 'en', 'validation', 'password.letters', 'The :attribute must contain at least one letter.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(97, 1, 'en', 'validation', 'password.mixed', 'The :attribute must contain at least one uppercase and one lowercase letter.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(98, 1, 'en', 'validation', 'password.numbers', 'The :attribute must contain at least one number.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(99, 1, 'en', 'validation', 'password.symbols', 'The :attribute must contain at least one symbol.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(100, 1, 'en', 'validation', 'password.uncompromised', 'The given :attribute has appeared in a data leak. Please choose a different :attribute.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(101, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(102, 1, 'en', 'validation', 'prohibited', 'The :attribute field is prohibited.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(103, 1, 'en', 'validation', 'prohibited_if', 'The :attribute field is prohibited when :other is :value.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(104, 1, 'en', 'validation', 'prohibited_unless', 'The :attribute field is prohibited unless :other is in :values.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(105, 1, 'en', 'validation', 'prohibits', 'The :attribute field prohibits :other from being present.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(106, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(107, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(108, 1, 'en', 'validation', 'required_array_keys', 'The :attribute field must contain entries for: :values.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(109, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(110, 1, 'en', 'validation', 'required_if_accepted', 'The :attribute field is required when :other is accepted.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(111, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(112, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(113, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(114, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(115, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(116, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(117, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(118, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(119, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(120, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(121, 1, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(122, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(123, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid timezone.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(124, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(125, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(126, 1, 'en', 'validation', 'uppercase', 'The :attribute must be uppercase.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(127, 1, 'en', 'validation', 'url', 'The :attribute must be a valid URL.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(128, 1, 'en', 'validation', 'ulid', 'The :attribute must be a valid ULID.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(129, 1, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(130, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(131, 1, 'en', 'core/acl/api', 'api_clients', 'API Clients', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(132, 1, 'en', 'core/acl/api', 'create_new_client', 'Create new client', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(133, 1, 'en', 'core/acl/api', 'create_new_client_success', 'Create new client successfully!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(134, 1, 'en', 'core/acl/api', 'edit_client', 'Edit client \":name\"', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(135, 1, 'en', 'core/acl/api', 'edit_client_success', 'Updated client successfully!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(136, 1, 'en', 'core/acl/api', 'delete_success', 'Deleted client successfully!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(137, 1, 'en', 'core/acl/api', 'confirm_delete_title', 'Confirm delete client \":name\"', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(138, 1, 'en', 'core/acl/api', 'confirm_delete_description', 'Do you really want to delete client \":name\"?', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(139, 1, 'en', 'core/acl/api', 'cancel_delete', 'No', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(140, 1, 'en', 'core/acl/api', 'continue_delete', 'Yes, let\'s delete it!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(141, 1, 'en', 'core/acl/api', 'name', 'Name', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(142, 1, 'en', 'core/acl/api', 'cancel', 'Cancel', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(143, 1, 'en', 'core/acl/api', 'save', 'Save', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(144, 1, 'en', 'core/acl/api', 'edit', 'Edit', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(145, 1, 'en', 'core/acl/api', 'delete', 'Delete', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(146, 1, 'en', 'core/acl/api', 'client_id', 'Client ID', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(147, 1, 'en', 'core/acl/api', 'secret', 'Secret', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(148, 1, 'en', 'core/acl/auth', 'login.username', 'Email/Username', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(149, 1, 'en', 'core/acl/auth', 'login.email', 'Email', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(150, 1, 'en', 'core/acl/auth', 'login.password', 'Password', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(151, 1, 'en', 'core/acl/auth', 'login.title', 'User Login', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(152, 1, 'en', 'core/acl/auth', 'login.remember', 'Remember me?', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(153, 1, 'en', 'core/acl/auth', 'login.login', 'Sign in', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(154, 1, 'en', 'core/acl/auth', 'login.placeholder.username', 'Please enter your username', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(155, 1, 'en', 'core/acl/auth', 'login.placeholder.email', 'Please enter your email', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(156, 1, 'en', 'core/acl/auth', 'login.success', 'Login successfully!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(157, 1, 'en', 'core/acl/auth', 'login.fail', 'Wrong username or password.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(158, 1, 'en', 'core/acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(159, 1, 'en', 'core/acl/auth', 'login.banned', 'This account is banned.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(160, 1, 'en', 'core/acl/auth', 'login.logout_success', 'Logout successfully!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(161, 1, 'en', 'core/acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(162, 1, 'en', 'core/acl/auth', 'forgot_password.title', 'Forgot Password', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(163, 1, 'en', 'core/acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(164, 1, 'en', 'core/acl/auth', 'forgot_password.submit', 'Submit', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(165, 1, 'en', 'core/acl/auth', 'reset.new_password', 'New password', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(166, 1, 'en', 'core/acl/auth', 'reset.password_confirmation', 'Confirm new password', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(167, 1, 'en', 'core/acl/auth', 'reset.email', 'Email', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(168, 1, 'en', 'core/acl/auth', 'reset.title', 'Reset your password', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(169, 1, 'en', 'core/acl/auth', 'reset.update', 'Update', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(170, 1, 'en', 'core/acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(171, 1, 'en', 'core/acl/auth', 'reset.user_not_found', 'This username is not exist.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(172, 1, 'en', 'core/acl/auth', 'reset.success', 'Reset password successfully!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(173, 1, 'en', 'core/acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(174, 1, 'en', 'core/acl/auth', 'reset.reset.title', 'Email reset password', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(175, 1, 'en', 'core/acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(176, 1, 'en', 'core/acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(177, 1, 'en', 'core/acl/auth', 'reset.new-password', 'New password', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(178, 1, 'en', 'core/acl/auth', 'email.reminder.title', 'Email reset password', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(179, 1, 'en', 'core/acl/auth', 'password_confirmation', 'Password confirm', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(180, 1, 'en', 'core/acl/auth', 'failed', 'Failed', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(181, 1, 'en', 'core/acl/auth', 'throttle', 'Throttle', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(182, 1, 'en', 'core/acl/auth', 'not_member', 'Not a member yet?', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(183, 1, 'en', 'core/acl/auth', 'register_now', 'Register now', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(184, 1, 'en', 'core/acl/auth', 'lost_your_password', 'Lost your password?', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(185, 1, 'en', 'core/acl/auth', 'login_title', 'Admin', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(186, 1, 'en', 'core/acl/auth', 'login_via_social', 'Login with social networks', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(187, 1, 'en', 'core/acl/auth', 'back_to_login', 'Back to login page', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(188, 1, 'en', 'core/acl/auth', 'sign_in_below', 'Sign In Below', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(189, 1, 'en', 'core/acl/auth', 'languages', 'Languages', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(190, 1, 'en', 'core/acl/auth', 'reset_password', 'Reset Password', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(191, 1, 'en', 'core/acl/auth', 'settings.email.title', 'ACL', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(192, 1, 'en', 'core/acl/auth', 'settings.email.description', 'ACL email configuration', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(193, 1, 'en', 'core/acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(194, 1, 'en', 'core/acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(195, 1, 'en', 'core/acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(196, 1, 'en', 'core/acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(197, 1, 'en', 'core/acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(198, 1, 'en', 'core/acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(199, 1, 'en', 'core/acl/permissions', 'notices.create_success', 'The new role was successfully created', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(200, 1, 'en', 'core/acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(201, 1, 'en', 'core/acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(202, 1, 'en', 'core/acl/permissions', 'notices.not_found', 'Role not found', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(203, 1, 'en', 'core/acl/permissions', 'name', 'Name', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(204, 1, 'en', 'core/acl/permissions', 'current_role', 'Current Role', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(205, 1, 'en', 'core/acl/permissions', 'no_role_assigned', 'No role assigned', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(206, 1, 'en', 'core/acl/permissions', 'role_assigned', 'Assigned Role', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(207, 1, 'en', 'core/acl/permissions', 'create_role', 'Create New Role', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(208, 1, 'en', 'core/acl/permissions', 'role_name', 'Name', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(209, 1, 'en', 'core/acl/permissions', 'role_description', 'Description', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(210, 1, 'en', 'core/acl/permissions', 'permission_flags', 'Permission Flags', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(211, 1, 'en', 'core/acl/permissions', 'cancel', 'Cancel', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(212, 1, 'en', 'core/acl/permissions', 'reset', 'Reset', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(213, 1, 'en', 'core/acl/permissions', 'save', 'Save', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(214, 1, 'en', 'core/acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(215, 1, 'en', 'core/acl/permissions', 'details', 'Details', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(216, 1, 'en', 'core/acl/permissions', 'duplicate', 'Duplicate', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(217, 1, 'en', 'core/acl/permissions', 'all', 'All Permissions', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(218, 1, 'en', 'core/acl/permissions', 'list_role', 'List Roles', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(219, 1, 'en', 'core/acl/permissions', 'created_on', 'Created On', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(220, 1, 'en', 'core/acl/permissions', 'created_by', 'Created By', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(221, 1, 'en', 'core/acl/permissions', 'actions', 'Actions', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(222, 1, 'en', 'core/acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(223, 1, 'en', 'core/acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(224, 1, 'en', 'core/acl/permissions', 'delete_global_role', 'Can not delete global role', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(225, 1, 'en', 'core/acl/permissions', 'delete_success', 'Delete role successfully', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(226, 1, 'en', 'core/acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(227, 1, 'en', 'core/acl/permissions', 'not_found', 'No role found!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(228, 1, 'en', 'core/acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(229, 1, 'en', 'core/acl/permissions', 'modified_success', 'Modified successfully', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(230, 1, 'en', 'core/acl/permissions', 'create_success', 'Create successfully', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(231, 1, 'en', 'core/acl/permissions', 'duplicated_success', 'Duplicated successfully', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(232, 1, 'en', 'core/acl/permissions', 'options', 'Options', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(233, 1, 'en', 'core/acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(234, 1, 'en', 'core/acl/permissions', 'roles', 'Roles', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(235, 1, 'en', 'core/acl/permissions', 'role_permission', 'Roles and Permissions', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(236, 1, 'en', 'core/acl/permissions', 'user_management', 'User Management', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(237, 1, 'en', 'core/acl/permissions', 'super_user_management', 'Super User Management', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(238, 1, 'en', 'core/acl/permissions', 'action_unauthorized', 'This action is unauthorized.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(239, 1, 'en', 'core/acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(240, 1, 'en', 'core/acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(241, 1, 'en', 'core/acl/reminders', 'token', 'This password reset token is invalid.', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(242, 1, 'en', 'core/acl/reminders', 'sent', 'Password reminder sent!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(243, 1, 'en', 'core/acl/reminders', 'reset', 'Password has been reset!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(244, 1, 'en', 'core/acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(245, 1, 'en', 'core/acl/users', 'no_select', 'Please select at least one record to take this action!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(246, 1, 'en', 'core/acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(247, 1, 'en', 'core/acl/users', 'update_success', 'Update status successfully!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(248, 1, 'en', 'core/acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(249, 1, 'en', 'core/acl/users', 'not_found', 'User not found', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(250, 1, 'en', 'core/acl/users', 'email_exist', 'That email address already belongs to an existing account', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(251, 1, 'en', 'core/acl/users', 'username_exist', 'That username address already belongs to an existing account', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(252, 1, 'en', 'core/acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(253, 1, 'en', 'core/acl/users', 'password_update_success', 'Password successfully changed', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(254, 1, 'en', 'core/acl/users', 'current_password_not_valid', 'Current password is not valid', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(255, 1, 'en', 'core/acl/users', 'user_exist_in', 'User is already a member', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(256, 1, 'en', 'core/acl/users', 'email', 'Email', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(257, 1, 'en', 'core/acl/users', 'role', 'Role', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(258, 1, 'en', 'core/acl/users', 'username', 'Username', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(259, 1, 'en', 'core/acl/users', 'last_name', 'Last Name', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(260, 1, 'en', 'core/acl/users', 'first_name', 'First Name', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(261, 1, 'en', 'core/acl/users', 'message', 'Message', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(262, 1, 'en', 'core/acl/users', 'cancel_btn', 'Cancel', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(263, 1, 'en', 'core/acl/users', 'change_password', 'Change password', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(264, 1, 'en', 'core/acl/users', 'current_password', 'Current password', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(265, 1, 'en', 'core/acl/users', 'new_password', 'New Password', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(266, 1, 'en', 'core/acl/users', 'confirm_new_password', 'Confirm New Password', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(267, 1, 'en', 'core/acl/users', 'password', 'Password', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(268, 1, 'en', 'core/acl/users', 'save', 'Save', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(269, 1, 'en', 'core/acl/users', 'cannot_delete', 'User could not be deleted', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(270, 1, 'en', 'core/acl/users', 'deleted', 'User deleted', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(271, 1, 'en', 'core/acl/users', 'last_login', 'Last Login', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(272, 1, 'en', 'core/acl/users', 'error_update_profile_image', 'Error when update profile image', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(273, 1, 'en', 'core/acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(274, 1, 'en', 'core/acl/users', 'change_profile_image', 'Change Profile Image', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(275, 1, 'en', 'core/acl/users', 'new_image', 'New Image', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(276, 1, 'en', 'core/acl/users', 'loading', 'Loading', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(277, 1, 'en', 'core/acl/users', 'close', 'Close', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(278, 1, 'en', 'core/acl/users', 'update', 'Update', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(279, 1, 'en', 'core/acl/users', 'read_image_failed', 'Failed to read the image file', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(280, 1, 'en', 'core/acl/users', 'users', 'Users', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(281, 1, 'en', 'core/acl/users', 'update_avatar_success', 'Update profile image successfully!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(282, 1, 'en', 'core/acl/users', 'info.title', 'User profile', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(283, 1, 'en', 'core/acl/users', 'info.first_name', 'First Name', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(284, 1, 'en', 'core/acl/users', 'info.last_name', 'Last Name', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(285, 1, 'en', 'core/acl/users', 'total_users', 'Total users', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(286, 1, 'en', 'core/acl/users', 'statuses.activated', 'Activated', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(287, 1, 'en', 'core/acl/users', 'statuses.deactivated', 'Deactivated', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(288, 1, 'en', 'core/acl/users', 'make_super', 'Make super', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(289, 1, 'en', 'core/acl/users', 'remove_super', 'Remove super', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(290, 1, 'en', 'core/acl/users', 'is_super', 'Is super?', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(291, 1, 'en', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(292, 1, 'en', 'core/acl/users', 'password_confirmation', 'Re-type password', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(293, 1, 'en', 'core/acl/users', 'select_role', 'Select role', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(294, 1, 'en', 'core/acl/users', 'create_new_user', 'Create a new user', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(295, 1, 'en', 'core/acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(296, 1, 'en', 'core/acl/users', 'assigned_role', 'Assigned Role', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(297, 1, 'en', 'core/acl/users', 'no_role_assigned', 'No role assigned', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(298, 1, 'en', 'core/acl/users', 'view_user_profile', 'View user\'s profile', '2023-05-02 21:08:24', '2023-05-02 21:08:24'),
(448, 1, 'en', 'core/base/base', 'yes', 'Yes', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(449, 1, 'en', 'core/base/base', 'no', 'No', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(450, 1, 'en', 'core/base/base', 'is_default', 'Is default?', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(451, 1, 'en', 'core/base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(452, 1, 'en', 'core/base/base', 'email_template.header', 'Email template header', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(453, 1, 'en', 'core/base/base', 'email_template.footer', 'Email template footer', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(454, 1, 'en', 'core/base/base', 'email_template.site_title', 'Site title', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(455, 1, 'en', 'core/base/base', 'email_template.site_url', 'Site URL', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(456, 1, 'en', 'core/base/base', 'email_template.site_logo', 'Site Logo', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(457, 1, 'en', 'core/base/base', 'email_template.date_time', 'Current date time', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(458, 1, 'en', 'core/base/base', 'email_template.date_year', 'Current year', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(459, 1, 'en', 'core/base/base', 'email_template.site_admin_email', 'Site admin email', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(460, 1, 'en', 'core/base/base', 'change_image', 'Change image', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(461, 1, 'en', 'core/base/base', 'delete_image', 'Delete image', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(462, 1, 'en', 'core/base/base', 'preview_image', 'Preview image', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(463, 1, 'en', 'core/base/base', 'image', 'Image', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(464, 1, 'en', 'core/base/base', 'using_button', 'Using button', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(465, 1, 'en', 'core/base/base', 'select_image', 'Select image', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(466, 1, 'en', 'core/base/base', 'to_add_more_image', 'to add more images', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(467, 1, 'en', 'core/base/base', 'add_image', 'Add image', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(468, 1, 'en', 'core/base/base', 'tools', 'Tools', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(469, 1, 'en', 'core/base/cache', 'cache_management', 'Cache management', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(470, 1, 'en', 'core/base/cache', 'cache_commands', 'Clear cache commands', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(471, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(472, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(473, 1, 'en', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(474, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(475, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(476, 1, 'en', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(477, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(478, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(479, 1, 'en', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(480, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(481, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(482, 1, 'en', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(483, 1, 'en', 'core/base/cache', 'commands.clear_log.title', 'Clear log', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(484, 1, 'en', 'core/base/cache', 'commands.clear_log.description', 'Clear system log files', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(485, 1, 'en', 'core/base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(486, 1, 'en', 'core/base/enums', 'statuses.draft', 'Draft', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(487, 1, 'en', 'core/base/enums', 'statuses.pending', 'Pending', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(488, 1, 'en', 'core/base/enums', 'statuses.published', 'Published', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(489, 1, 'en', 'core/base/errors', '401_title', 'Permission Denied', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(490, 1, 'en', 'core/base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(491, 1, 'en', 'core/base/errors', '404_title', 'Page could not be found', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(492, 1, 'en', 'core/base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(493, 1, 'en', 'core/base/errors', '500_title', 'Page could not be loaded', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(494, 1, 'en', 'core/base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(495, 1, 'en', 'core/base/errors', 'reasons', 'This may have occurred because of several reasons', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(496, 1, 'en', 'core/base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\":link\">clicking here</a>.', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(497, 1, 'en', 'core/base/errors', 'not_found', 'Not Found', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(498, 1, 'en', 'core/base/errors', 'results_not_found', 'Results not found!', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(499, 1, 'en', 'core/base/forms', 'choose_image', 'Choose image', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(500, 1, 'en', 'core/base/forms', 'actions', 'Actions', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(501, 1, 'en', 'core/base/forms', 'save', 'Save & Exit', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(502, 1, 'en', 'core/base/forms', 'save_and_continue', 'Save', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(503, 1, 'en', 'core/base/forms', 'image', 'Image', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(504, 1, 'en', 'core/base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(505, 1, 'en', 'core/base/forms', 'create', 'Create', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(506, 1, 'en', 'core/base/forms', 'edit', 'Edit', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(507, 1, 'en', 'core/base/forms', 'permalink', 'Permalink', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(508, 1, 'en', 'core/base/forms', 'ok', 'OK', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(509, 1, 'en', 'core/base/forms', 'cancel', 'Cancel', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(510, 1, 'en', 'core/base/forms', 'character_remain', 'character(s) remain', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(511, 1, 'en', 'core/base/forms', 'template', 'Template', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(512, 1, 'en', 'core/base/forms', 'choose_file', 'Choose file', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(513, 1, 'en', 'core/base/forms', 'file', 'File', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(514, 1, 'en', 'core/base/forms', 'content', 'Content', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(515, 1, 'en', 'core/base/forms', 'description', 'Description', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(516, 1, 'en', 'core/base/forms', 'name', 'Name', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(517, 1, 'en', 'core/base/forms', 'slug', 'Slug', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(518, 1, 'en', 'core/base/forms', 'title', 'Title', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(519, 1, 'en', 'core/base/forms', 'value', 'Value', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(520, 1, 'en', 'core/base/forms', 'name_placeholder', 'Name', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(521, 1, 'en', 'core/base/forms', 'alias_placeholder', 'Alias', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(522, 1, 'en', 'core/base/forms', 'description_placeholder', 'Short description', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(523, 1, 'en', 'core/base/forms', 'parent', 'Parent', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(524, 1, 'en', 'core/base/forms', 'icon', 'Icon', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(525, 1, 'en', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(526, 1, 'en', 'core/base/forms', 'order_by', 'Order by', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(527, 1, 'en', 'core/base/forms', 'order_by_placeholder', 'Order by', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(528, 1, 'en', 'core/base/forms', 'is_featured', 'Is featured?', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(529, 1, 'en', 'core/base/forms', 'is_default', 'Is default?', '2023-05-02 21:08:25', '2023-05-02 21:08:25');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(530, 1, 'en', 'core/base/forms', 'update', 'Update', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(531, 1, 'en', 'core/base/forms', 'publish', 'Publish', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(532, 1, 'en', 'core/base/forms', 'remove_image', 'Remove image', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(533, 1, 'en', 'core/base/forms', 'remove_file', 'Remove file', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(534, 1, 'en', 'core/base/forms', 'order', 'Order', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(535, 1, 'en', 'core/base/forms', 'alias', 'Alias', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(536, 1, 'en', 'core/base/forms', 'basic_information', 'Basic information', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(537, 1, 'en', 'core/base/forms', 'short_code', 'Shortcode', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(538, 1, 'en', 'core/base/forms', 'add_short_code', 'Add a shortcode', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(539, 1, 'en', 'core/base/forms', 'add', 'Add', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(540, 1, 'en', 'core/base/forms', 'link', 'Link', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(541, 1, 'en', 'core/base/forms', 'show_hide_editor', 'Show/Hide Editor', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(542, 1, 'en', 'core/base/forms', 'basic_info_title', 'Basic information', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(543, 1, 'en', 'core/base/forms', 'expand_all', 'Expand all', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(544, 1, 'en', 'core/base/forms', 'collapse_all', 'Collapse all', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(545, 1, 'en', 'core/base/forms', 'view_new_tab', 'Open in new tab', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(546, 1, 'en', 'core/base/forms', 'view_preview_image', 'View preview image', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(547, 1, 'en', 'core/base/forms', 'edit_item', 'Edit \":name\"', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(548, 1, 'en', 'core/base/layouts', 'platform_admin', 'Platform Administration', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(549, 1, 'en', 'core/base/layouts', 'dashboard', 'Dashboard', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(550, 1, 'en', 'core/base/layouts', 'widgets', 'Widgets', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(551, 1, 'en', 'core/base/layouts', 'plugins', 'Plugins', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(552, 1, 'en', 'core/base/layouts', 'settings', 'Settings', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(553, 1, 'en', 'core/base/layouts', 'setting_general', 'General', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(554, 1, 'en', 'core/base/layouts', 'setting_email', 'Email', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(555, 1, 'en', 'core/base/layouts', 'system_information', 'System information', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(556, 1, 'en', 'core/base/layouts', 'theme', 'Theme', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(557, 1, 'en', 'core/base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(558, 1, 'en', 'core/base/layouts', 'profile', 'Profile', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(559, 1, 'en', 'core/base/layouts', 'logout', 'Logout', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(560, 1, 'en', 'core/base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(561, 1, 'en', 'core/base/layouts', 'home', 'Home', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(562, 1, 'en', 'core/base/layouts', 'search', 'Search', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(563, 1, 'en', 'core/base/layouts', 'add_new', 'Add new', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(564, 1, 'en', 'core/base/layouts', 'n_a', 'N/A', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(565, 1, 'en', 'core/base/layouts', 'page_loaded_time', 'Page loaded in', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(566, 1, 'en', 'core/base/layouts', 'view_website', 'View website', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(567, 1, 'en', 'core/base/mail', 'send-fail', 'Send email failed', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(568, 1, 'en', 'core/base/notices', 'create_success_message', 'Created successfully', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(569, 1, 'en', 'core/base/notices', 'update_success_message', 'Updated successfully', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(570, 1, 'en', 'core/base/notices', 'delete_success_message', 'Deleted successfully', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(571, 1, 'en', 'core/base/notices', 'success_header', 'Success!', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(572, 1, 'en', 'core/base/notices', 'error_header', 'Error!', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(573, 1, 'en', 'core/base/notices', 'no_select', 'Please select at least one record to perform this action!', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(574, 1, 'en', 'core/base/notices', 'processing_request', 'We are processing your request.', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(575, 1, 'en', 'core/base/notices', 'error', 'Error!', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(576, 1, 'en', 'core/base/notices', 'success', 'Success!', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(577, 1, 'en', 'core/base/notices', 'info', 'Info!', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(578, 1, 'en', 'core/base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(579, 1, 'en', 'core/base/notifications', 'notifications', 'Notifications', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(580, 1, 'en', 'core/base/notifications', 'mark_as_read', 'Mark as read', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(581, 1, 'en', 'core/base/notifications', 'clear', 'Clear', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(582, 1, 'en', 'core/base/notifications', 'no_notification_here', 'No notifications here', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(583, 1, 'en', 'core/base/notifications', 'please_check_again_later', 'Please check again later', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(584, 1, 'en', 'core/base/notifications', 'view_more', 'View more...', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(585, 1, 'en', 'core/base/notifications', 'view', 'View', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(586, 1, 'en', 'core/base/notifications', 'show_more', 'Show more', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(587, 1, 'en', 'core/base/notifications', 'show_less', 'Show less', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(588, 1, 'en', 'core/base/system', 'no_select', 'Please select at least one record to take this action!', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(589, 1, 'en', 'core/base/system', 'cannot_find_user', 'Unable to find specified user', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(590, 1, 'en', 'core/base/system', 'supper_revoked', 'Super user access revoked', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(591, 1, 'en', 'core/base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(592, 1, 'en', 'core/base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(593, 1, 'en', 'core/base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(594, 1, 'en', 'core/base/system', 'supper_granted', 'Super user access granted', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(595, 1, 'en', 'core/base/system', 'delete_log_success', 'Delete log file successfully!', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(596, 1, 'en', 'core/base/system', 'get_member_success', 'Member list retrieved successfully', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(597, 1, 'en', 'core/base/system', 'error_occur', 'The following errors occurred', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(598, 1, 'en', 'core/base/system', 'user_management', 'User Management', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(599, 1, 'en', 'core/base/system', 'user_management_description', 'Manage users.', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(600, 1, 'en', 'core/base/system', 'role_and_permission', 'Roles and Permissions', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(601, 1, 'en', 'core/base/system', 'role_and_permission_description', 'Manage the available roles.', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(602, 1, 'en', 'core/base/system', 'user.list_super', 'List Super Users', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(603, 1, 'en', 'core/base/system', 'user.email', 'Email', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(604, 1, 'en', 'core/base/system', 'user.last_login', 'Last Login', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(605, 1, 'en', 'core/base/system', 'user.username', 'Username', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(606, 1, 'en', 'core/base/system', 'user.add_user', 'Add Super User', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(607, 1, 'en', 'core/base/system', 'user.cancel', 'Cancel', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(608, 1, 'en', 'core/base/system', 'user.create', 'Create', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(609, 1, 'en', 'core/base/system', 'options.features', 'Feature Access Control', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(610, 1, 'en', 'core/base/system', 'options.feature_description', 'Manage the available.', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(611, 1, 'en', 'core/base/system', 'options.manage_super', 'Super User Management', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(612, 1, 'en', 'core/base/system', 'options.manage_super_description', 'Add/remove super users.', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(613, 1, 'en', 'core/base/system', 'options.info', 'System information', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(614, 1, 'en', 'core/base/system', 'options.info_description', 'All information about current system configuration.', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(615, 1, 'en', 'core/base/system', 'info.title', 'System information', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(616, 1, 'en', 'core/base/system', 'info.cache', 'Cache', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(617, 1, 'en', 'core/base/system', 'info.locale', 'Active locale', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(618, 1, 'en', 'core/base/system', 'info.environment', 'Environment', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(619, 1, 'en', 'core/base/system', 'disabled_in_demo_mode', 'You cannot do it in demo mode!', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(620, 1, 'en', 'core/base/system', 'report_description', 'Please share this information for troubleshooting', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(621, 1, 'en', 'core/base/system', 'get_system_report', 'Get System Report', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(622, 1, 'en', 'core/base/system', 'system_environment', 'System Environment', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(623, 1, 'en', 'core/base/system', 'framework_version', 'Framework Version', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(624, 1, 'en', 'core/base/system', 'timezone', 'Timezone', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(625, 1, 'en', 'core/base/system', 'debug_mode', 'Debug Mode', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(626, 1, 'en', 'core/base/system', 'debug_mode_off', 'Debug Mode Off', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(627, 1, 'en', 'core/base/system', 'storage_dir_writable', 'Storage Dir Writable', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(628, 1, 'en', 'core/base/system', 'cache_dir_writable', 'Cache Dir Writable', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(629, 1, 'en', 'core/base/system', 'app_size', 'App Size', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(630, 1, 'en', 'core/base/system', 'server_environment', 'Server Environment', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(631, 1, 'en', 'core/base/system', 'php_version', 'PHP Version', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(632, 1, 'en', 'core/base/system', 'php_version_error', 'PHP must be >= :version', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(633, 1, 'en', 'core/base/system', 'server_software', 'Server Software', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(634, 1, 'en', 'core/base/system', 'server_os', 'Server OS', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(635, 1, 'en', 'core/base/system', 'database', 'Database', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(636, 1, 'en', 'core/base/system', 'ssl_installed', 'SSL Installed', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(637, 1, 'en', 'core/base/system', 'cache_driver', 'Cache Driver', '2023-05-02 21:08:25', '2023-05-02 21:08:25'),
(638, 1, 'en', 'core/base/system', 'session_driver', 'Session Driver', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(639, 1, 'en', 'core/base/system', 'queue_connection', 'Queue Connection', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(640, 1, 'en', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(641, 1, 'en', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(642, 1, 'en', 'core/base/system', 'pdo_ext', 'PDO Ext', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(643, 1, 'en', 'core/base/system', 'curl_ext', 'CURL Ext', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(644, 1, 'en', 'core/base/system', 'exif_ext', 'Exif Ext', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(645, 1, 'en', 'core/base/system', 'file_info_ext', 'File info Ext', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(646, 1, 'en', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(647, 1, 'en', 'core/base/system', 'extra_stats', 'Extra Stats', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(648, 1, 'en', 'core/base/system', 'installed_packages', 'Installed packages and their version numbers', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(649, 1, 'en', 'core/base/system', 'extra_information', 'Extra Information', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(650, 1, 'en', 'core/base/system', 'copy_report', 'Copy Report', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(651, 1, 'en', 'core/base/system', 'package_name', 'Package Name', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(652, 1, 'en', 'core/base/system', 'dependency_name', 'Dependency Name', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(653, 1, 'en', 'core/base/system', 'version', 'Version', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(654, 1, 'en', 'core/base/system', 'cms_version', 'CMS Version', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(655, 1, 'en', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(656, 1, 'en', 'core/base/system', 'updater', 'System Updater', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(657, 1, 'en', 'core/base/system', 'zip', 'Zip Ext', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(658, 1, 'en', 'core/base/system', 'iconv', 'Iconv Ext', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(659, 1, 'en', 'core/base/system', 'memory_limit', 'Memory limit', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(660, 1, 'en', 'core/base/system', 'max_execution_time', 'Max execution time (s)', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(661, 1, 'en', 'core/base/system', 'allow_url_fopen_enabled', 'allow_url_fopen enabled', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(662, 1, 'en', 'core/base/system', 'cleanup.title', 'Cleanup System', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(663, 1, 'en', 'core/base/system', 'cleanup.table.name', 'Table Name', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(664, 1, 'en', 'core/base/system', 'cleanup.table.count', 'Records', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(665, 1, 'en', 'core/base/system', 'cleanup.backup_alert', 'Please backup your database and script files before cleanup, it will clear your data in database.', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(666, 1, 'en', 'core/base/system', 'cleanup.messenger_choose_without_table', 'Please choose to ignore tables that do not want to be cleaned', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(667, 1, 'en', 'core/base/system', 'cleanup.messenger_confirm_cleanup', 'Are you sure you want to database cleanup action, it will clear your data in database?', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(668, 1, 'en', 'core/base/system', 'cleanup.submit_button', 'Cleanup', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(669, 1, 'en', 'core/base/system', 'cleanup.success_message', 'Cleaned data successfully', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(670, 1, 'en', 'core/base/system', 'cleanup.not_enabled_yet', 'This featured is not enabled yet. <br />Please add into .env: <code>CMS_ENABLED_CLEANUP_DATABASE=true</code> to enable this feature!', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(671, 1, 'en', 'core/base/tables', 'id', 'ID', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(672, 1, 'en', 'core/base/tables', 'name', 'Name', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(673, 1, 'en', 'core/base/tables', 'slug', 'Slug', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(674, 1, 'en', 'core/base/tables', 'title', 'Title', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(675, 1, 'en', 'core/base/tables', 'order_by', 'Order By', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(676, 1, 'en', 'core/base/tables', 'order', 'Order', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(677, 1, 'en', 'core/base/tables', 'status', 'Status', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(678, 1, 'en', 'core/base/tables', 'created_at', 'Created At', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(679, 1, 'en', 'core/base/tables', 'updated_at', 'Updated At', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(680, 1, 'en', 'core/base/tables', 'description', 'Description', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(681, 1, 'en', 'core/base/tables', 'operations', 'Operations', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(682, 1, 'en', 'core/base/tables', 'url', 'URL', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(683, 1, 'en', 'core/base/tables', 'author', 'Author', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(684, 1, 'en', 'core/base/tables', 'notes', 'Notes', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(685, 1, 'en', 'core/base/tables', 'column', 'Column', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(686, 1, 'en', 'core/base/tables', 'origin', 'Origin', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(687, 1, 'en', 'core/base/tables', 'after_change', 'After changes', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(688, 1, 'en', 'core/base/tables', 'views', 'Views', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(689, 1, 'en', 'core/base/tables', 'browser', 'Browser', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(690, 1, 'en', 'core/base/tables', 'session', 'Session', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(691, 1, 'en', 'core/base/tables', 'activated', 'activated', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(692, 1, 'en', 'core/base/tables', 'deactivated', 'deactivated', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(693, 1, 'en', 'core/base/tables', 'is_featured', 'Is featured', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(694, 1, 'en', 'core/base/tables', 'edit', 'Edit', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(695, 1, 'en', 'core/base/tables', 'delete', 'Delete', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(696, 1, 'en', 'core/base/tables', 'restore', 'Restore', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(697, 1, 'en', 'core/base/tables', 'activate', 'Activate', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(698, 1, 'en', 'core/base/tables', 'deactivate', 'Deactivate', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(699, 1, 'en', 'core/base/tables', 'excel', 'Excel', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(700, 1, 'en', 'core/base/tables', 'export', 'Export', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(701, 1, 'en', 'core/base/tables', 'csv', 'CSV', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(702, 1, 'en', 'core/base/tables', 'pdf', 'PDF', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(703, 1, 'en', 'core/base/tables', 'print', 'Print', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(704, 1, 'en', 'core/base/tables', 'reset', 'Reset', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(705, 1, 'en', 'core/base/tables', 'reload', 'Reload', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(706, 1, 'en', 'core/base/tables', 'display', 'Display', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(707, 1, 'en', 'core/base/tables', 'all', 'All', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(708, 1, 'en', 'core/base/tables', 'add_new', 'Add New', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(709, 1, 'en', 'core/base/tables', 'action', 'Actions', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(710, 1, 'en', 'core/base/tables', 'delete_entry', 'Delete', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(711, 1, 'en', 'core/base/tables', 'view', 'View Detail', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(712, 1, 'en', 'core/base/tables', 'save', 'Save', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(713, 1, 'en', 'core/base/tables', 'show_from', 'Show from', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(714, 1, 'en', 'core/base/tables', 'to', 'to', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(715, 1, 'en', 'core/base/tables', 'in', 'in', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(716, 1, 'en', 'core/base/tables', 'records', 'records', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(717, 1, 'en', 'core/base/tables', 'no_data', 'No data to display', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(718, 1, 'en', 'core/base/tables', 'no_record', 'No record', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(719, 1, 'en', 'core/base/tables', 'confirm_delete', 'Confirm delete', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(720, 1, 'en', 'core/base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(721, 1, 'en', 'core/base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(722, 1, 'en', 'core/base/tables', 'cancel', 'Cancel', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(723, 1, 'en', 'core/base/tables', 'template', 'Template', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(724, 1, 'en', 'core/base/tables', 'email', 'Email', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(725, 1, 'en', 'core/base/tables', 'last_login', 'Last login', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(726, 1, 'en', 'core/base/tables', 'shortcode', 'Shortcode', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(727, 1, 'en', 'core/base/tables', 'image', 'Image', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(728, 1, 'en', 'core/base/tables', 'bulk_changes', 'Bulk changes', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(729, 1, 'en', 'core/base/tables', 'submit', 'Submit', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(730, 1, 'en', 'core/base/tables', 'please_select_record', 'Please select at least one record to perform this action!', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(731, 1, 'en', 'core/base/tabs', 'detail', 'Detail', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(732, 1, 'en', 'core/base/tabs', 'file', 'Files', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(733, 1, 'en', 'core/base/tabs', 'record_note', 'Record Note', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(734, 1, 'en', 'core/base/tabs', 'revision', 'Revision History', '2023-05-02 21:08:26', '2023-05-02 21:08:26'),
(991, 1, 'en', 'core/dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2023-05-02 21:08:27', '2023-05-02 21:08:27'),
(992, 1, 'en', 'core/dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2023-05-02 21:08:27', '2023-05-02 21:08:27'),
(993, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2023-05-02 21:08:27', '2023-05-02 21:08:27'),
(994, 1, 'en', 'core/dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2023-05-02 21:08:27', '2023-05-02 21:08:27'),
(995, 1, 'en', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2023-05-02 21:08:27', '2023-05-02 21:08:27'),
(996, 1, 'en', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2023-05-02 21:08:27', '2023-05-02 21:08:27'),
(997, 1, 'en', 'core/dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2023-05-02 21:08:27', '2023-05-02 21:08:27'),
(998, 1, 'en', 'core/dashboard/dashboard', 'hide', 'Hide', '2023-05-02 21:08:27', '2023-05-02 21:08:27'),
(999, 1, 'en', 'core/dashboard/dashboard', 'reload', 'Reload', '2023-05-02 21:08:27', '2023-05-02 21:08:27'),
(1000, 1, 'en', 'core/dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2023-05-02 21:08:27', '2023-05-02 21:08:27'),
(1001, 1, 'en', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2023-05-02 21:08:27', '2023-05-02 21:08:27'),
(1002, 1, 'en', 'core/dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2023-05-02 21:08:27', '2023-05-02 21:08:27'),
(1003, 1, 'en', 'core/dashboard/dashboard', 'fullscreen', 'Full screen', '2023-05-02 21:08:27', '2023-05-02 21:08:27'),
(1004, 1, 'en', 'core/dashboard/dashboard', 'title', 'Dashboard', '2023-05-02 21:08:27', '2023-05-02 21:08:27'),
(1005, 1, 'en', 'core/dashboard/dashboard', 'predefined_ranges.today', 'Today', '2023-05-02 21:08:27', '2023-05-02 21:08:27'),
(1006, 1, 'en', 'core/dashboard/dashboard', 'predefined_ranges.yesterday', 'Yesterday', '2023-05-02 21:08:27', '2023-05-02 21:08:27'),
(1007, 1, 'en', 'core/dashboard/dashboard', 'predefined_ranges.this_week', 'This Week', '2023-05-02 21:08:27', '2023-05-02 21:08:27'),
(1008, 1, 'en', 'core/dashboard/dashboard', 'predefined_ranges.last_7_days', 'Last 7 Days', '2023-05-02 21:08:27', '2023-05-02 21:08:27'),
(1009, 1, 'en', 'core/dashboard/dashboard', 'predefined_ranges.this_month', 'This Month', '2023-05-02 21:08:27', '2023-05-02 21:08:27'),
(1010, 1, 'en', 'core/dashboard/dashboard', 'predefined_ranges.last_30_days', 'Last 30 Days', '2023-05-02 21:08:27', '2023-05-02 21:08:27'),
(1011, 1, 'en', 'core/dashboard/dashboard', 'predefined_ranges.this_year', 'This Year', '2023-05-02 21:08:27', '2023-05-02 21:08:27'),
(1026, 1, 'en', 'core/media/media', 'filter', 'Filter', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1027, 1, 'en', 'core/media/media', 'everything', 'Everything', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1028, 1, 'en', 'core/media/media', 'image', 'Image', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1029, 1, 'en', 'core/media/media', 'video', 'Video', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1030, 1, 'en', 'core/media/media', 'document', 'Document', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1031, 1, 'en', 'core/media/media', 'view_in', 'View in', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1032, 1, 'en', 'core/media/media', 'all_media', 'All media', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1033, 1, 'en', 'core/media/media', 'trash', 'Trash', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1034, 1, 'en', 'core/media/media', 'recent', 'Recent', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1035, 1, 'en', 'core/media/media', 'favorites', 'Favorites', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1036, 1, 'en', 'core/media/media', 'upload', 'Upload', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1037, 1, 'en', 'core/media/media', 'create_folder', 'Create folder', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1038, 1, 'en', 'core/media/media', 'refresh', 'Refresh', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1039, 1, 'en', 'core/media/media', 'empty_trash', 'Empty trash', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1040, 1, 'en', 'core/media/media', 'search_file_and_folder', 'Search in current folder', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1041, 1, 'en', 'core/media/media', 'sort', 'Sort', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1042, 1, 'en', 'core/media/media', 'file_name_asc', 'File name - ASC', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1043, 1, 'en', 'core/media/media', 'file_name_desc', 'File name - DESC', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1044, 1, 'en', 'core/media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1045, 1, 'en', 'core/media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1046, 1, 'en', 'core/media/media', 'size_asc', 'Size - ASC', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1047, 1, 'en', 'core/media/media', 'size_desc', 'Size - DESC', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1048, 1, 'en', 'core/media/media', 'actions', 'Actions', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1049, 1, 'en', 'core/media/media', 'nothing_is_selected', 'Nothing is selected', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1050, 1, 'en', 'core/media/media', 'insert', 'Insert', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1051, 1, 'en', 'core/media/media', 'folder_name', 'Folder name', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1052, 1, 'en', 'core/media/media', 'create', 'Create', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1053, 1, 'en', 'core/media/media', 'rename', 'Rename', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1054, 1, 'en', 'core/media/media', 'crop', 'Crop', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1055, 1, 'en', 'core/media/media', 'close', 'Close', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1056, 1, 'en', 'core/media/media', 'save_changes', 'Save changes', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1057, 1, 'en', 'core/media/media', 'move_to_trash', 'Move items to trash', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1058, 1, 'en', 'core/media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1059, 1, 'en', 'core/media/media', 'confirm', 'Confirm', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1060, 1, 'en', 'core/media/media', 'confirm_delete', 'Delete item(s)', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1061, 1, 'en', 'core/media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1062, 1, 'en', 'core/media/media', 'empty_trash_title', 'Empty trash', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1063, 1, 'en', 'core/media/media', 'empty_trash_description', 'Your request cannot rollback. Are you sure you wanna remove all items in trash?', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1064, 1, 'en', 'core/media/media', 'up_level', 'Up one level', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1065, 1, 'en', 'core/media/media', 'upload_progress', 'Upload progress', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1066, 1, 'en', 'core/media/media', 'alt_text', 'Alt text', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1067, 1, 'en', 'core/media/media', 'folder_created', 'Folder is created successfully!', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1068, 1, 'en', 'core/media/media', 'gallery', 'Media gallery', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1069, 1, 'en', 'core/media/media', 'trash_error', 'Error when delete selected item(s)', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1070, 1, 'en', 'core/media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1071, 1, 'en', 'core/media/media', 'restore_error', 'Error when restore selected item(s)', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1072, 1, 'en', 'core/media/media', 'restore_success', 'Restore selected item(s) successfully!', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1073, 1, 'en', 'core/media/media', 'copy_success', 'Copied selected item(s) successfully!', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1074, 1, 'en', 'core/media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1075, 1, 'en', 'core/media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1076, 1, 'en', 'core/media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1077, 1, 'en', 'core/media/media', 'rename_error', 'Error when rename item(s)', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1078, 1, 'en', 'core/media/media', 'rename_success', 'Rename selected item(s) successfully!', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1079, 1, 'en', 'core/media/media', 'crop_success', 'Crop image successfully!', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1080, 1, 'en', 'core/media/media', 'empty_trash_success', 'Empty trash successfully!', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1081, 1, 'en', 'core/media/media', 'invalid_action', 'Invalid action!', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1082, 1, 'en', 'core/media/media', 'file_not_exists', 'File is not exists!', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1083, 1, 'en', 'core/media/media', 'download_file_error', 'Error when downloading files!', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1084, 1, 'en', 'core/media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1085, 1, 'en', 'core/media/media', 'can_not_download_file', 'Can not download this file!', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1086, 1, 'en', 'core/media/media', 'invalid_request', 'Invalid request!', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1087, 1, 'en', 'core/media/media', 'add_success', 'Add item successfully!', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1088, 1, 'en', 'core/media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1089, 1, 'en', 'core/media/media', 'file_too_big_readable_size', 'File too big. Max file upload is :size.', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1090, 1, 'en', 'core/media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1091, 1, 'en', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1092, 1, 'en', 'core/media/media', 'failed_to_crop_image', 'The file cropping must be image type', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1093, 1, 'en', 'core/media/media', 'menu_name', 'Media', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1094, 1, 'en', 'core/media/media', 'add', 'Add media', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1095, 1, 'en', 'core/media/media', 'javascript.name', 'Name', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1096, 1, 'en', 'core/media/media', 'javascript.url', 'URL', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1097, 1, 'en', 'core/media/media', 'javascript.full_url', 'Full URL', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1098, 1, 'en', 'core/media/media', 'javascript.alt', 'Alt text', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1099, 1, 'en', 'core/media/media', 'javascript.size', 'Size', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1100, 1, 'en', 'core/media/media', 'javascript.mime_type', 'Type', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1101, 1, 'en', 'core/media/media', 'javascript.created_at', 'Uploaded at', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1102, 1, 'en', 'core/media/media', 'javascript.updated_at', 'Modified at', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1103, 1, 'en', 'core/media/media', 'javascript.nothing_selected', 'Nothing is selected', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1104, 1, 'en', 'core/media/media', 'javascript.visit_link', 'Open link', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1105, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1106, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1107, 1, 'en', 'core/media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1108, 1, 'en', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1109, 1, 'en', 'core/media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1110, 1, 'en', 'core/media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1111, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1112, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1113, 1, 'en', 'core/media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1114, 1, 'en', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1115, 1, 'en', 'core/media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1116, 1, 'en', 'core/media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1117, 1, 'en', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1118, 1, 'en', 'core/media/media', 'javascript.no_item.default.title', 'No items', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1119, 1, 'en', 'core/media/media', 'javascript.no_item.default.message', 'This directory has no item', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1120, 1, 'en', 'core/media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1121, 1, 'en', 'core/media/media', 'javascript.message.error_header', 'Error', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1122, 1, 'en', 'core/media/media', 'javascript.message.success_header', 'Success', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1123, 1, 'en', 'core/media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1124, 1, 'en', 'core/media/media', 'javascript.actions_list.basic.preview', 'Preview', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1125, 1, 'en', 'core/media/media', 'javascript.actions_list.basic.crop', 'Crop', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1126, 1, 'en', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1127, 1, 'en', 'core/media/media', 'javascript.actions_list.file.rename', 'Rename', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1128, 1, 'en', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1129, 1, 'en', 'core/media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1130, 1, 'en', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1131, 1, 'en', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1132, 1, 'en', 'core/media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1133, 1, 'en', 'core/media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1134, 1, 'en', 'core/media/media', 'javascript.actions_list.other.restore', 'Restore', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1135, 1, 'en', 'core/media/media', 'javascript.change_image', 'Change image', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1136, 1, 'en', 'core/media/media', 'javascript.delete_image', 'Delete image', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1137, 1, 'en', 'core/media/media', 'javascript.choose_image', 'Choose image', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1138, 1, 'en', 'core/media/media', 'javascript.preview_image', 'Preview image', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1139, 1, 'en', 'core/media/media', 'name_invalid', 'The folder name has invalid character(s).', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1140, 1, 'en', 'core/media/media', 'url_invalid', 'Please provide a valid URL', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1141, 1, 'en', 'core/media/media', 'path_invalid', 'Please provide a valid path', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1142, 1, 'en', 'core/media/media', 'download_link', 'Download', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1143, 1, 'en', 'core/media/media', 'url', 'URL', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1144, 1, 'en', 'core/media/media', 'download_explain', 'Enter one URL per line.', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1145, 1, 'en', 'core/media/media', 'downloading', 'Downloading...', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1146, 1, 'en', 'core/media/media', 'prepare_file_to_download', 'Preparing file to download...', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1147, 1, 'en', 'core/media/media', 'update_alt_text_success', 'Update alt text successfully!', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1148, 1, 'en', 'core/media/media', 'cropper.height', 'Height', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1149, 1, 'en', 'core/media/media', 'cropper.width', 'Width', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1150, 1, 'en', 'core/media/media', 'cropper.aspect_ratio', 'Aspect ratio?', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1151, 1, 'en', 'core/media/media', 'unable_to_write', 'Unable to write file. Please chmod folder \":folder\" to make it writeable!', '2023-05-02 21:08:28', '2023-05-02 21:08:28'),
(1260, 1, 'en', 'core/setting/setting', 'title', 'Settings', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1261, 1, 'en', 'core/setting/setting', 'email_setting_title', 'Email settings', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1262, 1, 'en', 'core/setting/setting', 'general.theme', 'Theme', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1263, 1, 'en', 'core/setting/setting', 'general.description', 'Setting site information', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1264, 1, 'en', 'core/setting/setting', 'general.title', 'General', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1265, 1, 'en', 'core/setting/setting', 'general.general_block', 'General Information', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1266, 1, 'en', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1267, 1, 'en', 'core/setting/setting', 'general.site_title', 'Site title', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1268, 1, 'en', 'core/setting/setting', 'general.admin_email', 'Admin Email', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1269, 1, 'en', 'core/setting/setting', 'general.seo_block', 'SEO Configuration', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1270, 1, 'en', 'core/setting/setting', 'general.seo_title', 'SEO Title', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1271, 1, 'en', 'core/setting/setting', 'general.seo_description', 'SEO Description', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1272, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1273, 1, 'en', 'core/setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1274, 1, 'en', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1275, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1276, 1, 'en', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1277, 1, 'en', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1278, 1, 'en', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1279, 1, 'en', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1280, 1, 'en', 'core/setting/setting', 'general.time_zone', 'Timezone', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1281, 1, 'en', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1282, 1, 'en', 'core/setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1283, 1, 'en', 'core/setting/setting', 'general.enable', 'Enable', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1284, 1, 'en', 'core/setting/setting', 'general.disable', 'Disable', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1285, 1, 'en', 'core/setting/setting', 'general.enable_cache', 'Enable cache?', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1286, 1, 'en', 'core/setting/setting', 'general.disable_cache_in_the_admin_panel', 'Disable cache in the admin panel?', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1287, 1, 'en', 'core/setting/setting', 'general.cache_time', 'Cache time (minutes)', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1288, 1, 'en', 'core/setting/setting', 'general.enable_cache_site_map', 'Enable cache site map?', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1289, 1, 'en', 'core/setting/setting', 'general.cache_time_site_map', 'Cache Time Site map (minutes)', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1290, 1, 'en', 'core/setting/setting', 'general.admin_logo', 'Admin logo', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1291, 1, 'en', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1292, 1, 'en', 'core/setting/setting', 'general.admin_title', 'Admin title', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1293, 1, 'en', 'core/setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1294, 1, 'en', 'core/setting/setting', 'general.cache_block', 'Cache', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1295, 1, 'en', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1296, 1, 'en', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1297, 1, 'en', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1298, 1, 'en', 'core/setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1299, 1, 'en', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1300, 1, 'en', 'core/setting/setting', 'general.yes', 'Yes', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1301, 1, 'en', 'core/setting/setting', 'general.no', 'No', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1302, 1, 'en', 'core/setting/setting', 'general.show_on_front', 'Your homepage displays', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1303, 1, 'en', 'core/setting/setting', 'general.select', '— Select —', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1304, 1, 'en', 'core/setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1305, 1, 'en', 'core/setting/setting', 'general.locale', 'Site language', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1306, 1, 'en', 'core/setting/setting', 'general.locale_direction', 'Front site language direction', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1307, 1, 'en', 'core/setting/setting', 'general.admin_locale_direction', 'Admin language direction', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1308, 1, 'en', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1309, 1, 'en', 'core/setting/setting', 'general.minutes', 'minutes', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1310, 1, 'en', 'core/setting/setting', 'email.subject', 'Subject', '2023-05-02 21:08:29', '2023-05-02 21:08:29');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1311, 1, 'en', 'core/setting/setting', 'email.content', 'Content', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1312, 1, 'en', 'core/setting/setting', 'email.title', 'Setting for email template', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1313, 1, 'en', 'core/setting/setting', 'email.description', 'Email template using HTML & system variables.', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1314, 1, 'en', 'core/setting/setting', 'email.reset_to_default', 'Reset to default', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1315, 1, 'en', 'core/setting/setting', 'email.back', 'Back to settings', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1316, 1, 'en', 'core/setting/setting', 'email.reset_success', 'Reset back to default successfully', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1317, 1, 'en', 'core/setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1318, 1, 'en', 'core/setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1319, 1, 'en', 'core/setting/setting', 'email.continue', 'Continue', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1320, 1, 'en', 'core/setting/setting', 'email.sender_name', 'Sender name', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1321, 1, 'en', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1322, 1, 'en', 'core/setting/setting', 'email.sender_email', 'Sender email', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1323, 1, 'en', 'core/setting/setting', 'email.mailer', 'Mailer', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1324, 1, 'en', 'core/setting/setting', 'email.port', 'Port', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1325, 1, 'en', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1326, 1, 'en', 'core/setting/setting', 'email.host', 'Host', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1327, 1, 'en', 'core/setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1328, 1, 'en', 'core/setting/setting', 'email.username', 'Username', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1329, 1, 'en', 'core/setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1330, 1, 'en', 'core/setting/setting', 'email.password', 'Password', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1331, 1, 'en', 'core/setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1332, 1, 'en', 'core/setting/setting', 'email.encryption', 'Encryption', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1333, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain', 'Domain', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1334, 1, 'en', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1335, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret', 'Secret', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1336, 1, 'en', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1337, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1338, 1, 'en', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1339, 1, 'en', 'core/setting/setting', 'email.log_channel', 'Log channel', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1340, 1, 'en', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1341, 1, 'en', 'core/setting/setting', 'email.encryption_placeholder', 'Encryption: ssl or tls', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1342, 1, 'en', 'core/setting/setting', 'email.ses_key', 'Key', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1343, 1, 'en', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1344, 1, 'en', 'core/setting/setting', 'email.ses_secret', 'Secret', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1345, 1, 'en', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1346, 1, 'en', 'core/setting/setting', 'email.ses_region', 'Region', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1347, 1, 'en', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1348, 1, 'en', 'core/setting/setting', 'email.postmark_token', 'Token', '2023-05-02 21:08:29', '2023-05-02 21:08:29'),
(1349, 1, 'en', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1350, 1, 'en', 'core/setting/setting', 'email.template_title', 'Email templates', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1351, 1, 'en', 'core/setting/setting', 'email.template_description', 'Base templates for all emails', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1352, 1, 'en', 'core/setting/setting', 'email.template_header', 'Email template header', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1353, 1, 'en', 'core/setting/setting', 'email.template_header_description', 'Template for header of emails', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1354, 1, 'en', 'core/setting/setting', 'email.template_footer', 'Email template footer', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1355, 1, 'en', 'core/setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1356, 1, 'en', 'core/setting/setting', 'email.default', 'Default', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1357, 1, 'en', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Using queue job to send emails (Must to setup Queue first https://laravel.com/docs/queues#supervisor-configuration)', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1358, 1, 'en', 'core/setting/setting', 'media.title', 'Media', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1359, 1, 'en', 'core/setting/setting', 'media.driver', 'Driver', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1360, 1, 'en', 'core/setting/setting', 'media.description', 'Settings for media', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1361, 1, 'en', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1362, 1, 'en', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1363, 1, 'en', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1364, 1, 'en', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1365, 1, 'en', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1366, 1, 'en', 'core/setting/setting', 'media.aws_endpoint', 'AWS Endpoint (Optional)', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1367, 1, 'en', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1368, 1, 'en', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1369, 1, 'en', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1370, 1, 'en', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1371, 1, 'en', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1372, 1, 'en', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Is DO Spaces CDN enabled?', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1373, 1, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1374, 1, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://your-custom-domain.com', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1375, 1, 'en', 'core/setting/setting', 'media.wasabi_access_key_id', 'Wasabi Access Key ID', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1376, 1, 'en', 'core/setting/setting', 'media.wasabi_secret_key', 'Wasabi Secret Key', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1377, 1, 'en', 'core/setting/setting', 'media.wasabi_default_region', 'Wasabi Default Region', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1378, 1, 'en', 'core/setting/setting', 'media.wasabi_bucket', 'Wasabi Bucket', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1379, 1, 'en', 'core/setting/setting', 'media.wasabi_root', 'Wasabi Root', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1380, 1, 'en', 'core/setting/setting', 'media.default_placeholder_image', 'Default placeholder image', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1381, 1, 'en', 'core/setting/setting', 'media.enable_chunk', 'Enable chunk size upload?', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1382, 1, 'en', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1383, 1, 'en', 'core/setting/setting', 'media.chunk_size_placeholder', 'Default: 1048576 ~ 1MB', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1384, 1, 'en', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1385, 1, 'en', 'core/setting/setting', 'media.max_file_size_placeholder', 'Default: 1048576 ~ 1GB', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1386, 1, 'en', 'core/setting/setting', 'media.enable_watermark', 'Enable watermark?', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1387, 1, 'en', 'core/setting/setting', 'media.watermark_source', 'Watermark image', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1388, 1, 'en', 'core/setting/setting', 'media.watermark_size', 'Size of watermark (%)', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1389, 1, 'en', 'core/setting/setting', 'media.watermark_size_placeholder', 'Default: 10 (%)', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1390, 1, 'en', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1391, 1, 'en', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Default: 70 (%)', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1392, 1, 'en', 'core/setting/setting', 'media.watermark_position', 'Watermark position', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1393, 1, 'en', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1394, 1, 'en', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1395, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_left', 'Top left', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1396, 1, 'en', 'core/setting/setting', 'media.watermark_position_top_right', 'Top right', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1397, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bottom left', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1398, 1, 'en', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bottom right', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1399, 1, 'en', 'core/setting/setting', 'media.watermark_position_center', 'Center', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1400, 1, 'en', 'core/setting/setting', 'media.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1401, 1, 'en', 'core/setting/setting', 'media.bunnycdn_hostname', 'Hostname', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1402, 1, 'en', 'core/setting/setting', 'media.bunnycdn_zone', 'Zone Name (The name of your storage zone)', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1403, 1, 'en', 'core/setting/setting', 'media.bunnycdn_key', 'FTP & API Access Password (The storage zone API Access Password)', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1404, 1, 'en', 'core/setting/setting', 'media.bunnycdn_region', 'Region (The storage zone region)', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1405, 1, 'en', 'core/setting/setting', 'media.optional', 'Optional', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1406, 1, 'en', 'core/setting/setting', 'media.sizes', 'Media thumbnails sizes', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1407, 1, 'en', 'core/setting/setting', 'media.media_sizes_helper', 'Set width or height to 0 if you just want to crop by width or height. Need to click on \"Generate thumbnails\" to apply changes.', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1408, 1, 'en', 'core/setting/setting', 'media.width', 'Width', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1409, 1, 'en', 'core/setting/setting', 'media.height', 'Height', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1410, 1, 'en', 'core/setting/setting', 'media.default_size_value', 'Default: :size', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1411, 1, 'en', 'core/setting/setting', 'media.all', 'All', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1412, 1, 'en', 'core/setting/setting', 'media.media_folders_can_add_watermark', 'Add watermark for images in folders:', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1413, 1, 'en', 'core/setting/setting', 'media.max_upload_filesize', 'Max upload filesize (MB)', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1414, 1, 'en', 'core/setting/setting', 'media.max_upload_filesize_placeholder', 'Default: :size, must less than :size.', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1415, 1, 'en', 'core/setting/setting', 'media.max_upload_filesize_helper', 'Your server allows to upload files maximum :size, you can change this value to limit upload filesize.', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1416, 1, 'en', 'core/setting/setting', 'media.image_processing_library', 'Image processing library', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1417, 1, 'en', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1418, 1, 'en', 'core/setting/setting', 'license.buyer', 'Buyer', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1419, 1, 'en', 'core/setting/setting', 'field_type_not_exists', 'This field type does not exist', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1420, 1, 'en', 'core/setting/setting', 'save_settings', 'Save settings', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1421, 1, 'en', 'core/setting/setting', 'template', 'Template', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1422, 1, 'en', 'core/setting/setting', 'description', 'Description', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1423, 1, 'en', 'core/setting/setting', 'enable', 'Enable', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1424, 1, 'en', 'core/setting/setting', 'send', 'Send', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1425, 1, 'en', 'core/setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1426, 1, 'en', 'core/setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1427, 1, 'en', 'core/setting/setting', 'test_email_modal_title', 'Send a test email', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1428, 1, 'en', 'core/setting/setting', 'test_send_mail', 'Send test mail', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1429, 1, 'en', 'core/setting/setting', 'test_email_send_success', 'Send email successfully!', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1430, 1, 'en', 'core/setting/setting', 'locale_direction_ltr', 'Left to Right', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1431, 1, 'en', 'core/setting/setting', 'locale_direction_rtl', 'Right to Left', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1432, 1, 'en', 'core/setting/setting', 'saving', 'Saving...', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1433, 1, 'en', 'core/setting/setting', 'emails_warning', 'You can add up to :count emails', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1434, 1, 'en', 'core/setting/setting', 'email_add_more', 'Add more', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1435, 1, 'en', 'core/setting/setting', 'generate', 'Generate', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1436, 1, 'en', 'core/setting/setting', 'generate_thumbnails', 'Generate thumbnails', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1437, 1, 'en', 'core/setting/setting', 'generate_thumbnails_success', 'Generate thumbnails successfully. :count files are generated!', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1438, 1, 'en', 'core/setting/setting', 'generate_thumbnails_error', 'We are unable to regenerate thumbnail for these files :count files!', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1439, 1, 'en', 'core/setting/setting', 'generate_thumbnails_description', 'Are you sure you want to re-generate thumbnails for all images? It will take time so please DO NOT leave this page, wait until it is finished.', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1440, 1, 'en', 'core/setting/setting', 'enable_chunk_description', 'Chunk size upload is used to upload large file size.', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1441, 1, 'en', 'core/setting/setting', 'watermark_description', 'WARNING: Watermark is just added to new uploaded images, it won\'t be added to existing images. Disable watermark won\'t remove watermark from existing images.', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1442, 1, 'en', 'core/setting/setting', 'submit', 'Submit', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1443, 1, 'en', 'core/setting/setting', 'back', 'Back', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1444, 1, 'en', 'core/setting/setting', 'enter_sample_value', 'Enter sample values for testing', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1445, 1, 'en', 'core/setting/setting', 'preview', 'Preview', '2023-05-02 21:08:30', '2023-05-02 21:08:30'),
(1590, 1, 'en', 'core/table/general', 'operations', 'Operations', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1591, 1, 'en', 'core/table/general', 'loading_data', 'Loading data from server', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1592, 1, 'en', 'core/table/general', 'display', 'Display', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1593, 1, 'en', 'core/table/general', 'all', 'All', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1594, 1, 'en', 'core/table/general', 'edit_entry', 'Edit', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1595, 1, 'en', 'core/table/general', 'delete_entry', 'Delete', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1596, 1, 'en', 'core/table/general', 'show_from', 'Showing from', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1597, 1, 'en', 'core/table/general', 'to', 'to', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1598, 1, 'en', 'core/table/general', 'in', 'in', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1599, 1, 'en', 'core/table/general', 'records', 'records', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1600, 1, 'en', 'core/table/general', 'no_data', 'No data to display', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1601, 1, 'en', 'core/table/general', 'no_record', 'No record', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1602, 1, 'en', 'core/table/general', 'loading', 'Loading data from server', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1603, 1, 'en', 'core/table/general', 'confirm_delete', 'Confirm delete', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1604, 1, 'en', 'core/table/general', 'confirm_delete_msg', 'Do you really want to delete this record?', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1605, 1, 'en', 'core/table/general', 'cancel', 'Cancel', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1606, 1, 'en', 'core/table/general', 'delete', 'Delete', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1607, 1, 'en', 'core/table/general', 'close', 'Close', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1608, 1, 'en', 'core/table/general', 'contains', 'Contains', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1609, 1, 'en', 'core/table/general', 'is_equal_to', 'Is equal to', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1610, 1, 'en', 'core/table/general', 'greater_than', 'Greater than', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1611, 1, 'en', 'core/table/general', 'less_than', 'Less than', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1612, 1, 'en', 'core/table/general', 'value', 'Value', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1613, 1, 'en', 'core/table/general', 'select_field', 'Select field', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1614, 1, 'en', 'core/table/general', 'reset', 'Reset', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1615, 1, 'en', 'core/table/general', 'add_additional_filter', 'Add additional filter', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1616, 1, 'en', 'core/table/general', 'apply', 'Apply', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1617, 1, 'en', 'core/table/general', 'filters', 'Filters', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1618, 1, 'en', 'core/table/general', 'bulk_change', 'Bulk changes', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1619, 1, 'en', 'core/table/general', 'select_option', 'Select option', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1620, 1, 'en', 'core/table/general', 'bulk_actions', 'Bulk Actions', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1621, 1, 'en', 'core/table/general', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1622, 1, 'en', 'core/table/general', 'please_select_record', 'Please select at least one record to perform this action!', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1623, 1, 'en', 'core/table/general', 'filtered', '(filtered from _MAX_ total records)', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1624, 1, 'en', 'core/table/general', 'search', 'Search...', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1625, 1, 'en', 'core/table/table', 'operations', 'Operations', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1626, 1, 'en', 'core/table/table', 'loading_data', 'Loading data from server', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1627, 1, 'en', 'core/table/table', 'display', 'Display', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1628, 1, 'en', 'core/table/table', 'all', 'All', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1629, 1, 'en', 'core/table/table', 'edit_entry', 'Edit', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1630, 1, 'en', 'core/table/table', 'delete_entry', 'Delete', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1631, 1, 'en', 'core/table/table', 'show_from', 'Showing from', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1632, 1, 'en', 'core/table/table', 'to', 'to', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1633, 1, 'en', 'core/table/table', 'in', 'in', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1634, 1, 'en', 'core/table/table', 'records', 'records', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1635, 1, 'en', 'core/table/table', 'no_data', 'No data to display', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1636, 1, 'en', 'core/table/table', 'no_record', 'No record', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1637, 1, 'en', 'core/table/table', 'loading', 'Loading data from server', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1638, 1, 'en', 'core/table/table', 'confirm_delete', 'Confirm delete', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1639, 1, 'en', 'core/table/table', 'confirm_delete_msg', 'Do you really want to delete this record?', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1640, 1, 'en', 'core/table/table', 'cancel', 'Cancel', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1641, 1, 'en', 'core/table/table', 'delete', 'Delete', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1642, 1, 'en', 'core/table/table', 'close', 'Close', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1643, 1, 'en', 'core/table/table', 'contains', 'Contains', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1644, 1, 'en', 'core/table/table', 'is_equal_to', 'Is equal to', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1645, 1, 'en', 'core/table/table', 'greater_than', 'Greater than', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1646, 1, 'en', 'core/table/table', 'less_than', 'Less than', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1647, 1, 'en', 'core/table/table', 'value', 'Value', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1648, 1, 'en', 'core/table/table', 'select_field', 'Select field', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1649, 1, 'en', 'core/table/table', 'reset', 'Reset', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1650, 1, 'en', 'core/table/table', 'add_additional_filter', 'Add additional filter', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1651, 1, 'en', 'core/table/table', 'apply', 'Apply', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1652, 1, 'en', 'core/table/table', 'filters', 'Filters', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1653, 1, 'en', 'core/table/table', 'bulk_change', 'Bulk changes', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1654, 1, 'en', 'core/table/table', 'select_option', 'Select option', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1655, 1, 'en', 'core/table/table', 'bulk_actions', 'Bulk Actions', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1656, 1, 'en', 'core/table/table', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1657, 1, 'en', 'core/table/table', 'please_select_record', 'Please select at least one record to perform this action!', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1658, 1, 'en', 'core/table/table', 'filtered', '(filtered from _MAX_ total records)', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1659, 1, 'en', 'core/table/table', 'search', 'Search...', '2023-05-02 21:08:31', '2023-05-02 21:08:31'),
(1727, 1, 'en', 'packages/api/api', 'settings', 'API Settings', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1728, 1, 'en', 'packages/api/api', 'save_settings', 'Save settings', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1729, 1, 'en', 'packages/api/api', 'setting_title', 'API settings', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1730, 1, 'en', 'packages/api/api', 'setting_description', 'Settings for API', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1731, 1, 'en', 'packages/api/api', 'api_enabled', 'API enabled?', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1732, 1, 'en', 'packages/get-started/get-started', 'welcome_title', 'Welcome to your admin dashboard!', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1733, 1, 'en', 'packages/get-started/get-started', 'welcome_description', 'In a few short steps, you can have your new dashboard up and running!', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1734, 1, 'en', 'packages/get-started/get-started', 'get_started', 'Get Started!', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1735, 1, 'en', 'packages/get-started/get-started', 'customize_branding_title', 'Customize branding', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1736, 1, 'en', 'packages/get-started/get-started', 'customize_branding_description', 'Customize your site with colors, logo and subdomain to match your business unique branding and identity.', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1737, 1, 'en', 'packages/get-started/get-started', 'colors', 'Colors', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1738, 1, 'en', 'packages/get-started/get-started', 'fonts', 'Fonts', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1739, 1, 'en', 'packages/get-started/get-started', 'primary_color', 'Primary color', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1740, 1, 'en', 'packages/get-started/get-started', 'primary_font', 'Primary font', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1741, 1, 'en', 'packages/get-started/get-started', 'setup_wizard_button', ':link to finish Quick setup Wizard!', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1742, 1, 'en', 'packages/get-started/get-started', 'click_here', 'Click here', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1743, 1, 'en', 'packages/get-started/get-started', 'site_title', 'Site title', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1744, 1, 'en', 'packages/get-started/get-started', 'identify', 'Identify', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1745, 1, 'en', 'packages/get-started/get-started', 'logo', 'Logo', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1746, 1, 'en', 'packages/get-started/get-started', 'admin_logo', 'Admin logo', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1747, 1, 'en', 'packages/get-started/get-started', 'favicon', 'Favicon', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1748, 1, 'en', 'packages/get-started/get-started', 'admin_favicon', 'Admin favicon', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1749, 1, 'en', 'packages/get-started/get-started', 'next_step', 'Next step', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1750, 1, 'en', 'packages/get-started/get-started', 'site_ready_title', 'Your site is ready!', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1751, 1, 'en', 'packages/get-started/get-started', 'site_ready_description', 'Welcome to your new site! Your website has been created and populated with sample data. You are in the admin area of your site where you can set up everything else needed to complete your site.', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1752, 1, 'en', 'packages/get-started/get-started', 'finish', 'Finish', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1753, 1, 'en', 'packages/get-started/get-started', 'exit_wizard_title', 'Are you sure you want to exit the Quick Setup Wizard?', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1754, 1, 'en', 'packages/get-started/get-started', 'exit_wizard_confirm', 'Yes, I\'ll finish it later', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1755, 1, 'en', 'packages/get-started/get-started', 'exit_wizard_cancel', 'No, take me back to the wizard', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1756, 1, 'en', 'packages/get-started/get-started', 'change_default_account_info_title', 'Change default account info', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1757, 1, 'en', 'packages/get-started/get-started', 'change_default_account_info_description', 'The default account is using a weak password. You need to change it to a complex password for better security.', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1758, 1, 'en', 'packages/get-started/get-started', 'username', 'Username', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1759, 1, 'en', 'packages/get-started/get-started', 'email', 'Email', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1760, 1, 'en', 'packages/get-started/get-started', 'password', 'Password', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1761, 1, 'en', 'packages/get-started/get-started', 'password_confirmation', 'Password confirmation', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1762, 1, 'en', 'packages/installer/installer', 'title', 'Installer', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1763, 1, 'en', 'packages/installer/installer', 'next', 'Next Step', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1764, 1, 'en', 'packages/installer/installer', 'back', 'Previous', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1765, 1, 'en', 'packages/installer/installer', 'finish', 'Install', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1766, 1, 'en', 'packages/installer/installer', 'installation', 'Installation', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1767, 1, 'en', 'packages/installer/installer', 'forms.errorTitle', 'The following errors occurred:', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1768, 1, 'en', 'packages/installer/installer', 'welcome.templateTitle', 'Welcome', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1769, 1, 'en', 'packages/installer/installer', 'welcome.title', 'Welcome', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1770, 1, 'en', 'packages/installer/installer', 'welcome.message', 'Before getting started, we need some information on the database. You will need to know the following items before proceeding.', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1771, 1, 'en', 'packages/installer/installer', 'welcome.next', 'Let\'s go', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1772, 1, 'en', 'packages/installer/installer', 'requirements.templateTitle', 'Step 1 | Server Requirements', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1773, 1, 'en', 'packages/installer/installer', 'requirements.title', 'Server Requirements', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1774, 1, 'en', 'packages/installer/installer', 'requirements.next', 'Check Permissions', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1775, 1, 'en', 'packages/installer/installer', 'permissions.templateTitle', 'Step 2 | Permissions', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1776, 1, 'en', 'packages/installer/installer', 'permissions.title', 'Permissions', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1777, 1, 'en', 'packages/installer/installer', 'permissions.next', 'Configure Environment', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1778, 1, 'en', 'packages/installer/installer', 'environment.wizard.templateTitle', 'Environment Settings', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1779, 1, 'en', 'packages/installer/installer', 'environment.wizard.title', 'Environment Settings', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1780, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.name_required', 'An environment name is required.', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1781, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.app_name_label', 'Site title', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1782, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.app_name_placeholder', 'Site title', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1783, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.app_url_label', 'URL', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1784, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.app_url_placeholder', 'URL', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1785, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_connection_label', 'Database Connection', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1786, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_connection_label_mysql', 'MySQL', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1787, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_connection_label_sqlite', 'SQLite', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1788, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_connection_label_pgsql', 'PostgreSQL', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1789, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_host_label', 'Database host', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1790, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_host_placeholder', 'Database host', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1791, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_port_label', 'Database port', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1792, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_port_placeholder', 'Database port', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1793, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_name_label', 'Database name', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1794, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_name_placeholder', 'Database name', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1795, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_username_label', 'Database username', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1796, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_username_placeholder', 'Database username', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1797, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_password_label', 'Database password', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1798, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_password_placeholder', 'Database password', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1799, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.buttons.install', 'Install', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1800, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_host_helper', 'If you use Laravel Sail, just change DB_HOST to DB_HOST=mysql. On some hosting DB_HOST can be localhost instead of 127.0.0.1', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1801, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_connections.mysql', 'MySQL', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1802, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_connections.sqlite', 'SQLite', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1803, 1, 'en', 'packages/installer/installer', 'environment.wizard.form.db_connections.pgsql', 'PostgreSQL', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1804, 1, 'en', 'packages/installer/installer', 'environment.success', 'Your .env file settings have been saved.', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1805, 1, 'en', 'packages/installer/installer', 'environment.errors', 'Unable to save the .env file, Please create it manually.', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1806, 1, 'en', 'packages/installer/installer', 'install', 'Install', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1807, 1, 'en', 'packages/installer/installer', 'final.title', 'Installation Finished', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1808, 1, 'en', 'packages/installer/installer', 'final.templateTitle', 'Installation Finished', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1809, 1, 'en', 'packages/installer/installer', 'final.finished', 'Application has been successfully installed.', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1810, 1, 'en', 'packages/installer/installer', 'final.exit', 'Click here to exit', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1811, 1, 'en', 'packages/installer/installer', 'create_account', 'Create account', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1812, 1, 'en', 'packages/installer/installer', 'first_name', 'First name', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1813, 1, 'en', 'packages/installer/installer', 'last_name', 'Last name', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1814, 1, 'en', 'packages/installer/installer', 'username', 'Username', '2023-05-02 21:08:32', '2023-05-02 21:08:32'),
(1815, 1, 'en', 'packages/installer/installer', 'email', 'Email', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1816, 1, 'en', 'packages/installer/installer', 'password', 'Password', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1817, 1, 'en', 'packages/installer/installer', 'password_confirmation', 'Password confirmation', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1818, 1, 'en', 'packages/installer/installer', 'create', 'Create', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1819, 1, 'en', 'packages/installer/installer', 'install_success', 'Installed successfully!', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1820, 1, 'en', 'packages/menu/menu', 'name', 'Menus', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1821, 1, 'en', 'packages/menu/menu', 'key_name', 'Menu name (key: :key)', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1822, 1, 'en', 'packages/menu/menu', 'basic_info', 'Basic information', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1823, 1, 'en', 'packages/menu/menu', 'add_to_menu', 'Add to menu', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1824, 1, 'en', 'packages/menu/menu', 'custom_link', 'Custom link', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1825, 1, 'en', 'packages/menu/menu', 'add_link', 'Add link', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1826, 1, 'en', 'packages/menu/menu', 'structure', 'Menu structure', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1827, 1, 'en', 'packages/menu/menu', 'remove', 'Remove', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1828, 1, 'en', 'packages/menu/menu', 'cancel', 'Cancel', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1829, 1, 'en', 'packages/menu/menu', 'title', 'Title', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1830, 1, 'en', 'packages/menu/menu', 'icon', 'Icon', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1831, 1, 'en', 'packages/menu/menu', 'url', 'URL', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1832, 1, 'en', 'packages/menu/menu', 'target', 'Target', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1833, 1, 'en', 'packages/menu/menu', 'css_class', 'CSS class', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1834, 1, 'en', 'packages/menu/menu', 'self_open_link', 'Open link directly', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1835, 1, 'en', 'packages/menu/menu', 'blank_open_link', 'Open link in new tab', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1836, 1, 'en', 'packages/menu/menu', 'create', 'Create menu', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1837, 1, 'en', 'packages/menu/menu', 'menu_settings', 'Menu settings', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1838, 1, 'en', 'packages/menu/menu', 'display_location', 'Display location', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1839, 1, 'en', 'packages/menu/menu', 'title_placeholder', 'Title', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1840, 1, 'en', 'packages/menu/menu', 'icon_placeholder', 'Icon', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1841, 1, 'en', 'packages/menu/menu', 'url_placeholder', 'URL', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1842, 1, 'en', 'packages/menu/menu', 'css_class_placeholder', 'CSS class', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1843, 1, 'en', 'packages/menu/menu', 'menu_id', 'Menu ID', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1864, 1, 'en', 'packages/optimize/optimize', 'settings.title', 'Optimize page speed', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1865, 1, 'en', 'packages/optimize/optimize', 'settings.description', 'Minify HTML output, inline CSS, remove comments...', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1866, 1, 'en', 'packages/optimize/optimize', 'settings.enable', 'Enable optimize page speed?', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1867, 1, 'en', 'packages/optimize/optimize', 'collapse_white_space', 'Collapse white space', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1868, 1, 'en', 'packages/optimize/optimize', 'collapse_white_space_description', 'This filter reduces bytes transmitted in an HTML file by removing unnecessary whitespace.', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1869, 1, 'en', 'packages/optimize/optimize', 'elide_attributes', 'Elide attributes', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1870, 1, 'en', 'packages/optimize/optimize', 'elide_attributes_description', 'This filter reduces the transfer size of HTML files by removing attributes from tags when the specified value is equal to the default value for that attribute. This can save a modest number of bytes, and may make the document more compressible by canonicalizing the affected tags.', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1871, 1, 'en', 'packages/optimize/optimize', 'inline_css', 'Inline CSS', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1872, 1, 'en', 'packages/optimize/optimize', 'inline_css_description', 'This filter transforms the inline \"style\" attribute of tags into classes by moving the CSS to the header.', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1873, 1, 'en', 'packages/optimize/optimize', 'insert_dns_prefetch', 'Insert DNS prefetch', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1874, 1, 'en', 'packages/optimize/optimize', 'insert_dns_prefetch_description', 'This filter injects tags in the HEAD to enable the browser to do DNS prefetching.', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1875, 1, 'en', 'packages/optimize/optimize', 'remove_comments', 'Remove comments', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1876, 1, 'en', 'packages/optimize/optimize', 'remove_comments_description', 'This filter eliminates HTML, JS and CSS comments. The filter reduces the transfer size of HTML files by removing the comments. Depending on the HTML file, this filter can significantly reduce the number of bytes transmitted on the network.', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1877, 1, 'en', 'packages/optimize/optimize', 'remove_quotes', 'Remove quotes', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1878, 1, 'en', 'packages/optimize/optimize', 'remove_quotes_description', 'This filter eliminates unnecessary quotation marks from HTML attributes. While required by the various HTML specifications, browsers permit their omission when the value of an attribute is composed of a certain subset of characters (alphanumerics and some punctuation characters).', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1879, 1, 'en', 'packages/optimize/optimize', 'defer_javascript', 'Defer javascript', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1880, 1, 'en', 'packages/optimize/optimize', 'defer_javascript_description', 'Defers the execution of javascript in the HTML. If necessary cancel deferring in some script, use data-pagespeed-no-defer as script attribute to cancel deferring.', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1881, 1, 'en', 'packages/page/pages', 'create', 'Create new page', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1882, 1, 'en', 'packages/page/pages', 'form.name', 'Name', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1883, 1, 'en', 'packages/page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1884, 1, 'en', 'packages/page/pages', 'form.content', 'Content', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1885, 1, 'en', 'packages/page/pages', 'form.note', 'Note content', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1886, 1, 'en', 'packages/page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1887, 1, 'en', 'packages/page/pages', 'notices.update_success_message', 'Update successfully', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1888, 1, 'en', 'packages/page/pages', 'cannot_delete', 'Page could not be deleted', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1889, 1, 'en', 'packages/page/pages', 'deleted', 'Page deleted', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1890, 1, 'en', 'packages/page/pages', 'pages', 'Pages', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1891, 1, 'en', 'packages/page/pages', 'menu', 'Pages', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1892, 1, 'en', 'packages/page/pages', 'menu_name', 'Pages', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1893, 1, 'en', 'packages/page/pages', 'edit_this_page', 'Edit this page', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1894, 1, 'en', 'packages/page/pages', 'total_pages', 'Total pages', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1895, 1, 'en', 'packages/page/pages', 'settings.show_on_front', 'Your homepage displays', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1896, 1, 'en', 'packages/page/pages', 'settings.select', '— Select —', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1897, 1, 'en', 'packages/page/pages', 'front_page', 'Front Page', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1916, 1, 'en', 'packages/plugin-management/marketplace', 'previous', '&laquo; Previous', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1917, 1, 'en', 'packages/plugin-management/marketplace', 'next', 'Next &raquo;', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1918, 1, 'en', 'packages/plugin-management/marketplace', 'showing', 'Showing', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1919, 1, 'en', 'packages/plugin-management/marketplace', 'to', 'to', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1920, 1, 'en', 'packages/plugin-management/marketplace', 'of', 'of', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1921, 1, 'en', 'packages/plugin-management/marketplace', 'results', 'results', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1922, 1, 'en', 'packages/plugin-management/marketplace', 'add_new', 'Add new', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1923, 1, 'en', 'packages/plugin-management/marketplace', 'installed', 'Installed', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1924, 1, 'en', 'packages/plugin-management/marketplace', 'install_now', 'Install now', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1925, 1, 'en', 'packages/plugin-management/marketplace', 'installing', 'Installing...', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1926, 1, 'en', 'packages/plugin-management/marketplace', 'detail', 'Details', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1927, 1, 'en', 'packages/plugin-management/marketplace', 'version', 'Version', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1928, 1, 'en', 'packages/plugin-management/marketplace', 'minimum_core_version', 'Minimum core version', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1929, 1, 'en', 'packages/plugin-management/marketplace', 'last_update', 'Last update', '2023-05-02 21:08:33', '2023-05-02 21:08:33');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1930, 1, 'en', 'packages/plugin-management/marketplace', 'compatible_version', 'Compatible with your version', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1931, 1, 'en', 'packages/plugin-management/marketplace', 'incompatible_version', 'Incompatible with your version', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1932, 1, 'en', 'packages/plugin-management/marketplace', 'deactivate', 'Deactivate', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1933, 1, 'en', 'packages/plugin-management/marketplace', 'activate', 'Activate', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1934, 1, 'en', 'packages/plugin-management/marketplace', 'activating', 'Activating...', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1935, 1, 'en', 'packages/plugin-management/marketplace', 'activated', 'Activated', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1936, 1, 'en', 'packages/plugin-management/marketplace', 'connection_aborted', 'Connection Aborted', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1937, 1, 'en', 'packages/plugin-management/marketplace', 'connection_aborted_description', 'Connection Aborted Description', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1938, 1, 'en', 'packages/plugin-management/marketplace', 'api_connect_error', 'Connect to Marketplace API Error, please contact support', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1939, 1, 'en', 'packages/plugin-management/marketplace', 'keyword', 'Keyword', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1940, 1, 'en', 'packages/plugin-management/marketplace', 'search', 'Search', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1941, 1, 'en', 'packages/plugin-management/marketplace', 'all', 'All', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1942, 1, 'en', 'packages/plugin-management/marketplace', 'featured', 'Featured', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1943, 1, 'en', 'packages/plugin-management/marketplace', 'popular', 'Popular', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1944, 1, 'en', 'packages/plugin-management/marketplace', 'top_rated', 'Top Rated', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1945, 1, 'en', 'packages/plugin-management/marketplace', 'install_plugin', 'Install plugin', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1946, 1, 'en', 'packages/plugin-management/marketplace', 'cancel', 'Cancel', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1947, 1, 'en', 'packages/plugin-management/marketplace', 'yes_install', ' Yes! Install', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1948, 1, 'en', 'packages/plugin-management/marketplace', 'message_alert', 'Are you sure you want to install this plugin?', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1949, 1, 'en', 'packages/plugin-management/marketplace', 'folder_permissions', 'Folder does not have permission to write file or the update file path could not be resolved, please contact support', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1950, 1, 'en', 'packages/plugin-management/marketplace', 'unzip_failed', 'Unzip extraction failed', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1951, 1, 'en', 'packages/plugin-management/marketplace', 'unzip_success', 'Download file extracted', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1952, 1, 'en', 'packages/plugin-management/marketplace', 'install_success', 'Installed plugin successfully!', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1953, 1, 'en', 'packages/plugin-management/marketplace', 'update_success', 'Updated plugin successfully!', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1954, 1, 'en', 'packages/plugin-management/marketplace', 'minimum_core_version_error', 'Cannot install this plugin. Minimum core version is :version.', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1955, 1, 'en', 'packages/plugin-management/plugin', 'enabled', 'Enabled', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1956, 1, 'en', 'packages/plugin-management/plugin', 'deactivated', 'Deactivated', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1957, 1, 'en', 'packages/plugin-management/plugin', 'activated', 'Activated', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1958, 1, 'en', 'packages/plugin-management/plugin', 'activate', 'Activate', '2023-05-02 21:08:33', '2023-05-02 21:08:33'),
(1959, 1, 'en', 'packages/plugin-management/plugin', 'deactivate', 'Deactivate', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1960, 1, 'en', 'packages/plugin-management/plugin', 'author', 'By', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1961, 1, 'en', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Update plugin successfully', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1962, 1, 'en', 'packages/plugin-management/plugin', 'plugins', 'Plugins', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1963, 1, 'en', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1964, 1, 'en', 'packages/plugin-management/plugin', 'remove', 'Remove', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1965, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Remove plugin successfully!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1966, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin', 'Remove plugin', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1967, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Do you really want to remove this plugin?', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1968, 1, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Yes, remove it!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1969, 1, 'en', 'packages/plugin-management/plugin', 'total_plugins', 'Total plugins', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1970, 1, 'en', 'packages/plugin-management/plugin', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1971, 1, 'en', 'packages/plugin-management/plugin', 'version', 'Version', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1972, 1, 'en', 'packages/plugin-management/plugin', 'invalid_json', 'Invalid plugin.json!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1973, 1, 'en', 'packages/plugin-management/plugin', 'activate_success', 'Activate plugin successfully!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1974, 1, 'en', 'packages/plugin-management/plugin', 'activated_already', 'This plugin is activated already!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1975, 1, 'en', 'packages/plugin-management/plugin', 'plugin_not_exist', 'This plugin is not exists.', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1976, 1, 'en', 'packages/plugin-management/plugin', 'missing_json_file', 'Missing file plugin.json!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1977, 1, 'en', 'packages/plugin-management/plugin', 'plugin_invalid', 'Plugin is valid!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1978, 1, 'en', 'packages/plugin-management/plugin', 'published_assets_success', 'Publish assets for plugin :name successfully!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1979, 1, 'en', 'packages/plugin-management/plugin', 'plugin_removed', 'Plugin has been removed!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1980, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_success', 'Deactivate plugin successfully!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1981, 1, 'en', 'packages/plugin-management/plugin', 'deactivated_already', 'This plugin is deactivated already!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1982, 1, 'en', 'packages/plugin-management/plugin', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1983, 1, 'en', 'packages/plugin-management/plugin', 'plugin_is_not_ready', 'Plugin :name is not ready to use', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1984, 1, 'en', 'packages/plugin-management/plugin', 'plugins_installed', 'Installed Plugins', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1985, 1, 'en', 'packages/plugin-management/plugin', 'plugins_add_new', 'Add new', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1986, 1, 'en', 'packages/plugin-management/plugin', 'update', 'Update', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1987, 1, 'en', 'packages/plugin-management/plugin', 'requirement_not_met', 'Plugin :plugin requires plugin(s): :required_plugins. Do you want to install them and activate :plugin now?', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1988, 1, 'en', 'packages/plugin-management/plugin', 'install', 'Install now', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(1989, 1, 'en', 'packages/plugin-management/plugin', 'install_plugin', 'Install Plugin', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2017, 1, 'en', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Search Engine Optimize', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2018, 1, 'en', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Edit SEO meta', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2019, 1, 'en', 'packages/seo-helper/seo-helper', 'default_description', 'Setup meta title & description to make your site easy to discovered on search engines such as Google', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2020, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_title', 'SEO Title', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2021, 1, 'en', 'packages/seo-helper/seo-helper', 'seo_description', 'SEO description', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2027, 1, 'en', 'packages/shortcode/shortcode', 'settings.title', 'Shortcode', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2028, 1, 'en', 'packages/shortcode/shortcode', 'settings.description', 'Settings for Shortcode', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2029, 1, 'en', 'packages/shortcode/shortcode', 'settings.show_shortcode_edit_link', 'Show edit link?', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2030, 1, 'en', 'packages/slug/slug', 'permalink_settings', 'Permalink', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2031, 1, 'en', 'packages/slug/slug', 'settings.title', 'Permalink settings', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2032, 1, 'en', 'packages/slug/slug', 'settings.description', 'Manage permalink for all modules.', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2033, 1, 'en', 'packages/slug/slug', 'settings.preview', 'Preview', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2034, 1, 'en', 'packages/slug/slug', 'settings.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2035, 1, 'en', 'packages/slug/slug', 'settings.available_variables', 'Available variables', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2036, 1, 'en', 'packages/slug/slug', 'preview', 'Preview', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2037, 1, 'en', 'packages/slug/slug', 'prefix_for', 'Prefix for :name', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2043, 1, 'en', 'packages/theme/theme', 'name', 'Themes', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2044, 1, 'en', 'packages/theme/theme', 'theme', 'Theme', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2045, 1, 'en', 'packages/theme/theme', 'author', 'Author', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2046, 1, 'en', 'packages/theme/theme', 'version', 'Version', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2047, 1, 'en', 'packages/theme/theme', 'description', 'Description', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2048, 1, 'en', 'packages/theme/theme', 'active_success', 'Activate theme :name successfully!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2049, 1, 'en', 'packages/theme/theme', 'active', 'Active', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2050, 1, 'en', 'packages/theme/theme', 'activated', 'Activated', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2051, 1, 'en', 'packages/theme/theme', 'appearance', 'Appearance', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2052, 1, 'en', 'packages/theme/theme', 'theme_options', 'Theme options', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2053, 1, 'en', 'packages/theme/theme', 'save_changes', 'Save Changes', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2054, 1, 'en', 'packages/theme/theme', 'developer_mode', 'Developer Mode Enabled', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2055, 1, 'en', 'packages/theme/theme', 'custom_css', 'Custom CSS', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2056, 1, 'en', 'packages/theme/theme', 'custom_js', 'Custom JS', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2057, 1, 'en', 'packages/theme/theme', 'custom_header_js', 'Header JS', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2058, 1, 'en', 'packages/theme/theme', 'custom_header_js_placeholder', 'JS in header of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2059, 1, 'en', 'packages/theme/theme', 'custom_body_js', 'Body JS', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2060, 1, 'en', 'packages/theme/theme', 'custom_body_js_placeholder', 'JS in body of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2061, 1, 'en', 'packages/theme/theme', 'custom_footer_js', 'Footer JS', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2062, 1, 'en', 'packages/theme/theme', 'custom_footer_js_placeholder', 'JS in footer of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2063, 1, 'en', 'packages/theme/theme', 'custom_html', 'Custom HTML', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2064, 1, 'en', 'packages/theme/theme', 'custom_header_html', 'Header HTML', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2065, 1, 'en', 'packages/theme/theme', 'custom_header_html_placeholder', 'HTML in header of page, no special tags: script, style, iframe...', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2066, 1, 'en', 'packages/theme/theme', 'custom_body_html', 'Body HTML', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2067, 1, 'en', 'packages/theme/theme', 'custom_body_html_placeholder', 'HTML in body of page, no special tags: script, style, iframe...', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2068, 1, 'en', 'packages/theme/theme', 'custom_footer_html', 'Footer HTML', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2069, 1, 'en', 'packages/theme/theme', 'custom_footer_html_placeholder', 'HTML in footer of page, no special tags: script, style, iframe...', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2070, 1, 'en', 'packages/theme/theme', 'remove_theme_success', 'Remove theme successfully!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2071, 1, 'en', 'packages/theme/theme', 'theme_is_not_existed', 'This theme is not existed!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2072, 1, 'en', 'packages/theme/theme', 'remove', 'Remove', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2073, 1, 'en', 'packages/theme/theme', 'remove_theme', 'Remove theme', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2074, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_message', 'Do you really want to remove this theme?', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2075, 1, 'en', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Yes, remove it!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2076, 1, 'en', 'packages/theme/theme', 'total_themes', 'Total themes', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2077, 1, 'en', 'packages/theme/theme', 'show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website)?', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2078, 1, 'en', 'packages/theme/theme', 'settings.title', 'Theme', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2079, 1, 'en', 'packages/theme/theme', 'settings.description', 'Setting for theme', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2080, 1, 'en', 'packages/theme/theme', 'settings.redirect_404_to_homepage', 'Redirect all not found requests to homepage?', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2081, 1, 'en', 'packages/theme/theme', 'settings.show_guidelines', 'Show guidelines?', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2082, 1, 'en', 'packages/theme/theme', 'add_new', 'Add new', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2083, 1, 'en', 'packages/theme/theme', 'theme_activated_already', 'Theme \":name\" is activated already!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2084, 1, 'en', 'packages/theme/theme', 'missing_json_file', 'Missing file theme.json!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2085, 1, 'en', 'packages/theme/theme', 'theme_invalid', 'Theme is valid!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2086, 1, 'en', 'packages/theme/theme', 'published_assets_success', 'Publish assets for :themes successfully!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2087, 1, 'en', 'packages/theme/theme', 'cannot_remove_theme', 'Cannot remove activated theme, please activate another theme before removing \":name\"!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2088, 1, 'en', 'packages/theme/theme', 'theme_deleted', 'Theme \":name\" has been destroyed.', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2089, 1, 'en', 'packages/theme/theme', 'removed_assets', 'Remove assets of a theme :name successfully!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2090, 1, 'en', 'packages/theme/theme', 'update_custom_css_success', 'Update custom CSS successfully!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2091, 1, 'en', 'packages/theme/theme', 'update_custom_js_success', 'Update custom JS successfully!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2092, 1, 'en', 'packages/theme/theme', 'update_custom_html_success', 'Update custom HTML successfully!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2093, 1, 'en', 'packages/theme/theme', 'go_to_dashboard', 'Go to dashboard', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2094, 1, 'en', 'packages/theme/theme', 'custom_css_placeholder', 'Using Ctrl + Space to autocomplete.', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2095, 1, 'en', 'packages/theme/theme', 'theme_option_general', 'General', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2096, 1, 'en', 'packages/theme/theme', 'theme_option_general_description', 'General settings', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2097, 1, 'en', 'packages/theme/theme', 'theme_option_seo_open_graph_image', 'SEO default Open Graph image', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2098, 1, 'en', 'packages/theme/theme', 'theme_option_logo', 'Logo', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2099, 1, 'en', 'packages/theme/theme', 'theme_option_favicon', 'Favicon', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2100, 1, 'en', 'packages/theme/theme', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2023-05-02 21:08:34', '2023-05-02 21:08:34'),
(2124, 1, 'en', 'packages/widget/global', 'name', 'Widgets', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2125, 1, 'en', 'packages/widget/global', 'create', 'New widget', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2126, 1, 'en', 'packages/widget/global', 'edit', 'Edit widget', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2127, 1, 'en', 'packages/widget/global', 'delete', 'Delete', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2128, 1, 'en', 'packages/widget/global', 'available', 'Available Widgets', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2129, 1, 'en', 'packages/widget/global', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2130, 1, 'en', 'packages/widget/global', 'number_tag_display', 'Number tags will be display', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2131, 1, 'en', 'packages/widget/global', 'number_post_display', 'Number posts will be display', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2132, 1, 'en', 'packages/widget/global', 'select_menu', 'Select Menu', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2133, 1, 'en', 'packages/widget/global', 'widget_text', 'Text', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2134, 1, 'en', 'packages/widget/global', 'widget_text_description', 'Arbitrary text or HTML.', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2135, 1, 'en', 'packages/widget/global', 'widget_recent_post', 'Recent Posts', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2136, 1, 'en', 'packages/widget/global', 'widget_recent_post_description', 'Recent posts widget.', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2137, 1, 'en', 'packages/widget/global', 'widget_custom_menu', 'Custom Menu', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2138, 1, 'en', 'packages/widget/global', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2139, 1, 'en', 'packages/widget/global', 'widget_tag', 'Tags', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2140, 1, 'en', 'packages/widget/global', 'widget_tag_description', 'Popular tags', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2141, 1, 'en', 'packages/widget/global', 'save_success', 'Save widget successfully!', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2142, 1, 'en', 'packages/widget/global', 'delete_success', 'Delete widget successfully!', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2143, 1, 'en', 'packages/widget/widget', 'name', 'Widgets', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2144, 1, 'en', 'packages/widget/widget', 'create', 'New widget', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2145, 1, 'en', 'packages/widget/widget', 'edit', 'Edit widget', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2146, 1, 'en', 'packages/widget/widget', 'delete', 'Delete', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2147, 1, 'en', 'packages/widget/widget', 'available', 'Available Widgets', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2148, 1, 'en', 'packages/widget/widget', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2149, 1, 'en', 'packages/widget/widget', 'number_tag_display', 'Number tags will be display', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2150, 1, 'en', 'packages/widget/widget', 'number_post_display', 'Number posts will be display', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2151, 1, 'en', 'packages/widget/widget', 'select_menu', 'Select Menu', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2152, 1, 'en', 'packages/widget/widget', 'widget_text', 'Text', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2153, 1, 'en', 'packages/widget/widget', 'widget_text_description', 'Arbitrary text or HTML.', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2154, 1, 'en', 'packages/widget/widget', 'widget_recent_post', 'Recent Posts', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2155, 1, 'en', 'packages/widget/widget', 'widget_recent_post_description', 'Recent posts widget.', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2156, 1, 'en', 'packages/widget/widget', 'widget_custom_menu', 'Custom Menu', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2157, 1, 'en', 'packages/widget/widget', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2158, 1, 'en', 'packages/widget/widget', 'widget_tag', 'Tags', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2159, 1, 'en', 'packages/widget/widget', 'widget_tag_description', 'Popular tags', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2160, 1, 'en', 'packages/widget/widget', 'save_success', 'Save widget successfully!', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2161, 1, 'en', 'packages/widget/widget', 'delete_success', 'Delete widget successfully!', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2162, 1, 'en', 'packages/widget/widget', 'primary_sidebar_name', 'Primary sidebar', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2163, 1, 'en', 'packages/widget/widget', 'primary_sidebar_description', 'Primary sidebar section', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2202, 1, 'en', 'plugins/ads/ads', 'name', 'Ads', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2203, 1, 'en', 'plugins/ads/ads', 'create', 'New ads', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2204, 1, 'en', 'plugins/ads/ads', 'edit', 'Edit ads', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2205, 1, 'en', 'plugins/ads/ads', 'location', 'Location', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2206, 1, 'en', 'plugins/ads/ads', 'url', 'URL', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2207, 1, 'en', 'plugins/ads/ads', 'expired_at', 'Expired at', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2208, 1, 'en', 'plugins/ads/ads', 'key', 'Key', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2209, 1, 'en', 'plugins/ads/ads', 'shortcode', 'Shortcode', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2210, 1, 'en', 'plugins/ads/ads', 'clicked', 'Clicked', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2211, 1, 'en', 'plugins/ads/ads', 'not_set', 'Not set', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2212, 1, 'en', 'plugins/ads/ads', 'adblock_warning', 'If you are using Adblock browser extension, you need to disable this extension on your site first. It may block your ads if it is enabled on your site! <br /> Tips: Image name SHOULD NOT contain some ads keywords (ad, promotion...)', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2213, 1, 'en', 'plugins/ads/ads', 'select_ad', 'Select Ad', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2214, 1, 'en', 'plugins/ads/ads', 'open_in_new_tab', 'Open in new tab?', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2215, 1, 'en', 'plugins/analytics/analytics', 'sessions', 'Sessions', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2216, 1, 'en', 'plugins/analytics/analytics', 'visitors', 'Visitors', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2217, 1, 'en', 'plugins/analytics/analytics', 'pageviews', 'Pageviews', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2218, 1, 'en', 'plugins/analytics/analytics', 'bounce_rate', 'Bounce Rate', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2219, 1, 'en', 'plugins/analytics/analytics', 'page_session', 'Pages/Session', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2220, 1, 'en', 'plugins/analytics/analytics', 'avg_duration', 'Avg. Duration', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2221, 1, 'en', 'plugins/analytics/analytics', 'percent_new_session', 'Percent new session', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2222, 1, 'en', 'plugins/analytics/analytics', 'new_users', 'New visitors', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2223, 1, 'en', 'plugins/analytics/analytics', 'visits', 'visits', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2224, 1, 'en', 'plugins/analytics/analytics', 'views', 'views', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2225, 1, 'en', 'plugins/analytics/analytics', 'property_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2226, 1, 'en', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2227, 1, 'en', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2228, 1, 'en', 'plugins/analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a Google Analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2229, 1, 'en', 'plugins/analytics/analytics', 'property_id_is_invalid', 'Property ID is invalid. Check this: https://developers.google.com/analytics/devguides/reporting/data/v1/property-id', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2230, 1, 'en', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2231, 1, 'en', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2232, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code', 'Measurement ID / Tracking ID', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2233, 1, 'en', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: G-76NX8HY29D', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2234, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id', 'View ID for UA', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2235, 1, 'en', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID (UA)', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2236, 1, 'en', 'plugins/analytics/analytics', 'settings.analytics_property_id', 'Property ID for GA4', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2237, 1, 'en', 'plugins/analytics/analytics', 'settings.analytics_property_id_description', 'Google Analytics Property ID (GA4)', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2238, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2239, 1, 'en', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2240, 1, 'en', 'plugins/analytics/analytics', 'settings.type', 'Type', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2241, 1, 'en', 'plugins/analytics/analytics', 'settings.ua_description', 'Universal Analytics', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2242, 1, 'en', 'plugins/analytics/analytics', 'settings.ga4_description', 'Google Analytics 4 (GA4)', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2243, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2244, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2245, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2246, 1, 'en', 'plugins/analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2273, 1, 'en', 'plugins/audit-log/history', 'name', 'Activities Logs', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2274, 1, 'en', 'plugins/audit-log/history', 'created', 'created', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2275, 1, 'en', 'plugins/audit-log/history', 'updated', 'updated', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2276, 1, 'en', 'plugins/audit-log/history', 'deleted', 'deleted', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2277, 1, 'en', 'plugins/audit-log/history', 'logged in', 'logged in', '2023-05-02 21:08:35', '2023-05-02 21:08:35'),
(2278, 1, 'en', 'plugins/audit-log/history', 'logged out', 'logged out', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2279, 1, 'en', 'plugins/audit-log/history', 'changed password', 'changed password', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2280, 1, 'en', 'plugins/audit-log/history', 'updated profile', 'updated profile', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2281, 1, 'en', 'plugins/audit-log/history', 'attached', 'attached', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2282, 1, 'en', 'plugins/audit-log/history', 'shared', 'shared', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2283, 1, 'en', 'plugins/audit-log/history', 'to the system', 'to the system', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2284, 1, 'en', 'plugins/audit-log/history', 'of the system', 'of the system', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2285, 1, 'en', 'plugins/audit-log/history', 'menu', 'menu', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2286, 1, 'en', 'plugins/audit-log/history', 'post', 'post', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2287, 1, 'en', 'plugins/audit-log/history', 'page', 'page', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2288, 1, 'en', 'plugins/audit-log/history', 'category', 'category', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2289, 1, 'en', 'plugins/audit-log/history', 'tag', 'tag', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2290, 1, 'en', 'plugins/audit-log/history', 'user', 'user', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2291, 1, 'en', 'plugins/audit-log/history', 'contact', 'contact', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2292, 1, 'en', 'plugins/audit-log/history', 'backup', 'backup', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2293, 1, 'en', 'plugins/audit-log/history', 'custom-field', 'custom field', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2294, 1, 'en', 'plugins/audit-log/history', 'widget_audit_logs', 'Activities Logs', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2295, 1, 'en', 'plugins/audit-log/history', 'action', 'Action', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2296, 1, 'en', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2297, 1, 'en', 'plugins/audit-log/history', 'system', 'System', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2298, 1, 'en', 'plugins/audit-log/history', 'delete_all', 'Delete all records', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2325, 1, 'en', 'plugins/backup/backup', 'name', 'Backup', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2326, 1, 'en', 'plugins/backup/backup', 'backup_description', 'Backup database and uploads folder.', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2327, 1, 'en', 'plugins/backup/backup', 'create_backup_success', 'Created backup successfully!', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2328, 1, 'en', 'plugins/backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2329, 1, 'en', 'plugins/backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2330, 1, 'en', 'plugins/backup/backup', 'generate_btn', 'Generate backup', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2331, 1, 'en', 'plugins/backup/backup', 'create', 'Create a backup', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2332, 1, 'en', 'plugins/backup/backup', 'restore', 'Restore a backup', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2333, 1, 'en', 'plugins/backup/backup', 'create_btn', 'Create', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2334, 1, 'en', 'plugins/backup/backup', 'restore_btn', 'Restore', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2335, 1, 'en', 'plugins/backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2336, 1, 'en', 'plugins/backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2337, 1, 'en', 'plugins/backup/backup', 'download_database', 'Download backup of database', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2338, 1, 'en', 'plugins/backup/backup', 'restore_tooltip', 'Restore this backup', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2339, 1, 'en', 'plugins/backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2340, 1, 'en', 'plugins/backup/backup', 'menu_name', 'Backups', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2341, 1, 'en', 'plugins/backup/backup', 'size', 'Size', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2342, 1, 'en', 'plugins/backup/backup', 'no_backups', 'There is no backup now!', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2343, 1, 'en', 'plugins/backup/backup', 'proc_open_disabled_error', 'Function <strong>proc_open()</strong> has been disabled so the system cannot backup the database. Please contact your hosting provider to enable it.', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2344, 1, 'en', 'plugins/backup/backup', 'database_backup_not_existed', 'Backup database is not existed!', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2345, 1, 'en', 'plugins/backup/backup', 'uploads_folder_backup_not_existed', 'Backup uploads folder is not existed!', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2346, 1, 'en', 'plugins/backup/backup', 'important_message1', 'This is a simple backup feature, it is a solution for you if your site has < 1GB data and can be used for quickly backup your site.', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2347, 1, 'en', 'plugins/backup/backup', 'important_message2', 'If you have more than 1GB images/files in local storage, you should use backup feature of your hosting or VPS.', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2348, 1, 'en', 'plugins/backup/backup', 'important_message3', 'To backup your database, function <strong>proc_open()</strong> or <strong>system()</strong> must be enabled. Contact your hosting provider to enable it if it is disabled.', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2349, 1, 'en', 'plugins/backup/backup', 'important_message4', 'It is not a full backup, it is just back up uploaded files and your database.', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2350, 1, 'en', 'plugins/backup/backup', 'cannot_restore_database', 'Cannot restore database. The database backup is missing!', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2367, 1, 'en', 'plugins/blog/base', 'menu_name', 'Blog', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2368, 1, 'en', 'plugins/blog/base', 'blog_page', 'Blog Page', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2369, 1, 'en', 'plugins/blog/base', 'select', '-- Select --', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2370, 1, 'en', 'plugins/blog/base', 'blog_page_id', 'Blog page', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2371, 1, 'en', 'plugins/blog/base', 'number_posts_per_page', 'Number posts per page', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2372, 1, 'en', 'plugins/blog/base', 'write_some_tags', 'Write some tags', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2373, 1, 'en', 'plugins/blog/base', 'short_code_name', 'Blog posts', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2374, 1, 'en', 'plugins/blog/base', 'short_code_description', 'Add blog posts', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2375, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_category', 'Number of posts per page in a category', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2376, 1, 'en', 'plugins/blog/base', 'number_posts_per_page_in_tag', 'Number of posts per page in a tag', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2377, 1, 'en', 'plugins/blog/base', 'settings.title', 'Blog', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2378, 1, 'en', 'plugins/blog/base', 'settings.description', 'Settings for Blog', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2379, 1, 'en', 'plugins/blog/base', 'settings.enable_blog_post_schema', 'Enable Blog Post Schema?', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2380, 1, 'en', 'plugins/blog/base', 'settings.enable_blog_post_schema_description', 'Learn more: https://schema.org/Article', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2381, 1, 'en', 'plugins/blog/base', 'settings.schema_type', 'Schema type', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2382, 1, 'en', 'plugins/blog/categories', 'create', 'Create new category', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2383, 1, 'en', 'plugins/blog/categories', 'menu', 'Categories', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2384, 1, 'en', 'plugins/blog/categories', 'edit_this_category', 'Edit this category', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2385, 1, 'en', 'plugins/blog/categories', 'menu_name', 'Categories', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2386, 1, 'en', 'plugins/blog/categories', 'none', 'None', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2387, 1, 'en', 'plugins/blog/categories', 'total_posts', 'Total posts: :total', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2388, 1, 'en', 'plugins/blog/member', 'dob', 'Born :date', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2389, 1, 'en', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2390, 1, 'en', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2391, 1, 'en', 'plugins/blog/member', 'published_posts', 'Published Posts', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2392, 1, 'en', 'plugins/blog/member', 'posts', 'Posts', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2393, 1, 'en', 'plugins/blog/member', 'write_post', 'Write a post', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2394, 1, 'en', 'plugins/blog/posts', 'create', 'Create new post', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2395, 1, 'en', 'plugins/blog/posts', 'form.name', 'Name', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2396, 1, 'en', 'plugins/blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2397, 1, 'en', 'plugins/blog/posts', 'form.description', 'Description', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2398, 1, 'en', 'plugins/blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2399, 1, 'en', 'plugins/blog/posts', 'form.categories', 'Categories', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2400, 1, 'en', 'plugins/blog/posts', 'form.tags', 'Tags', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2401, 1, 'en', 'plugins/blog/posts', 'form.tags_placeholder', 'Tags', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2402, 1, 'en', 'plugins/blog/posts', 'form.content', 'Content', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2403, 1, 'en', 'plugins/blog/posts', 'form.is_featured', 'Is featured?', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2404, 1, 'en', 'plugins/blog/posts', 'form.note', 'Note content', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2405, 1, 'en', 'plugins/blog/posts', 'form.format_type', 'Format', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2406, 1, 'en', 'plugins/blog/posts', 'cannot_delete', 'Post could not be deleted', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2407, 1, 'en', 'plugins/blog/posts', 'post_deleted', 'Post deleted', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2408, 1, 'en', 'plugins/blog/posts', 'posts', 'Posts', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2409, 1, 'en', 'plugins/blog/posts', 'post', 'Post', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2410, 1, 'en', 'plugins/blog/posts', 'edit_this_post', 'Edit this post', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2411, 1, 'en', 'plugins/blog/posts', 'no_new_post_now', 'There is no new post now!', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2412, 1, 'en', 'plugins/blog/posts', 'menu_name', 'Posts', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2413, 1, 'en', 'plugins/blog/posts', 'widget_posts_recent', 'Recent Posts', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2414, 1, 'en', 'plugins/blog/posts', 'categories', 'Categories', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2415, 1, 'en', 'plugins/blog/posts', 'category', 'Category', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2416, 1, 'en', 'plugins/blog/posts', 'author', 'Author', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2417, 1, 'en', 'plugins/blog/tags', 'form.name', 'Name', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2418, 1, 'en', 'plugins/blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2419, 1, 'en', 'plugins/blog/tags', 'form.description', 'Description', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2420, 1, 'en', 'plugins/blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2421, 1, 'en', 'plugins/blog/tags', 'form.categories', 'Categories', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2422, 1, 'en', 'plugins/blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2423, 1, 'en', 'plugins/blog/tags', 'create', 'Create new tag', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2424, 1, 'en', 'plugins/blog/tags', 'cannot_delete', 'Tag could not be deleted', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2425, 1, 'en', 'plugins/blog/tags', 'deleted', 'Tag deleted', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2426, 1, 'en', 'plugins/blog/tags', 'menu', 'Tags', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2427, 1, 'en', 'plugins/blog/tags', 'edit_this_tag', 'Edit this tag', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2428, 1, 'en', 'plugins/blog/tags', 'menu_name', 'Tags', '2023-05-02 21:08:36', '2023-05-02 21:08:36'),
(2482, 1, 'en', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2483, 1, 'en', 'plugins/captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2484, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2485, 1, 'en', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2486, 1, 'en', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Enable Captcha?', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2487, 1, 'en', 'plugins/captcha/captcha', 'settings.helper', 'Go here to get credentials https://www.google.com/recaptcha/admin#list.', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2488, 1, 'en', 'plugins/captcha/captcha', 'settings.hide_badge', 'Hide recaptcha badge (for v3)', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2489, 1, 'en', 'plugins/captcha/captcha', 'settings.type', 'Type', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2490, 1, 'en', 'plugins/captcha/captcha', 'settings.v2_description', 'V2 (Verify requests with a challenge)', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2491, 1, 'en', 'plugins/captcha/captcha', 'settings.v3_description', 'V3 (Verify requests with a score)', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2492, 1, 'en', 'plugins/captcha/captcha', 'numbers.0', 'Zero', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2493, 1, 'en', 'plugins/captcha/captcha', 'numbers.1', 'One', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2494, 1, 'en', 'plugins/captcha/captcha', 'numbers.2', 'Two', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2495, 1, 'en', 'plugins/captcha/captcha', 'numbers.3', 'Three', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2496, 1, 'en', 'plugins/captcha/captcha', 'numbers.4', 'Four', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2497, 1, 'en', 'plugins/captcha/captcha', 'numbers.5', 'Five', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2498, 1, 'en', 'plugins/captcha/captcha', 'numbers.6', 'Six', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2499, 1, 'en', 'plugins/captcha/captcha', 'numbers.7', 'Seven', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2500, 1, 'en', 'plugins/captcha/captcha', 'numbers.8', 'Eight', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2501, 1, 'en', 'plugins/captcha/captcha', 'numbers.9', 'Nine', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2502, 1, 'en', 'plugins/captcha/captcha', 'numbers.10', 'Ten', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2503, 1, 'en', 'plugins/captcha/captcha', 'numbers.11', 'Eleven', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2504, 1, 'en', 'plugins/captcha/captcha', 'numbers.12', 'Twelve', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2505, 1, 'en', 'plugins/captcha/captcha', 'operands.+', 'plus', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2506, 1, 'en', 'plugins/captcha/captcha', 'operands.-', 'minus', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2507, 1, 'en', 'plugins/captcha/captcha', 'operands.*', 'times', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2508, 1, 'en', 'plugins/captcha/captcha', 'operands./', 'divided by', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2515, 1, 'en', 'plugins/contact/contact', 'menu', 'Contact', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2516, 1, 'en', 'plugins/contact/contact', 'edit', 'View contact', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2517, 1, 'en', 'plugins/contact/contact', 'tables.phone', 'Phone', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2518, 1, 'en', 'plugins/contact/contact', 'tables.email', 'Email', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2519, 1, 'en', 'plugins/contact/contact', 'tables.full_name', 'Full Name', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2520, 1, 'en', 'plugins/contact/contact', 'tables.time', 'Time', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2521, 1, 'en', 'plugins/contact/contact', 'tables.address', 'Address', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2522, 1, 'en', 'plugins/contact/contact', 'tables.subject', 'Subject', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2523, 1, 'en', 'plugins/contact/contact', 'tables.content', 'Content', '2023-05-02 21:08:37', '2023-05-02 21:08:37');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2524, 1, 'en', 'plugins/contact/contact', 'contact_information', 'Contact information', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2525, 1, 'en', 'plugins/contact/contact', 'replies', 'Replies', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2526, 1, 'en', 'plugins/contact/contact', 'email.header', 'Email', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2527, 1, 'en', 'plugins/contact/contact', 'email.title', 'New contact from your site', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2528, 1, 'en', 'plugins/contact/contact', 'form.name.required', 'Name is required', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2529, 1, 'en', 'plugins/contact/contact', 'form.email.required', 'Email is required', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2530, 1, 'en', 'plugins/contact/contact', 'form.email.email', 'The email address is not valid', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2531, 1, 'en', 'plugins/contact/contact', 'form.content.required', 'Content is required', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2532, 1, 'en', 'plugins/contact/contact', 'contact_sent_from', 'This contact information sent from', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2533, 1, 'en', 'plugins/contact/contact', 'sender', 'Sender', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2534, 1, 'en', 'plugins/contact/contact', 'sender_email', 'Email', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2535, 1, 'en', 'plugins/contact/contact', 'sender_address', 'Address', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2536, 1, 'en', 'plugins/contact/contact', 'sender_phone', 'Phone', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2537, 1, 'en', 'plugins/contact/contact', 'message_content', 'Message content', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2538, 1, 'en', 'plugins/contact/contact', 'sent_from', 'Email sent from', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2539, 1, 'en', 'plugins/contact/contact', 'form_name', 'Name', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2540, 1, 'en', 'plugins/contact/contact', 'form_email', 'Email', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2541, 1, 'en', 'plugins/contact/contact', 'form_address', 'Address', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2542, 1, 'en', 'plugins/contact/contact', 'form_subject', 'Subject', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2543, 1, 'en', 'plugins/contact/contact', 'form_phone', 'Phone', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2544, 1, 'en', 'plugins/contact/contact', 'form_message', 'Message', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2545, 1, 'en', 'plugins/contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2546, 1, 'en', 'plugins/contact/contact', 'send_btn', 'Send message', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2547, 1, 'en', 'plugins/contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count</span> New Messages', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2548, 1, 'en', 'plugins/contact/contact', 'view_all', 'View all', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2549, 1, 'en', 'plugins/contact/contact', 'statuses.read', 'Read', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2550, 1, 'en', 'plugins/contact/contact', 'statuses.unread', 'Unread', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2551, 1, 'en', 'plugins/contact/contact', 'phone', 'Phone', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2552, 1, 'en', 'plugins/contact/contact', 'address', 'Address', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2553, 1, 'en', 'plugins/contact/contact', 'message', 'Message', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2554, 1, 'en', 'plugins/contact/contact', 'settings.email.title', 'Contact', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2555, 1, 'en', 'plugins/contact/contact', 'settings.email.description', 'Contact email configuration', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2556, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2557, 1, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2558, 1, 'en', 'plugins/contact/contact', 'settings.title', 'Contact', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2559, 1, 'en', 'plugins/contact/contact', 'settings.description', 'Settings for contact plugin', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2560, 1, 'en', 'plugins/contact/contact', 'settings.blacklist_keywords', 'Blacklist keywords', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2561, 1, 'en', 'plugins/contact/contact', 'settings.blacklist_keywords_placeholder', 'keywords...', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2562, 1, 'en', 'plugins/contact/contact', 'settings.blacklist_keywords_helper', 'Blacklist contact requests if it includes those keywords in the content field (separate by comma).', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2563, 1, 'en', 'plugins/contact/contact', 'settings.blacklist_email_domains', 'Blacklist email domains', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2564, 1, 'en', 'plugins/contact/contact', 'settings.blacklist_email_domains_placeholder', 'domain...', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2565, 1, 'en', 'plugins/contact/contact', 'settings.blacklist_email_domains_helper', 'Blacklist contact requests if the email domain is in blacklist domains (separate by comma).', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2566, 1, 'en', 'plugins/contact/contact', 'settings.enable_math_captcha', 'Enable math captcha?', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2567, 1, 'en', 'plugins/contact/contact', 'no_reply', 'No reply yet!', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2568, 1, 'en', 'plugins/contact/contact', 'reply', 'Reply', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2569, 1, 'en', 'plugins/contact/contact', 'send', 'Send', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2570, 1, 'en', 'plugins/contact/contact', 'shortcode_name', 'Contact form', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2571, 1, 'en', 'plugins/contact/contact', 'shortcode_description', 'Add a contact form', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2572, 1, 'en', 'plugins/contact/contact', 'shortcode_content_description', 'Add shortcode [contact-form][/contact-form] to editor?', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2573, 1, 'en', 'plugins/contact/contact', 'message_sent_success', 'Message sent successfully!', '2023-05-02 21:08:37', '2023-05-02 21:08:37'),
(2617, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.name', 'Cookie Consent', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2618, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.description', 'Cookie consent settings', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2619, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.enable', 'Enable cookie consent?', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2620, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.message', 'Message', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2621, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.button_text', 'Button text', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2622, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.max_width', 'Max width (px)', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2623, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.background_color', 'Background color', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2624, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.text_color', 'Text color', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2625, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_url', 'Learn more URL', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2626, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_text', 'Learn more text', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2627, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.style', 'Style', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2628, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.full_width', 'Full width', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2629, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.minimal', 'Minimal', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2630, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'message', 'Your experience on this site will be improved by allowing cookies.', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2631, 1, 'en', 'plugins/cookie-consent/cookie-consent', 'button_text', 'Allow cookies', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2632, 1, 'en', 'plugins/ecommerce/addresses', 'address', 'Address', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2633, 1, 'en', 'plugins/ecommerce/addresses', 'addresses', 'Addresses', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2634, 1, 'en', 'plugins/ecommerce/addresses', 'address_placeholder', 'Enter address', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2635, 1, 'en', 'plugins/ecommerce/addresses', 'zip', 'Zip code', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2636, 1, 'en', 'plugins/ecommerce/addresses', 'zip_placeholder', 'Enter zip code', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2637, 1, 'en', 'plugins/ecommerce/addresses', 'city', 'City', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2638, 1, 'en', 'plugins/ecommerce/addresses', 'city_placeholder', 'Enter city', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2639, 1, 'en', 'plugins/ecommerce/addresses', 'state', 'State', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2640, 1, 'en', 'plugins/ecommerce/addresses', 'state_placeholder', 'Enter state', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2641, 1, 'en', 'plugins/ecommerce/addresses', 'country', 'Country', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2642, 1, 'en', 'plugins/ecommerce/addresses', 'use_this_address_as_default', 'Use this address as default', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2643, 1, 'en', 'plugins/ecommerce/addresses', 'name', 'Full name', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2644, 1, 'en', 'plugins/ecommerce/addresses', 'name_placeholder', 'Enter name', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2645, 1, 'en', 'plugins/ecommerce/addresses', 'phone', 'Phone', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2646, 1, 'en', 'plugins/ecommerce/addresses', 'phone_placeholder', 'Enter phone', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2647, 1, 'en', 'plugins/ecommerce/addresses', 'email', 'Email', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2648, 1, 'en', 'plugins/ecommerce/addresses', 'email_placeholder', 'Enter email', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2649, 1, 'en', 'plugins/ecommerce/addresses', 'select_state', 'Select state...', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2650, 1, 'en', 'plugins/ecommerce/addresses', 'select_city', 'Select city...', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2651, 1, 'en', 'plugins/ecommerce/addresses', 'select_country', 'Select country...', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2652, 1, 'en', 'plugins/ecommerce/addresses', 'add_address', 'Add Address', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2653, 1, 'en', 'plugins/ecommerce/addresses', 'new_address', 'New address', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2654, 1, 'en', 'plugins/ecommerce/addresses', 'edit_address', 'Edit address', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2655, 1, 'en', 'plugins/ecommerce/addresses', 'action', 'Action', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2656, 1, 'en', 'plugins/ecommerce/addresses', 'add', 'Add', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2657, 1, 'en', 'plugins/ecommerce/addresses', 'save', 'Save', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2658, 1, 'en', 'plugins/ecommerce/addresses', 'no_data', 'No data to display', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2659, 1, 'en', 'plugins/ecommerce/addresses', 'no_option', 'No option', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2660, 1, 'en', 'plugins/ecommerce/brands', 'name', 'Brands', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2661, 1, 'en', 'plugins/ecommerce/brands', 'create', 'New brand', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2662, 1, 'en', 'plugins/ecommerce/brands', 'edit', 'Edit brand', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2663, 1, 'en', 'plugins/ecommerce/brands', 'form.name', 'Name', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2664, 1, 'en', 'plugins/ecommerce/brands', 'form.name_placeholder', 'Brand\'s name (Maximum 255 characters)', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2665, 1, 'en', 'plugins/ecommerce/brands', 'form.description', 'Description', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2666, 1, 'en', 'plugins/ecommerce/brands', 'form.description_placeholder', 'Short description for brand (Maximum 400 characters)', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2667, 1, 'en', 'plugins/ecommerce/brands', 'form.website', 'Website', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2668, 1, 'en', 'plugins/ecommerce/brands', 'form.logo', 'Logo', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2669, 1, 'en', 'plugins/ecommerce/brands', 'form.is_featured', 'Is featured', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2670, 1, 'en', 'plugins/ecommerce/brands', 'logo', 'Logo', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2671, 1, 'en', 'plugins/ecommerce/brands', 'website', 'Website', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2672, 1, 'en', 'plugins/ecommerce/brands', 'notices.no_select', 'Please select at least one record to take this action!', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2673, 1, 'en', 'plugins/ecommerce/brands', 'notices.update_success_message', 'Update successfully', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2674, 1, 'en', 'plugins/ecommerce/brands', 'cannot_delete', 'Brand could not be deleted', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2675, 1, 'en', 'plugins/ecommerce/brands', 'brand_deleted', 'Brand deleted', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2676, 1, 'en', 'plugins/ecommerce/brands', 'menu', 'Brands', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2677, 1, 'en', 'plugins/ecommerce/brands', 'no_brand', 'No brand', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2678, 1, 'en', 'plugins/ecommerce/brands', 'intro.title', 'Manage brands', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2679, 1, 'en', 'plugins/ecommerce/brands', 'intro.description', 'Manage product brands such as Nike, Adidas, Bitis ...', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2680, 1, 'en', 'plugins/ecommerce/brands', 'intro.button_text', 'Create brand', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2681, 1, 'en', 'plugins/ecommerce/bulk-import', 'name', 'Bulk Import', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2682, 1, 'en', 'plugins/ecommerce/bulk-import', 'loading_text', 'Importing', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2683, 1, 'en', 'plugins/ecommerce/bulk-import', 'imported_successfully', 'Imported successfully.', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2684, 1, 'en', 'plugins/ecommerce/bulk-import', 'please_choose_the_file_mime', 'Please choose the file mime :types', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2685, 1, 'en', 'plugins/ecommerce/bulk-import', 'please_choose_the_file', 'Please choose the file', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2686, 1, 'en', 'plugins/ecommerce/bulk-import', 'start_import', 'Start Import', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2687, 1, 'en', 'plugins/ecommerce/bulk-import', 'note', 'Note!', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2688, 1, 'en', 'plugins/ecommerce/bulk-import', 'warning_before_importing', 'If this is your first time using this feature, please read the documentation or contact the Administrator for access to the correct functionality!', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2689, 1, 'en', 'plugins/ecommerce/bulk-import', 'results', 'Result: :success successes, :failed failures', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2690, 1, 'en', 'plugins/ecommerce/bulk-import', 'failures', 'Failures', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2691, 1, 'en', 'plugins/ecommerce/bulk-import', 'tables.import', 'Import', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2692, 1, 'en', 'plugins/ecommerce/bulk-import', 'template', 'Template', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2693, 1, 'en', 'plugins/ecommerce/bulk-import', 'rules', 'Rules', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2694, 1, 'en', 'plugins/ecommerce/bulk-import', 'choose_file_with_mime', 'Choose file with mime: (:types)', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2695, 1, 'en', 'plugins/ecommerce/bulk-import', 'choose_file', 'Choose file', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2696, 1, 'en', 'plugins/ecommerce/bulk-import', 'menu', 'Import products', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2697, 1, 'en', 'plugins/ecommerce/bulk-import', 'download-csv-file', 'Download CSV template', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2698, 1, 'en', 'plugins/ecommerce/bulk-import', 'download-excel-file', 'Download Excel template', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2699, 1, 'en', 'plugins/ecommerce/bulk-import', 'downloading', 'Downloading...', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2700, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.input_error', 'Input error', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2701, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.number_not_allowed', 'Number is not allowed!', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2702, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.allowed_input', 'Allowed input', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2703, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.prompt_decimal', 'Only numbers or decimals are accepted and greater than or equal to :min.', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2704, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.prompt_whole_number', 'Only numbers are accepted and greater than or equal to :min.', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2705, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.prompt_list', 'Please pick a value from the drop-down list.', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2706, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.pick_from_list', 'Pick from list', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2707, 1, 'en', 'plugins/ecommerce/bulk-import', 'export.template.value_not_in_list', 'Value is not in list.', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2708, 1, 'en', 'plugins/ecommerce/bulk-import', 'import_failed_description', 'Import failed, please check the errors below!', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2709, 1, 'en', 'plugins/ecommerce/bulk-import', 'column', 'Column', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2710, 1, 'en', 'plugins/ecommerce/bulk-import', 'row', 'Row', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2711, 1, 'en', 'plugins/ecommerce/bulk-import', 'attribute', 'Attribute', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2712, 1, 'en', 'plugins/ecommerce/bulk-import', 'errors', 'Errors', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2713, 1, 'en', 'plugins/ecommerce/bulk-import', 'import_types.name', 'Import type', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2714, 1, 'en', 'plugins/ecommerce/bulk-import', 'import_types.all', 'All', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2715, 1, 'en', 'plugins/ecommerce/bulk-import', 'import_types.products', 'Products', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2716, 1, 'en', 'plugins/ecommerce/bulk-import', 'import_types.variations', 'Variations', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2717, 1, 'en', 'plugins/ecommerce/bulk-import', 'import_products', 'Import products', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2718, 1, 'en', 'plugins/ecommerce/currency', 'currencies', 'Currencies', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2719, 1, 'en', 'plugins/ecommerce/currency', 'setting_description', 'List of currencies using on website', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2720, 1, 'en', 'plugins/ecommerce/currency', 'name', 'Name', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2721, 1, 'en', 'plugins/ecommerce/currency', 'symbol', 'Symbol', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2722, 1, 'en', 'plugins/ecommerce/currency', 'number_of_decimals', 'Number of decimals', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2723, 1, 'en', 'plugins/ecommerce/currency', 'exchange_rate', 'Exchange rate', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2724, 1, 'en', 'plugins/ecommerce/currency', 'is_prefix_symbol', 'Position of symbol', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2725, 1, 'en', 'plugins/ecommerce/currency', 'is_default', 'Is default?', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2726, 1, 'en', 'plugins/ecommerce/currency', 'remove', 'Remove', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2727, 1, 'en', 'plugins/ecommerce/currency', 'new_currency', 'Add a new currency', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2728, 1, 'en', 'plugins/ecommerce/currency', 'save_settings', 'Save settings', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2729, 1, 'en', 'plugins/ecommerce/currency', 'before_number', 'Before number', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2730, 1, 'en', 'plugins/ecommerce/currency', 'after_number', 'After number', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2731, 1, 'en', 'plugins/ecommerce/currency', 'require_at_least_one_currency', 'The system requires at least one currency!', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2732, 1, 'en', 'plugins/ecommerce/currency', 'enable_auto_detect_visitor_currency', 'Enable auto-detect visitor currency?', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2733, 1, 'en', 'plugins/ecommerce/currency', 'add_space_between_price_and_currency', 'Add a space between price and currency?', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2734, 1, 'en', 'plugins/ecommerce/currency', 'invalid_currency_name', 'Invalid currency code, it must be in :currencies.', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2735, 1, 'en', 'plugins/ecommerce/currency', 'instruction', 'Please check list currency code here: https://en.wikipedia.org/wiki/ISO_4217', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2736, 1, 'en', 'plugins/ecommerce/currency', 'code', 'Code', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2737, 1, 'en', 'plugins/ecommerce/currency', 'api_key', 'API Exchange Rates Key', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2738, 1, 'en', 'plugins/ecommerce/currency', 'update_currency_rates', 'Update currency rates', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2739, 1, 'en', 'plugins/ecommerce/currency', 'no_api_key', 'No API key', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2740, 1, 'en', 'plugins/ecommerce/customer', 'name', 'Customers', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2741, 1, 'en', 'plugins/ecommerce/customer', 'create', 'Create a customer', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2742, 1, 'en', 'plugins/ecommerce/customer', 'edit', 'Edit customer \":name\"', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2743, 1, 'en', 'plugins/ecommerce/customer', 'email', 'Email', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2744, 1, 'en', 'plugins/ecommerce/customer', 'email_placeholder', 'Ex: example@gmail.com', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2745, 1, 'en', 'plugins/ecommerce/customer', 'password', 'Password', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2746, 1, 'en', 'plugins/ecommerce/customer', 'change_password', 'Change password?', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2747, 1, 'en', 'plugins/ecommerce/customer', 'password_confirmation', 'Password confirmation', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2748, 1, 'en', 'plugins/ecommerce/customer', 'intro.title', 'Manage customers', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2749, 1, 'en', 'plugins/ecommerce/customer', 'intro.description', 'When a customer buy your product(s), you will know their order histories.', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2750, 1, 'en', 'plugins/ecommerce/customer', 'intro.button_text', 'Create customer', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2751, 1, 'en', 'plugins/ecommerce/customer', 'phone', 'Phone', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2752, 1, 'en', 'plugins/ecommerce/customer', 'phone_placeholder', 'Phone', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2753, 1, 'en', 'plugins/ecommerce/customer', 'avatar', 'Avatar', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2754, 1, 'en', 'plugins/ecommerce/customer', 'dob', 'Date of birth', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2755, 1, 'en', 'plugins/ecommerce/customer', 'statuses.activated', 'Activated', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2756, 1, 'en', 'plugins/ecommerce/customer', 'statuses.locked', 'Locked', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2757, 1, 'en', 'plugins/ecommerce/customer', 'email_verified', 'Email verified?', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2758, 1, 'en', 'plugins/ecommerce/customer', 'verify_email.confirm_heading', 'Verify email confirmation', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2759, 1, 'en', 'plugins/ecommerce/customer', 'verify_email.confirm_description', 'Are you sure you want to verify email this customer?', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2760, 1, 'en', 'plugins/ecommerce/customer', 'verify_email.notification', 'This customer is not verified email yet? :approve_link to verify email.', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2761, 1, 'en', 'plugins/ecommerce/customer', 'verify_email.approve_here', 'click here', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2762, 1, 'en', 'plugins/ecommerce/customer', 'verify_email.confirm_button', 'Verify', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2763, 1, 'en', 'plugins/ecommerce/discount', 'name', 'Discounts', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2764, 1, 'en', 'plugins/ecommerce/discount', 'create', 'Create discount', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2765, 1, 'en', 'plugins/ecommerce/discount', 'invalid_coupon', 'This coupon is invalid or expired!', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2766, 1, 'en', 'plugins/ecommerce/discount', 'cannot_use_same_time_with_other_discount_program', 'Cannot use this coupon in the same time with other discount program!', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2767, 1, 'en', 'plugins/ecommerce/discount', 'not_used', 'This coupon is not used yet!', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2768, 1, 'en', 'plugins/ecommerce/discount', 'detail', 'Detail', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2769, 1, 'en', 'plugins/ecommerce/discount', 'used', 'Used', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2770, 1, 'en', 'plugins/ecommerce/discount', 'intro.title', 'Manage discount/coupon code', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2771, 1, 'en', 'plugins/ecommerce/discount', 'intro.description', 'Create coupon code or promotion for your products.', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2772, 1, 'en', 'plugins/ecommerce/discount', 'intro.button_text', 'Create discount', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2773, 1, 'en', 'plugins/ecommerce/discount', 'expired', 'Expired', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2774, 1, 'en', 'plugins/ecommerce/discount', 'discount_promotion', 'Discount promotion', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2775, 1, 'en', 'plugins/ecommerce/discount', 'can', 'can', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2776, 1, 'en', 'plugins/ecommerce/discount', 'cannot', 'cannot', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2777, 1, 'en', 'plugins/ecommerce/discount', 'use_with_promotion', 'be used with promotion', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2778, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_title_required_if', 'Please enter the name of the promotion', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2779, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_code_required_if', 'Please enter the promotion code', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2780, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_value_required', 'Amount must be greater than 0', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2781, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_target_required', 'No object selected for promotion', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2782, 1, 'en', 'plugins/ecommerce/discount', 'enums.type-options.amount', 'Amount - Fixed', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2783, 1, 'en', 'plugins/ecommerce/discount', 'enums.type-options.percentage', 'Discount %', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2784, 1, 'en', 'plugins/ecommerce/discount', 'enums.type-options.shipping', 'Free shipping', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2785, 1, 'en', 'plugins/ecommerce/discount', 'enums.type-options.same-price', 'Same price', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2786, 1, 'en', 'plugins/ecommerce/discount', 'discount', 'Discount', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2787, 1, 'en', 'plugins/ecommerce/discount', 'create_coupon_code', 'Create coupon code', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2788, 1, 'en', 'plugins/ecommerce/discount', 'create_discount_promotion', 'Create discount promotion', '2023-05-02 21:08:38', '2023-05-02 21:08:38'),
(2789, 1, 'en', 'plugins/ecommerce/discount', 'generate_coupon_code', 'Generate coupon code', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2790, 1, 'en', 'plugins/ecommerce/discount', 'customers_will_enter_this_coupon_code_when_they_checkout', 'Customers will enter this coupon code when they checkout', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2791, 1, 'en', 'plugins/ecommerce/discount', 'select_type_of_discount', 'Select type of discount', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2792, 1, 'en', 'plugins/ecommerce/discount', 'coupon_code', 'Coupon code', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2793, 1, 'en', 'plugins/ecommerce/discount', 'promotion', 'Promotion', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2794, 1, 'en', 'plugins/ecommerce/discount', 'can_be_used_with_promotion', 'Can be used with promotion', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2795, 1, 'en', 'plugins/ecommerce/discount', 'unlimited_coupon', 'Unlimited coupon', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2796, 1, 'en', 'plugins/ecommerce/discount', 'enter_number', 'Enter number', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2797, 1, 'en', 'plugins/ecommerce/discount', 'coupon_type', 'Coupon type', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2798, 1, 'en', 'plugins/ecommerce/discount', 'percentage_discount', 'Percentage discount (%)', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2799, 1, 'en', 'plugins/ecommerce/discount', 'free_shipping', 'Free shipping', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2800, 1, 'en', 'plugins/ecommerce/discount', 'same_price', 'Same price', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2801, 1, 'en', 'plugins/ecommerce/discount', 'apply_for', 'apply for', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2802, 1, 'en', 'plugins/ecommerce/discount', 'all_orders', 'All orders', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2803, 1, 'en', 'plugins/ecommerce/discount', 'order_amount_from', 'Order amount from', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2804, 1, 'en', 'plugins/ecommerce/discount', 'product_collection', 'Product collection', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2805, 1, 'en', 'plugins/ecommerce/discount', 'product', 'Product', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2806, 1, 'en', 'plugins/ecommerce/discount', 'customer', 'Customer', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2807, 1, 'en', 'plugins/ecommerce/discount', 'variant', 'Variant', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2808, 1, 'en', 'plugins/ecommerce/discount', 'search_product', 'Search product', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2809, 1, 'en', 'plugins/ecommerce/discount', 'no_products_found', 'No products found!', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2810, 1, 'en', 'plugins/ecommerce/discount', 'search_customer', 'Search customer', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2811, 1, 'en', 'plugins/ecommerce/discount', 'no_customer_found', 'No customer found!', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2812, 1, 'en', 'plugins/ecommerce/discount', 'one_time_per_order', 'One time per order', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2813, 1, 'en', 'plugins/ecommerce/discount', 'one_time_per_product_in_cart', 'One time per product in cart', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2814, 1, 'en', 'plugins/ecommerce/discount', 'number_of_products', 'Number of products required to apply', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2815, 1, 'en', 'plugins/ecommerce/discount', 'selected_products', 'Selected products', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2816, 1, 'en', 'plugins/ecommerce/discount', 'selected_customers', 'Selected customers', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2817, 1, 'en', 'plugins/ecommerce/discount', 'time', 'Time', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2818, 1, 'en', 'plugins/ecommerce/discount', 'start_date', 'Start date', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2819, 1, 'en', 'plugins/ecommerce/discount', 'end_date', 'End date', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2820, 1, 'en', 'plugins/ecommerce/discount', 'never_expired', 'Never expired', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2821, 1, 'en', 'plugins/ecommerce/discount', 'save', 'Save', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2822, 1, 'en', 'plugins/ecommerce/discount', 'enter_promotion_name', 'Enter promotion name', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2823, 1, 'en', 'plugins/ecommerce/discount', 'enter_coupon_name', 'Enter coupon name', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2824, 1, 'en', 'plugins/ecommerce/discount', 'cancel', 'Cancel', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2825, 1, 'en', 'plugins/ecommerce/discount', 'is', 'Is', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2826, 1, 'en', 'plugins/ecommerce/discount', 'when_shipping_fee_less_than', 'when shipping fee less than', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2827, 1, 'en', 'plugins/ecommerce/discount', 'minimum_order_amount_error', 'You are under :minimum_amount to apply the coupon, you must add :add_more more items to your cart', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2828, 1, 'en', 'plugins/ecommerce/discount', 'once_per_customer', 'Once per customer', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2829, 1, 'en', 'plugins/ecommerce/discount', 'you_need_login_to_use_coupon_code', 'You need to login to use this coupon code', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2830, 1, 'en', 'plugins/ecommerce/discount', 'you_used_coupon_code', 'You have already used this coupon code', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2831, 1, 'en', 'plugins/ecommerce/discount', 'customer_used_coupon_code', 'Customers who have used this discount code', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2832, 1, 'en', 'plugins/ecommerce/ecommerce', 'settings', 'Settings', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2833, 1, 'en', 'plugins/ecommerce/ecommerce', 'name', 'Ecommerce', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2834, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.title', 'E-commerce', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2835, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.description', 'Ecommerce email config', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2836, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject', 'Subject of order confirmation email', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2837, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject_placeholder', 'The subject of email confirmation send to the customer', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2838, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_content', 'Content of order confirmation email', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2839, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject', 'Subject of email when changing order\'s status', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2840, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject_placeholder', 'Subject of email when changing order\'s status send to customer', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2841, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_content', 'Content of email when changing order\'s status', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2842, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.from_email', 'Email from', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2843, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.from_email_placeholder', 'Email from address to display in mail. Ex: example@gmail.com', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2844, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.title', 'Basic information', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2845, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.state', 'State', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2846, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.city', 'City', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2847, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.country', 'Country', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2848, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_gram', 'Gram (g)', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2849, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_kilogram', 'Kilogram (kg)', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2850, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_lb', 'Pound (lb)', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2851, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_oz', 'Ounce (oz)', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2852, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_cm', 'Centimeter (cm)', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2853, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_m', 'Meter (m)', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2854, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_inch', 'Inch', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2855, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.store_locator_title', 'Store locators', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2856, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.store_locator_description', 'All the lists of your chains, main stores, branches, etc. The locations can be used to track sales and to help us configure tax rates to charge when selling products.', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2857, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.phone', 'Phone', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2858, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.address', 'Address', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2859, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.is_primary', 'Primary?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2860, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.add_new', 'Add new', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2861, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.or', 'Or', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2862, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.change_primary_store', 'change default store locator', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2863, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.other_settings', 'Other settings', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2864, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.other_settings_description', 'Settings for cart, review...', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2865, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_cart', 'Enable shopping cart?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2866, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_tax', 'Enable tax?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2867, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.display_product_price_including_taxes', 'Display product price including taxes?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2868, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_review', 'Enable review?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2869, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_quick_buy_button', 'Enable quick buy button?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2870, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.quick_buy_target', 'Quick buy target page?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2871, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.checkout_page', 'Checkout page', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2872, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.cart_page', 'Cart page', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2873, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.add_location', 'Add location', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2874, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.edit_location', 'Edit location', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2875, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.delete_location', 'Delete location', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2876, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.change_primary_location', 'Change primary location', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2877, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.delete_location_confirmation', 'Are you sure you want to delete this location? This action cannot be undo.', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2878, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.save_location', 'Save location', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2879, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.accept', 'Accept', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2880, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.select_country', 'Select country...', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2881, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.zip_code_enabled', 'Enable Zip Code?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2882, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.thousands_separator', 'Thousands separator', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2883, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.decimal_separator', 'Decimal separator', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2884, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_period', 'Period (.)', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2885, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_comma', 'Comma (,)', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2886, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_space', 'Space ( )', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2887, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.available_countries', 'Available countries', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2888, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.all', 'All', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2889, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.verify_customer_email', 'Verify customer\'s email?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2890, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.minimum_order_amount', 'Minimum order amount to place an order (:currency).', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2891, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_guest_checkout', 'Enable guest checkout?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2892, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.show_number_of_products', 'Show number of products in the product single', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2893, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.payment_method_cod_minimum_amount', 'Minimum order amount - :currency (Optional)', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2894, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.review.max_file_size', 'Review max file size (MB)', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2895, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.review.max_file_number', 'Review max file number', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2896, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.using_custom_font_for_invoice', 'Using custom font for invoice?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2897, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.invoice_font_family', 'Invoice font family (Only work for Latin language)', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2898, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_invoice_stamp', 'Enable invoice stamp?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2899, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.invoice_support_arabic_language', 'Support Arabic language in invoice?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2900, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.make_phone_field_at_the_checkout_optional', 'Make phone field at the checkout optional?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2901, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.disable_order_invoice_until_order_confirmed', 'Disable order invoice until order confirmed?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2902, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.vat_number', 'VAT number', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2903, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.tax_id', 'Tax ID', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2904, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_recaptcha_in_register_page', 'Enable Recaptcha in the registration page?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2905, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_math_captcha_in_register_page', 'Enable Math captcha in the registration page?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2906, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_recaptcha_in_register_page_description', 'Need to setup Captcha in Admin -> Settings -> General first.', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2907, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.show_out_of_stock_products', 'Show out of stock products?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2908, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.default_tax_rate', 'Default tax rate', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2909, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.default_tax_rate_description', 'Important: it will be applied if no tax selected in product.', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2910, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.how_to_display_product_variation_images', 'How to display product variation images?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2911, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.only_variation_images', 'Only variation images', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2912, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.variation_images_and_main_product_images', 'Variation images + main product images', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2913, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.load_countries_states_cities_from_location_plugin', 'Load countries, states, cities from plugin location?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2914, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_wishlist', 'Enable wishlist?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2915, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_compare', 'Enable compare?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2916, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_order_tracking', 'Enable order tracking?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2917, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.recently_viewed.enable', 'Enable customer recently viewed products?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2918, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.recently_viewed.max', 'Maximum number of customer recently viewed products', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2919, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.recently_viewed.max_helper', 'If you set 0, it will save all products.', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2920, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.search_products', 'Search products', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2921, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.search_products_description', 'Config rules to search products', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2922, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.search_for_an_exact_phrase', 'Search for an exact phrase?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2923, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.search_products_by', 'Search products by:', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2924, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.tracking_settings', 'Tracking settings', '2023-05-02 21:08:39', '2023-05-02 21:08:39');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2925, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.tracking_settings_description', 'Manage tracking: UTM, Facebook, Google Tag Manager...', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2926, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_facebook_pixel', 'Enable Facebook Pixel (Meta Pixel)?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2927, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.facebook_pixel_id', 'Facebook Pixel ID', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2928, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.facebook_pixel_helper', 'Go to https://developers.facebook.com/docs/meta-pixel to create Facebook Pixel.', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2929, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_google_tag_manager', 'Enable Google Tag Manager?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2930, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.google_tag_manager_code', 'Google Tag Mana\n        ger code', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2931, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.google_tag_manager_helper', 'Go to https://ads.google.com/aw/conversions to create Google Ads Conversions.', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2932, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.webhook', 'Webhook', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2933, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.webhook_description', 'Send webhook when order placed.', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2934, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.shipping', 'Shipping', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2935, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.shipping_description', 'Settings for shipping', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2936, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.hide_other_shipping_options_if_it_has_free_shipping', 'Hide other shipping options if it has free shipping in the list?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2937, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.order_placed_webhook_url', 'Order placed webhook URL (method: POST)', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2938, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.return_request', 'Return Request', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2939, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.return_request_description', 'Number of days a customer can request a return after the order is completed.', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2940, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.returnable_days', 'Refundable days', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2941, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.billing_address_enabled', 'Enable billing address?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2942, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.activate_custom_return_product_quantity', 'Activate custom return product quantity?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2943, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.allow_partial_return', 'Allow partial return?', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2944, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.allow_partial_return_description', 'Customer can return a few products, do not need to return all products in an order.', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2945, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.activate_custom_return_product_quantity_description', 'Allow customer to change the quantity of the product they want to return.', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2946, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.digital_product', 'Digital product', '2023-05-02 21:08:39', '2023-05-02 21:08:39'),
(2947, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.digital_product_title', 'Is enabled to support the digital products?', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2948, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.allow_guest_checkout_for_digital_products', 'Allow guest checkout for digital products?', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2949, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.company_settings', 'Company settings', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2950, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.company_settings_description', 'Settings Company information for invoicing', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2951, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.company_name', 'Company name', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2952, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.company_address', 'Company address', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2953, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.company_zipcode', 'Company zipcode', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2954, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.company_email', 'Company email', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2955, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.company_phone', 'Company phone', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2956, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.company_logo', 'Company logo', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2957, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.company_tax_id', 'Company tax ID', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2958, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.invoice_code_prefix', 'Invoice code prefix', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2959, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.only_allow_customers_purchased_to_review', 'Only customers who have purchased the product can review the product?', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2960, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_order_auto_confirmed', 'Auto confirm order?', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2961, 1, 'en', 'plugins/ecommerce/ecommerce', 'setting.is_enabled_order_return', 'Is enabled order return?', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2962, 1, 'en', 'plugins/ecommerce/ecommerce', 'store_address', 'Store address', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2963, 1, 'en', 'plugins/ecommerce/ecommerce', 'store_phone', 'Store phone', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2964, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_id', 'Order ID', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2965, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_token', 'Order token', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2966, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_name', 'Customer name', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2967, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_email', 'Customer email', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2968, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_phone', 'Customer phone', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2969, 1, 'en', 'plugins/ecommerce/ecommerce', 'customer_address', 'Customer address', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2970, 1, 'en', 'plugins/ecommerce/ecommerce', 'product_list', 'List products in order', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2971, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_note', 'Order note', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2972, 1, 'en', 'plugins/ecommerce/ecommerce', 'payment_detail', 'Payment detail', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2973, 1, 'en', 'plugins/ecommerce/ecommerce', 'shipping_method', 'Shipping method', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2974, 1, 'en', 'plugins/ecommerce/ecommerce', 'payment_method', 'Payment method', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2975, 1, 'en', 'plugins/ecommerce/ecommerce', 'standard_and_format', 'Standard & Format', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2976, 1, 'en', 'plugins/ecommerce/ecommerce', 'standard_and_format_description', 'Standards and formats are used to calculate things like product prices, shipping weights, and order times.', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2977, 1, 'en', 'plugins/ecommerce/ecommerce', 'change_order_format', 'Edit order code format (optional)', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2978, 1, 'en', 'plugins/ecommerce/ecommerce', 'change_order_format_description', 'The default order code starts at: number. You can change the start or end string to create the order code you want, for example \"DH-: number\" or \": number-A\"', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2979, 1, 'en', 'plugins/ecommerce/ecommerce', 'start_with', 'Start with', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2980, 1, 'en', 'plugins/ecommerce/ecommerce', 'end_with', 'End with', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2981, 1, 'en', 'plugins/ecommerce/ecommerce', 'order_will_be_shown', 'Your order code will be shown', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2982, 1, 'en', 'plugins/ecommerce/ecommerce', 'weight_unit', 'Unit of weight', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2983, 1, 'en', 'plugins/ecommerce/ecommerce', 'height_unit', 'Unit length / height', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2984, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.name', 'Ecommerce', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2985, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.description', 'Theme options for Ecommerce', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2986, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.number_products_per_page', 'Number of products per page', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2987, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.number_of_cross_sale_product', 'Number of cross sale products in product detail page', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2988, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.max_price_filter', 'Maximum price to filter', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2989, 1, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.logo_in_the_checkout_page', 'Logo in the checkout page (Default is the main logo)', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2990, 1, 'en', 'plugins/ecommerce/ecommerce', 'basic_settings', 'Basic settings', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2991, 1, 'en', 'plugins/ecommerce/ecommerce', 'advanced_settings', 'Advanced settings', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2992, 1, 'en', 'plugins/ecommerce/ecommerce', 'product_review_list', 'Product review list', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2993, 1, 'en', 'plugins/ecommerce/email', 'customer_new_order_title', 'Order confirmation', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2994, 1, 'en', 'plugins/ecommerce/email', 'customer_new_order_description', 'Send email confirmation to customer when an order placed', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2995, 1, 'en', 'plugins/ecommerce/email', 'order_cancellation_title', 'Order cancellation', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2996, 1, 'en', 'plugins/ecommerce/email', 'order_cancellation_description', 'Send to custom when they cancelled order', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2997, 1, 'en', 'plugins/ecommerce/email', 'delivery_confirmation_title', 'Delivering confirmation', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2998, 1, 'en', 'plugins/ecommerce/email', 'delivery_confirmation_description', 'Send to customer when order is delivering', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(2999, 1, 'en', 'plugins/ecommerce/email', 'admin_new_order_title', 'Notice about new order', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3000, 1, 'en', 'plugins/ecommerce/email', 'admin_new_order_description', 'Send to administrators when an order placed', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3001, 1, 'en', 'plugins/ecommerce/email', 'order_confirmation_title', 'Order confirmation', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3002, 1, 'en', 'plugins/ecommerce/email', 'order_confirmation_description', 'Send to customer when they order was confirmed by admins', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3003, 1, 'en', 'plugins/ecommerce/email', 'payment_confirmation_title', 'Payment confirmation', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3004, 1, 'en', 'plugins/ecommerce/email', 'payment_confirmation_description', 'Send to customer when their payment was confirmed', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3005, 1, 'en', 'plugins/ecommerce/email', 'order_recover_title', 'Incomplete order', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3006, 1, 'en', 'plugins/ecommerce/email', 'order_recover_description', 'Send to custom to remind them about incomplete orders', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3007, 1, 'en', 'plugins/ecommerce/email', 'view_order', 'View order', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3008, 1, 'en', 'plugins/ecommerce/email', 'link_go_to_our_shop', 'or <a href=\":link\">Go to our shop</a>', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3009, 1, 'en', 'plugins/ecommerce/email', 'order_number', 'Order number: <strong>:order_id</strong>', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3010, 1, 'en', 'plugins/ecommerce/email', 'order_information', 'Order information:', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3011, 1, 'en', 'plugins/ecommerce/email', 'order_return_request_title', 'Order return request', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3012, 1, 'en', 'plugins/ecommerce/email', 'order_return_request_description', 'Send to customer when they return order', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3013, 1, 'en', 'plugins/ecommerce/export', 'products.name', 'Export products', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3014, 1, 'en', 'plugins/ecommerce/export', 'products.title', 'Export Products (CSV)', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3015, 1, 'en', 'plugins/ecommerce/export', 'products.total_products', 'Total products', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3016, 1, 'en', 'plugins/ecommerce/export', 'products.total_variations', 'Total variations', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3017, 1, 'en', 'plugins/ecommerce/export', 'start_export', 'Start export', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3018, 1, 'en', 'plugins/ecommerce/export', 'exporting', 'Exporting...', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3019, 1, 'en', 'plugins/ecommerce/export', 'export', 'Export', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3020, 1, 'en', 'plugins/ecommerce/flash-sale', 'name', 'Flash sales', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3021, 1, 'en', 'plugins/ecommerce/flash-sale', 'create', 'New flash sale', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3022, 1, 'en', 'plugins/ecommerce/flash-sale', 'edit', 'Edit flash sale', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3023, 1, 'en', 'plugins/ecommerce/flash-sale', 'products', 'Products', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3024, 1, 'en', 'plugins/ecommerce/invoice-template', 'name', 'Invoice template', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3025, 1, 'en', 'plugins/ecommerce/invoice-template', 'setting', 'Invoice Settings', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3026, 1, 'en', 'plugins/ecommerce/invoice-template', 'setting_description', 'Settings for Invoice template', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3027, 1, 'en', 'plugins/ecommerce/invoice-template', 'setting_content', 'Content', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3028, 1, 'en', 'plugins/ecommerce/invoice-template', 'preview', 'Preview', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3029, 1, 'en', 'plugins/ecommerce/invoice-template', 'preview_heading', 'Preview Invoice template', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3030, 1, 'en', 'plugins/ecommerce/invoice', 'name', 'Invoices', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3031, 1, 'en', 'plugins/ecommerce/invoice', 'create', 'New invoice', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3032, 1, 'en', 'plugins/ecommerce/invoice', 'edit', 'Edit invoice', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3033, 1, 'en', 'plugins/ecommerce/invoice', 'print', 'Print Invoice', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3034, 1, 'en', 'plugins/ecommerce/invoice', 'download', 'Download Invoice', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3035, 1, 'en', 'plugins/ecommerce/invoice', 'heading', 'Invoice', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3036, 1, 'en', 'plugins/ecommerce/invoice', 'invoice_for_job', '', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3037, 1, 'en', 'plugins/ecommerce/invoice', 'table.code', 'Code', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3038, 1, 'en', 'plugins/ecommerce/invoice', 'table.amount', 'Amount', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3039, 1, 'en', 'plugins/ecommerce/invoice', 'detail.invoice_for', 'Invoice For', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3040, 1, 'en', 'plugins/ecommerce/invoice', 'detail.invoice_to', 'Invoice To', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3041, 1, 'en', 'plugins/ecommerce/invoice', 'detail.tax_id', 'Tax ID', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3042, 1, 'en', 'plugins/ecommerce/invoice', 'detail.code', 'Invoice Code', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3043, 1, 'en', 'plugins/ecommerce/invoice', 'detail.issue_at', 'Issue At', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3044, 1, 'en', 'plugins/ecommerce/invoice', 'detail.description', 'Description', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3045, 1, 'en', 'plugins/ecommerce/invoice', 'detail.qty', 'Qty', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3046, 1, 'en', 'plugins/ecommerce/invoice', 'detail.amount', 'Amount', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3047, 1, 'en', 'plugins/ecommerce/invoice', 'detail.discount', 'Discount', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3048, 1, 'en', 'plugins/ecommerce/invoice', 'detail.grand_total', 'Grand Total', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3049, 1, 'en', 'plugins/ecommerce/invoice', 'detail.shipping_fee', 'Shipping Fee', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3050, 1, 'en', 'plugins/ecommerce/invoice', 'detail.sub_total', 'Sub Total', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3051, 1, 'en', 'plugins/ecommerce/invoice', 'detail.tax', 'Tax', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3052, 1, 'en', 'plugins/ecommerce/invoice', 'detail.total', 'Total', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3053, 1, 'en', 'plugins/ecommerce/invoice', 'total_amount', 'Total Amount', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3054, 1, 'en', 'plugins/ecommerce/invoice', 'payment_info', 'Payment Info', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3055, 1, 'en', 'plugins/ecommerce/invoice', 'payment_method', 'Payment Method', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3056, 1, 'en', 'plugins/ecommerce/invoice', 'payment_status', 'Payment Status', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3057, 1, 'en', 'plugins/ecommerce/invoice', 'generate_invoices', 'Generate Invoices', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3058, 1, 'en', 'plugins/ecommerce/invoice', 'generate_success_message', 'Generated :count invoices successfully', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3059, 1, 'en', 'plugins/ecommerce/order', 'statuses.pending', 'Pending', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3060, 1, 'en', 'plugins/ecommerce/order', 'statuses.processing', 'Processing', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3061, 1, 'en', 'plugins/ecommerce/order', 'statuses.completed', 'Completed', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3062, 1, 'en', 'plugins/ecommerce/order', 'statuses.canceled', 'Canceled', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3063, 1, 'en', 'plugins/ecommerce/order', 'statuses.partial_returned', 'Partial returned', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3064, 1, 'en', 'plugins/ecommerce/order', 'statuses.returned', 'Returned', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3065, 1, 'en', 'plugins/ecommerce/order', 'return_statuses.pending', 'Pending', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3066, 1, 'en', 'plugins/ecommerce/order', 'return_statuses.processing', 'Processing', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3067, 1, 'en', 'plugins/ecommerce/order', 'return_statuses.completed', 'Completed', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3068, 1, 'en', 'plugins/ecommerce/order', 'return_statuses.canceled', 'Canceled', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3069, 1, 'en', 'plugins/ecommerce/order', 'menu', 'Orders', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3070, 1, 'en', 'plugins/ecommerce/order', 'create', 'Create an order', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3071, 1, 'en', 'plugins/ecommerce/order', 'cancel_error', 'The order is delivering or not completed', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3072, 1, 'en', 'plugins/ecommerce/order', 'cancel_success', 'You do cancel the order successful', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3073, 1, 'en', 'plugins/ecommerce/order', 'return_error', 'The order is delivering or not completed', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3074, 1, 'en', 'plugins/ecommerce/order', 'return_success', 'Requested product(s) return successfully!', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3075, 1, 'en', 'plugins/ecommerce/order', 'incomplete_order', 'Incomplete orders', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3076, 1, 'en', 'plugins/ecommerce/order', 'order_id', 'Order ID', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3077, 1, 'en', 'plugins/ecommerce/order', 'product_id', 'Product ID', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3078, 1, 'en', 'plugins/ecommerce/order', 'customer_label', 'Customer', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3079, 1, 'en', 'plugins/ecommerce/order', 'tax_amount', 'Tax Amount', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3080, 1, 'en', 'plugins/ecommerce/order', 'shipping_amount', 'Shipping amount', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3081, 1, 'en', 'plugins/ecommerce/order', 'payment_method', 'Payment method', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3082, 1, 'en', 'plugins/ecommerce/order', 'payment_status_label', 'Payment status', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3083, 1, 'en', 'plugins/ecommerce/order', 'manage_orders', 'Manage orders', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3084, 1, 'en', 'plugins/ecommerce/order', 'order_intro_description', 'Once your store has orders, this is where you will process and track those orders.', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3085, 1, 'en', 'plugins/ecommerce/order', 'create_new_order', 'Create a new order', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3086, 1, 'en', 'plugins/ecommerce/order', 'manage_incomplete_orders', 'Manage incomplete orders', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3087, 1, 'en', 'plugins/ecommerce/order', 'incomplete_orders_intro_description', 'Incomplete order is an order created when a customer adds a product to the cart, proceeds to fill out the purchase information but does not complete the checkout process.', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3088, 1, 'en', 'plugins/ecommerce/order', 'invoice_for_order', 'Invoice for order', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3089, 1, 'en', 'plugins/ecommerce/order', 'created', 'Created', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3090, 1, 'en', 'plugins/ecommerce/order', 'invoice', 'Invoice', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3091, 1, 'en', 'plugins/ecommerce/order', 'return', 'Order Return Request', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3092, 1, 'en', 'plugins/ecommerce/order', 'is_return', 'Return checkbox', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3093, 1, 'en', 'plugins/ecommerce/order', 'total_refund_amount', 'Total refund amount', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3094, 1, 'en', 'plugins/ecommerce/order', 'total_amount_can_be_refunded', 'Total amount can be refunded', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3095, 1, 'en', 'plugins/ecommerce/order', 'refund_reason', 'Refund reason', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3096, 1, 'en', 'plugins/ecommerce/order', 'products', 'product(s)', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3097, 1, 'en', 'plugins/ecommerce/order', 'default', 'Default', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3098, 1, 'en', 'plugins/ecommerce/order', 'system', 'System', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3099, 1, 'en', 'plugins/ecommerce/order', 'new_order_from', 'New order :order_id from :customer', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3100, 1, 'en', 'plugins/ecommerce/order', 'confirmation_email_was_sent_to_customer', 'The email confirmation was sent to customer', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3101, 1, 'en', 'plugins/ecommerce/order', 'address_name_required', 'The name field is required.', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3102, 1, 'en', 'plugins/ecommerce/order', 'address_phone_required', 'The phone field is required.', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3103, 1, 'en', 'plugins/ecommerce/order', 'address_email_required', 'The email field is required.', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3104, 1, 'en', 'plugins/ecommerce/order', 'address_email_unique', 'The customer with that email is existed, please choose other email or login with this email!', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3105, 1, 'en', 'plugins/ecommerce/order', 'address_state_required', 'The state field is required.', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3106, 1, 'en', 'plugins/ecommerce/order', 'address_city_required', 'The city field is required.', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3107, 1, 'en', 'plugins/ecommerce/order', 'address_country_required', 'The country field is required.', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3108, 1, 'en', 'plugins/ecommerce/order', 'address_address_required', 'The address field is required.', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3109, 1, 'en', 'plugins/ecommerce/order', 'address_zipcode_required', 'The zipcode field is required.', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3110, 1, 'en', 'plugins/ecommerce/order', 'create_order_from_payment_page', 'Order was created from checkout page', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3111, 1, 'en', 'plugins/ecommerce/order', 'create_order_from_admin_page', 'Order was created from admin page', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3112, 1, 'en', 'plugins/ecommerce/order', 'order_was_verified_by', 'Order was verified by %user_name%', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3113, 1, 'en', 'plugins/ecommerce/order', 'new_order', 'New order :order_id', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3114, 1, 'en', 'plugins/ecommerce/order', 'payment_was_confirmed_by', 'Payment was confirmed (amount :money) by %user_name%', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3115, 1, 'en', 'plugins/ecommerce/order', 'edit_order', 'Edit order :code', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3116, 1, 'en', 'plugins/ecommerce/order', 'confirm_order_success', 'Confirm order successfully!', '2023-05-02 21:08:40', '2023-05-02 21:08:40'),
(3117, 1, 'en', 'plugins/ecommerce/order', 'error_when_sending_email', 'There is an error when sending email', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3118, 1, 'en', 'plugins/ecommerce/order', 'sent_confirmation_email_success', 'Sent confirmation email successfully!', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3119, 1, 'en', 'plugins/ecommerce/order', 'order_was_sent_to_shipping_team', 'Order was sent to shipping team', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3120, 1, 'en', 'plugins/ecommerce/order', 'by_username', 'by %user_name%', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3121, 1, 'en', 'plugins/ecommerce/order', 'shipping_was_created_from', 'Shipping was created from order %order_id%', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3122, 1, 'en', 'plugins/ecommerce/order', 'shipping_was_canceled_success', 'Shipping was cancelled successfully!', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3123, 1, 'en', 'plugins/ecommerce/order', 'shipping_was_canceled_by', 'Shipping was cancelled by %user_name%', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3124, 1, 'en', 'plugins/ecommerce/order', 'update_shipping_address_success', 'Update shipping address successfully!', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3125, 1, 'en', 'plugins/ecommerce/order', 'order_was_canceled_by', 'Order was cancelled by %user_name%', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3126, 1, 'en', 'plugins/ecommerce/order', 'order_was_returned_by', 'Order was returned by %user_name%', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3127, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_success', 'Confirm payment successfully!', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3128, 1, 'en', 'plugins/ecommerce/order', 'refund_amount_invalid', 'Refund amount must be lower or equal :price', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3129, 1, 'en', 'plugins/ecommerce/order', 'number_of_products_invalid', 'Number of products refund is not valid!', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3130, 1, 'en', 'plugins/ecommerce/order', 'cannot_found_payment_for_this_order', 'Cannot found payment for this order!', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3131, 1, 'en', 'plugins/ecommerce/order', 'refund_success_with_price', 'Refund success :price', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3132, 1, 'en', 'plugins/ecommerce/order', 'refund_success', 'Refund successfully!', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3133, 1, 'en', 'plugins/ecommerce/order', 'order_is_not_existed', 'Order is not existed!', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3134, 1, 'en', 'plugins/ecommerce/order', 'reorder', 'Reorder', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3135, 1, 'en', 'plugins/ecommerce/order', 'sent_email_incomplete_order_success', 'Sent email to remind about incomplete order successfully!', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3136, 1, 'en', 'plugins/ecommerce/order', 'applied_coupon_success', 'Applied coupon \":code\" successfully!', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3137, 1, 'en', 'plugins/ecommerce/order', 'new_order_notice', 'You have <span class=\"bold\">:count</span> New Order(s)', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3138, 1, 'en', 'plugins/ecommerce/order', 'view_all', 'View all', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3139, 1, 'en', 'plugins/ecommerce/order', 'cancel_order', 'Cancel order', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3140, 1, 'en', 'plugins/ecommerce/order', 'order_canceled', 'Order canceled', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3141, 1, 'en', 'plugins/ecommerce/order', 'order_was_canceled_at', 'Order was canceled at', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3142, 1, 'en', 'plugins/ecommerce/order', 'return_order', 'Return order', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3143, 1, 'en', 'plugins/ecommerce/order', 'order_returned', 'Order returned', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3144, 1, 'en', 'plugins/ecommerce/order', 'order_was_returned_at', 'Order was returned at', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3145, 1, 'en', 'plugins/ecommerce/order', 'completed', 'Completed', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3146, 1, 'en', 'plugins/ecommerce/order', 'uncompleted', 'Uncompleted', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3147, 1, 'en', 'plugins/ecommerce/order', 'sku', 'SKU', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3148, 1, 'en', 'plugins/ecommerce/order', 'warehouse', 'Warehouse', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3149, 1, 'en', 'plugins/ecommerce/order', 'sub_amount', 'Sub amount', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3150, 1, 'en', 'plugins/ecommerce/order', 'coupon_code', 'Coupon code: \":code\"', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3151, 1, 'en', 'plugins/ecommerce/order', 'shipping_fee', 'Shipping fee', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3152, 1, 'en', 'plugins/ecommerce/order', 'tax', 'Tax', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3153, 1, 'en', 'plugins/ecommerce/order', 'refunded_amount', 'Refunded amount', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3154, 1, 'en', 'plugins/ecommerce/order', 'amount_received', 'The amount actually received', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3155, 1, 'en', 'plugins/ecommerce/order', 'download_invoice', 'Download invoice', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3156, 1, 'en', 'plugins/ecommerce/order', 'print_invoice', 'Print invoice', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3157, 1, 'en', 'plugins/ecommerce/order', 'add_note', 'Add note...', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3158, 1, 'en', 'plugins/ecommerce/order', 'order_was_confirmed', 'Order was confirmed', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3159, 1, 'en', 'plugins/ecommerce/order', 'confirm_order', 'Confirm order', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3160, 1, 'en', 'plugins/ecommerce/order', 'confirm', 'Confirm', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3161, 1, 'en', 'plugins/ecommerce/order', 'order_was_canceled', 'Order was canceled', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3162, 1, 'en', 'plugins/ecommerce/order', 'order_was_returned', 'Order was returned', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3163, 1, 'en', 'plugins/ecommerce/order', 'pending_payment', 'Pending payment', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3164, 1, 'en', 'plugins/ecommerce/order', 'payment_was_accepted', 'Payment :money was accepted', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3165, 1, 'en', 'plugins/ecommerce/order', 'payment_was_refunded', 'Payment was refunded', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3166, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment', 'Confirm payment', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3167, 1, 'en', 'plugins/ecommerce/order', 'refund', 'Refund', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3168, 1, 'en', 'plugins/ecommerce/order', 'all_products_are_not_delivered', 'All products are not delivered', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3169, 1, 'en', 'plugins/ecommerce/order', 'delivery', 'Delivery', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3170, 1, 'en', 'plugins/ecommerce/order', 'history', 'History', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3171, 1, 'en', 'plugins/ecommerce/order', 'order_number', 'Order number', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3172, 1, 'en', 'plugins/ecommerce/order', 'from', 'from', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3173, 1, 'en', 'plugins/ecommerce/order', 'status', 'Status', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3174, 1, 'en', 'plugins/ecommerce/order', 'successfully', 'Successfully', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3175, 1, 'en', 'plugins/ecommerce/order', 'transaction_type', 'Transaction\'s type', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3176, 1, 'en', 'plugins/ecommerce/order', 'staff', 'Staff', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3177, 1, 'en', 'plugins/ecommerce/order', 'refund_date', 'Refund date', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3178, 1, 'en', 'plugins/ecommerce/order', 'n_a', 'N\\A', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3179, 1, 'en', 'plugins/ecommerce/order', 'payment_date', 'Payment date', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3180, 1, 'en', 'plugins/ecommerce/order', 'payment_gateway', 'Payment gateway', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3181, 1, 'en', 'plugins/ecommerce/order', 'transaction_amount', 'Transaction amount', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3182, 1, 'en', 'plugins/ecommerce/order', 'resend', 'Resend', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3183, 1, 'en', 'plugins/ecommerce/order', 'default_store', 'Default store', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3184, 1, 'en', 'plugins/ecommerce/order', 'update_address', 'Update address', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3185, 1, 'en', 'plugins/ecommerce/order', 'have_an_account_already', 'Have an account already', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3186, 1, 'en', 'plugins/ecommerce/order', 'dont_have_an_account_yet', 'Don\'t have an account yet', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3187, 1, 'en', 'plugins/ecommerce/order', 'mark_payment_as_confirmed', 'Mark <span>:method</span> as confirmed', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3188, 1, 'en', 'plugins/ecommerce/order', 'resend_order_confirmation', 'Resend order confirmation', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3189, 1, 'en', 'plugins/ecommerce/order', 'resend_order_confirmation_description', 'Confirmation email will be sent to <strong>:email</strong>?', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3190, 1, 'en', 'plugins/ecommerce/order', 'send', 'Send', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3191, 1, 'en', 'plugins/ecommerce/order', 'update', 'Update', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3192, 1, 'en', 'plugins/ecommerce/order', 'cancel_shipping_confirmation', 'Cancel shipping confirmation?', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3193, 1, 'en', 'plugins/ecommerce/order', 'cancel_shipping_confirmation_description', 'Cancel shipping confirmation?', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3194, 1, 'en', 'plugins/ecommerce/order', 'cancel_order_confirmation', 'Cancel order confirmation?', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3195, 1, 'en', 'plugins/ecommerce/order', 'cancel_order_confirmation_description', 'Are you sure you want to cancel this order? This action cannot rollback', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3196, 1, 'en', 'plugins/ecommerce/order', 'return_order_confirmation', 'Return order confirmation?', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3197, 1, 'en', 'plugins/ecommerce/order', 'return_order_confirmation_description', 'Are you sure you want to return this order? This action cannot rollback', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3198, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_confirmation_description', 'Processed by <strong>:method</strong>. Did you receive payment outside the system? This payment won\'t be saved into system and cannot be refunded', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3199, 1, 'en', 'plugins/ecommerce/order', 'save_note', 'Save note', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3200, 1, 'en', 'plugins/ecommerce/order', 'order_note', 'Order note', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3201, 1, 'en', 'plugins/ecommerce/order', 'order_note_placeholder', 'Note about order, ex: time or shipping instruction.', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3202, 1, 'en', 'plugins/ecommerce/order', 'order_amount', 'Order amount', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3203, 1, 'en', 'plugins/ecommerce/order', 'additional_information', 'Additional information', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3204, 1, 'en', 'plugins/ecommerce/order', 'notice_about_incomplete_order', 'Notice about incomplete order', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3205, 1, 'en', 'plugins/ecommerce/order', 'notice_about_incomplete_order_description', 'Remind email about uncompleted order will be send to <strong>:email</strong>?', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3206, 1, 'en', 'plugins/ecommerce/order', 'incomplete_order_description_1', 'An incomplete order is when a potential customer places items in their shopping cart, and goes all the way through to the payment page, but then doesn\'t complete the transaction.', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3207, 1, 'en', 'plugins/ecommerce/order', 'incomplete_order_description_2', 'If you have contacted customers and they want to continue buying, you can help them complete their order by following the link:', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3208, 1, 'en', 'plugins/ecommerce/order', 'send_an_email_to_recover_this_order', 'Send an email to customer to recover this order', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3209, 1, 'en', 'plugins/ecommerce/order', 'see_maps', 'See maps', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3210, 1, 'en', 'plugins/ecommerce/order', 'one_or_more_products_dont_have_enough_quantity', 'One or more products don\'t have enough quantity!', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3211, 1, 'en', 'plugins/ecommerce/order', 'cannot_send_order_recover_to_mail', 'The email could not be found so it can\'t send a recovery email to the customer.', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3212, 1, 'en', 'plugins/ecommerce/order', 'payment_info', 'Payment Info', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3213, 1, 'en', 'plugins/ecommerce/order', 'payment_method_refund_automatic', 'Your customer will be refunded using :method automatically.', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3214, 1, 'en', 'plugins/ecommerce/order', 'order', 'Order', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3215, 1, 'en', 'plugins/ecommerce/order', 'order_information', 'Order information', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3216, 1, 'en', 'plugins/ecommerce/order', 'create_a_new_product', 'Create a new product', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3217, 1, 'en', 'plugins/ecommerce/order', 'out_of_stock', 'Out of stock', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3218, 1, 'en', 'plugins/ecommerce/order', 'products_available', 'product(s) available', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3219, 1, 'en', 'plugins/ecommerce/order', 'no_products_found', 'No products found!', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3220, 1, 'en', 'plugins/ecommerce/order', 'note', 'Note', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3221, 1, 'en', 'plugins/ecommerce/order', 'note_for_order', 'Note for order...', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3222, 1, 'en', 'plugins/ecommerce/order', 'amount', 'Amount', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3223, 1, 'en', 'plugins/ecommerce/order', 'add_discount', 'Add discount', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3224, 1, 'en', 'plugins/ecommerce/order', 'discount', 'Discount', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3225, 1, 'en', 'plugins/ecommerce/order', 'add_shipping_fee', 'Add shipping fee', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3226, 1, 'en', 'plugins/ecommerce/order', 'shipping', 'Shipping', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3227, 1, 'en', 'plugins/ecommerce/order', 'total_amount', 'Total amount', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3228, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_and_create_order', 'Confirm payment and create order', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3229, 1, 'en', 'plugins/ecommerce/order', 'paid', 'Paid', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3230, 1, 'en', 'plugins/ecommerce/order', 'pay_later', 'Pay later', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3231, 1, 'en', 'plugins/ecommerce/order', 'customer_information', 'Customer information', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3232, 1, 'en', 'plugins/ecommerce/order', 'create_new_customer', 'Create new customer', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3233, 1, 'en', 'plugins/ecommerce/order', 'no_customer_found', 'No customer found!', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3234, 1, 'en', 'plugins/ecommerce/order', 'customer', 'Customer', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3235, 1, 'en', 'plugins/ecommerce/order', 'orders', 'order(s)', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3236, 1, 'en', 'plugins/ecommerce/order', 'shipping_address', 'Shipping Address', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3237, 1, 'en', 'plugins/ecommerce/order', 'billing_address', 'Billing Address', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3238, 1, 'en', 'plugins/ecommerce/order', 'see_on_maps', 'See on maps', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3239, 1, 'en', 'plugins/ecommerce/order', 'name', 'Name', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3240, 1, 'en', 'plugins/ecommerce/order', 'price', 'Price', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3241, 1, 'en', 'plugins/ecommerce/order', 'product_name', 'Product name', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3242, 1, 'en', 'plugins/ecommerce/order', 'total', 'Total', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3243, 1, 'en', 'plugins/ecommerce/order', 'action', 'Action', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3244, 1, 'en', 'plugins/ecommerce/order', 'add_product', 'Add product', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3245, 1, 'en', 'plugins/ecommerce/order', 'enter_free_text', 'Enter free text', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3246, 1, 'en', 'plugins/ecommerce/order', 'promotion_discount_amount', 'Promotion amount', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3247, 1, 'en', 'plugins/ecommerce/order', 'add', 'Add', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3248, 1, 'en', 'plugins/ecommerce/order', 'store', 'Store', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3249, 1, 'en', 'plugins/ecommerce/order', 'please_choose_product_option', 'Please choose product option', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3250, 1, 'en', 'plugins/ecommerce/order', 'sku_optional', 'SKU (optional)', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3251, 1, 'en', 'plugins/ecommerce/order', 'with_storehouse_management', 'With storehouse management?', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3252, 1, 'en', 'plugins/ecommerce/order', 'quantity', 'Quantity', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3253, 1, 'en', 'plugins/ecommerce/order', 'allow_customer_checkout_when_this_product_out_of_stock', 'Allow customer checkout when this product out of stock?', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3254, 1, 'en', 'plugins/ecommerce/order', 'address', 'Address', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3255, 1, 'en', 'plugins/ecommerce/order', 'phone', 'Phone', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3256, 1, 'en', 'plugins/ecommerce/order', 'country', 'Country', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3257, 1, 'en', 'plugins/ecommerce/order', 'state', 'State', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3258, 1, 'en', 'plugins/ecommerce/order', 'city', 'City', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3259, 1, 'en', 'plugins/ecommerce/order', 'zip_code', 'Zip code', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3260, 1, 'en', 'plugins/ecommerce/order', 'discount_based_on', 'Discount based on', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3261, 1, 'en', 'plugins/ecommerce/order', 'or_coupon_code', 'Or coupon code', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3262, 1, 'en', 'plugins/ecommerce/order', 'description', 'Description', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3263, 1, 'en', 'plugins/ecommerce/order', 'how_to_select_configured_shipping', 'How to select configured shipping?', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3264, 1, 'en', 'plugins/ecommerce/order', 'please_add_customer_information_with_the_complete_shipping_address_to_see_the_configured_shipping_rates', 'Please add customer information with the complete shipping address to see the configured shipping rates', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3265, 1, 'en', 'plugins/ecommerce/order', 'please_products_and_customer_address_to_see_the_shipping_rates', 'Please add products and customer information with the complete shipping address to see the configured shipping rates', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3266, 1, 'en', 'plugins/ecommerce/order', 'shipping_method_not_found', 'Shipping method not found', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3267, 1, 'en', 'plugins/ecommerce/order', 'free_shipping', 'Free shipping', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3268, 1, 'en', 'plugins/ecommerce/order', 'custom', 'Custom', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3269, 1, 'en', 'plugins/ecommerce/order', 'email', 'Email', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3270, 1, 'en', 'plugins/ecommerce/order', 'create_order', 'Create order', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3271, 1, 'en', 'plugins/ecommerce/order', 'close', 'Close', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3272, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_is_paid_for_this_order', 'Confirm payment is paid for this order', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3273, 1, 'en', 'plugins/ecommerce/order', 'payment_status_of_the_order_is_paid_once_the_order_has_been_created_you_cannot_change_the_payment_method_or_status', 'Payment status of the order is Paid. Once the order has been created, you cannot change the payment method or status', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3274, 1, 'en', 'plugins/ecommerce/order', 'select_payment_method', 'Select payment method', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3275, 1, 'en', 'plugins/ecommerce/order', 'cash_on_delivery_cod', 'Cash on delivery (COD)', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3276, 1, 'en', 'plugins/ecommerce/order', 'bank_transfer', 'Bank transfer', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3277, 1, 'en', 'plugins/ecommerce/order', 'paid_amount', 'Paid amount', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3278, 1, 'en', 'plugins/ecommerce/order', 'confirm_that_payment_for_this_order_will_be_paid_later', 'Confirm that payment for this order will be paid later', '2023-05-02 21:08:41', '2023-05-02 21:08:41');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3279, 1, 'en', 'plugins/ecommerce/order', 'payment_status_of_the_order_is_pending_once_the_order_has_been_created_you_cannot_change_the_payment_method_or_status', 'Payment status of the order is Pending. Once the order has been created, you cannot change the payment method or status', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3280, 1, 'en', 'plugins/ecommerce/order', 'pending_amount', 'Pending amount', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3281, 1, 'en', 'plugins/ecommerce/order', 'update_email', 'Update email', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3282, 1, 'en', 'plugins/ecommerce/order', 'save', 'Save', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3283, 1, 'en', 'plugins/ecommerce/order', 'cancel', 'Cancel', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3284, 1, 'en', 'plugins/ecommerce/order', 'create_a_new_order', 'Create a new order', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3285, 1, 'en', 'plugins/ecommerce/order', 'search_or_create_new_product', 'Search or create a new product', '2023-05-02 21:08:41', '2023-05-02 21:08:41'),
(3286, 1, 'en', 'plugins/ecommerce/order', 'search_or_create_new_customer', 'Search or create a new customer', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3287, 1, 'en', 'plugins/ecommerce/order', 'discount_description', 'Discount description', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3288, 1, 'en', 'plugins/ecommerce/order', 'cant_select_out_of_stock_product', 'Cannot select out of stock product!', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3289, 1, 'en', 'plugins/ecommerce/order', 'referral', 'Referral', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3290, 1, 'en', 'plugins/ecommerce/order', 'return_order_unique', 'Same :attribute already exists in a previous return request.', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3291, 1, 'en', 'plugins/ecommerce/order', 'total_return_amount', 'Total return amount', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3292, 1, 'en', 'plugins/ecommerce/order', 'change_return_order_status', 'Change return order status', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3293, 1, 'en', 'plugins/ecommerce/order', 'return_reason', 'Return reason', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3294, 1, 'en', 'plugins/ecommerce/order', 'referral_data.ip', 'IP', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3295, 1, 'en', 'plugins/ecommerce/order', 'referral_data.landing_domain', 'Landing domain', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3296, 1, 'en', 'plugins/ecommerce/order', 'referral_data.landing_page', 'Landing page', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3297, 1, 'en', 'plugins/ecommerce/order', 'referral_data.landing_params', 'Landing params', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3298, 1, 'en', 'plugins/ecommerce/order', 'referral_data.gclid', 'Gclid', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3299, 1, 'en', 'plugins/ecommerce/order', 'referral_data.fclid', 'Fclid', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3300, 1, 'en', 'plugins/ecommerce/order', 'referral_data.utm_source', 'UTM source', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3301, 1, 'en', 'plugins/ecommerce/order', 'referral_data.utm_campaign', 'UTM campaign', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3302, 1, 'en', 'plugins/ecommerce/order', 'referral_data.utm_medium', 'UTM medium', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3303, 1, 'en', 'plugins/ecommerce/order', 'referral_data.utm_term', 'UTM term', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3304, 1, 'en', 'plugins/ecommerce/order', 'referral_data.utm_content', 'UTM content', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3305, 1, 'en', 'plugins/ecommerce/order', 'referral_data.referral', 'Referral', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3306, 1, 'en', 'plugins/ecommerce/order', 'referral_data.referrer_url', 'Referral URL', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3307, 1, 'en', 'plugins/ecommerce/order', 'referral_data.referrer_domain', 'Referral domain', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3308, 1, 'en', 'plugins/ecommerce/order', 'order_address_types.shipping_address', 'Shipping address', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3309, 1, 'en', 'plugins/ecommerce/order', 'order_address_types.billing_address', 'Billing address', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3310, 1, 'en', 'plugins/ecommerce/order', 'order_return_reasons.damaged', 'Damaged product', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3311, 1, 'en', 'plugins/ecommerce/order', 'order_return_reasons.defective', 'Defective', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3312, 1, 'en', 'plugins/ecommerce/order', 'order_return_reasons.incorrect_item', 'Incorrect item', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3313, 1, 'en', 'plugins/ecommerce/order', 'order_return_reasons.arrived_late', 'Arrived late', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3314, 1, 'en', 'plugins/ecommerce/order', 'order_return_reasons.not_as_described', 'Not as described', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3315, 1, 'en', 'plugins/ecommerce/order', 'order_return_reasons.no_longer_want', 'No longer want', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3316, 1, 'en', 'plugins/ecommerce/order', 'order_return_reasons.other', 'Other', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3317, 1, 'en', 'plugins/ecommerce/order', 'order_return_reason', 'Return reason', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3318, 1, 'en', 'plugins/ecommerce/order', 'notices.update_return_order_status_error', 'Cannot update return order status! Maybe the return order status is not valid.', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3319, 1, 'en', 'plugins/ecommerce/order', 'notices.update_return_order_status_success', 'Update return order status successfully!', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3320, 1, 'en', 'plugins/ecommerce/order', 'order_return', 'Order returns', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3321, 1, 'en', 'plugins/ecommerce/order', 'edit_order_return', 'Edit order return :code', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3322, 1, 'en', 'plugins/ecommerce/order', 'order_return_items_count', 'Product item(s)', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3323, 1, 'en', 'plugins/ecommerce/order', 'new_order_notifications.new_order', 'New order', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3324, 1, 'en', 'plugins/ecommerce/order', 'new_order_notifications.view', 'View', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3325, 1, 'en', 'plugins/ecommerce/order', 'new_order_notifications.description', ':customer ordered :quantity :product', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3326, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_notifications.confirm_payment', 'Confirm payment', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3327, 1, 'en', 'plugins/ecommerce/order', 'confirm_payment_notifications.description', 'Order :order Payment was confirmed (amount :amount) by :by', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3328, 1, 'en', 'plugins/ecommerce/order', 'update_shipping_status_notifications.update_shipping_status', 'Update shipping status', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3329, 1, 'en', 'plugins/ecommerce/order', 'update_shipping_status_notifications.description', 'Order :order had changed shipping status :description', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3330, 1, 'en', 'plugins/ecommerce/order', 'cancel_order_notifications.cancel_order', 'Cancel order', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3331, 1, 'en', 'plugins/ecommerce/order', 'cancel_order_notifications.description', 'Order :order was cancelled by custom :customer', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3332, 1, 'en', 'plugins/ecommerce/order', 'return_order_notifications.return_order', 'Return order', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3333, 1, 'en', 'plugins/ecommerce/order', 'return_order_notifications.description', ':customer has requested return product(s)', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3334, 1, 'en', 'plugins/ecommerce/order', 'order_completed_notifications.order_completed', 'Order Completed', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3335, 1, 'en', 'plugins/ecommerce/order', 'order_completed_notifications.description', 'Order :order has been completed', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3336, 1, 'en', 'plugins/ecommerce/payment', 'name', 'Payments', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3337, 1, 'en', 'plugins/ecommerce/payment', 'payment_method', 'Payment methods', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3338, 1, 'en', 'plugins/ecommerce/payment', 'view_payment', 'View payment #', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3339, 1, 'en', 'plugins/ecommerce/payment', 'charge_id', 'Charge ID', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3340, 1, 'en', 'plugins/ecommerce/payment', 'amount', 'Amount', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3341, 1, 'en', 'plugins/ecommerce/payment', 'currency', 'Currency', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3342, 1, 'en', 'plugins/ecommerce/payment', 'user', 'User', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3343, 1, 'en', 'plugins/ecommerce/payment', 'paypal_name_required', 'PayPal\'s name is required!', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3344, 1, 'en', 'plugins/ecommerce/payment', 'paypal_name_max', 'PayPal\'s name is too long!', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3345, 1, 'en', 'plugins/ecommerce/payment', 'status', 'Status', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3346, 1, 'en', 'plugins/ecommerce/payment', 'enabled', 'Enabled', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3347, 1, 'en', 'plugins/ecommerce/payment', 'disabled', 'Disabled', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3348, 1, 'en', 'plugins/ecommerce/payment', 'client_id', 'Client ID', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3349, 1, 'en', 'plugins/ecommerce/payment', 'client_secret', 'Client Secret', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3350, 1, 'en', 'plugins/ecommerce/payment', 'mode', 'Mode', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3351, 1, 'en', 'plugins/ecommerce/payment', 'sandbox', 'Sandbox', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3352, 1, 'en', 'plugins/ecommerce/payment', 'live', 'Live', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3353, 1, 'en', 'plugins/ecommerce/payment', 'enable_payment_log', 'Enable Payment Log', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3354, 1, 'en', 'plugins/ecommerce/payment', 'yes', 'Yes', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3355, 1, 'en', 'plugins/ecommerce/payment', 'no', 'No', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3356, 1, 'en', 'plugins/ecommerce/payment', 'client_key', 'Client Key', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3357, 1, 'en', 'plugins/ecommerce/payment', 'paypal', 'PayPal', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3358, 1, 'en', 'plugins/ecommerce/payment', 'action', 'Action', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3359, 1, 'en', 'plugins/ecommerce/payment', 'go_back', 'Go back', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3360, 1, 'en', 'plugins/ecommerce/payment', 'view', 'View', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3361, 1, 'en', 'plugins/ecommerce/payment', 'cash_on_delivery', 'Cash on delivery (COD)', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3362, 1, 'en', 'plugins/ecommerce/payment', 'via_bank_transfer', 'Via bank transfer', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3363, 1, 'en', 'plugins/ecommerce/payment', 'payment_via_cart', 'Payment via card', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3364, 1, 'en', 'plugins/ecommerce/payment', 'card_number', 'Card number', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3365, 1, 'en', 'plugins/ecommerce/payment', 'full_name', 'Full name', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3366, 1, 'en', 'plugins/ecommerce/payment', 'payment_via_paypal', 'Payment via PayPal', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3367, 1, 'en', 'plugins/ecommerce/payment', 'mm_yy', 'MM/YY', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3368, 1, 'en', 'plugins/ecommerce/payment', 'cvc', 'CVC', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3369, 1, 'en', 'plugins/ecommerce/payment', 'details', 'Details', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3370, 1, 'en', 'plugins/ecommerce/payment', 'payer_name', 'Payer Name', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3371, 1, 'en', 'plugins/ecommerce/payment', 'email', 'Email', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3372, 1, 'en', 'plugins/ecommerce/payment', 'phone', 'Phone', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3373, 1, 'en', 'plugins/ecommerce/payment', 'country', 'Country', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3374, 1, 'en', 'plugins/ecommerce/payment', 'shipping_address', 'Shipping Address', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3375, 1, 'en', 'plugins/ecommerce/payment', 'payment_details', 'Payment Details', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3376, 1, 'en', 'plugins/ecommerce/payment', 'card', 'Card', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3377, 1, 'en', 'plugins/ecommerce/payment', 'address', 'Address', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3378, 1, 'en', 'plugins/ecommerce/payment', 'new_payment', 'Payment for order :id', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3379, 1, 'en', 'plugins/ecommerce/payment', 'payment_id', 'Payment ID', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3380, 1, 'en', 'plugins/ecommerce/payment', 'order', 'Order', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3381, 1, 'en', 'plugins/ecommerce/payment', 'add_payment', 'Add payment', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3382, 1, 'en', 'plugins/ecommerce/payment', 'add_new_payment', 'New payment', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3383, 1, 'en', 'plugins/ecommerce/payment', 'add', 'Add', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3384, 1, 'en', 'plugins/ecommerce/payment', 'no_data', 'No data to display', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3385, 1, 'en', 'plugins/ecommerce/payment', 'no_option', 'No option', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3386, 1, 'en', 'plugins/ecommerce/payment', 'edit_payment', 'Edit payment', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3387, 1, 'en', 'plugins/ecommerce/payment', 'save', 'Save', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3388, 1, 'en', 'plugins/ecommerce/prices', 'name', 'Price', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3389, 1, 'en', 'plugins/ecommerce/prices', 'create', 'New price', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3390, 1, 'en', 'plugins/ecommerce/prices', 'edit', 'Edit price', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3391, 1, 'en', 'plugins/ecommerce/prices', 'list', 'List price', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3392, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'name', 'Product attribute sets', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3393, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'create', 'New product attribute set', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3394, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'edit', 'Edit product attribute set', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3395, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'visible_in_categories', 'Visible in categories', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3396, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'product_with_more_version', 'Product with more version', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3397, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'create_a_version', 'Create a version', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3398, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'enabled', 'Enabled', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3399, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'attributes', 'Attributes', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3400, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'price', 'Price', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3401, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'edit_btn', 'Edit', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3402, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'remove_btn', 'Remove', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3403, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'product', 'Product', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3404, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'back_to_product', 'Back to product', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3405, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'save', 'Save', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3406, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'other_existing_versions', 'Other existing versions', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3407, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'version_information', 'Version information', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3408, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_rule', 'Add rule', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3409, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'rules', 'Rules', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3410, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'pricing', 'Pricing', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3411, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'sale_price', 'Sale price', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3412, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'sale_type', 'Sale type', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3413, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'no_sale_price', 'No sale price', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3414, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'always_on_sale', 'Always on sale', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3415, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'limited_time', 'Limited time', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3416, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'from', 'From', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3417, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'to', 'To', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3418, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'storehouse', 'Storehouse', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3419, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'no_storehouse_management', 'No storehouse management', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3420, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'with_storehouse_management', 'With storehouse management', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3421, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'quantity', 'Quantity', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3422, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'allow_customer_checkout_out_of_stock', 'Allow customer checkout when this product out of stock', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3423, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'shipping', 'Shipping', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3424, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'length', 'Length', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3425, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'wide', 'Wide', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3426, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'height', 'Height', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3427, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'weight', 'Weight', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3428, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'version_images', 'Version images', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3429, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_new_image', 'Add new image', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3430, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'attribute_set', 'Attribute set', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3431, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'value', 'Value', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3432, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'dropdown_swatch', 'Dropdown Swatch', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3433, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'visual_swatch', 'Visual Swatch', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3434, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'text_swatch', 'Text Swatch', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3435, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'display_layout', 'Display Layout', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3436, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'searchable', 'Searchable', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3437, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'comparable', 'Comparable', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3438, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'use_in_product_listing', 'Used in product listing', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3439, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'attributes_list', 'Attributes list', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3440, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'is_default', 'Is default?', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3441, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'title', 'Title', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3442, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'slug', 'Slug', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3443, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'color', 'Color', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3444, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'image', 'Image', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3445, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'remove', 'Remove', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3446, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_new_attribute', 'Add new attribute', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3447, 1, 'en', 'plugins/ecommerce/product-attribute-sets', 'use_image_from_product_variation', 'Use image from product variation (for Visual Swatch only)', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3448, 1, 'en', 'plugins/ecommerce/product-attributes', 'name', 'Product attributes', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3449, 1, 'en', 'plugins/ecommerce/product-attributes', 'create', 'New product attribute', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3450, 1, 'en', 'plugins/ecommerce/product-attributes', 'edit', 'Edit product attribute', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3451, 1, 'en', 'plugins/ecommerce/product-attributes', 'intro.title', 'Manage product attributes', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3452, 1, 'en', 'plugins/ecommerce/product-attributes', 'intro.description', 'Product attribute such as color, width, height ...', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3453, 1, 'en', 'plugins/ecommerce/product-attributes', 'intro.button_text', 'Create product attribute', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3454, 1, 'en', 'plugins/ecommerce/product-categories', 'name', 'Product categories', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3455, 1, 'en', 'plugins/ecommerce/product-categories', 'create', 'Create new product category', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3456, 1, 'en', 'plugins/ecommerce/product-categories', 'edit', 'Edit product category', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3457, 1, 'en', 'plugins/ecommerce/product-categories', 'list', 'List product categories', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3458, 1, 'en', 'plugins/ecommerce/product-categories', 'none', 'None', '2023-05-02 21:08:42', '2023-05-02 21:08:42'),
(3459, 1, 'en', 'plugins/ecommerce/product-categories', 'menu', 'Product categories', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3460, 1, 'en', 'plugins/ecommerce/product-categories', 'intro.title', 'Manage product categories', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3461, 1, 'en', 'plugins/ecommerce/product-categories', 'intro.description', 'Such as clothes, shoes, bags, jewelry ...', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3462, 1, 'en', 'plugins/ecommerce/product-categories', 'intro.button_text', 'Create product category', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3463, 1, 'en', 'plugins/ecommerce/product-categories', 'total_products', 'Total products: :total', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3464, 1, 'en', 'plugins/ecommerce/product-collections', 'name', 'Product collections', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3465, 1, 'en', 'plugins/ecommerce/product-collections', 'create', 'New product collection', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3466, 1, 'en', 'plugins/ecommerce/product-collections', 'edit', 'Edit product collection', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3467, 1, 'en', 'plugins/ecommerce/product-collections', 'slug_help_block', 'Label key: <code>:slug</code>. We will use this key for filter.', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3468, 1, 'en', 'plugins/ecommerce/product-collections', 'intro.title', 'Manage product collections', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3469, 1, 'en', 'plugins/ecommerce/product-collections', 'intro.description', 'Group your products into collections to make it easier for customers to find them by category.', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3470, 1, 'en', 'plugins/ecommerce/product-collections', 'intro.button_text', 'Create product collection', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3471, 1, 'en', 'plugins/ecommerce/product-label', 'name', 'Product labels', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3472, 1, 'en', 'plugins/ecommerce/product-label', 'create', 'New product label', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3473, 1, 'en', 'plugins/ecommerce/product-label', 'edit', 'Edit product label', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3474, 1, 'en', 'plugins/ecommerce/product-label', 'color', 'Color', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3475, 1, 'en', 'plugins/ecommerce/product-label', 'color_placeholder', 'Example: #f0f0f0', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3476, 1, 'en', 'plugins/ecommerce/product-option', 'name', 'Product options', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3477, 1, 'en', 'plugins/ecommerce/product-option', 'options', 'Options', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3478, 1, 'en', 'plugins/ecommerce/product-option', 'create', 'New option', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3479, 1, 'en', 'plugins/ecommerce/product-option', 'edit', 'Edit option :name', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3480, 1, 'en', 'plugins/ecommerce/product-option', 'required', 'Is required?', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3481, 1, 'en', 'plugins/ecommerce/product-option', 'option_value', 'Option value', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3482, 1, 'en', 'plugins/ecommerce/product-option', 'option_type', 'Type', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3483, 1, 'en', 'plugins/ecommerce/product-option', 'label', 'Label', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3484, 1, 'en', 'plugins/ecommerce/product-option', 'price', 'Price', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3485, 1, 'en', 'plugins/ecommerce/product-option', 'price_type', 'Price Type', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3486, 1, 'en', 'plugins/ecommerce/product-option', 'percent', 'Percent', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3487, 1, 'en', 'plugins/ecommerce/product-option', 'fixed', 'Fixed', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3488, 1, 'en', 'plugins/ecommerce/product-option', 'label_placeholder', 'Please fill label', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3489, 1, 'en', 'plugins/ecommerce/product-option', 'affect_price_label', 'Please fill affect price', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3490, 1, 'en', 'plugins/ecommerce/product-option', 'add_new_row', 'Add new row', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3491, 1, 'en', 'plugins/ecommerce/product-option', 'add_new_option', 'Add new option', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3492, 1, 'en', 'plugins/ecommerce/product-option', 'select_global_option', 'Select Global Option', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3493, 1, 'en', 'plugins/ecommerce/product-option', 'add_global_option', 'Add Global Option', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3494, 1, 'en', 'plugins/ecommerce/product-option', 'please_select_option', 'Please select option', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3495, 1, 'en', 'plugins/ecommerce/product-option', 'add_to_cart_value_required', 'Option :value is required', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3496, 1, 'en', 'plugins/ecommerce/product-option', 'option_value_attribute', 'value :item of :value_key on option #:option_key', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3497, 1, 'en', 'plugins/ecommerce/product-option', 'option_name_attribute', 'Option :key', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3498, 1, 'en', 'plugins/ecommerce/product-option', 'option_type_attribute', 'Type of option :key', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3499, 1, 'en', 'plugins/ecommerce/product-option', 'option_value_name_attribute', 'Values of option :key', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3500, 1, 'en', 'plugins/ecommerce/product-option', 'please_choose_option_type', 'Please choose option type!', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3501, 1, 'en', 'plugins/ecommerce/product-tag', 'name', 'Product tags', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3502, 1, 'en', 'plugins/ecommerce/product-tag', 'create', 'New product tag', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3503, 1, 'en', 'plugins/ecommerce/product-tag', 'edit', 'Edit product tag', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3504, 1, 'en', 'plugins/ecommerce/products', 'name', 'Products', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3505, 1, 'en', 'plugins/ecommerce/products', 'create', 'New product', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3506, 1, 'en', 'plugins/ecommerce/products', 'create_product_type.physical', 'New physical product', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3507, 1, 'en', 'plugins/ecommerce/products', 'create_product_type.digital', 'New digital product', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3508, 1, 'en', 'plugins/ecommerce/products', 'edit', 'Edit product - :name', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3509, 1, 'en', 'plugins/ecommerce/products', 'form.name', 'Name', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3510, 1, 'en', 'plugins/ecommerce/products', 'form.name_placeholder', 'Product\'s name (Maximum 120 characters)', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3511, 1, 'en', 'plugins/ecommerce/products', 'form.description', 'Description', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3512, 1, 'en', 'plugins/ecommerce/products', 'form.description_placeholder', 'Short description for product (Maximum 400 characters)', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3513, 1, 'en', 'plugins/ecommerce/products', 'form.categories', 'Categories', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3514, 1, 'en', 'plugins/ecommerce/products', 'form.content', 'Content', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3515, 1, 'en', 'plugins/ecommerce/products', 'form.price', 'Price', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3516, 1, 'en', 'plugins/ecommerce/products', 'form.quantity', 'Quantity', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3517, 1, 'en', 'plugins/ecommerce/products', 'form.brand', 'Brand', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3518, 1, 'en', 'plugins/ecommerce/products', 'form.width', 'Width', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3519, 1, 'en', 'plugins/ecommerce/products', 'form.height', 'Height', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3520, 1, 'en', 'plugins/ecommerce/products', 'form.weight', 'Weight', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3521, 1, 'en', 'plugins/ecommerce/products', 'form.date.start', 'From date', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3522, 1, 'en', 'plugins/ecommerce/products', 'form.date.end', 'To date', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3523, 1, 'en', 'plugins/ecommerce/products', 'form.image', 'Images', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3524, 1, 'en', 'plugins/ecommerce/products', 'form.collections', 'Product collections', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3525, 1, 'en', 'plugins/ecommerce/products', 'form.labels', 'Labels', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3526, 1, 'en', 'plugins/ecommerce/products', 'form.price_sale', 'Price sale', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3527, 1, 'en', 'plugins/ecommerce/products', 'form.product_type.title', 'Product type', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3528, 1, 'en', 'plugins/ecommerce/products', 'form.product', 'Product', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3529, 1, 'en', 'plugins/ecommerce/products', 'form.total', 'Total', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3530, 1, 'en', 'plugins/ecommerce/products', 'form.sub_total', 'Subtotal', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3531, 1, 'en', 'plugins/ecommerce/products', 'form.shipping_fee', 'Shipping fee', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3532, 1, 'en', 'plugins/ecommerce/products', 'form.discount', 'Discount', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3533, 1, 'en', 'plugins/ecommerce/products', 'form.options', 'Options', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3534, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.height', 'Height', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3535, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.length', 'Length', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3536, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.title', 'Shipping', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3537, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.weight', 'Weight', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3538, 1, 'en', 'plugins/ecommerce/products', 'form.shipping.wide', 'Wide', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3539, 1, 'en', 'plugins/ecommerce/products', 'form.barcode', 'Barcode (ISBN, UPC, GTIN, etc.) ', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3540, 1, 'en', 'plugins/ecommerce/products', 'form.barcode_placeholder', 'Enter barcode', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3541, 1, 'en', 'plugins/ecommerce/products', 'form.cost_per_item', 'Cost per item', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3542, 1, 'en', 'plugins/ecommerce/products', 'form.cost_per_item_placeholder', 'Enter cost per item', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3543, 1, 'en', 'plugins/ecommerce/products', 'form.cost_per_item_helper', 'Customers won\'t see this price.', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3544, 1, 'en', 'plugins/ecommerce/products', 'form.stock.allow_order_when_out', 'Allow customer checkout when this product out of stock', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3545, 1, 'en', 'plugins/ecommerce/products', 'form.stock.in_stock', 'In stock', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3546, 1, 'en', 'plugins/ecommerce/products', 'form.stock.out_stock', 'Out stock', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3547, 1, 'en', 'plugins/ecommerce/products', 'form.stock.title', 'Stock status', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3548, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.no_storehouse', 'No storehouse management', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3549, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.storehouse', 'With storehouse management', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3550, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.title', 'Storehouse', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3551, 1, 'en', 'plugins/ecommerce/products', 'form.storehouse.quantity', 'Quantity', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3552, 1, 'en', 'plugins/ecommerce/products', 'form.tax', 'Tax', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3553, 1, 'en', 'plugins/ecommerce/products', 'form.taxes', 'Taxes', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3554, 1, 'en', 'plugins/ecommerce/products', 'form.is_default', 'Is default', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3555, 1, 'en', 'plugins/ecommerce/products', 'form.action', 'Action', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3556, 1, 'en', 'plugins/ecommerce/products', 'form.restock_quantity', 'Restock quantity', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3557, 1, 'en', 'plugins/ecommerce/products', 'form.remain', 'Remain', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3558, 1, 'en', 'plugins/ecommerce/products', 'form.choose_discount_period', 'Choose Discount Period', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3559, 1, 'en', 'plugins/ecommerce/products', 'form.cancel', 'Cancel', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3560, 1, 'en', 'plugins/ecommerce/products', 'form.no_results', 'No results!', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3561, 1, 'en', 'plugins/ecommerce/products', 'form.value', 'Value', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3562, 1, 'en', 'plugins/ecommerce/products', 'form.attribute_name', 'Attribute name', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3563, 1, 'en', 'plugins/ecommerce/products', 'form.add_more_attribute', 'Add more attribute', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3564, 1, 'en', 'plugins/ecommerce/products', 'form.continue', 'Continue', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3565, 1, 'en', 'plugins/ecommerce/products', 'form.add_new_attributes', 'Add new attributes', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3566, 1, 'en', 'plugins/ecommerce/products', 'form.add_new_attributes_description', 'Adding new attributes helps the product to have many options, such as size or color.', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3567, 1, 'en', 'plugins/ecommerce/products', 'form.create_product_variations', ':link to create product variations!', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3568, 1, 'en', 'plugins/ecommerce/products', 'form.tags', 'Tags', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3569, 1, 'en', 'plugins/ecommerce/products', 'form.write_some_tags', 'Write some tags', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3570, 1, 'en', 'plugins/ecommerce/products', 'form.variation_existed', 'This variation is existed.', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3571, 1, 'en', 'plugins/ecommerce/products', 'form.no_attributes_selected', 'No attributes selected!', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3572, 1, 'en', 'plugins/ecommerce/products', 'form.added_variation_success', 'Added variation successfully!', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3573, 1, 'en', 'plugins/ecommerce/products', 'form.updated_variation_success', 'Updated variation successfully!', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3574, 1, 'en', 'plugins/ecommerce/products', 'form.created_all_variation_success', 'Created all variations successfully!', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3575, 1, 'en', 'plugins/ecommerce/products', 'form.updated_product_attributes_success', 'Updated product attributes successfully!', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3576, 1, 'en', 'plugins/ecommerce/products', 'form.stock_status', 'Stock status', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3577, 1, 'en', 'plugins/ecommerce/products', 'form.auto_generate_sku', 'Auto generate SKU?', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3578, 1, 'en', 'plugins/ecommerce/products', 'form.featured_image', 'Featured image (optional)', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3579, 1, 'en', 'plugins/ecommerce/products', 'form.product_id', 'Product ID', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3580, 1, 'en', 'plugins/ecommerce/products', 'price', 'Price', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3581, 1, 'en', 'plugins/ecommerce/products', 'quantity', 'Quantity', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3582, 1, 'en', 'plugins/ecommerce/products', 'type', 'Type', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3583, 1, 'en', 'plugins/ecommerce/products', 'image', 'Thumbnail', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3584, 1, 'en', 'plugins/ecommerce/products', 'sku', 'SKU', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3585, 1, 'en', 'plugins/ecommerce/products', 'variation_sku', 'Variation SKU', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3586, 1, 'en', 'plugins/ecommerce/products', 'brand', 'Brand', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3587, 1, 'en', 'plugins/ecommerce/products', 'cannot_delete', 'Product could not be deleted', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3588, 1, 'en', 'plugins/ecommerce/products', 'product_deleted', 'Product deleted', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3589, 1, 'en', 'plugins/ecommerce/products', 'product_collections', 'Product collections', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3590, 1, 'en', 'plugins/ecommerce/products', 'products', 'Products', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3591, 1, 'en', 'plugins/ecommerce/products', 'menu', 'Products', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3592, 1, 'en', 'plugins/ecommerce/products', 'control.button_add_image', 'Add image', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3593, 1, 'en', 'plugins/ecommerce/products', 'price_sale', 'Sale price', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3594, 1, 'en', 'plugins/ecommerce/products', 'price_group_title', 'Manager product price', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3595, 1, 'en', 'plugins/ecommerce/products', 'store_house_group_title', 'Manager store house', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3596, 1, 'en', 'plugins/ecommerce/products', 'shipping_group_title', 'Manager shipping', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3597, 1, 'en', 'plugins/ecommerce/products', 'overview', 'Overview', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3598, 1, 'en', 'plugins/ecommerce/products', 'attributes', 'Attributes', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3599, 1, 'en', 'plugins/ecommerce/products', 'product_has_variations', 'Product has variations', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3600, 1, 'en', 'plugins/ecommerce/products', 'manage_products', 'Manage products', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3601, 1, 'en', 'plugins/ecommerce/products', 'add_new_product', 'Add a new product', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3602, 1, 'en', 'plugins/ecommerce/products', 'start_by_adding_new_product', 'Start by adding new products.', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3603, 1, 'en', 'plugins/ecommerce/products', 'edit_this_product', 'Edit this product', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3604, 1, 'en', 'plugins/ecommerce/products', 'delete', 'Delete', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3605, 1, 'en', 'plugins/ecommerce/products', 'related_products', 'Related products', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3606, 1, 'en', 'plugins/ecommerce/products', 'cross_selling_products', 'Cross-selling products', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3607, 1, 'en', 'plugins/ecommerce/products', 'up_selling_products', 'Up-selling products', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3608, 1, 'en', 'plugins/ecommerce/products', 'grouped_products', 'Grouped products', '2023-05-02 21:08:43', '2023-05-02 21:08:43'),
(3609, 1, 'en', 'plugins/ecommerce/products', 'search_products', 'Search products', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3610, 1, 'en', 'plugins/ecommerce/products', 'selected_products', 'Selected products', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3611, 1, 'en', 'plugins/ecommerce/products', 'edit_variation_item', 'Edit', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3612, 1, 'en', 'plugins/ecommerce/products', 'variations_box_description', 'Click on \"Edit attribute\" to add/remove attributes of variation or click on \"Add new variation\" to add variation.', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3613, 1, 'en', 'plugins/ecommerce/products', 'save_changes', 'Save changes', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3614, 1, 'en', 'plugins/ecommerce/products', 'continue', 'Continue', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3615, 1, 'en', 'plugins/ecommerce/products', 'edit_attribute', 'Edit attribute', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3616, 1, 'en', 'plugins/ecommerce/products', 'select_attribute', 'Select attribute', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3617, 1, 'en', 'plugins/ecommerce/products', 'add_new_variation', 'Add new variation', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3618, 1, 'en', 'plugins/ecommerce/products', 'edit_variation', 'Edit variation', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3619, 1, 'en', 'plugins/ecommerce/products', 'generate_all_variations', 'Generate all variations', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3620, 1, 'en', 'plugins/ecommerce/products', 'generate_all_variations_confirmation', 'Are you sure you want to generate all variations for this product?', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3621, 1, 'en', 'plugins/ecommerce/products', 'delete_variation', 'Delete variation?', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3622, 1, 'en', 'plugins/ecommerce/products', 'delete_variation_confirmation', 'Are you sure you want to delete this variation? This action cannot be undo.', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3623, 1, 'en', 'plugins/ecommerce/products', 'delete_variations_confirmation', 'Are you sure you want to delete those variations? This action cannot be undo.', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3624, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_name_required', 'Please enter product\'s name', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3625, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price_max', 'The discount must be less than the original price', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3626, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_cost_per_item_max', 'The cost per item must be less than the original price', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3627, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price_required_if', 'Must enter a discount when you want to schedule a promotion', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3628, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_end_date_after', 'End date must be after start date', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3629, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_start_date_required_if', 'Discount start date cannot be left blank when scheduling is selected', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3630, 1, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price', 'Discounts cannot be left blank when scheduling is selected', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3631, 1, 'en', 'plugins/ecommerce/products', 'stock_statuses.in_stock', 'In stock', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3632, 1, 'en', 'plugins/ecommerce/products', 'stock_statuses.out_of_stock', 'Out of stock', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3633, 1, 'en', 'plugins/ecommerce/products', 'stock_statuses.on_backorder', 'On backorder', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3634, 1, 'en', 'plugins/ecommerce/products', 'stock_status', 'Stock status', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3635, 1, 'en', 'plugins/ecommerce/products', 'processing', 'Processing...', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3636, 1, 'en', 'plugins/ecommerce/products', 'delete_selected_variations', 'Delete selected variations', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3637, 1, 'en', 'plugins/ecommerce/products', 'delete_variations', 'Delete variations', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3638, 1, 'en', 'plugins/ecommerce/products', 'category', 'Category', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3639, 1, 'en', 'plugins/ecommerce/products', 'product_price_flash_sale_warning', 'This product is in flash sale <strong>:name</strong> so its price is <strong>:price</strong>.', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3640, 1, 'en', 'plugins/ecommerce/products', 'product_price_discount_warning', 'This product is in discount <strong>:name</strong> so its price is <strong>:price</strong>.', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3641, 1, 'en', 'plugins/ecommerce/products', 'product_image', 'Product image', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3642, 1, 'en', 'plugins/ecommerce/products', 'product_name', 'Product name', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3643, 1, 'en', 'plugins/ecommerce/products', 'types.physical', 'Physical', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3644, 1, 'en', 'plugins/ecommerce/products', 'types.digital', 'Digital', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3645, 1, 'en', 'plugins/ecommerce/products', 'digital_attachments.title', 'Digital attachments', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3646, 1, 'en', 'plugins/ecommerce/products', 'digital_attachments.add', 'Add Attachment', '2023-05-02 21:08:44', '2023-05-02 21:08:44');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3647, 1, 'en', 'plugins/ecommerce/products', 'digital_attachments.file_name', 'File name', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3648, 1, 'en', 'plugins/ecommerce/products', 'digital_attachments.file_size', 'File size', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3649, 1, 'en', 'plugins/ecommerce/products', 'digital_attachments.unsaved', 'Unsaved', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3650, 1, 'en', 'plugins/ecommerce/products', 'this_action_will_reload_page', 'This action will reload the page to update the data!', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3651, 1, 'en', 'plugins/ecommerce/products', 'select', 'Select', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3652, 1, 'en', 'plugins/ecommerce/products', 'set_this_variant_as_default', 'Set this variant as default', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3653, 1, 'en', 'plugins/ecommerce/reports', 'name', 'Report', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3654, 1, 'en', 'plugins/ecommerce/reports', 'widget.order.title', 'Orders', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3655, 1, 'en', 'plugins/ecommerce/reports', 'count.revenue', 'Today revenue', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3656, 1, 'en', 'plugins/ecommerce/reports', 'count.orders', 'Today orders', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3657, 1, 'en', 'plugins/ecommerce/reports', 'count.products', 'Total products', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3658, 1, 'en', 'plugins/ecommerce/reports', 'count.customers', 'Total customers', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3659, 1, 'en', 'plugins/ecommerce/reports', 'product_name', 'Product name', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3660, 1, 'en', 'plugins/ecommerce/reports', 'quantity', 'Quantity', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3661, 1, 'en', 'plugins/ecommerce/reports', 'revenue_statistics', 'Revenue statistics', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3662, 1, 'en', 'plugins/ecommerce/reports', 'top_selling_products', 'Top Selling Products', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3663, 1, 'en', 'plugins/ecommerce/reports', 'ranges.today', 'Today', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3664, 1, 'en', 'plugins/ecommerce/reports', 'ranges.this_week', 'This week', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3665, 1, 'en', 'plugins/ecommerce/reports', 'ranges.last_7_days', 'Last 7 days', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3666, 1, 'en', 'plugins/ecommerce/reports', 'ranges.last_30_days', 'Last 30 days', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3667, 1, 'en', 'plugins/ecommerce/reports', 'ranges.this_month', 'This month', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3668, 1, 'en', 'plugins/ecommerce/reports', 'ranges.this_year', 'This year', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3669, 1, 'en', 'plugins/ecommerce/reports', 'revenue_this_month', 'Revenue this month', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3670, 1, 'en', 'plugins/ecommerce/reports', 'order_processing_this_month', 'order(s) processing in this month', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3671, 1, 'en', 'plugins/ecommerce/reports', 'order_completed_this_month', 'order(s) completed in this month', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3672, 1, 'en', 'plugins/ecommerce/reports', 'product_will_be_out_of_stock', 'product(s) will be out of stock soon', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3673, 1, 'en', 'plugins/ecommerce/reports', 'product_out_of_stock', 'product(s) out of stock', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3674, 1, 'en', 'plugins/ecommerce/reports', 'sales_reports', 'Sales Reports', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3675, 1, 'en', 'plugins/ecommerce/reports', 'total_earnings', 'Total Earnings', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3676, 1, 'en', 'plugins/ecommerce/reports', 'recent_orders', 'Recent Orders', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3677, 1, 'en', 'plugins/ecommerce/reports', 'trending_products', 'Trending Products', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3678, 1, 'en', 'plugins/ecommerce/reports', 'statistics', 'Statistics', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3679, 1, 'en', 'plugins/ecommerce/reports', 'items_earning_sales', 'Items Earning Sales: :value', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3680, 1, 'en', 'plugins/ecommerce/reports', 'revenue', 'Revenue', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3681, 1, 'en', 'plugins/ecommerce/reports', 'orders', 'Orders', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3682, 1, 'en', 'plugins/ecommerce/reports', 'products', 'Products', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3683, 1, 'en', 'plugins/ecommerce/reports', 'customers', 'Customers', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3684, 1, 'en', 'plugins/ecommerce/reports', 'earnings', 'Earnings', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3685, 1, 'en', 'plugins/ecommerce/reports', 'views', 'Views', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3686, 1, 'en', 'plugins/ecommerce/reports', 'date_range_format_value', 'From :from to :to', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3687, 1, 'en', 'plugins/ecommerce/reports', 'select_range', 'Select Range', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3688, 1, 'en', 'plugins/ecommerce/reports', 'customers_chart', 'Customers', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3689, 1, 'en', 'plugins/ecommerce/reports', 'orders_chart', 'Orders', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3690, 1, 'en', 'plugins/ecommerce/reports', 'number_of_orders', 'Number of orders', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3691, 1, 'en', 'plugins/ecommerce/reports', 'number_of_customers', 'Number of customers', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3692, 1, 'en', 'plugins/ecommerce/review', 'name', 'Reviews', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3693, 1, 'en', 'plugins/ecommerce/review', 'add_review', 'Add review', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3694, 1, 'en', 'plugins/ecommerce/review', 'delete_review', 'Delete review', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3695, 1, 'en', 'plugins/ecommerce/review', 'create_review', 'Create Review', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3696, 1, 'en', 'plugins/ecommerce/review', 'please_select_rating', 'Please select rating', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3697, 1, 'en', 'plugins/ecommerce/review', 'comment', 'Comment', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3698, 1, 'en', 'plugins/ecommerce/review', 'approve', 'Approve', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3699, 1, 'en', 'plugins/ecommerce/review', 'approved', 'Approved', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3700, 1, 'en', 'plugins/ecommerce/review', 'disapprove', 'Disapprove', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3701, 1, 'en', 'plugins/ecommerce/review', 'disapproved', 'Disapproved', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3702, 1, 'en', 'plugins/ecommerce/review', 'product', 'Product', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3703, 1, 'en', 'plugins/ecommerce/review', 'user', 'User', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3704, 1, 'en', 'plugins/ecommerce/review', 'star', 'Star', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3705, 1, 'en', 'plugins/ecommerce/review', 'status', 'Status', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3706, 1, 'en', 'plugins/ecommerce/review', 'list_review', 'Customer reviews', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3707, 1, 'en', 'plugins/ecommerce/review', 'intro.title', 'Manage customer reviews', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3708, 1, 'en', 'plugins/ecommerce/review', 'intro.description', 'Customer reviews will be shown here and you can manage it to show/hide in product detail page.', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3709, 1, 'en', 'plugins/ecommerce/review', 'images', 'Images', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3710, 1, 'en', 'plugins/ecommerce/shipping', 'name', 'Shipping Rules', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3711, 1, 'en', 'plugins/ecommerce/shipping', 'shipping', 'Shipping', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3712, 1, 'en', 'plugins/ecommerce/shipping', 'title', 'Title', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3713, 1, 'en', 'plugins/ecommerce/shipping', 'amount', 'Amount', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3714, 1, 'en', 'plugins/ecommerce/shipping', 'enable', 'Enable', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3715, 1, 'en', 'plugins/ecommerce/shipping', 'enabled', 'Enabled', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3716, 1, 'en', 'plugins/ecommerce/shipping', 'disable', 'Disable', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3717, 1, 'en', 'plugins/ecommerce/shipping', 'disabled', 'Disabled', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3718, 1, 'en', 'plugins/ecommerce/shipping', 'create_shipping', 'Create a shipping', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3719, 1, 'en', 'plugins/ecommerce/shipping', 'edit_shipping', 'Edit shipping :code', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3720, 1, 'en', 'plugins/ecommerce/shipping', 'status', 'Status', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3721, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_methods', 'Shipping methods', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3722, 1, 'en', 'plugins/ecommerce/shipping', 'create_shipping_method', 'Create shipping method', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3723, 1, 'en', 'plugins/ecommerce/shipping', 'edit_shipping_method', 'Edit shipping method', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3724, 1, 'en', 'plugins/ecommerce/shipping', 'add_shipping_region', 'Add shipping region', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3725, 1, 'en', 'plugins/ecommerce/shipping', 'country', 'Country', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3726, 1, 'en', 'plugins/ecommerce/shipping', 'state', 'State', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3727, 1, 'en', 'plugins/ecommerce/shipping', 'city', 'City', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3728, 1, 'en', 'plugins/ecommerce/shipping', 'address', 'Address', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3729, 1, 'en', 'plugins/ecommerce/shipping', 'phone', 'Phone', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3730, 1, 'en', 'plugins/ecommerce/shipping', 'email', 'Email', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3731, 1, 'en', 'plugins/ecommerce/shipping', 'zip_code', 'Zip code', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3732, 1, 'en', 'plugins/ecommerce/shipping', 'methods.default', 'Default', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3733, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.not_approved', 'Not approved', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3734, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.approved', 'Approved', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3735, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.pending', 'Pending', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3736, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.arrange_shipment', 'Arrange shipment', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3737, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.ready_to_be_shipped_out', 'Ready to be shipped out', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3738, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.picking', 'Picking', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3739, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.delay_picking', 'Delay picking', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3740, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.picked', 'Picked', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3741, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.not_picked', 'Not picked', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3742, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.delivering', 'Delivering', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3743, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.delivered', 'Delivered', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3744, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.not_delivered', 'Not delivered', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3745, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.audited', 'Audited', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3746, 1, 'en', 'plugins/ecommerce/shipping', 'statuses.canceled', 'Canceled', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3747, 1, 'en', 'plugins/ecommerce/shipping', 'cod_statuses.pending', 'Pending', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3748, 1, 'en', 'plugins/ecommerce/shipping', 'cod_statuses.completed', 'Completed', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3749, 1, 'en', 'plugins/ecommerce/shipping', 'delete', 'Delete', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3750, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_rules', 'Shipping Rules', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3751, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_rules_description', 'Rules to calculate shipping fee.', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3752, 1, 'en', 'plugins/ecommerce/shipping', 'select_country', 'Select country', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3753, 1, 'en', 'plugins/ecommerce/shipping', 'add_shipping_rule', 'Add shipping rule', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3754, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_rate', 'Delete shipping rate for area', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3755, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_rate_confirmation', 'Are you sure you want to delete <strong class=\"region-price-item-label\"></strong> from this shipping area?', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3756, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_area', 'Delete shipping area', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3757, 1, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_area_confirmation', 'Are you sure you want to delete shipping area <strong class=\"region-item-label\"></strong>?', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3758, 1, 'en', 'plugins/ecommerce/shipping', 'add_shipping_fee_for_area', 'Add shipping fee for area', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3759, 1, 'en', 'plugins/ecommerce/shipping', 'confirm', 'Confirm', '2023-05-02 21:08:44', '2023-05-02 21:08:44'),
(3760, 1, 'en', 'plugins/ecommerce/shipping', 'save', 'Save', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3761, 1, 'en', 'plugins/ecommerce/shipping', 'greater_than', 'Greater than', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3762, 1, 'en', 'plugins/ecommerce/shipping', 'type', 'Type', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3763, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_rule_name', 'Name of shipping rule', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3764, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_fee', 'Shipping fee', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3765, 1, 'en', 'plugins/ecommerce/shipping', 'cancel', 'Cancel', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3766, 1, 'en', 'plugins/ecommerce/shipping', 'based_on_weight', 'Based on product\'s weight (:unit)', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3767, 1, 'en', 'plugins/ecommerce/shipping', 'based_on_price', 'Based on product\'s price', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3768, 1, 'en', 'plugins/ecommerce/shipping', 'shipment_canceled', 'Shipment was canceled', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3769, 1, 'en', 'plugins/ecommerce/shipping', 'at', 'At', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3770, 1, 'en', 'plugins/ecommerce/shipping', 'cash_on_delivery', 'Cash on delivery (COD)', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3771, 1, 'en', 'plugins/ecommerce/shipping', 'update_shipping_status', 'Update shipping status', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3772, 1, 'en', 'plugins/ecommerce/shipping', 'update_cod_status', 'Update COD status', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3773, 1, 'en', 'plugins/ecommerce/shipping', 'history', 'History', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3774, 1, 'en', 'plugins/ecommerce/shipping', 'shipment_information', 'Shipment information', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3775, 1, 'en', 'plugins/ecommerce/shipping', 'order_number', 'Order number', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3776, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_method', 'Shipping method', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3777, 1, 'en', 'plugins/ecommerce/shipping', 'select_shipping_method', 'Select shipping method', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3778, 1, 'en', 'plugins/ecommerce/shipping', 'cod_status', 'COD status', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3779, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_status', 'Shipping status', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3780, 1, 'en', 'plugins/ecommerce/shipping', 'customer_information', 'Customer information', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3781, 1, 'en', 'plugins/ecommerce/shipping', 'sku', 'SKU', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3782, 1, 'en', 'plugins/ecommerce/shipping', 'change_status_confirm_title', 'Confirm <span class=\"shipment-status-label\"></span> ?', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3783, 1, 'en', 'plugins/ecommerce/shipping', 'change_status_confirm_description', 'Are you sure you want to confirm <span class=\"shipment-status-label\"></span> for this shipment?', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3784, 1, 'en', 'plugins/ecommerce/shipping', 'accept', 'Accept', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3785, 1, 'en', 'plugins/ecommerce/shipping', 'weight_unit', 'Weight (:unit)', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3786, 1, 'en', 'plugins/ecommerce/shipping', 'updated_at', 'Last Update', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3787, 1, 'en', 'plugins/ecommerce/shipping', 'cod_amount', 'Cash on delivery amount (COD)', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3788, 1, 'en', 'plugins/ecommerce/shipping', 'cancel_shipping', 'Cancel shipping', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3789, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_address', 'Shipping address', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3790, 1, 'en', 'plugins/ecommerce/shipping', 'packages', 'Packages', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3791, 1, 'en', 'plugins/ecommerce/shipping', 'edit', 'Edit', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3792, 1, 'en', 'plugins/ecommerce/shipping', 'fee', 'Fee', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3793, 1, 'en', 'plugins/ecommerce/shipping', 'note', 'Note', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3794, 1, 'en', 'plugins/ecommerce/shipping', 'finish', 'Finish', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3795, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_fee_cod', 'Shipping fee/COD', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3796, 1, 'en', 'plugins/ecommerce/shipping', 'send_confirmation_email_to_customer', 'Send confirmation email to customer', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3797, 1, 'en', 'plugins/ecommerce/shipping', 'form_name', 'Name', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3798, 1, 'en', 'plugins/ecommerce/shipping', 'changed_shipping_status', 'Changed status of shipping to: :status. Updated by: %user_name%', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3799, 1, 'en', 'plugins/ecommerce/shipping', 'order_confirmed_by', 'Order confirmed by %user_name%', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3800, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_canceled_by', 'Shipping is cancelled by %user_name%', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3801, 1, 'en', 'plugins/ecommerce/shipping', 'update_shipping_status_success', 'Update shipping status successfully!', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3802, 1, 'en', 'plugins/ecommerce/shipping', 'update_cod_status_success', 'Updated COD status of shipping successfully!', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3803, 1, 'en', 'plugins/ecommerce/shipping', 'updated_cod_status_by', 'Updated COD status to :status . Updated by: %user_name%', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3804, 1, 'en', 'plugins/ecommerce/shipping', 'all', 'All', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3805, 1, 'en', 'plugins/ecommerce/shipping', 'error_when_adding_new_region', 'There is an error when adding new region!', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3806, 1, 'en', 'plugins/ecommerce/shipping', 'delivery', 'Delivery', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3807, 1, 'en', 'plugins/ecommerce/shipping', 'adjustment_price_of', 'Adjustment price of :key', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3808, 1, 'en', 'plugins/ecommerce/shipping', 'warehouse', 'Warehouse', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3809, 1, 'en', 'plugins/ecommerce/shipping', 'delivery_note', 'Delivery note', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3810, 1, 'en', 'plugins/ecommerce/shipping', 'shipments', 'Shipments', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3811, 1, 'en', 'plugins/ecommerce/shipping', 'order_id', 'Order ID', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3812, 1, 'en', 'plugins/ecommerce/shipping', 'not_available', 'Not available', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3813, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_amount', 'Shipping Amount', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3814, 1, 'en', 'plugins/ecommerce/shipping', 'additional_shipment_information', 'Additional shipment information', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3815, 1, 'en', 'plugins/ecommerce/shipping', 'shipping_company_name', 'Shipping Company Name', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3816, 1, 'en', 'plugins/ecommerce/shipping', 'tracking_id', 'Tracking ID', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3817, 1, 'en', 'plugins/ecommerce/shipping', 'tracking_link', 'Tracking Link', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3818, 1, 'en', 'plugins/ecommerce/shipping', 'estimate_date_shipped', 'Estimate Date Shipped', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3819, 1, 'en', 'plugins/ecommerce/shipping', 'date_shipped', 'Date Shipped', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3820, 1, 'en', 'plugins/ecommerce/shipping', 'add_note', 'Add note...', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3821, 1, 'en', 'plugins/ecommerce/shipping', 'view_order', 'View Order :order_id', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3822, 1, 'en', 'plugins/ecommerce/shipping', 'rule.types.based_on_weight', 'Based on product\'s weight (:unit)', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3823, 1, 'en', 'plugins/ecommerce/shipping', 'rule.types.based_on_price', 'Based on product\'s price', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3824, 1, 'en', 'plugins/ecommerce/shipping', 'rule.types.based_on_zipcode', 'Based on zipcode', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3825, 1, 'en', 'plugins/ecommerce/shipping', 'rule.types.based_on_location', 'Based on location', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3826, 1, 'en', 'plugins/ecommerce/shipping', 'rule.types.unavailable', 'Unavailable', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3827, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.name', 'Shipping Rule Items', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3828, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.edit', 'Edit item', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3829, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.create', 'Create new item', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3830, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.delete', 'Delete shipping rule item', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3831, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.confirmation', 'Are you sure you want to delete shipping rule item <strong class=\"item-label\"></strong>?', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3832, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.load_data_table', 'Load data table (:total)', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3833, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.tables.shipping_rule', 'Shipping rule', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3834, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.tables.country', 'Country', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3835, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.tables.state', 'State', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3836, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.tables.city', 'City', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3837, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.tables.zip_code', 'Zip code', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3838, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.tables.adjustment_price', 'Adjustment price', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3839, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.tables.is_enabled', 'Is enabled?', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3840, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.forms.country', 'Country', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3841, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.forms.country_placeholder', 'Country', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3842, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.forms.state', 'State', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3843, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.forms.state_placeholder', 'State', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3844, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.forms.city', 'City', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3845, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.forms.city_placeholder', 'City', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3846, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.forms.zip_code', 'Zip code', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3847, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.forms.zip_code_placeholder', 'Zip code', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3848, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.forms.adjustment_price', 'Adjustment price', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3849, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.forms.adjustment_price_placeholder', 'Adjustment price', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3850, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.forms.is_enabled', 'Is enabled?', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3851, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.forms.shipping_rule', 'Shipping rule', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3852, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.forms.no_shipping_rule', 'No shipping rule', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3853, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.bulk-import.menu', 'Bulk import Shipping Rule Items', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3854, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.bulk-import.greater_than_or_equal', 'Only numbers or decimals are accepted and greater than or equal to :min.', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3855, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.bulk-import.less_than_or_equal', 'Only numbers or decimals are accepted and less than or equal to :max.', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3856, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.bulk-import.between', 'Only numbers or decimals are accepted and between :min and :max.', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3857, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.bulk-import.overwrite', 'Overwrite', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3858, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.bulk-import.add_new', 'Add new', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3859, 1, 'en', 'plugins/ecommerce/shipping', 'rule.item.bulk-import.skip', 'Skip', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3860, 1, 'en', 'plugins/ecommerce/shipping', 'rule.select_type', 'Select type', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3861, 1, 'en', 'plugins/ecommerce/shipping', 'rule.cannot_create_rule_type_for_this_location', 'Cannot create rule type \":type\" on this location!', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3862, 1, 'en', 'plugins/ecommerce/store-locator', 'name', 'Store locators', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3863, 1, 'en', 'plugins/ecommerce/store-locator', 'description', 'This address will appear on your invoice and will be used to calculate your shipping price.', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3864, 1, 'en', 'plugins/ecommerce/store-locator', 'shop_name', 'Shop name', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3865, 1, 'en', 'plugins/ecommerce/store-locator', 'phone', 'Phone', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3866, 1, 'en', 'plugins/ecommerce/store-locator', 'email', 'Email', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3867, 1, 'en', 'plugins/ecommerce/store-locator', 'state', 'State', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3868, 1, 'en', 'plugins/ecommerce/store-locator', 'city', 'City', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3869, 1, 'en', 'plugins/ecommerce/store-locator', 'country', 'Country', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3870, 1, 'en', 'plugins/ecommerce/store-locator', 'address', 'Address', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3871, 1, 'en', 'plugins/ecommerce/store-locator', 'primary_store_is', 'Primary store is', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3872, 1, 'en', 'plugins/ecommerce/store-locator', 'store_name', 'Store name', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3873, 1, 'en', 'plugins/ecommerce/store-locator', 'select_country', 'Select country...', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3874, 1, 'en', 'plugins/ecommerce/store-locator', 'default_shipping_location', 'Default shipping location', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3875, 1, 'en', 'plugins/ecommerce/store-locator', 'default_store', 'Default store', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3876, 1, 'en', 'plugins/ecommerce/store-locator', 'company', 'Company', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3877, 1, 'en', 'plugins/ecommerce/store-locator', 'zip_code', 'Zip Code', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3878, 1, 'en', 'plugins/ecommerce/tax', 'name', 'Taxes', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3879, 1, 'en', 'plugins/ecommerce/tax', 'create', 'Create a tax', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3880, 1, 'en', 'plugins/ecommerce/tax', 'edit', 'Edit tax :title', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3881, 1, 'en', 'plugins/ecommerce/tax', 'title', 'Title', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3882, 1, 'en', 'plugins/ecommerce/tax', 'percentage', 'Percentage %', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3883, 1, 'en', 'plugins/ecommerce/tax', 'priority', 'Priority', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3884, 1, 'en', 'plugins/ecommerce/tax', 'select_tax', '-- select --', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(3885, 1, 'en', 'plugins/ecommerce/tax', 'default', 'Default', '2023-05-02 21:08:45', '2023-05-02 21:08:45'),
(4504, 1, 'en', 'plugins/faq/faq-category', 'name', 'Categories', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4505, 1, 'en', 'plugins/faq/faq-category', 'create', 'New category', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4506, 1, 'en', 'plugins/faq/faq', 'name', 'FAQ', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4507, 1, 'en', 'plugins/faq/faq', 'create', 'New faq', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4508, 1, 'en', 'plugins/faq/faq', 'question', 'Question', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4509, 1, 'en', 'plugins/faq/faq', 'answer', 'Answer', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4510, 1, 'en', 'plugins/faq/faq', 'category', 'Category', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4511, 1, 'en', 'plugins/faq/faq', 'all', 'All', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4512, 1, 'en', 'plugins/faq/faq', 'faq_schema_config', 'FAQ schema configuration (:link)', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4513, 1, 'en', 'plugins/faq/faq', 'learn_more', 'Learn more', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4514, 1, 'en', 'plugins/faq/faq', 'settings.title', 'FAQ', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4515, 1, 'en', 'plugins/faq/faq', 'settings.description', 'Settings for FAQ', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4516, 1, 'en', 'plugins/faq/faq', 'settings.enable_faq_schema', 'Enable FAQ Schema?', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4517, 1, 'en', 'plugins/faq/faq', 'settings.enable_faq_schema_description', 'Learn more: https://developers.google.com/search/docs/data-types/faqpage', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4518, 1, 'en', 'plugins/faq/faq', 'select_category', 'Select a category', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4519, 1, 'en', 'plugins/faq/faq', 'add_item', 'Add item', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4528, 1, 'en', 'plugins/language/language', 'name', 'Languages', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4529, 1, 'en', 'plugins/language/language', 'choose_language', 'Choose a language', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4530, 1, 'en', 'plugins/language/language', 'select_language', 'Select language', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4531, 1, 'en', 'plugins/language/language', 'choose_language_helper', 'You can choose a language in the list or directly edit it below.', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4532, 1, 'en', 'plugins/language/language', 'language_name', 'Language name', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4533, 1, 'en', 'plugins/language/language', 'language_name_helper', 'The name is how it is displayed on your site (for example: English).', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4534, 1, 'en', 'plugins/language/language', 'locale', 'Locale', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4535, 1, 'en', 'plugins/language/language', 'locale_helper', 'Laravel Locale for the language (for example: <code>en</code>).', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4536, 1, 'en', 'plugins/language/language', 'language_code', 'Language code', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4537, 1, 'en', 'plugins/language/language', 'language_code_helper', 'Language code - preferably 2-letters ISO 639-1 (for example: en)', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4538, 1, 'en', 'plugins/language/language', 'text_direction', 'Text direction', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4539, 1, 'en', 'plugins/language/language', 'text_direction_helper', 'Choose the text direction for the language', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4540, 1, 'en', 'plugins/language/language', 'left_to_right', 'Left to right', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4541, 1, 'en', 'plugins/language/language', 'right_to_left', 'Right to left', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4542, 1, 'en', 'plugins/language/language', 'flag', 'Flag', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4543, 1, 'en', 'plugins/language/language', 'flag_helper', 'Choose a flag for the language.', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4544, 1, 'en', 'plugins/language/language', 'order', 'Order', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4545, 1, 'en', 'plugins/language/language', 'order_helper', 'Position of the language in the language switcher', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4546, 1, 'en', 'plugins/language/language', 'add_new_language', 'Add new language', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4547, 1, 'en', 'plugins/language/language', 'code', 'Code', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4548, 1, 'en', 'plugins/language/language', 'default_language', 'Is default?', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4549, 1, 'en', 'plugins/language/language', 'actions', 'Actions', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4550, 1, 'en', 'plugins/language/language', 'translations', 'Translations', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4551, 1, 'en', 'plugins/language/language', 'edit', 'Edit', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4552, 1, 'en', 'plugins/language/language', 'edit_tooltip', 'Edit this language', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4553, 1, 'en', 'plugins/language/language', 'delete', 'Delete', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4554, 1, 'en', 'plugins/language/language', 'delete_tooltip', 'Delete this language and all its associated data', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4555, 1, 'en', 'plugins/language/language', 'choose_default_language', 'Choose :language as default language', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4556, 1, 'en', 'plugins/language/language', 'current_language', 'Current record\'s language', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4557, 1, 'en', 'plugins/language/language', 'edit_related', 'Edit related language for this record', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4558, 1, 'en', 'plugins/language/language', 'add_language_for_item', 'Add other language version for this record', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4559, 1, 'en', 'plugins/language/language', 'settings', 'Settings', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4560, 1, 'en', 'plugins/language/language', 'language_hide_default', 'Hide default language from URL?', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4561, 1, 'en', 'plugins/language/language', 'language_display_flag_only', 'Flag only', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4562, 1, 'en', 'plugins/language/language', 'language_display_name_only', 'Name only', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4563, 1, 'en', 'plugins/language/language', 'language_display_all', 'Display all flag and name', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4564, 1, 'en', 'plugins/language/language', 'language_display', 'Language display', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4565, 1, 'en', 'plugins/language/language', 'switcher_display', 'Switcher language display', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4566, 1, 'en', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4567, 1, 'en', 'plugins/language/language', 'language_switcher_display_list', 'List', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4568, 1, 'en', 'plugins/language/language', 'current_language_edit_notification', 'You are editing \"<strong class=\"current_language_text\">:language</strong>\" version', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4569, 1, 'en', 'plugins/language/language', 'confirm-change-language', 'Confirm change language', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4570, 1, 'en', 'plugins/language/language', 'confirm-change-language-message', 'Do you really want to change language to \"<strong class=\"change_to_language_text\"></strong>\" ? This action will be override \"<strong class=\"change_to_language_text\"></strong>\" version if it\'s existed!', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4571, 1, 'en', 'plugins/language/language', 'confirm-change-language-btn', 'Confirm change', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4572, 1, 'en', 'plugins/language/language', 'hide_languages', 'Hide languages', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4573, 1, 'en', 'plugins/language/language', 'hide_languages_description', 'You can completely hide content in specific languages from visitors and search engines, but still view it yourself. This allows reviewing translations that are in progress.', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4574, 1, 'en', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} All languages are currently displayed.|{1} :language is currently hidden to visitors.|[2, Inf] :language are currently hidden to visitors.', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4575, 1, 'en', 'plugins/language/language', 'show_all', 'Show all', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4576, 1, 'en', 'plugins/language/language', 'change_language', 'Language', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4577, 1, 'en', 'plugins/language/language', 'language_show_default_item_if_current_version_not_existed', 'Show item in default language if it is not existed in current language', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4578, 1, 'en', 'plugins/language/language', 'select_flag', 'Select a flag...', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4579, 1, 'en', 'plugins/language/language', 'delete_confirmation_message', 'Do you really want to delete this language? It also deletes all items in this language and cannot rollback!', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4580, 1, 'en', 'plugins/language/language', 'added_already', 'This language was added already!', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4581, 1, 'en', 'plugins/language/language', 'language_auto_detect_user_language', 'Auto detect user language?', '2023-05-02 21:08:50', '2023-05-02 21:08:50'),
(4632, 1, 'en', 'plugins/location/bulk-import', 'name', 'Bulk Import', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4633, 1, 'en', 'plugins/location/bulk-import', 'loading_text', 'Importing', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4634, 1, 'en', 'plugins/location/bulk-import', 'imported_successfully', 'Imported successfully.', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4635, 1, 'en', 'plugins/location/bulk-import', 'please_choose_the_file_mime', 'Please choose the file mime :types', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4636, 1, 'en', 'plugins/location/bulk-import', 'please_choose_the_file', 'Please choose the file', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4637, 1, 'en', 'plugins/location/bulk-import', 'start_import', 'Start Import', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4638, 1, 'en', 'plugins/location/bulk-import', 'note', 'Note!', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4639, 1, 'en', 'plugins/location/bulk-import', 'warning_before_importing', 'If this is your first time using this feature, please read the documentation or contact the Administrator for access to the correct functionality!', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4640, 1, 'en', 'plugins/location/bulk-import', 'results', 'Result: :success successes, :failed failures', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4641, 1, 'en', 'plugins/location/bulk-import', 'failures', 'Failures', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4642, 1, 'en', 'plugins/location/bulk-import', 'tables.import', 'Import', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4643, 1, 'en', 'plugins/location/bulk-import', 'template', 'Template', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4644, 1, 'en', 'plugins/location/bulk-import', 'rules', 'Rules', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4645, 1, 'en', 'plugins/location/bulk-import', 'choose_file_with_mime', 'Choose file with mime: (:types)', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4646, 1, 'en', 'plugins/location/bulk-import', 'choose_file', 'Choose file', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4647, 1, 'en', 'plugins/location/bulk-import', 'menu', 'Import locations', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4648, 1, 'en', 'plugins/location/bulk-import', 'download-csv-file', 'Download CSV template', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4649, 1, 'en', 'plugins/location/bulk-import', 'download-excel-file', 'Download Excel template', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4650, 1, 'en', 'plugins/location/bulk-import', 'downloading', 'Downloading...', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4651, 1, 'en', 'plugins/location/bulk-import', 'export.template.input_error', 'Input error', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4652, 1, 'en', 'plugins/location/bulk-import', 'export.template.number_not_allowed', 'Number is not allowed!', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4653, 1, 'en', 'plugins/location/bulk-import', 'export.template.allowed_input', 'Allowed input', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4654, 1, 'en', 'plugins/location/bulk-import', 'export.template.prompt_decimal', 'Only numbers or decimals are accepted and greater than or equal to :min.', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4655, 1, 'en', 'plugins/location/bulk-import', 'export.template.prompt_whole_number', 'Only numbers are accepted and greater than or equal to :min.', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4656, 1, 'en', 'plugins/location/bulk-import', 'export.template.prompt_list', 'Please pick a value from the drop-down list.', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4657, 1, 'en', 'plugins/location/bulk-import', 'export.template.pick_from_list', 'Pick from list', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4658, 1, 'en', 'plugins/location/bulk-import', 'export.template.value_not_in_list', 'Value is not in list.', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4659, 1, 'en', 'plugins/location/bulk-import', 'export.template.max_text_length', 'Max text length', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4660, 1, 'en', 'plugins/location/bulk-import', 'export.template.prompt_max_text_length', 'Only accept text with length less than or equal to :max.', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4661, 1, 'en', 'plugins/location/bulk-import', 'import_failed_description', 'Import failed, please check the errors below!', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4662, 1, 'en', 'plugins/location/bulk-import', 'available_enable_multi_language', 'Only available when you enable \"Is Multi Language?\"', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4663, 1, 'en', 'plugins/location/bulk-import', 'import_type_required_if', 'The :attribute field is required when \"Import Type\" is :value.', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4664, 1, 'en', 'plugins/location/bulk-import', 'import_available_data', 'Import available data', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4665, 1, 'en', 'plugins/location/bulk-import', 'import', 'Import', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4666, 1, 'en', 'plugins/location/bulk-import', 'import_available_data_confirmation', 'Import available data confirmation', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4667, 1, 'en', 'plugins/location/bulk-import', 'import_available_data_confirmation_content', 'Do you really want to import states/cities for this country?', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4668, 1, 'en', 'plugins/location/city', 'name', 'Cities', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4669, 1, 'en', 'plugins/location/city', 'create', 'New city', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4670, 1, 'en', 'plugins/location/city', 'state', 'State', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4671, 1, 'en', 'plugins/location/city', 'select_state', 'Select state...', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4672, 1, 'en', 'plugins/location/city', 'select_city', 'Select city...', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4673, 1, 'en', 'plugins/location/city', 'country', 'Country', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4674, 1, 'en', 'plugins/location/city', 'select_country', 'Select country...', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4675, 1, 'en', 'plugins/location/city', 'city', 'City', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4676, 1, 'en', 'plugins/location/country', 'name', 'Countries', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4677, 1, 'en', 'plugins/location/country', 'create', 'New country', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4678, 1, 'en', 'plugins/location/country', 'nationality', 'Nationality', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4679, 1, 'en', 'plugins/location/country', 'code', 'Country ISO code', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4680, 1, 'en', 'plugins/location/country', 'code_placeholder', 'ISO country code, uppercase. Ex: US.', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4681, 1, 'en', 'plugins/location/country', 'code_helper', 'Find country ISO code from here: https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4682, 1, 'en', 'plugins/location/location', 'name', 'Locations', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4683, 1, 'en', 'plugins/location/location', 'all_states', 'All states', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4684, 1, 'en', 'plugins/location/location', 'abbreviation', 'Abbreviation', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4685, 1, 'en', 'plugins/location/location', 'abbreviation_placeholder', 'E.g: CA', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4686, 1, 'en', 'plugins/location/location', 'exporting', 'Exporting', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4687, 1, 'en', 'plugins/location/location', 'total_country', 'Total countries', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4688, 1, 'en', 'plugins/location/location', 'total_state', 'Total states', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4689, 1, 'en', 'plugins/location/location', 'total_city', 'Total cities', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4690, 1, 'en', 'plugins/location/location', 'export_location', 'Export location', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4691, 1, 'en', 'plugins/location/location', 'start_export', 'Start exporting', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4692, 1, 'en', 'plugins/location/state', 'name', 'States', '2023-05-02 21:08:51', '2023-05-02 21:08:51');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(4693, 1, 'en', 'plugins/location/state', 'create', 'New state', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4694, 1, 'en', 'plugins/location/state', 'country', 'Country', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4695, 1, 'en', 'plugins/location/state', 'select_country', 'Select a country...', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4696, 1, 'en', 'plugins/location/state', 'state', 'State', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4720, 1, 'en', 'plugins/marketplace/marketplace', 'name', 'Marketplace', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4721, 1, 'en', 'plugins/marketplace/marketplace', 'email.store_new_order_title', 'Notice about new order', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4722, 1, 'en', 'plugins/marketplace/marketplace', 'email.store_new_order_description', 'Send email to the store owner when an order placed', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4723, 1, 'en', 'plugins/marketplace/marketplace', 'email.verify_vendor_title', 'Verify vendor', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4724, 1, 'en', 'plugins/marketplace/marketplace', 'email.verify_vendor_description', 'Send email to the admin when a vendor registers', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4725, 1, 'en', 'plugins/marketplace/marketplace', 'email.pending_product_approval_title', 'Pending product approval', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4726, 1, 'en', 'plugins/marketplace/marketplace', 'email.pending_product_approval_description', 'Send email to the admin when a vendor post their products', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4727, 1, 'en', 'plugins/marketplace/marketplace', 'email.vendor_account_approved_title', 'Vendor account approved', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4728, 1, 'en', 'plugins/marketplace/marketplace', 'email.vendor_account_approved_description', 'Send email to vendor when their account approved', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4729, 1, 'en', 'plugins/marketplace/marketplace', 'email.product_approved_title', 'Product approved', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4730, 1, 'en', 'plugins/marketplace/marketplace', 'email.product_approved_description', 'Send email to vendor when their product approved', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4731, 1, 'en', 'plugins/marketplace/marketplace', 'email.withdrawal_approved_title', 'Withdrawal approved', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4732, 1, 'en', 'plugins/marketplace/marketplace', 'email.withdrawal_approved_description', 'Send email to vendor when their withdrawal request approved', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4733, 1, 'en', 'plugins/marketplace/marketplace', 'current_balance', 'Current balance', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4734, 1, 'en', 'plugins/marketplace/marketplace', 'settings.name', 'Settings', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4735, 1, 'en', 'plugins/marketplace/marketplace', 'settings.title', 'Settings for marketplace', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4736, 1, 'en', 'plugins/marketplace/marketplace', 'settings.description', 'Setup commission fee', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4737, 1, 'en', 'plugins/marketplace/marketplace', 'settings.fee_per_order', 'Fee per fee (%), suggest: 2 or 3', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4738, 1, 'en', 'plugins/marketplace/marketplace', 'settings.default_commission_fee', 'Default commission fee (%), suggest: 2 or 3', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4739, 1, 'en', 'plugins/marketplace/marketplace', 'settings.enable_commission_fee_for_each_category', 'Enable commission fee for each category?', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4740, 1, 'en', 'plugins/marketplace/marketplace', 'settings.categories', 'Categories', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4741, 1, 'en', 'plugins/marketplace/marketplace', 'settings.select_categories', 'Select categories..', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4742, 1, 'en', 'plugins/marketplace/marketplace', 'settings.commission_fee', 'Commission fee (%)', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4743, 1, 'en', 'plugins/marketplace/marketplace', 'settings.commission_fee_by_category', 'Commission fee by category (%)', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4744, 1, 'en', 'plugins/marketplace/marketplace', 'settings.fee_withdrawal', 'Fee withdrawal (Fixed amount)', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4745, 1, 'en', 'plugins/marketplace/marketplace', 'settings.check_valid_signature', 'Check valid signature in vendor\'s earnings', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4746, 1, 'en', 'plugins/marketplace/marketplace', 'settings.verify_vendor', 'Vendor verification (Vendor just can post their product listing after getting verified)', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4747, 1, 'en', 'plugins/marketplace/marketplace', 'settings.enable_product_approval', 'Enable product approval', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4748, 1, 'en', 'plugins/marketplace/marketplace', 'settings.hide_store_phone_number', 'Hide store phone number?', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4749, 1, 'en', 'plugins/marketplace/marketplace', 'settings.hide_store_email', 'Hide store email?', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4750, 1, 'en', 'plugins/marketplace/marketplace', 'settings.allow_vendor_manage_shipping', 'Allow vendor manage shipping?', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4751, 1, 'en', 'plugins/marketplace/marketplace', 'settings.commission_fee_each_category_fee_name', 'Commission fee of commission setting :key', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4752, 1, 'en', 'plugins/marketplace/marketplace', 'settings.commission_fee_each_category_name', 'Categories of commission setting :key', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4753, 1, 'en', 'plugins/marketplace/marketplace', 'settings.add_new', 'Add new', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4754, 1, 'en', 'plugins/marketplace/marketplace', 'theme_options.name', 'Marketplace', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4755, 1, 'en', 'plugins/marketplace/marketplace', 'theme_options.description', 'Theme options for Marketplace', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4756, 1, 'en', 'plugins/marketplace/marketplace', 'theme_options.logo_vendor_dashboard', 'Logo in the vendor dashboard (Default is the main logo)', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4757, 1, 'en', 'plugins/marketplace/marketplace', 'store_name', 'Store name', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4758, 1, 'en', 'plugins/marketplace/marketplace', 'store_email', 'Store email', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4759, 1, 'en', 'plugins/marketplace/marketplace', 'store_phone', 'Store phone', '2023-05-02 21:08:51', '2023-05-02 21:08:51'),
(4760, 1, 'en', 'plugins/marketplace/marketplace', 'product_name', 'Product name', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4761, 1, 'en', 'plugins/marketplace/marketplace', 'product_url', 'Product URL', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4762, 1, 'en', 'plugins/marketplace/marketplace', 'withdrawal_amount', 'Withdrawal amount', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4763, 1, 'en', 'plugins/marketplace/marketplace', 'helpers.customer_status', 'If you change the status other than \":status\" this vendor\'s store will also change to \":store\"', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4764, 1, 'en', 'plugins/marketplace/marketplace', 'helpers.store_status', 'If you change the status other than \":status\" this store\'s account will also change to \":customer\"', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4765, 1, 'en', 'plugins/marketplace/marketplace', 'tables.earnings', 'Earnings', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4766, 1, 'en', 'plugins/marketplace/marketplace', 'tables.products_count', 'Products Count', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4767, 1, 'en', 'plugins/marketplace/marketplace', 'vendors', 'Vendors', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4768, 1, 'en', 'plugins/marketplace/marketplace', 'payout_payment_methods.bank_transfer', 'Bank Transfer', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4769, 1, 'en', 'plugins/marketplace/marketplace', 'payout_payment_methods.paypal', 'PayPal', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4770, 1, 'en', 'plugins/marketplace/marketplace', 'reports.name', 'Reports', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4771, 1, 'en', 'plugins/marketplace/marketplace', 'reports.total_fee_earnings', 'Total fee earnings: :value', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4772, 1, 'en', 'plugins/marketplace/marketplace', 'reports.total_fee', 'Total fee', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4773, 1, 'en', 'plugins/marketplace/marketplace', 'reports.total_amount', 'Total amount', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4774, 1, 'en', 'plugins/marketplace/marketplace', 'reports.store_revenues', 'Store revenues', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4775, 1, 'en', 'plugins/marketplace/marketplace', 'reports.sale_commissions', 'Sale commissions', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4776, 1, 'en', 'plugins/marketplace/marketplace', 'reports.fee', 'Fee (:symbol)', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4777, 1, 'en', 'plugins/marketplace/marketplace', 'reports.amount', 'Amount (:symbol)', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4778, 1, 'en', 'plugins/marketplace/marketplace', 'vendor', 'Vendor', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4779, 1, 'en', 'plugins/marketplace/order', 'shipping_method_required', 'Shipping method for \":name\" store order is required.', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4780, 1, 'en', 'plugins/marketplace/order', 'shipping_method_in', 'Shipping method for \":name\" store order is invalid.', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4781, 1, 'en', 'plugins/marketplace/order', 'shipping_option_required', 'Shipping option for \":name\" store order is required.', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4782, 1, 'en', 'plugins/marketplace/order', 'refund.insufficient_balance', 'Balance of vendor is not enough to refund order, balance: :balance', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4783, 1, 'en', 'plugins/marketplace/order', 'refund.description', 'Refunded from the order #:order', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4784, 1, 'en', 'plugins/marketplace/order', 'products_are_from_different_vendors', 'Cannot create order! Products are from different vendors.', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4785, 1, 'en', 'plugins/marketplace/order', 'return.description', 'Returned from the order #:order', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4786, 1, 'en', 'plugins/marketplace/revenue', 'edit', 'Update wallet balance', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4787, 1, 'en', 'plugins/marketplace/revenue', 'view_store', 'View store \":store\"', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4788, 1, 'en', 'plugins/marketplace/revenue', 'forms.description_placeholder', 'Update the exact amount with order #__ORDER_ID__ with reason: __REASON__', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4789, 1, 'en', 'plugins/marketplace/revenue', 'forms.amount', 'Amount', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4790, 1, 'en', 'plugins/marketplace/revenue', 'forms.amount_placeholder', 'Enter Amount', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4791, 1, 'en', 'plugins/marketplace/revenue', 'forms.type', 'Type', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4792, 1, 'en', 'plugins/marketplace/revenue', 'forms.created_by', 'Created By', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4793, 1, 'en', 'plugins/marketplace/revenue', 'types.add-amount', 'Add Amount', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4794, 1, 'en', 'plugins/marketplace/revenue', 'types.subtract-amount', 'Subtract Amount', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4795, 1, 'en', 'plugins/marketplace/revenue', 'types.order-return', 'Order Return', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4796, 1, 'en', 'plugins/marketplace/revenue', 'store_name', 'Store Name', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4797, 1, 'en', 'plugins/marketplace/revenue', 'vendor_name', 'Vendor Name', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4798, 1, 'en', 'plugins/marketplace/revenue', 'balance', 'Balance', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4799, 1, 'en', 'plugins/marketplace/revenue', 'store_information', 'Store information', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4800, 1, 'en', 'plugins/marketplace/revenue', 'update_balance', 'Adjust Balance', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4801, 1, 'en', 'plugins/marketplace/revenue', 'update_balance_title', 'Add/Subtract amount of vendor', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4802, 1, 'en', 'plugins/marketplace/revenue', 'statements', 'Statements', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4803, 1, 'en', 'plugins/marketplace/revenue', 'products', 'Products', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4804, 1, 'en', 'plugins/marketplace/store', 'name', 'Stores', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4805, 1, 'en', 'plugins/marketplace/store', 'create', 'New store', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4806, 1, 'en', 'plugins/marketplace/store', 'edit', 'Edit store', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4807, 1, 'en', 'plugins/marketplace/store', 'view', 'View', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4808, 1, 'en', 'plugins/marketplace/store', 'forms.logo', 'Logo', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4809, 1, 'en', 'plugins/marketplace/store', 'forms.email', 'Email', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4810, 1, 'en', 'plugins/marketplace/store', 'forms.email_placeholder', 'Ex: name@store.com', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4811, 1, 'en', 'plugins/marketplace/store', 'forms.phone', 'Phone', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4812, 1, 'en', 'plugins/marketplace/store', 'forms.phone_placeholder', 'Phone', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4813, 1, 'en', 'plugins/marketplace/store', 'forms.address', 'Address', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4814, 1, 'en', 'plugins/marketplace/store', 'forms.address_placeholder', 'Address', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4815, 1, 'en', 'plugins/marketplace/store', 'forms.city', 'City', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4816, 1, 'en', 'plugins/marketplace/store', 'forms.city_placeholder', 'City', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4817, 1, 'en', 'plugins/marketplace/store', 'forms.state', 'State', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4818, 1, 'en', 'plugins/marketplace/store', 'forms.state_placeholder', 'State', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4819, 1, 'en', 'plugins/marketplace/store', 'forms.country', 'Country', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4820, 1, 'en', 'plugins/marketplace/store', 'forms.country_placeholder', 'Country', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4821, 1, 'en', 'plugins/marketplace/store', 'forms.store_owner', 'Store owner', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4822, 1, 'en', 'plugins/marketplace/store', 'forms.select_store_owner', 'Select a store owner...', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4823, 1, 'en', 'plugins/marketplace/store', 'forms.store', 'Store', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4824, 1, 'en', 'plugins/marketplace/store', 'forms.select_store', 'Select a store...', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4825, 1, 'en', 'plugins/marketplace/store', 'forms.is_vendor', 'Is vendor?', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4826, 1, 'en', 'plugins/marketplace/store', 'forms.company', 'Company', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4827, 1, 'en', 'plugins/marketplace/store', 'forms.company_placeholder', 'Company', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4828, 1, 'en', 'plugins/marketplace/store', 'forms.zip_code', 'Zip Code', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4829, 1, 'en', 'plugins/marketplace/store', 'forms.zip_code_placeholder', 'Zip Code', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4830, 1, 'en', 'plugins/marketplace/store', 'store', 'Store', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4831, 1, 'en', 'plugins/marketplace/store', 'store_name', 'Store name', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4832, 1, 'en', 'plugins/marketplace/store', 'store_phone', 'Store phone', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4833, 1, 'en', 'plugins/marketplace/store', 'store_link', 'Store link', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4834, 1, 'en', 'plugins/marketplace/store', 'product_approval_notification', 'This product was created by :vendor. It needs to be approved to be shown on your website. :approve_link', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4835, 1, 'en', 'plugins/marketplace/store', 'approve_here', 'Approve it here.', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4836, 1, 'en', 'plugins/marketplace/store', 'approve_product_confirmation', 'Approve product confirmation', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4837, 1, 'en', 'plugins/marketplace/store', 'approve_product_confirmation_description', 'Are you sure you really want to approve this product from :vendor?', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4838, 1, 'en', 'plugins/marketplace/store', 'approve', 'Approve', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4839, 1, 'en', 'plugins/marketplace/store', 'approve_product_success', 'Approved product successfully', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4840, 1, 'en', 'plugins/marketplace/store', 'product_approved_notification', 'This product was created by :vendor. Approved by :user.', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4841, 1, 'en', 'plugins/marketplace/store', 'information', 'Store information', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4842, 1, 'en', 'plugins/marketplace/store', 'vendor_information', 'Vendor information', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4843, 1, 'en', 'plugins/marketplace/store', 'vendor_name', 'Name', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4844, 1, 'en', 'plugins/marketplace/store', 'withdrawal_approval_notification', 'This withdrawal request has been created by :vendor. Their current balance is :balance.', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4845, 1, 'en', 'plugins/marketplace/unverified-vendor', 'name', 'Unverified vendors', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4846, 1, 'en', 'plugins/marketplace/unverified-vendor', 'verify', 'Verify vendor \":name\"', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4847, 1, 'en', 'plugins/marketplace/unverified-vendor', 'forms.email', 'Email', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4848, 1, 'en', 'plugins/marketplace/unverified-vendor', 'forms.store_name', 'Store name', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4849, 1, 'en', 'plugins/marketplace/unverified-vendor', 'forms.store_phone', 'Store phone', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4850, 1, 'en', 'plugins/marketplace/unverified-vendor', 'forms.vendor_phone', 'Phone', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4851, 1, 'en', 'plugins/marketplace/unverified-vendor', 'forms.verify_vendor', 'Verify vendor', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4852, 1, 'en', 'plugins/marketplace/unverified-vendor', 'forms.registered_at', 'Registered At', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4853, 1, 'en', 'plugins/marketplace/unverified-vendor', 'approve', 'Approve', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4854, 1, 'en', 'plugins/marketplace/unverified-vendor', 'approve_vendor_confirmation', 'Approve vendor confirmation', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4855, 1, 'en', 'plugins/marketplace/unverified-vendor', 'approve_vendor_confirmation_description', 'Are you sure you really want to approve :vendor for selling on this site?', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4856, 1, 'en', 'plugins/marketplace/unverified-vendor', 'vendor_approval_notification', 'Do you want to approve this vendor for selling on this site? :approve_link', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4857, 1, 'en', 'plugins/marketplace/unverified-vendor', 'new_vendor_notifications.new_vendor', 'New vendor', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4858, 1, 'en', 'plugins/marketplace/unverified-vendor', 'new_vendor_notifications.view', 'View', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4859, 1, 'en', 'plugins/marketplace/unverified-vendor', 'new_vendor_notifications.description', ':customer has registered but not verified.', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4860, 1, 'en', 'plugins/marketplace/withdrawal', 'name', 'Withdrawals', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4861, 1, 'en', 'plugins/marketplace/withdrawal', 'edit', 'Edit withdrawal', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4862, 1, 'en', 'plugins/marketplace/withdrawal', 'statuses.pending', 'Pending', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4863, 1, 'en', 'plugins/marketplace/withdrawal', 'statuses.processing', 'Processing', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4864, 1, 'en', 'plugins/marketplace/withdrawal', 'statuses.completed', 'Completed', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4865, 1, 'en', 'plugins/marketplace/withdrawal', 'statuses.canceled', 'Canceled', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4866, 1, 'en', 'plugins/marketplace/withdrawal', 'statuses.refused', 'Refused', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4867, 1, 'en', 'plugins/marketplace/withdrawal', 'amount', 'Amount', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4868, 1, 'en', 'plugins/marketplace/withdrawal', 'customer', 'Customer', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4869, 1, 'en', 'plugins/marketplace/withdrawal', 'vendor', 'Vendor', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4870, 1, 'en', 'plugins/marketplace/withdrawal', 'currency', 'Currency', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4871, 1, 'en', 'plugins/marketplace/withdrawal', 'forms.amount', 'Amount', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4872, 1, 'en', 'plugins/marketplace/withdrawal', 'forms.amount_placeholder', 'Amount you want to withdrawal', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4873, 1, 'en', 'plugins/marketplace/withdrawal', 'forms.fee', 'Fee', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4874, 1, 'en', 'plugins/marketplace/withdrawal', 'forms.fee_helper', 'You have to pay a fee when withdrawing: :fee', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4875, 1, 'en', 'plugins/marketplace/withdrawal', 'forms.pending_status_helper', 'To complete withdrawal, please update status as processing then completed', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4876, 1, 'en', 'plugins/marketplace/withdrawal', 'forms.payment_channel', 'Payment Channel', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4877, 1, 'en', 'plugins/marketplace/withdrawal', 'forms.payment_channel_placeholder', 'Payment Channel', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4878, 1, 'en', 'plugins/marketplace/withdrawal', 'forms.transaction_id', 'Transaction ID', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4879, 1, 'en', 'plugins/marketplace/withdrawal', 'forms.transaction_id_placeholder', 'Transaction ID', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4880, 1, 'en', 'plugins/marketplace/withdrawal', 'forms.amount_with_balance', 'Amount (balance: :balance)', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4881, 1, 'en', 'plugins/marketplace/withdrawal', 'new_withdrawal_request_notifications.new_withdrawal_request', 'New withdrawal request', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4882, 1, 'en', 'plugins/marketplace/withdrawal', 'new_withdrawal_request_notifications.view', 'View', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4883, 1, 'en', 'plugins/marketplace/withdrawal', 'new_withdrawal_request_notifications.description', ':customer has requested a withdrawal.', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4884, 1, 'en', 'plugins/newsletter/newsletter', 'name', 'Newsletters', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4885, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.title', 'Newsletter', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4886, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.description', 'Config newsletter email templates', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4887, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.title', 'Email send to admin', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4888, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.description', 'Template for sending email to admin', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4889, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.title', 'Email send to user', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4890, 1, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.description', 'Template for sending email to subscriber', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4891, 1, 'en', 'plugins/newsletter/newsletter', 'settings.title', 'Newsletter', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4892, 1, 'en', 'plugins/newsletter/newsletter', 'settings.description', 'Settings for newsletter (auto send newsletter email to SendGrid, Mailchimp... when someone register newsletter on website).', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4893, 1, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_api_key', 'Mailchimp API Key', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4894, 1, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_list_id', 'Mailchimp List ID', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4895, 1, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_list', 'Mailchimp List', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4896, 1, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_api_key', 'Sendgrid API Key', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4897, 1, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_list_id', 'Sendgrid List ID', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4898, 1, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_list', 'Sendgrid List', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4899, 1, 'en', 'plugins/newsletter/newsletter', 'settings.enable_newsletter_contacts_list_api', 'Enable newsletter contacts list API?', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4900, 1, 'en', 'plugins/newsletter/newsletter', 'statuses.subscribed', 'Subscribed', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4901, 1, 'en', 'plugins/newsletter/newsletter', 'statuses.unsubscribed', 'Unsubscribed', '2023-05-02 21:08:52', '2023-05-02 21:08:52'),
(4911, 1, 'en', 'plugins/payment/payment', 'payments', 'Payments', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4912, 1, 'en', 'plugins/payment/payment', 'checkout_success', 'Checkout successfully!', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4913, 1, 'en', 'plugins/payment/payment', 'view_payment', 'View payment #', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4914, 1, 'en', 'plugins/payment/payment', 'charge_id', 'Charge ID', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4915, 1, 'en', 'plugins/payment/payment', 'amount', 'Amount', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4916, 1, 'en', 'plugins/payment/payment', 'currency', 'Currency', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4917, 1, 'en', 'plugins/payment/payment', 'user', 'User', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4918, 1, 'en', 'plugins/payment/payment', 'stripe', 'Stripe', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4919, 1, 'en', 'plugins/payment/payment', 'paypal', 'PayPal', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4920, 1, 'en', 'plugins/payment/payment', 'action', 'Action', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4921, 1, 'en', 'plugins/payment/payment', 'payment_via_card', 'Payment via card', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4922, 1, 'en', 'plugins/payment/payment', 'card_number', 'Card number', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4923, 1, 'en', 'plugins/payment/payment', 'full_name', 'Full name', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4924, 1, 'en', 'plugins/payment/payment', 'payment_via_paypal', 'Fast and safe online payment via PayPal.', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4925, 1, 'en', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4926, 1, 'en', 'plugins/payment/payment', 'cvc', 'CVC', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4927, 1, 'en', 'plugins/payment/payment', 'details', 'Details', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4928, 1, 'en', 'plugins/payment/payment', 'payer_name', 'Payer Name', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4929, 1, 'en', 'plugins/payment/payment', 'email', 'Email', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4930, 1, 'en', 'plugins/payment/payment', 'phone', 'Phone', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4931, 1, 'en', 'plugins/payment/payment', 'country', 'Country', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4932, 1, 'en', 'plugins/payment/payment', 'shipping_address', 'Shipping Address', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4933, 1, 'en', 'plugins/payment/payment', 'payment_details', 'Payment Details', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4934, 1, 'en', 'plugins/payment/payment', 'card', 'Card', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4935, 1, 'en', 'plugins/payment/payment', 'address', 'Address', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4936, 1, 'en', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4937, 1, 'en', 'plugins/payment/payment', 'payment_id', 'Payment ID', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4938, 1, 'en', 'plugins/payment/payment', 'payment_methods', 'Payment methods', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4939, 1, 'en', 'plugins/payment/payment', 'transactions', 'Transactions', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4940, 1, 'en', 'plugins/payment/payment', 'payment_methods_description', 'Setup payment methods for website', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4941, 1, 'en', 'plugins/payment/payment', 'paypal_description', 'Customer can buy product and pay directly via PayPal', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4942, 1, 'en', 'plugins/payment/payment', 'use', 'Use', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4943, 1, 'en', 'plugins/payment/payment', 'stripe_description', 'Customer can buy product and pay directly using Visa, Credit card via Stripe', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4944, 1, 'en', 'plugins/payment/payment', 'edit', 'Edit', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4945, 1, 'en', 'plugins/payment/payment', 'settings', 'Settings', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4946, 1, 'en', 'plugins/payment/payment', 'activate', 'Activate', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4947, 1, 'en', 'plugins/payment/payment', 'deactivate', 'Deactivate', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4948, 1, 'en', 'plugins/payment/payment', 'update', 'Update', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4949, 1, 'en', 'plugins/payment/payment', 'configuration_instruction', 'Configuration instruction for :name', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4950, 1, 'en', 'plugins/payment/payment', 'configuration_requirement', 'To use :name, you need', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4951, 1, 'en', 'plugins/payment/payment', 'service_registration', 'Register with :name', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4952, 1, 'en', 'plugins/payment/payment', 'after_service_registration_msg', 'After registration at :name, you will have Client ID, Client Secret', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4953, 1, 'en', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Enter Client ID, Secret into the box in right hand', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4954, 1, 'en', 'plugins/payment/payment', 'method_name', 'Method name', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4955, 1, 'en', 'plugins/payment/payment', 'please_provide_information', 'Please provide information', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4956, 1, 'en', 'plugins/payment/payment', 'client_id', 'Client ID', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4957, 1, 'en', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4958, 1, 'en', 'plugins/payment/payment', 'secret', 'Secret', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4959, 1, 'en', 'plugins/payment/payment', 'stripe_key', 'Stripe Public Key', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4960, 1, 'en', 'plugins/payment/payment', 'stripe_secret', 'Stripe Private Key', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4961, 1, 'en', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4962, 1, 'en', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4963, 1, 'en', 'plugins/payment/payment', 'pay_online_via', 'Pay online via :name', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4964, 1, 'en', 'plugins/payment/payment', 'sandbox_mode', 'Sandbox mode', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4965, 1, 'en', 'plugins/payment/payment', 'deactivate_payment_method', 'Deactivate payment method', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4966, 1, 'en', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Do you really want to deactivate this payment method?', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4967, 1, 'en', 'plugins/payment/payment', 'agree', 'Agree', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4968, 1, 'en', 'plugins/payment/payment', 'name', 'Payments', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4969, 1, 'en', 'plugins/payment/payment', 'create', 'New payment', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4970, 1, 'en', 'plugins/payment/payment', 'go_back', 'Go back', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4971, 1, 'en', 'plugins/payment/payment', 'information', 'Information', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4972, 1, 'en', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4973, 1, 'en', 'plugins/payment/payment', 'methods.cod', 'Cash on delivery (COD)', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4974, 1, 'en', 'plugins/payment/payment', 'methods.bank_transfer', 'Bank transfer', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4975, 1, 'en', 'plugins/payment/payment', 'statuses.pending', 'Pending', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4976, 1, 'en', 'plugins/payment/payment', 'statuses.completed', 'Completed', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4977, 1, 'en', 'plugins/payment/payment', 'statuses.refunding', 'Refunding', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4978, 1, 'en', 'plugins/payment/payment', 'statuses.refunded', 'Refunded', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4979, 1, 'en', 'plugins/payment/payment', 'statuses.fraud', 'Fraud', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4980, 1, 'en', 'plugins/payment/payment', 'statuses.failed', 'Failed', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4981, 1, 'en', 'plugins/payment/payment', 'payment_methods_instruction', 'Guide customers to pay directly. You can choose to pay by delivery or bank transfer', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4982, 1, 'en', 'plugins/payment/payment', 'payment_method_description', 'Payment guide - (Displayed on the notice of successful purchase and payment page)', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4983, 1, 'en', 'plugins/payment/payment', 'payment_via_cod', 'Cash on delivery (COD)', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4984, 1, 'en', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Bank transfer', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4985, 1, 'en', 'plugins/payment/payment', 'payment_pending', 'Checkout successfully. Your payment is pending and will be checked by our staff.', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4986, 1, 'en', 'plugins/payment/payment', 'created_at', 'Created At', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4987, 1, 'en', 'plugins/payment/payment', 'payment_channel', 'Payment Channel', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4988, 1, 'en', 'plugins/payment/payment', 'total', 'Total', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4989, 1, 'en', 'plugins/payment/payment', 'status', 'Status', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4990, 1, 'en', 'plugins/payment/payment', 'default_payment_method', 'Default payment method', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4991, 1, 'en', 'plugins/payment/payment', 'turn_off_success', 'Turn off payment method successfully!', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4992, 1, 'en', 'plugins/payment/payment', 'saved_payment_method_success', 'Saved payment method successfully!', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4993, 1, 'en', 'plugins/payment/payment', 'saved_payment_settings_success', 'Saved payment settings successfully!', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4994, 1, 'en', 'plugins/payment/payment', 'payment_name', 'Name', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4995, 1, 'en', 'plugins/payment/payment', 'payment_not_found', 'Payment not found!', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4996, 1, 'en', 'plugins/payment/payment', 'refunds.title', 'Refunds', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4997, 1, 'en', 'plugins/payment/payment', 'refunds.id', 'ID', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4998, 1, 'en', 'plugins/payment/payment', 'refunds.breakdowns', 'Breakdowns', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(4999, 1, 'en', 'plugins/payment/payment', 'refunds.gross_amount', 'Gross amount', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(5000, 1, 'en', 'plugins/payment/payment', 'refunds.paypal_fee', 'PayPal fee', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(5001, 1, 'en', 'plugins/payment/payment', 'refunds.net_amount', 'Net amount', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(5002, 1, 'en', 'plugins/payment/payment', 'refunds.total_refunded_amount', 'Total refunded amount', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(5003, 1, 'en', 'plugins/payment/payment', 'refunds.create_time', 'Create time', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(5004, 1, 'en', 'plugins/payment/payment', 'refunds.update_time', 'Update time', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(5005, 1, 'en', 'plugins/payment/payment', 'refunds.status', 'Status', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(5006, 1, 'en', 'plugins/payment/payment', 'refunds.description', 'Description', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(5007, 1, 'en', 'plugins/payment/payment', 'refunds.refunded_at', 'Refunded at', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(5008, 1, 'en', 'plugins/payment/payment', 'refunds.error_message', 'Error message', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(5009, 1, 'en', 'plugins/payment/payment', 'view_response_source', 'View response source', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(5010, 1, 'en', 'plugins/payment/payment', 'status_is_not_completed', 'Status is not COMPLETED', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(5011, 1, 'en', 'plugins/payment/payment', 'cannot_found_capture_id', 'Can not found capture id with payment detail', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(5012, 1, 'en', 'plugins/payment/payment', 'amount_refunded', 'Amount refunded', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(5013, 1, 'en', 'plugins/payment/payment', 'amount_remaining', 'Amount remaining', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(5014, 1, 'en', 'plugins/payment/payment', 'paid_at', 'Paid At', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(5015, 1, 'en', 'plugins/payment/payment', 'invalid_settings', 'Settings for :name are invalid!', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(5016, 1, 'en', 'plugins/payment/payment', 'view_transaction', 'Transaction \":charge_id\"', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(5017, 1, 'en', 'plugins/payment/payment', 'payment_description', 'Pay for your order #:order_id at :site_url', '2023-05-02 21:08:53', '2023-05-02 21:08:53'),
(5098, 1, 'en', 'plugins/shippo/shippo', 'name', 'Shippo', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5099, 1, 'en', 'plugins/shippo/shippo', 'description', 'All of the Carriers and Stores You Need', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5100, 1, 'en', 'plugins/shippo/shippo', 'note_0', 'Before activating, please read the instructions below', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5101, 1, 'en', 'plugins/shippo/shippo', 'note_1', 'Need to use cities, states, countries from Admin -> Locations, <a href=\":link\" target=\"_blank\" rel=\"noopener noreferrer\">:link</a>', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5102, 1, 'en', 'plugins/shippo/shippo', 'note_2', 'Enabled \"Load countries, states, cities from plugin location?\" and \"Enable Zip Code?\" for Shippo to work correctly', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5103, 1, 'en', 'plugins/shippo/shippo', 'note_3', 'Update city, state, country with location plugin data, enter and check the address and zip code in \"<a href=\":link\" target=\"_blank\">Basic information</a>\"', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5104, 1, 'en', 'plugins/shippo/shippo', 'note_4', 'Vendor needs to update Company & Zip Code. Update city, state, country with location plugin data', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5105, 1, 'en', 'plugins/shippo/shippo', 'note_5', 'Shippo only allows to create transactions with shipment/rate within 24 hours, if more than 24 hours, please update the rate again', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5106, 1, 'en', 'plugins/shippo/shippo', 'note_6', 'COD payment method refer <a href=\":link\" target=\"_blank\" rel=\"noopener noreferrer\">here</a>', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5107, 1, 'en', 'plugins/shippo/shippo', 'configuration_instruction', 'Configuration instruction for :name', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5108, 1, 'en', 'plugins/shippo/shippo', 'configuration_requirement', 'To use :name, you need', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5109, 1, 'en', 'plugins/shippo/shippo', 'service_registration', 'Register with :name', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5110, 1, 'en', 'plugins/shippo/shippo', 'after_service_registration_msg', 'After registration at :name, you will have API Key', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5111, 1, 'en', 'plugins/shippo/shippo', 'enter_api_key', 'Enter API Key into the box in right hand', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5112, 1, 'en', 'plugins/shippo/shippo', 'please_provide_information', 'Please provide information', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5113, 1, 'en', 'plugins/shippo/shippo', 'sandbox_mode', 'Test mode', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5114, 1, 'en', 'plugins/shippo/shippo', 'activate', 'Activate', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5115, 1, 'en', 'plugins/shippo/shippo', 'disabled_in_demo_mode', 'You cannot update Shippo settings in demo mode!', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5116, 1, 'en', 'plugins/shippo/shippo', 'parcel', 'Parcel', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5117, 1, 'en', 'plugins/shippo/shippo', 'estimated_days', 'Estimated delivery in :day day(s)', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5118, 1, 'en', 'plugins/shippo/shippo', 'from_address', 'From address', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5119, 1, 'en', 'plugins/shippo/shippo', 'to_address', 'To address', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5120, 1, 'en', 'plugins/shippo/shippo', 'check_validate_token', 'Check validate token?', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5121, 1, 'en', 'plugins/shippo/shippo', 'saved_shipping_settings_success', 'Saved settings successfully!', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5122, 1, 'en', 'plugins/shippo/shippo', 'token_name_is_required', ':name is required for the integration to work', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5123, 1, 'en', 'plugins/shippo/shippo', 'token_name_is_invalid', ':name is invalid', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5124, 1, 'en', 'plugins/shippo/shippo', 'live_api_token', 'Live API Token', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5125, 1, 'en', 'plugins/shippo/shippo', 'test_api_token', 'Test API Token', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5126, 1, 'en', 'plugins/shippo/shippo', 'print_label', 'Print label', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5127, 1, 'en', 'plugins/shippo/shippo', 'transaction.created', 'Created transaction #:tracking', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5128, 1, 'en', 'plugins/shippo/shippo', 'transaction.view_and_create', 'View and Create transaction', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5129, 1, 'en', 'plugins/shippo/shippo', 'transaction.create', 'Create transaction', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5130, 1, 'en', 'plugins/shippo/shippo', 'transaction.created_success', 'Created transaction successfully!', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5131, 1, 'en', 'plugins/shippo/shippo', 'transaction.updated', 'Updated transaction #:tracking', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5132, 1, 'en', 'plugins/shippo/shippo', 'tracking.updated', 'Updated tracking #:tracking', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5133, 1, 'en', 'plugins/shippo/shippo', 'tracking.statuses.pre_transit', 'The label is created but before the package is dropped off or picked up by the carrier.', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5134, 1, 'en', 'plugins/shippo/shippo', 'tracking.statuses.transit', 'The package has been scanned by the carrier and is in transit.', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5135, 1, 'en', 'plugins/shippo/shippo', 'tracking.statuses.delivered', 'The package has been successfully delivered.', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5136, 1, 'en', 'plugins/shippo/shippo', 'tracking.statuses.returned', 'The package is en route to be returned to the sender, or has been returned successfully.', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5137, 1, 'en', 'plugins/shippo/shippo', 'tracking.statuses.failure', 'The carrier indicated that there has been an issue with the delivery. This can happen for various reasons and depends on the carrier. This status does not indicate a technical, but a delivery issue.', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5138, 1, 'en', 'plugins/shippo/shippo', 'tracking.statuses.unknown', 'The package has not been found via the carrier’s tracking system.', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5139, 1, 'en', 'plugins/shippo/shippo', 'view_other_exchange_rates', 'View :count other exchange rates', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5140, 1, 'en', 'plugins/shippo/shippo', 'carrier_could_not_be_found', 'The carrier for which the order was selected could not be found', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5141, 1, 'en', 'plugins/shippo/shippo', 'update_rate', 'Update rate', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5142, 1, 'en', 'plugins/shippo/shippo', 'updated_rate_success', 'Created rate successfully!', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5143, 1, 'en', 'plugins/shippo/shippo', 'recheck_rate', 'Recheck rate', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5144, 1, 'en', 'plugins/shippo/shippo', 'shipment_object_id_not_found', 'No matching shipping #:id information found', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5145, 1, 'en', 'plugins/shippo/shippo', 'order_amount', 'Order amount', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5146, 1, 'en', 'plugins/shippo/shippo', 'logging', 'Logging?', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5147, 1, 'en', 'plugins/shippo/shippo', 'webhooks', 'Webhooks?', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5148, 1, 'en', 'plugins/shippo/shippo', 'cache_response', 'Cache response?', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5149, 1, 'en', 'plugins/shippo/shippo', 'not_available_in_cod_payment_method', 'Shippo options won\'t be shown if the selected payment method is COD!', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5150, 1, 'en', 'plugins/simple-slider/simple-slider', 'create', 'New slider', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5151, 1, 'en', 'plugins/simple-slider/simple-slider', 'menu', 'Simple sliders', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5152, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.title', 'Simple sliders', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5153, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.description', 'Settings for Simple sliders', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5154, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.using_assets', 'Using default assets?', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5155, 1, 'en', 'plugins/simple-slider/simple-slider', 'settings.using_assets_description', 'If using assets option is enabled then below scripts will be auto added to front site.', '2023-05-02 21:08:54', '2023-05-02 21:08:54');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(5156, 1, 'en', 'plugins/simple-slider/simple-slider', 'add_new', 'Add new', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5157, 1, 'en', 'plugins/simple-slider/simple-slider', 'save_sorting', 'Save sorting', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5158, 1, 'en', 'plugins/simple-slider/simple-slider', 'key', 'Key', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5159, 1, 'en', 'plugins/simple-slider/simple-slider', 'slide_items', 'Slide Items', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5160, 1, 'en', 'plugins/simple-slider/simple-slider', 'update_slide_position_success', 'Updated slide position successfully!', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5161, 1, 'en', 'plugins/simple-slider/simple-slider', 'create_new_slide', 'Create a new slide', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5162, 1, 'en', 'plugins/simple-slider/simple-slider', 'edit_slide', 'Edit slide #:id', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5163, 1, 'en', 'plugins/simple-slider/simple-slider', 'simple_slider_shortcode_name', 'Simple Slider', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5164, 1, 'en', 'plugins/simple-slider/simple-slider', 'simple_slider_shortcode_description', 'Add a simple slider', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5165, 1, 'en', 'plugins/simple-slider/simple-slider', 'select_slider', 'Select a slider', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5173, 1, 'en', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5174, 1, 'en', 'plugins/social-login/social-login', 'settings.description', 'Configure social login options', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5175, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5176, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5177, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5178, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5179, 1, 'en', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5180, 1, 'en', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5181, 1, 'en', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5182, 1, 'en', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5183, 1, 'en', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5184, 1, 'en', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5185, 1, 'en', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5186, 1, 'en', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5187, 1, 'en', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5188, 1, 'en', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5189, 1, 'en', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5190, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5191, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5192, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5193, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5194, 1, 'en', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5195, 1, 'en', 'plugins/social-login/social-login', 'settings.enable', 'Enable?', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5196, 1, 'en', 'plugins/social-login/social-login', 'menu', 'Social Login', '2023-05-02 21:08:54', '2023-05-02 21:08:54'),
(5221, 1, 'en', 'plugins/translation/translation', 'translations', 'Translations', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5222, 1, 'en', 'plugins/translation/translation', 'translations_description', 'Translate all words in system.', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5223, 1, 'en', 'plugins/translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the :lang_path file, using \'php artisan cms:translations:export\' command or publish button.', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5224, 1, 'en', 'plugins/translation/translation', 'import_done', 'Done importing, processed :counter items! Reload this page to refresh the groups!', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5225, 1, 'en', 'plugins/translation/translation', 'translation_manager', 'Translations Manager', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5226, 1, 'en', 'plugins/translation/translation', 'done_publishing', 'Done publishing the translations for group', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5227, 1, 'en', 'plugins/translation/translation', 'append_translation', 'Append new translations', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5228, 1, 'en', 'plugins/translation/translation', 'replace_translation', 'Replace existing translations', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5229, 1, 'en', 'plugins/translation/translation', 'import_group', 'Import group', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5230, 1, 'en', 'plugins/translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5231, 1, 'en', 'plugins/translation/translation', 'publish_translations', 'Publish translations', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5232, 1, 'en', 'plugins/translation/translation', 'back', 'Back', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5233, 1, 'en', 'plugins/translation/translation', 'edit_title', 'Enter translation', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5234, 1, 'en', 'plugins/translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have imported the translations.', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5235, 1, 'en', 'plugins/translation/translation', 'choose_a_group', 'Choose a group', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5236, 1, 'en', 'plugins/translation/translation', 'locales', 'Locales', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5237, 1, 'en', 'plugins/translation/translation', 'theme-translations', 'Theme translations', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5238, 1, 'en', 'plugins/translation/translation', 'admin-translations', 'Other translations', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5239, 1, 'en', 'plugins/translation/translation', 'translate_from', 'Translate from', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5240, 1, 'en', 'plugins/translation/translation', 'to', 'to', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5241, 1, 'en', 'plugins/translation/translation', 'no_other_languages', 'No other language to translate!', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5242, 1, 'en', 'plugins/translation/translation', 'edit', 'Edit', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5243, 1, 'en', 'plugins/translation/translation', 'locale', 'Locale', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5244, 1, 'en', 'plugins/translation/translation', 'locale_placeholder', 'Ex: en', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5245, 1, 'en', 'plugins/translation/translation', 'name', 'Name', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5246, 1, 'en', 'plugins/translation/translation', 'default_locale', 'Default locale?', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5247, 1, 'en', 'plugins/translation/translation', 'actions', 'Actions', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5248, 1, 'en', 'plugins/translation/translation', 'choose_language', 'Choose language', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5249, 1, 'en', 'plugins/translation/translation', 'add_new_language', 'Add new language', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5250, 1, 'en', 'plugins/translation/translation', 'select_language', 'Select language', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5251, 1, 'en', 'plugins/translation/translation', 'flag', 'Flag', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5252, 1, 'en', 'plugins/translation/translation', 'folder_is_not_writeable', 'Cannot write files! Folder :lang_path is not writable. Please chmod to make it writable!', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5253, 1, 'en', 'plugins/translation/translation', 'delete', 'Delete', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5254, 1, 'en', 'plugins/translation/translation', 'confirm_delete_message', 'Do you really want to delete this locale? It will delete all files/folders for this local in :lang_path!', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5255, 1, 'en', 'plugins/translation/translation', 'download', 'Download', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5256, 1, 'en', 'plugins/translation/translation', 'select_locale', 'Select locale', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5257, 1, 'en', 'plugins/translation/translation', 'theme_translations_instruction', 'Click on text to translate. Do NOT translate variables, Eg. :username, :query, :link...', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5258, 1, 'en', 'plugins/translation/translation', 'import_available_locale', 'Or import available locale from our GitHub repository', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5259, 1, 'en', 'plugins/translation/translation', 'add_new_locale', 'Add new locale', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5260, 1, 'en', 'plugins/translation/translation', 'download_locale', 'Download locale', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5261, 1, 'en', 'plugins/translation/translation', 'import_available_locale_confirmation', 'Download locale from GitHub', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5262, 1, 'en', 'plugins/translation/translation', 'import_available_locale_confirmation_content', 'Are you sure you want to download this locale? It will be downloaded into :lang_path, you can delete it later if you want.', '2023-05-02 21:08:55', '2023-05-02 21:08:55'),
(5263, 1, 'en', 'plugins/translation/translation', 'is_default', 'Is default?', '2023-05-02 21:08:55', '2023-05-02 21:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'info@elitedesign.com.bd', NULL, '$2y$10$o87.bhpbAWzshVVFh5ERP..04y7p2iBZEgTgVFcMTDYtWPrr4thZ2', 'kx06SuECaCVYCgTNWtvkMyOOuVSrli8ffjC2eLbjFTxwsKSujByNmtcsInii', '2023-05-30 22:17:31', '2024-11-29 20:04:55', 'Fresh', 'Mart', 'admin', 292, 1, 1, NULL, '2024-11-29 20:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint UNSIGNED NOT NULL,
  `widget_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(6, 'BlogSearchWidget', 'primary_sidebar', 'nest', 0, '{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(7, 'ProductCategoriesWidget', 'primary_sidebar', 'nest', 1, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(8, 'TrendingProductsWidget', 'primary_sidebar', 'nest', 2, '{\"id\":\"TrendingProductsWidget\",\"name\":\"Trending Now\",\"number_display\":4}', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(9, 'GalleryWidget', 'primary_sidebar', 'nest', 3, '{\"id\":\"GalleryWidget\",\"name\":\"Gallery\",\"slider_key\":\"slider-blog-1\"}', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(10, 'TagsWidget', 'primary_sidebar', 'nest', 4, '{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(11, 'AdsWidget', 'primary_sidebar', 'nest', 5, '{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}', '2023-05-02 21:08:12', '2023-05-02 21:08:12'),
(46, 'SiteInfoWidget', 'footer_sidebar', 'nest', 0, '{\"id\":\"SiteInfoWidget\",\"name\":\"Site information\",\"about\":\"Awesome grocery store website template\",\"address\":\"House: Munshi Bari, Beside Nayar Hat High School,Kisamot Nagorbondh, Borobari, Lalmonir Hat, Bangladesh\",\"phone\":\" +8801775457008\",\"email\":\"info@elitedesign.com.bd\",\"working_hours\":\"10:00 - 18:00, Sat - Fri\"}', '2023-05-31 07:51:03', '2023-05-31 07:51:03'),
(47, 'CustomMenuWidget', 'footer_sidebar', 'nest', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}', '2023-05-31 07:51:03', '2023-05-31 07:51:03'),
(48, 'CustomMenuWidget', 'footer_sidebar', 'nest', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}', '2023-05-31 07:51:03', '2023-05-31 07:51:03'),
(49, 'CustomMenuWidget', 'footer_sidebar', 'nest', 3, '{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}', '2023-05-31 07:51:03', '2023-05-31 07:51:03'),
(50, 'InstallAppWidget', 'footer_sidebar', 'nest', 4, '{\"id\":\"InstallAppWidget\",\"name\":\"Install App\",\"apps_description\":\"From App Store or Google Play\",\"ios_app_url\":\"#\",\"ios_app_image\":\"flash-sales\\/app-store.jpg\",\"android_app_url\":\"#\",\"android_app_image\":\"flash-sales\\/google-play.jpg\",\"payment_gateway_description\":\"Secured Payment Gateways\",\"payment_gateway_image\":\"flash-sales\\/ev9xpxiihyy2mwaroxudrfjtmnlntvamm04zh3rx.png\"}', '2023-05-31 07:51:03', '2023-05-31 07:51:03'),
(51, 'NewsletterWidget', 'pre_footer_sidebar', 'nest', 0, '{\"id\":\"NewsletterWidget\",\"title\":\"Stay home & get your daily <br \\/>needs from our shop\",\"subtitle\":\"Start Your Daily Shopping with <span>Nest Mart<\\/span>\",\"image\":\"flash-sales\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}', '2023-05-31 07:51:52', '2023-05-31 07:51:52'),
(52, 'SiteFeaturesWidget', 'pre_footer_sidebar', 'nest', 1, '{\"id\":\"SiteFeaturesWidget\",\"name\":\"Site features\",\"data\":{\"1\":{\"title\":\"Best prices & offers\",\"subtitle\":\"Orders $50 or more\",\"icon\":\"general\\/icon-1.png\"},\"2\":{\"title\":\"Free delivery\",\"subtitle\":\"24\\/7 amazing services\",\"icon\":\"general\\/icon-2.png\"},\"3\":{\"title\":\"Great daily deal\",\"subtitle\":\"When you sign up\",\"icon\":\"general\\/icon-3.png\"},\"4\":{\"title\":\"Wide assortment\",\"subtitle\":\"Mega Discounts\",\"icon\":\"general\\/icon-4.png\"},\"5\":{\"title\":\"Easy returns\",\"subtitle\":\"Within 30 days\",\"icon\":\"general\\/icon-5.png\"}}}', '2023-05-31 07:51:52', '2023-05-31 07:51:52'),
(61, 'PriceFilterWidget', 'product_sidebar', 'nest', 0, '{\"id\":\"PriceFilterWidget\",\"name\":\"Filter by price\"}', '2024-11-06 15:40:08', '2024-11-06 15:40:08'),
(62, 'ProductCategoriesWidget', 'product_sidebar', 'nest', 1, '{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\",\"number_display\":\"10\"}', '2024-11-06 15:40:08', '2024-11-06 15:40:08'),
(63, 'NewProductsWidget', 'product_sidebar', 'nest', 2, '{\"id\":\"NewProductsWidget\",\"name\":\"New products\",\"number_display\":\"3\"}', '2024-11-06 15:40:08', '2024-11-06 15:40:08'),
(64, 'AdsWidget', 'product_sidebar', 'nest', 3, '{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}', '2024-11-06 15:40:08', '2024-11-06 15:40:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ads_key_unique` (`key`);

--
-- Indexes for table `ads_translations`
--
ALTER TABLE `ads_translations`
  ADD PRIMARY KEY (`lang_code`,`ads_id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `status` (`status`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `categories_translations`
--
ALTER TABLE `categories_translations`
  ADD PRIMARY KEY (`lang_code`,`categories_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities_translations`
--
ALTER TABLE `cities_translations`
  ADD PRIMARY KEY (`lang_code`,`cities_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries_translations`
--
ALTER TABLE `countries_translations`
  ADD PRIMARY KEY (`lang_code`,`countries_id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `ec_brands`
--
ALTER TABLE `ec_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_brands_translations`
--
ALTER TABLE `ec_brands_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_brands_id`);

--
-- Indexes for table `ec_cart`
--
ALTER TABLE `ec_cart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customers`
--
ALTER TABLE `ec_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_customers_email_unique` (`email`);

--
-- Indexes for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customer_password_resets`
--
ALTER TABLE `ec_customer_password_resets`
  ADD KEY `ec_customer_password_resets_email_index` (`email`),
  ADD KEY `ec_customer_password_resets_token_index` (`token`);

--
-- Indexes for table `ec_customer_recently_viewed_products`
--
ALTER TABLE `ec_customer_recently_viewed_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customer_used_coupons`
--
ALTER TABLE `ec_customer_used_coupons`
  ADD PRIMARY KEY (`discount_id`,`customer_id`);

--
-- Indexes for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_discounts_code_unique` (`code`);

--
-- Indexes for table `ec_discount_customers`
--
ALTER TABLE `ec_discount_customers`
  ADD PRIMARY KEY (`discount_id`,`customer_id`);

--
-- Indexes for table `ec_discount_products`
--
ALTER TABLE `ec_discount_products`
  ADD PRIMARY KEY (`discount_id`,`product_id`);

--
-- Indexes for table `ec_discount_product_collections`
--
ALTER TABLE `ec_discount_product_collections`
  ADD PRIMARY KEY (`discount_id`,`product_collection_id`);

--
-- Indexes for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_flash_sales_translations`
--
ALTER TABLE `ec_flash_sales_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_flash_sales_id`);

--
-- Indexes for table `ec_global_options`
--
ALTER TABLE `ec_global_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_global_options_translations`
--
ALTER TABLE `ec_global_options_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_global_options_id`);

--
-- Indexes for table `ec_global_option_value`
--
ALTER TABLE `ec_global_option_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_global_option_value_translations`
--
ALTER TABLE `ec_global_option_value_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_global_option_value_id`);

--
-- Indexes for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_invoices`
--
ALTER TABLE `ec_invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_invoices_code_unique` (`code`),
  ADD KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  ADD KEY `ec_invoices_payment_id_index` (`payment_id`),
  ADD KEY `ec_invoices_status_index` (`status`);

--
-- Indexes for table `ec_invoice_items`
--
ALTER TABLE `ec_invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`);

--
-- Indexes for table `ec_options`
--
ALTER TABLE `ec_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_options_translations`
--
ALTER TABLE `ec_options_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_options_id`);

--
-- Indexes for table `ec_option_value`
--
ALTER TABLE `ec_option_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_option_value_translations`
--
ALTER TABLE `ec_option_value_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_option_value_id`);

--
-- Indexes for table `ec_orders`
--
ALTER TABLE `ec_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_orders_code_unique` (`code`),
  ADD KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`);

--
-- Indexes for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_referrals`
--
ALTER TABLE `ec_order_referrals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_order_referrals_order_id_index` (`order_id`);

--
-- Indexes for table `ec_order_returns`
--
ALTER TABLE `ec_order_returns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_order_returns_code_unique` (`code`);

--
-- Indexes for table `ec_order_return_items`
--
ALTER TABLE `ec_order_return_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_products`
--
ALTER TABLE `ec_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_products_barcode_unique` (`barcode`),
  ADD KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  ADD KEY `ec_products_sale_type_index` (`sale_type`),
  ADD KEY `ec_products_start_date_index` (`start_date`),
  ADD KEY `ec_products_end_date_index` (`end_date`),
  ADD KEY `ec_products_sale_price_index` (`sale_price`),
  ADD KEY `ec_products_is_variation_index` (`is_variation`);

--
-- Indexes for table `ec_products_translations`
--
ALTER TABLE `ec_products_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_products_id`);

--
-- Indexes for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_attributes_attribute_set_id_status_index` (`attribute_set_id`,`status`);

--
-- Indexes for table `ec_product_attributes_translations`
--
ALTER TABLE `ec_product_attributes_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attributes_id`);

--
-- Indexes for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_attribute_sets_translations`
--
ALTER TABLE `ec_product_attribute_sets_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`);

--
-- Indexes for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  ADD KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`);

--
-- Indexes for table `ec_product_categories_translations`
--
ALTER TABLE `ec_product_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_categories_id`);

--
-- Indexes for table `ec_product_category_product`
--
ALTER TABLE `ec_product_category_product`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `ec_product_category_product_category_id_index` (`category_id`),
  ADD KEY `ec_product_category_product_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_collections_translations`
--
ALTER TABLE `ec_product_collections_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_collections_id`);

--
-- Indexes for table `ec_product_collection_products`
--
ALTER TABLE `ec_product_collection_products`
  ADD PRIMARY KEY (`product_id`,`product_collection_id`),
  ADD KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  ADD KEY `ec_product_collection_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_cross_sale_relations`
--
ALTER TABLE `ec_product_cross_sale_relations`
  ADD PRIMARY KEY (`from_product_id`,`to_product_id`),
  ADD KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_files`
--
ALTER TABLE `ec_product_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_files_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_labels_translations`
--
ALTER TABLE `ec_product_labels_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_labels_id`);

--
-- Indexes for table `ec_product_label_products`
--
ALTER TABLE `ec_product_label_products`
  ADD PRIMARY KEY (`product_label_id`,`product_id`),
  ADD KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  ADD KEY `ec_product_label_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_related_relations`
--
ALTER TABLE `ec_product_related_relations`
  ADD PRIMARY KEY (`from_product_id`,`to_product_id`),
  ADD KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_tags_translations`
--
ALTER TABLE `ec_product_tags_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_tags_id`);

--
-- Indexes for table `ec_product_tag_product`
--
ALTER TABLE `ec_product_tag_product`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `ec_product_tag_product_product_id_index` (`product_id`),
  ADD KEY `ec_product_tag_product_tag_id_index` (`tag_id`);

--
-- Indexes for table `ec_product_up_sale_relations`
--
ALTER TABLE `ec_product_up_sale_relations`
  ADD PRIMARY KEY (`from_product_id`,`to_product_id`),
  ADD KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_variations_product_id_configurable_product_id_index` (`product_id`,`configurable_product_id`);

--
-- Indexes for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_variation_items_attribute_id_variation_id_index` (`attribute_id`,`variation_id`);

--
-- Indexes for table `ec_product_views`
--
ALTER TABLE `ec_product_views`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  ADD KEY `ec_product_views_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_with_attribute_set`
--
ALTER TABLE `ec_product_with_attribute_set`
  ADD PRIMARY KEY (`product_id`,`attribute_set_id`);

--
-- Indexes for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  ADD KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  ADD KEY `ec_reviews_product_id_customer_id_status_index` (`product_id`,`customer_id`,`status`);

--
-- Indexes for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_tax_products`
--
ALTER TABLE `ec_tax_products`
  ADD PRIMARY KEY (`product_id`,`tax_id`),
  ADD KEY `ec_tax_products_tax_id_index` (`tax_id`),
  ADD KEY `ec_tax_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_wish_lists`
--
ALTER TABLE `ec_wish_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_wish_lists_product_id_customer_id_index` (`product_id`,`customer_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs_translations`
--
ALTER TABLE `faqs_translations`
  ADD PRIMARY KEY (`lang_code`,`faqs_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_categories_translations`
--
ALTER TABLE `faq_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`faq_categories_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`),
  ADD KEY `media_files_index` (`folder_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`),
  ADD KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `reference_type` (`reference_type`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_category_sale_commissions`
--
ALTER TABLE `mp_category_sale_commissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`);

--
-- Indexes for table `mp_customer_revenues`
--
ALTER TABLE `mp_customer_revenues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_customer_withdrawals`
--
ALTER TABLE `mp_customer_withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_stores`
--
ALTER TABLE `mp_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mp_stores_translations`
--
ALTER TABLE `mp_stores_translations`
  ADD PRIMARY KEY (`lang_code`,`mp_stores_id`);

--
-- Indexes for table `mp_vendor_info`
--
ALTER TABLE `mp_vendor_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_user_id_index` (`user_id`);

--
-- Indexes for table `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD PRIMARY KEY (`lang_code`,`pages_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `author_type` (`author_type`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `posts_translations`
--
ALTER TABLE `posts_translations`
  ADD PRIMARY KEY (`lang_code`,`posts_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD KEY `post_categories_category_id_index` (`category_id`),
  ADD KEY `post_categories_post_id_index` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD KEY `post_tags_tag_id_index` (`tag_id`),
  ADD KEY `post_tags_post_id_index` (`post_id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slugs_reference_id_index` (`reference_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states_translations`
--
ALTER TABLE `states_translations`
  ADD PRIMARY KEY (`lang_code`,`states_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD PRIMARY KEY (`lang_code`,`tags_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ec_brands`
--
ALTER TABLE `ec_brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_customers`
--
ALTER TABLE `ec_customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ec_customer_recently_viewed_products`
--
ALTER TABLE `ec_customer_recently_viewed_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ec_global_options`
--
ALTER TABLE `ec_global_options`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ec_global_option_value`
--
ALTER TABLE `ec_global_option_value`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_invoices`
--
ALTER TABLE `ec_invoices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `ec_invoice_items`
--
ALTER TABLE `ec_invoice_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `ec_options`
--
ALTER TABLE `ec_options`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_option_value`
--
ALTER TABLE `ec_option_value`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_orders`
--
ALTER TABLE `ec_orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `ec_order_referrals`
--
ALTER TABLE `ec_order_referrals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_returns`
--
ALTER TABLE `ec_order_returns`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_order_return_items`
--
ALTER TABLE `ec_order_return_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_products`
--
ALTER TABLE `ec_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_files`
--
ALTER TABLE `ec_product_files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `ec_product_views`
--
ALTER TABLE `ec_product_views`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;

--
-- AUTO_INCREMENT for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_wish_lists`
--
ALTER TABLE `ec_wish_lists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `mp_category_sale_commissions`
--
ALTER TABLE `mp_category_sale_commissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mp_customer_revenues`
--
ALTER TABLE `mp_customer_revenues`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `mp_customer_withdrawals`
--
ALTER TABLE `mp_customer_withdrawals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mp_stores`
--
ALTER TABLE `mp_stores`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mp_vendor_info`
--
ALTER TABLE `mp_vendor_info`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5406;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
