-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2022 at 06:17 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theme`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
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
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-07-01 14:35:13', '2022-07-01 14:35:13', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
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
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/customwp', 'yes'),
(2, 'home', 'http://localhost/customwp', 'yes'),
(3, 'blogname', 'demo', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'kumavatsapna21@gmail.com', 'yes'),
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
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=13&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'test', 'yes'),
(41, 'stylesheet', 'test', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '13', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1672238113', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:8:{i:3;a:1:{s:7:\"content\";s:71:\"<!-- wp:group -->\n<div class=\"wp-block-group\"></div>\n<!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:71:\"<!-- wp:group -->\n<div class=\"wp-block-group\"></div>\n<!-- /wp:group -->\";}i:7;a:1:{s:7:\"content\";s:303:\"<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:8;a:1:{s:7:\"content\";s:303:\"<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:10;a:1:{s:7:\"content\";s:59:\"<!-- wp:paragraph -->\n<p>footer2</p>\n<!-- /wp:paragraph -->\";}i:12;a:1:{s:7:\"content\";s:2361:\"<!-- wp:columns {\"style\":{\"color\":{\"background\":\"#0f48af\"}},\"textColor\":\"white\"} -->\n<div class=\"wp-block-columns has-white-color has-text-color has-background\" style=\"background-color:#0f48af\"><!-- wp:column {\"width\":\"100%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:100%\"><!-- wp:widget-group -->\n<h2 class=\"widget-title\"></h2><div class=\"wp-widget-group__inner-blocks\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>Contact US</h2>\n<!-- /wp:heading -->\n\n<!-- wp:html -->\n<p class=\"ficon\"><i class=\"fa fa-envelope-o\" aria-hidden=\"true\"></i><span>test@gmail.com</span></p>\n<!-- /wp:html -->\n\n<!-- wp:html -->\n<p class=\"ficon\"><i class=\"fa fa-phone\"></i><br>\n<span>+911234567890</span></p>\n<!-- /wp:html -->\n\n<!-- wp:html -->\n<p class=\"ficon\"><i class=\"fa fa-map-marker\"></i><br>\n<span>75 Maiden Lane; Suite 902 New York NY10038</span></p>\n<!-- /wp:html --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"textColor\":\"white\"} -->\n<div class=\"wp-block-column has-white-color has-text-color\"><!-- wp:heading -->\n<h2>Counseling <br>Connection</h2>\n<!-- /wp:heading -->\n\n<!-- wp:legacy-widget {\"idBase\":\"nav_menu\",\"instance\":{\"encoded\":\"YToxOntzOjg6Im5hdl9tZW51IjtpOjQ7fQ==\",\"hash\":\"3370fe56997173c753ddd860c5a91469\",\"raw\":{\"nav_menu\":4}}} /--></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>For Clients</h2>\n<!-- /wp:heading -->\n\n<!-- wp:legacy-widget {\"idBase\":\"nav_menu\",\"instance\":{\"encoded\":\"YToxOntzOjg6Im5hdl9tZW51IjtpOjU7fQ==\",\"hash\":\"73dd6fcb14e2600524ce9db3c4500a9d\",\"raw\":{\"nav_menu\":5}}} /--></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2>Connect With Us</h2>\n<!-- /wp:heading -->\n\n<!-- wp:social-links {\"iconColor\":\"white\",\"iconColorValue\":\"#ffffff\",\"iconBackgroundColor\":{},\"className\":\"is-style-default\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"left\"}} -->\n<ul class=\"wp-block-social-links has-icon-color is-style-default\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"google\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:widget-group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:14;a:1:{s:7:\"content\";s:335:\"<!-- wp:heading {\"textAlign\":\"center\",\"style\":{\"color\":{\"background\":\"#092f53\"}},\"textColor\":\"white\",\"fontSize\":\"medium\"} -->\n<h2 class=\"has-text-align-center has-white-color has-text-color has-background has-medium-font-size\" style=\"background-color:#092f53\">© 2022 Counseling Connection. All right reserved</h2>\n<!-- /wp:heading -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:7:\"block-7\";i:1;s:7:\"block-8\";}s:9:\"sidebar-1\";a:2:{i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:18:\"footer-section-one\";a:2:{i:0;s:8:\"block-12\";i:1;s:8:\"block-14\";}s:18:\"footer-section-two\";a:1:{i:0;s:8:\"block-10\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:8:{i:1656779715;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1656815715;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1656815799;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1656858914;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1656858922;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1656858927;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1657377314;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(123, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1656687888;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(128, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(138, '_site_transient_timeout_browser_a0909810a6d132832e28ef6da18ec77c', '1657290925', 'no'),
(139, '_site_transient_browser_a0909810a6d132832e28ef6da18ec77c', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"103.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(140, '_site_transient_timeout_php_check_d48825f8e9bd4d8f43457d50e9cb3d90', '1657290926', 'no'),
(141, '_site_transient_php_check_d48825f8e9bd4d8f43457d50e9cb3d90', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(142, 'can_compress_scripts', '1', 'no'),
(155, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.0-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.0-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.0\";s:7:\"version\";s:3:\"6.0\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1656772598;s:15:\"version_checked\";s:3:\"6.0\";s:12:\"translations\";a:0:{}}', 'no'),
(156, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"kumavatsapna21@gmail.com\";s:7:\"version\";s:3:\"6.0\";s:9:\"timestamp\";i:1656686171;}', 'no'),
(159, 'finished_updating_comment_type', '1', 'yes'),
(162, 'current_theme', 'test', 'yes'),
(163, 'theme_mods_test', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:15;}', 'yes'),
(164, 'theme_switched', '', 'yes'),
(167, 'category_children', 'a:0:{}', 'yes'),
(188, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(197, 'recently_activated', 'a:0:{}', 'yes'),
(204, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(205, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(212, 'site_logo', '15', 'yes'),
(395, 'acf_version', '5.12.2', 'yes'),
(608, '_site_transient_timeout_theme_roots', '1656774391', 'no'),
(609, '_site_transient_theme_roots', 'a:4:{s:4:\"test\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(614, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":6,\"critical\":0}', 'yes'),
(616, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1656772602;s:7:\"checked\";a:4:{s:4:\"test\";s:5:\"1.0.0\";s:12:\"twentytwenty\";s:3:\"1.9\";s:15:\"twentytwentyone\";s:3:\"1.5\";s:15:\"twentytwentytwo\";s:3:\"1.1\";}s:8:\"response\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.0.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.6.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.2.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(617, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1656772603;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:3:\"6.0\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.12.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.12.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.12.2\";s:19:\"akismet/akismet.php\";s:5:\"4.2.2\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(768, '_transient_timeout_global_styles_test', '1656777886', 'no'),
(769, '_transient_global_styles_test', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(770, '_transient_timeout_global_styles_svg_filters_test', '1656777886', 'no'),
(771, '_transient_global_styles_svg_filters_test', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
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
(20, 6, '_menu_item_orphaned', '1656689431'),
(21, 7, '_menu_item_type', 'custom'),
(22, 7, '_menu_item_menu_item_parent', '0'),
(23, 7, '_menu_item_object_id', '7'),
(24, 7, '_menu_item_object', 'custom'),
(25, 7, '_menu_item_target', ''),
(26, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 7, '_menu_item_xfn', ''),
(28, 7, '_menu_item_url', '#'),
(30, 8, '_menu_item_type', 'custom'),
(31, 8, '_menu_item_menu_item_parent', '0'),
(32, 8, '_menu_item_object_id', '8'),
(33, 8, '_menu_item_object', 'custom'),
(34, 8, '_menu_item_target', ''),
(35, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 8, '_menu_item_xfn', ''),
(37, 8, '_menu_item_url', '#'),
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
(57, 11, '_edit_lock', '1656689548:1'),
(58, 13, '_edit_last', '1'),
(59, 13, '_edit_lock', '1656777977:1'),
(60, 13, '_wp_page_template', 'home-template.php'),
(61, 15, '_wp_attached_file', '2022/07/logo.png'),
(62, 15, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:290;s:6:\"height\";i:86;s:4:\"file\";s:16:\"2022/07/logo.png\";s:8:\"filesize\";i:28469;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"logo-150x86.png\";s:5:\"width\";i:150;s:6:\"height\";i:86;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14954;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(63, 16, '_wp_trash_meta_status', 'publish'),
(64, 16, '_wp_trash_meta_time', '1656690220'),
(65, 17, '_wp_trash_meta_status', 'publish'),
(66, 17, '_wp_trash_meta_time', '1656690356'),
(67, 18, '_menu_item_type', 'custom'),
(68, 18, '_menu_item_menu_item_parent', '0'),
(69, 18, '_menu_item_object_id', '18'),
(70, 18, '_menu_item_object', 'custom'),
(71, 18, '_menu_item_target', ''),
(72, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(73, 18, '_menu_item_xfn', ''),
(74, 18, '_menu_item_url', '#'),
(76, 19, '_wp_attached_file', '2022/07/logo-1.png'),
(77, 19, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:290;s:6:\"height\";i:86;s:4:\"file\";s:18:\"2022/07/logo-1.png\";s:8:\"filesize\";i:28469;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"logo-1-150x86.png\";s:5:\"width\";i:150;s:6:\"height\";i:86;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14954;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(78, 20, '_menu_item_type', 'custom'),
(79, 20, '_menu_item_menu_item_parent', '0'),
(80, 20, '_menu_item_object_id', '20'),
(81, 20, '_menu_item_object', 'custom'),
(82, 20, '_menu_item_target', ''),
(83, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(84, 20, '_menu_item_xfn', ''),
(85, 20, '_menu_item_url', '#'),
(87, 21, '_menu_item_type', 'custom'),
(88, 21, '_menu_item_menu_item_parent', '0'),
(89, 21, '_menu_item_object_id', '21'),
(90, 21, '_menu_item_object', 'custom'),
(91, 21, '_menu_item_target', ''),
(92, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(93, 21, '_menu_item_xfn', ''),
(94, 21, '_menu_item_url', '#'),
(96, 22, '_menu_item_type', 'custom'),
(97, 22, '_menu_item_menu_item_parent', '0'),
(98, 22, '_menu_item_object_id', '22'),
(99, 22, '_menu_item_object', 'custom'),
(100, 22, '_menu_item_target', ''),
(101, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(102, 22, '_menu_item_xfn', ''),
(103, 22, '_menu_item_url', '#'),
(105, 23, '_menu_item_type', 'custom'),
(106, 23, '_menu_item_menu_item_parent', '0'),
(107, 23, '_menu_item_object_id', '23'),
(108, 23, '_menu_item_object', 'custom'),
(109, 23, '_menu_item_target', ''),
(110, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(111, 23, '_menu_item_xfn', ''),
(112, 23, '_menu_item_url', '#'),
(114, 24, '_menu_item_type', 'custom'),
(115, 24, '_menu_item_menu_item_parent', '0'),
(116, 24, '_menu_item_object_id', '24'),
(117, 24, '_menu_item_object', 'custom'),
(118, 24, '_menu_item_target', ''),
(119, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(120, 24, '_menu_item_xfn', ''),
(121, 24, '_menu_item_url', '#'),
(123, 25, '_menu_item_type', 'custom'),
(124, 25, '_menu_item_menu_item_parent', '0'),
(125, 25, '_menu_item_object_id', '25'),
(126, 25, '_menu_item_object', 'custom'),
(127, 25, '_menu_item_target', ''),
(128, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(129, 25, '_menu_item_xfn', ''),
(130, 25, '_menu_item_url', '#'),
(132, 26, '_edit_last', '1'),
(133, 26, '_edit_lock', '1656699772:1'),
(134, 13, 'mental_health', 'Your Mental Health Matters'),
(135, 13, '_mental_health', 'field_62bf3593de71f'),
(136, 13, 'mental_health_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite lots of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(137, 13, '_mental_health_description', 'field_62bf35f4de720'),
(138, 13, '_', 'field_62bf4087fd8a8'),
(139, 30, 'mental_health', 'Your Mental Health Matters'),
(140, 30, '_mental_health', 'field_62bf3593de71f'),
(141, 30, 'mental_health_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite lots of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(142, 30, '_mental_health_description', 'field_62bf35f4de720'),
(143, 31, '_wp_attached_file', '2022/07/young-women-of-color.jpg'),
(144, 31, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:400;s:4:\"file\";s:32:\"2022/07/young-women-of-color.jpg\";s:8:\"filesize\";i:35355;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:32:\"young-women-of-color-300x240.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20589;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"young-women-of-color-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8544;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(145, 13, 'image', '31'),
(146, 13, '_image', 'field_62bf360bde721'),
(147, 32, 'mental_health', 'Your Mental Health Matters'),
(148, 32, '_mental_health', 'field_62bf3593de71f'),
(149, 32, 'mental_health_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite lots of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(150, 32, '_mental_health_description', 'field_62bf35f4de720'),
(151, 32, 'image', '31'),
(152, 32, '_image', 'field_62bf360bde721'),
(153, 33, '_edit_last', '1'),
(154, 33, '_edit_lock', '1656701301:1'),
(155, 39, '_wp_attached_file', '2022/07/family-img.png'),
(156, 39, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:680;s:6:\"height\";i:680;s:4:\"file\";s:22:\"2022/07/family-img.png\";s:8:\"filesize\";i:632952;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"family-img-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:155810;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"family-img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:46640;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 13, 'counseling_benefit', 'How Can Counseling Benefit You?'),
(158, 13, '_counseling_benefit', 'field_62bf3c30f0808'),
(159, 13, 'counseling_benefit_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite SE of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(160, 13, '_counseling_benefit_description', 'field_62bf3c3cf0809'),
(161, 13, 'benefit_img', '39'),
(162, 13, '_benefit_img', 'field_62bf3da0f080a'),
(163, 13, 'find_a_provider', 'a:3:{s:5:\"title\";s:15:\"Find a Provider\";s:3:\"url\";s:31:\"http://localhost/customwp/home/\";s:6:\"target\";s:6:\"_blank\";}'),
(164, 13, '_find_a_provider', 'field_62bf3e4943a67'),
(165, 40, 'mental_health', 'Your Mental Health Matters'),
(166, 40, '_mental_health', 'field_62bf3593de71f'),
(167, 40, 'mental_health_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite lots of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(168, 40, '_mental_health_description', 'field_62bf35f4de720'),
(169, 40, 'image', '31'),
(170, 40, '_image', 'field_62bf360bde721'),
(171, 40, 'counseling_benefit', 'How Can Counseling Benefit You?'),
(172, 40, '_counseling_benefit', 'field_62bf3c30f0808'),
(173, 40, 'counseling_benefit_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite SE of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(174, 40, '_counseling_benefit_description', 'field_62bf3c3cf0809'),
(175, 40, 'benefit_img', '39'),
(176, 40, '_benefit_img', 'field_62bf3da0f080a'),
(177, 40, 'find_a_provider', ''),
(178, 40, '_find_a_provider', 'field_62bf3e4943a67'),
(179, 41, 'mental_health', 'Your Mental Health Matters'),
(180, 41, '_mental_health', 'field_62bf3593de71f'),
(181, 41, 'mental_health_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite lots of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(182, 41, '_mental_health_description', 'field_62bf35f4de720'),
(183, 41, 'image', '31'),
(184, 41, '_image', 'field_62bf360bde721'),
(185, 41, 'counseling_benefit', 'How Can Counseling Benefit You?'),
(186, 41, '_counseling_benefit', 'field_62bf3c30f0808'),
(187, 41, 'counseling_benefit_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite SE of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(188, 41, '_counseling_benefit_description', 'field_62bf3c3cf0809'),
(189, 41, 'benefit_img', '39'),
(190, 41, '_benefit_img', 'field_62bf3da0f080a'),
(191, 41, 'find_a_provider', 'a:3:{s:5:\"title\";s:15:\"Find a Provider\";s:3:\"url\";s:1:\"#\";s:6:\"target\";s:0:\"\";}'),
(192, 41, '_find_a_provider', 'field_62bf3e4943a67'),
(193, 42, 'mental_health', 'Your Mental Health Matters'),
(194, 42, '_mental_health', 'field_62bf3593de71f'),
(195, 42, 'mental_health_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite lots of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(196, 42, '_mental_health_description', 'field_62bf35f4de720'),
(197, 42, 'image', '31'),
(198, 42, '_image', 'field_62bf360bde721'),
(199, 42, 'counseling_benefit', 'How Can Counseling Benefit You?'),
(200, 42, '_counseling_benefit', 'field_62bf3c30f0808'),
(201, 42, 'counseling_benefit_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite SE of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(202, 42, '_counseling_benefit_description', 'field_62bf3c3cf0809'),
(203, 42, 'benefit_img', '39'),
(204, 42, '_benefit_img', 'field_62bf3da0f080a'),
(205, 42, 'find_a_provider', 'http://localhost/customwp/home/'),
(206, 42, '_find_a_provider', 'field_62bf3e4943a67'),
(207, 44, 'mental_health', 'Your Mental Health Matters'),
(208, 44, '_mental_health', 'field_62bf3593de71f'),
(209, 44, 'mental_health_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite lots of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(210, 44, '_mental_health_description', 'field_62bf35f4de720'),
(211, 44, 'image', '31'),
(212, 44, '_image', 'field_62bf360bde721'),
(213, 44, 'counseling_benefit', 'How Can Counseling Benefit You?'),
(214, 44, '_counseling_benefit', 'field_62bf3c30f0808'),
(215, 44, 'counseling_benefit_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite SE of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(216, 44, '_counseling_benefit_description', 'field_62bf3c3cf0809'),
(217, 44, 'benefit_img', '39'),
(218, 44, '_benefit_img', 'field_62bf3da0f080a'),
(219, 44, 'find_a_provider', 'a:3:{s:5:\"title\";s:15:\"Find a Provider\";s:3:\"url\";s:31:\"http://localhost/customwp/home/\";s:6:\"target\";s:6:\"_blank\";}'),
(220, 44, '_find_a_provider', 'field_62bf3e4943a67'),
(221, 45, '_edit_last', '1'),
(222, 45, '_edit_lock', '1656764995:1'),
(223, 47, '_wp_attached_file', '2022/07/how-it-work.jpg'),
(224, 47, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:570;s:6:\"height\";i:485;s:4:\"file\";s:23:\"2022/07/how-it-work.jpg\";s:8:\"filesize\";i:26230;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"how-it-work-300x255.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:255;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12737;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"how-it-work-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5587;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(225, 13, 'works_image', '47'),
(226, 13, '_works_image', 'field_62bf4216e58c7'),
(227, 48, 'mental_health', 'Your Mental Health Matters'),
(228, 48, '_mental_health', 'field_62bf3593de71f'),
(229, 48, 'mental_health_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite lots of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(230, 48, '_mental_health_description', 'field_62bf35f4de720'),
(231, 48, 'image', '31'),
(232, 48, '_image', 'field_62bf360bde721'),
(233, 48, 'counseling_benefit', 'How Can Counseling Benefit You?'),
(234, 48, '_counseling_benefit', 'field_62bf3c30f0808'),
(235, 48, 'counseling_benefit_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite SE of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(236, 48, '_counseling_benefit_description', 'field_62bf3c3cf0809'),
(237, 48, 'benefit_img', '39'),
(238, 48, '_benefit_img', 'field_62bf3da0f080a'),
(239, 48, 'find_a_provider', 'a:3:{s:5:\"title\";s:15:\"Find a Provider\";s:3:\"url\";s:31:\"http://localhost/customwp/home/\";s:6:\"target\";s:6:\"_blank\";}'),
(240, 48, '_find_a_provider', 'field_62bf3e4943a67'),
(241, 48, 'works_image', '47'),
(242, 48, '_works_image', 'field_62bf4216e58c7'),
(243, 13, 'step', 'Step'),
(244, 13, '_step', 'field_62bf429573745'),
(245, 13, 'works_heading', 'How It Works'),
(246, 13, '_works_heading', 'field_62bf42b373746'),
(247, 13, 'register_yourself', 'Register yourself'),
(248, 13, '_register_yourself', 'field_62bf432073747'),
(249, 13, 'register_desc', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(250, 13, '_register_desc', 'field_62bf435673748'),
(251, 53, 'mental_health', 'Your Mental Health Matters'),
(252, 53, '_mental_health', 'field_62bf3593de71f'),
(253, 53, 'mental_health_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite lots of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(254, 53, '_mental_health_description', 'field_62bf35f4de720'),
(255, 53, 'image', '31'),
(256, 53, '_image', 'field_62bf360bde721'),
(257, 53, 'counseling_benefit', 'How Can Counseling Benefit You?'),
(258, 53, '_counseling_benefit', 'field_62bf3c30f0808'),
(259, 53, 'counseling_benefit_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite SE of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(260, 53, '_counseling_benefit_description', 'field_62bf3c3cf0809'),
(261, 53, 'benefit_img', '39'),
(262, 53, '_benefit_img', 'field_62bf3da0f080a'),
(263, 53, 'find_a_provider', 'a:3:{s:5:\"title\";s:15:\"Find a Provider\";s:3:\"url\";s:31:\"http://localhost/customwp/home/\";s:6:\"target\";s:6:\"_blank\";}'),
(264, 53, '_find_a_provider', 'field_62bf3e4943a67'),
(265, 53, 'works_image', '47'),
(266, 53, '_works_image', 'field_62bf4216e58c7'),
(267, 53, 'step', 'Step'),
(268, 53, '_step', 'field_62bf429573745'),
(269, 53, 'works_heading', 'How It Works'),
(270, 53, '_works_heading', 'field_62bf42b373746'),
(271, 53, 'register_yourself', 'Register yourself'),
(272, 53, '_register_yourself', 'field_62bf432073747'),
(273, 53, 'register_desc', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(274, 53, '_register_desc', 'field_62bf435673748'),
(275, 54, '_wp_attached_file', '2022/07/search-bg.png'),
(276, 54, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1333;s:4:\"file\";s:21:\"2022/07/search-bg.png\";s:8:\"filesize\";i:297528;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"search-bg-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:37948;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"search-bg-1024x682.png\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:308059;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"search-bg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13799;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"search-bg-768x512.png\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:187704;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"search-bg-1536x1024.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:573925;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(277, 55, '_wp_attached_file', '2022/07/avtar.png'),
(278, 55, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:256;s:6:\"height\";i:253;s:4:\"file\";s:17:\"2022/07/avtar.png\";s:8:\"filesize\";i:16171;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"avtar-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22460;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(279, 56, '_wp_attached_file', '2022/07/banner-image.jpg'),
(280, 56, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:761;s:4:\"file\";s:24:\"2022/07/banner-image.jpg\";s:8:\"filesize\";i:516908;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"banner-image-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12329;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"banner-image-1024x649.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:649;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:82082;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"banner-image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5707;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"banner-image-768x487.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:487;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:52636;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(281, 57, '_wp_attached_file', '2022/07/banner-right-img.jpg'),
(282, 57, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:612;s:6:\"height\";i:423;s:4:\"file\";s:28:\"2022/07/banner-right-img.jpg\";s:8:\"filesize\";i:35141;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"banner-right-img-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12382;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"banner-right-img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6163;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:24:\"Getty Images/iStockphoto\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:76:\"Shot of a group of hands holding on to each other against a white background\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:76:\"Shot of a group of hands holding on to each other against a white background\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(283, 58, '_edit_last', '1'),
(284, 58, '_edit_lock', '1656770347:1'),
(285, 13, 'mental_heading', 'Mental Health Care Coonection'),
(286, 13, '_mental_heading', 'field_62c03677c05a6'),
(287, 13, 'mental_text', 'Lorem Ipsum is simply dummy text ofthe printing and \' typesetting industry. Lorem Ipsum has been the printing and typesetting industry'),
(288, 13, '_mental_text', 'field_62c036965035c'),
(289, 13, 'banner_right_img', '57'),
(290, 13, '_banner_right_img', 'field_62c036af7afbf'),
(291, 62, 'mental_health', 'Your Mental Health Matters'),
(292, 62, '_mental_health', 'field_62bf3593de71f'),
(293, 62, 'mental_health_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite lots of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(294, 62, '_mental_health_description', 'field_62bf35f4de720'),
(295, 62, 'image', '31'),
(296, 62, '_image', 'field_62bf360bde721'),
(297, 62, 'counseling_benefit', 'How Can Counseling Benefit You?'),
(298, 62, '_counseling_benefit', 'field_62bf3c30f0808'),
(299, 62, 'counseling_benefit_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite SE of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(300, 62, '_counseling_benefit_description', 'field_62bf3c3cf0809'),
(301, 62, 'benefit_img', '39'),
(302, 62, '_benefit_img', 'field_62bf3da0f080a'),
(303, 62, 'find_a_provider', 'a:3:{s:5:\"title\";s:15:\"Find a Provider\";s:3:\"url\";s:31:\"http://localhost/customwp/home/\";s:6:\"target\";s:6:\"_blank\";}'),
(304, 62, '_find_a_provider', 'field_62bf3e4943a67'),
(305, 62, 'works_image', '47'),
(306, 62, '_works_image', 'field_62bf4216e58c7'),
(307, 62, 'step', 'Step'),
(308, 62, '_step', 'field_62bf429573745'),
(309, 62, 'works_heading', 'How It Works'),
(310, 62, '_works_heading', 'field_62bf42b373746'),
(311, 62, 'register_yourself', 'Register yourself'),
(312, 62, '_register_yourself', 'field_62bf432073747'),
(313, 62, 'register_desc', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(314, 62, '_register_desc', 'field_62bf435673748'),
(315, 62, 'mental_heading', 'Mental Health Care Coonection'),
(316, 62, '_mental_heading', 'field_62c03677c05a6'),
(317, 62, 'mental_text', 'Lorem Ipsum is simply dummy text ofthe printing and \' typesetting industry. Lorem Ipsum has been the printing and typesetting industry'),
(318, 62, '_mental_text', 'field_62c036965035c'),
(319, 62, 'banner_right_img', ''),
(320, 62, '_banner_right_img', 'field_62c036af7afbf'),
(321, 63, 'mental_health', 'Your Mental Health Matters'),
(322, 63, '_mental_health', 'field_62bf3593de71f'),
(323, 63, 'mental_health_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite lots of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(324, 63, '_mental_health_description', 'field_62bf35f4de720'),
(325, 63, 'image', '31'),
(326, 63, '_image', 'field_62bf360bde721'),
(327, 63, 'counseling_benefit', 'How Can Counseling Benefit You?'),
(328, 63, '_counseling_benefit', 'field_62bf3c30f0808'),
(329, 63, 'counseling_benefit_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite SE of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(330, 63, '_counseling_benefit_description', 'field_62bf3c3cf0809'),
(331, 63, 'benefit_img', '39'),
(332, 63, '_benefit_img', 'field_62bf3da0f080a'),
(333, 63, 'find_a_provider', 'a:3:{s:5:\"title\";s:15:\"Find a Provider\";s:3:\"url\";s:31:\"http://localhost/customwp/home/\";s:6:\"target\";s:6:\"_blank\";}'),
(334, 63, '_find_a_provider', 'field_62bf3e4943a67'),
(335, 63, 'works_image', '47'),
(336, 63, '_works_image', 'field_62bf4216e58c7'),
(337, 63, 'step', 'Step'),
(338, 63, '_step', 'field_62bf429573745'),
(339, 63, 'works_heading', 'How It Works'),
(340, 63, '_works_heading', 'field_62bf42b373746'),
(341, 63, 'register_yourself', 'Register yourself'),
(342, 63, '_register_yourself', 'field_62bf432073747'),
(343, 63, 'register_desc', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(344, 63, '_register_desc', 'field_62bf435673748'),
(345, 63, 'mental_heading', 'Mental Health Care Coonection'),
(346, 63, '_mental_heading', 'field_62c03677c05a6'),
(347, 63, 'mental_text', 'Lorem Ipsum is simply dummy text ofthe printing and \' typesetting industry. Lorem Ipsum has been the printing and typesetting industry'),
(348, 63, '_mental_text', 'field_62c036965035c'),
(349, 63, 'banner_right_img', '57'),
(350, 63, '_banner_right_img', 'field_62c036af7afbf'),
(351, 13, 'create_profile', 'Create Profile'),
(352, 13, '_create_profile', 'field_62c039893df39'),
(353, 13, 'create_profile_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(354, 13, '_create_profile_text', 'field_62c039953df3a'),
(355, 13, 'appointments', 'Manage Appointments'),
(356, 13, '_appointments', 'field_62c039a83df3b'),
(357, 13, 'appointments_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(358, 13, '_appointments_text', 'field_62c039b33df3c'),
(359, 68, 'mental_health', 'Your Mental Health Matters'),
(360, 68, '_mental_health', 'field_62bf3593de71f'),
(361, 68, 'mental_health_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite lots of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(362, 68, '_mental_health_description', 'field_62bf35f4de720'),
(363, 68, 'image', '31'),
(364, 68, '_image', 'field_62bf360bde721'),
(365, 68, 'counseling_benefit', 'How Can Counseling Benefit You?'),
(366, 68, '_counseling_benefit', 'field_62bf3c30f0808'),
(367, 68, 'counseling_benefit_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite SE of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(368, 68, '_counseling_benefit_description', 'field_62bf3c3cf0809'),
(369, 68, 'benefit_img', '39'),
(370, 68, '_benefit_img', 'field_62bf3da0f080a'),
(371, 68, 'find_a_provider', 'a:3:{s:5:\"title\";s:15:\"Find a Provider\";s:3:\"url\";s:31:\"http://localhost/customwp/home/\";s:6:\"target\";s:6:\"_blank\";}'),
(372, 68, '_find_a_provider', 'field_62bf3e4943a67'),
(373, 68, 'works_image', '47'),
(374, 68, '_works_image', 'field_62bf4216e58c7'),
(375, 68, 'step', 'Step'),
(376, 68, '_step', 'field_62bf429573745'),
(377, 68, 'works_heading', 'How It Works'),
(378, 68, '_works_heading', 'field_62bf42b373746'),
(379, 68, 'register_yourself', 'Register yourself'),
(380, 68, '_register_yourself', 'field_62bf432073747'),
(381, 68, 'register_desc', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(382, 68, '_register_desc', 'field_62bf435673748'),
(383, 68, 'mental_heading', 'Mental Health Care Coonection'),
(384, 68, '_mental_heading', 'field_62c03677c05a6'),
(385, 68, 'mental_text', 'Lorem Ipsum is simply dummy text ofthe printing and \' typesetting industry. Lorem Ipsum has been the printing and typesetting industry'),
(386, 68, '_mental_text', 'field_62c036965035c'),
(387, 68, 'banner_right_img', '57'),
(388, 68, '_banner_right_img', 'field_62c036af7afbf'),
(389, 68, 'create_profile', 'Create Profile'),
(390, 68, '_create_profile', 'field_62c039893df39'),
(391, 68, 'create_profile_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(392, 68, '_create_profile_text', 'field_62c039953df3a'),
(393, 68, 'appointments', 'Manage Appointments'),
(394, 68, '_appointments', 'field_62c039a83df3b'),
(395, 68, 'appointments_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(396, 68, '_appointments_text', 'field_62c039b33df3c'),
(397, 69, '_edit_last', '1'),
(398, 69, '_edit_lock', '1656768459:1'),
(399, 13, 'services_heading', 'Services'),
(400, 13, '_services_heading', 'field_62c03af4b7855'),
(401, 13, 'services_sub', 'Do you feel you have'),
(402, 13, '_services_sub', 'field_62c03b03b7856'),
(403, 72, 'mental_health', 'Your Mental Health Matters'),
(404, 72, '_mental_health', 'field_62bf3593de71f'),
(405, 72, 'mental_health_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite lots of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(406, 72, '_mental_health_description', 'field_62bf35f4de720'),
(407, 72, 'image', '31'),
(408, 72, '_image', 'field_62bf360bde721'),
(409, 72, 'counseling_benefit', 'How Can Counseling Benefit You?'),
(410, 72, '_counseling_benefit', 'field_62bf3c30f0808'),
(411, 72, 'counseling_benefit_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite SE of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(412, 72, '_counseling_benefit_description', 'field_62bf3c3cf0809'),
(413, 72, 'benefit_img', '39'),
(414, 72, '_benefit_img', 'field_62bf3da0f080a'),
(415, 72, 'find_a_provider', 'a:3:{s:5:\"title\";s:15:\"Find a Provider\";s:3:\"url\";s:31:\"http://localhost/customwp/home/\";s:6:\"target\";s:6:\"_blank\";}'),
(416, 72, '_find_a_provider', 'field_62bf3e4943a67'),
(417, 72, 'works_image', '47'),
(418, 72, '_works_image', 'field_62bf4216e58c7'),
(419, 72, 'step', 'Step'),
(420, 72, '_step', 'field_62bf429573745'),
(421, 72, 'works_heading', 'How It Works'),
(422, 72, '_works_heading', 'field_62bf42b373746'),
(423, 72, 'register_yourself', 'Register yourself'),
(424, 72, '_register_yourself', 'field_62bf432073747'),
(425, 72, 'register_desc', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(426, 72, '_register_desc', 'field_62bf435673748'),
(427, 72, 'mental_heading', 'Mental Health Care Coonection'),
(428, 72, '_mental_heading', 'field_62c03677c05a6'),
(429, 72, 'mental_text', 'Lorem Ipsum is simply dummy text ofthe printing and \' typesetting industry. Lorem Ipsum has been the printing and typesetting industry'),
(430, 72, '_mental_text', 'field_62c036965035c'),
(431, 72, 'banner_right_img', '57'),
(432, 72, '_banner_right_img', 'field_62c036af7afbf'),
(433, 72, 'create_profile', 'Create Profile'),
(434, 72, '_create_profile', 'field_62c039893df39'),
(435, 72, 'create_profile_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(436, 72, '_create_profile_text', 'field_62c039953df3a'),
(437, 72, 'appointments', 'Manage Appointments'),
(438, 72, '_appointments', 'field_62c039a83df3b'),
(439, 72, 'appointments_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(440, 72, '_appointments_text', 'field_62c039b33df3c'),
(441, 72, 'services_heading', 'Services'),
(442, 72, '_services_heading', 'field_62c03af4b7855'),
(443, 72, 'services_sub', 'Do you feel you have'),
(444, 72, '_services_sub', 'field_62c03b03b7856'),
(445, 13, 'depression_depression', 'Depression'),
(446, 13, '_depression_depression', 'field_62c03ba1bb617'),
(447, 13, 'depression_depression_head', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(448, 13, '_depression_depression_head', 'field_62c03bb1bb618'),
(449, 13, 'depression_anxiety', 'Anxiety'),
(450, 13, '_depression_anxiety', 'field_62c03be0a5f26'),
(451, 13, 'depression_anxiety_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(452, 13, '_depression_anxiety_text', 'field_62c03bfca5f27'),
(453, 13, 'depression', 'Depression'),
(454, 13, '_depression', 'field_62c03b84bb616'),
(455, 78, 'mental_health', 'Your Mental Health Matters'),
(456, 78, '_mental_health', 'field_62bf3593de71f'),
(457, 78, 'mental_health_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite lots of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(458, 78, '_mental_health_description', 'field_62bf35f4de720'),
(459, 78, 'image', '31'),
(460, 78, '_image', 'field_62bf360bde721'),
(461, 78, 'counseling_benefit', 'How Can Counseling Benefit You?'),
(462, 78, '_counseling_benefit', 'field_62bf3c30f0808'),
(463, 78, 'counseling_benefit_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite SE of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(464, 78, '_counseling_benefit_description', 'field_62bf3c3cf0809'),
(465, 78, 'benefit_img', '39'),
(466, 78, '_benefit_img', 'field_62bf3da0f080a'),
(467, 78, 'find_a_provider', 'a:3:{s:5:\"title\";s:15:\"Find a Provider\";s:3:\"url\";s:31:\"http://localhost/customwp/home/\";s:6:\"target\";s:6:\"_blank\";}'),
(468, 78, '_find_a_provider', 'field_62bf3e4943a67'),
(469, 78, 'works_image', '47'),
(470, 78, '_works_image', 'field_62bf4216e58c7'),
(471, 78, 'step', 'Step'),
(472, 78, '_step', 'field_62bf429573745'),
(473, 78, 'works_heading', 'How It Works'),
(474, 78, '_works_heading', 'field_62bf42b373746'),
(475, 78, 'register_yourself', 'Register yourself'),
(476, 78, '_register_yourself', 'field_62bf432073747'),
(477, 78, 'register_desc', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(478, 78, '_register_desc', 'field_62bf435673748'),
(479, 78, 'mental_heading', 'Mental Health Care Coonection'),
(480, 78, '_mental_heading', 'field_62c03677c05a6'),
(481, 78, 'mental_text', 'Lorem Ipsum is simply dummy text ofthe printing and \' typesetting industry. Lorem Ipsum has been the printing and typesetting industry'),
(482, 78, '_mental_text', 'field_62c036965035c'),
(483, 78, 'banner_right_img', '57'),
(484, 78, '_banner_right_img', 'field_62c036af7afbf'),
(485, 78, 'create_profile', 'Create Profile'),
(486, 78, '_create_profile', 'field_62c039893df39'),
(487, 78, 'create_profile_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(488, 78, '_create_profile_text', 'field_62c039953df3a'),
(489, 78, 'appointments', 'Manage Appointments'),
(490, 78, '_appointments', 'field_62c039a83df3b'),
(491, 78, 'appointments_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(492, 78, '_appointments_text', 'field_62c039b33df3c'),
(493, 78, 'services_heading', 'Services'),
(494, 78, '_services_heading', 'field_62c03af4b7855'),
(495, 78, 'services_sub', 'Do you feel you have'),
(496, 78, '_services_sub', 'field_62c03b03b7856'),
(497, 78, 'depression_depression', 'Depression'),
(498, 78, '_depression_depression', 'field_62c03ba1bb617'),
(499, 78, 'depression_depression_head', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(500, 78, '_depression_depression_head', 'field_62c03bb1bb618'),
(501, 78, 'depression_anxiety', 'Anxiety'),
(502, 78, '_depression_anxiety', 'field_62c03be0a5f26'),
(503, 78, 'depression_anxiety_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(504, 78, '_depression_anxiety_text', 'field_62c03bfca5f27'),
(505, 78, 'depression', ''),
(506, 78, '_depression', 'field_62c03b84bb616'),
(507, 13, 'depression_head', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(508, 13, '_depression_head', 'field_62c03ddacd5a6'),
(509, 13, 'anxiety', 'Anxiety'),
(510, 13, '_anxiety', 'field_62c03e1ecd5a7'),
(511, 13, 'anxiety_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(512, 13, '_anxiety_text', 'field_62c03e2acd5a8'),
(513, 82, 'mental_health', 'Your Mental Health Matters'),
(514, 82, '_mental_health', 'field_62bf3593de71f'),
(515, 82, 'mental_health_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite lots of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(516, 82, '_mental_health_description', 'field_62bf35f4de720'),
(517, 82, 'image', '31'),
(518, 82, '_image', 'field_62bf360bde721'),
(519, 82, 'counseling_benefit', 'How Can Counseling Benefit You?'),
(520, 82, '_counseling_benefit', 'field_62bf3c30f0808'),
(521, 82, 'counseling_benefit_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite SE of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(522, 82, '_counseling_benefit_description', 'field_62bf3c3cf0809'),
(523, 82, 'benefit_img', '39'),
(524, 82, '_benefit_img', 'field_62bf3da0f080a'),
(525, 82, 'find_a_provider', 'a:3:{s:5:\"title\";s:15:\"Find a Provider\";s:3:\"url\";s:31:\"http://localhost/customwp/home/\";s:6:\"target\";s:6:\"_blank\";}'),
(526, 82, '_find_a_provider', 'field_62bf3e4943a67'),
(527, 82, 'works_image', '47'),
(528, 82, '_works_image', 'field_62bf4216e58c7'),
(529, 82, 'step', 'Step'),
(530, 82, '_step', 'field_62bf429573745'),
(531, 82, 'works_heading', 'How It Works'),
(532, 82, '_works_heading', 'field_62bf42b373746'),
(533, 82, 'register_yourself', 'Register yourself'),
(534, 82, '_register_yourself', 'field_62bf432073747'),
(535, 82, 'register_desc', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(536, 82, '_register_desc', 'field_62bf435673748'),
(537, 82, 'mental_heading', 'Mental Health Care Coonection'),
(538, 82, '_mental_heading', 'field_62c03677c05a6'),
(539, 82, 'mental_text', 'Lorem Ipsum is simply dummy text ofthe printing and \' typesetting industry. Lorem Ipsum has been the printing and typesetting industry'),
(540, 82, '_mental_text', 'field_62c036965035c'),
(541, 82, 'banner_right_img', '57'),
(542, 82, '_banner_right_img', 'field_62c036af7afbf'),
(543, 82, 'create_profile', 'Create Profile'),
(544, 82, '_create_profile', 'field_62c039893df39');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(545, 82, 'create_profile_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(546, 82, '_create_profile_text', 'field_62c039953df3a'),
(547, 82, 'appointments', 'Manage Appointments'),
(548, 82, '_appointments', 'field_62c039a83df3b'),
(549, 82, 'appointments_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(550, 82, '_appointments_text', 'field_62c039b33df3c'),
(551, 82, 'services_heading', 'Services'),
(552, 82, '_services_heading', 'field_62c03af4b7855'),
(553, 82, 'services_sub', 'Do you feel you have'),
(554, 82, '_services_sub', 'field_62c03b03b7856'),
(555, 82, 'depression_depression', 'Depression'),
(556, 82, '_depression_depression', 'field_62c03ba1bb617'),
(557, 82, 'depression_depression_head', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(558, 82, '_depression_depression_head', 'field_62c03bb1bb618'),
(559, 82, 'depression_anxiety', 'Anxiety'),
(560, 82, '_depression_anxiety', 'field_62c03be0a5f26'),
(561, 82, 'depression_anxiety_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(562, 82, '_depression_anxiety_text', 'field_62c03bfca5f27'),
(563, 82, 'depression', 'Depression'),
(564, 82, '_depression', 'field_62c03b84bb616'),
(565, 82, 'depression_head', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(566, 82, '_depression_head', 'field_62c03ddacd5a6'),
(567, 82, 'anxiety', 'Anxiety'),
(568, 82, '_anxiety', 'field_62c03e1ecd5a7'),
(569, 82, 'anxiety_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(570, 82, '_anxiety_text', 'field_62c03e2acd5a8'),
(571, 13, 'autism', 'Autism'),
(572, 13, '_autism', 'field_62c03e7c6d424'),
(573, 13, 'autism_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(574, 13, '_autism_text', 'field_62c03f687b323'),
(575, 13, 'addiction', 'Addiction'),
(576, 13, '_addiction', 'field_62c03e8d6d425'),
(577, 13, 'addiction_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(578, 13, '_addiction_text', 'field_62c03ecb6d428'),
(579, 13, 'bipolar_disorder', 'Bipolar Disorder'),
(580, 13, '_bipolar_disorder', 'field_62c03e9c6d426'),
(581, 13, 'bipolar_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(582, 13, '_bipolar_text', 'field_62c03ea86d427'),
(583, 13, 'work_stress', 'Work Stress'),
(584, 13, '_work_stress', 'field_62c03f9e9fcad'),
(585, 13, 'work_stress_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(586, 13, '_work_stress_text', 'field_62c03ffb9fcae'),
(587, 13, 'sleeping_disorder', 'Sleeping Disorder'),
(588, 13, '_sleeping_disorder', 'field_62c0400d9fcaf'),
(589, 13, 'sleeping_disorder_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(590, 13, '_sleeping_disorder_text', 'field_62c040179fcb0'),
(591, 13, 'eating_disorder', 'Eating Disorder'),
(592, 13, '_eating_disorder', 'field_62c040259fcb1'),
(593, 13, 'eating_disorder_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(594, 13, '_eating_disorder_text', 'field_62c0402a9fcb2'),
(595, 95, 'mental_health', 'Your Mental Health Matters'),
(596, 95, '_mental_health', 'field_62bf3593de71f'),
(597, 95, 'mental_health_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite lots of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(598, 95, '_mental_health_description', 'field_62bf35f4de720'),
(599, 95, 'image', '31'),
(600, 95, '_image', 'field_62bf360bde721'),
(601, 95, 'counseling_benefit', 'How Can Counseling Benefit You?'),
(602, 95, '_counseling_benefit', 'field_62bf3c30f0808'),
(603, 95, 'counseling_benefit_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite SE of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(604, 95, '_counseling_benefit_description', 'field_62bf3c3cf0809'),
(605, 95, 'benefit_img', '39'),
(606, 95, '_benefit_img', 'field_62bf3da0f080a'),
(607, 95, 'find_a_provider', 'a:3:{s:5:\"title\";s:15:\"Find a Provider\";s:3:\"url\";s:31:\"http://localhost/customwp/home/\";s:6:\"target\";s:6:\"_blank\";}'),
(608, 95, '_find_a_provider', 'field_62bf3e4943a67'),
(609, 95, 'works_image', '47'),
(610, 95, '_works_image', 'field_62bf4216e58c7'),
(611, 95, 'step', 'Step'),
(612, 95, '_step', 'field_62bf429573745'),
(613, 95, 'works_heading', 'How It Works'),
(614, 95, '_works_heading', 'field_62bf42b373746'),
(615, 95, 'register_yourself', 'Register yourself'),
(616, 95, '_register_yourself', 'field_62bf432073747'),
(617, 95, 'register_desc', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(618, 95, '_register_desc', 'field_62bf435673748'),
(619, 95, 'mental_heading', 'Mental Health Care Coonection'),
(620, 95, '_mental_heading', 'field_62c03677c05a6'),
(621, 95, 'mental_text', 'Lorem Ipsum is simply dummy text ofthe printing and \' typesetting industry. Lorem Ipsum has been the printing and typesetting industry'),
(622, 95, '_mental_text', 'field_62c036965035c'),
(623, 95, 'banner_right_img', '57'),
(624, 95, '_banner_right_img', 'field_62c036af7afbf'),
(625, 95, 'create_profile', 'Create Profile'),
(626, 95, '_create_profile', 'field_62c039893df39'),
(627, 95, 'create_profile_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(628, 95, '_create_profile_text', 'field_62c039953df3a'),
(629, 95, 'appointments', 'Manage Appointments'),
(630, 95, '_appointments', 'field_62c039a83df3b'),
(631, 95, 'appointments_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(632, 95, '_appointments_text', 'field_62c039b33df3c'),
(633, 95, 'services_heading', 'Services'),
(634, 95, '_services_heading', 'field_62c03af4b7855'),
(635, 95, 'services_sub', 'Do you feel you have'),
(636, 95, '_services_sub', 'field_62c03b03b7856'),
(637, 95, 'depression_depression', 'Depression'),
(638, 95, '_depression_depression', 'field_62c03ba1bb617'),
(639, 95, 'depression_depression_head', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(640, 95, '_depression_depression_head', 'field_62c03bb1bb618'),
(641, 95, 'depression_anxiety', 'Anxiety'),
(642, 95, '_depression_anxiety', 'field_62c03be0a5f26'),
(643, 95, 'depression_anxiety_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(644, 95, '_depression_anxiety_text', 'field_62c03bfca5f27'),
(645, 95, 'depression', 'Depression'),
(646, 95, '_depression', 'field_62c03b84bb616'),
(647, 95, 'depression_head', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(648, 95, '_depression_head', 'field_62c03ddacd5a6'),
(649, 95, 'anxiety', 'Anxiety'),
(650, 95, '_anxiety', 'field_62c03e1ecd5a7'),
(651, 95, 'anxiety_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(652, 95, '_anxiety_text', 'field_62c03e2acd5a8'),
(653, 95, 'autism', 'Autism'),
(654, 95, '_autism', 'field_62c03e7c6d424'),
(655, 95, 'autism_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(656, 95, '_autism_text', 'field_62c03f687b323'),
(657, 95, 'addiction', 'Addiction'),
(658, 95, '_addiction', 'field_62c03e8d6d425'),
(659, 95, 'addiction_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(660, 95, '_addiction_text', 'field_62c03ecb6d428'),
(661, 95, 'bipolar_disorder', 'Bipolar Disorder'),
(662, 95, '_bipolar_disorder', 'field_62c03e9c6d426'),
(663, 95, 'bipolar_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(664, 95, '_bipolar_text', 'field_62c03ea86d427'),
(665, 95, 'work_stress', 'Work Stress'),
(666, 95, '_work_stress', 'field_62c03f9e9fcad'),
(667, 95, 'work_stress_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(668, 95, '_work_stress_text', 'field_62c03ffb9fcae'),
(669, 95, 'sleeping_disorder', 'Sleeping Disorder'),
(670, 95, '_sleeping_disorder', 'field_62c0400d9fcaf'),
(671, 95, 'sleeping_disorder_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(672, 95, '_sleeping_disorder_text', 'field_62c040179fcb0'),
(673, 95, 'eating_disorder', 'Eating Disorder'),
(674, 95, '_eating_disorder', 'field_62c040259fcb1'),
(675, 95, 'eating_disorder_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(676, 95, '_eating_disorder_text', 'field_62c0402a9fcb2'),
(677, 96, '_edit_last', '1'),
(678, 96, '_edit_lock', '1656769774:1'),
(679, 13, 'client_heading', 'What Our Happy Clients Say'),
(680, 13, '_client_heading', 'field_62c0486819590'),
(681, 13, 'testimonial_img', '55'),
(682, 13, '_testimonial_img', 'field_62c0489f19591'),
(683, 13, 'testimonial_title', 'Jac Jacson'),
(684, 13, '_testimonial_title', 'field_62c048b619592'),
(685, 13, 'testimonial_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the                                     '),
(686, 13, '_testimonial_description', 'field_62c048bf19593'),
(687, 13, 'testimonial_title2', 'Jac Jacson2'),
(688, 13, '_testimonial_title2', 'field_62c048df19594'),
(689, 13, 'testimonial_img2', '55'),
(690, 13, '_testimonial_img2', 'field_62c048eb19595'),
(691, 13, 'testimonial_des2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the                                     '),
(692, 13, '_testimonial_des2', 'field_62c048f319596'),
(693, 104, 'mental_health', 'Your Mental Health Matters'),
(694, 104, '_mental_health', 'field_62bf3593de71f'),
(695, 104, 'mental_health_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite lots of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(696, 104, '_mental_health_description', 'field_62bf35f4de720'),
(697, 104, 'image', '31'),
(698, 104, '_image', 'field_62bf360bde721'),
(699, 104, 'counseling_benefit', 'How Can Counseling Benefit You?'),
(700, 104, '_counseling_benefit', 'field_62bf3c30f0808'),
(701, 104, 'counseling_benefit_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite SE of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(702, 104, '_counseling_benefit_description', 'field_62bf3c3cf0809'),
(703, 104, 'benefit_img', '39'),
(704, 104, '_benefit_img', 'field_62bf3da0f080a'),
(705, 104, 'find_a_provider', 'a:3:{s:5:\"title\";s:15:\"Find a Provider\";s:3:\"url\";s:31:\"http://localhost/customwp/home/\";s:6:\"target\";s:6:\"_blank\";}'),
(706, 104, '_find_a_provider', 'field_62bf3e4943a67'),
(707, 104, 'works_image', '47'),
(708, 104, '_works_image', 'field_62bf4216e58c7'),
(709, 104, 'step', 'Step'),
(710, 104, '_step', 'field_62bf429573745'),
(711, 104, 'works_heading', 'How It Works'),
(712, 104, '_works_heading', 'field_62bf42b373746'),
(713, 104, 'register_yourself', 'Register yourself'),
(714, 104, '_register_yourself', 'field_62bf432073747'),
(715, 104, 'register_desc', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(716, 104, '_register_desc', 'field_62bf435673748'),
(717, 104, 'mental_heading', 'Mental Health Care Coonection'),
(718, 104, '_mental_heading', 'field_62c03677c05a6'),
(719, 104, 'mental_text', 'Lorem Ipsum is simply dummy text ofthe printing and \' typesetting industry. Lorem Ipsum has been the printing and typesetting industry'),
(720, 104, '_mental_text', 'field_62c036965035c'),
(721, 104, 'banner_right_img', '57'),
(722, 104, '_banner_right_img', 'field_62c036af7afbf'),
(723, 104, 'create_profile', 'Create Profile'),
(724, 104, '_create_profile', 'field_62c039893df39'),
(725, 104, 'create_profile_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(726, 104, '_create_profile_text', 'field_62c039953df3a'),
(727, 104, 'appointments', 'Manage Appointments'),
(728, 104, '_appointments', 'field_62c039a83df3b'),
(729, 104, 'appointments_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(730, 104, '_appointments_text', 'field_62c039b33df3c'),
(731, 104, 'services_heading', 'Services'),
(732, 104, '_services_heading', 'field_62c03af4b7855'),
(733, 104, 'services_sub', 'Do you feel you have'),
(734, 104, '_services_sub', 'field_62c03b03b7856'),
(735, 104, 'depression_depression', 'Depression'),
(736, 104, '_depression_depression', 'field_62c03ba1bb617'),
(737, 104, 'depression_depression_head', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(738, 104, '_depression_depression_head', 'field_62c03bb1bb618'),
(739, 104, 'depression_anxiety', 'Anxiety'),
(740, 104, '_depression_anxiety', 'field_62c03be0a5f26'),
(741, 104, 'depression_anxiety_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(742, 104, '_depression_anxiety_text', 'field_62c03bfca5f27'),
(743, 104, 'depression', 'Depression'),
(744, 104, '_depression', 'field_62c03b84bb616'),
(745, 104, 'depression_head', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(746, 104, '_depression_head', 'field_62c03ddacd5a6'),
(747, 104, 'anxiety', 'Anxiety'),
(748, 104, '_anxiety', 'field_62c03e1ecd5a7'),
(749, 104, 'anxiety_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(750, 104, '_anxiety_text', 'field_62c03e2acd5a8'),
(751, 104, 'autism', 'Autism'),
(752, 104, '_autism', 'field_62c03e7c6d424'),
(753, 104, 'autism_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(754, 104, '_autism_text', 'field_62c03f687b323'),
(755, 104, 'addiction', 'Addiction'),
(756, 104, '_addiction', 'field_62c03e8d6d425'),
(757, 104, 'addiction_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(758, 104, '_addiction_text', 'field_62c03ecb6d428'),
(759, 104, 'bipolar_disorder', 'Bipolar Disorder'),
(760, 104, '_bipolar_disorder', 'field_62c03e9c6d426'),
(761, 104, 'bipolar_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(762, 104, '_bipolar_text', 'field_62c03ea86d427'),
(763, 104, 'work_stress', 'Work Stress'),
(764, 104, '_work_stress', 'field_62c03f9e9fcad'),
(765, 104, 'work_stress_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(766, 104, '_work_stress_text', 'field_62c03ffb9fcae'),
(767, 104, 'sleeping_disorder', 'Sleeping Disorder'),
(768, 104, '_sleeping_disorder', 'field_62c0400d9fcaf'),
(769, 104, 'sleeping_disorder_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(770, 104, '_sleeping_disorder_text', 'field_62c040179fcb0'),
(771, 104, 'eating_disorder', 'Eating Disorder'),
(772, 104, '_eating_disorder', 'field_62c040259fcb1'),
(773, 104, 'eating_disorder_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(774, 104, '_eating_disorder_text', 'field_62c0402a9fcb2'),
(775, 104, 'client_heading', 'What Our Happy Clients Say'),
(776, 104, '_client_heading', 'field_62c0486819590'),
(777, 104, 'testimonial_img', '55'),
(778, 104, '_testimonial_img', 'field_62c0489f19591'),
(779, 104, 'testimonial_title', 'Jac Jacson'),
(780, 104, '_testimonial_title', 'field_62c048b619592'),
(781, 104, 'testimonial_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the                                     '),
(782, 104, '_testimonial_description', 'field_62c048bf19593'),
(783, 104, 'testimonial_title2', 'Jac Jacson2'),
(784, 104, '_testimonial_title2', 'field_62c048df19594'),
(785, 104, 'testimonial_img2', ''),
(786, 104, '_testimonial_img2', 'field_62c048eb19595'),
(787, 104, 'testimonial_des2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the                                     '),
(788, 104, '_testimonial_des2', 'field_62c048f319596'),
(789, 105, 'mental_health', 'Your Mental Health Matters'),
(790, 105, '_mental_health', 'field_62bf3593de71f'),
(791, 105, 'mental_health_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite lots of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(792, 105, '_mental_health_description', 'field_62bf35f4de720'),
(793, 105, 'image', '31'),
(794, 105, '_image', 'field_62bf360bde721'),
(795, 105, 'counseling_benefit', 'How Can Counseling Benefit You?'),
(796, 105, '_counseling_benefit', 'field_62bf3c30f0808'),
(797, 105, 'counseling_benefit_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite SE of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(798, 105, '_counseling_benefit_description', 'field_62bf3c3cf0809'),
(799, 105, 'benefit_img', '39'),
(800, 105, '_benefit_img', 'field_62bf3da0f080a'),
(801, 105, 'find_a_provider', 'a:3:{s:5:\"title\";s:15:\"Find a Provider\";s:3:\"url\";s:31:\"http://localhost/customwp/home/\";s:6:\"target\";s:6:\"_blank\";}'),
(802, 105, '_find_a_provider', 'field_62bf3e4943a67'),
(803, 105, 'works_image', '47'),
(804, 105, '_works_image', 'field_62bf4216e58c7'),
(805, 105, 'step', 'Step'),
(806, 105, '_step', 'field_62bf429573745'),
(807, 105, 'works_heading', 'How It Works'),
(808, 105, '_works_heading', 'field_62bf42b373746'),
(809, 105, 'register_yourself', 'Register yourself'),
(810, 105, '_register_yourself', 'field_62bf432073747'),
(811, 105, 'register_desc', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(812, 105, '_register_desc', 'field_62bf435673748'),
(813, 105, 'mental_heading', 'Mental Health Care Coonection'),
(814, 105, '_mental_heading', 'field_62c03677c05a6'),
(815, 105, 'mental_text', 'Lorem Ipsum is simply dummy text ofthe printing and \' typesetting industry. Lorem Ipsum has been the printing and typesetting industry'),
(816, 105, '_mental_text', 'field_62c036965035c'),
(817, 105, 'banner_right_img', '57'),
(818, 105, '_banner_right_img', 'field_62c036af7afbf'),
(819, 105, 'create_profile', 'Create Profile'),
(820, 105, '_create_profile', 'field_62c039893df39'),
(821, 105, 'create_profile_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(822, 105, '_create_profile_text', 'field_62c039953df3a'),
(823, 105, 'appointments', 'Manage Appointments'),
(824, 105, '_appointments', 'field_62c039a83df3b'),
(825, 105, 'appointments_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(826, 105, '_appointments_text', 'field_62c039b33df3c'),
(827, 105, 'services_heading', 'Services'),
(828, 105, '_services_heading', 'field_62c03af4b7855'),
(829, 105, 'services_sub', 'Do you feel you have'),
(830, 105, '_services_sub', 'field_62c03b03b7856'),
(831, 105, 'depression_depression', 'Depression'),
(832, 105, '_depression_depression', 'field_62c03ba1bb617'),
(833, 105, 'depression_depression_head', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(834, 105, '_depression_depression_head', 'field_62c03bb1bb618'),
(835, 105, 'depression_anxiety', 'Anxiety'),
(836, 105, '_depression_anxiety', 'field_62c03be0a5f26'),
(837, 105, 'depression_anxiety_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(838, 105, '_depression_anxiety_text', 'field_62c03bfca5f27'),
(839, 105, 'depression', 'Depression'),
(840, 105, '_depression', 'field_62c03b84bb616'),
(841, 105, 'depression_head', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(842, 105, '_depression_head', 'field_62c03ddacd5a6'),
(843, 105, 'anxiety', 'Anxiety'),
(844, 105, '_anxiety', 'field_62c03e1ecd5a7'),
(845, 105, 'anxiety_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(846, 105, '_anxiety_text', 'field_62c03e2acd5a8'),
(847, 105, 'autism', 'Autism'),
(848, 105, '_autism', 'field_62c03e7c6d424'),
(849, 105, 'autism_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(850, 105, '_autism_text', 'field_62c03f687b323'),
(851, 105, 'addiction', 'Addiction'),
(852, 105, '_addiction', 'field_62c03e8d6d425'),
(853, 105, 'addiction_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(854, 105, '_addiction_text', 'field_62c03ecb6d428'),
(855, 105, 'bipolar_disorder', 'Bipolar Disorder'),
(856, 105, '_bipolar_disorder', 'field_62c03e9c6d426'),
(857, 105, 'bipolar_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(858, 105, '_bipolar_text', 'field_62c03ea86d427'),
(859, 105, 'work_stress', 'Work Stress'),
(860, 105, '_work_stress', 'field_62c03f9e9fcad'),
(861, 105, 'work_stress_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(862, 105, '_work_stress_text', 'field_62c03ffb9fcae'),
(863, 105, 'sleeping_disorder', 'Sleeping Disorder'),
(864, 105, '_sleeping_disorder', 'field_62c0400d9fcaf'),
(865, 105, 'sleeping_disorder_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(866, 105, '_sleeping_disorder_text', 'field_62c040179fcb0'),
(867, 105, 'eating_disorder', 'Eating Disorder'),
(868, 105, '_eating_disorder', 'field_62c040259fcb1'),
(869, 105, 'eating_disorder_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(870, 105, '_eating_disorder_text', 'field_62c0402a9fcb2'),
(871, 105, 'client_heading', 'What Our Happy Clients Say'),
(872, 105, '_client_heading', 'field_62c0486819590'),
(873, 105, 'testimonial_img', '55'),
(874, 105, '_testimonial_img', 'field_62c0489f19591'),
(875, 105, 'testimonial_title', 'Jac Jacson'),
(876, 105, '_testimonial_title', 'field_62c048b619592'),
(877, 105, 'testimonial_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the                                     '),
(878, 105, '_testimonial_description', 'field_62c048bf19593'),
(879, 105, 'testimonial_title2', 'Jac Jacson2'),
(880, 105, '_testimonial_title2', 'field_62c048df19594'),
(881, 105, 'testimonial_img2', '55'),
(882, 105, '_testimonial_img2', 'field_62c048eb19595'),
(883, 105, 'testimonial_des2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the                                     '),
(884, 105, '_testimonial_des2', 'field_62c048f319596'),
(885, 13, 'background', '56'),
(886, 13, '_background', 'field_62c04d85fa7e6'),
(887, 107, 'mental_health', 'Your Mental Health Matters'),
(888, 107, '_mental_health', 'field_62bf3593de71f'),
(889, 107, 'mental_health_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite lots of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(890, 107, '_mental_health_description', 'field_62bf35f4de720'),
(891, 107, 'image', '31'),
(892, 107, '_image', 'field_62bf360bde721'),
(893, 107, 'counseling_benefit', 'How Can Counseling Benefit You?'),
(894, 107, '_counseling_benefit', 'field_62bf3c30f0808'),
(895, 107, 'counseling_benefit_description', 'Sometimes the reason for our unhappiness is less clear. We may feel flat or stifled even when everything is apparently going well. We may be feeling alone despite SE of Facebook friends. We may even feel cross with those we love, parents or partners. And we may feel ashamed that we can\'t make everything ok for ourselves, that we should be happy. Or even that we are somehow not like everyone else, that we are bad or evil. But what\'s the use in talking to a complete stranger about all that?'),
(896, 107, '_counseling_benefit_description', 'field_62bf3c3cf0809'),
(897, 107, 'benefit_img', '39'),
(898, 107, '_benefit_img', 'field_62bf3da0f080a'),
(899, 107, 'find_a_provider', 'a:3:{s:5:\"title\";s:15:\"Find a Provider\";s:3:\"url\";s:31:\"http://localhost/customwp/home/\";s:6:\"target\";s:6:\"_blank\";}'),
(900, 107, '_find_a_provider', 'field_62bf3e4943a67'),
(901, 107, 'works_image', '47'),
(902, 107, '_works_image', 'field_62bf4216e58c7'),
(903, 107, 'step', 'Step'),
(904, 107, '_step', 'field_62bf429573745'),
(905, 107, 'works_heading', 'How It Works'),
(906, 107, '_works_heading', 'field_62bf42b373746'),
(907, 107, 'register_yourself', 'Register yourself'),
(908, 107, '_register_yourself', 'field_62bf432073747'),
(909, 107, 'register_desc', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(910, 107, '_register_desc', 'field_62bf435673748'),
(911, 107, 'mental_heading', 'Mental Health Care Coonection'),
(912, 107, '_mental_heading', 'field_62c03677c05a6'),
(913, 107, 'mental_text', 'Lorem Ipsum is simply dummy text ofthe printing and \' typesetting industry. Lorem Ipsum has been the printing and typesetting industry'),
(914, 107, '_mental_text', 'field_62c036965035c'),
(915, 107, 'banner_right_img', '57'),
(916, 107, '_banner_right_img', 'field_62c036af7afbf'),
(917, 107, 'create_profile', 'Create Profile'),
(918, 107, '_create_profile', 'field_62c039893df39'),
(919, 107, 'create_profile_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(920, 107, '_create_profile_text', 'field_62c039953df3a'),
(921, 107, 'appointments', 'Manage Appointments'),
(922, 107, '_appointments', 'field_62c039a83df3b'),
(923, 107, 'appointments_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.'),
(924, 107, '_appointments_text', 'field_62c039b33df3c'),
(925, 107, 'services_heading', 'Services'),
(926, 107, '_services_heading', 'field_62c03af4b7855'),
(927, 107, 'services_sub', 'Do you feel you have'),
(928, 107, '_services_sub', 'field_62c03b03b7856'),
(929, 107, 'depression_depression', 'Depression'),
(930, 107, '_depression_depression', 'field_62c03ba1bb617'),
(931, 107, 'depression_depression_head', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(932, 107, '_depression_depression_head', 'field_62c03bb1bb618'),
(933, 107, 'depression_anxiety', 'Anxiety'),
(934, 107, '_depression_anxiety', 'field_62c03be0a5f26'),
(935, 107, 'depression_anxiety_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(936, 107, '_depression_anxiety_text', 'field_62c03bfca5f27'),
(937, 107, 'depression', 'Depression'),
(938, 107, '_depression', 'field_62c03b84bb616'),
(939, 107, 'depression_head', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(940, 107, '_depression_head', 'field_62c03ddacd5a6'),
(941, 107, 'anxiety', 'Anxiety'),
(942, 107, '_anxiety', 'field_62c03e1ecd5a7'),
(943, 107, 'anxiety_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(944, 107, '_anxiety_text', 'field_62c03e2acd5a8'),
(945, 107, 'autism', 'Autism'),
(946, 107, '_autism', 'field_62c03e7c6d424'),
(947, 107, 'autism_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(948, 107, '_autism_text', 'field_62c03f687b323'),
(949, 107, 'addiction', 'Addiction'),
(950, 107, '_addiction', 'field_62c03e8d6d425'),
(951, 107, 'addiction_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(952, 107, '_addiction_text', 'field_62c03ecb6d428'),
(953, 107, 'bipolar_disorder', 'Bipolar Disorder'),
(954, 107, '_bipolar_disorder', 'field_62c03e9c6d426'),
(955, 107, 'bipolar_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(956, 107, '_bipolar_text', 'field_62c03ea86d427'),
(957, 107, 'work_stress', 'Work Stress'),
(958, 107, '_work_stress', 'field_62c03f9e9fcad'),
(959, 107, 'work_stress_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(960, 107, '_work_stress_text', 'field_62c03ffb9fcae'),
(961, 107, 'sleeping_disorder', 'Sleeping Disorder'),
(962, 107, '_sleeping_disorder', 'field_62c0400d9fcaf'),
(963, 107, 'sleeping_disorder_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(964, 107, '_sleeping_disorder_text', 'field_62c040179fcb0'),
(965, 107, 'eating_disorder', 'Eating Disorder'),
(966, 107, '_eating_disorder', 'field_62c040259fcb1'),
(967, 107, 'eating_disorder_text', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(968, 107, '_eating_disorder_text', 'field_62c0402a9fcb2'),
(969, 107, 'client_heading', 'What Our Happy Clients Say'),
(970, 107, '_client_heading', 'field_62c0486819590'),
(971, 107, 'testimonial_img', '55'),
(972, 107, '_testimonial_img', 'field_62c0489f19591'),
(973, 107, 'testimonial_title', 'Jac Jacson'),
(974, 107, '_testimonial_title', 'field_62c048b619592'),
(975, 107, 'testimonial_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the                                     '),
(976, 107, '_testimonial_description', 'field_62c048bf19593'),
(977, 107, 'testimonial_title2', 'Jac Jacson2'),
(978, 107, '_testimonial_title2', 'field_62c048df19594'),
(979, 107, 'testimonial_img2', '55'),
(980, 107, '_testimonial_img2', 'field_62c048eb19595'),
(981, 107, 'testimonial_des2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since theLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the                                     '),
(982, 107, '_testimonial_des2', 'field_62c048f319596'),
(983, 107, 'background', '56'),
(984, 107, '_background', 'field_62c04d85fa7e6');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
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
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-07-01 14:35:13', '2022-07-01 14:35:13', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2022-07-01 14:35:13', '2022-07-01 14:35:13', '', 0, 'http://localhost/customwp/?p=1', 0, 'post', '', 1),
(2, 1, '2022-07-01 14:35:13', '2022-07-01 14:35:13', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/customwp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2022-07-01 14:35:13', '2022-07-01 14:35:13', '', 0, 'http://localhost/customwp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-07-01 14:35:13', '2022-07-01 14:35:13', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/customwp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2022-07-01 14:35:13', '2022-07-01 14:35:13', '', 0, 'http://localhost/customwp/?page_id=3', 0, 'page', '', 0),
(4, 1, '2022-07-01 14:35:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-07-01 14:35:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/customwp/?p=4', 0, 'post', '', 0),
(6, 1, '2022-07-01 15:30:31', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-07-01 15:30:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/customwp/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2022-07-01 16:04:48', '2022-07-01 15:33:59', '', 'Fiend a provider', '', 'publish', 'closed', 'closed', '', 'fiend-a-provider', '', '', '2022-07-01 16:04:48', '2022-07-01 16:04:48', '', 0, 'http://localhost/customwp/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2022-07-01 16:04:48', '2022-07-01 15:33:59', '', 'List Your Practice', '', 'publish', 'closed', 'closed', '', 'list-your-practice', '', '', '2022-07-01 16:04:48', '2022-07-01 16:04:48', '', 0, 'http://localhost/customwp/?p=8', 2, 'nav_menu_item', '', 0),
(9, 1, '2022-07-01 16:04:48', '2022-07-01 15:33:59', '', 'Contact US', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2022-07-01 16:04:48', '2022-07-01 16:04:48', '', 0, 'http://localhost/customwp/?p=9', 3, 'nav_menu_item', '', 0),
(10, 1, '2022-07-01 16:04:48', '2022-07-01 15:34:00', '', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2022-07-01 16:04:48', '2022-07-01 16:04:48', '', 0, 'http://localhost/customwp/?p=10', 4, 'nav_menu_item', '', 0),
(11, 1, '2022-07-01 15:34:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-07-01 15:34:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/customwp/?page_id=11', 0, 'page', '', 0),
(12, 1, '2022-07-01 15:34:26', '2022-07-01 15:34:26', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-test', '', '', '2022-07-01 15:34:26', '2022-07-01 15:34:26', '', 0, 'http://localhost/customwp/2022/07/01/wp-global-styles-test/', 0, 'wp_global_styles', '', 0),
(13, 1, '2022-07-01 15:35:08', '2022-07-01 15:35:08', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-07-02 13:53:10', '2022-07-02 13:53:10', '', 0, 'http://localhost/customwp/?page_id=13', 0, 'page', '', 0),
(14, 1, '2022-07-01 15:35:08', '2022-07-01 15:35:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-07-01 15:35:08', '2022-07-01 15:35:08', '', 13, 'http://localhost/customwp/?p=14', 0, 'revision', '', 0),
(15, 1, '2022-07-01 15:43:33', '2022-07-01 15:43:33', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2022-07-01 15:43:33', '2022-07-01 15:43:33', '', 0, 'http://localhost/customwp/wp-content/uploads/2022/07/logo.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2022-07-01 15:43:40', '2022-07-01 15:43:40', '{\n    \"test::custom_logo\": {\n        \"value\": 15,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-07-01 15:43:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4e4ccec0-bc65-47e0-a8ea-85bb8639f82e', '', '', '2022-07-01 15:43:40', '2022-07-01 15:43:40', '', 0, 'http://localhost/customwp/2022/07/01/4e4ccec0-bc65-47e0-a8ea-85bb8639f82e/', 0, 'customize_changeset', '', 0),
(17, 1, '2022-07-01 15:45:56', '2022-07-01 15:45:56', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-07-01 15:45:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3c5639c8-fa11-45ef-80f2-b49d05533c60', '', '', '2022-07-01 15:45:56', '2022-07-01 15:45:56', '', 0, 'http://localhost/customwp/2022/07/01/3c5639c8-fa11-45ef-80f2-b49d05533c60/', 0, 'customize_changeset', '', 0),
(18, 1, '2022-07-01 16:04:48', '2022-07-01 16:04:48', '', 'Sign Up', '', 'publish', 'closed', 'closed', '', 'sign-up', '', '', '2022-07-01 16:04:48', '2022-07-01 16:04:48', '', 0, 'http://localhost/customwp/?p=18', 5, 'nav_menu_item', '', 0),
(19, 1, '2022-07-01 16:31:27', '2022-07-01 16:31:27', '', 'logo-1', '', 'inherit', 'open', 'closed', '', 'logo-1', '', '', '2022-07-01 16:31:27', '2022-07-01 16:31:27', '', 0, 'http://localhost/customwp/wp-content/uploads/2022/07/logo-1.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2022-07-01 17:03:00', '2022-07-01 17:03:00', '', 'Contact US', '', 'publish', 'closed', 'closed', '', 'contact-us-2', '', '', '2022-07-01 17:03:00', '2022-07-01 17:03:00', '', 0, 'http://localhost/customwp/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2022-07-01 17:03:00', '2022-07-01 17:03:00', '', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2022-07-01 17:03:00', '2022-07-01 17:03:00', '', 0, 'http://localhost/customwp/?p=21', 2, 'nav_menu_item', '', 0),
(22, 1, '2022-07-01 17:03:00', '2022-07-01 17:03:00', '', 'Terms & Conditions', '', 'publish', 'closed', 'closed', '', 'terms-conditions', '', '', '2022-07-01 17:03:00', '2022-07-01 17:03:00', '', 0, 'http://localhost/customwp/?p=22', 3, 'nav_menu_item', '', 0),
(23, 1, '2022-07-01 17:07:51', '2022-07-01 17:07:46', '', 'Fiend A Provider', '', 'publish', 'closed', 'closed', '', 'fiend-a-provider-2', '', '', '2022-07-01 17:07:51', '2022-07-01 17:07:51', '', 0, 'http://localhost/customwp/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2022-07-01 17:07:51', '2022-07-01 17:07:46', '', 'List Your Practice', '', 'publish', 'closed', 'closed', '', 'list-your-practice-2', '', '', '2022-07-01 17:07:51', '2022-07-01 17:07:51', '', 0, 'http://localhost/customwp/?p=24', 2, 'nav_menu_item', '', 0),
(25, 1, '2022-07-01 17:07:51', '2022-07-01 17:07:46', '', 'For Provider', '', 'publish', 'closed', 'closed', '', 'for-provider', '', '', '2022-07-01 17:07:51', '2022-07-01 17:07:51', '', 0, 'http://localhost/customwp/?p=25', 3, 'nav_menu_item', '', 0),
(26, 1, '2022-07-01 17:59:50', '2022-07-01 17:59:50', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"home-template.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_62bf357cba35e', '', '', '2022-07-01 18:10:05', '2022-07-01 18:10:05', '', 0, 'http://localhost/customwp/?post_type=acf-field-group&#038;p=26', 0, 'acf-field-group', '', 0),
(27, 1, '2022-07-01 17:59:50', '2022-07-01 17:59:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Mental Health', 'mental_health', 'publish', 'closed', 'closed', '', 'field_62bf3593de71f', '', '', '2022-07-01 17:59:50', '2022-07-01 17:59:50', '', 26, 'http://localhost/customwp/?post_type=acf-field&p=27', 0, 'acf-field', '', 0),
(28, 1, '2022-07-01 17:59:50', '2022-07-01 17:59:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Mental Health Description', 'mental_health_description', 'publish', 'closed', 'closed', '', 'field_62bf35f4de720', '', '', '2022-07-01 17:59:50', '2022-07-01 17:59:50', '', 26, 'http://localhost/customwp/?post_type=acf-field&p=28', 1, 'acf-field', '', 0),
(29, 1, '2022-07-01 17:59:50', '2022-07-01 17:59:50', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_62bf360bde721', '', '', '2022-07-01 18:10:05', '2022-07-01 18:10:05', '', 26, 'http://localhost/customwp/?post_type=acf-field&#038;p=29', 2, 'acf-field', '', 0),
(30, 1, '2022-07-01 18:08:45', '2022-07-01 18:08:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-07-01 18:08:45', '2022-07-01 18:08:45', '', 13, 'http://localhost/customwp/?p=30', 0, 'revision', '', 0),
(31, 1, '2022-07-01 18:10:55', '2022-07-01 18:10:55', '', 'young-women-of-color', '', 'inherit', 'open', 'closed', '', 'young-women-of-color', '', '', '2022-07-01 18:10:55', '2022-07-01 18:10:55', '', 13, 'http://localhost/customwp/wp-content/uploads/2022/07/young-women-of-color.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2022-07-01 18:11:00', '2022-07-01 18:11:00', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-07-01 18:11:00', '2022-07-01 18:11:00', '', 13, 'http://localhost/customwp/?p=32', 0, 'revision', '', 0),
(33, 1, '2022-07-01 18:32:46', '2022-07-01 18:32:46', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"home-template.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Counseling Benefit', 'counseling-benefit', 'publish', 'closed', 'closed', '', 'group_62bf3c0d69e7b', '', '', '2022-07-01 18:45:29', '2022-07-01 18:45:29', '', 0, 'http://localhost/customwp/?post_type=acf-field-group&#038;p=33', 0, 'acf-field-group', '', 0),
(34, 1, '2022-07-01 18:32:46', '2022-07-01 18:32:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Counseling Benefit', 'counseling_benefit', 'publish', 'closed', 'closed', '', 'field_62bf3c30f0808', '', '', '2022-07-01 18:32:46', '2022-07-01 18:32:46', '', 33, 'http://localhost/customwp/?post_type=acf-field&p=34', 0, 'acf-field', '', 0),
(35, 1, '2022-07-01 18:32:46', '2022-07-01 18:32:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Counseling Benefit Description', 'counseling_benefit_description', 'publish', 'closed', 'closed', '', 'field_62bf3c3cf0809', '', '', '2022-07-01 18:32:46', '2022-07-01 18:32:46', '', 33, 'http://localhost/customwp/?post_type=acf-field&p=35', 1, 'acf-field', '', 0),
(36, 1, '2022-07-01 18:32:46', '2022-07-01 18:32:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Benefit_img', 'benefit_img', 'publish', 'closed', 'closed', '', 'field_62bf3da0f080a', '', '', '2022-07-01 18:32:46', '2022-07-01 18:32:46', '', 33, 'http://localhost/customwp/?post_type=acf-field&p=36', 2, 'acf-field', '', 0),
(37, 1, '2022-07-01 18:36:23', '2022-07-01 18:36:23', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Find a Provider', 'find_a_provider', 'publish', 'closed', 'closed', '', 'field_62bf3e4943a67', '', '', '2022-07-01 18:45:29', '2022-07-01 18:45:29', '', 33, 'http://localhost/customwp/?post_type=acf-field&#038;p=37', 3, 'acf-field', '', 0),
(39, 1, '2022-07-01 18:38:20', '2022-07-01 18:38:20', '', 'family-img', '', 'inherit', 'open', 'closed', '', 'family-img', '', '', '2022-07-01 18:38:20', '2022-07-01 18:38:20', '', 13, 'http://localhost/customwp/wp-content/uploads/2022/07/family-img.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2022-07-01 18:38:56', '2022-07-01 18:38:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-07-01 18:38:56', '2022-07-01 18:38:56', '', 13, 'http://localhost/customwp/?p=40', 0, 'revision', '', 0),
(41, 1, '2022-07-01 18:39:52', '2022-07-01 18:39:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-07-01 18:39:52', '2022-07-01 18:39:52', '', 13, 'http://localhost/customwp/?p=41', 0, 'revision', '', 0),
(42, 1, '2022-07-01 18:44:55', '2022-07-01 18:44:55', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-07-01 18:44:55', '2022-07-01 18:44:55', '', 13, 'http://localhost/customwp/?p=42', 0, 'revision', '', 0),
(43, 1, '2022-07-01 18:45:29', '2022-07-01 18:45:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', '', 'publish', 'closed', 'closed', '', 'field_62bf4087fd8a8', '', '', '2022-07-01 18:45:29', '2022-07-01 18:45:29', '', 33, 'http://localhost/customwp/?post_type=acf-field&p=43', 4, 'acf-field', '', 0),
(44, 1, '2022-07-01 18:46:03', '2022-07-01 18:46:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-07-01 18:46:03', '2022-07-01 18:46:03', '', 13, 'http://localhost/customwp/?p=44', 0, 'revision', '', 0),
(45, 1, '2022-07-01 18:50:59', '2022-07-01 18:50:59', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"home-template.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'How It Works', 'how-it-works', 'publish', 'closed', 'closed', '', 'group_62bf42065dea5', '', '', '2022-07-02 12:27:46', '2022-07-02 12:27:46', '', 0, 'http://localhost/customwp/?post_type=acf-field-group&#038;p=45', 0, 'acf-field-group', '', 0),
(46, 1, '2022-07-01 18:51:32', '2022-07-01 18:51:32', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'works image', 'works_image', 'publish', 'closed', 'closed', '', 'field_62bf4216e58c7', '', '', '2022-07-01 18:51:32', '2022-07-01 18:51:32', '', 45, 'http://localhost/customwp/?post_type=acf-field&p=46', 0, 'acf-field', '', 0),
(47, 1, '2022-07-01 18:52:27', '2022-07-01 18:52:27', '', 'how-it-work', '', 'inherit', 'open', 'closed', '', 'how-it-work', '', '', '2022-07-01 18:52:27', '2022-07-01 18:52:27', '', 13, 'http://localhost/customwp/wp-content/uploads/2022/07/how-it-work.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2022-07-01 18:52:34', '2022-07-01 18:52:34', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-07-01 18:52:34', '2022-07-01 18:52:34', '', 13, 'http://localhost/customwp/?p=48', 0, 'revision', '', 0),
(49, 1, '2022-07-01 18:56:46', '2022-07-01 18:56:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Step', 'step', 'publish', 'closed', 'closed', '', 'field_62bf429573745', '', '', '2022-07-01 18:56:46', '2022-07-01 18:56:46', '', 45, 'http://localhost/customwp/?post_type=acf-field&p=49', 1, 'acf-field', '', 0),
(50, 1, '2022-07-01 18:56:46', '2022-07-01 18:56:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Works_Heading', 'works_heading', 'publish', 'closed', 'closed', '', 'field_62bf42b373746', '', '', '2022-07-01 18:56:46', '2022-07-01 18:56:46', '', 45, 'http://localhost/customwp/?post_type=acf-field&p=50', 2, 'acf-field', '', 0),
(51, 1, '2022-07-01 18:56:46', '2022-07-01 18:56:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Register yourself', 'register_yourself', 'publish', 'closed', 'closed', '', 'field_62bf432073747', '', '', '2022-07-01 18:56:46', '2022-07-01 18:56:46', '', 45, 'http://localhost/customwp/?post_type=acf-field&p=51', 3, 'acf-field', '', 0),
(52, 1, '2022-07-01 18:56:46', '2022-07-01 18:56:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Register_desc', 'register_desc', 'publish', 'closed', 'closed', '', 'field_62bf435673748', '', '', '2022-07-01 18:56:46', '2022-07-01 18:56:46', '', 45, 'http://localhost/customwp/?post_type=acf-field&p=52', 4, 'acf-field', '', 0),
(53, 1, '2022-07-01 18:57:35', '2022-07-01 18:57:35', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-07-01 18:57:35', '2022-07-01 18:57:35', '', 13, 'http://localhost/customwp/?p=53', 0, 'revision', '', 0),
(54, 1, '2022-07-02 12:10:01', '2022-07-02 12:10:01', '', 'search-bg', '', 'inherit', 'open', 'closed', '', 'search-bg', '', '', '2022-07-02 12:10:01', '2022-07-02 12:10:01', '', 0, 'http://localhost/customwp/wp-content/uploads/2022/07/search-bg.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2022-07-02 12:10:04', '2022-07-02 12:10:04', '', 'avtar', '', 'inherit', 'open', 'closed', '', 'avtar', '', '', '2022-07-02 13:37:02', '2022-07-02 13:37:02', '', 13, 'http://localhost/customwp/wp-content/uploads/2022/07/avtar.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2022-07-02 12:10:06', '2022-07-02 12:10:06', '', 'banner-image', '', 'inherit', 'open', 'closed', '', 'banner-image', '', '', '2022-07-02 13:53:10', '2022-07-02 13:53:10', '', 13, 'http://localhost/customwp/wp-content/uploads/2022/07/banner-image.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2022-07-02 12:10:08', '2022-07-02 12:10:08', '', 'Shot of a group of hands holding on to each other against a white background', 'Shot of a group of hands holding on to each other against a white background', 'inherit', 'open', 'closed', '', 'shot-of-a-group-of-hands-holding-on-to-each-other-against-a-white-background', '', '', '2022-07-02 12:18:19', '2022-07-02 12:18:19', '', 13, 'http://localhost/customwp/wp-content/uploads/2022/07/banner-right-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2022-07-02 12:13:36', '2022-07-02 12:13:36', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"home-template.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'group_62c0365ed1f03', '', '', '2022-07-02 13:59:07', '2022-07-02 13:59:07', '', 0, 'http://localhost/customwp/?post_type=acf-field-group&#038;p=58', 0, 'acf-field-group', '', 0),
(59, 1, '2022-07-02 12:14:11', '2022-07-02 12:14:11', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Mental_Heading', 'mental_heading', 'publish', 'closed', 'closed', '', 'field_62c03677c05a6', '', '', '2022-07-02 12:14:11', '2022-07-02 12:14:11', '', 58, 'http://localhost/customwp/?post_type=acf-field&p=59', 0, 'acf-field', '', 0),
(60, 1, '2022-07-02 12:14:28', '2022-07-02 12:14:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Mental_text', 'mental_text', 'publish', 'closed', 'closed', '', 'field_62c036965035c', '', '', '2022-07-02 12:14:28', '2022-07-02 12:14:28', '', 58, 'http://localhost/customwp/?post_type=acf-field&p=60', 1, 'acf-field', '', 0),
(61, 1, '2022-07-02 12:15:11', '2022-07-02 12:15:11', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Banner Right Img', 'banner_right_img', 'publish', 'closed', 'closed', '', 'field_62c036af7afbf', '', '', '2022-07-02 12:18:07', '2022-07-02 12:18:07', '', 58, 'http://localhost/customwp/?post_type=acf-field&#038;p=61', 2, 'acf-field', '', 0),
(62, 1, '2022-07-02 12:17:47', '2022-07-02 12:17:47', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-07-02 12:17:47', '2022-07-02 12:17:47', '', 13, 'http://localhost/customwp/?p=62', 0, 'revision', '', 0),
(63, 1, '2022-07-02 12:18:19', '2022-07-02 12:18:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-07-02 12:18:19', '2022-07-02 12:18:19', '', 13, 'http://localhost/customwp/?p=63', 0, 'revision', '', 0),
(64, 1, '2022-07-02 12:27:45', '2022-07-02 12:27:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Create Profile', 'create_profile', 'publish', 'closed', 'closed', '', 'field_62c039893df39', '', '', '2022-07-02 12:27:45', '2022-07-02 12:27:45', '', 45, 'http://localhost/customwp/?post_type=acf-field&p=64', 5, 'acf-field', '', 0),
(65, 1, '2022-07-02 12:27:45', '2022-07-02 12:27:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Create Profile Text', 'create_profile_text', 'publish', 'closed', 'closed', '', 'field_62c039953df3a', '', '', '2022-07-02 12:27:45', '2022-07-02 12:27:45', '', 45, 'http://localhost/customwp/?post_type=acf-field&p=65', 6, 'acf-field', '', 0),
(66, 1, '2022-07-02 12:27:46', '2022-07-02 12:27:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Appointments', 'appointments', 'publish', 'closed', 'closed', '', 'field_62c039a83df3b', '', '', '2022-07-02 12:27:46', '2022-07-02 12:27:46', '', 45, 'http://localhost/customwp/?post_type=acf-field&p=66', 7, 'acf-field', '', 0),
(67, 1, '2022-07-02 12:27:46', '2022-07-02 12:27:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Appointments Text', 'appointments_text', 'publish', 'closed', 'closed', '', 'field_62c039b33df3c', '', '', '2022-07-02 12:27:46', '2022-07-02 12:27:46', '', 45, 'http://localhost/customwp/?post_type=acf-field&p=67', 8, 'acf-field', '', 0),
(68, 1, '2022-07-02 12:28:45', '2022-07-02 12:28:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-07-02 12:28:45', '2022-07-02 12:28:45', '', 13, 'http://localhost/customwp/?p=68', 0, 'revision', '', 0),
(69, 1, '2022-07-02 12:33:33', '2022-07-02 12:33:33', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"home-template.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Services', 'services', 'publish', 'closed', 'closed', '', 'group_62c03ad41a055', '', '', '2022-07-02 12:55:17', '2022-07-02 12:55:17', '', 0, 'http://localhost/customwp/?post_type=acf-field-group&#038;p=69', 0, 'acf-field-group', '', 0),
(70, 1, '2022-07-02 12:33:33', '2022-07-02 12:33:33', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Services Heading', 'services_heading', 'publish', 'closed', 'closed', '', 'field_62c03af4b7855', '', '', '2022-07-02 12:33:33', '2022-07-02 12:33:33', '', 69, 'http://localhost/customwp/?post_type=acf-field&p=70', 0, 'acf-field', '', 0),
(71, 1, '2022-07-02 12:33:33', '2022-07-02 12:33:33', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Services Sub', 'services_sub', 'publish', 'closed', 'closed', '', 'field_62c03b03b7856', '', '', '2022-07-02 12:33:33', '2022-07-02 12:33:33', '', 69, 'http://localhost/customwp/?post_type=acf-field&p=71', 1, 'acf-field', '', 0),
(72, 1, '2022-07-02 12:34:10', '2022-07-02 12:34:10', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-07-02 12:34:10', '2022-07-02 12:34:10', '', 13, 'http://localhost/customwp/?p=72', 0, 'revision', '', 0),
(73, 1, '2022-07-02 12:36:11', '2022-07-02 12:36:11', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Depression', 'depression', 'publish', 'closed', 'closed', '', 'field_62c03b84bb616', '', '', '2022-07-02 12:46:50', '2022-07-02 12:46:50', '', 69, 'http://localhost/customwp/?post_type=acf-field&#038;p=73', 2, 'acf-field', '', 0),
(74, 1, '2022-07-02 12:36:11', '2022-07-02 12:36:11', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Depression', 'depression', 'publish', 'closed', 'closed', '', 'field_62c03ba1bb617', '', '', '2022-07-02 12:36:11', '2022-07-02 12:36:11', '', 73, 'http://localhost/customwp/?post_type=acf-field&p=74', 0, 'acf-field', '', 0),
(75, 1, '2022-07-02 12:36:11', '2022-07-02 12:36:11', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Depression Head', 'depression_head', 'publish', 'closed', 'closed', '', 'field_62c03bb1bb618', '', '', '2022-07-02 12:37:26', '2022-07-02 12:37:26', '', 73, 'http://localhost/customwp/?post_type=acf-field&#038;p=75', 1, 'acf-field', '', 0),
(76, 1, '2022-07-02 12:37:26', '2022-07-02 12:37:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Anxiety', 'anxiety', 'publish', 'closed', 'closed', '', 'field_62c03be0a5f26', '', '', '2022-07-02 12:37:26', '2022-07-02 12:37:26', '', 73, 'http://localhost/customwp/?post_type=acf-field&p=76', 2, 'acf-field', '', 0),
(77, 1, '2022-07-02 12:37:26', '2022-07-02 12:37:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Anxiety text', 'anxiety_text', 'publish', 'closed', 'closed', '', 'field_62c03bfca5f27', '', '', '2022-07-02 12:37:26', '2022-07-02 12:37:26', '', 73, 'http://localhost/customwp/?post_type=acf-field&p=77', 3, 'acf-field', '', 0),
(78, 1, '2022-07-02 12:38:51', '2022-07-02 12:38:51', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-07-02 12:38:51', '2022-07-02 12:38:51', '', 13, 'http://localhost/customwp/?p=78', 0, 'revision', '', 0),
(79, 1, '2022-07-02 12:46:50', '2022-07-02 12:46:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Depression Head', 'depression_head', 'publish', 'closed', 'closed', '', 'field_62c03ddacd5a6', '', '', '2022-07-02 12:46:50', '2022-07-02 12:46:50', '', 69, 'http://localhost/customwp/?post_type=acf-field&p=79', 3, 'acf-field', '', 0),
(80, 1, '2022-07-02 12:46:50', '2022-07-02 12:46:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Anxiety', 'anxiety', 'publish', 'closed', 'closed', '', 'field_62c03e1ecd5a7', '', '', '2022-07-02 12:46:50', '2022-07-02 12:46:50', '', 69, 'http://localhost/customwp/?post_type=acf-field&p=80', 4, 'acf-field', '', 0),
(81, 1, '2022-07-02 12:46:50', '2022-07-02 12:46:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Anxiety Text', 'anxiety_text', 'publish', 'closed', 'closed', '', 'field_62c03e2acd5a8', '', '', '2022-07-02 12:46:50', '2022-07-02 12:46:50', '', 69, 'http://localhost/customwp/?post_type=acf-field&p=81', 5, 'acf-field', '', 0),
(82, 1, '2022-07-02 12:47:30', '2022-07-02 12:47:30', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-07-02 12:47:30', '2022-07-02 12:47:30', '', 13, 'http://localhost/customwp/?p=82', 0, 'revision', '', 0),
(83, 1, '2022-07-02 12:51:24', '2022-07-02 12:51:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Autism', 'autism', 'publish', 'closed', 'closed', '', 'field_62c03e7c6d424', '', '', '2022-07-02 12:55:17', '2022-07-02 12:55:17', '', 69, 'http://localhost/customwp/?post_type=acf-field&#038;p=83', 6, 'acf-field', '', 0),
(84, 1, '2022-07-02 12:51:24', '2022-07-02 12:51:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Addiction', 'addiction', 'publish', 'closed', 'closed', '', 'field_62c03e8d6d425', '', '', '2022-07-02 12:52:21', '2022-07-02 12:52:21', '', 69, 'http://localhost/customwp/?post_type=acf-field&#038;p=84', 8, 'acf-field', '', 0),
(85, 1, '2022-07-02 12:51:24', '2022-07-02 12:51:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Addiction Text', 'addiction_text', 'publish', 'closed', 'closed', '', 'field_62c03ecb6d428', '', '', '2022-07-02 12:52:21', '2022-07-02 12:52:21', '', 69, 'http://localhost/customwp/?post_type=acf-field&#038;p=85', 9, 'acf-field', '', 0),
(86, 1, '2022-07-02 12:51:24', '2022-07-02 12:51:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Bipolar Disorder', 'bipolar_disorder', 'publish', 'closed', 'closed', '', 'field_62c03e9c6d426', '', '', '2022-07-02 12:52:21', '2022-07-02 12:52:21', '', 69, 'http://localhost/customwp/?post_type=acf-field&#038;p=86', 10, 'acf-field', '', 0),
(87, 1, '2022-07-02 12:51:24', '2022-07-02 12:51:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Bipolar Text', 'bipolar_text', 'publish', 'closed', 'closed', '', 'field_62c03ea86d427', '', '', '2022-07-02 12:52:21', '2022-07-02 12:52:21', '', 69, 'http://localhost/customwp/?post_type=acf-field&#038;p=87', 11, 'acf-field', '', 0),
(88, 1, '2022-07-02 12:52:21', '2022-07-02 12:52:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Autism Text', 'autism_text', 'publish', 'closed', 'closed', '', 'field_62c03f687b323', '', '', '2022-07-02 12:55:17', '2022-07-02 12:55:17', '', 69, 'http://localhost/customwp/?post_type=acf-field&#038;p=88', 7, 'acf-field', '', 0),
(89, 1, '2022-07-02 12:55:17', '2022-07-02 12:55:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Work Stress', 'work_stress', 'publish', 'closed', 'closed', '', 'field_62c03f9e9fcad', '', '', '2022-07-02 12:55:17', '2022-07-02 12:55:17', '', 69, 'http://localhost/customwp/?post_type=acf-field&p=89', 12, 'acf-field', '', 0),
(90, 1, '2022-07-02 12:55:17', '2022-07-02 12:55:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Work Stress Text', 'work_stress_text', 'publish', 'closed', 'closed', '', 'field_62c03ffb9fcae', '', '', '2022-07-02 12:55:17', '2022-07-02 12:55:17', '', 69, 'http://localhost/customwp/?post_type=acf-field&p=90', 13, 'acf-field', '', 0),
(91, 1, '2022-07-02 12:55:17', '2022-07-02 12:55:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sleeping Disorder', 'sleeping_disorder', 'publish', 'closed', 'closed', '', 'field_62c0400d9fcaf', '', '', '2022-07-02 12:55:17', '2022-07-02 12:55:17', '', 69, 'http://localhost/customwp/?post_type=acf-field&p=91', 14, 'acf-field', '', 0),
(92, 1, '2022-07-02 12:55:17', '2022-07-02 12:55:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sleeping Disorder Text', 'sleeping_disorder_text', 'publish', 'closed', 'closed', '', 'field_62c040179fcb0', '', '', '2022-07-02 12:55:17', '2022-07-02 12:55:17', '', 69, 'http://localhost/customwp/?post_type=acf-field&p=92', 15, 'acf-field', '', 0),
(93, 1, '2022-07-02 12:55:17', '2022-07-02 12:55:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Eating Disorder', 'eating_disorder', 'publish', 'closed', 'closed', '', 'field_62c040259fcb1', '', '', '2022-07-02 12:55:17', '2022-07-02 12:55:17', '', 69, 'http://localhost/customwp/?post_type=acf-field&p=93', 16, 'acf-field', '', 0),
(94, 1, '2022-07-02 12:55:17', '2022-07-02 12:55:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Eating Disorder Text', 'eating_disorder_text', 'publish', 'closed', 'closed', '', 'field_62c0402a9fcb2', '', '', '2022-07-02 12:55:17', '2022-07-02 12:55:17', '', 69, 'http://localhost/customwp/?post_type=acf-field&p=94', 17, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(95, 1, '2022-07-02 13:29:37', '2022-07-02 13:29:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-07-02 13:29:37', '2022-07-02 13:29:37', '', 13, 'http://localhost/customwp/?p=95', 0, 'revision', '', 0),
(96, 1, '2022-07-02 13:32:53', '2022-07-02 13:32:53', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"home-template.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Happy Clients', 'happy-clients', 'publish', 'closed', 'closed', '', 'group_62c0485bb7a4e', '', '', '2022-07-02 13:37:17', '2022-07-02 13:37:17', '', 0, 'http://localhost/customwp/?post_type=acf-field-group&#038;p=96', 0, 'acf-field-group', '', 0),
(97, 1, '2022-07-02 13:32:53', '2022-07-02 13:32:53', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Client Heading', 'client_heading', 'publish', 'closed', 'closed', '', 'field_62c0486819590', '', '', '2022-07-02 13:32:53', '2022-07-02 13:32:53', '', 96, 'http://localhost/customwp/?post_type=acf-field&p=97', 0, 'acf-field', '', 0),
(98, 1, '2022-07-02 13:32:53', '2022-07-02 13:32:53', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Testimonial Img', 'testimonial_img', 'publish', 'closed', 'closed', '', 'field_62c0489f19591', '', '', '2022-07-02 13:32:53', '2022-07-02 13:32:53', '', 96, 'http://localhost/customwp/?post_type=acf-field&p=98', 1, 'acf-field', '', 0),
(99, 1, '2022-07-02 13:32:53', '2022-07-02 13:32:53', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Testimonial Title', 'testimonial_title', 'publish', 'closed', 'closed', '', 'field_62c048b619592', '', '', '2022-07-02 13:32:53', '2022-07-02 13:32:53', '', 96, 'http://localhost/customwp/?post_type=acf-field&p=99', 2, 'acf-field', '', 0),
(100, 1, '2022-07-02 13:32:53', '2022-07-02 13:32:53', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Testimonial Description', 'testimonial_description', 'publish', 'closed', 'closed', '', 'field_62c048bf19593', '', '', '2022-07-02 13:32:53', '2022-07-02 13:32:53', '', 96, 'http://localhost/customwp/?post_type=acf-field&p=100', 3, 'acf-field', '', 0),
(101, 1, '2022-07-02 13:32:53', '2022-07-02 13:32:53', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Testimonial title2', 'testimonial_title2', 'publish', 'closed', 'closed', '', 'field_62c048df19594', '', '', '2022-07-02 13:32:53', '2022-07-02 13:32:53', '', 96, 'http://localhost/customwp/?post_type=acf-field&p=101', 4, 'acf-field', '', 0),
(102, 1, '2022-07-02 13:32:53', '2022-07-02 13:32:53', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Testimonial img2', 'testimonial_img2', 'publish', 'closed', 'closed', '', 'field_62c048eb19595', '', '', '2022-07-02 13:37:17', '2022-07-02 13:37:17', '', 96, 'http://localhost/customwp/?post_type=acf-field&#038;p=102', 5, 'acf-field', '', 0),
(103, 1, '2022-07-02 13:32:53', '2022-07-02 13:32:53', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Testimonial Des2', 'testimonial_des2', 'publish', 'closed', 'closed', '', 'field_62c048f319596', '', '', '2022-07-02 13:32:53', '2022-07-02 13:32:53', '', 96, 'http://localhost/customwp/?post_type=acf-field&p=103', 6, 'acf-field', '', 0),
(104, 1, '2022-07-02 13:37:02', '2022-07-02 13:37:02', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-07-02 13:37:02', '2022-07-02 13:37:02', '', 13, 'http://localhost/customwp/?p=104', 0, 'revision', '', 0),
(105, 1, '2022-07-02 13:37:30', '2022-07-02 13:37:30', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-07-02 13:37:30', '2022-07-02 13:37:30', '', 13, 'http://localhost/customwp/?p=105', 0, 'revision', '', 0),
(107, 1, '2022-07-02 13:53:10', '2022-07-02 13:53:10', '', 'Home', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-07-02 13:53:10', '2022-07-02 13:53:10', '', 13, 'http://localhost/customwp/?p=107', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'test', 'test', 0),
(4, 'Counseling', 'counseling', 0),
(5, 'For Clients', 'for-clients', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0),
(8, 2, 0),
(9, 2, 0),
(10, 2, 0),
(12, 3, 0),
(18, 2, 0),
(20, 4, 0),
(21, 4, 0),
(22, 4, 0),
(23, 5, 0),
(24, 5, 0),
(25, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
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
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'wp_theme', '', 0, 1),
(4, 4, 'nav_menu', '', 0, 3),
(5, 5, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
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
(16, 1, 'session_tokens', 'a:2:{s:64:\"d44fb681c10a25797f2d206e0f649e9980ec89b5e7905a98583c806a4e2aa67d\";a:4:{s:10:\"expiration\";i:1656858921;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\";s:5:\"login\";i:1656686121;}s:64:\"bd4ed530a49111e9f57f20a5de1321997ccfd3118b50dc9ada38676618b28cce\";a:4:{s:10:\"expiration\";i:1656935263;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\";s:5:\"login\";i:1656762463;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'closedpostboxes_page', 'a:3:{i:0;s:23:\"acf-group_62bf357cba35e\";i:1;s:23:\"acf-group_62bf3c0d69e7b\";i:2;s:23:\"acf-group_62bf42065dea5\";}'),
(21, 1, 'metaboxhidden_page', 'a:0:{}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1656690229'),
(24, 1, 'nav_menu_recently_edited', '5'),
(25, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:131:\"acf-group_62bf357cba35e,acf-group_62bf3c0d69e7b,acf-group_62bf42065dea5,revisionsdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(26, 1, 'screen_layout_page', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
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
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BwydsCp3Qfuda7YOR6MM6ryw38p/vY/', 'admin', 'kumavatsapna21@gmail.com', 'http://localhost/customwp', '2022-07-01 14:35:13', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=772;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=985;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
