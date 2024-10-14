-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2024 at 08:31 PM
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
-- Database: `customer_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = active and 0 = in active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HP', 'admin/image/brand/42.png', 1, '2024-06-05 05:54:48', '2024-06-05 05:54:48'),
(2, 'Nike', 'admin/image/brand/927.jpg', 1, '2024-06-05 05:54:58', '2024-06-05 05:54:58'),
(3, 'Easy', 'admin/image/brand/873.jpg', 1, '2024-06-05 05:55:11', '2024-06-05 05:55:11');

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
('c525a5357e97fef8d3db25841c86da1a', 'i:1;', 1718196668),
('c525a5357e97fef8d3db25841c86da1a:timer', 'i:1718196668;', 1718196668),
('eef95f658febcee12b41ea8ec1bace29', 'i:1;', 1726325342),
('eef95f658febcee12b41ea8ec1bace29:timer', 'i:1726325342;', 1726325342);

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = active and 0= in active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Dress', 'admin/image/category/1012357763.jpg', 1, '2024-09-13 12:12:52', '2024-09-13 12:12:52');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Black', '#000000', 'Black', '2024-06-05 05:56:17', '2024-06-05 05:56:17'),
(2, 'Red', '#ff0000', 'Red', '2024-06-05 05:56:40', '2024-06-05 05:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_of_birth` text DEFAULT NULL,
  `blood_group` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `nid` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `password`, `date_of_birth`, `blood_group`, `image`, `nid`, `address`, `created_at`, `updated_at`) VALUES
(14, 'Zarif', 'zarif@gmail.com', '1233', '$2y$12$V3ZId/C0neoRUmtN1/9MUel5pT8lAHtP9tX4CM05jbYgxvXPIVAQa', NULL, NULL, NULL, NULL, NULL, '2024-09-14 07:55:42', '2024-09-14 07:55:42');

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
(4, '2024_04_22_135103_add_two_factor_columns_to_users_table', 1),
(5, '2024_04_22_135141_create_personal_access_tokens_table', 1),
(6, '2024_04_27_144132_create_categories_table', 1),
(7, '2024_05_04_122222_create_sub_categories_table', 1),
(8, '2024_05_06_123741_create_brands_table', 1),
(9, '2024_05_11_122920_create_products_table', 1),
(10, '2024_05_12_083630_create_reviews_table', 1),
(11, '2024_05_15_123140_create_product_images_table', 1),
(12, '2024_05_20_131910_create_customers_table', 1),
(13, '2024_05_29_123457_create_units_table', 1),
(14, '2024_05_29_141910_create_product_colors_table', 1),
(15, '2024_05_29_141927_create_product_sizes_table', 1),
(16, '2024_06_01_130038_create_colors_table', 1),
(17, '2024_06_01_130044_create_sizes_table', 1),
(18, '2024_06_08_112701_create_orders_table', 2),
(19, '2024_06_08_112708_create_order_details_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `courier_id` int(10) NOT NULL DEFAULT 0,
  `order_total` int(11) NOT NULL,
  `tax_total` int(11) NOT NULL,
  `shipping_total` int(11) NOT NULL,
  `order_date` text NOT NULL,
  `order_timestamp` text NOT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `delivery_address` text NOT NULL,
  `delivery_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `delivery_date` text DEFAULT NULL,
  `delivery_timestamp` text DEFAULT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `payment_date` text DEFAULT NULL,
  `payment_timestamp` text DEFAULT NULL,
  `currency` varchar(255) NOT NULL DEFAULT 'BDT',
  `transaction_id` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `courier_id`, `order_total`, `tax_total`, `shipping_total`, `order_date`, `order_timestamp`, `order_status`, `delivery_address`, `delivery_status`, `delivery_date`, `delivery_timestamp`, `payment_method`, `payment_status`, `payment_date`, `payment_timestamp`, `currency`, `transaction_id`, `created_at`, `updated_at`) VALUES
(25, 14, 0, 270748, 35302, 100, '2024-09-14', '1726272000', 'Pending', 'Adabor', 'Pending', NULL, NULL, 'Cash', 'Pending', NULL, NULL, 'BDT', NULL, '2024-09-14 07:55:53', '2024-09-14 07:55:53');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_qty` varchar(255) NOT NULL,
  `product_color` varchar(255) NOT NULL,
  `product_size` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_code`, `product_price`, `product_qty`, `product_color`, `product_size`, `created_at`, `updated_at`) VALUES
(17, 25, 11, 'Sharee', '1', '235346', '1', 'Black', 'Standard', '2024-09-14 07:55:53', '2024-09-14 07:55:53');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` text NOT NULL,
  `code` varchar(255) NOT NULL,
  `regular_price` float NOT NULL,
  `selling_price` float NOT NULL,
  `stock_amount` int(11) NOT NULL,
  `short_description` text NOT NULL,
  `long_description` longtext NOT NULL,
  `sales_count` int(11) NOT NULL DEFAULT 0,
  `hit_count` int(11) NOT NULL DEFAULT 0,
  `featured_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 = featured and 0= not featured',
  `image` text NOT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = active and 0= inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `slug`, `code`, `regular_price`, `selling_price`, `stock_amount`, `short_description`, `long_description`, `sales_count`, `hit_count`, `featured_status`, `image`, `meta_title`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(11, 6, 11, 3, 1, 'Sharee', 'sharee', '1', 2423460, 235346, 2143, 'Sharee', '<div class=\"ULSxyf\" style=\"margin-bottom: 44px; color: rgb(31, 31, 31); font-family: Arial, sans-serif; font-size: medium;\"><div class=\"MjjYud\"><div class=\"EyBRub\"><div jsmodel=\"Wn3aEc\" class=\"Lv2Cle\" data-count=\"9\" data-iu=\"1\" data-hveid=\"CAsQAQ\" data-ved=\"2ahUKEwj0ut7YxcCIAxX0h1YBHYLMMZsQyA0oAHoECAsQAQ\" style=\"position: relative;\"><g-section-with-header class=\"yG4QQe TBC9ub\" style=\"display: block; margin: 0px;\"><div class=\"e2BEnf U7izfe hWIMdd EQdXxd O2pKub\" style=\"padding: 0px 0px 8px; font-size: 20px; line-height: 1.1818; font-family: &quot;Google Sans&quot;, Arial, sans-serif; display: flex;\"><a class=\"a-no-hover-decoration O7G3Gd\" href=\"https://www.google.com/search?sca_esv=48020411f2417def&amp;sca_upv=1&amp;sxsrf=ADLYWIJ-IEEdnKZcUjSRN3Eja7jZZj05vw:1726251963757&amp;q=sharee&amp;udm=2&amp;source=univ&amp;fir=pZnzQkxEdAZvmM%252C5XRfizPZIQepIM%252C_%253BSO_b3gao-tNuSM%252Cx-cMZubv5FXIOM%252C_%253BxBrJd3lQuMjN9M%252CUNi0EaKyqbXuzM%252C_%253BokzCf8VnYOjEvM%252ClbMIpnl5hI1h4M%252C_%253BxrfYsv2BfvucfM%252CNf8_SGeGZoEKsM%252C_%253B7U5lCOZW7SuCOM%252CvNz6Wd2tka4LhM%252C_%253BK0nSiUtZLRKeiM%252C0i24-2B7EIMbLM%252C_%253BQEoG17w1aQKSqM%252CcKi-hIilmF7f1M%252C_%253Bvov8er9XjVZx8M%252CfEq_IHy2XGTiuM%252C_&amp;usg=AI4_-kTiNekDNJN9pCJEgV6WOT2ccRkklw\" style=\"color: rgb(32, 33, 36); -webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); outline: 0px;\"><span class=\"GCkZZe\" style=\"display: inline-block; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 24px; line-height: 28px; font-family: &quot;Google Sans&quot;, Arial, sans-serif-medium, sans-serif; letter-spacing: -0.09px; margin: 8px 0px 12px;\">Images</span></a><div class=\"ouRJZc\" style=\"margin-top: 12px; display: inline-block; position: relative; top: 1px;\"><div jscontroller=\"gOTY1\" data-id=\"atritem-\" jsdata=\"PFrTzf;_;BKkSMA\" data-viewer-group=\"1\" jsaction=\"rcuQ6b:npT2md;aevozb:T2P31d;vcOT6c:C6KsF;k7WJpc:beCLof\"><div jsdata=\"l7Bhpb;_;BKkSME\" jscontroller=\"PbHo4e\" jsshadow=\"\" jsaction=\"rcuQ6b:npT2md;h5M12e;jGQF0b:kNqZ1c;\" data-viewer-entrypoint=\"1\" data-ved=\"2ahUKEwj0ut7YxcCIAxX0h1YBHYLMMZsQ2esEegQICxAC\"><div jsslot=\"\"><div jsname=\"I3kE2c\" class=\"mTcd iTPLzd rNSxBe eY4mx lUn2nc\" aria-label=\"About this result\" role=\"button\" tabindex=\"0\" style=\"padding-bottom: 20px; padding-left: 12px; padding-right: 0px; top: 0px; line-height: 16px; left: 0px; width: 28px; z-index: 1; outline: 0px;\"><span jsname=\"czHhOd\" class=\"D6lY4c mBswFe\" style=\"height: 22px; width: 22px; position: absolute; border-radius: 11px;\"><span jsname=\"Bil8Ae\" class=\"xTFaxe z1asCe\" style=\"display: inline-block; fill: currentcolor; height: 18px; line-height: 18px; position: relative; width: 18px; top: 2px; color: rgb(77, 81, 86);\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z\"></path></svg></span></span></div></div></div></div></div><div class=\"VCLBnf NnEaBd\" style=\"text-align: right; flex: 1 1 0%; margin-top: 6px; margin-left: 10px; padding-bottom: 0px;\"></div></div><div id=\"iur\"><div jsmodel=\"\" jscontroller=\"LdB9sd\" data-ivep=\"true\" jsaction=\"PdWSXe:h5M12e;rcuQ6b:npT2md;\" jsdata=\"X2sNs;_;BKkSMM\"><div data-nr=\"1\" data-ved=\"2ahUKEwj0ut7YxcCIAxX0h1YBHYLMMZsQxDAoAHoECAsQBA\" style=\"margin-right: -20px; margin-bottom: -20px;\"><div jsname=\"dTDiAc\" class=\"eA0Zlc WghbWd FnEtTd mkpRId RLdvSe ivg-i PZPZlf GMCzAd\" jsdata=\"j0Opre;pZnzQkxEdAZvmM;BKkSMY\" jscontroller=\"Um3BXb\" data-attrid=\"images universal\" data-docid=\"pZnzQkxEdAZvmM\" data-ivep=\"true\" data-lpage=\"https://www.othoba.com/georgette-embroidery-sharee-with-blouse-piece-203514\" data-ref-docid=\"5XRfizPZIQepIM\" jsaction=\"rcuQ6b:npT2md;tuz4af:RrAr1;nptbHe:XEuVS;h5M12e;qWWJ8e:.CLIENT\" data-hveid=\"CBoQAA\" data-ved=\"2ahUKEwj0ut7YxcCIAxX0h1YBHYLMMZsQ9AF6BAgaEAA\" style=\"vertical-align: top; display: inline-flex; margin: 0px 20px 20px 0px; position: relative; cursor: pointer; overflow: unset; background: none; border-radius: 12px; flex-direction: column; width: 204px;\"><div jsname=\"qQjpJ\" class=\"czzyk XOEbc\" role=\"button\" tabindex=\"0\" style=\"outline: 0px; border-radius: 12px; overflow: hidden; position: relative;\"><div><div data-bla=\"\" class=\"uhHOwf BYbUcd\" style=\"position: relative; overflow: hidden; height: 192px; width: 204px;\"><img alt=\"Georgette Embroidery Sharee with Blouse Piece\" id=\"dimg_u4PkZrTxLfSP2roPgpnH2Qk_1\" src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAKwAtwMBIgACEQEDEQH/xAAcAAEAAgIDAQAAAAAAAAAAAAAABQYDBwEECAL/xABEEAABAwIDBQQGBggEBwAAAAABAAIDBBEFEiEGEyIxQRQyUXEHQmGBkaEjM1JigvAVNHKxssHC0QgkQ+ElJjVjkpOj/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAIDBAEF/8QAJBEBAQACAQQCAgMBAAAAAAAAAAECEQMEEiExIkEzYRMyUSP/2gAMAwEAAhEDEQA/AN4oiICIiAiIgIijscrW4bg9bWudbs9O+XXxaCRy1+CCr7aekOh2edJRUbO2Yk2149ckd/tEdba2GvK9rrWE3pU2rlqXO/SENNm7scdO3I33uBPxKi8HoMU2sr55M3rZp6h/IXPh1J525K4t9GuFshzS1NRNL6zswaPgBf5lV58kxXYcNym1s9Gu2s+P08lLi7qdtdHZ0ZY4NMrT92/MactDcGwV+XmvHsFbhWJZpWukic0ub4gjkQT1vb4rdXo2xCrxLZKmnrnOke1742yOvd7WuIBN+uhB8lPG7m0M8e26WtERdQEREBERAREQEREBERAREQEREBERAUTtTQfpTZvE6INzPnpntY3Nbiy8OvTWyllwUGkcEhxbCNlaN2GUkm9qJXunc1rbss4gNIIJPIdPerDXVWKfoqLdOc2pc45sjBqB7CDa9xy5KXxMOw2sngia1zXPL2t89Tp5kqJmxvNDE7K3dZg1sm6fcnwtbmfDz0WLO+XqceO8ZpA4xFW1+zDquuptzU0jg5rnOuXguAPtHPrrp4LZOwkMEGy1CKfeZXNc92855i4k+697eyyqGI1O9y01Q3LvJWtytubm97aa8g46eCvWy8W52fooi3KGMytHsBIHysruG7jL1Mkv7S6IivZRERAREQEREBERAREQEREBERAREQEXyXtWCSdrMv3vW6X6X8/H+6CHx+ihjidVwt/zLnjmTxWvp81U5qykY9zuyObP/PzVmxF8nad5VZm+q1v9uh5HkouqpoH8X8Wn71g5ct3xNPR6fLtx8184ThENfSVFbKx0lSInbhuY8JI5gDroBfz8dbvTiNsETYvqwwZPK2nyVRoC6KaJ1O52WP1WNOvjy5jQf7qxU9XHS08bavLBzytcRoOgAHQCwWjgy3PTLzz5bSSLDFURTj6KRrv2SsyvUCIiAiIgIiICIiAiIgIiICIiAsNTM2CF0j+61ZVEY1IxzHQyta5uXia5twb+I+COybunaoZW1TJJGuzNz8PlYEfvWZ0DcnH71UqPE6mlqZ6aLdu3zw9rXNOnQ9RpbL81YpKvssP+dkjMnPg0A8yfd7deS7L42lnNV99nycMM00bfstII+BBsPYLLq1b2s4Xz7x7f+01zh8gB5myicSx6b6dtO128jaHOj4gSDexaALuuQQO6CdPFQWL10DP+p4g2no6pgfS1LnM4Ha9LZe6QRe4Nje+gdzw5ImKvGGxU0sr6tzYInZX5HtGTS5JcAABbXrYdQF0J6ifPO1kfFC4P4bnex3N9SNTo4ePK/PSkV/pIoYpmz0VFJUSyRGKobK4tYbHQgm5tcuPK5vrroqZiW1WM4kyBstW6NsMTom7pxaS02BDje50a3n4X56rncvx6fPL602fVbW4XgMzpO2umk4amnbA7NdrrAtBGhHXU9eRDQBsHZPaWg2ow41mHvPC8sfG4WcwgkAkeBAuP7grys0NVx9E20DsG2ypI3yZaattSyt6XN8h8w6w9gcVzafJ00xw3Pb0siIpMYiIgIiICIiAiIgIiICIiDglVLEpqmWpY7K1sTmlz+LUGx5CxuBwjp19insadM3DJ+zODZnDKxx+fyuqZVVXYqDLLI3NG31dbC5tryuLa26jpyHL6T4978I6imkl2wzMc7dUlPmfI29gCRla4joTrrzDSF362d1fM6KVztxUscxrn2BimF7jqSSMx5DLlIPMW7WC4butjaytfF9LX2nc3xiBGVvtBaCfxFap9Ie0LuLBKKTeNka3tWZneIyva5p9osSNenJPUSvyyTm0G3EdBuOwtbJitPKYKhr2ktIFwTcAczYgXuCTfqtc1uIVNfM6Wonc7M9z2tzHKwuNzlHIDly8B4LqsZ9v1u87xK5UXocHFMZvQ9YifVWR3cWO3e+9w/wB0X5Vy1csc7tLZGO3bmuzNd1B6HzC+Je5+z+f7L6b9S37XeXFUu7p6x2XxZuN7PYfiQtmqYGueB6r7WcPcQR7lLLVvoExbtWz9bhj3cVFUZ2N+yx9z/EHn3raSnHl8mPblY5REXUBERAREQEREBERAREQQW0cukUO8dG113Oczn4aHp5quVuzmH1rHZHTb2RuXM2d5dYeJJIt7vJTu1mCVOLwxvoKlkFRFfR98rwehI1Govex66KpskxbBppW4rTOj5ZZubCPY4ae42PLRRyy1Nr+Ltvj7Xc1VPLQupHN7PmiMbeG7RpbQ25D2gLy7W0lf2yepxikqKWSolc52/idGLkk2BIC3zFtE37qyTbQUm5c1+Xi4e916eao/mX48XbdxoCRrWcOVzeXC5ttCNP5FYSFveDCMNxrirY45omtDt27S5JuMx62tf3+y6VOAbPU8LsmBULun6q1zjfS1yLjzXZyTTTOW/wCNDngZ+fYsVvV+z/Pmtr1ewOz8r5+z1NVTujdndHnDsgA7oBBNutzfzWSDZbZ2lhli7NHJLlP0j6eSV97WJAJI7wdoAeXW6sxvd6Q5OeY+NNOyPzM4fWd8un8llg4PWcvuaOJj3bp2aLNwuy2uL6G1zbTpcrGRxrrsx1d1tD0B1OTa3EKbN9dQl/mWvaB8nFb6XmP0UVTqL0kYVxZWzOfE72gsdYfEBenFKMPUfkrlERdUCIiAiIgIiICIiAiIgLghcog1x6ZjR4bsXPLT00MNXUzRwMmZEA8XOY2IFxwtctI7P4Zim0FcI6erkjbCQ99RPMcsPMg8ySeEkAeHTmtof4g6/hwbDGnrJUP9wyt/e74LUmER0zq+KPEJJI6Nzvp8hN3ga5bjoSBr05qvK+Wvi494bbqwSKh7Plp6uasyi09a15ja8jmQGkAm/QXtqL6WXdlNTEzK90k0WXvaZ2+x3K46X5jr4qsv2twWmhgj7RDC1rLRQxt4YY28iR1J0sBrr+JVTH/SFW1WamwX6GPXNUvaN4/XpzAHxPkqOy2tHfMZpsqmq4qqp7Nu943V3TMzTW/W4uBfqHDzWKOryZo343QQ8H1b2WLBmA1uW6CzW6jnY9daz6LcGrqDEp66ukbI6voRLG4vJOtjd5I0JB9umbwVyhNTwtibQZWsy5dBbU87aX539pHiFoxx7Zpi5M+7JonFi5+IVmeobUOdK5zp2tAEhJJLhbSxNzpp4aLqSj1mKQ2hD4sert7uWu3xDmwdwHwH++t731Ud/oo9DG7iS2aqBS7WYHUF2Xd10LneWdt/ldeuV4xke6Ldysdlc2zmu9o1HzC9kwSNlhjkb3ZGhw94upRi6n+22VERdZhERAREQEREBERAREQEREHnD0wYj2/busjbxNpImU7fDRuY/NxHu9qpTw2Jn3nfn4ruY5XOqsbxCrd3qiqkldm6XcSB5DRRnFK/M9UXzXq4ztxk/ThjN6/u/hatn7F7JSYaxuJVETv0hDf/ACj2tIc0g6NPK5AJve2hBtqo/YfZqLctxbE4G1FDI1zGuie/NC4OsHEAXsCCLgmxIOgBc3Y0cFTLlgqHbx0Ls0FW1uuUkcLh1NmgG1r3BGXk2zGMvNya+MdPCGt/TDp6FuahkpTlby3Mhdq0jmCeLQ2sWkc9G5JKPe1OZ+DUUzczm757ruIyjXUHQ2sbH1R464qTFaSoxvslJFmi7O5zqhtrE5m6CwFwbkk6aAAdA37fHA6pld+j8Tkc57nbxk4a03Y0FwGYaaBuguHNPjdSZ2m9roHU+0Nc19NHS/S8MMbg5oBAIII6Ea8ha9rDkIlo7zfxKc2yhii2hrGxQVELc5du6l13XJJJvc3B5g3PNQd+P8Kh9vQw9Svh/wBT+fz1XrPYup7ZsjgtSe9JQQl3nkF/ndeTPU/P56L036IKrtXo7whx5xtfF/4vcB8gFKM/U+ZKuaIikyCIiAiIgIiICIiAiIgIi4KDzHtvs9LSVMtbC1u6kdmc1jr5LgkG3QEAke8dCB1djcDdiuJNa+Xcta0ubI6IuZmFiGHUC5Fza97A+NxsjFaemrameOol3dHS07HSyRNGoBz9dAR9KCfB4tfQLjZvDY6DDdxTwTTQVDw6qp35c8UjrCwIDRoMo6crjwMLj5av5r2a+01RNz1LnRN7PK3hqI8t2PAsA6/K5ytLTe+U2IuOGCxnE2y03YsMyw4fHw5mabzS1hY6t569fLnLYxLuqBtJvd46ThdJ9sAak+IPIey3jZVmtf6rO61XY4/dUSM2zDf+PQfev8rH+lTUskTalzZavEWudK/hgpzI0cIGhDXAAgE2PrdNdILZt3/MmH/tu+THH+SslRVbqZrX4pRU/EcscrQXAZuQN231be+vdPsvHL2X21Bts6N+0lS6Keom5ZnTsLXXtqLEA25W0Hv7xr4+u/CrLt7JK/aGVz6unq+BrWyQMytaNeG2utyTzPeHLuisn65v7Kqr0Mf64vlw7y9AegCqM+xlTC7/AEK57W+Ra1373FaBlW5/8OlS50GPUnqMfDK38QeD/CFKKupnxblREUmEREQEREBERAREQEREBERBqPaKB0sNThbqSR3aK0xOy6Z4Wuu4F1xoWtOg10AuBqpCgHG6eXic1uVkzub2nle3gL/EkAXss+10Lo9p3u7sZpA8O5ZXF2UkEakAA3A+3qunO9tLQOdlbG513ubmJ1NuV+fT4HRSxm6k6GIVG9qZZPVb9E3x8T88vzUJUvXdrH7qFsX2W5n+wnnc+KiZpM35/krLU47Gz82TarCm/ame3/5PV1tU5/om0uXNxZ+9zN7gaH1eetr9LqpbNYRUy7VUbt25vZGOqnyObcBti0AdCSXfAFWipom1FTmlwanqMsrcs0rrnTNyuOgPP7x81TUb7ap9ITZGbSS71tO126Z9R5etp3v6cqqkh42q1+kGn7Pj2VmHx0LXRNytZaz7aF1gLA30t92/VVSQcbVXXoY/jj6mW1f8O87W4vjMHryU8b/c1xB/iC1ZIOBXn0F1XZ9vo43u/WaSWJvtIs/9zSuxDqJ8a9IIiKbzxERAREQEREBERAREQEREFY22p89NTT5e64xu4bmxF/6fmqdi7sk0UD8vfOfw0uSNNed+XiVfdrJuz4DLUBjXuiIc0Ova4PsIPwK1ziDpavFKgGUxuA77GtJ7hHrAjnry5jw0U8bpLEGGSVsM9S+KR30T208bGnMZbMLdB0IeT5Am9lBxYfUvfBnbuYJnDLUSsJjvewDiLgAkW15c7KzYtXTUOF001OQ17hkNrgFre6CBoQN47mOgveygqwmn2Vw18ZOaWGqncSeRa8gAeDdLkdTzXLXdthbJ0DotnKzEKnimrWOLfuQtByNHs1LvxKCqY4v0lK58Fe5zXx8UEpjZoX2FgQDa5uNbhw00V/niZFgckUYysbTFrQOgy2VBqGTzYlUbuuqKdrZWcEWUtPDc6OaeeaxtbQBRRjVvpCjiZjbd1FWN+iH6490h9liSSR77XvoqnIc72q4ekxk8OOxwz1tRV2pmPD58txmLr6NAHQdL+JKph77VXXpYX/nHY9RTno1quxbfYJK52XNUiL/2NLP6lBNWbBJHQ49hkjO9HWROb5h4SJc83i9hIuAuVY8oREQEREBERB//2Q==\" data-csiid=\"u4PkZrTxLfSP2roPgpnH2Qk_3\" data-atf=\"1\" style=\"transition: transform 200ms; display: block; height: 192px; width: 204px;\"></div></div><div jsname=\"tdeeNb\"></div></div><div class=\"juwGPd OCzgxd\" jscontroller=\"N8Q1ib\" jsaction=\"h5M12e\" style=\"display: flex; flex: 1 1 0%; position: relative;\"><a class=\"EZAeBe\" href=\"https://www.othoba.com/georgette-embroidery-sharee-with-blouse-piece-203514\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://www.othoba.com/georgette-embroidery-sharee-with-blouse-piece-203514&amp;ved=2ahUKEwj0ut7YxcCIAxX0h1YBHYLMMZsQh-wKegQIGhAD\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); display: flex; flex: 1 1 0%; flex-direction: column; min-width: 0px; padding: 8px 4px 4px; width: 0px; outline: 0px;\"><div class=\"JMWMJ\" style=\"display: flex;\"><div class=\"toI8Rb OSrXXb usbThf\" style=\"overflow: hidden; text-overflow: ellipsis; font-family: &quot;Google Sans&quot;, Arial, sans-serif-medium, sans-serif; font-size: 14px; line-height: 18px; margin-bottom: 4px; word-break: break-all; display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 1;\">Georgette Embroidery Sharee with Blouse Piece</div></div><div class=\"Xxy7Vb\" style=\"display: flex; height: 16px;\"><div class=\"BtwlAd\" style=\"display: flex; flex-direction: column; justify-content: center; margin-right: 6px;\"><g-img style=\"display: block; height: 16px; width: 16px;\"><img id=\"dimg_u4PkZrTxLfSP2roPgpnH2Qk_8\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAMAAADXqc3KAAAA2FBMVEVHcEz0+/zi6+7s7e2qqqq3traAzfTZ8vjn9/zm6+xWve/c3Nzu9/nFx8djxPMIp/LF5vXb4+fn5+eU1vZra2pyx/S2trZxx/Jlw/Mqr+63uLio3vljxPOXl5dGufDB2+ma2PcXrO4mru/DxMMtsO+ko6KZmZia2faU1PW45fmIkpWj2vJZwPQAru8Bq+5+fX2DgoI2tPBSvfN4d3eI0/YApu7B6fluyPQYre+MjIuu4viYmJfg7/XP6/YCnO0iru6np6b7/f2c2vbJ4evr9vnMzc3T09Ha2toJIEWkAAAALXRSTlMAIWNS8v38CBRCc9Qy+SdIibB1tP7m2k6n4Y9E+qfarars0La5/drQebuP3Or6vObyAAABUElEQVQokWWS6XaCMBSE2SEKrah112OP3VuzsAYBAUV9/zdqgkLVzs/5zp3cZCIItXTd0HXhXropdZa93vJjatz4YuddcwillCxGw6sxYGsEcq0hpONWQ8DnjHkXQfhcE3GUbRufo/HwfG5r5nkEXiH48sDB9Ht/OKYhbKLqMMmKXFdNHVi5fkYIodVIV3URQocdZT6ZabtNEGgLDiQFYYzUgEDf8Zg0bRP8PDIgVyDfOxCSbMtFNk81QDjeO/46c0KPJaVJBSSVTeBqImRBYRju0jOwMI9ia2UZ9Jmos+nxw0E7ZllsX+YRlsXWSjr8HkZXOW9FQ2YlSVGe2qB6E8OOEbLKoCwTK8d5cex/XUox7chVi6J47fdd5MbuvClLbsdRlJ9ivh5Gc/GvKdlWoihiT4Ojt8l1ubrZXQ0GijJYTcBt6YJumEAGQPz/T+71C+eQP2bM3i3bAAAAAElFTkSuQmCC\" class=\"YQ4gaf zr758c\" height=\"16\" width=\"16\" alt=\"\" data-csiid=\"u4PkZrTxLfSP2roPgpnH2Qk_4\" data-atf=\"1\" style=\"display: block; border: 0px;\"></g-img></div><div class=\"ptes9b\" style=\"margin-right: 20px; overflow: hidden;\"><div class=\"guK3rf cHaqb\" style=\"overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; font-size: 12px; height: 16px; line-height: 16px;\">Othoba.com</div></div></div></a><div class=\"RqYIAf\" style=\"bottom: 4px; position: absolute; right: -20px;\"><div jscontroller=\"gOTY1\" data-id=\"atritem-https://www.othoba.com/georgette-embroidery-sharee-with-blouse-piece-203514\" jsdata=\"PFrTzf;_;BKkSMA\" data-viewer-group=\"1\" jsaction=\"rcuQ6b:npT2md;aevozb:T2P31d;vcOT6c:C6KsF;k7WJpc:beCLof\"><div jsdata=\"l7Bhpb;_;BKkSMc\" jscontroller=\"PbHo4e\" jsshadow=\"\" jsaction=\"rcuQ6b:npT2md;h5M12e;jGQF0b:kNqZ1c;\" data-viewer-entrypoint=\"1\" data-ved=\"2ahUKEwj0ut7YxcCIAxX0h1YBHYLMMZsQ2esEegQIGhAE\"><div jsslot=\"\"><div jsname=\"I3kE2c\" class=\"mTcd iTPLzd rNSxBe eY4mx lUn2nc\" aria-label=\"About this result\" role=\"button\" tabindex=\"0\" style=\"padding-bottom: 20px; padding-left: 12px; padding-right: 3px; top: 0px; line-height: 16px; left: 0px; width: 28px; z-index: 1; outline: 0px;\"><span jsname=\"czHhOd\" class=\"D6lY4c mBswFe\" style=\"height: 22px; width: 22px; position: absolute; border-radius: 11px;\"><span jsname=\"Bil8Ae\" class=\"xTFaxe z1asCe\" style=\"display: inline-block; fill: currentcolor; height: 18px; line-height: 18px; position: relative; width: 18px; top: 2px; color: rgb(77, 81, 86);\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z\"></path></svg></span></span></div></div></div></div></div></div></div><div jsname=\"dTDiAc\" class=\"eA0Zlc WghbWd FnEtTd mkpRId RLdvSe ivg-i PZPZlf GMCzAd\" jsdata=\"j0Opre;SO_b3gao-tNuSM;BKkSMU\" jscontroller=\"Um3BXb\" data-attrid=\"images universal\" data-docid=\"SO_b3gao-tNuSM\" data-ivep=\"true\" data-lpage=\"https://rang-bd.com/product/womens-sharee-181/\" data-ref-docid=\"x-cMZubv5FXIOM\" jsaction=\"rcuQ6b:npT2md;tuz4af:RrAr1;nptbHe:XEuVS;h5M12e;qWWJ8e:.CLIENT\" data-hveid=\"CBsQAA\" data-ved=\"2ahUKEwj0ut7YxcCIAxX0h1YBHYLMMZsQ9AF6BAgbEAA\" style=\"vertical-align: top; display: inline-flex; margin: 0px 20px 20px 0px; position: relative; cursor: pointer; overflow: unset; background: none; border-radius: 12px; flex-direction: column; width: 204px;\"><div jsname=\"qQjpJ\" class=\"czzyk XOEbc\" role=\"button\" tabindex=\"0\" style=\"outline: 0px; border-radius: 12px; overflow: hidden; position: relative;\"><div><div data-bla=\"\" class=\"uhHOwf BYbUcd\" style=\"position: relative; overflow: hidden; height: 192px; width: 204px;\"><img alt=\"Women\'s Sharee\" id=\"dimg_u4PkZrTxLfSP2roPgpnH2Qk_2\" src=\"data:image/jpeg;base64,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\" data-csiid=\"u4PkZrTxLfSP2roPgpnH2Qk_5\" data-atf=\"1\" style=\"transition: transform 200ms; display: block; height: 192px; width: 204px;\"></div></div><div jsname=\"tdeeNb\"></div></div><div class=\"juwGPd OCzgxd\" jscontroller=\"N8Q1ib\" jsaction=\"h5M12e\" style=\"display: flex; flex: 1 1 0%; position: relative;\"><a class=\"EZAeBe\" href=\"https://rang-bd.com/product/womens-sharee-181/\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://rang-bd.com/product/womens-sharee-181/&amp;ved=2ahUKEwj0ut7YxcCIAxX0h1YBHYLMMZsQh-wKegQIGxAD\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); display: flex; flex: 1 1 0%; flex-direction: column; min-width: 0px; padding: 8px 4px 4px; width: 0px; outline: 0px;\"><div class=\"JMWMJ\" style=\"display: flex;\"><div class=\"toI8Rb OSrXXb usbThf\" style=\"overflow: hidden; text-overflow: ellipsis; font-family: &quot;Google Sans&quot;, Arial, sans-serif-medium, sans-serif; font-size: 14px; line-height: 18px; margin-bottom: 4px; word-break: break-all; display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 1;\">Women\'s Sharee</div></div><div class=\"Xxy7Vb\" style=\"display: flex; height: 16px;\"><div class=\"BtwlAd\" style=\"display: flex; flex-direction: column; justify-content: center; margin-right: 6px;\"><g-img style=\"display: block; height: 16px; width: 16px;\"><img id=\"dimg_u4PkZrTxLfSP2roPgpnH2Qk_7\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAMAAADXqc3KAAAAn1BMVEVHcEz///b///X///X///X///X///b+/fP///X///X///bd3db///np7+3w8Of///X///n99uv3zsn739n86+XnvLH///7T0szr7t7hrKbu8uXtXFn1lI3sw73zcm/emJP/46r0qqb5ubXY6bzrPD3h59361YPoCgz+5MCj0m7C4ZPAwLzOc3C6zt/DsYqJstjH3aP+u0LOHx+wzLeFxi3OjcNuAAAAD3RSTlMA5J/sK2Id/gSwWP1u8lgbf4qwAAABXklEQVQokU1S2XLCMAx0SBPngEryEZz7ToC200L7/99WkwSGtUcPuqUVYwsC3wsdDk7o+QF7wdsOLPhdwO7tqQ6iw9gnAHK1utEWFOwPX98XIpS4hvH9aok4fv9eTM8JCJcgHi353awfz/1Zn6akaJKlkmvrBDskc/k7n82paaafHtcOAuZzJSn56aWars2kxb2GfT7zqGhbWci8OE3NVRCs8FgIMp/zuagq1UzNibZxQuagqEQ9D0OnCvwivrYFDgNVdYm6idswVAnHLRNwhiJXmMyKulzgOt/ymdNVBHIm60BPd7CpQlV0oi1kVwnctLgU9wDbQeVDXpel1jpNRZmKe7s+oGxJtHWq5WeapvVnWZdoBwx291AEqZWWSte6RCXQrsQu0WQ0Gp4ZykbOs9EYcheyovgYf8RZfLSw4sMc4/eNqKURfOBJlKXWhRc8qX0cwzrx6zE8zgdez+cf2dEkbjJ5BI4AAAAASUVORK5CYII=\" class=\"YQ4gaf zr758c\" height=\"16\" width=\"16\" alt=\"\" data-csiid=\"u4PkZrTxLfSP2roPgpnH2Qk_6\" data-atf=\"1\" style=\"display: block; border: 0px;\"></g-img></div><div class=\"ptes9b\" style=\"margin-right: 20px; overflow: hidden;\"><div class=\"guK3rf cHaqb\" style=\"overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; font-size: 12px; height: 16px; line-height: 16px;\">Rang Bangladesh</div></div></div></a><div class=\"RqYIAf\" style=\"bottom: 4px; position: absolute; right: -20px;\"><div jscontroller=\"gOTY1\" data-id=\"atritem-https://rang-bd.com/product/womens-sharee-181/\" jsdata=\"PFrTzf;_;BKkSMA\" data-viewer-group=\"1\" jsaction=\"rcuQ6b:npT2md;aevozb:T2P31d;vcOT6c:C6KsF;k7WJpc:beCLof\"><div jsdata=\"l7Bhpb;_;BKkSMg\" jscontroller=\"PbHo4e\" jsshadow=\"\" jsaction=\"rcuQ6b:npT2md;h5M12e;jGQF0b:kNqZ1c;\" data-viewer-entrypoint=\"1\" data-ved=\"2ahUKEwj0ut7YxcCIAxX0h1YBHYLMMZsQ2esEegQIGxAE\"><div jsslot=\"\"><div jsname=\"I3kE2c\" class=\"mTcd iTPLzd rNSxBe eY4mx lUn2nc\" aria-label=\"About this result\" role=\"button\" tabindex=\"0\" style=\"padding-bottom: 20px; padding-left: 12px; padding-right: 3px; top: 0px; line-height: 16px; left: 0px; width: 28px; z-index: 1; outline: 0px;\"><span jsname=\"czHhOd\" class=\"D6lY4c mBswFe\" style=\"height: 22px; width: 22px; position: absolute; border-radius: 11px;\"><span jsname=\"Bil8Ae\" class=\"xTFaxe z1asCe\" style=\"display: inline-block; fill: currentcolor; height: 18px; line-height: 18px; position: relative; width: 18px; top: 2px; color: rgb(77, 81, 86);\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z\"></path></svg></span></span></div></div></div></div></div></div></div><div jsname=\"dTDiAc\" class=\"eA0Zlc WghbWd FnEtTd mkpRId RLdvSe ivg-i PZPZlf GMCzAd\" jsdata=\"j0Opre;xBrJd3lQuMjN9M;BKkSMQ\" jscontroller=\"Um3BXb\" data-attrid=\"images universal\" data-docid=\"xBrJd3lQuMjN9M\" data-ivep=\"true\" data-lpage=\"https://toptenmartltd.com/product/sharee-tangail-2/\" data-ref-docid=\"UNi0EaKyqbXuzM\" jsaction=\"rcuQ6b:npT2md;tuz4af:RrAr1;nptbHe:XEuVS;h5M12e;qWWJ8e:.CLIENT\" data-hveid=\"CBkQAA\" data-ved=\"2ahUKEwj0ut7YxcCIAxX0h1YBHYLMMZsQ9AF6BAgZEAA\" style=\"vertical-align: top; display: inline-flex; margin: 0px 20px 20px 0px; position: relative; cursor: pointer; overflow: unset; background: none; border-radius: 12px; flex-direction: column; width: 204px;\"><div jsname=\"qQjpJ\" class=\"czzyk XOEbc\" role=\"button\" tabindex=\"0\" style=\"outline: 0px; border-radius: 12px; overflow: hidden; position: relative;\"><div><div data-bla=\"\" class=\"uhHOwf BYbUcd\" style=\"position: relative; overflow: hidden; height: 192px; width: 204px;\"><img alt=\"Sharee- Tangail - Top Ten Mart\" id=\"dimg_u4PkZrTxLfSP2roPgpnH2Qk_5\" src=\"data:image/jpeg;base64,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\" data-csiid=\"u4PkZrTxLfSP2roPgpnH2Qk_7\" data-atf=\"1\" style=\"transition: transform 200ms; display: block; height: 192px; width: 204px;\"></div></div><div jsname=\"tdeeNb\"></div></div><div class=\"juwGPd OCzgxd\" jscontroller=\"N8Q1ib\" jsaction=\"h5M12e\" style=\"display: flex; flex: 1 1 0%; position: relative;\"><a class=\"EZAeBe\" href=\"https://toptenmartltd.com/product/sharee-tangail-2/\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://toptenmartltd.com/product/sharee-tangail-2/&amp;ved=2ahUKEwj0ut7YxcCIAxX0h1YBHYLMMZsQh-wKegQIGRAD\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); display: flex; flex: 1 1 0%; flex-direction: column; min-width: 0px; padding: 8px 4px 4px; width: 0px; outline: 0px;\"><div class=\"JMWMJ\" style=\"display: flex;\"><div class=\"toI8Rb OSrXXb usbThf\" style=\"overflow: hidden; text-overflow: ellipsis; font-family: &quot;Google Sans&quot;, Arial, sans-serif-medium, sans-serif; font-size: 14px; line-height: 18px; margin-bottom: 4px; word-break: break-all; display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 1;\">Sharee- Tangail - Top Ten Mart</div></div><div class=\"Xxy7Vb\" style=\"display: flex; height: 16px;\"><div class=\"BtwlAd\" style=\"display: flex; flex-direction: column; justify-content: center; margin-right: 6px;\"><g-img style=\"display: block; height: 16px; width: 16px;\"><img id=\"dimg_u4PkZrTxLfSP2roPgpnH2Qk_11\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAMAAADXqc3KAAAAP1BMVEVHcEz9FBT/DQ3/Dg79HR3+FBXWGRz+Hh+0FRj/EBH+EBH/Dw//DQ3/DQ3/EBD/EBD/Dg7/Dw//Dg7/EhL/DAxeSsO5AAAAFHRSTlMAKcfYETYEHgi6SXfi81qQp4iWa8xgM9EAAADaSURBVCiRpVLZtoQgDGu1LLKD/P+3TlvxOHPPnafpgy0JxhAB+KF8CPQfHkaerdi/sBtpcuVmPmDqm6DC7dU9eBF4VkdR+h6XHiq8OSgnQFNK9YyMyYARoQL+mNpZ/xw9WKdr3oEWe423b+yqtmV+vvnCuAscHZ3yXq4XRVGtRoNkEYta7iKF1yYah6HWHEahgkRkQkA4E5ukbaYOLqzQ+Di4q3sS0RSenC6ri7jPxx/P85OQdJiIa/FOzMNzgseqgVTvmXO04O7yz8iwXRlL81fT/wz+S329Gi8lKRDLiz9U2wAAAABJRU5ErkJggg==\" class=\"YQ4gaf zr758c\" height=\"16\" width=\"16\" alt=\"\" data-csiid=\"u4PkZrTxLfSP2roPgpnH2Qk_8\" data-atf=\"1\" style=\"display: block; border: 0px;\"></g-img></div><div class=\"ptes9b\" style=\"margin-right: 20px; overflow: hidden;\"><div class=\"guK3rf cHaqb\" style=\"overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; font-size: 12px; height: 16px; line-height: 16px;\">Top Ten Mart</div></div></div></a><div class=\"RqYIAf\" style=\"bottom: 4px; position: absolute; right: -20px;\"><div jscontroller=\"gOTY1\" data-id=\"atritem-https://toptenmartltd.com/product/sharee-tangail-2/\" jsdata=\"PFrTzf;_;BKkSMA\" data-viewer-group=\"1\" jsaction=\"rcuQ6b:npT2md;aevozb:T2P31d;vcOT6c:C6KsF;k7WJpc:beCLof\"><div jsdata=\"l7Bhpb;_;BKkSMk\" jscontroller=\"PbHo4e\" jsshadow=\"\" jsaction=\"rcuQ6b:npT2md;h5M12e;jGQF0b:kNqZ1c;\" data-viewer-entrypoint=\"1\" data-ved=\"2ahUKEwj0ut7YxcCIAxX0h1YBHYLMMZsQ2esEegQIGRAE\"><div jsslot=\"\"><div jsname=\"I3kE2c\" class=\"mTcd iTPLzd rNSxBe eY4mx lUn2nc\" aria-label=\"About this result\" role=\"button\" tabindex=\"0\" style=\"padding-bottom: 20px; padding-left: 12px; padding-right: 3px; top: 0px; line-height: 16px; left: 0px; width: 28px; z-index: 1; outline: 0px;\"><span jsname=\"czHhOd\" class=\"D6lY4c mBswFe\" style=\"height: 22px; width: 22px; position: absolute; border-radius: 11px;\"><span jsname=\"Bil8Ae\" class=\"xTFaxe z1asCe\" style=\"display: inline-block; fill: currentcolor; height: 18px; line-height: 18px; position: relative; width: 18px; top: 2px; color: rgb(77, 81, 86);\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z\"></path></svg></span></span></div></div></div></div></div></div></div><div class=\"VwgOIc\" id=\"u4PkZrTxLfSP2roPgpnH2Qk__26\" style=\"display: contents;\"></div><div class=\"VwgOIc\" id=\"u4PkZrTxLfSP2roPgpnH2Qk__27\" style=\"display: contents;\"></div><div class=\"VwgOIc\" id=\"u4PkZrTxLfSP2roPgpnH2Qk__28\" style=\"display: contents;\"></div><div class=\"VwgOIc\" id=\"u4PkZrTxLfSP2roPgpnH2Qk__29\" style=\"display: contents;\"></div><div class=\"VwgOIc\" id=\"u4PkZrTxLfSP2roPgpnH2Qk__30\" style=\"display: contents;\"></div><div class=\"VwgOIc\" id=\"u4PkZrTxLfSP2roPgpnH2Qk__31\" style=\"display: contents;\"></div></div></div></div><div class=\"EIqaib GTERze\" style=\"padding-top: 6px; position: relative;\"><div><div class=\"QjI2jc NnEaBd GTERze a-no-hover-decoration mWcf0e\" jscontroller=\"gSZvdb\" data-dccl=\"false\" role=\"button\" tabindex=\"0\" jsdata=\"vST7rb;_;BKkSL4\" jsaction=\"i5KCU;kVBCVd:yM1YJe\" data-ved=\"2ahUKEwj0ut7YxcCIAxX0h1YBHYLMMZsQ6scEegQICxAH\" style=\"text-align: right; color: var(--IXoxUe); font-style: italic; margin-right: 16px; font-size: 12px; outline: 0px;\"><div class=\"VfL2Y LRZwuc\" style=\"position: relative; display: inline-block;\"><span class=\"W7GCoc CNbPnc\">Feedback</span></div></div></div><div jscontroller=\"XN4wKf\" jsname=\"DeKlx\" class=\"jEgXc\" jsaction=\"in3Ghc\" data-ved=\"2ahUKEwj0ut7YxcCIAxX0h1YBHYLMMZsQ3NoLegQICxAL\"><div class=\"MmMIvd jRKCUd\" data-l=\"\" role=\"button\" tabindex=\"0\" data-hveid=\"CAsQDA\" data-ved=\"2ahUKEwj0ut7YxcCIAxX0h1YBHYLMMZsQnIIIegQICxAM\" style=\"-webkit-tap-highlight-color: transparent; line-height: 18px; text-overflow: ellipsis; text-wrap: nowrap; padding: 0px 16px; margin-top: 0px; position: relative; outline: 0px;\"><hr class=\"Bi9oQd\" aria-hidden=\"true\" style=\"margin-top: 18px; position: absolute; border-top: 0px; left: 0px; width: 652px;\"><div class=\"ZFiwCf\" style=\"display: flex; align-items: center; justify-content: center; position: relative; margin: 0px auto; width: 300px; border-radius: 18px; outline: transparent solid 1px; background-color: rgb(241, 243, 244); font-size: 14px; max-width: 300px; height: 36px;\"><span class=\"LGwnxb\" style=\"overflow: hidden; text-overflow: ellipsis; width: auto; padding-left: 0px; padding-right: 8px; color: rgb(32, 33, 36); max-width: calc(100% - 64px);\"><span class=\"PBBEhf\" style=\"display: unset; overflow: hidden; text-overflow: ellipsis; width: auto;\">6 more images</span></span><span class=\"w2fKdd z1asCe\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(94, 94, 94);\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div></div></div></g-section-with-header></div></div></div></div><div class=\"MjjYud\" style=\"color: rgb(31, 31, 31); font-family: Arial, sans-serif; font-size: medium;\"><span id=\"fld_u4PkZrTxLfSP2roPgpnH2Qk_1\" data-csim=\"\" lta=\"1726251964948\"></span><div jscontroller=\"SC7lYd\" class=\"g Ww4FFb vt6azd tF2Cxc asEBEc\" lang=\"en\" jsaction=\"QyLbLe:OMITjf;ewaord:qsYrDe;xd28Mb:A6j43c\" data-hveid=\"CB4QAA\" data-ved=\"2ahUKEwj0ut7YxcCIAxX0h1YBHYLMMZsQFSgAegQIHhAA\" style=\"font-size: 14px; line-height: 1.58; width: 600px; margin: 0px 0px 30px; position: relative; background-color: var(--xhUGwc); border-radius: 0px; border-width: 0px; box-shadow: none;\"><div class=\"N54PNb BToiNc cvP2Ce\" data-snc=\"sUALof\" style=\"display: flex; flex-direction: column; justify-content: start; position: relative; contain: layout paint; overflow: hidden;\"><div class=\"kb0PBd cvP2Ce A9Y9g jGGQ5e\" data-snf=\"x5WNvb\" data-snhf=\"0\" style=\"flex: 1 1 100%; min-width: 0px; contain: layout paint; overflow: hidden;\"><div class=\"yuRUbf\" style=\"font-size: small; line-height: 1.58;\"><span jscontroller=\"msmzHf\" jsaction=\"rcuQ6b:npT2md;PYDNKe:bLV6Bd;mLt3mc\"><a jsname=\"UWckNb\" href=\"https://www.khacha.com.bd/product-category/women-fashion/sharee/\" data-ved=\"2ahUKEwj0ut7YxcCIAxX0h1YBHYLMMZsQFnoECBwQAQ\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://www.khacha.com.bd/product-category/women-fashion/sharee/&amp;ved=2ahUKEwj0ut7YxcCIAxX0h1YBHYLMMZsQFnoECBwQAQ\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); outline: 0px;\"><br><h3 class=\"LC20lb MBeuO DKV0Md\" style=\"margin: 20px 0px 3px; padding: 5px 0px 0px; font-size: 22px; line-height: 1.1818; font-family: Arial, sans-serif; display: inline-block;\">Sharee Archives</h3><div class=\"notranslate HGLrXd NJjxre iUh30 ojE3Fb\" style=\"font-size: 16px; line-height: 1.3; padding: 0px; display: inline-block; text-size-adjust: none; position: absolute; left: 0px; top: 0px; width: 600px;\"><div class=\"q0vns\" style=\"display: flex; padding: 0px; overflow: hidden; align-items: center;\"><span class=\"DDKf1c\" style=\"margin-right: 12px;\"><div class=\"eqA2re UnOTSe Vwoesf\" aria-hidden=\"true\" style=\"vertical-align: middle; display: inline-block;\"><img class=\"XNo5Ab\" src=\"data:image/webp;base64,UklGRp4EAABXRUJQVlA4WAoAAAAQAAAANwAANwAAQUxQSPACAAARkPzs/9o2XzlYSOWMymNmZuYV0yrN2MsgKEdOCqoVDxL9HMv65SfXirWOmZmZmem2/Rm77R5ebtslIiYA/lM00oUyfFKhzF5SIJRtg64w6uxNKwvCHNpS7yophPLOgHNbbS5GWfM1SQgFI64c0LcD+VoSbmOQPD8rM/4kW3Ni0aehbJ2r6qMSmZ7FmN3vf1xeacyFa0GaEW3sFmZXlOCxmQzdhO9//fWTt/bPziyMTTPKGWT94UhcxSPTzVJDNi+L72l2Rp8N1eIbnAYcEb7Lx2NlH7Gm6utfDClXx0h5NnUhZrqVSlW8jOP9ghTX9rF0kqlpMqQdLCzLYmV3wGZbZkwFMJILhkWsqtGmUQBlzGzIcASTkdEbCzlXt9Tp05WsYztFWVHwbn7ZGEcLZDy+JIPJMSwGXXb7dEg/sqOLRxJRCEHdImdOmjTRkoIak8pSJ6oJLLKODS3mDHRz3UIkhuOEIBRa1JcCXes+TRiaBO6pAEDN3K0kNAUJjJ1pg4wHO/mwgDDeHeUcQen8w2cPj0Xmp5DwoLKhXpmoKkZBxuv1MpkVL+L4ToQxQrs79516/OnHj9fHV5osVQCdZ1yrgjJRFCLyrvXugKsqM+OiQFiUZVkUo4LDfubt66ffno6nBb5ENxtLAunpUbAU9q1fz27XQZZlNoQxwVIPtverRc9O4JfPVk6/d7lKNymCY4oSxyJifds31Jsh677+fVrvvr0HQlVmenqvJj39du/yZWlUOafGsBKPRQUuxAWnQy7pJd5INGAbDgDGrqf37775/PUNHj81oYVxHKPori7OXQ15rG4qAQAI7O3YFrj27fL4maeOEYJlGfnXNVogn4uPtSYBTZvoOtRmmX3kuJYghEitk62Qz3Lb+fvCWACgLMUAFFi2TZu970SvKrF1ZZBf/VTy4cftfYhzbpjaF2hvoqovgxC7utwI+aembjjz57fmO3j+9q3XMTOAfjANf6uJ29dRZ3d2d7pp+OtpGv4JBlZQOCCIAQAAcAgAnQEqOAA4AD4tCotFoZDQzfgYAsSxhtgvg/mAb4APIBNz6QLxTQ/rvqA2wHmA83ro/+oA3kcEmiUZlGJSH2g+YctXalGIZ9GXgAD+9Bnz/sfg7//oUxYEWZX//wHd/q8+yk8wAkfp+3sUuUSfn/Wjuveo8wJDuv9/VmRSMV03+hjkkQzA4JAcvDhHgf6vdxotU+SjYVk4j/+v2p4NGEeOn/AVZ0+8A62jiuSTjsWRZE7yEUa07rl6eXKpj4OxAN+DoeWWA85igI6cn//4+UJhHf4CtP4VNpev7AlNf9ItMVm0f+0iEAKuP41KEkJ0AROKSxR1Qv8LI5AER/9UM//tXH/7XY/+0zIDUEuEYSjwdm8JstlmGHVgHL6SqUm/iD4Hy0J46/55xKg1faAbSlPe/U0ValPsyUvc9AtsPAvXr7rGPP9lg5yLLvwVtRJKqfIVDbonQk3qJKHap8IPJFHw6cWEfg7nmov+Af+z33//5BGSKFw7ZohZ080ujp86tytmAAAAAAA=\" alt=\"\" data-csiid=\"u4PkZrTxLfSP2roPgpnH2Qk_9\" data-atf=\"1\" style=\"border: 1px solid rgb(218, 220, 224); background-color: rgb(241, 243, 244); border-radius: 50%; display: block; height: 34px; width: 34px;\"></div></span><div class=\"CA5RN\" style=\"overflow: hidden;\"><div><span class=\"VuuXrf\" style=\"color: rgb(32, 33, 36); display: block; line-height: 20px; text-wrap: nowrap; font-family: &quot;Google Sans&quot;, Arial, sans-serif;\">Khacha</span></div><div class=\"byrV5b\" style=\"align-items: center; display: flex; flex-direction: row;\"><cite class=\"qLRx3b tjvcx GvPZzd cHaqb\" role=\"text\" style=\"color: rgb(77, 81, 86); font-style: normal; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; line-height: 20px; font-family: &quot;Google Sans&quot;, Arial, sans-serif;\">https://www.khacha.com.bd<span class=\"ylgVCe ob9lvb\" role=\"text\">&nbsp;› Women Fashion</span></cite></div></div></div></div></a></span><div class=\"B6fmyf byrV5b Mg1HEd\" style=\"align-items: center; display: flex; flex-direction: row; position: absolute; top: 0px; height: auto; visibility: hidden; text-wrap: nowrap; width: 600px;\"><div class=\"HGLrXd iUh30 ojE3Fb\" style=\"font-size: 16px; line-height: 1.3; padding: 0px; display: inline-block; text-size-adjust: none;\"><div class=\"q0vns\" style=\"display: flex; padding: 0px; overflow: hidden; align-items: center;\"><span class=\"DDKf1c\" style=\"margin-right: 12px;\"><div class=\"eqA2re UnOTSe\" style=\"height: 34px; width: 34px;\"></div></span><div class=\"CA5RN\" style=\"overflow: hidden;\"><div><span class=\"VuuXrf\" style=\"color: rgb(32, 33, 36); display: block; line-height: 20px; font-family: &quot;Google Sans&quot;, Arial, sans-serif;\"></span></div><div class=\"byrV5b\" style=\"align-items: center; display: flex; flex-direction: row;\"><cite class=\"qLRx3b tjvcx GvPZzd cHaqb\" role=\"text\" style=\"color: rgb(77, 81, 86); font-style: normal; overflow: hidden; text-overflow: ellipsis; line-height: 20px; font-family: &quot;Google Sans&quot;, Arial, sans-serif;\"><span class=\"ylgVCe ob9lvb\" role=\"text\"></span></cite></div></div></div></div><div class=\"csDOgf BCF2pd ezY6nb L48a4c\" style=\"display: inline; visibility: visible; margin-left: 8px; position: relative; height: 18px; margin-top: 16px;\"><div jscontroller=\"gOTY1\" data-id=\"atritem-https://www.khacha.com.bd/product-category/women-fashion/sharee/\" jsdata=\"PFrTzf;_;BKkSMA\" data-viewer-group=\"1\" jsaction=\"rcuQ6b:npT2md;aevozb:T2P31d;vcOT6c:C6KsF;k7WJpc:beCLof\"><div jsdata=\"l7Bhpb;_;BKkSMs\" jscontroller=\"PbHo4e\" jsshadow=\"\" jsaction=\"rcuQ6b:npT2md;h5M12e;jGQF0b:kNqZ1c;\" data-viewer-entrypoint=\"1\" data-ved=\"2ahUKEwj0ut7YxcCIAxX0h1YBHYLMMZsQ2esEegQIHBAJ\"><div jsslot=\"\"><div jsname=\"I3kE2c\" class=\"MJ8UF iTPLzd rNSxBe eY4mx lUn2nc\" aria-label=\"About this result\" role=\"button\" tabindex=\"0\" style=\"padding-bottom: 20px; padding-left: 0px; padding-right: 12px; top: 0px; line-height: 16px; left: 0px; width: 28px; z-index: 1; outline: 0px; position: absolute;\"><span jsname=\"czHhOd\" class=\"D6lY4c mBswFe\" style=\"height: 22px; width: 22px; position: absolute; border-radius: 11px;\"><span jsname=\"Bil8Ae\" class=\"xTFaxe z1asCe\" style=\"display: inline-block; fill: currentcolor; height: 18px; line-height: 18px; position: relative; width: 18px; top: 2px; color: rgb(77, 81, 86);\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z\"></path></svg></span></span></div></div></div></div></div></div></div></div><div class=\"kb0PBd cvP2Ce A9Y9g\" data-snf=\"nke7rc\" data-sncf=\"1\" style=\"flex: 1 1 100%; min-width: 0px; contain: layout paint; overflow: hidden;\"><div class=\"VwiC3b yXK7lf lVm3ye r025kc hJNv6b Hdw6tb\" style=\"display: -webkit-box; -webkit-box-orient: vertical; overflow: hidden; color: rgb(77, 81, 86); -webkit-line-clamp: 2;\"><span style=\"font-weight: bold; color: rgb(95, 99, 104);\">Sharee</span>&nbsp;· Nidhi | Tant&nbsp;<span style=\"font-weight: bold; color: rgb(95, 99, 104);\">Sharee</span>. ৳1,250.00 View Product This product has multiple variants. · Ambori | Tant&nbsp;<span style=\"font-weight: bold; color: rgb(95, 99, 104);\">Sharee</span>. ৳1,250.00 View Product This product has&nbsp;...</div></div></div></div></div><div class=\"hlcw0c\" style=\"margin-bottom: 44px; color: rgb(31, 31, 31); font-family: Arial, sans-serif; font-size: medium;\"><div class=\"MjjYud\"><div jscontroller=\"SC7lYd\" class=\"g Ww4FFb vt6azd tF2Cxc asEBEc\" lang=\"en\" jsaction=\"QyLbLe:OMITjf;ewaord:qsYrDe;xd28Mb:A6j43c\" data-hveid=\"CCEQAA\" data-ved=\"2ahUKEwj0ut7YxcCIAxX0h1YBHYLMMZsQFSgAegQIIRAA\" style=\"font-size: 14px; line-height: 1.58; width: 600px; margin: 0px 0px 30px; position: relative; background-color: var(--xhUGwc); border-radius: 0px; border-width: 0px; box-shadow: none;\"><div class=\"N54PNb BToiNc cvP2Ce\" data-snc=\"xVLIEd\" style=\"display: flex; flex-direction: column; justify-content: start; position: relative; contain: layout paint; overflow: hidden;\"><div class=\"kb0PBd cvP2Ce A9Y9g jGGQ5e\" data-snf=\"x5WNvb\" data-snhf=\"0\" style=\"flex: 1 1 100%; min-width: 0px; contain: layout paint; overflow: hidden;\"><div class=\"yuRUbf\" style=\"font-size: small; line-height: 1.58;\"><span jscontroller=\"msmzHf\" jsaction=\"rcuQ6b:npT2md;PYDNKe:bLV6Bd;mLt3mc\"><a jsname=\"UWckNb\" href=\"https://www.aarong.com/women/saree\" data-ved=\"2ahUKEwj0ut7YxcCIAxX0h1YBHYLMMZsQFnoECCAQAQ\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://www.aarong.com/women/saree&amp;ved=2ahUKEwj0ut7YxcCIAxX0h1YBHYLMMZsQFnoECCAQAQ\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); outline: 0px;\"><br><h3 class=\"LC20lb MBeuO DKV0Md\" style=\"margin: 20px 0px 3px; padding: 5px 0px 0px; font-size: 22px; line-height: 1.1818; font-family: Arial, sans-serif; display: inline-block;\">Saree - Women Clothing</h3><div class=\"notranslate HGLrXd NJjxre iUh30 ojE3Fb\" style=\"font-size: 16px; line-height: 1.3; padding: 0px; display: inline-block; text-size-adjust: none; position: absolute; left: 0px; top: 0px; width: 600px;\"><div class=\"q0vns\" style=\"display: flex; padding: 0px; overflow: hidden; align-items: center;\"><span class=\"DDKf1c\" style=\"margin-right: 12px;\"><div class=\"eqA2re UnOTSe Vwoesf\" aria-hidden=\"true\" style=\"vertical-align: middle; display: inline-block;\"><img class=\"XNo5Ab\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABwAAAAcCAMAAABF0y+mAAAAtFBMVEUAAACQOACIMACiPgD/XwD/WwBNEQDcTgD/VQD/UQBrHQBWHADjQwDDMQAQAAD/UAD/TQBYGQB6KwC4OwDjSQD/SQD/QwDsPAAvCADpQQCHJQDLPQD/QABaEQAVCAD/RgBBEAAiDQDVOwDyNgDUMACNIAB8IwArBACLFQB7CwAhAQBABAD/NwBkEwAnDABIAAWQMAB4GwC5MQCYIABmIwAaAADWQwCoLwDrTwAdDABNCwBAGwB9BgGKAAAA4klEQVR4Ab3BVWICMQBAwYezmiAJsqG4u9v9z1VvcflihlcIhbkpEo3FuSWRtGwuOa7ngyVkCtKJDCeySufIa1WAjCWsIscCbUzpDSAvy0pWOFat1Rv8aDZqLZ7X7nT50+tzLFB6MARG5QHgj3NCTvhVUtoYAFuWewCulAG/KspoD6AlVBsgK0SGP/HWFICiJUYAzqzJKR8Cy6pyhaObTIRlZaA559SirGdYlpCyRtnUlxwrlMsNLEsqNRspY6YcWym5JiKUckFqE+fENA9spNxCr7njilByw0376Ibbqj1e4AOLIBIxTKX1OwAAAABJRU5ErkJggg==\" alt=\"\" data-csiid=\"u4PkZrTxLfSP2roPgpnH2Qk_10\" data-atf=\"5\" style=\"border: 1px solid rgb(218, 220, 224); background-color: rgb(241, 243, 244); border-radius: 50%; display: block; height: 34px; width: 34px;\"></div></span><div class=\"CA5RN\" style=\"overflow: hidden;\"><div><span class=\"VuuXrf\" style=\"color: rgb(32, 33, 36); display: block; line-height: 20px; text-wrap: nowrap; font-family: &quot;Google Sans&quot;, Arial, sans-serif;\">Aarong</span></div><div class=\"byrV5b\" style=\"align-items: center; display: flex; flex-direction: row;\"><cite class=\"qLRx3b tjvcx GvPZzd cHaqb\" role=\"text\" style=\"color: rgb(77, 81, 86); font-style: normal; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; line-height: 20px; font-family: &quot;Google Sans&quot;, Arial, sans-serif;\">https://www.aarong.com<span class=\"ylgVCe ob9lvb\" role=\"text\">&nbsp;› women › saree</span></cite></div></div></div></div></a></span><div class=\"B6fmyf byrV5b Mg1HEd\" style=\"align-items: center; display: flex; flex-direction: row; position: absolute; top: 0px; height: auto; visibility: hidden; text-wrap: nowrap; width: 600px;\"><div class=\"HGLrXd iUh30 ojE3Fb\" style=\"font-size: 16px; line-height: 1.3; padding: 0px; display: inline-block; text-size-adjust: none;\"><div class=\"q0vns\" style=\"display: flex; padding: 0px; overflow: hidden; align-items: center;\"><span class=\"DDKf1c\" style=\"margin-right: 12px;\"><div class=\"eqA2re UnOTSe\" style=\"height: 34px; width: 34px;\"></div></span><div class=\"CA5RN\" style=\"overflow: hidden;\"><div><span class=\"VuuXrf\" style=\"color: rgb(32, 33, 36); display: block; line-height: 20px; font-family: &quot;Google Sans&quot;, Arial, sans-serif;\"></span></div><div class=\"byrV5b\" style=\"align-items: center; display: flex; flex-direction: row;\"><cite class=\"qLRx3b tjvcx GvPZzd cHaqb\" role=\"text\" style=\"color: rgb(77, 81, 86); font-style: normal; overflow: hidden; text-overflow: ellipsis; line-height: 20px; font-family: &quot;Google Sans&quot;, Arial, sans-serif;\"><span class=\"ylgVCe ob9lvb\" role=\"text\"></span></cite></div></div></div></div><div class=\"csDOgf BCF2pd ezY6nb L48a4c\" style=\"display: inline; visibility: visible; margin-left: 8px; position: relative; height: 18px; margin-top: 16px;\"><div jscontroller=\"gOTY1\" data-id=\"atritem-https://www.aarong.com/women/saree\" jsdata=\"PFrTzf;_;BKkSMA\" data-viewer-group=\"1\" jsaction=\"rcuQ6b:npT2md;aevozb:T2P31d;vcOT6c:C6KsF;k7WJpc:beCLof\"><div jsdata=\"l7Bhpb;_;BKkSMw\" jscontroller=\"PbHo4e\" jsshadow=\"\" jsaction=\"rcuQ6b:npT2md;h5M12e;jGQF0b:kNqZ1c;\" data-viewer-entrypoint=\"1\" data-ved=\"2ahUKEwj0ut7YxcCIAxX0h1YBHYLMMZsQ2esEegQIIBAJ\"><div jsslot=\"\"><div jsname=\"I3kE2c\" class=\"MJ8UF iTPLzd rNSxBe eY4mx lUn2nc\" aria-label=\"About this result\" role=\"button\" tabindex=\"0\" style=\"padding-bottom: 20px; padding-left: 0px; padding-right: 12px; top: 0px; line-height: 16px; left: 0px; width: 28px; z-index: 1; outline: 0px; position: absolute;\"><span jsname=\"czHhOd\" class=\"D6lY4c mBswFe\" style=\"height: 22px; width: 22px; position: absolute; border-radius: 11px;\"><span jsname=\"Bil8Ae\" class=\"xTFaxe z1asCe\" style=\"display: inline-block; fill: currentcolor; height: 18px; line-height: 18px; position: relative; width: 18px; top: 2px; color: rgb(77, 81, 86);\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z\"></path></svg></span></span></div></div></div></div></div></div></div></div><div class=\"kb0PBd cvP2Ce A9Y9g\" data-snf=\"nke7rc\" data-sncf=\"1\" style=\"flex: 1 1 100%; min-width: 0px; contain: layout paint; overflow: hidden;\"><div class=\"VwiC3b yXK7lf lVm3ye r025kc hJNv6b Hdw6tb\" style=\"display: -webkit-box; -webkit-box-orient: vertical; overflow: hidden; color: rgb(77, 81, 86); -webkit-line-clamp: 2;\">Saree ; Red Printed And Embroidered Cotton Saree · Tk 2,911.63 ; Lilac Printed Cotton Saree · Tk 2,311.63 ; Off White Printed Cotton Saree · Tk 2,344.19 ; Light Cyan&nbsp;...</div></div></div></div></div></div>', 0, 0, 0, 'admin/image/product/250910919.webp', 'Sharee', 'Sharee', 1, '2024-09-13 12:26:39', '2024-09-13 12:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-06-05 06:02:08', '2024-06-05 06:02:08'),
(2, 2, 1, '2024-06-05 06:07:12', '2024-06-05 06:07:12'),
(3, 2, 2, '2024-06-05 06:07:12', '2024-06-05 06:07:12'),
(4, 3, 1, '2024-06-05 06:16:18', '2024-06-05 06:16:18'),
(5, 4, 1, '2024-06-05 06:22:10', '2024-06-05 06:22:10'),
(6, 4, 2, '2024-06-05 06:22:10', '2024-06-05 06:22:10'),
(7, 5, 1, '2024-06-05 06:27:56', '2024-06-05 06:27:56'),
(8, 5, 2, '2024-06-05 06:27:56', '2024-06-05 06:27:56'),
(9, 6, 1, '2024-06-05 06:31:46', '2024-06-05 06:31:46'),
(10, 6, 2, '2024-06-05 06:31:46', '2024-06-05 06:31:46'),
(11, 7, 1, '2024-06-05 06:34:42', '2024-06-05 06:34:42'),
(12, 8, 1, '2024-06-05 06:38:17', '2024-06-05 06:38:17'),
(13, 8, 2, '2024-06-05 06:38:17', '2024-06-05 06:38:17'),
(14, 9, 1, '2024-06-05 06:41:17', '2024-06-05 06:41:17'),
(15, 9, 2, '2024-06-05 06:41:17', '2024-06-05 06:41:17'),
(16, 10, 1, '2024-06-05 06:44:08', '2024-06-05 06:44:08'),
(17, 10, 2, '2024-06-05 06:44:08', '2024-06-05 06:44:08'),
(18, 11, 1, '2024-09-13 12:26:39', '2024-09-13 12:26:39'),
(19, 11, 2, '2024-09-13 12:26:39', '2024-09-13 12:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(25, 11, 'admin/image/other-images/1589.jpg', '2024-09-13 12:26:39', '2024-09-13 12:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-06-05 06:02:08', '2024-06-05 06:02:08'),
(2, 1, 2, '2024-06-05 06:02:08', '2024-06-05 06:02:08'),
(3, 1, 3, '2024-06-05 06:02:08', '2024-06-05 06:02:08'),
(4, 2, 1, '2024-06-05 06:07:12', '2024-06-05 06:07:12'),
(5, 2, 3, '2024-06-05 06:07:12', '2024-06-05 06:07:12'),
(6, 3, 1, '2024-06-05 06:16:18', '2024-06-05 06:16:18'),
(7, 3, 6, '2024-06-05 06:16:18', '2024-06-05 06:16:18'),
(8, 4, 3, '2024-06-05 06:22:10', '2024-06-05 06:22:10'),
(9, 4, 4, '2024-06-05 06:22:10', '2024-06-05 06:22:10'),
(10, 4, 5, '2024-06-05 06:22:10', '2024-06-05 06:22:10'),
(11, 4, 6, '2024-06-05 06:22:10', '2024-06-05 06:22:10'),
(12, 5, 1, '2024-06-05 06:27:56', '2024-06-05 06:27:56'),
(13, 6, 1, '2024-06-05 06:31:46', '2024-06-05 06:31:46'),
(14, 6, 5, '2024-06-05 06:31:46', '2024-06-05 06:31:46'),
(15, 7, 1, '2024-06-05 06:34:42', '2024-06-05 06:34:42'),
(16, 8, 1, '2024-06-05 06:38:17', '2024-06-05 06:38:17'),
(17, 9, 1, '2024-06-05 06:41:17', '2024-06-05 06:41:17'),
(18, 10, 1, '2024-06-05 06:44:08', '2024-06-05 06:44:08'),
(19, 10, 3, '2024-06-05 06:44:08', '2024-06-05 06:44:08'),
(20, 10, 4, '2024-06-05 06:44:08', '2024-06-05 06:44:08'),
(21, 10, 5, '2024-06-05 06:44:08', '2024-06-05 06:44:08'),
(22, 10, 6, '2024-06-05 06:44:08', '2024-06-05 06:44:08'),
(23, 11, 1, '2024-09-13 12:26:39', '2024-09-13 12:26:39'),
(24, 11, 2, '2024-09-13 12:26:39', '2024-09-13 12:26:39'),
(25, 11, 3, '2024-09-13 12:26:39', '2024-09-13 12:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `review` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
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
('C3kW2TMZP5BlCQozc2gQc6rDMrfK1gUSnaEJzLOM', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNVY1Z1VTd3o0WmJJTGViU0dnS1BGQldwRmZIc0tRMkNsTGZ5YTE3VyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9sb2NhbGhvc3QvY3VzdG9tZXItcHJvamVjdC9wdWJsaWMvZGFzaGJvYXJkIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMiRPdE5IT3o4VkZjVEl3YnZzekZMaUguQVdHMU4xQkN3Ui5lOS9OWDNnUG84czBTY3BPNVNHSyI7fQ==', 1726325508),
('QPr1sjxuBnFVgJZpPwge28SZrUuqCSvJgjYyMY6A', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibXlvMkVlbXdpOUVrNFdjUUZsRTNkY3pOY1hrcnk5NkZ2cnNGaTJ5OCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1726326312);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Standard', 'Standard', 'Standard', '2024-06-05 05:56:56', '2024-06-05 05:56:56'),
(2, 'Normal', 'Normal', 'Normal', '2024-06-05 05:57:06', '2024-06-05 05:57:06'),
(3, 'Small', 'Small', 'Small', '2024-06-05 05:57:22', '2024-06-05 05:57:22'),
(4, 'Medium', 'Medium', 'Medium', '2024-06-05 05:57:36', '2024-06-05 05:57:36'),
(5, 'Large', 'Large', 'Large', '2024-06-05 05:57:46', '2024-06-05 05:57:46'),
(6, 'XL', 'XL', 'XL', '2024-06-05 05:57:57', '2024-06-05 05:57:57'),
(7, 'XXL', 'XXL', 'XXL', '2024-06-05 05:58:06', '2024-06-05 05:58:06');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(11, 6, 'One Piece', 'Ladies One Piece', 'admin/image/sub-category/1112934075.jpg', 1, '2024-09-13 12:13:43', '2024-09-13 12:13:43'),
(12, 6, 'Two Piece', 'Two Piece', 'admin/image/sub-category/850276424.jpg', 1, '2024-09-13 12:14:05', '2024-09-13 12:14:05'),
(13, 6, 'Three Piece', 'Three Piece', 'admin/image/sub-category/478749701.jpg', 1, '2024-09-13 12:15:52', '2024-09-13 12:15:52'),
(14, 6, 'Sharee', 'Women Sharee', 'admin/image/sub-category/1760978668.jpg', 1, '2024-09-13 12:16:14', '2024-09-13 12:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `code`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pice', 'Pice', 'Pice', 1, '2024-06-05 05:55:31', '2024-06-05 05:55:31'),
(2, 'Kilogram', 'KG', 'Kilogram', 1, '2024-06-05 05:55:54', '2024-06-05 05:55:54');

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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'admin@gmail.com', NULL, '$2y$12$OtNHOz8VFcTIwbvszFLiH.AWG1N1BCwR.e9/NX3gPo8s0ScpO5SGK', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-05 05:51:21', '2024-06-05 05:51:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `colors_name_unique` (`name`),
  ADD UNIQUE KEY `colors_code_unique` (`code`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_mobile_unique` (`mobile`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_code_unique` (`code`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`) USING HASH;

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sizes_name_unique` (`name`),
  ADD UNIQUE KEY `sizes_code_unique` (`code`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_name_unique` (`name`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_name_unique` (`name`),
  ADD UNIQUE KEY `units_code_unique` (`code`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
