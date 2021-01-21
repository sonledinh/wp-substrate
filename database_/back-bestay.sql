-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 21, 2021 lúc 11:47 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `back-bestay`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-01-15 08:42:41', '2021-01-15 08:42:41', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/bonsai-bestay', 'yes'),
(2, 'home', 'http://localhost/bonsai-bestay', 'yes'),
(3, 'blogname', 'bestay', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ledinhson209@gamil.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:129:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:45:\"thong_tin_product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"thong_tin_product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"thong_tin_product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"thong_tin_product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"thong_tin_product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"thong_tin_product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"thong_tin_product/([^/]+)/embed/?$\";s:50:\"index.php?thong_tin_product=$matches[1]&embed=true\";s:38:\"thong_tin_product/([^/]+)/trackback/?$\";s:44:\"index.php?thong_tin_product=$matches[1]&tb=1\";s:46:\"thong_tin_product/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?thong_tin_product=$matches[1]&paged=$matches[2]\";s:53:\"thong_tin_product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?thong_tin_product=$matches[1]&cpage=$matches[2]\";s:42:\"thong_tin_product/([^/]+)(?:/([0-9]+))?/?$\";s:56:\"index.php?thong_tin_product=$matches[1]&page=$matches[2]\";s:34:\"thong_tin_product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"thong_tin_product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"thong_tin_product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"thong_tin_product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"thong_tin_product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"thong_tin_product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:43:\"slide_campaigns/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"slide_campaigns/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"slide_campaigns/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"slide_campaigns/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"slide_campaigns/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"slide_campaigns/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"slide_campaigns/([^/]+)/embed/?$\";s:48:\"index.php?slide_campaigns=$matches[1]&embed=true\";s:36:\"slide_campaigns/([^/]+)/trackback/?$\";s:42:\"index.php?slide_campaigns=$matches[1]&tb=1\";s:44:\"slide_campaigns/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?slide_campaigns=$matches[1]&paged=$matches[2]\";s:51:\"slide_campaigns/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?slide_campaigns=$matches[1]&cpage=$matches[2]\";s:40:\"slide_campaigns/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?slide_campaigns=$matches[1]&page=$matches[2]\";s:32:\"slide_campaigns/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"slide_campaigns/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"slide_campaigns/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"slide_campaigns/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"slide_campaigns/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"slide_campaigns/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=17&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'bestay', 'yes'),
(41, 'stylesheet', 'bestay', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '17', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1626252160', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:7:{i:1611204162;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1611206156;a:1:{s:26:\"upgrader_scheduled_cleanup\";a:1:{s:32:\"681cfed7b12d77c29162173685354733\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:117;}}}}i:1611218562;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1611218578;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1611218580;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1611391362;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1611198958;s:15:\"version_checked\";s:3:\"5.6\";s:12:\"translations\";a:0:{}}', 'no'),
(120, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1610700235;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(128, '_site_transient_timeout_browser_94fb6483abf307a4bafac80827dcc22a', '1611304979', 'no'),
(129, '_site_transient_browser_94fb6483abf307a4bafac80827dcc22a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"87.0.4280.141\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(130, '_site_transient_timeout_php_check_e0da9a46ec9b74424e3af84a2a13de68', '1611304980', 'no'),
(131, '_site_transient_php_check_e0da9a46ec9b74424e3af84a2a13de68', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(133, 'can_compress_scripts', '1', 'no'),
(146, 'recently_activated', 'a:2:{s:30:\"advanced-custom-fields/acf.php\";i:1611198980;s:29:\"acf-extended/acf-extended.php\";i:1610705617;}', 'yes'),
(147, 'current_theme', 'bestay', 'yes'),
(148, 'theme_mods_bestay', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(149, 'theme_switched', '', 'yes'),
(152, 'finished_updating_comment_type', '1', 'yes'),
(153, 'category_children', 'a:0:{}', 'yes'),
(155, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(169, 'acf_version', '5.9.3', 'yes'),
(181, '_site_transient_timeout_php_check_f0b6411b8c82dcf39302e5312c1fbd33', '1611594857', 'no'),
(182, '_site_transient_php_check_f0b6411b8c82dcf39302e5312c1fbd33', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(183, '_transient_health-check-site-status-result', '{\"good\":\"12\",\"recommended\":\"8\",\"critical\":\"0\"}', 'yes'),
(187, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1611242383', 'no'),
(188, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:2:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:49:\"Discussion group: How To Find Help With WordPress\";s:3:\"url\";s:72:\"https://www.meetup.com/learn-wordpress-discussions/events/gbcjdsycccbbc/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2021-01-20 20:00:00\";s:8:\"end_date\";s:19:\"2021-01-20 21:00:00\";s:20:\"start_unix_timestamp\";i:1611201600;s:18:\"end_unix_timestamp\";i:1611205200;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:23:\"WordCamp India (Online)\";s:3:\"url\";s:32:\"https://india.wordcamp.org/2021/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2021-01-30 00:00:00\";s:8:\"end_date\";s:19:\"2021-02-14 00:00:00\";s:20:\"start_unix_timestamp\";i:1611945000;s:18:\"end_unix_timestamp\";i:1613241000;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"IN\";s:8:\"latitude\";d:20.593684;s:9:\"longitude\";d:78.96288;}}}}', 'no'),
(208, '_site_transient_timeout_php_check_f03419f679b2e071a92e69acf99160bf', '1611628941', 'no'),
(209, '_site_transient_php_check_f03419f679b2e071a92e69acf99160bf', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(220, 'cptui_new_install', 'false', 'yes'),
(222, 'cptui_post_types', 'a:2:{s:17:\"thong_tin_product\";a:30:{s:4:\"name\";s:17:\"thong_tin_product\";s:5:\"label\";s:17:\"thong_tin_product\";s:14:\"singular_label\";s:17:\"thong_tin_product\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:15:\"slide_campaigns\";a:30:{s:4:\"name\";s:15:\"slide_campaigns\";s:5:\"label\";s:15:\"slide_campaigns\";s:14:\"singular_label\";s:15:\"slide_campaigns\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(273, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1611198960;s:7:\"checked\";a:4:{s:6:\"bestay\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.8\";s:12:\"twentytwenty\";s:3:\"1.6\";s:15:\"twentytwentyone\";s:3:\"1.0\";}s:8:\"response\";a:2:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.9.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.1.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:1:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(275, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1611206661', 'no'),
(276, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4742;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4641;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2703;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2576;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1987;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1838;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1823;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1501;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1499;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1499;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1474;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1465;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1464;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1308;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1239;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1214;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1200;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1145;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1115;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1032;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:924;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:915;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:893;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:884;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:852;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:815;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:802;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:793;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:790;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:760;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:755;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:732;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:724;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:714;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:709;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:695;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:670;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:664;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:660;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:654;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:642;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:641;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:637;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:635;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:597;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:595;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:589;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:585;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:583;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:572;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:567;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:564;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:558;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:557;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:556;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:549;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:539;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:533;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:532;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:529;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:528;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:509;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:499;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:496;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:490;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:489;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:483;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:471;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:466;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:465;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:459;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:451;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:448;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:445;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:444;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:442;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:436;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:431;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:431;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:429;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:424;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:416;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:406;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:406;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:404;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:400;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:400;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:397;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:389;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:388;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:382;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:379;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:378;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:368;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:363;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:361;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:355;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:354;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:350;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:345;}}', 'no'),
(278, '_site_transient_timeout_theme_roots', '1611200755', 'no'),
(279, '_site_transient_theme_roots', 'a:4:{s:6:\"bestay\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(281, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1611198975;s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.4\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.3\";s:19:\"akismet/akismet.php\";s:5:\"4.1.7\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.8.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.4\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.8.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.8.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(282, '_transient_timeout_acf_plugin_updates', '1611371994', 'no'),
(283, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.3\";}}', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(12, 6, '_menu_item_type', 'post_type'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '2'),
(15, 6, '_menu_item_object', 'page'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', ''),
(20, 6, '_menu_item_orphaned', '1610700318'),
(21, 7, '_menu_item_type', 'custom'),
(22, 7, '_menu_item_menu_item_parent', '0'),
(23, 7, '_menu_item_object_id', '7'),
(24, 7, '_menu_item_object', 'custom'),
(25, 7, '_menu_item_target', ''),
(26, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 7, '_menu_item_xfn', ''),
(28, 7, '_menu_item_url', '#'),
(39, 9, '_menu_item_type', 'custom'),
(40, 9, '_menu_item_menu_item_parent', '0'),
(41, 9, '_menu_item_object_id', '9'),
(42, 9, '_menu_item_object', 'custom'),
(43, 9, '_menu_item_target', ''),
(44, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(45, 9, '_menu_item_xfn', ''),
(46, 9, '_menu_item_url', '#'),
(48, 10, '_menu_item_type', 'custom'),
(49, 10, '_menu_item_menu_item_parent', '0'),
(50, 10, '_menu_item_object_id', '10'),
(51, 10, '_menu_item_object', 'custom'),
(52, 10, '_menu_item_target', ''),
(53, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 10, '_menu_item_xfn', ''),
(55, 10, '_menu_item_url', '#'),
(57, 11, '_menu_item_type', 'custom'),
(58, 11, '_menu_item_menu_item_parent', '0'),
(59, 11, '_menu_item_object_id', '11'),
(60, 11, '_menu_item_object', 'custom'),
(61, 11, '_menu_item_target', ''),
(62, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 11, '_menu_item_xfn', ''),
(64, 11, '_menu_item_url', '#'),
(66, 12, '_menu_item_type', 'custom'),
(67, 12, '_menu_item_menu_item_parent', '0'),
(68, 12, '_menu_item_object_id', '12'),
(69, 12, '_menu_item_object', 'custom'),
(70, 12, '_menu_item_target', ''),
(71, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(72, 12, '_menu_item_xfn', ''),
(73, 12, '_menu_item_url', '#'),
(75, 13, '_menu_item_type', 'custom'),
(76, 13, '_menu_item_menu_item_parent', '0'),
(77, 13, '_menu_item_object_id', '13'),
(78, 13, '_menu_item_object', 'custom'),
(79, 13, '_menu_item_target', ''),
(80, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(81, 13, '_menu_item_xfn', ''),
(82, 13, '_menu_item_url', '#'),
(84, 2, '_edit_lock', '1610703773:1'),
(85, 2, '_wp_trash_meta_status', 'publish'),
(86, 2, '_wp_trash_meta_time', '1610703939'),
(87, 2, '_wp_desired_post_slug', 'sample-page'),
(88, 3, '_wp_trash_meta_status', 'draft'),
(89, 3, '_wp_trash_meta_time', '1610703942'),
(90, 3, '_wp_desired_post_slug', 'privacy-policy'),
(91, 16, '_edit_lock', '1610703934:1'),
(92, 17, '_edit_lock', '1611201810:1'),
(93, 17, '_wp_page_template', 'index.php'),
(94, 16, '_wp_trash_meta_status', 'draft'),
(95, 16, '_wp_trash_meta_time', '1610704704'),
(96, 16, '_wp_desired_post_slug', ''),
(97, 17, '_edit_last', '1'),
(98, 22, '_edit_last', '1'),
(99, 22, '_edit_lock', '1611201810:1'),
(100, 17, 'heading_h1', 'BESTAY 1'),
(101, 17, '_heading_h1', 'field_60016b64f64a7'),
(102, 17, 'dong_so_2', 'test block chain '),
(103, 17, '_dong_so_2', 'field_60016bed659f1'),
(104, 17, 'don_so_3_link_', 'google.com'),
(105, 17, '_don_so_3_link_', 'field_60016c51659f2'),
(106, 27, 'heading_h1', 'BESTAY 1'),
(107, 27, '_heading_h1', 'field_60016b64f64a7'),
(108, 27, 'dong_so_2', 'test block chain'),
(109, 27, '_dong_so_2', 'field_60016bed659f1'),
(110, 27, 'don_so_3_link_', ''),
(111, 27, '_don_so_3_link_', 'field_60016c51659f2'),
(112, 28, 'heading_h1', 'BESTAY 1'),
(113, 28, '_heading_h1', 'field_60016b64f64a7'),
(114, 28, 'dong_so_2', 'test block chain '),
(115, 28, '_dong_so_2', 'field_60016bed659f1'),
(116, 28, 'don_so_3_link_', ''),
(117, 28, '_don_so_3_link_', 'field_60016c51659f2'),
(118, 29, '_edit_last', '1'),
(119, 29, '_edit_lock', '1610992326:1'),
(120, 29, '_wp_trash_meta_status', 'publish'),
(121, 29, '_wp_trash_meta_time', '1610992545'),
(122, 29, '_wp_desired_post_slug', 'group_6005ca2ec2759'),
(123, 30, '_wp_trash_meta_status', 'publish'),
(124, 30, '_wp_trash_meta_time', '1610992545'),
(125, 30, '_wp_desired_post_slug', 'field_6005ca3a89e5e'),
(126, 34, '_wp_attached_file', '2021/01/b01456bef38f02d15b9e.jpg'),
(127, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:1706;s:4:\"file\";s:32:\"2021/01/b01456bef38f02d15b9e.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"b01456bef38f02d15b9e-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"b01456bef38f02d15b9e-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"b01456bef38f02d15b9e-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"b01456bef38f02d15b9e-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:34:\"b01456bef38f02d15b9e-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:34:\"b01456bef38f02d15b9e-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(128, 17, 'link_1', ''),
(129, 17, '_link_1', 'field_6005cb5ba17b0'),
(130, 17, '_', 'field_6008f61893ed6'),
(131, 17, 'anh_banner', '34'),
(132, 17, '_anh_banner', 'field_6005cbac9ee59'),
(133, 35, 'heading_h1', 'BESTAY 1'),
(134, 35, '_heading_h1', 'field_60016b64f64a7'),
(135, 35, 'dong_so_2', 'test block chain '),
(136, 35, '_dong_so_2', 'field_60016bed659f1'),
(137, 35, 'don_so_3_link_', ''),
(138, 35, '_don_so_3_link_', 'field_60016c51659f2'),
(139, 35, 'link_1', ''),
(140, 35, '_link_1', 'field_6005cb5ba17b0'),
(141, 35, 'anh_banner', '34'),
(142, 35, '_anh_banner', 'field_6005cbac9ee59'),
(143, 36, 'heading_h1', 'BESTAY 1'),
(144, 36, '_heading_h1', 'field_60016b64f64a7'),
(145, 36, 'dong_so_2', 'test block chain '),
(146, 36, '_dong_so_2', 'field_60016bed659f1'),
(147, 36, 'don_so_3_link_', 'google.com'),
(148, 36, '_don_so_3_link_', 'field_60016c51659f2'),
(149, 36, 'link_1', ''),
(150, 36, '_link_1', 'field_6005cb5ba17b0'),
(151, 36, 'anh_banner', '34'),
(152, 36, '_anh_banner', 'field_6005cbac9ee59'),
(153, 17, 'ten_nut_1', 'campaigns'),
(154, 17, '_ten_nut_1', 'field_6005ce620bef7'),
(155, 17, 'link_nut_1', 'https://www.google.com.vn/'),
(156, 17, '_link_nut_1', 'field_6005cec40bef8'),
(157, 17, 'ten_nut_2', 'news'),
(158, 17, '_ten_nut_2', 'field_6005cee60bef9'),
(159, 17, 'link_nut_2', 'https://www.youtube.com/'),
(160, 17, '_link_nut_2', 'field_6005ceef0befa'),
(161, 43, 'heading_h1', 'BESTAY 1'),
(162, 43, '_heading_h1', 'field_60016b64f64a7'),
(163, 43, 'dong_so_2', 'test block chain '),
(164, 43, '_dong_so_2', 'field_60016bed659f1'),
(165, 43, 'don_so_3_link_', 'google.com'),
(166, 43, '_don_so_3_link_', 'field_60016c51659f2'),
(167, 43, 'link_1', ''),
(168, 43, '_link_1', 'field_6005cb5ba17b0'),
(169, 43, 'anh_banner', '34'),
(170, 43, '_anh_banner', 'field_6005cbac9ee59'),
(171, 43, 'ten_nut_1', 'campaigns'),
(172, 43, '_ten_nut_1', 'field_6005ce620bef7'),
(173, 43, 'link_nut_1', 'google.vn'),
(174, 43, '_link_nut_1', 'field_6005cec40bef8'),
(175, 43, 'ten_nut_2', 'news'),
(176, 43, '_ten_nut_2', 'field_6005cee60bef9'),
(177, 43, 'link_nut_2', 'youtube.com'),
(178, 43, '_link_nut_2', 'field_6005ceef0befa'),
(179, 44, 'heading_h1', 'BESTAY 1'),
(180, 44, '_heading_h1', 'field_60016b64f64a7'),
(181, 44, 'dong_so_2', 'test block chain '),
(182, 44, '_dong_so_2', 'field_60016bed659f1'),
(183, 44, 'don_so_3_link_', 'google.com'),
(184, 44, '_don_so_3_link_', 'field_60016c51659f2'),
(185, 44, 'link_1', ''),
(186, 44, '_link_1', 'field_6005cb5ba17b0'),
(187, 44, 'anh_banner', '34'),
(188, 44, '_anh_banner', 'field_6005cbac9ee59'),
(189, 44, 'ten_nut_1', 'campaigns'),
(190, 44, '_ten_nut_1', 'field_6005ce620bef7'),
(191, 44, 'link_nut_1', 'https://www.google.com.vn/'),
(192, 44, '_link_nut_1', 'field_6005cec40bef8'),
(193, 44, 'ten_nut_2', 'news'),
(194, 44, '_ten_nut_2', 'field_6005cee60bef9'),
(195, 44, 'link_nut_2', 'https://www.youtube.com/'),
(196, 44, '_link_nut_2', 'field_6005ceef0befa'),
(197, 45, 'heading_h1', 'BESTAY 1'),
(198, 45, '_heading_h1', 'field_60016b64f64a7'),
(199, 45, 'dong_so_2', 'test block chain '),
(200, 45, '_dong_so_2', 'field_60016bed659f1'),
(201, 45, 'don_so_3_link_', 'google.com'),
(202, 45, '_don_so_3_link_', 'field_60016c51659f2'),
(203, 45, 'link_1', ''),
(204, 45, '_link_1', 'field_6005cb5ba17b0'),
(205, 45, 'anh_banner', '34'),
(206, 45, '_anh_banner', 'field_6005cbac9ee59'),
(207, 45, 'ten_nut_1', 'campaigns'),
(208, 45, '_ten_nut_1', 'field_6005ce620bef7'),
(209, 45, 'link_nut_1', 'https://www.google.com.vn/'),
(210, 45, '_link_nut_1', 'field_6005cec40bef8'),
(211, 45, 'ten_nut_2', 'news'),
(212, 45, '_ten_nut_2', 'field_6005cee60bef9'),
(213, 45, 'link_nut_2', 'https://www.youtube.com/'),
(214, 45, '_link_nut_2', 'field_6005ceef0befa'),
(215, 17, '_thumbnail_id', '34'),
(216, 48, 'heading_h1', 'BESTAY 1'),
(217, 48, '_heading_h1', 'field_60016b64f64a7'),
(218, 48, 'dong_so_2', 'test block chain '),
(219, 48, '_dong_so_2', 'field_60016bed659f1'),
(220, 48, 'don_so_3_link_', 'google.com'),
(221, 48, '_don_so_3_link_', 'field_60016c51659f2'),
(222, 48, 'link_1', ''),
(223, 48, '_link_1', 'field_6005cb5ba17b0'),
(224, 48, 'anh_banner', '34'),
(225, 48, '_anh_banner', 'field_6005cbac9ee59'),
(226, 48, 'ten_nut_1', 'campaigns'),
(227, 48, '_ten_nut_1', 'field_6005ce620bef7'),
(228, 48, 'link_nut_1', 'https://www.google.com.vn/'),
(229, 48, '_link_nut_1', 'field_6005cec40bef8'),
(230, 48, 'ten_nut_2', 'news'),
(231, 48, '_ten_nut_2', 'field_6005cee60bef9'),
(232, 48, 'link_nut_2', 'https://www.youtube.com/'),
(233, 48, '_link_nut_2', 'field_6005ceef0befa'),
(234, 50, '_wp_attached_file', '2021/01/ab-1.png'),
(235, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:450;s:4:\"file\";s:16:\"2021/01/ab-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"ab-1-300x188.png\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"ab-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(236, 17, 'avarta_banner_', '50'),
(237, 17, '_avarta_banner_', 'field_60064d2d6ce3d'),
(238, 51, 'heading_h1', 'BESTAY 1'),
(239, 51, '_heading_h1', 'field_60016b64f64a7'),
(240, 51, 'dong_so_2', 'test block chain '),
(241, 51, '_dong_so_2', 'field_60016bed659f1'),
(242, 51, 'don_so_3_link_', 'google.com'),
(243, 51, '_don_so_3_link_', 'field_60016c51659f2'),
(244, 51, 'link_1', ''),
(245, 51, '_link_1', 'field_6005cb5ba17b0'),
(246, 51, 'anh_banner', '34'),
(247, 51, '_anh_banner', 'field_6005cbac9ee59'),
(248, 51, 'ten_nut_1', 'campaigns'),
(249, 51, '_ten_nut_1', 'field_6005ce620bef7'),
(250, 51, 'link_nut_1', 'https://www.google.com.vn/'),
(251, 51, '_link_nut_1', 'field_6005cec40bef8'),
(252, 51, 'ten_nut_2', 'news'),
(253, 51, '_ten_nut_2', 'field_6005cee60bef9'),
(254, 51, 'link_nut_2', 'https://www.youtube.com/'),
(255, 51, '_link_nut_2', 'field_6005ceef0befa'),
(256, 51, 'avarta_banner_', '50'),
(257, 51, '_avarta_banner_', 'field_60064d2d6ce3d'),
(258, 53, 'heading_h1', 'BESTAY 1'),
(259, 53, '_heading_h1', 'field_60016b64f64a7'),
(260, 53, 'dong_so_2', 'test block chain '),
(261, 53, '_dong_so_2', 'field_60016bed659f1'),
(262, 53, 'don_so_3_link_', 'google.com'),
(263, 53, '_don_so_3_link_', 'field_60016c51659f2'),
(264, 53, 'link_1', ''),
(265, 53, '_link_1', 'field_6005cb5ba17b0'),
(266, 53, 'anh_banner', '34'),
(267, 53, '_anh_banner', 'field_6005cbac9ee59'),
(268, 53, 'ten_nut_1', 'campaigns'),
(269, 53, '_ten_nut_1', 'field_6005ce620bef7'),
(270, 53, 'link_nut_1', 'https://www.google.com.vn/'),
(271, 53, '_link_nut_1', 'field_6005cec40bef8'),
(272, 53, 'ten_nut_2', 'news'),
(273, 53, '_ten_nut_2', 'field_6005cee60bef9'),
(274, 53, 'link_nut_2', 'https://www.youtube.com/'),
(275, 53, '_link_nut_2', 'field_6005ceef0befa'),
(276, 53, 'avarta_banner_', '50'),
(277, 53, '_avarta_banner_', 'field_60064d2d6ce3d'),
(278, 17, 'title_box', 'Products Bestay'),
(279, 17, '_title_box', 'field_60064fb7bb286'),
(280, 17, 'description', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem'),
(281, 17, '_description', 'field_60064fedbb287'),
(282, 59, 'heading_h1', 'BESTAY 1'),
(283, 59, '_heading_h1', 'field_60016b64f64a7'),
(284, 59, 'dong_so_2', 'test block chain '),
(285, 59, '_dong_so_2', 'field_60016bed659f1'),
(286, 59, 'don_so_3_link_', 'google.com'),
(287, 59, '_don_so_3_link_', 'field_60016c51659f2'),
(288, 59, 'link_1', ''),
(289, 59, '_link_1', 'field_6005cb5ba17b0'),
(290, 59, 'anh_banner', '34'),
(291, 59, '_anh_banner', 'field_6005cbac9ee59'),
(292, 59, 'ten_nut_1', 'campaigns'),
(293, 59, '_ten_nut_1', 'field_6005ce620bef7'),
(294, 59, 'link_nut_1', 'https://www.google.com.vn/'),
(295, 59, '_link_nut_1', 'field_6005cec40bef8'),
(296, 59, 'ten_nut_2', 'news'),
(297, 59, '_ten_nut_2', 'field_6005cee60bef9'),
(298, 59, 'link_nut_2', 'https://www.youtube.com/'),
(299, 59, '_link_nut_2', 'field_6005ceef0befa'),
(300, 59, 'avarta_banner_', '50'),
(301, 59, '_avarta_banner_', 'field_60064d2d6ce3d'),
(302, 59, 'title_box', 'Products Bestay'),
(303, 59, '_title_box', 'field_60064fb7bb286'),
(304, 59, 'description', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem'),
(305, 59, '_description', 'field_60064fedbb287'),
(306, 17, 'description_product', 'Experience the unprecedented convenience of booking with Bestay\'s <br> ecosystem'),
(307, 17, '_description_product', 'field_60064fedbb287'),
(308, 60, 'heading_h1', 'BESTAY 1'),
(309, 60, '_heading_h1', 'field_60016b64f64a7'),
(310, 60, 'dong_so_2', 'test block chain '),
(311, 60, '_dong_so_2', 'field_60016bed659f1'),
(312, 60, 'don_so_3_link_', 'google.com'),
(313, 60, '_don_so_3_link_', 'field_60016c51659f2'),
(314, 60, 'link_1', ''),
(315, 60, '_link_1', 'field_6005cb5ba17b0'),
(316, 60, 'anh_banner', '34'),
(317, 60, '_anh_banner', 'field_6005cbac9ee59'),
(318, 60, 'ten_nut_1', 'campaigns'),
(319, 60, '_ten_nut_1', 'field_6005ce620bef7'),
(320, 60, 'link_nut_1', 'https://www.google.com.vn/'),
(321, 60, '_link_nut_1', 'field_6005cec40bef8'),
(322, 60, 'ten_nut_2', 'news'),
(323, 60, '_ten_nut_2', 'field_6005cee60bef9'),
(324, 60, 'link_nut_2', 'https://www.youtube.com/'),
(325, 60, '_link_nut_2', 'field_6005ceef0befa'),
(326, 60, 'avarta_banner_', '50'),
(327, 60, '_avarta_banner_', 'field_60064d2d6ce3d'),
(328, 60, 'title_box', 'Products Bestay'),
(329, 60, '_title_box', 'field_60064fb7bb286'),
(330, 60, 'description', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem'),
(331, 60, '_description', 'field_60064fedbb287'),
(332, 60, 'description_product', 'Experience the unprecedented convenience of booking with Bestay\'s <br> ecosystem'),
(333, 60, '_description_product', 'field_60064fedbb287'),
(334, 61, '_edit_lock', '1611031487:1'),
(335, 62, '_edit_last', '1'),
(336, 62, '_edit_lock', '1611194413:1'),
(337, 66, '_edit_lock', '1611032218:1'),
(338, 67, '_edit_lock', '1611031840:1'),
(339, 66, '_edit_last', '1'),
(340, 66, 'tieu_de_link', 'See more'),
(341, 66, '_tieu_de_link', 'field_600664656b991'),
(342, 66, 'link', '#'),
(343, 66, '_link', 'field_6006647b6b992'),
(344, 69, '_wp_attached_file', '2021/01/prd-1.png'),
(345, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:450;s:6:\"height\";i:320;s:4:\"file\";s:17:\"2021/01/prd-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"prd-1-300x213.png\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"prd-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(346, 66, 'hinh_anh', '69'),
(347, 66, '_hinh_anh', 'field_600666367f84e'),
(348, 70, '_edit_lock', '1611032276:1'),
(349, 71, '_edit_lock', '1611044803:1'),
(350, 72, '_wp_attached_file', '2021/01/prd-2.png'),
(351, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:450;s:6:\"height\";i:320;s:4:\"file\";s:17:\"2021/01/prd-2.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"prd-2-300x213.png\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"prd-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(352, 70, '_edit_last', '1'),
(353, 70, 'tieu_de_link', 'ios'),
(354, 70, '_tieu_de_link', 'field_600664656b991'),
(355, 70, 'link', '#'),
(356, 70, '_link', 'field_6006647b6b992'),
(357, 70, 'hinh_anh', '72'),
(358, 70, '_hinh_anh', 'field_600666367f84e'),
(359, 73, '_edit_lock', '1611032279:1'),
(360, 74, '_wp_attached_file', '2021/01/prd-3.png'),
(361, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:450;s:6:\"height\";i:320;s:4:\"file\";s:17:\"2021/01/prd-3.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"prd-3-300x213.png\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"prd-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(362, 71, '_edit_last', '1'),
(363, 71, 'tieu_de_link', 'android'),
(364, 71, '_tieu_de_link', 'field_600664656b991'),
(365, 71, 'link', '#'),
(366, 71, '_link', 'field_6006647b6b992'),
(367, 71, 'hinh_anh', '74'),
(368, 71, '_hinh_anh', 'field_600666367f84e'),
(369, 76, '_edit_lock', '1611044282:1'),
(370, 77, '_edit_lock', '1611137234:1'),
(371, 78, '_wp_attached_file', '2021/01/prd-4.png'),
(372, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:450;s:6:\"height\";i:320;s:4:\"file\";s:17:\"2021/01/prd-4.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"prd-4-300x213.png\";s:5:\"width\";i:300;s:6:\"height\";i:213;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"prd-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(373, 77, '_edit_last', '1'),
(374, 77, 'tieu_de_link', 'See More'),
(375, 77, '_tieu_de_link', 'field_600664656b991'),
(376, 77, 'link', '#'),
(377, 77, '_link', 'field_6006647b6b992'),
(378, 77, 'hinh_anh', '78'),
(379, 77, '_hinh_anh', 'field_600666367f84e'),
(380, 17, 'title_campaigns', 'Campaigns 123'),
(381, 17, '_title_campaigns', 'field_6006a1eb68e22'),
(382, 17, 'desc_campaigns', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem123'),
(383, 17, '_desc_campaigns', 'field_6006a25068e23'),
(384, 83, 'heading_h1', 'BESTAY 1'),
(385, 83, '_heading_h1', 'field_60016b64f64a7'),
(386, 83, 'dong_so_2', 'test block chain '),
(387, 83, '_dong_so_2', 'field_60016bed659f1'),
(388, 83, 'don_so_3_link_', 'google.com'),
(389, 83, '_don_so_3_link_', 'field_60016c51659f2'),
(390, 83, 'link_1', ''),
(391, 83, '_link_1', 'field_6005cb5ba17b0'),
(392, 83, 'anh_banner', '34'),
(393, 83, '_anh_banner', 'field_6005cbac9ee59'),
(394, 83, 'ten_nut_1', 'campaigns'),
(395, 83, '_ten_nut_1', 'field_6005ce620bef7'),
(396, 83, 'link_nut_1', 'https://www.google.com.vn/'),
(397, 83, '_link_nut_1', 'field_6005cec40bef8'),
(398, 83, 'ten_nut_2', 'news'),
(399, 83, '_ten_nut_2', 'field_6005cee60bef9'),
(400, 83, 'link_nut_2', 'https://www.youtube.com/'),
(401, 83, '_link_nut_2', 'field_6005ceef0befa'),
(402, 83, 'avarta_banner_', '50'),
(403, 83, '_avarta_banner_', 'field_60064d2d6ce3d'),
(404, 83, 'title_box', 'Products Bestay'),
(405, 83, '_title_box', 'field_60064fb7bb286'),
(406, 83, 'description', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem'),
(407, 83, '_description', 'field_60064fedbb287'),
(408, 83, 'description_product', 'Experience the unprecedented convenience of booking with Bestay\'s <br> ecosystem'),
(409, 83, '_description_product', 'field_60064fedbb287'),
(410, 83, 'title_campaigns', 'Campaigns'),
(411, 83, '_title_campaigns', 'field_60069d66c373f'),
(412, 83, 'desc_campaigns', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem'),
(413, 83, '_desc_campaigns', 'field_60069d71c3740'),
(414, 17, 'title-campaigns', 'Campaigns'),
(415, 17, '_title-campaigns', 'field_60069f9bf1c18'),
(416, 17, 'desc-campaigns', 'bb'),
(417, 17, '_desc-campaigns', 'field_60069fa7f1c19'),
(418, 87, 'heading_h1', 'BESTAY 1'),
(419, 87, '_heading_h1', 'field_60016b64f64a7'),
(420, 87, 'dong_so_2', 'test block chain '),
(421, 87, '_dong_so_2', 'field_60016bed659f1'),
(422, 87, 'don_so_3_link_', 'google.com'),
(423, 87, '_don_so_3_link_', 'field_60016c51659f2'),
(424, 87, 'link_1', ''),
(425, 87, '_link_1', 'field_6005cb5ba17b0'),
(426, 87, 'anh_banner', '34'),
(427, 87, '_anh_banner', 'field_6005cbac9ee59'),
(428, 87, 'ten_nut_1', 'campaigns'),
(429, 87, '_ten_nut_1', 'field_6005ce620bef7'),
(430, 87, 'link_nut_1', 'https://www.google.com.vn/'),
(431, 87, '_link_nut_1', 'field_6005cec40bef8'),
(432, 87, 'ten_nut_2', 'news'),
(433, 87, '_ten_nut_2', 'field_6005cee60bef9'),
(434, 87, 'link_nut_2', 'https://www.youtube.com/'),
(435, 87, '_link_nut_2', 'field_6005ceef0befa'),
(436, 87, 'avarta_banner_', '50'),
(437, 87, '_avarta_banner_', 'field_60064d2d6ce3d'),
(438, 87, 'title_box', 'Products Bestay'),
(439, 87, '_title_box', 'field_60064fb7bb286'),
(440, 87, 'description', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem'),
(441, 87, '_description', 'field_60064fedbb287'),
(442, 87, 'description_product', 'Experience the unprecedented convenience of booking with Bestay\'s <br> ecosystem'),
(443, 87, '_description_product', 'field_60064fedbb287'),
(444, 87, 'title_campaigns', 'Campaigns'),
(445, 87, '_title_campaigns', 'field_60069d66c373f'),
(446, 87, 'desc_campaigns', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem'),
(447, 87, '_desc_campaigns', 'field_60069d71c3740'),
(448, 87, 'title-campaigns', 'Campaigns'),
(449, 87, '_title-campaigns', 'field_60069f9bf1c18'),
(450, 87, 'desc-campaigns', 'bb'),
(451, 87, '_desc-campaigns', 'field_60069fa7f1c19'),
(452, 92, 'heading_h1', 'BESTAY 1'),
(453, 92, '_heading_h1', 'field_60016b64f64a7'),
(454, 92, 'dong_so_2', 'test block chain '),
(455, 92, '_dong_so_2', 'field_60016bed659f1'),
(456, 92, 'don_so_3_link_', 'google.com'),
(457, 92, '_don_so_3_link_', 'field_60016c51659f2'),
(458, 92, 'link_1', ''),
(459, 92, '_link_1', 'field_6005cb5ba17b0'),
(460, 92, 'anh_banner', '34'),
(461, 92, '_anh_banner', 'field_6005cbac9ee59'),
(462, 92, 'ten_nut_1', 'campaigns'),
(463, 92, '_ten_nut_1', 'field_6005ce620bef7'),
(464, 92, 'link_nut_1', 'https://www.google.com.vn/'),
(465, 92, '_link_nut_1', 'field_6005cec40bef8'),
(466, 92, 'ten_nut_2', 'news'),
(467, 92, '_ten_nut_2', 'field_6005cee60bef9'),
(468, 92, 'link_nut_2', 'https://www.youtube.com/'),
(469, 92, '_link_nut_2', 'field_6005ceef0befa'),
(470, 92, 'avarta_banner_', '50'),
(471, 92, '_avarta_banner_', 'field_60064d2d6ce3d'),
(472, 92, 'title_box', 'Products Bestay'),
(473, 92, '_title_box', 'field_60064fb7bb286'),
(474, 92, 'description', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem'),
(475, 92, '_description', 'field_60064fedbb287'),
(476, 92, 'description_product', 'Experience the unprecedented convenience of booking with Bestay\'s <br> ecosystem'),
(477, 92, '_description_product', 'field_60064fedbb287'),
(478, 92, 'title_campaigns', 'Campaigns 123'),
(479, 92, '_title_campaigns', 'field_6006a1eb68e22'),
(480, 92, 'desc_campaigns', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem'),
(481, 92, '_desc_campaigns', 'field_6006a25068e23'),
(482, 92, 'title-campaigns', 'Campaigns'),
(483, 92, '_title-campaigns', 'field_60069f9bf1c18'),
(484, 92, 'desc-campaigns', 'bb'),
(485, 92, '_desc-campaigns', 'field_60069fa7f1c19'),
(486, 93, 'heading_h1', 'BESTAY 1'),
(487, 93, '_heading_h1', 'field_60016b64f64a7'),
(488, 93, 'dong_so_2', 'test block chain '),
(489, 93, '_dong_so_2', 'field_60016bed659f1'),
(490, 93, 'don_so_3_link_', 'google.com'),
(491, 93, '_don_so_3_link_', 'field_60016c51659f2'),
(492, 93, 'link_1', ''),
(493, 93, '_link_1', 'field_6005cb5ba17b0'),
(494, 93, 'anh_banner', '34'),
(495, 93, '_anh_banner', 'field_6005cbac9ee59'),
(496, 93, 'ten_nut_1', 'campaigns'),
(497, 93, '_ten_nut_1', 'field_6005ce620bef7'),
(498, 93, 'link_nut_1', 'https://www.google.com.vn/'),
(499, 93, '_link_nut_1', 'field_6005cec40bef8'),
(500, 93, 'ten_nut_2', 'news'),
(501, 93, '_ten_nut_2', 'field_6005cee60bef9'),
(502, 93, 'link_nut_2', 'https://www.youtube.com/'),
(503, 93, '_link_nut_2', 'field_6005ceef0befa'),
(504, 93, 'avarta_banner_', '50'),
(505, 93, '_avarta_banner_', 'field_60064d2d6ce3d'),
(506, 93, 'title_box', 'Products Bestay'),
(507, 93, '_title_box', 'field_60064fb7bb286'),
(508, 93, 'description', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem'),
(509, 93, '_description', 'field_60064fedbb287'),
(510, 93, 'description_product', 'Experience the unprecedented convenience of booking with Bestay\'s <br> ecosystem'),
(511, 93, '_description_product', 'field_60064fedbb287'),
(512, 93, 'title_campaigns', 'Campaigns 123'),
(513, 93, '_title_campaigns', 'field_6006a1eb68e22'),
(514, 93, 'desc_campaigns', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem'),
(515, 93, '_desc_campaigns', 'field_6006a25068e23'),
(516, 93, 'title-campaigns', 'Campaigns'),
(517, 93, '_title-campaigns', 'field_60069f9bf1c18'),
(518, 93, 'desc-campaigns', 'bb'),
(519, 93, '_desc-campaigns', 'field_60069fa7f1c19'),
(520, 94, 'heading_h1', 'BESTAY 1'),
(521, 94, '_heading_h1', 'field_60016b64f64a7'),
(522, 94, 'dong_so_2', 'test block chain '),
(523, 94, '_dong_so_2', 'field_60016bed659f1'),
(524, 94, 'don_so_3_link_', 'google.com'),
(525, 94, '_don_so_3_link_', 'field_60016c51659f2'),
(526, 94, 'link_1', ''),
(527, 94, '_link_1', 'field_6005cb5ba17b0'),
(528, 94, 'anh_banner', '34'),
(529, 94, '_anh_banner', 'field_6005cbac9ee59'),
(530, 94, 'ten_nut_1', 'campaigns'),
(531, 94, '_ten_nut_1', 'field_6005ce620bef7'),
(532, 94, 'link_nut_1', 'https://www.google.com.vn/'),
(533, 94, '_link_nut_1', 'field_6005cec40bef8'),
(534, 94, 'ten_nut_2', 'news'),
(535, 94, '_ten_nut_2', 'field_6005cee60bef9'),
(536, 94, 'link_nut_2', 'https://www.youtube.com/'),
(537, 94, '_link_nut_2', 'field_6005ceef0befa'),
(538, 94, 'avarta_banner_', '50'),
(539, 94, '_avarta_banner_', 'field_60064d2d6ce3d'),
(540, 94, 'title_box', 'Products Bestay'),
(541, 94, '_title_box', 'field_60064fb7bb286'),
(542, 94, 'description', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem'),
(543, 94, '_description', 'field_60064fedbb287'),
(544, 94, 'description_product', 'Experience the unprecedented convenience of booking with Bestay\'s <br> ecosystem'),
(545, 94, '_description_product', 'field_60064fedbb287'),
(546, 94, 'title_campaigns', 'Campaigns'),
(547, 94, '_title_campaigns', 'field_6006a1eb68e22'),
(548, 94, 'desc_campaigns', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem'),
(549, 94, '_desc_campaigns', 'field_6006a25068e23'),
(550, 94, 'title-campaigns', 'Campaigns'),
(551, 94, '_title-campaigns', 'field_60069f9bf1c18'),
(552, 94, 'desc-campaigns', 'bb'),
(553, 94, '_desc-campaigns', 'field_60069fa7f1c19'),
(554, 95, '_edit_lock', '1611047934:1'),
(555, 96, '_edit_lock', '1611047886:1'),
(556, 97, '_edit_last', '1'),
(557, 97, '_edit_lock', '1611199031:1'),
(558, 100, '_edit_lock', '1611048206:1'),
(559, 101, '_wp_attached_file', '2021/01/home-1.png'),
(560, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:370;s:6:\"height\";i:209;s:4:\"file\";s:18:\"2021/01/home-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"home-1-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"home-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(561, 100, '_edit_last', '1'),
(562, 100, 'avarta-camp', '101'),
(563, 100, '_avarta-camp', 'field_6006a47de8a5f'),
(564, 100, 'link_camp', 'https://www.advancedcustomfields.com/resources/textarea/'),
(565, 100, '_link_camp', 'field_6006a4a0e8a60'),
(566, 102, '_edit_lock', '1611048245:1'),
(567, 103, '_wp_attached_file', '2021/01/home-2.png'),
(568, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:370;s:6:\"height\";i:209;s:4:\"file\";s:18:\"2021/01/home-2.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"home-2-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"home-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(569, 102, '_edit_last', '1'),
(570, 102, 'avarta-camp', '103'),
(571, 102, '_avarta-camp', 'field_6006a47de8a5f'),
(572, 102, 'link_camp', '#'),
(573, 102, '_link_camp', 'field_6006a4a0e8a60'),
(574, 104, '_edit_lock', '1611048268:1'),
(575, 105, '_wp_attached_file', '2021/01/home-3.png'),
(576, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:370;s:6:\"height\";i:209;s:4:\"file\";s:18:\"2021/01/home-3.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"home-3-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"home-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(577, 104, '_edit_last', '1'),
(578, 104, 'avarta-camp', '105'),
(579, 104, '_avarta-camp', 'field_6006a47de8a5f'),
(580, 104, 'link_camp', '#'),
(581, 104, '_link_camp', 'field_6006a4a0e8a60'),
(582, 106, '_edit_lock', '1611048290:1'),
(583, 107, '_wp_attached_file', '2021/01/home-2-1.png'),
(584, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:370;s:6:\"height\";i:209;s:4:\"file\";s:20:\"2021/01/home-2-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"home-2-1-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"home-2-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(585, 106, '_edit_last', '1'),
(586, 106, 'avarta-camp', '107'),
(587, 106, '_avarta-camp', 'field_6006a47de8a5f'),
(588, 106, 'link_camp', '#'),
(589, 106, '_link_camp', 'field_6006a4a0e8a60'),
(590, 108, 'heading_h1', 'BESTAY 1'),
(591, 108, '_heading_h1', 'field_60016b64f64a7'),
(592, 108, 'dong_so_2', 'test block chain '),
(593, 108, '_dong_so_2', 'field_60016bed659f1'),
(594, 108, 'don_so_3_link_', 'google.com'),
(595, 108, '_don_so_3_link_', 'field_60016c51659f2'),
(596, 108, 'link_1', ''),
(597, 108, '_link_1', 'field_6005cb5ba17b0'),
(598, 108, 'anh_banner', '34'),
(599, 108, '_anh_banner', 'field_6005cbac9ee59'),
(600, 108, 'ten_nut_1', 'campaigns'),
(601, 108, '_ten_nut_1', 'field_6005ce620bef7'),
(602, 108, 'link_nut_1', 'https://www.google.com.vn/'),
(603, 108, '_link_nut_1', 'field_6005cec40bef8'),
(604, 108, 'ten_nut_2', 'news'),
(605, 108, '_ten_nut_2', 'field_6005cee60bef9'),
(606, 108, 'link_nut_2', 'https://www.youtube.com/'),
(607, 108, '_link_nut_2', 'field_6005ceef0befa'),
(608, 108, 'avarta_banner_', '50'),
(609, 108, '_avarta_banner_', 'field_60064d2d6ce3d'),
(610, 108, 'title_box', 'Products Bestay'),
(611, 108, '_title_box', 'field_60064fb7bb286'),
(612, 108, 'description', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem'),
(613, 108, '_description', 'field_60064fedbb287'),
(614, 108, 'description_product', 'Experience the unprecedented convenience of booking with Bestay\'s <br> ecosystem'),
(615, 108, '_description_product', 'field_60064fedbb287'),
(616, 108, 'title_campaigns', 'Campaigns 123'),
(617, 108, '_title_campaigns', 'field_6006a1eb68e22'),
(618, 108, 'desc_campaigns', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem123'),
(619, 108, '_desc_campaigns', 'field_6006a25068e23'),
(620, 108, 'title-campaigns', 'Campaigns'),
(621, 108, '_title-campaigns', 'field_60069f9bf1c18'),
(622, 108, 'desc-campaigns', 'bb'),
(623, 108, '_desc-campaigns', 'field_60069fa7f1c19'),
(624, 17, 'title_new', 'News 123'),
(625, 17, '_title_new', 'field_6006ac07b8910'),
(626, 17, 'desc-new-home', 'Trade BSY, earn BSY with all bonus campaigns'),
(627, 17, '_desc-new-home', 'field_6006ac18d29c8'),
(628, 112, 'heading_h1', 'BESTAY 1'),
(629, 112, '_heading_h1', 'field_60016b64f64a7'),
(630, 112, 'dong_so_2', 'test block chain '),
(631, 112, '_dong_so_2', 'field_60016bed659f1'),
(632, 112, 'don_so_3_link_', 'google.com'),
(633, 112, '_don_so_3_link_', 'field_60016c51659f2'),
(634, 112, 'link_1', ''),
(635, 112, '_link_1', 'field_6005cb5ba17b0'),
(636, 112, 'anh_banner', '34'),
(637, 112, '_anh_banner', 'field_6005cbac9ee59'),
(638, 112, 'ten_nut_1', 'campaigns'),
(639, 112, '_ten_nut_1', 'field_6005ce620bef7'),
(640, 112, 'link_nut_1', 'https://www.google.com.vn/'),
(641, 112, '_link_nut_1', 'field_6005cec40bef8'),
(642, 112, 'ten_nut_2', 'news'),
(643, 112, '_ten_nut_2', 'field_6005cee60bef9'),
(644, 112, 'link_nut_2', 'https://www.youtube.com/'),
(645, 112, '_link_nut_2', 'field_6005ceef0befa'),
(646, 112, 'avarta_banner_', '50'),
(647, 112, '_avarta_banner_', 'field_60064d2d6ce3d'),
(648, 112, 'title_box', 'Products Bestay'),
(649, 112, '_title_box', 'field_60064fb7bb286'),
(650, 112, 'description', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem'),
(651, 112, '_description', 'field_60064fedbb287'),
(652, 112, 'description_product', 'Experience the unprecedented convenience of booking with Bestay\'s <br> ecosystem'),
(653, 112, '_description_product', 'field_60064fedbb287'),
(654, 112, 'title_campaigns', 'Campaigns 123'),
(655, 112, '_title_campaigns', 'field_6006a1eb68e22'),
(656, 112, 'desc_campaigns', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem123'),
(657, 112, '_desc_campaigns', 'field_6006a25068e23'),
(658, 112, 'title-campaigns', 'Campaigns'),
(659, 112, '_title-campaigns', 'field_60069f9bf1c18'),
(660, 112, 'desc-campaigns', 'bb'),
(661, 112, '_desc-campaigns', 'field_60069fa7f1c19'),
(662, 112, 'title_new', 'News'),
(663, 112, '_title_new', 'field_6006ac07b8910'),
(664, 112, 'desc-new-home', 'Trade BSY, earn BSY with all bonus campaigns'),
(665, 112, '_desc-new-home', 'field_6006ac18d29c8'),
(666, 113, 'heading_h1', 'BESTAY 1'),
(667, 113, '_heading_h1', 'field_60016b64f64a7'),
(668, 113, 'dong_so_2', 'test block chain '),
(669, 113, '_dong_so_2', 'field_60016bed659f1'),
(670, 113, 'don_so_3_link_', 'google.com'),
(671, 113, '_don_so_3_link_', 'field_60016c51659f2'),
(672, 113, 'link_1', ''),
(673, 113, '_link_1', 'field_6005cb5ba17b0'),
(674, 113, 'anh_banner', '34'),
(675, 113, '_anh_banner', 'field_6005cbac9ee59'),
(676, 113, 'ten_nut_1', 'campaigns'),
(677, 113, '_ten_nut_1', 'field_6005ce620bef7'),
(678, 113, 'link_nut_1', 'https://www.google.com.vn/'),
(679, 113, '_link_nut_1', 'field_6005cec40bef8'),
(680, 113, 'ten_nut_2', 'news'),
(681, 113, '_ten_nut_2', 'field_6005cee60bef9'),
(682, 113, 'link_nut_2', 'https://www.youtube.com/'),
(683, 113, '_link_nut_2', 'field_6005ceef0befa'),
(684, 113, 'avarta_banner_', '50'),
(685, 113, '_avarta_banner_', 'field_60064d2d6ce3d'),
(686, 113, 'title_box', 'Products Bestay'),
(687, 113, '_title_box', 'field_60064fb7bb286'),
(688, 113, 'description', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem'),
(689, 113, '_description', 'field_60064fedbb287'),
(690, 113, 'description_product', 'Experience the unprecedented convenience of booking with Bestay\'s <br> ecosystem'),
(691, 113, '_description_product', 'field_60064fedbb287'),
(692, 113, 'title_campaigns', 'Campaigns 123'),
(693, 113, '_title_campaigns', 'field_6006a1eb68e22'),
(694, 113, 'desc_campaigns', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem123'),
(695, 113, '_desc_campaigns', 'field_6006a25068e23'),
(696, 113, 'title-campaigns', 'Campaigns'),
(697, 113, '_title-campaigns', 'field_60069f9bf1c18'),
(698, 113, 'desc-campaigns', 'bb'),
(699, 113, '_desc-campaigns', 'field_60069fa7f1c19'),
(700, 113, 'title_new', 'News'),
(701, 113, '_title_new', 'field_6006ac07b8910'),
(702, 113, 'desc-new-home', 'Trade BSY, earn BSY with all bonus campaigns'),
(703, 113, '_desc-new-home', 'field_6006ac18d29c8'),
(704, 114, 'heading_h1', 'BESTAY 1'),
(705, 114, '_heading_h1', 'field_60016b64f64a7'),
(706, 114, 'dong_so_2', 'test block chain '),
(707, 114, '_dong_so_2', 'field_60016bed659f1'),
(708, 114, 'don_so_3_link_', 'google.com'),
(709, 114, '_don_so_3_link_', 'field_60016c51659f2'),
(710, 114, 'link_1', ''),
(711, 114, '_link_1', 'field_6005cb5ba17b0'),
(712, 114, 'anh_banner', '34'),
(713, 114, '_anh_banner', 'field_6005cbac9ee59'),
(714, 114, 'ten_nut_1', 'campaigns'),
(715, 114, '_ten_nut_1', 'field_6005ce620bef7'),
(716, 114, 'link_nut_1', 'https://www.google.com.vn/'),
(717, 114, '_link_nut_1', 'field_6005cec40bef8'),
(718, 114, 'ten_nut_2', 'news'),
(719, 114, '_ten_nut_2', 'field_6005cee60bef9'),
(720, 114, 'link_nut_2', 'https://www.youtube.com/'),
(721, 114, '_link_nut_2', 'field_6005ceef0befa'),
(722, 114, 'avarta_banner_', '50'),
(723, 114, '_avarta_banner_', 'field_60064d2d6ce3d'),
(724, 114, 'title_box', 'Products Bestay'),
(725, 114, '_title_box', 'field_60064fb7bb286'),
(726, 114, 'description', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem'),
(727, 114, '_description', 'field_60064fedbb287'),
(728, 114, 'description_product', 'Experience the unprecedented convenience of booking with Bestay\'s <br> ecosystem'),
(729, 114, '_description_product', 'field_60064fedbb287'),
(730, 114, 'title_campaigns', 'Campaigns 123'),
(731, 114, '_title_campaigns', 'field_6006a1eb68e22'),
(732, 114, 'desc_campaigns', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem123'),
(733, 114, '_desc_campaigns', 'field_6006a25068e23'),
(734, 114, 'title-campaigns', 'Campaigns'),
(735, 114, '_title-campaigns', 'field_60069f9bf1c18'),
(736, 114, 'desc-campaigns', 'bb'),
(737, 114, '_desc-campaigns', 'field_60069fa7f1c19'),
(738, 114, 'title_new', 'News 123'),
(739, 114, '_title_new', 'field_6006ac07b8910'),
(740, 114, 'desc-new-home', 'Trade BSY, earn BSY with all bonus campaigns'),
(741, 114, '_desc-new-home', 'field_6006ac18d29c8'),
(742, 115, 'heading_h1', 'BESTAY 1'),
(743, 115, '_heading_h1', 'field_60016b64f64a7'),
(744, 115, 'dong_so_2', 'test block chain '),
(745, 115, '_dong_so_2', 'field_60016bed659f1'),
(746, 115, 'don_so_3_link_', 'google.com'),
(747, 115, '_don_so_3_link_', 'field_60016c51659f2'),
(748, 115, 'link_1', ''),
(749, 115, '_link_1', 'field_6005cb5ba17b0'),
(750, 115, 'anh_banner', '34'),
(751, 115, '_anh_banner', 'field_6005cbac9ee59'),
(752, 115, 'ten_nut_1', 'campaigns'),
(753, 115, '_ten_nut_1', 'field_6005ce620bef7'),
(754, 115, 'link_nut_1', 'https://www.google.com.vn/'),
(755, 115, '_link_nut_1', 'field_6005cec40bef8'),
(756, 115, 'ten_nut_2', 'news'),
(757, 115, '_ten_nut_2', 'field_6005cee60bef9'),
(758, 115, 'link_nut_2', 'https://www.youtube.com/'),
(759, 115, '_link_nut_2', 'field_6005ceef0befa'),
(760, 115, 'avarta_banner_', '50'),
(761, 115, '_avarta_banner_', 'field_60064d2d6ce3d'),
(762, 115, 'title_box', 'Products Bestay'),
(763, 115, '_title_box', 'field_60064fb7bb286'),
(764, 115, 'description', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem'),
(765, 115, '_description', 'field_60064fedbb287'),
(766, 115, 'description_product', 'Experience the unprecedented convenience of booking with Bestay\'s <br> ecosystem'),
(767, 115, '_description_product', 'field_60064fedbb287'),
(768, 115, 'title_campaigns', 'Campaigns 123'),
(769, 115, '_title_campaigns', 'field_6006a1eb68e22'),
(770, 115, 'desc_campaigns', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem123'),
(771, 115, '_desc_campaigns', 'field_6006a25068e23'),
(772, 115, 'title-campaigns', 'Campaigns'),
(773, 115, '_title-campaigns', 'field_60069f9bf1c18'),
(774, 115, 'desc-campaigns', 'bb'),
(775, 115, '_desc-campaigns', 'field_60069fa7f1c19'),
(776, 115, 'title_new', 'News 123'),
(777, 115, '_title_new', 'field_6006ac07b8910'),
(778, 115, 'desc-new-home', 'Trade BSY, earn BSY with all bonus campaigns'),
(779, 115, '_desc-new-home', 'field_6006ac18d29c8'),
(780, 116, '_edit_lock', '1611137385:1'),
(783, 118, '_edit_last', '1'),
(784, 118, '_edit_lock', '1611199266:1'),
(785, 120, '_edit_lock', '1611199227:1'),
(786, 118, '_wp_trash_meta_status', 'publish'),
(787, 118, '_wp_trash_meta_time', '1611199420'),
(788, 118, '_wp_desired_post_slug', 'group_6008f31246d4b'),
(789, 119, '_wp_trash_meta_status', 'publish'),
(790, 119, '_wp_trash_meta_time', '1611199420'),
(791, 119, '_wp_desired_post_slug', 'field_6008f31ba2035'),
(792, 121, '_edit_last', '1'),
(793, 121, '_edit_lock', '1611199535:1'),
(794, 17, 'test_demo-1_0_', 'qweqweqwe'),
(795, 17, '_test_demo-1_0_', 'field_6008f5eb93ed4'),
(796, 17, 'test_demo-1_0_text-1', 'qweqwe'),
(797, 17, '_test_demo-1_0_text-1', 'field_6008f61093ed5'),
(798, 17, 'test_demo-1_0_text-2', 'qwqwe'),
(799, 17, '_test_demo-1_0_text-2', 'field_6008f62593ed7'),
(800, 17, 'test_demo-1_1_', 'qweqwe'),
(801, 17, '_test_demo-1_1_', 'field_6008f5eb93ed4'),
(802, 17, 'test_demo-1_1_text-1', 'qweqwe'),
(803, 17, '_test_demo-1_1_text-1', 'field_6008f61093ed5'),
(804, 17, 'test_demo-1_1_text-2', 'qweqwe'),
(805, 17, '_test_demo-1_1_text-2', 'field_6008f62593ed7'),
(806, 17, 'test_demo-1', '2'),
(807, 17, '_test_demo-1', 'field_6008f4ea58b7f'),
(808, 130, 'heading_h1', 'BESTAY 1'),
(809, 130, '_heading_h1', 'field_60016b64f64a7'),
(810, 130, 'dong_so_2', 'test block chain '),
(811, 130, '_dong_so_2', 'field_60016bed659f1'),
(812, 130, 'don_so_3_link_', 'google.com'),
(813, 130, '_don_so_3_link_', 'field_60016c51659f2'),
(814, 130, 'link_1', ''),
(815, 130, '_link_1', 'field_6005cb5ba17b0'),
(816, 130, 'anh_banner', '34'),
(817, 130, '_anh_banner', 'field_6005cbac9ee59'),
(818, 130, 'ten_nut_1', 'campaigns'),
(819, 130, '_ten_nut_1', 'field_6005ce620bef7'),
(820, 130, 'link_nut_1', 'https://www.google.com.vn/'),
(821, 130, '_link_nut_1', 'field_6005cec40bef8'),
(822, 130, 'ten_nut_2', 'news'),
(823, 130, '_ten_nut_2', 'field_6005cee60bef9'),
(824, 130, 'link_nut_2', 'https://www.youtube.com/'),
(825, 130, '_link_nut_2', 'field_6005ceef0befa'),
(826, 130, 'avarta_banner_', '50'),
(827, 130, '_avarta_banner_', 'field_60064d2d6ce3d'),
(828, 130, 'title_box', 'Products Bestay'),
(829, 130, '_title_box', 'field_60064fb7bb286'),
(830, 130, 'description', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem'),
(831, 130, '_description', 'field_60064fedbb287'),
(832, 130, 'description_product', 'Experience the unprecedented convenience of booking with Bestay\'s <br> ecosystem'),
(833, 130, '_description_product', 'field_60064fedbb287'),
(834, 130, 'title_campaigns', 'Campaigns 123'),
(835, 130, '_title_campaigns', 'field_6006a1eb68e22'),
(836, 130, 'desc_campaigns', 'Experience the unprecedented convenience of booking with Bestay\'s ecosystem123'),
(837, 130, '_desc_campaigns', 'field_6006a25068e23'),
(838, 130, 'title-campaigns', 'Campaigns'),
(839, 130, '_title-campaigns', 'field_60069f9bf1c18'),
(840, 130, 'desc-campaigns', 'bb'),
(841, 130, '_desc-campaigns', 'field_60069fa7f1c19'),
(842, 130, 'title_new', 'News 123'),
(843, 130, '_title_new', 'field_6006ac07b8910'),
(844, 130, 'desc-new-home', 'Trade BSY, earn BSY with all bonus campaigns'),
(845, 130, '_desc-new-home', 'field_6006ac18d29c8'),
(846, 130, 'test_demo-1_0_', 'qweqweqwe'),
(847, 130, '_test_demo-1_0_', 'field_6008f5eb93ed4'),
(848, 130, 'test_demo-1_0_text-1', 'qweqwe'),
(849, 130, '_test_demo-1_0_text-1', 'field_6008f61093ed5'),
(850, 130, 'test_demo-1_0_text-2', 'qwqwe'),
(851, 130, '_test_demo-1_0_text-2', 'field_6008f62593ed7'),
(852, 130, 'test_demo-1_1_', 'qweqwe'),
(853, 130, '_test_demo-1_1_', 'field_6008f5eb93ed4'),
(854, 130, 'test_demo-1_1_text-1', 'qweqwe'),
(855, 130, '_test_demo-1_1_text-1', 'field_6008f61093ed5'),
(856, 130, 'test_demo-1_1_text-2', 'qweqwe'),
(857, 130, '_test_demo-1_1_text-2', 'field_6008f62593ed7'),
(858, 130, 'test_demo-1', '2'),
(859, 130, '_test_demo-1', 'field_6008f4ea58b7f');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-01-15 08:42:41', '2021-01-15 08:42:41', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-01-15 08:42:41', '2021-01-15 08:42:41', '', 0, 'http://localhost/bonsai-bestay/?p=1', 0, 'post', '', 1),
(2, 1, '2021-01-15 08:42:41', '2021-01-15 08:42:41', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/bonsai-bestay/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2021-01-15 09:45:39', '2021-01-15 09:45:39', '', 0, 'http://localhost/bonsai-bestay/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-01-15 08:42:41', '2021-01-15 08:42:41', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/bonsai-bestay.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2021-01-15 09:45:42', '2021-01-15 09:45:42', '', 0, 'http://localhost/bonsai-bestay/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-01-15 08:43:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-01-15 08:43:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/bonsai-bestay/?p=4', 0, 'post', '', 0),
(6, 1, '2021-01-15 08:45:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-01-15 08:45:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/bonsai-bestay/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2021-01-15 08:51:31', '2021-01-15 08:51:31', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2021-01-15 09:37:14', '2021-01-15 09:37:14', '', 0, 'http://localhost/bonsai-bestay/?p=7', 1, 'nav_menu_item', '', 0),
(9, 1, '2021-01-15 08:59:33', '2021-01-15 08:59:33', '', 'Trade', '', 'publish', 'closed', 'closed', '', 'trade', '', '', '2021-01-15 09:37:14', '2021-01-15 09:37:14', '', 0, 'http://localhost/bonsai-bestay/?p=9', 3, 'nav_menu_item', '', 0),
(10, 1, '2021-01-15 08:59:33', '2021-01-15 08:59:33', '', 'Airdrop', '', 'publish', 'closed', 'closed', '', 'airdrop', '', '', '2021-01-15 09:37:14', '2021-01-15 09:37:14', '', 0, 'http://localhost/bonsai-bestay/?p=10', 4, 'nav_menu_item', '', 0),
(11, 1, '2021-01-15 08:59:33', '2021-01-15 08:59:33', '', 'Guide', '', 'publish', 'closed', 'closed', '', 'guide', '', '', '2021-01-15 09:37:14', '2021-01-15 09:37:14', '', 0, 'http://localhost/bonsai-bestay/?p=11', 5, 'nav_menu_item', '', 0),
(12, 1, '2021-01-15 08:59:33', '2021-01-15 08:59:33', '', 'Lastest News', '', 'publish', 'closed', 'closed', '', 'lastest-news', '', '', '2021-01-15 09:37:14', '2021-01-15 09:37:14', '', 0, 'http://localhost/bonsai-bestay/?p=12', 6, 'nav_menu_item', '', 0),
(13, 1, '2021-01-15 09:37:14', '2021-01-15 09:37:14', '', 'Product', '', 'publish', 'closed', 'closed', '', 'product', '', '', '2021-01-15 09:37:14', '2021-01-15 09:37:14', '', 0, 'http://localhost/bonsai-bestay/?p=13', 2, 'nav_menu_item', '', 0),
(14, 1, '2021-01-15 09:45:39', '2021-01-15 09:45:39', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/bonsai-bestay/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-01-15 09:45:39', '2021-01-15 09:45:39', '', 2, 'http://localhost/bonsai-bestay/2021/01/15/2-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2021-01-15 09:45:42', '2021-01-15 09:45:42', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/bonsai-bestay.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-01-15 09:45:42', '2021-01-15 09:45:42', '', 3, 'http://localhost/bonsai-bestay/2021/01/15/3-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2021-01-15 09:58:24', '2021-01-15 09:58:24', '<!-- wp:paragraph -->\n<p>asdadasdadad</p>\n<!-- /wp:paragraph -->', 'dadadasd', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2021-01-15 09:58:24', '2021-01-15 09:58:24', '', 0, 'http://localhost/bonsai-bestay/?page_id=16', 0, 'page', '', 0),
(17, 1, '2021-01-15 09:51:23', '2021-01-15 09:51:23', '', 'Trang chủ', '', 'publish', 'open', 'closed', '', 'trang-chu-bestay', '', '', '2021-01-21 03:54:01', '2021-01-21 03:54:01', '', 0, 'http://localhost/bonsai-bestay/?page_id=17', 0, 'page', '', 0),
(18, 1, '2021-01-15 09:51:23', '2021-01-15 09:51:23', '<!-- wp:paragraph -->\n<p>blah</p>\n<!-- /wp:paragraph -->', 'Trang chủ bestay', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-15 09:51:23', '2021-01-15 09:51:23', '', 17, 'http://localhost/bonsai-bestay/2021/01/15/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2021-01-15 09:52:03', '2021-01-15 09:52:03', '', 'Trang chủ bestay', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-15 09:52:03', '2021-01-15 09:52:03', '', 17, 'http://localhost/bonsai-bestay/2021/01/15/17-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2021-01-15 09:58:24', '2021-01-15 09:58:24', '<!-- wp:paragraph -->\n<p>asdadasdadad</p>\n<!-- /wp:paragraph -->', 'dadadasd', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2021-01-15 09:58:24', '2021-01-15 09:58:24', '', 16, 'http://localhost/bonsai-bestay/2021/01/15/16-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2021-01-15 10:18:13', '2021-01-15 10:18:13', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"17\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Title banner home', 'title-banner-home', 'publish', 'closed', 'closed', '', 'group_60016b368b280', '', '', '2021-01-21 03:34:09', '2021-01-21 03:34:09', '', 0, 'http://localhost/bonsai-bestay/?post_type=acf-field-group&#038;p=22', 0, 'acf-field-group', '', 0),
(23, 1, '2021-01-15 10:18:13', '2021-01-15 10:18:13', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'heading h1', 'heading_h1', 'publish', 'closed', 'closed', '', 'field_60016b64f64a7', '', '', '2021-01-21 03:23:55', '2021-01-21 03:23:55', '', 22, 'http://localhost/bonsai-bestay/?post_type=acf-field&#038;p=23', 1, 'acf-field', '', 0),
(24, 1, '2021-01-15 10:21:24', '2021-01-15 10:21:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'dong so 2 desc', 'dong_so_2', 'publish', 'closed', 'closed', '', 'field_60016bed659f1', '', '', '2021-01-19 03:16:29', '2021-01-19 03:16:29', '', 22, 'http://localhost/bonsai-bestay/?post_type=acf-field&#038;p=24', 2, 'acf-field', '', 0),
(27, 1, '2021-01-18 17:39:11', '2021-01-18 17:39:11', '', 'Trang chủ bestay', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-18 17:39:11', '2021-01-18 17:39:11', '', 17, 'http://localhost/bonsai-bestay/2021/01/18/17-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2021-01-18 17:47:15', '2021-01-18 17:47:15', '', 'Trang chủ bestay', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-18 17:47:15', '2021-01-18 17:47:15', '', 17, 'http://localhost/bonsai-bestay/2021/01/18/17-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2021-01-18 17:50:22', '2021-01-18 17:50:22', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'avata banner', 'avata-banner', 'trash', 'closed', 'closed', '', 'group_6005ca2ec2759__trashed', '', '', '2021-01-18 17:55:45', '2021-01-18 17:55:45', '', 0, 'http://localhost/bonsai-bestay/?post_type=acf-field-group&#038;p=29', 0, 'acf-field-group', '', 0),
(30, 1, '2021-01-18 17:50:22', '2021-01-18 17:50:22', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'anh slide trang chu', 'anh_slide_trang_chu', 'trash', 'closed', 'closed', '', 'field_6005ca3a89e5e__trashed', '', '', '2021-01-18 17:55:45', '2021-01-18 17:55:45', '', 29, 'http://localhost/bonsai-bestay/?post_type=acf-field&#038;p=30', 0, 'acf-field', '', 0),
(34, 1, '2021-01-18 17:56:51', '2021-01-18 17:56:51', '', 'b01456bef38f02d15b9e', '', 'inherit', 'open', 'closed', '', 'b01456bef38f02d15b9e', '', '', '2021-01-18 17:56:51', '2021-01-18 17:56:51', '', 17, 'http://localhost/bonsai-bestay/wp-content/uploads/2021/01/b01456bef38f02d15b9e.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2021-01-18 17:57:12', '2021-01-18 17:57:12', '', 'Trang chủ bestay', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-18 17:57:12', '2021-01-18 17:57:12', '', 17, 'http://localhost/bonsai-bestay/2021/01/18/17-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2021-01-18 18:04:26', '2021-01-18 18:04:26', '', 'Trang chủ bestay', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-18 18:04:26', '2021-01-18 18:04:26', '', 17, 'http://localhost/bonsai-bestay/2021/01/18/17-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2021-01-18 18:10:09', '2021-01-18 18:10:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'ten nut 1', 'ten_nut_1', 'publish', 'closed', 'closed', '', 'field_6005ce620bef7', '', '', '2021-01-19 03:14:50', '2021-01-19 03:14:50', '', 22, 'http://localhost/bonsai-bestay/?post_type=acf-field&#038;p=37', 5, 'acf-field', '', 0),
(38, 1, '2021-01-18 18:10:09', '2021-01-18 18:10:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'link nut 1', 'link_nut_1', 'publish', 'closed', 'closed', '', 'field_6005cec40bef8', '', '', '2021-01-19 03:14:50', '2021-01-19 03:14:50', '', 22, 'http://localhost/bonsai-bestay/?post_type=acf-field&#038;p=38', 6, 'acf-field', '', 0),
(39, 1, '2021-01-18 18:10:09', '2021-01-18 18:10:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'ten nut 2', 'ten_nut_2', 'publish', 'closed', 'closed', '', 'field_6005cee60bef9', '', '', '2021-01-19 03:14:50', '2021-01-19 03:14:50', '', 22, 'http://localhost/bonsai-bestay/?post_type=acf-field&#038;p=39', 8, 'acf-field', '', 0),
(40, 1, '2021-01-18 18:10:09', '2021-01-18 18:10:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'link nut 2', 'link_nut_2', 'publish', 'closed', 'closed', '', 'field_6005ceef0befa', '', '', '2021-01-19 03:14:50', '2021-01-19 03:14:50', '', 22, 'http://localhost/bonsai-bestay/?post_type=acf-field&#038;p=40', 9, 'acf-field', '', 0),
(41, 1, '2021-01-18 18:13:31', '2021-01-18 18:13:31', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'nut 1', 'nut_1_', 'publish', 'closed', 'closed', '', 'field_6005cfa9483c5', '', '', '2021-01-19 03:16:29', '2021-01-19 03:16:29', '', 22, 'http://localhost/bonsai-bestay/?post_type=acf-field&#038;p=41', 4, 'acf-field', '', 0),
(42, 1, '2021-01-18 18:13:31', '2021-01-18 18:13:31', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'nut 2', 'nut_2', 'publish', 'closed', 'closed', '', 'field_6005cfc0483c6', '', '', '2021-01-19 03:14:50', '2021-01-19 03:14:50', '', 22, 'http://localhost/bonsai-bestay/?post_type=acf-field&#038;p=42', 7, 'acf-field', '', 0),
(43, 1, '2021-01-18 18:15:32', '2021-01-18 18:15:32', '', 'Trang chủ bestay', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-18 18:15:32', '2021-01-18 18:15:32', '', 17, 'http://localhost/bonsai-bestay/2021/01/18/17-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2021-01-18 18:18:57', '2021-01-18 18:18:57', '', 'Trang chủ bestay', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-18 18:18:57', '2021-01-18 18:18:57', '', 17, 'http://localhost/bonsai-bestay/2021/01/18/17-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2021-01-18 18:19:01', '2021-01-18 18:19:01', '', 'Trang chủ bestay', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-18 18:19:01', '2021-01-18 18:19:01', '', 17, 'http://localhost/bonsai-bestay/2021/01/18/17-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2021-01-19 02:52:55', '2021-01-19 02:52:55', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-19 02:52:55', '2021-01-19 02:52:55', '', 17, 'http://localhost/bonsai-bestay/2021/01/19/17-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2021-01-19 03:08:37', '2021-01-19 03:08:37', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'avarta banner', 'avarta_banner_', 'publish', 'closed', 'closed', '', 'field_60064d2d6ce3d', '', '', '2021-01-19 03:16:29', '2021-01-19 03:16:29', '', 22, 'http://localhost/bonsai-bestay/?post_type=acf-field&#038;p=49', 3, 'acf-field', '', 0),
(50, 1, '2021-01-19 03:11:04', '2021-01-19 03:11:04', '', 'ab-1', '', 'inherit', 'open', 'closed', '', 'ab-1', '', '', '2021-01-19 03:11:04', '2021-01-19 03:11:04', '', 17, 'http://localhost/bonsai-bestay/wp-content/uploads/2021/01/ab-1.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2021-01-19 03:11:11', '2021-01-19 03:11:11', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-19 03:11:11', '2021-01-19 03:11:11', '', 17, 'http://localhost/bonsai-bestay/2021/01/19/17-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2021-01-19 03:11:28', '2021-01-19 03:11:28', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-19 03:11:28', '2021-01-19 03:11:28', '', 17, 'http://localhost/bonsai-bestay/2021/01/19/17-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2021-01-19 03:14:23', '2021-01-19 03:14:23', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'khối banner', 'khối_banner', 'publish', 'closed', 'closed', '', 'field_60064e7e268c7', '', '', '2021-01-19 03:14:50', '2021-01-19 03:14:50', '', 22, 'http://localhost/bonsai-bestay/?post_type=acf-field&#038;p=55', 0, 'acf-field', '', 0),
(56, 1, '2021-01-19 03:22:00', '2021-01-19 03:22:00', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Khối product', 'khối_product', 'publish', 'closed', 'closed', '', 'field_60064fa2bb285', '', '', '2021-01-19 03:22:00', '2021-01-19 03:22:00', '', 22, 'http://localhost/bonsai-bestay/?post_type=acf-field&p=56', 10, 'acf-field', '', 0),
(57, 1, '2021-01-19 03:22:00', '2021-01-19 03:22:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title box', 'title_box', 'publish', 'closed', 'closed', '', 'field_60064fb7bb286', '', '', '2021-01-19 03:22:00', '2021-01-19 03:22:00', '', 22, 'http://localhost/bonsai-bestay/?post_type=acf-field&p=57', 11, 'acf-field', '', 0),
(58, 1, '2021-01-19 03:22:00', '2021-01-19 03:22:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'description_product', 'description_product', 'publish', 'closed', 'closed', '', 'field_60064fedbb287', '', '', '2021-01-19 03:28:13', '2021-01-19 03:28:13', '', 22, 'http://localhost/bonsai-bestay/?post_type=acf-field&#038;p=58', 12, 'acf-field', '', 0),
(59, 1, '2021-01-19 03:22:44', '2021-01-19 03:22:44', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-19 03:22:44', '2021-01-19 03:22:44', '', 17, 'http://localhost/bonsai-bestay/2021/01/19/17-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2021-01-19 03:29:19', '2021-01-19 03:29:19', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-19 03:29:19', '2021-01-19 03:29:19', '', 17, 'http://localhost/bonsai-bestay/2021/01/19/17-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2021-01-19 04:46:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-01-19 04:46:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/bonsai-bestay/?post_type=thong_tin_product&p=61', 0, 'thong_tin_product', '', 0),
(62, 1, '2021-01-19 04:49:16', '2021-01-19 04:49:16', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"thong_tin_product\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:3:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:8:\"comments\";}s:11:\"description\";s:0:\"\";}', 'link product home', 'link-product-home', 'publish', 'closed', 'closed', '', 'group_60066455c2416', '', '', '2021-01-21 02:02:30', '2021-01-21 02:02:30', '', 0, 'http://localhost/bonsai-bestay/?post_type=acf-field-group&#038;p=62', 0, 'acf-field-group', '', 0),
(63, 1, '2021-01-19 04:49:16', '2021-01-19 04:49:16', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'tieu de link', 'tieu_de_link', 'publish', 'closed', 'closed', '', 'field_600664656b991', '', '', '2021-01-19 04:49:27', '2021-01-19 04:49:27', '', 62, 'http://localhost/bonsai-bestay/?post_type=acf-field&#038;p=63', 1, 'acf-field', '', 0),
(64, 1, '2021-01-19 04:49:16', '2021-01-19 04:49:16', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'link', 'link', 'publish', 'closed', 'closed', '', 'field_6006647b6b992', '', '', '2021-01-19 04:49:27', '2021-01-19 04:49:27', '', 62, 'http://localhost/bonsai-bestay/?post_type=acf-field&#038;p=64', 2, 'acf-field', '', 0),
(65, 1, '2021-01-19 04:49:16', '2021-01-19 04:49:16', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'thông tin link', 'thong_tin_link', 'publish', 'closed', 'closed', '', 'field_600664b06b993', '', '', '2021-01-19 04:49:27', '2021-01-19 04:49:27', '', 62, 'http://localhost/bonsai-bestay/?post_type=acf-field&#038;p=65', 0, 'acf-field', '', 0),
(66, 1, '2021-01-19 04:52:54', '2021-01-19 04:52:54', '', 'High-Performance Decentralized Platform', '', 'publish', 'closed', 'closed', '', '66', '', '', '2021-01-19 04:56:57', '2021-01-19 04:56:57', '', 0, 'http://localhost/bonsai-bestay/?post_type=thong_tin_product&#038;p=66', 0, 'thong_tin_product', '', 0),
(67, 1, '2021-01-19 04:52:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-01-19 04:52:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/bonsai-bestay/?post_type=thong_tin_product&p=67', 0, 'thong_tin_product', '', 0),
(68, 1, '2021-01-19 04:55:39', '2021-01-19 04:55:39', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'hinh anh', 'hinh_anh', 'publish', 'closed', 'closed', '', 'field_600666367f84e', '', '', '2021-01-19 04:55:39', '2021-01-19 04:55:39', '', 62, 'http://localhost/bonsai-bestay/?post_type=acf-field&p=68', 3, 'acf-field', '', 0),
(69, 1, '2021-01-19 04:56:53', '2021-01-19 04:56:53', '', 'prd-1', '', 'inherit', 'open', 'closed', '', 'prd-1', '', '', '2021-01-19 04:56:53', '2021-01-19 04:56:53', '', 66, 'http://localhost/bonsai-bestay/wp-content/uploads/2021/01/prd-1.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2021-01-19 05:00:06', '2021-01-19 05:00:06', '', 'Best App for Booking Accommodation', '', 'publish', 'closed', 'closed', '', 'best-app-for-booking-accommodation', '', '', '2021-01-19 05:00:07', '2021-01-19 05:00:07', '', 0, 'http://localhost/bonsai-bestay/?post_type=thong_tin_product&#038;p=70', 0, 'thong_tin_product', '', 0),
(71, 1, '2021-01-19 05:00:55', '2021-01-19 05:00:55', '', 'Secure, Convenient, Low-Cost', '', 'publish', 'closed', 'closed', '', 'secure-convenient-low-cost', '', '', '2021-01-19 05:00:56', '2021-01-19 05:00:56', '', 0, 'http://localhost/bonsai-bestay/?post_type=thong_tin_product&#038;p=71', 0, 'thong_tin_product', '', 0),
(72, 1, '2021-01-19 04:59:55', '2021-01-19 04:59:55', '', 'prd-2', '', 'inherit', 'open', 'closed', '', 'prd-2', '', '', '2021-01-19 04:59:55', '2021-01-19 04:59:55', '', 70, 'http://localhost/bonsai-bestay/wp-content/uploads/2021/01/prd-2.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2021-01-19 05:00:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-01-19 05:00:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/bonsai-bestay/?post_type=thong_tin_product&p=73', 0, 'thong_tin_product', '', 0),
(74, 1, '2021-01-19 05:00:51', '2021-01-19 05:00:51', '', 'prd-3', '', 'inherit', 'open', 'closed', '', 'prd-3', '', '', '2021-01-19 05:00:51', '2021-01-19 05:00:51', '', 71, 'http://localhost/bonsai-bestay/wp-content/uploads/2021/01/prd-3.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2021-01-19 06:11:53', '2021-01-19 06:11:53', '', 'Best App for Booking Accommodation', '', 'inherit', 'closed', 'closed', '', '71-autosave-v1', '', '', '2021-01-19 06:11:53', '2021-01-19 06:11:53', '', 71, 'http://localhost/bonsai-bestay/2021/01/19/71-autosave-v1/', 0, 'revision', '', 0),
(76, 1, '2021-01-19 08:20:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-01-19 08:20:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/bonsai-bestay/?post_type=thong_tin_product&p=76', 0, 'thong_tin_product', '', 0),
(77, 1, '2021-01-19 08:29:42', '2021-01-19 08:29:42', '', 'BSY on Decentralized Exchanges', '', 'publish', 'closed', 'closed', '', 'bsy-on-decentralized-exchanges', '', '', '2021-01-19 08:29:43', '2021-01-19 08:29:43', '', 0, 'http://localhost/bonsai-bestay/?post_type=thong_tin_product&#038;p=77', 0, 'thong_tin_product', '', 0),
(78, 1, '2021-01-19 08:29:30', '2021-01-19 08:29:30', '', 'prd-4', '', 'inherit', 'open', 'closed', '', 'prd-4', '', '', '2021-01-19 08:29:30', '2021-01-19 08:29:30', '', 77, 'http://localhost/bonsai-bestay/wp-content/uploads/2021/01/prd-4.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2021-01-19 08:49:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-01-19 08:49:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/bonsai-bestay/?post_type=acf-field-group&p=79', 0, 'acf-field-group', '', 0),
(83, 1, '2021-01-19 08:51:52', '2021-01-19 08:51:52', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-19 08:51:52', '2021-01-19 08:51:52', '', 17, 'http://localhost/bonsai-bestay/2021/01/19/17-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2021-01-19 09:00:58', '2021-01-19 09:00:58', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-19 09:00:58', '2021-01-19 09:00:58', '', 17, 'http://localhost/bonsai-bestay/2021/01/19/17-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2021-01-19 09:12:00', '2021-01-19 09:12:00', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'khối Campaigns', 'khối_campaigns', 'publish', 'closed', 'closed', '', 'field_6006a1b368e21', '', '', '2021-01-19 09:12:35', '2021-01-19 09:12:35', '', 22, 'http://localhost/bonsai-bestay/?post_type=acf-field&#038;p=89', 13, 'acf-field', '', 0),
(90, 1, '2021-01-19 09:12:00', '2021-01-19 09:12:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title Campaigns', 'title_campaigns', 'publish', 'closed', 'closed', '', 'field_6006a1eb68e22', '', '', '2021-01-19 09:32:22', '2021-01-19 09:32:22', '', 22, 'http://localhost/bonsai-bestay/?post_type=acf-field&#038;p=90', 14, 'acf-field', '', 0),
(91, 1, '2021-01-19 09:12:00', '2021-01-19 09:12:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'desc Campaigns', 'desc_campaigns', 'publish', 'closed', 'closed', '', 'field_6006a25068e23', '', '', '2021-01-19 09:12:00', '2021-01-19 09:12:00', '', 22, 'http://localhost/bonsai-bestay/?post_type=acf-field&p=91', 15, 'acf-field', '', 0),
(92, 1, '2021-01-19 09:12:49', '2021-01-19 09:12:49', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-19 09:12:49', '2021-01-19 09:12:49', '', 17, 'http://localhost/bonsai-bestay/2021/01/19/17-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2021-01-19 09:12:51', '2021-01-19 09:12:51', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-19 09:12:51', '2021-01-19 09:12:51', '', 17, 'http://localhost/bonsai-bestay/2021/01/19/17-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2021-01-19 09:13:36', '2021-01-19 09:13:36', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-19 09:13:36', '2021-01-19 09:13:36', '', 17, 'http://localhost/bonsai-bestay/2021/01/19/17-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2021-01-19 09:15:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-01-19 09:15:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/bonsai-bestay/?post_type=slide_campaigns&p=95', 0, 'slide_campaigns', '', 0),
(96, 1, '2021-01-19 09:20:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-01-19 09:20:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/bonsai-bestay/?post_type=slide_campaigns&p=96', 0, 'slide_campaigns', '', 0),
(97, 1, '2021-01-19 09:22:16', '2021-01-19 09:22:16', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"slide_campaigns\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'slide-campaigns', 'slide-campaigns', 'publish', 'closed', 'closed', '', 'group_6006a46fd068c', '', '', '2021-01-21 03:17:33', '2021-01-21 03:17:33', '', 0, 'http://localhost/bonsai-bestay/?post_type=acf-field-group&#038;p=97', 0, 'acf-field-group', '', 0),
(98, 1, '2021-01-19 09:22:16', '2021-01-19 09:22:16', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'avarta-camp', 'avarta-camp', 'publish', 'closed', 'closed', '', 'field_6006a47de8a5f', '', '', '2021-01-19 09:22:16', '2021-01-19 09:22:16', '', 97, 'http://localhost/bonsai-bestay/?post_type=acf-field&p=98', 0, 'acf-field', '', 0),
(99, 1, '2021-01-19 09:22:16', '2021-01-19 09:22:16', 'a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:3:{i:0;s:6:\"search\";i:1;s:9:\"post_type\";i:2;s:8:\"taxonomy\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}', 'link camp', 'link_camp', 'publish', 'closed', 'closed', '', 'field_6006a4a0e8a60', '', '', '2021-01-21 03:17:33', '2021-01-21 03:17:33', '', 97, 'http://localhost/bonsai-bestay/?post_type=acf-field&#038;p=99', 1, 'acf-field', '', 0),
(100, 1, '2021-01-19 09:23:25', '2021-01-19 09:23:25', '', 'item-1', '', 'publish', 'closed', 'closed', '', 'item-1', '', '', '2021-01-19 09:23:26', '2021-01-19 09:23:26', '', 0, 'http://localhost/bonsai-bestay/?post_type=slide_campaigns&#038;p=100', 0, 'slide_campaigns', '', 0),
(101, 1, '2021-01-19 09:23:07', '2021-01-19 09:23:07', '', 'home-1', '', 'inherit', 'open', 'closed', '', 'home-1', '', '', '2021-01-19 09:23:07', '2021-01-19 09:23:07', '', 100, 'http://localhost/bonsai-bestay/wp-content/uploads/2021/01/home-1.png', 0, 'attachment', 'image/png', 0),
(102, 1, '2021-01-19 09:24:05', '2021-01-19 09:24:05', '', 'item-2', '', 'publish', 'closed', 'closed', '', 'item-2', '', '', '2021-01-19 09:24:05', '2021-01-19 09:24:05', '', 0, 'http://localhost/bonsai-bestay/?post_type=slide_campaigns&#038;p=102', 0, 'slide_campaigns', '', 0),
(103, 1, '2021-01-19 09:23:50', '2021-01-19 09:23:50', '', 'home-2', '', 'inherit', 'open', 'closed', '', 'home-2', '', '', '2021-01-19 09:23:50', '2021-01-19 09:23:50', '', 102, 'http://localhost/bonsai-bestay/wp-content/uploads/2021/01/home-2.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2021-01-19 09:24:27', '2021-01-19 09:24:27', '', 'title-3', '', 'publish', 'closed', 'closed', '', 'title-3', '', '', '2021-01-19 09:24:28', '2021-01-19 09:24:28', '', 0, 'http://localhost/bonsai-bestay/?post_type=slide_campaigns&#038;p=104', 0, 'slide_campaigns', '', 0),
(105, 1, '2021-01-19 09:24:17', '2021-01-19 09:24:17', '', 'home-3', '', 'inherit', 'open', 'closed', '', 'home-3', '', '', '2021-01-19 09:24:17', '2021-01-19 09:24:17', '', 104, 'http://localhost/bonsai-bestay/wp-content/uploads/2021/01/home-3.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2021-01-19 09:24:49', '2021-01-19 09:24:49', '', 'item-4', '', 'publish', 'closed', 'closed', '', 'item-4', '', '', '2021-01-19 09:24:50', '2021-01-19 09:24:50', '', 0, 'http://localhost/bonsai-bestay/?post_type=slide_campaigns&#038;p=106', 0, 'slide_campaigns', '', 0),
(107, 1, '2021-01-19 09:24:42', '2021-01-19 09:24:42', '', 'home-2', '', 'inherit', 'open', 'closed', '', 'home-2-2', '', '', '2021-01-19 09:24:42', '2021-01-19 09:24:42', '', 106, 'http://localhost/bonsai-bestay/wp-content/uploads/2021/01/home-2-1.png', 0, 'attachment', 'image/png', 0),
(108, 1, '2021-01-19 09:31:28', '2021-01-19 09:31:28', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-19 09:31:28', '2021-01-19 09:31:28', '', 17, 'http://localhost/bonsai-bestay/2021/01/19/17-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2021-01-19 09:53:20', '2021-01-19 09:53:20', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Khối news', 'khối_news', 'publish', 'closed', 'closed', '', 'field_6006abf5b890f', '', '', '2021-01-19 09:53:20', '2021-01-19 09:53:20', '', 22, 'http://localhost/bonsai-bestay/?post_type=acf-field&p=109', 16, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(110, 1, '2021-01-19 09:53:20', '2021-01-19 09:53:20', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title new', 'title_new', 'publish', 'closed', 'closed', '', 'field_6006ac07b8910', '', '', '2021-01-19 09:53:43', '2021-01-19 09:53:43', '', 22, 'http://localhost/bonsai-bestay/?post_type=acf-field&#038;p=110', 17, 'acf-field', '', 0),
(111, 1, '2021-01-19 09:53:43', '2021-01-19 09:53:43', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'desc-new-home', 'desc-new-home', 'publish', 'closed', 'closed', '', 'field_6006ac18d29c8', '', '', '2021-01-19 09:53:43', '2021-01-19 09:53:43', '', 22, 'http://localhost/bonsai-bestay/?post_type=acf-field&p=111', 18, 'acf-field', '', 0),
(112, 1, '2021-01-19 09:54:07', '2021-01-19 09:54:07', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-19 09:54:07', '2021-01-19 09:54:07', '', 17, 'http://localhost/bonsai-bestay/2021/01/19/17-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2021-01-19 09:54:10', '2021-01-19 09:54:10', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-19 09:54:10', '2021-01-19 09:54:10', '', 17, 'http://localhost/bonsai-bestay/2021/01/19/17-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2021-01-20 03:39:47', '2021-01-20 03:39:47', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-20 03:39:47', '2021-01-20 03:39:47', '', 17, 'http://localhost/bonsai-bestay/2021/01/20/17-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2021-01-20 03:39:50', '2021-01-20 03:39:50', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-20 03:39:50', '2021-01-20 03:39:50', '', 17, 'http://localhost/bonsai-bestay/2021/01/20/17-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2021-01-20 10:09:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-01-20 10:09:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/bonsai-bestay/?post_type=thong_tin_product&p=116', 0, 'thong_tin_product', '', 0),
(118, 1, '2021-01-21 03:21:46', '2021-01-21 03:21:46', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'test', 'test', 'trash', 'closed', 'closed', '', 'group_6008f31246d4b__trashed', '', '', '2021-01-21 03:23:40', '2021-01-21 03:23:40', '', 0, 'http://localhost/bonsai-bestay/?post_type=acf-field-group&#038;p=118', 0, 'acf-field-group', '', 0),
(119, 1, '2021-01-21 03:21:46', '2021-01-21 03:21:46', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'test-demo', 'test-demo', 'trash', 'closed', 'closed', '', 'field_6008f31ba2035__trashed', '', '', '2021-01-21 03:23:40', '2021-01-21 03:23:40', '', 118, 'http://localhost/bonsai-bestay/?post_type=acf-field&#038;p=119', 0, 'acf-field', '', 0),
(120, 1, '2021-01-21 03:22:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-01-21 03:22:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/bonsai-bestay/?post_type=thong_tin_product&p=120', 0, 'thong_tin_product', '', 0),
(121, 1, '2021-01-21 03:27:52', '2021-01-21 03:27:52', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'test-demo', 'test-demo', 'publish', 'closed', 'closed', '', 'group_6008f42d6420c', '', '', '2021-01-21 03:27:52', '2021-01-21 03:27:52', '', 0, 'http://localhost/bonsai-bestay/?post_type=acf-field-group&#038;p=121', 0, 'acf-field-group', '', 0),
(122, 1, '2021-01-21 03:27:52', '2021-01-21 03:27:52', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'test demo', 'test_demo', 'publish', 'closed', 'closed', '', 'field_6008f445b8900', '', '', '2021-01-21 03:27:52', '2021-01-21 03:27:52', '', 121, 'http://localhost/bonsai-bestay/?post_type=acf-field&p=122', 0, 'acf-field', '', 0),
(123, 1, '2021-01-21 03:29:23', '2021-01-21 03:29:23', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'test', 'test', 'publish', 'closed', 'closed', '', 'field_6008f4de58b7e', '', '', '2021-01-21 03:29:23', '2021-01-21 03:29:23', '', 22, 'http://localhost/bonsai-bestay/?post_type=acf-field&p=123', 19, 'acf-field', '', 0),
(124, 1, '2021-01-21 03:29:23', '2021-01-21 03:29:23', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'test demo-1', 'test_demo-1', 'publish', 'closed', 'closed', '', 'field_6008f4ea58b7f', '', '', '2021-01-21 03:29:23', '2021-01-21 03:29:23', '', 22, 'http://localhost/bonsai-bestay/?post_type=acf-field&p=124', 20, 'acf-field', '', 0),
(125, 1, '2021-01-21 03:29:23', '2021-01-21 03:29:23', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'test-demo -2', 'test-demo_-2', 'publish', 'closed', 'closed', '', 'field_6008f50258b80', '', '', '2021-01-21 03:29:23', '2021-01-21 03:29:23', '', 22, 'http://localhost/bonsai-bestay/?post_type=acf-field&p=125', 21, 'acf-field', '', 0),
(126, 1, '2021-01-21 03:34:09', '2021-01-21 03:34:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', '', 'publish', 'closed', 'closed', '', 'field_6008f5eb93ed4', '', '', '2021-01-21 03:34:09', '2021-01-21 03:34:09', '', 124, 'http://localhost/bonsai-bestay/?post_type=acf-field&p=126', 0, 'acf-field', '', 0),
(127, 1, '2021-01-21 03:34:09', '2021-01-21 03:34:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'text-1', 'text-1', 'publish', 'closed', 'closed', '', 'field_6008f61093ed5', '', '', '2021-01-21 03:34:09', '2021-01-21 03:34:09', '', 124, 'http://localhost/bonsai-bestay/?post_type=acf-field&p=127', 1, 'acf-field', '', 0),
(128, 1, '2021-01-21 03:34:09', '2021-01-21 03:34:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'text-2', 'text-2', 'publish', 'closed', 'closed', '', 'field_6008f62593ed7', '', '', '2021-01-21 03:34:09', '2021-01-21 03:34:09', '', 124, 'http://localhost/bonsai-bestay/?post_type=acf-field&p=128', 2, 'acf-field', '', 0),
(129, 1, '2021-01-21 03:34:09', '2021-01-21 03:34:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', '', 'publish', 'closed', 'closed', '', 'field_6008f61893ed6', '', '', '2021-01-21 03:34:09', '2021-01-21 03:34:09', '', 22, 'http://localhost/bonsai-bestay/?post_type=acf-field&p=129', 22, 'acf-field', '', 0),
(130, 1, '2021-01-21 03:54:01', '2021-01-21 03:54:01', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-01-21 03:54:01', '2021-01-21 03:54:01', '', 17, 'http://localhost/bonsai-bestay/2021/01/21/17-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(3, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 3, 0),
(9, 3, 0),
(10, 3, 0),
(11, 3, 0),
(12, 3, 0),
(13, 3, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:5:{s:64:\"b6d0551704ee8e443076c6c3472ff63520f3fb7903d39ee7beaf055cf7446c91\";a:4:{s:10:\"expiration\";i:1611162879;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\";s:5:\"login\";i:1610990079;}s:64:\"d3519676b5072dbbc7941787352da50daf1447500b183a2d17096ee77fe34542\";a:4:{s:10:\"expiration\";i:1611196940;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\";s:5:\"login\";i:1611024140;}s:64:\"c4216e0a7b37edbdebe5074059f47a59680d019c9fd66d22ffe05bef9b9ffe3d\";a:4:{s:10:\"expiration\";i:1611202908;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\";s:5:\"login\";i:1611030108;}s:64:\"a4c23d7e7e7493eff6e3b6e9e7d38fb67e742ea0e0e37c74ace694790f1fef76\";a:4:{s:10:\"expiration\";i:1611202909;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\";s:5:\"login\";i:1611030109;}s:64:\"ce0c4924182a773c75f34a5abeb84c50c428ac271e218a14a9f39c19eafacb00\";a:4:{s:10:\"expiration\";i:1611285006;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\";s:5:\"login\";i:1611112206;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '3'),
(21, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(22, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(23, 1, 'closedpostboxes_page', 'a:0:{}'),
(24, 1, 'metaboxhidden_page', 'a:0:{}'),
(25, 1, 'wp_user-settings', 'libraryContent=browse&posts_list_mode=list&mfold=o'),
(26, 1, 'wp_user-settings-time', '1611137021'),
(27, 1, 'manageedit-acf-field-groupcolumnshidden', 'a:2:{i:0;s:15:\"acf-description\";i:1;s:9:\"acf-count\";}'),
(28, 1, 'edit_acf-field-group_per_page', '20'),
(29, 1, 'meta-box-order_thong_tin_product', 'a:4:{s:6:\"normal\";s:23:\"acf-group_60066455c2416\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}'),
(30, 1, 'closedpostboxes_thong_tin_product', 'a:0:{}'),
(31, 1, 'metaboxhidden_thong_tin_product', 'a:0:{}'),
(32, 1, 'closedpostboxes_dashboard', 'a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}'),
(33, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(34, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:60:\"dashboard_site_health,dashboard_right_now,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(35, 1, 'meta-box-order_page', 'a:4:{s:6:\"normal\";s:47:\"acf-group_6008f42d6420c,acf-group_60016b368b280\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BTxqz1z.Bq4zZossDJS7jRcPdab6lV/', 'admin', 'ledinhson209@gamil.com', 'http://localhost/bonsai-bestay', '2021-01-15 08:42:40', '', 0, 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=860;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
