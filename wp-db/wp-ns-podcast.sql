-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-09-2022 a las 12:22:51
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wp-ns-podcast`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
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
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wp-ns-podcast', 'yes'),
(2, 'home', 'http://localhost/wp-ns-podcast', 'yes'),
(3, 'blogname', 'NicaSource Podcast', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'elvisgomezfloegel@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:111:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:39:\"cpt-podcast/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"cpt-podcast/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"cpt-podcast/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"cpt-podcast/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"cpt-podcast/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"cpt-podcast/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"cpt-podcast/([^/]+)/embed/?$\";s:44:\"index.php?cpt-podcast=$matches[1]&embed=true\";s:32:\"cpt-podcast/([^/]+)/trackback/?$\";s:38:\"index.php?cpt-podcast=$matches[1]&tb=1\";s:40:\"cpt-podcast/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?cpt-podcast=$matches[1]&paged=$matches[2]\";s:47:\"cpt-podcast/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?cpt-podcast=$matches[1]&cpage=$matches[2]\";s:36:\"cpt-podcast/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?cpt-podcast=$matches[1]&page=$matches[2]\";s:28:\"cpt-podcast/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"cpt-podcast/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"cpt-podcast/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"cpt-podcast/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"cpt-podcast/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"cpt-podcast/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:57:\"acf-content-analysis-for-yoast-seo/yoast-acf-analysis.php\";i:1;s:41:\"acf-to-rest-api/class-acf-to-rest-api.php\";i:2;s:30:\"advanced-custom-fields/acf.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:41:\"navz-photo-gallery/navz-photo-gallery.php\";i:5;s:37:\"post-types-order/post-types-order.php\";i:6;s:24:\"wordpress-seo/wp-seo.php\";i:7;s:41:\"wp-rest-yoast-meta/wp-rest-yoast-meta.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'wp-ns-podcast', 'yes'),
(41, 'stylesheet', 'wp-ns-podcast', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
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
(79, 'uninstall_plugins', 'a:1:{s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1677786703', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:9:{i:1662461519;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1662493915;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1662493919;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1662493920;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1662493958;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1662493962;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1662497105;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1662925916;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(124, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1662242699;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(127, 'recovery_keys', 'a:1:{s:22:\"PkwJIO5swGZ1kiCZGXsk1r\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BkYngyhXkhBnqrjGeySbTaEZShDpSU.\";s:10:\"created_at\";i:1662445125;}}', 'yes'),
(128, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:19:\"bad_response_source\";a:1:{i:0;s:55:\"It looks like the response did not come from this site.\";}}', 'yes'),
(129, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.0.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.0.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.2\";s:7:\"version\";s:5:\"6.0.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1662450749;s:15:\"version_checked\";s:5:\"6.0.2\";s:12:\"translations\";a:0:{}}', 'no'),
(134, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1662445261;s:7:\"checked\";a:1:{s:13:\"wp-ns-podcast\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(135, '_site_transient_timeout_browser_b20f96e5878b0a47ff8626c8f757e35b', '1662839559', 'no'),
(136, '_site_transient_browser_b20f96e5878b0a47ff8626c8f757e35b', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"104.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(137, '_site_transient_timeout_php_check_e0da9a46ec9b74424e3af84a2a13de68', '1662839560', 'no'),
(138, '_site_transient_php_check_e0da9a46ec9b74424e3af84a2a13de68', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(146, 'can_compress_scripts', '1', 'no'),
(155, 'finished_updating_comment_type', '1', 'yes'),
(160, 'recently_activated', 'a:0:{}', 'yes'),
(180, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:6:\"19.6.1\";}', 'yes'),
(182, 'wpseo', 'a:88:{s:8:\"tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:26:\"permalink_settings_changed\";s:29:\"indexables_indexing_completed\";b:1;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:6:\"19.6.1\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1662237909;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:12:\"/%postname%/\";s:8:\"home_url\";s:30:\"http://localhost/wp-ns-podcast\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:19:\"importing_completed\";a:0:{}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:1;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1662237976;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;}', 'yes'),
(184, 'wpseo_titles', 'a:106:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% Archives\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% Archives\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}', 'yes'),
(185, 'wpseo_social', 'a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}}', 'yes'),
(207, 'wp_rest_yoast_meta_version', '2021.1.2', 'no'),
(234, 'current_theme', 'NSP', 'yes'),
(235, 'theme_mods_wp-ns-podcast', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(236, 'theme_switched', '', 'yes'),
(237, 'acf_version', '5.12.3', 'yes'),
(247, 'recovery_mode_email_last_sent', '1662445123', 'yes'),
(258, 'generalid', 'b-header', 'yes'),
(280, 'category_children', 'a:0:{}', 'yes'),
(281, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(319, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.6.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1662265825;s:7:\"version\";s:5:\"5.6.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(355, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1662445262;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:10:{s:57:\"acf-content-analysis-for-yoast-seo/yoast-acf-analysis.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:48:\"w.org/plugins/acf-content-analysis-for-yoast-seo\";s:4:\"slug\";s:34:\"acf-content-analysis-for-yoast-seo\";s:6:\"plugin\";s:57:\"acf-content-analysis-for-yoast-seo/yoast-acf-analysis.php\";s:11:\"new_version\";s:5:\"3.0.1\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/acf-content-analysis-for-yoast-seo/\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/plugin/acf-content-analysis-for-yoast-seo.3.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:87:\"https://ps.w.org/acf-content-analysis-for-yoast-seo/assets/icon-256x256.png?rev=1717503\";s:2:\"1x\";s:87:\"https://ps.w.org/acf-content-analysis-for-yoast-seo/assets/icon-128x128.png?rev=1717503\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:90:\"https://ps.w.org/acf-content-analysis-for-yoast-seo/assets/banner-1544x500.png?rev=1717503\";s:2:\"1x\";s:89:\"https://ps.w.org/acf-content-analysis-for-yoast-seo/assets/banner-772x250.png?rev=1717503\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}s:41:\"navz-photo-gallery/navz-photo-gallery.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/navz-photo-gallery\";s:4:\"slug\";s:18:\"navz-photo-gallery\";s:6:\"plugin\";s:41:\"navz-photo-gallery/navz-photo-gallery.php\";s:11:\"new_version\";s:5:\"1.7.9\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/navz-photo-gallery/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/navz-photo-gallery.1.7.9.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/navz-photo-gallery/assets/icon-128x128.png?rev=2607741\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/navz-photo-gallery/assets/banner-772x250.png?rev=2607741\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"4.7.0\";}s:41:\"acf-to-rest-api/class-acf-to-rest-api.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/acf-to-rest-api\";s:4:\"slug\";s:15:\"acf-to-rest-api\";s:6:\"plugin\";s:41:\"acf-to-rest-api/class-acf-to-rest-api.php\";s:11:\"new_version\";s:5:\"3.3.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/acf-to-rest-api/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/acf-to-rest-api.3.3.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/acf-to-rest-api/assets/icon-256x256.jpg?rev=1752896\";s:2:\"1x\";s:68:\"https://ps.w.org/acf-to-rest-api/assets/icon-128x128.jpg?rev=1752896\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/acf-to-rest-api/assets/banner-1544x500.jpg?rev=1752896\";s:2:\"1x\";s:70:\"https://ps.w.org/acf-to-rest-api/assets/banner-772x250.jpg?rev=1752896\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.12.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.12.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.6.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:37:\"post-types-order/post-types-order.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:30:\"w.org/plugins/post-types-order\";s:4:\"slug\";s:16:\"post-types-order\";s:6:\"plugin\";s:37:\"post-types-order/post-types-order.php\";s:11:\"new_version\";s:7:\"1.9.9.1\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/post-types-order/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/post-types-order.1.9.9.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/post-types-order/assets/icon-128x128.png?rev=1226428\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/post-types-order/assets/banner-1544x500.png?rev=1675574\";s:2:\"1x\";s:71:\"https://ps.w.org/post-types-order/assets/banner-772x250.png?rev=1429949\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"2.8\";}s:41:\"wp-rest-yoast-meta/wp-rest-yoast-meta.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/wp-rest-yoast-meta\";s:4:\"slug\";s:18:\"wp-rest-yoast-meta\";s:6:\"plugin\";s:41:\"wp-rest-yoast-meta/wp-rest-yoast-meta.php\";s:11:\"new_version\";s:8:\"2021.1.2\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wp-rest-yoast-meta/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/wp-rest-yoast-meta.2021.1.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wp-rest-yoast-meta/assets/icon-256x256.png?rev=2045273\";s:2:\"1x\";s:63:\"https://ps.w.org/wp-rest-yoast-meta/assets/icon.svg?rev=2045273\";s:3:\"svg\";s:63:\"https://ps.w.org/wp-rest-yoast-meta/assets/icon.svg?rev=2045273\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/wp-rest-yoast-meta/assets/banner-1544x500.png?rev=2045273\";s:2:\"1x\";s:73:\"https://ps.w.org/wp-rest-yoast-meta/assets/banner-772x250.png?rev=2045273\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:6:\"19.6.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wordpress-seo.19.6.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=2643727\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"5.9\";}}s:7:\"checked\";a:10:{s:57:\"acf-content-analysis-for-yoast-seo/yoast-acf-analysis.php\";s:5:\"3.0.1\";s:41:\"navz-photo-gallery/navz-photo-gallery.php\";s:5:\"1.7.9\";s:41:\"acf-to-rest-api/class-acf-to-rest-api.php\";s:5:\"3.3.3\";s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.12.3\";s:19:\"akismet/akismet.php\";s:3:\"5.0\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.6.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:37:\"post-types-order/post-types-order.php\";s:7:\"1.9.9.1\";s:41:\"wp-rest-yoast-meta/wp-rest-yoast-meta.php\";s:8:\"2021.1.2\";s:24:\"wordpress-seo/wp-seo.php\";s:6:\"19.6.1\";}}', 'no'),
(356, 'cpto_options', 'a:7:{s:23:\"show_reorder_interfaces\";a:5:{s:4:\"post\";s:4:\"show\";s:10:\"attachment\";s:4:\"show\";s:8:\"wp_block\";s:4:\"show\";s:13:\"wp_navigation\";s:4:\"show\";s:11:\"cpt-podcast\";s:4:\"show\";}s:8:\"autosort\";i:1;s:9:\"adminsort\";i:1;s:18:\"use_query_ASC_DESC\";s:0:\"\";s:17:\"archive_drag_drop\";i:1;s:10:\"capability\";s:14:\"manage_options\";s:21:\"navigation_sort_apply\";i:1;}', 'yes'),
(357, 'CPT_configured', 'TRUE', 'yes'),
(358, '_transient_timeout_yoast_meta_20', '1664861807', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(359, '_transient_yoast_meta_20', 'a:3:{s:4:\"meta\";a:9:{i:0;a:2:{s:4:\"name\";s:6:\"robots\";s:7:\"content\";s:78:\"noindex, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1\";}i:1;a:2:{s:8:\"property\";s:9:\"og:locale\";s:7:\"content\";s:5:\"en_US\";}i:2;a:2:{s:8:\"property\";s:7:\"og:type\";s:7:\"content\";s:7:\"article\";}i:3;a:2:{s:8:\"property\";s:8:\"og:title\";s:7:\"content\";s:25:\"Home - NicaSource Podcast\";}i:4;a:2:{s:8:\"property\";s:6:\"og:url\";s:7:\"content\";s:36:\"http://localhost/wp-ns-podcast/home/\";}i:5;a:2:{s:8:\"property\";s:12:\"og:site_name\";s:7:\"content\";s:18:\"NicaSource Podcast\";}i:6;a:2:{s:8:\"property\";s:21:\"article:modified_time\";s:7:\"content\";s:25:\"2022-09-04T05:01:16+00:00\";}i:7;a:2:{s:4:\"name\";s:12:\"twitter:card\";s:7:\"content\";s:19:\"summary_large_image\";}i:8;a:2:{s:4:\"name\";s:6:\"robots\";s:7:\"content\";s:17:\"noindex, nofollow\";}}s:5:\"title\";s:25:\"Home - NicaSource Podcast\";s:7:\"json_ld\";a:1:{i:0;a:2:{s:8:\"@context\";s:18:\"https://schema.org\";s:6:\"@graph\";a:3:{i:0;a:10:{s:5:\"@type\";s:7:\"WebPage\";s:3:\"@id\";s:36:\"http://localhost/wp-ns-podcast/home/\";s:3:\"url\";s:36:\"http://localhost/wp-ns-podcast/home/\";s:4:\"name\";s:25:\"Home - NicaSource Podcast\";s:8:\"isPartOf\";a:1:{s:3:\"@id\";s:39:\"http://localhost/wp-ns-podcast/#website\";}s:13:\"datePublished\";s:25:\"2022-09-04T03:21:11+00:00\";s:12:\"dateModified\";s:25:\"2022-09-04T05:01:16+00:00\";s:10:\"breadcrumb\";a:1:{s:3:\"@id\";s:47:\"http://localhost/wp-ns-podcast/home/#breadcrumb\";}s:10:\"inLanguage\";s:5:\"en-US\";s:15:\"potentialAction\";a:1:{i:0;a:2:{s:5:\"@type\";s:10:\"ReadAction\";s:6:\"target\";a:1:{i:0;s:36:\"http://localhost/wp-ns-podcast/home/\";}}}}i:1;a:3:{s:5:\"@type\";s:14:\"BreadcrumbList\";s:3:\"@id\";s:47:\"http://localhost/wp-ns-podcast/home/#breadcrumb\";s:15:\"itemListElement\";a:2:{i:0;a:4:{s:5:\"@type\";s:8:\"ListItem\";s:8:\"position\";i:1;s:4:\"name\";s:4:\"Home\";s:4:\"item\";s:31:\"http://localhost/wp-ns-podcast/\";}i:1;a:3:{s:5:\"@type\";s:8:\"ListItem\";s:8:\"position\";i:2;s:4:\"name\";s:4:\"Home\";}}}i:2;a:7:{s:5:\"@type\";s:7:\"WebSite\";s:3:\"@id\";s:39:\"http://localhost/wp-ns-podcast/#website\";s:3:\"url\";s:31:\"http://localhost/wp-ns-podcast/\";s:4:\"name\";s:18:\"NicaSource Podcast\";s:11:\"description\";s:27:\"Just another WordPress site\";s:15:\"potentialAction\";a:1:{i:0;a:3:{s:5:\"@type\";s:12:\"SearchAction\";s:6:\"target\";a:2:{s:5:\"@type\";s:10:\"EntryPoint\";s:11:\"urlTemplate\";s:54:\"http://localhost/wp-ns-podcast/?s={search_term_string}\";}s:11:\"query-input\";s:32:\"required name=search_term_string\";}}s:10:\"inLanguage\";s:5:\"en-US\";}}}}}', 'no'),
(378, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(379, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(397, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":6,\"critical\":0}', 'yes'),
(404, '_transient_timeout_wpseo_total_unindexed_posts', '1662531670', 'no'),
(405, '_transient_wpseo_total_unindexed_posts', '15', 'no'),
(406, '_transient_timeout_wpseo_total_unindexed_terms', '1662531673', 'no'),
(407, '_transient_wpseo_total_unindexed_terms', '1', 'no'),
(408, '_transient_timeout_wpseo_total_unindexed_post_type_archives', '1662531675', 'no'),
(409, '_transient_wpseo_total_unindexed_post_type_archives', '0', 'no'),
(410, '_transient_timeout_wpseo_total_unindexed_general_items', '1662531678', 'no'),
(411, '_transient_wpseo_total_unindexed_general_items', '0', 'no'),
(412, '_transient_timeout_wpseo_unindexed_post_link_count', '1662531708', 'no'),
(413, '_transient_wpseo_unindexed_post_link_count', '0', 'no'),
(414, '_transient_timeout_wpseo_unindexed_term_link_count', '1662531711', 'no'),
(415, '_transient_wpseo_unindexed_term_link_count', '0', 'no'),
(416, '_transient_timeout_yoast_meta_106', '1665037590', 'no'),
(417, '_transient_yoast_meta_106', 'a:3:{s:4:\"meta\";a:8:{i:0;a:2:{s:4:\"name\";s:6:\"robots\";s:7:\"content\";s:78:\"noindex, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1\";}i:1;a:2:{s:8:\"property\";s:9:\"og:locale\";s:7:\"content\";s:5:\"en_US\";}i:2;a:2:{s:8:\"property\";s:7:\"og:type\";s:7:\"content\";s:7:\"article\";}i:3;a:2:{s:8:\"property\";s:8:\"og:title\";s:7:\"content\";s:26:\"About - NicaSource Podcast\";}i:4;a:2:{s:8:\"property\";s:6:\"og:url\";s:7:\"content\";s:37:\"http://localhost/wp-ns-podcast/about/\";}i:5;a:2:{s:8:\"property\";s:12:\"og:site_name\";s:7:\"content\";s:18:\"NicaSource Podcast\";}i:6;a:2:{s:4:\"name\";s:12:\"twitter:card\";s:7:\"content\";s:19:\"summary_large_image\";}i:7;a:2:{s:4:\"name\";s:6:\"robots\";s:7:\"content\";s:17:\"noindex, nofollow\";}}s:5:\"title\";s:26:\"About - NicaSource Podcast\";s:7:\"json_ld\";a:1:{i:0;a:2:{s:8:\"@context\";s:18:\"https://schema.org\";s:6:\"@graph\";a:3:{i:0;a:10:{s:5:\"@type\";s:7:\"WebPage\";s:3:\"@id\";s:37:\"http://localhost/wp-ns-podcast/about/\";s:3:\"url\";s:37:\"http://localhost/wp-ns-podcast/about/\";s:4:\"name\";s:26:\"About - NicaSource Podcast\";s:8:\"isPartOf\";a:1:{s:3:\"@id\";s:39:\"http://localhost/wp-ns-podcast/#website\";}s:13:\"datePublished\";s:25:\"2022-09-06T06:24:01+00:00\";s:12:\"dateModified\";s:25:\"2022-09-06T06:24:01+00:00\";s:10:\"breadcrumb\";a:1:{s:3:\"@id\";s:48:\"http://localhost/wp-ns-podcast/about/#breadcrumb\";}s:10:\"inLanguage\";s:5:\"en-US\";s:15:\"potentialAction\";a:1:{i:0;a:2:{s:5:\"@type\";s:10:\"ReadAction\";s:6:\"target\";a:1:{i:0;s:37:\"http://localhost/wp-ns-podcast/about/\";}}}}i:1;a:3:{s:5:\"@type\";s:14:\"BreadcrumbList\";s:3:\"@id\";s:48:\"http://localhost/wp-ns-podcast/about/#breadcrumb\";s:15:\"itemListElement\";a:2:{i:0;a:4:{s:5:\"@type\";s:8:\"ListItem\";s:8:\"position\";i:1;s:4:\"name\";s:4:\"Home\";s:4:\"item\";s:31:\"http://localhost/wp-ns-podcast/\";}i:1;a:3:{s:5:\"@type\";s:8:\"ListItem\";s:8:\"position\";i:2;s:4:\"name\";s:5:\"About\";}}}i:2;a:7:{s:5:\"@type\";s:7:\"WebSite\";s:3:\"@id\";s:39:\"http://localhost/wp-ns-podcast/#website\";s:3:\"url\";s:31:\"http://localhost/wp-ns-podcast/\";s:4:\"name\";s:18:\"NicaSource Podcast\";s:11:\"description\";s:27:\"Just another WordPress site\";s:15:\"potentialAction\";a:1:{i:0;a:3:{s:5:\"@type\";s:12:\"SearchAction\";s:6:\"target\";a:2:{s:5:\"@type\";s:10:\"EntryPoint\";s:11:\"urlTemplate\";s:54:\"http://localhost/wp-ns-podcast/?s={search_term_string}\";}s:11:\"query-input\";s:32:\"required name=search_term_string\";}}s:10:\"inLanguage\";s:5:\"en-US\";}}}}}', 'no'),
(423, '_transient_timeout_yoast_meta_99', '1665041861', 'no'),
(424, '_transient_yoast_meta_99', 'a:3:{s:4:\"meta\";a:9:{i:0;a:2:{s:4:\"name\";s:6:\"robots\";s:7:\"content\";s:78:\"noindex, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1\";}i:1;a:2:{s:8:\"property\";s:9:\"og:locale\";s:7:\"content\";s:5:\"en_US\";}i:2;a:2:{s:8:\"property\";s:7:\"og:type\";s:7:\"content\";s:7:\"article\";}i:3;a:2:{s:8:\"property\";s:8:\"og:title\";s:7:\"content\";s:30:\"Episode 3 - NicaSource Podcast\";}i:4;a:2:{s:8:\"property\";s:6:\"og:url\";s:7:\"content\";s:55:\"http://localhost/wp-ns-podcast/cpt-podcast/episode-2-2/\";}i:5;a:2:{s:8:\"property\";s:12:\"og:site_name\";s:7:\"content\";s:18:\"NicaSource Podcast\";}i:6;a:2:{s:8:\"property\";s:21:\"article:modified_time\";s:7:\"content\";s:25:\"2022-09-06T07:37:28+00:00\";}i:7;a:2:{s:4:\"name\";s:12:\"twitter:card\";s:7:\"content\";s:19:\"summary_large_image\";}i:8;a:2:{s:4:\"name\";s:6:\"robots\";s:7:\"content\";s:17:\"noindex, nofollow\";}}s:5:\"title\";s:30:\"Episode 3 - NicaSource Podcast\";s:7:\"json_ld\";a:1:{i:0;a:2:{s:8:\"@context\";s:18:\"https://schema.org\";s:6:\"@graph\";a:3:{i:0;a:10:{s:5:\"@type\";s:7:\"WebPage\";s:3:\"@id\";s:55:\"http://localhost/wp-ns-podcast/cpt-podcast/episode-2-2/\";s:3:\"url\";s:55:\"http://localhost/wp-ns-podcast/cpt-podcast/episode-2-2/\";s:4:\"name\";s:30:\"Episode 3 - NicaSource Podcast\";s:8:\"isPartOf\";a:1:{s:3:\"@id\";s:39:\"http://localhost/wp-ns-podcast/#website\";}s:13:\"datePublished\";s:25:\"2022-09-04T05:22:19+00:00\";s:12:\"dateModified\";s:25:\"2022-09-06T07:37:28+00:00\";s:10:\"breadcrumb\";a:1:{s:3:\"@id\";s:66:\"http://localhost/wp-ns-podcast/cpt-podcast/episode-2-2/#breadcrumb\";}s:10:\"inLanguage\";s:5:\"en-US\";s:15:\"potentialAction\";a:1:{i:0;a:2:{s:5:\"@type\";s:10:\"ReadAction\";s:6:\"target\";a:1:{i:0;s:55:\"http://localhost/wp-ns-podcast/cpt-podcast/episode-2-2/\";}}}}i:1;a:3:{s:5:\"@type\";s:14:\"BreadcrumbList\";s:3:\"@id\";s:66:\"http://localhost/wp-ns-podcast/cpt-podcast/episode-2-2/#breadcrumb\";s:15:\"itemListElement\";a:2:{i:0;a:4:{s:5:\"@type\";s:8:\"ListItem\";s:8:\"position\";i:1;s:4:\"name\";s:4:\"Home\";s:4:\"item\";s:31:\"http://localhost/wp-ns-podcast/\";}i:1;a:3:{s:5:\"@type\";s:8:\"ListItem\";s:8:\"position\";i:2;s:4:\"name\";s:9:\"Episode 3\";}}}i:2;a:7:{s:5:\"@type\";s:7:\"WebSite\";s:3:\"@id\";s:39:\"http://localhost/wp-ns-podcast/#website\";s:3:\"url\";s:31:\"http://localhost/wp-ns-podcast/\";s:4:\"name\";s:18:\"NicaSource Podcast\";s:11:\"description\";s:27:\"Just another WordPress site\";s:15:\"potentialAction\";a:1:{i:0;a:3:{s:5:\"@type\";s:12:\"SearchAction\";s:6:\"target\";a:2:{s:5:\"@type\";s:10:\"EntryPoint\";s:11:\"urlTemplate\";s:54:\"http://localhost/wp-ns-podcast/?s={search_term_string}\";}s:11:\"query-input\";s:32:\"required name=search_term_string\";}}s:10:\"inLanguage\";s:5:\"en-US\";}}}}}', 'no'),
(425, '_transient_timeout_yoast_meta_97', '1665041861', 'no'),
(426, '_transient_yoast_meta_97', 'a:3:{s:4:\"meta\";a:9:{i:0;a:2:{s:4:\"name\";s:6:\"robots\";s:7:\"content\";s:78:\"noindex, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1\";}i:1;a:2:{s:8:\"property\";s:9:\"og:locale\";s:7:\"content\";s:5:\"en_US\";}i:2;a:2:{s:8:\"property\";s:7:\"og:type\";s:7:\"content\";s:7:\"article\";}i:3;a:2:{s:8:\"property\";s:8:\"og:title\";s:7:\"content\";s:30:\"Episode 2 - NicaSource Podcast\";}i:4;a:2:{s:8:\"property\";s:6:\"og:url\";s:7:\"content\";s:53:\"http://localhost/wp-ns-podcast/cpt-podcast/episode-2/\";}i:5;a:2:{s:8:\"property\";s:12:\"og:site_name\";s:7:\"content\";s:18:\"NicaSource Podcast\";}i:6;a:2:{s:8:\"property\";s:21:\"article:modified_time\";s:7:\"content\";s:25:\"2022-09-06T07:36:24+00:00\";}i:7;a:2:{s:4:\"name\";s:12:\"twitter:card\";s:7:\"content\";s:19:\"summary_large_image\";}i:8;a:2:{s:4:\"name\";s:6:\"robots\";s:7:\"content\";s:17:\"noindex, nofollow\";}}s:5:\"title\";s:30:\"Episode 2 - NicaSource Podcast\";s:7:\"json_ld\";a:1:{i:0;a:2:{s:8:\"@context\";s:18:\"https://schema.org\";s:6:\"@graph\";a:3:{i:0;a:10:{s:5:\"@type\";s:7:\"WebPage\";s:3:\"@id\";s:53:\"http://localhost/wp-ns-podcast/cpt-podcast/episode-2/\";s:3:\"url\";s:53:\"http://localhost/wp-ns-podcast/cpt-podcast/episode-2/\";s:4:\"name\";s:30:\"Episode 2 - NicaSource Podcast\";s:8:\"isPartOf\";a:1:{s:3:\"@id\";s:39:\"http://localhost/wp-ns-podcast/#website\";}s:13:\"datePublished\";s:25:\"2022-09-04T05:20:55+00:00\";s:12:\"dateModified\";s:25:\"2022-09-06T07:36:24+00:00\";s:10:\"breadcrumb\";a:1:{s:3:\"@id\";s:64:\"http://localhost/wp-ns-podcast/cpt-podcast/episode-2/#breadcrumb\";}s:10:\"inLanguage\";s:5:\"en-US\";s:15:\"potentialAction\";a:1:{i:0;a:2:{s:5:\"@type\";s:10:\"ReadAction\";s:6:\"target\";a:1:{i:0;s:53:\"http://localhost/wp-ns-podcast/cpt-podcast/episode-2/\";}}}}i:1;a:3:{s:5:\"@type\";s:14:\"BreadcrumbList\";s:3:\"@id\";s:64:\"http://localhost/wp-ns-podcast/cpt-podcast/episode-2/#breadcrumb\";s:15:\"itemListElement\";a:2:{i:0;a:4:{s:5:\"@type\";s:8:\"ListItem\";s:8:\"position\";i:1;s:4:\"name\";s:4:\"Home\";s:4:\"item\";s:31:\"http://localhost/wp-ns-podcast/\";}i:1;a:3:{s:5:\"@type\";s:8:\"ListItem\";s:8:\"position\";i:2;s:4:\"name\";s:9:\"Episode 2\";}}}i:2;a:7:{s:5:\"@type\";s:7:\"WebSite\";s:3:\"@id\";s:39:\"http://localhost/wp-ns-podcast/#website\";s:3:\"url\";s:31:\"http://localhost/wp-ns-podcast/\";s:4:\"name\";s:18:\"NicaSource Podcast\";s:11:\"description\";s:27:\"Just another WordPress site\";s:15:\"potentialAction\";a:1:{i:0;a:3:{s:5:\"@type\";s:12:\"SearchAction\";s:6:\"target\";a:2:{s:5:\"@type\";s:10:\"EntryPoint\";s:11:\"urlTemplate\";s:54:\"http://localhost/wp-ns-podcast/?s={search_term_string}\";}s:11:\"query-input\";s:32:\"required name=search_term_string\";}}s:10:\"inLanguage\";s:5:\"en-US\";}}}}}', 'no'),
(427, '_transient_timeout_yoast_meta_88', '1665041861', 'no'),
(428, '_transient_yoast_meta_88', 'a:3:{s:4:\"meta\";a:9:{i:0;a:2:{s:4:\"name\";s:6:\"robots\";s:7:\"content\";s:78:\"noindex, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1\";}i:1;a:2:{s:8:\"property\";s:9:\"og:locale\";s:7:\"content\";s:5:\"en_US\";}i:2;a:2:{s:8:\"property\";s:7:\"og:type\";s:7:\"content\";s:7:\"article\";}i:3;a:2:{s:8:\"property\";s:8:\"og:title\";s:7:\"content\";s:30:\"Episode 1 - NicaSource Podcast\";}i:4;a:2:{s:8:\"property\";s:6:\"og:url\";s:7:\"content\";s:58:\"http://localhost/wp-ns-podcast/cpt-podcast/latest-podcast/\";}i:5;a:2:{s:8:\"property\";s:12:\"og:site_name\";s:7:\"content\";s:18:\"NicaSource Podcast\";}i:6;a:2:{s:8:\"property\";s:21:\"article:modified_time\";s:7:\"content\";s:25:\"2022-09-06T07:35:19+00:00\";}i:7;a:2:{s:4:\"name\";s:12:\"twitter:card\";s:7:\"content\";s:19:\"summary_large_image\";}i:8;a:2:{s:4:\"name\";s:6:\"robots\";s:7:\"content\";s:17:\"noindex, nofollow\";}}s:5:\"title\";s:30:\"Episode 1 - NicaSource Podcast\";s:7:\"json_ld\";a:1:{i:0;a:2:{s:8:\"@context\";s:18:\"https://schema.org\";s:6:\"@graph\";a:3:{i:0;a:10:{s:5:\"@type\";s:7:\"WebPage\";s:3:\"@id\";s:58:\"http://localhost/wp-ns-podcast/cpt-podcast/latest-podcast/\";s:3:\"url\";s:58:\"http://localhost/wp-ns-podcast/cpt-podcast/latest-podcast/\";s:4:\"name\";s:30:\"Episode 1 - NicaSource Podcast\";s:8:\"isPartOf\";a:1:{s:3:\"@id\";s:39:\"http://localhost/wp-ns-podcast/#website\";}s:13:\"datePublished\";s:25:\"2022-09-04T05:05:31+00:00\";s:12:\"dateModified\";s:25:\"2022-09-06T07:35:19+00:00\";s:10:\"breadcrumb\";a:1:{s:3:\"@id\";s:69:\"http://localhost/wp-ns-podcast/cpt-podcast/latest-podcast/#breadcrumb\";}s:10:\"inLanguage\";s:5:\"en-US\";s:15:\"potentialAction\";a:1:{i:0;a:2:{s:5:\"@type\";s:10:\"ReadAction\";s:6:\"target\";a:1:{i:0;s:58:\"http://localhost/wp-ns-podcast/cpt-podcast/latest-podcast/\";}}}}i:1;a:3:{s:5:\"@type\";s:14:\"BreadcrumbList\";s:3:\"@id\";s:69:\"http://localhost/wp-ns-podcast/cpt-podcast/latest-podcast/#breadcrumb\";s:15:\"itemListElement\";a:2:{i:0;a:4:{s:5:\"@type\";s:8:\"ListItem\";s:8:\"position\";i:1;s:4:\"name\";s:4:\"Home\";s:4:\"item\";s:31:\"http://localhost/wp-ns-podcast/\";}i:1;a:3:{s:5:\"@type\";s:8:\"ListItem\";s:8:\"position\";i:2;s:4:\"name\";s:9:\"Episode 1\";}}}i:2;a:7:{s:5:\"@type\";s:7:\"WebSite\";s:3:\"@id\";s:39:\"http://localhost/wp-ns-podcast/#website\";s:3:\"url\";s:31:\"http://localhost/wp-ns-podcast/\";s:4:\"name\";s:18:\"NicaSource Podcast\";s:11:\"description\";s:27:\"Just another WordPress site\";s:15:\"potentialAction\";a:1:{i:0;a:3:{s:5:\"@type\";s:12:\"SearchAction\";s:6:\"target\";a:2:{s:5:\"@type\";s:10:\"EntryPoint\";s:11:\"urlTemplate\";s:54:\"http://localhost/wp-ns-podcast/?s={search_term_string}\";}s:11:\"query-input\";s:32:\"required name=search_term_string\";}}s:10:\"inLanguage\";s:5:\"en-US\";}}}}}', 'no'),
(431, '_site_transient_timeout_theme_roots', '1662452551', 'no'),
(432, '_site_transient_theme_roots', 'a:1:{s:13:\"wp-ns-podcast\";s:7:\"/themes\";}', 'no'),
(437, '_transient_timeout_yoast_meta_17', '1665044211', 'no'),
(438, '_transient_yoast_meta_17', 'a:3:{s:4:\"meta\";a:13:{i:0;a:2:{s:4:\"name\";s:6:\"robots\";s:7:\"content\";s:78:\"noindex, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1\";}i:1;a:2:{s:8:\"property\";s:9:\"og:locale\";s:7:\"content\";s:5:\"en_US\";}i:2;a:2:{s:8:\"property\";s:7:\"og:type\";s:7:\"content\";s:7:\"article\";}i:3;a:2:{s:8:\"property\";s:8:\"og:title\";s:7:\"content\";s:25:\"Blog - NicaSource Podcast\";}i:4;a:2:{s:8:\"property\";s:6:\"og:url\";s:7:\"content\";s:36:\"http://localhost/wp-ns-podcast/blog/\";}i:5;a:2:{s:8:\"property\";s:12:\"og:site_name\";s:7:\"content\";s:18:\"NicaSource Podcast\";}i:6;a:2:{s:8:\"property\";s:22:\"article:published_time\";s:7:\"content\";s:25:\"2022-09-04T03:02:19+00:00\";}i:7;a:2:{s:8:\"property\";s:21:\"article:modified_time\";s:7:\"content\";s:25:\"2022-09-06T08:16:31+00:00\";}i:8;a:2:{s:4:\"name\";s:6:\"author\";s:7:\"content\";s:5:\"nspod\";}i:9;a:2:{s:4:\"name\";s:12:\"twitter:card\";s:7:\"content\";s:19:\"summary_large_image\";}i:10;a:2:{s:4:\"name\";s:14:\"twitter:label1\";s:7:\"content\";s:10:\"Written by\";}i:11;a:2:{s:4:\"name\";s:13:\"twitter:data1\";s:7:\"content\";s:5:\"nspod\";}i:12;a:2:{s:4:\"name\";s:6:\"robots\";s:7:\"content\";s:17:\"noindex, nofollow\";}}s:5:\"title\";s:25:\"Blog - NicaSource Podcast\";s:7:\"json_ld\";a:1:{i:0;a:2:{s:8:\"@context\";s:18:\"https://schema.org\";s:6:\"@graph\";a:4:{i:0;a:11:{s:5:\"@type\";s:7:\"WebPage\";s:3:\"@id\";s:36:\"http://localhost/wp-ns-podcast/blog/\";s:3:\"url\";s:36:\"http://localhost/wp-ns-podcast/blog/\";s:4:\"name\";s:25:\"Blog - NicaSource Podcast\";s:8:\"isPartOf\";a:1:{s:3:\"@id\";s:39:\"http://localhost/wp-ns-podcast/#website\";}s:13:\"datePublished\";s:25:\"2022-09-04T03:02:19+00:00\";s:12:\"dateModified\";s:25:\"2022-09-06T08:16:31+00:00\";s:6:\"author\";a:1:{s:3:\"@id\";s:79:\"http://localhost/wp-ns-podcast/#/schema/person/5f98b6d34c854758dd87ccb4c3cf1dbf\";}s:10:\"breadcrumb\";a:1:{s:3:\"@id\";s:47:\"http://localhost/wp-ns-podcast/blog/#breadcrumb\";}s:10:\"inLanguage\";s:5:\"en-US\";s:15:\"potentialAction\";a:1:{i:0;a:2:{s:5:\"@type\";s:10:\"ReadAction\";s:6:\"target\";a:1:{i:0;s:36:\"http://localhost/wp-ns-podcast/blog/\";}}}}i:1;a:3:{s:5:\"@type\";s:14:\"BreadcrumbList\";s:3:\"@id\";s:47:\"http://localhost/wp-ns-podcast/blog/#breadcrumb\";s:15:\"itemListElement\";a:2:{i:0;a:4:{s:5:\"@type\";s:8:\"ListItem\";s:8:\"position\";i:1;s:4:\"name\";s:4:\"Home\";s:4:\"item\";s:31:\"http://localhost/wp-ns-podcast/\";}i:1;a:3:{s:5:\"@type\";s:8:\"ListItem\";s:8:\"position\";i:2;s:4:\"name\";s:4:\"Blog\";}}}i:2;a:7:{s:5:\"@type\";s:7:\"WebSite\";s:3:\"@id\";s:39:\"http://localhost/wp-ns-podcast/#website\";s:3:\"url\";s:31:\"http://localhost/wp-ns-podcast/\";s:4:\"name\";s:18:\"NicaSource Podcast\";s:11:\"description\";s:27:\"Just another WordPress site\";s:15:\"potentialAction\";a:1:{i:0;a:3:{s:5:\"@type\";s:12:\"SearchAction\";s:6:\"target\";a:2:{s:5:\"@type\";s:10:\"EntryPoint\";s:11:\"urlTemplate\";s:54:\"http://localhost/wp-ns-podcast/?s={search_term_string}\";}s:11:\"query-input\";s:32:\"required name=search_term_string\";}}s:10:\"inLanguage\";s:5:\"en-US\";}i:3;a:6:{s:5:\"@type\";s:6:\"Person\";s:3:\"@id\";s:79:\"http://localhost/wp-ns-podcast/#/schema/person/5f98b6d34c854758dd87ccb4c3cf1dbf\";s:4:\"name\";s:5:\"nspod\";s:5:\"image\";a:6:{s:5:\"@type\";s:11:\"ImageObject\";s:10:\"inLanguage\";s:5:\"en-US\";s:3:\"@id\";s:53:\"http://localhost/wp-ns-podcast/#/schema/person/image/\";s:3:\"url\";s:75:\"http://1.gravatar.com/avatar/72c1084c6edeb64addda7fe0b7c2a0a6?s=96&d=mm&r=g\";s:10:\"contentUrl\";s:75:\"http://1.gravatar.com/avatar/72c1084c6edeb64addda7fe0b7c2a0a6?s=96&d=mm&r=g\";s:7:\"caption\";s:5:\"nspod\";}s:6:\"sameAs\";a:1:{i:0;s:30:\"http://localhost/wp-ns-podcast\";}s:3:\"url\";s:44:\"http://localhost/wp-ns-podcast/author/nspod/\";}}}}}', 'no'),
(440, '_transient_timeout_yoast_meta_65', '1665044739', 'no'),
(441, '_transient_yoast_meta_65', 'a:3:{s:4:\"meta\";a:13:{i:0;a:2:{s:4:\"name\";s:6:\"robots\";s:7:\"content\";s:78:\"noindex, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1\";}i:1;a:2:{s:8:\"property\";s:9:\"og:locale\";s:7:\"content\";s:5:\"en_US\";}i:2;a:2:{s:8:\"property\";s:7:\"og:type\";s:7:\"content\";s:7:\"article\";}i:3;a:2:{s:8:\"property\";s:8:\"og:title\";s:7:\"content\";s:28:\"Gallery - NicaSource Podcast\";}i:4;a:2:{s:8:\"property\";s:6:\"og:url\";s:7:\"content\";s:39:\"http://localhost/wp-ns-podcast/gallery/\";}i:5;a:2:{s:8:\"property\";s:12:\"og:site_name\";s:7:\"content\";s:18:\"NicaSource Podcast\";}i:6;a:2:{s:8:\"property\";s:22:\"article:published_time\";s:7:\"content\";s:25:\"2022-09-04T04:22:56+00:00\";}i:7;a:2:{s:8:\"property\";s:21:\"article:modified_time\";s:7:\"content\";s:25:\"2022-09-06T08:24:31+00:00\";}i:8;a:2:{s:4:\"name\";s:6:\"author\";s:7:\"content\";s:5:\"nspod\";}i:9;a:2:{s:4:\"name\";s:12:\"twitter:card\";s:7:\"content\";s:19:\"summary_large_image\";}i:10;a:2:{s:4:\"name\";s:14:\"twitter:label1\";s:7:\"content\";s:10:\"Written by\";}i:11;a:2:{s:4:\"name\";s:13:\"twitter:data1\";s:7:\"content\";s:5:\"nspod\";}i:12;a:2:{s:4:\"name\";s:6:\"robots\";s:7:\"content\";s:17:\"noindex, nofollow\";}}s:5:\"title\";s:28:\"Gallery - NicaSource Podcast\";s:7:\"json_ld\";a:1:{i:0;a:2:{s:8:\"@context\";s:18:\"https://schema.org\";s:6:\"@graph\";a:4:{i:0;a:11:{s:5:\"@type\";s:7:\"WebPage\";s:3:\"@id\";s:39:\"http://localhost/wp-ns-podcast/gallery/\";s:3:\"url\";s:39:\"http://localhost/wp-ns-podcast/gallery/\";s:4:\"name\";s:28:\"Gallery - NicaSource Podcast\";s:8:\"isPartOf\";a:1:{s:3:\"@id\";s:39:\"http://localhost/wp-ns-podcast/#website\";}s:13:\"datePublished\";s:25:\"2022-09-04T04:22:56+00:00\";s:12:\"dateModified\";s:25:\"2022-09-06T08:24:31+00:00\";s:6:\"author\";a:1:{s:3:\"@id\";s:79:\"http://localhost/wp-ns-podcast/#/schema/person/5f98b6d34c854758dd87ccb4c3cf1dbf\";}s:10:\"breadcrumb\";a:1:{s:3:\"@id\";s:50:\"http://localhost/wp-ns-podcast/gallery/#breadcrumb\";}s:10:\"inLanguage\";s:5:\"en-US\";s:15:\"potentialAction\";a:1:{i:0;a:2:{s:5:\"@type\";s:10:\"ReadAction\";s:6:\"target\";a:1:{i:0;s:39:\"http://localhost/wp-ns-podcast/gallery/\";}}}}i:1;a:3:{s:5:\"@type\";s:14:\"BreadcrumbList\";s:3:\"@id\";s:50:\"http://localhost/wp-ns-podcast/gallery/#breadcrumb\";s:15:\"itemListElement\";a:2:{i:0;a:4:{s:5:\"@type\";s:8:\"ListItem\";s:8:\"position\";i:1;s:4:\"name\";s:4:\"Home\";s:4:\"item\";s:31:\"http://localhost/wp-ns-podcast/\";}i:1;a:3:{s:5:\"@type\";s:8:\"ListItem\";s:8:\"position\";i:2;s:4:\"name\";s:7:\"Gallery\";}}}i:2;a:7:{s:5:\"@type\";s:7:\"WebSite\";s:3:\"@id\";s:39:\"http://localhost/wp-ns-podcast/#website\";s:3:\"url\";s:31:\"http://localhost/wp-ns-podcast/\";s:4:\"name\";s:18:\"NicaSource Podcast\";s:11:\"description\";s:27:\"Just another WordPress site\";s:15:\"potentialAction\";a:1:{i:0;a:3:{s:5:\"@type\";s:12:\"SearchAction\";s:6:\"target\";a:2:{s:5:\"@type\";s:10:\"EntryPoint\";s:11:\"urlTemplate\";s:54:\"http://localhost/wp-ns-podcast/?s={search_term_string}\";}s:11:\"query-input\";s:32:\"required name=search_term_string\";}}s:10:\"inLanguage\";s:5:\"en-US\";}i:3;a:6:{s:5:\"@type\";s:6:\"Person\";s:3:\"@id\";s:79:\"http://localhost/wp-ns-podcast/#/schema/person/5f98b6d34c854758dd87ccb4c3cf1dbf\";s:4:\"name\";s:5:\"nspod\";s:5:\"image\";a:6:{s:5:\"@type\";s:11:\"ImageObject\";s:10:\"inLanguage\";s:5:\"en-US\";s:3:\"@id\";s:53:\"http://localhost/wp-ns-podcast/#/schema/person/image/\";s:3:\"url\";s:75:\"http://1.gravatar.com/avatar/72c1084c6edeb64addda7fe0b7c2a0a6?s=96&d=mm&r=g\";s:10:\"contentUrl\";s:75:\"http://1.gravatar.com/avatar/72c1084c6edeb64addda7fe0b7c2a0a6?s=96&d=mm&r=g\";s:7:\"caption\";s:5:\"nspod\";}s:6:\"sameAs\";a:1:{i:0;s:30:\"http://localhost/wp-ns-podcast\";}s:3:\"url\";s:44:\"http://localhost/wp-ns-podcast/author/nspod/\";}}}}}', 'no'),
(454, '_transient_timeout_yoast_meta_118', '1665047856', 'no'),
(455, '_transient_yoast_meta_118', 'a:3:{s:4:\"meta\";a:13:{i:0;a:2:{s:4:\"name\";s:6:\"robots\";s:7:\"content\";s:78:\"noindex, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1\";}i:1;a:2:{s:8:\"property\";s:9:\"og:locale\";s:7:\"content\";s:5:\"en_US\";}i:2;a:2:{s:8:\"property\";s:7:\"og:type\";s:7:\"content\";s:7:\"article\";}i:3;a:2:{s:8:\"property\";s:8:\"og:title\";s:7:\"content\";s:27:\"Header - NicaSource Podcast\";}i:4;a:2:{s:8:\"property\";s:6:\"og:url\";s:7:\"content\";s:38:\"http://localhost/wp-ns-podcast/header/\";}i:5;a:2:{s:8:\"property\";s:12:\"og:site_name\";s:7:\"content\";s:18:\"NicaSource Podcast\";}i:6;a:2:{s:8:\"property\";s:22:\"article:published_time\";s:7:\"content\";s:25:\"2022-09-06T09:02:19+00:00\";}i:7;a:2:{s:8:\"property\";s:21:\"article:modified_time\";s:7:\"content\";s:25:\"2022-09-06T09:05:42+00:00\";}i:8;a:2:{s:4:\"name\";s:6:\"author\";s:7:\"content\";s:5:\"nspod\";}i:9;a:2:{s:4:\"name\";s:12:\"twitter:card\";s:7:\"content\";s:19:\"summary_large_image\";}i:10;a:2:{s:4:\"name\";s:14:\"twitter:label1\";s:7:\"content\";s:10:\"Written by\";}i:11;a:2:{s:4:\"name\";s:13:\"twitter:data1\";s:7:\"content\";s:5:\"nspod\";}i:12;a:2:{s:4:\"name\";s:6:\"robots\";s:7:\"content\";s:17:\"noindex, nofollow\";}}s:5:\"title\";s:27:\"Header - NicaSource Podcast\";s:7:\"json_ld\";a:1:{i:0;a:2:{s:8:\"@context\";s:18:\"https://schema.org\";s:6:\"@graph\";a:4:{i:0;a:11:{s:5:\"@type\";s:7:\"WebPage\";s:3:\"@id\";s:38:\"http://localhost/wp-ns-podcast/header/\";s:3:\"url\";s:38:\"http://localhost/wp-ns-podcast/header/\";s:4:\"name\";s:27:\"Header - NicaSource Podcast\";s:8:\"isPartOf\";a:1:{s:3:\"@id\";s:39:\"http://localhost/wp-ns-podcast/#website\";}s:13:\"datePublished\";s:25:\"2022-09-06T09:02:19+00:00\";s:12:\"dateModified\";s:25:\"2022-09-06T09:05:42+00:00\";s:6:\"author\";a:1:{s:3:\"@id\";s:79:\"http://localhost/wp-ns-podcast/#/schema/person/5f98b6d34c854758dd87ccb4c3cf1dbf\";}s:10:\"breadcrumb\";a:1:{s:3:\"@id\";s:49:\"http://localhost/wp-ns-podcast/header/#breadcrumb\";}s:10:\"inLanguage\";s:5:\"en-US\";s:15:\"potentialAction\";a:1:{i:0;a:2:{s:5:\"@type\";s:10:\"ReadAction\";s:6:\"target\";a:1:{i:0;s:38:\"http://localhost/wp-ns-podcast/header/\";}}}}i:1;a:3:{s:5:\"@type\";s:14:\"BreadcrumbList\";s:3:\"@id\";s:49:\"http://localhost/wp-ns-podcast/header/#breadcrumb\";s:15:\"itemListElement\";a:2:{i:0;a:4:{s:5:\"@type\";s:8:\"ListItem\";s:8:\"position\";i:1;s:4:\"name\";s:4:\"Home\";s:4:\"item\";s:31:\"http://localhost/wp-ns-podcast/\";}i:1;a:3:{s:5:\"@type\";s:8:\"ListItem\";s:8:\"position\";i:2;s:4:\"name\";s:6:\"Header\";}}}i:2;a:7:{s:5:\"@type\";s:7:\"WebSite\";s:3:\"@id\";s:39:\"http://localhost/wp-ns-podcast/#website\";s:3:\"url\";s:31:\"http://localhost/wp-ns-podcast/\";s:4:\"name\";s:18:\"NicaSource Podcast\";s:11:\"description\";s:27:\"Just another WordPress site\";s:15:\"potentialAction\";a:1:{i:0;a:3:{s:5:\"@type\";s:12:\"SearchAction\";s:6:\"target\";a:2:{s:5:\"@type\";s:10:\"EntryPoint\";s:11:\"urlTemplate\";s:54:\"http://localhost/wp-ns-podcast/?s={search_term_string}\";}s:11:\"query-input\";s:32:\"required name=search_term_string\";}}s:10:\"inLanguage\";s:5:\"en-US\";}i:3;a:6:{s:5:\"@type\";s:6:\"Person\";s:3:\"@id\";s:79:\"http://localhost/wp-ns-podcast/#/schema/person/5f98b6d34c854758dd87ccb4c3cf1dbf\";s:4:\"name\";s:5:\"nspod\";s:5:\"image\";a:6:{s:5:\"@type\";s:11:\"ImageObject\";s:10:\"inLanguage\";s:5:\"en-US\";s:3:\"@id\";s:53:\"http://localhost/wp-ns-podcast/#/schema/person/image/\";s:3:\"url\";s:75:\"http://1.gravatar.com/avatar/72c1084c6edeb64addda7fe0b7c2a0a6?s=96&d=mm&r=g\";s:10:\"contentUrl\";s:75:\"http://1.gravatar.com/avatar/72c1084c6edeb64addda7fe0b7c2a0a6?s=96&d=mm&r=g\";s:7:\"caption\";s:5:\"nspod\";}s:6:\"sameAs\";a:1:{i:0;s:30:\"http://localhost/wp-ns-podcast\";}s:3:\"url\";s:44:\"http://localhost/wp-ns-podcast/author/nspod/\";}}}}}', 'no'),
(456, '_transient_timeout_yoast_meta_116', '1665048819', 'no'),
(457, '_transient_yoast_meta_116', 'a:3:{s:4:\"meta\";a:13:{i:0;a:2:{s:4:\"name\";s:6:\"robots\";s:7:\"content\";s:78:\"noindex, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1\";}i:1;a:2:{s:8:\"property\";s:9:\"og:locale\";s:7:\"content\";s:5:\"en_US\";}i:2;a:2:{s:8:\"property\";s:7:\"og:type\";s:7:\"content\";s:7:\"article\";}i:3;a:2:{s:8:\"property\";s:8:\"og:title\";s:7:\"content\";s:25:\"Hero - NicaSource Podcast\";}i:4;a:2:{s:8:\"property\";s:6:\"og:url\";s:7:\"content\";s:36:\"http://localhost/wp-ns-podcast/hero/\";}i:5;a:2:{s:8:\"property\";s:12:\"og:site_name\";s:7:\"content\";s:18:\"NicaSource Podcast\";}i:6;a:2:{s:8:\"property\";s:22:\"article:published_time\";s:7:\"content\";s:25:\"2022-09-06T09:01:06+00:00\";}i:7;a:2:{s:8:\"property\";s:21:\"article:modified_time\";s:7:\"content\";s:25:\"2022-09-06T09:07:28+00:00\";}i:8;a:2:{s:4:\"name\";s:6:\"author\";s:7:\"content\";s:5:\"nspod\";}i:9;a:2:{s:4:\"name\";s:12:\"twitter:card\";s:7:\"content\";s:19:\"summary_large_image\";}i:10;a:2:{s:4:\"name\";s:14:\"twitter:label1\";s:7:\"content\";s:10:\"Written by\";}i:11;a:2:{s:4:\"name\";s:13:\"twitter:data1\";s:7:\"content\";s:5:\"nspod\";}i:12;a:2:{s:4:\"name\";s:6:\"robots\";s:7:\"content\";s:17:\"noindex, nofollow\";}}s:5:\"title\";s:25:\"Hero - NicaSource Podcast\";s:7:\"json_ld\";a:1:{i:0;a:2:{s:8:\"@context\";s:18:\"https://schema.org\";s:6:\"@graph\";a:4:{i:0;a:11:{s:5:\"@type\";s:7:\"WebPage\";s:3:\"@id\";s:36:\"http://localhost/wp-ns-podcast/hero/\";s:3:\"url\";s:36:\"http://localhost/wp-ns-podcast/hero/\";s:4:\"name\";s:25:\"Hero - NicaSource Podcast\";s:8:\"isPartOf\";a:1:{s:3:\"@id\";s:39:\"http://localhost/wp-ns-podcast/#website\";}s:13:\"datePublished\";s:25:\"2022-09-06T09:01:06+00:00\";s:12:\"dateModified\";s:25:\"2022-09-06T09:07:28+00:00\";s:6:\"author\";a:1:{s:3:\"@id\";s:79:\"http://localhost/wp-ns-podcast/#/schema/person/5f98b6d34c854758dd87ccb4c3cf1dbf\";}s:10:\"breadcrumb\";a:1:{s:3:\"@id\";s:47:\"http://localhost/wp-ns-podcast/hero/#breadcrumb\";}s:10:\"inLanguage\";s:5:\"en-US\";s:15:\"potentialAction\";a:1:{i:0;a:2:{s:5:\"@type\";s:10:\"ReadAction\";s:6:\"target\";a:1:{i:0;s:36:\"http://localhost/wp-ns-podcast/hero/\";}}}}i:1;a:3:{s:5:\"@type\";s:14:\"BreadcrumbList\";s:3:\"@id\";s:47:\"http://localhost/wp-ns-podcast/hero/#breadcrumb\";s:15:\"itemListElement\";a:2:{i:0;a:4:{s:5:\"@type\";s:8:\"ListItem\";s:8:\"position\";i:1;s:4:\"name\";s:4:\"Home\";s:4:\"item\";s:31:\"http://localhost/wp-ns-podcast/\";}i:1;a:3:{s:5:\"@type\";s:8:\"ListItem\";s:8:\"position\";i:2;s:4:\"name\";s:4:\"Hero\";}}}i:2;a:7:{s:5:\"@type\";s:7:\"WebSite\";s:3:\"@id\";s:39:\"http://localhost/wp-ns-podcast/#website\";s:3:\"url\";s:31:\"http://localhost/wp-ns-podcast/\";s:4:\"name\";s:18:\"NicaSource Podcast\";s:11:\"description\";s:27:\"Just another WordPress site\";s:15:\"potentialAction\";a:1:{i:0;a:3:{s:5:\"@type\";s:12:\"SearchAction\";s:6:\"target\";a:2:{s:5:\"@type\";s:10:\"EntryPoint\";s:11:\"urlTemplate\";s:54:\"http://localhost/wp-ns-podcast/?s={search_term_string}\";}s:11:\"query-input\";s:32:\"required name=search_term_string\";}}s:10:\"inLanguage\";s:5:\"en-US\";}i:3;a:6:{s:5:\"@type\";s:6:\"Person\";s:3:\"@id\";s:79:\"http://localhost/wp-ns-podcast/#/schema/person/5f98b6d34c854758dd87ccb4c3cf1dbf\";s:4:\"name\";s:5:\"nspod\";s:5:\"image\";a:6:{s:5:\"@type\";s:11:\"ImageObject\";s:10:\"inLanguage\";s:5:\"en-US\";s:3:\"@id\";s:53:\"http://localhost/wp-ns-podcast/#/schema/person/image/\";s:3:\"url\";s:75:\"http://1.gravatar.com/avatar/72c1084c6edeb64addda7fe0b7c2a0a6?s=96&d=mm&r=g\";s:10:\"contentUrl\";s:75:\"http://1.gravatar.com/avatar/72c1084c6edeb64addda7fe0b7c2a0a6?s=96&d=mm&r=g\";s:7:\"caption\";s:5:\"nspod\";}s:6:\"sameAs\";a:1:{i:0;s:30:\"http://localhost/wp-ns-podcast\";}s:3:\"url\";s:44:\"http://localhost/wp-ns-podcast/author/nspod/\";}}}}}', 'no'),
(463, '_transient_timeout_yoast_meta_73', '1665049729', 'no'),
(464, '_transient_yoast_meta_73', 'a:3:{s:4:\"meta\";a:13:{i:0;a:2:{s:4:\"name\";s:6:\"robots\";s:7:\"content\";s:78:\"noindex, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1\";}i:1;a:2:{s:8:\"property\";s:9:\"og:locale\";s:7:\"content\";s:5:\"en_US\";}i:2;a:2:{s:8:\"property\";s:7:\"og:type\";s:7:\"content\";s:7:\"article\";}i:3;a:2:{s:8:\"property\";s:8:\"og:title\";s:7:\"content\";s:30:\"Subscribe - NicaSource Podcast\";}i:4;a:2:{s:8:\"property\";s:6:\"og:url\";s:7:\"content\";s:41:\"http://localhost/wp-ns-podcast/subscribe/\";}i:5;a:2:{s:8:\"property\";s:12:\"og:site_name\";s:7:\"content\";s:18:\"NicaSource Podcast\";}i:6;a:2:{s:8:\"property\";s:22:\"article:published_time\";s:7:\"content\";s:25:\"2022-09-04T04:40:45+00:00\";}i:7;a:2:{s:8:\"property\";s:21:\"article:modified_time\";s:7:\"content\";s:25:\"2022-09-06T09:48:29+00:00\";}i:8;a:2:{s:4:\"name\";s:6:\"author\";s:7:\"content\";s:5:\"nspod\";}i:9;a:2:{s:4:\"name\";s:12:\"twitter:card\";s:7:\"content\";s:19:\"summary_large_image\";}i:10;a:2:{s:4:\"name\";s:14:\"twitter:label1\";s:7:\"content\";s:10:\"Written by\";}i:11;a:2:{s:4:\"name\";s:13:\"twitter:data1\";s:7:\"content\";s:5:\"nspod\";}i:12;a:2:{s:4:\"name\";s:6:\"robots\";s:7:\"content\";s:17:\"noindex, nofollow\";}}s:5:\"title\";s:30:\"Subscribe - NicaSource Podcast\";s:7:\"json_ld\";a:1:{i:0;a:2:{s:8:\"@context\";s:18:\"https://schema.org\";s:6:\"@graph\";a:4:{i:0;a:11:{s:5:\"@type\";s:7:\"WebPage\";s:3:\"@id\";s:41:\"http://localhost/wp-ns-podcast/subscribe/\";s:3:\"url\";s:41:\"http://localhost/wp-ns-podcast/subscribe/\";s:4:\"name\";s:30:\"Subscribe - NicaSource Podcast\";s:8:\"isPartOf\";a:1:{s:3:\"@id\";s:39:\"http://localhost/wp-ns-podcast/#website\";}s:13:\"datePublished\";s:25:\"2022-09-04T04:40:45+00:00\";s:12:\"dateModified\";s:25:\"2022-09-06T09:48:29+00:00\";s:6:\"author\";a:1:{s:3:\"@id\";s:79:\"http://localhost/wp-ns-podcast/#/schema/person/5f98b6d34c854758dd87ccb4c3cf1dbf\";}s:10:\"breadcrumb\";a:1:{s:3:\"@id\";s:52:\"http://localhost/wp-ns-podcast/subscribe/#breadcrumb\";}s:10:\"inLanguage\";s:5:\"en-US\";s:15:\"potentialAction\";a:1:{i:0;a:2:{s:5:\"@type\";s:10:\"ReadAction\";s:6:\"target\";a:1:{i:0;s:41:\"http://localhost/wp-ns-podcast/subscribe/\";}}}}i:1;a:3:{s:5:\"@type\";s:14:\"BreadcrumbList\";s:3:\"@id\";s:52:\"http://localhost/wp-ns-podcast/subscribe/#breadcrumb\";s:15:\"itemListElement\";a:2:{i:0;a:4:{s:5:\"@type\";s:8:\"ListItem\";s:8:\"position\";i:1;s:4:\"name\";s:4:\"Home\";s:4:\"item\";s:31:\"http://localhost/wp-ns-podcast/\";}i:1;a:3:{s:5:\"@type\";s:8:\"ListItem\";s:8:\"position\";i:2;s:4:\"name\";s:9:\"Subscribe\";}}}i:2;a:7:{s:5:\"@type\";s:7:\"WebSite\";s:3:\"@id\";s:39:\"http://localhost/wp-ns-podcast/#website\";s:3:\"url\";s:31:\"http://localhost/wp-ns-podcast/\";s:4:\"name\";s:18:\"NicaSource Podcast\";s:11:\"description\";s:27:\"Just another WordPress site\";s:15:\"potentialAction\";a:1:{i:0;a:3:{s:5:\"@type\";s:12:\"SearchAction\";s:6:\"target\";a:2:{s:5:\"@type\";s:10:\"EntryPoint\";s:11:\"urlTemplate\";s:54:\"http://localhost/wp-ns-podcast/?s={search_term_string}\";}s:11:\"query-input\";s:32:\"required name=search_term_string\";}}s:10:\"inLanguage\";s:5:\"en-US\";}i:3;a:6:{s:5:\"@type\";s:6:\"Person\";s:3:\"@id\";s:79:\"http://localhost/wp-ns-podcast/#/schema/person/5f98b6d34c854758dd87ccb4c3cf1dbf\";s:4:\"name\";s:5:\"nspod\";s:5:\"image\";a:6:{s:5:\"@type\";s:11:\"ImageObject\";s:10:\"inLanguage\";s:5:\"en-US\";s:3:\"@id\";s:53:\"http://localhost/wp-ns-podcast/#/schema/person/image/\";s:3:\"url\";s:75:\"http://1.gravatar.com/avatar/72c1084c6edeb64addda7fe0b7c2a0a6?s=96&d=mm&r=g\";s:10:\"contentUrl\";s:75:\"http://1.gravatar.com/avatar/72c1084c6edeb64addda7fe0b7c2a0a6?s=96&d=mm&r=g\";s:7:\"caption\";s:5:\"nspod\";}s:6:\"sameAs\";a:1:{i:0;s:30:\"http://localhost/wp-ns-podcast\";}s:3:\"url\";s:44:\"http://localhost/wp-ns-podcast/author/nspod/\";}}}}}', 'no'),
(469, '_transient_timeout_wpseo_total_unindexed_posts_limited', '1662459438', 'no'),
(470, '_transient_wpseo_total_unindexed_posts_limited', '2', 'no'),
(472, '_transient_timeout_yoast_meta_120', '1665050785', 'no'),
(473, '_transient_yoast_meta_120', 'a:3:{s:4:\"meta\";a:13:{i:0;a:2:{s:4:\"name\";s:6:\"robots\";s:7:\"content\";s:78:\"noindex, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1\";}i:1;a:2:{s:8:\"property\";s:9:\"og:locale\";s:7:\"content\";s:5:\"en_US\";}i:2;a:2:{s:8:\"property\";s:7:\"og:type\";s:7:\"content\";s:7:\"article\";}i:3;a:2:{s:8:\"property\";s:8:\"og:title\";s:7:\"content\";s:27:\"Footer - NicaSource Podcast\";}i:4;a:2:{s:8:\"property\";s:6:\"og:url\";s:7:\"content\";s:38:\"http://localhost/wp-ns-podcast/footer/\";}i:5;a:2:{s:8:\"property\";s:12:\"og:site_name\";s:7:\"content\";s:18:\"NicaSource Podcast\";}i:6;a:2:{s:8:\"property\";s:22:\"article:published_time\";s:7:\"content\";s:25:\"2022-09-06T09:02:33+00:00\";}i:7;a:2:{s:8:\"property\";s:21:\"article:modified_time\";s:7:\"content\";s:25:\"2022-09-06T10:06:09+00:00\";}i:8;a:2:{s:4:\"name\";s:6:\"author\";s:7:\"content\";s:5:\"nspod\";}i:9;a:2:{s:4:\"name\";s:12:\"twitter:card\";s:7:\"content\";s:19:\"summary_large_image\";}i:10;a:2:{s:4:\"name\";s:14:\"twitter:label1\";s:7:\"content\";s:10:\"Written by\";}i:11;a:2:{s:4:\"name\";s:13:\"twitter:data1\";s:7:\"content\";s:5:\"nspod\";}i:12;a:2:{s:4:\"name\";s:6:\"robots\";s:7:\"content\";s:17:\"noindex, nofollow\";}}s:5:\"title\";s:27:\"Footer - NicaSource Podcast\";s:7:\"json_ld\";a:1:{i:0;a:2:{s:8:\"@context\";s:18:\"https://schema.org\";s:6:\"@graph\";a:4:{i:0;a:11:{s:5:\"@type\";s:7:\"WebPage\";s:3:\"@id\";s:38:\"http://localhost/wp-ns-podcast/footer/\";s:3:\"url\";s:38:\"http://localhost/wp-ns-podcast/footer/\";s:4:\"name\";s:27:\"Footer - NicaSource Podcast\";s:8:\"isPartOf\";a:1:{s:3:\"@id\";s:39:\"http://localhost/wp-ns-podcast/#website\";}s:13:\"datePublished\";s:25:\"2022-09-06T09:02:33+00:00\";s:12:\"dateModified\";s:25:\"2022-09-06T10:06:09+00:00\";s:6:\"author\";a:1:{s:3:\"@id\";s:79:\"http://localhost/wp-ns-podcast/#/schema/person/5f98b6d34c854758dd87ccb4c3cf1dbf\";}s:10:\"breadcrumb\";a:1:{s:3:\"@id\";s:49:\"http://localhost/wp-ns-podcast/footer/#breadcrumb\";}s:10:\"inLanguage\";s:5:\"en-US\";s:15:\"potentialAction\";a:1:{i:0;a:2:{s:5:\"@type\";s:10:\"ReadAction\";s:6:\"target\";a:1:{i:0;s:38:\"http://localhost/wp-ns-podcast/footer/\";}}}}i:1;a:3:{s:5:\"@type\";s:14:\"BreadcrumbList\";s:3:\"@id\";s:49:\"http://localhost/wp-ns-podcast/footer/#breadcrumb\";s:15:\"itemListElement\";a:2:{i:0;a:4:{s:5:\"@type\";s:8:\"ListItem\";s:8:\"position\";i:1;s:4:\"name\";s:4:\"Home\";s:4:\"item\";s:31:\"http://localhost/wp-ns-podcast/\";}i:1;a:3:{s:5:\"@type\";s:8:\"ListItem\";s:8:\"position\";i:2;s:4:\"name\";s:6:\"Footer\";}}}i:2;a:7:{s:5:\"@type\";s:7:\"WebSite\";s:3:\"@id\";s:39:\"http://localhost/wp-ns-podcast/#website\";s:3:\"url\";s:31:\"http://localhost/wp-ns-podcast/\";s:4:\"name\";s:18:\"NicaSource Podcast\";s:11:\"description\";s:27:\"Just another WordPress site\";s:15:\"potentialAction\";a:1:{i:0;a:3:{s:5:\"@type\";s:12:\"SearchAction\";s:6:\"target\";a:2:{s:5:\"@type\";s:10:\"EntryPoint\";s:11:\"urlTemplate\";s:54:\"http://localhost/wp-ns-podcast/?s={search_term_string}\";}s:11:\"query-input\";s:32:\"required name=search_term_string\";}}s:10:\"inLanguage\";s:5:\"en-US\";}i:3;a:6:{s:5:\"@type\";s:6:\"Person\";s:3:\"@id\";s:79:\"http://localhost/wp-ns-podcast/#/schema/person/5f98b6d34c854758dd87ccb4c3cf1dbf\";s:4:\"name\";s:5:\"nspod\";s:5:\"image\";a:6:{s:5:\"@type\";s:11:\"ImageObject\";s:10:\"inLanguage\";s:5:\"en-US\";s:3:\"@id\";s:53:\"http://localhost/wp-ns-podcast/#/schema/person/image/\";s:3:\"url\";s:75:\"http://1.gravatar.com/avatar/72c1084c6edeb64addda7fe0b7c2a0a6?s=96&d=mm&r=g\";s:10:\"contentUrl\";s:75:\"http://1.gravatar.com/avatar/72c1084c6edeb64addda7fe0b7c2a0a6?s=96&d=mm&r=g\";s:7:\"caption\";s:5:\"nspod\";}s:6:\"sameAs\";a:1:{i:0;s:30:\"http://localhost/wp-ns-podcast\";}s:3:\"url\";s:44:\"http://localhost/wp-ns-podcast/author/nspod/\";}}}}}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(13, 8, '_edit_lock', '1662236891:1'),
(14, 17, '_edit_last', '1'),
(15, 17, '_edit_lock', '1662452457:1'),
(18, 17, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(19, 17, '_yoast_wpseo_wordproof_timestamp', ''),
(20, 20, '_edit_last', '1'),
(21, 20, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(22, 20, '_yoast_wpseo_wordproof_timestamp', ''),
(23, 20, '_edit_lock', '1662267584:1'),
(24, 22, '_edit_last', '1'),
(25, 22, '_edit_lock', '1662454869:1'),
(26, 30, '_edit_last', '1'),
(27, 30, '_edit_lock', '1662458603:1'),
(28, 38, '_edit_last', '1'),
(29, 38, '_edit_lock', '1662454774:1'),
(30, 45, '_edit_last', '1'),
(31, 45, '_edit_lock', '1662449385:1'),
(32, 56, '_edit_last', '1'),
(33, 56, '_edit_lock', '1662451986:1'),
(34, 65, '_edit_last', '1'),
(37, 65, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(38, 65, '_yoast_wpseo_wordproof_timestamp', ''),
(39, 65, '_edit_lock', '1662454160:1'),
(40, 67, '_edit_last', '1'),
(41, 67, '_edit_lock', '1662452500:1'),
(42, 72, '_form', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(43, 72, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:43:\"[_site_title] <elvisgomezfloegel@gmail.com>\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(44, 72, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:43:\"[_site_title] <elvisgomezfloegel@gmail.com>\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(45, 72, '_messages', 'a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}'),
(46, 72, '_additional_settings', ''),
(47, 72, '_locale', 'en_US'),
(48, 73, '_edit_last', '1'),
(51, 73, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(52, 73, '_yoast_wpseo_wordproof_timestamp', ''),
(53, 73, '_edit_lock', '1662458863:1'),
(54, 76, '_edit_last', '1'),
(55, 76, '_edit_lock', '1662457529:1'),
(56, 82, '_wp_attached_file', '2022/09/ns-logo.png'),
(57, 82, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:672;s:6:\"height\";i:289;s:4:\"file\";s:19:\"2022/09/ns-logo.png\";s:8:\"filesize\";i:7233;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"ns-logo-300x129.png\";s:5:\"width\";i:300;s:6:\"height\";i:129;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:24298;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"ns-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14584;}s:13:\"custom-medium\";a:5:{s:4:\"file\";s:19:\"ns-logo-300x129.png\";s:5:\"width\";i:300;s:6:\"height\";i:129;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:24298;}s:13:\"custom-tablet\";a:5:{s:4:\"file\";s:19:\"ns-logo-600x258.png\";s:5:\"width\";i:600;s:6:\"height\";i:258;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:62196;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 83, '_wp_attached_file', '2022/09/ns-logo-b.png'),
(59, 83, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:402;s:6:\"height\";i:194;s:4:\"file\";s:21:\"2022/09/ns-logo-b.png\";s:8:\"filesize\";i:45886;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"ns-logo-b-300x145.png\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:49150;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"ns-logo-b-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:26512;}s:13:\"custom-medium\";a:5:{s:4:\"file\";s:21:\"ns-logo-b-300x145.png\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:49150;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 84, '_wp_attached_file', '2022/09/ns-apple-podcast.png'),
(61, 84, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:318;s:6:\"height\";i:78;s:4:\"file\";s:28:\"2022/09/ns-apple-podcast.png\";s:8:\"filesize\";i:16729;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"ns-apple-podcast-300x74.png\";s:5:\"width\";i:300;s:6:\"height\";i:74;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:20738;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"ns-apple-podcast-150x78.png\";s:5:\"width\";i:150;s:6:\"height\";i:78;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9210;}s:13:\"custom-medium\";a:5:{s:4:\"file\";s:27:\"ns-apple-podcast-300x74.png\";s:5:\"width\";i:300;s:6:\"height\";i:74;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:20738;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 85, '_wp_attached_file', '2022/09/ns-google-podcast.png'),
(63, 85, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:314;s:6:\"height\";i:85;s:4:\"file\";s:29:\"2022/09/ns-google-podcast.png\";s:8:\"filesize\";i:14637;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"ns-google-podcast-300x81.png\";s:5:\"width\";i:300;s:6:\"height\";i:81;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:25969;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"ns-google-podcast-150x85.png\";s:5:\"width\";i:150;s:6:\"height\";i:85;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10205;}s:13:\"custom-medium\";a:5:{s:4:\"file\";s:28:\"ns-google-podcast-300x81.png\";s:5:\"width\";i:300;s:6:\"height\";i:81;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:25969;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(64, 86, '_wp_attached_file', '2022/09/ns-spotify.png'),
(65, 86, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:210;s:6:\"height\";i:99;s:4:\"file\";s:22:\"2022/09/ns-spotify.png\";s:8:\"filesize\";i:11421;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"ns-spotify-150x99.png\";s:5:\"width\";i:150;s:6:\"height\";i:99;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:11186;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(66, 20, 'b-header_b-header-logo', '83'),
(67, 20, '_b-header_b-header-logo', 'field_63141a8e78107'),
(68, 20, 'b-header_b-header_menu', 'a:1:{i:0;s:2:\"20\";}'),
(69, 20, '_b-header_b-header_menu', 'field_63141aa278108'),
(70, 20, 'b-header_b-header_buttons', 'Subscribe'),
(71, 20, '_b-header_b-header_buttons', 'field_63141abb78109'),
(72, 20, 'b-header', ''),
(73, 20, '_b-header', 'field_63141a7978106'),
(74, 20, 'c-hero_c-hero_trending', 'Trending Episode'),
(75, 20, '_c-hero_c-hero_trending', 'field_6314205f472aa'),
(76, 20, 'c-hero_c-hero_title', 'This is the best Episode ever seen in your life'),
(77, 20, '_c-hero_c-hero_title', 'field_631420cb472ab'),
(78, 20, 'c-hero_c-hero_content', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
(79, 20, '_c-hero_c-hero_content', 'field_631420e4472ac'),
(80, 20, 'c-hero_c-hero_listen', 'Listen On Also'),
(81, 20, '_c-hero_c-hero_listen', 'field_63142108472ad'),
(82, 20, 'c-hero_c-hero_media', '86'),
(83, 20, '_c-hero_c-hero_media', 'field_6314211b472ae'),
(84, 20, 'c-hero', ''),
(85, 20, '_c-hero', 'field_63142050472a9'),
(86, 20, 'b-footer_b-footer_logo', '83'),
(87, 20, '_b-footer_b-footer_logo', 'field_63141b7ea9654'),
(88, 20, 'b-footer_b-footer_menu', 'a:1:{i:0;s:2:\"20\";}'),
(89, 20, '_b-footer_b-footer_menu', 'field_63141b97a9655'),
(90, 20, 'b-footer_b-footer_content', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. '),
(91, 20, '_b-footer_b-footer_content', 'field_63141bcaa9656'),
(92, 20, 'b-footer_b-footer_social', 'a:3:{s:5:\"title\";s:1:\"f\";s:3:\"url\";s:36:\"https://www.facebook.com/nicasource/\";s:6:\"target\";s:6:\"_blank\";}'),
(93, 20, '_b-footer_b-footer_social', 'field_63141be0a9657'),
(94, 20, 'b-footer_b-footer_episodes', ''),
(95, 20, '_b-footer_b-footer_episodes', 'field_63141c5aa9658'),
(96, 20, 'b-footer_b-footer_rights', ''),
(97, 20, '_b-footer_b-footer_rights', 'field_63141caca9659'),
(98, 20, 'b-footer', ''),
(99, 20, '_b-footer', 'field_63141b6da9653'),
(100, 87, 'b-header_b-header-logo', '83'),
(101, 87, '_b-header_b-header-logo', 'field_63141a8e78107'),
(102, 87, 'b-header_b-header_menu', 'a:1:{i:0;s:2:\"20\";}'),
(103, 87, '_b-header_b-header_menu', 'field_63141aa278108'),
(104, 87, 'b-header_b-header_buttons', 'Subscribe'),
(105, 87, '_b-header_b-header_buttons', 'field_63141abb78109'),
(106, 87, 'b-header', ''),
(107, 87, '_b-header', 'field_63141a7978106'),
(108, 87, 'c-hero_c-hero_trending', 'Trending Episode'),
(109, 87, '_c-hero_c-hero_trending', 'field_6314205f472aa'),
(110, 87, 'c-hero_c-hero_title', 'This is the best Episode ever seen in your life'),
(111, 87, '_c-hero_c-hero_title', 'field_631420cb472ab'),
(112, 87, 'c-hero_c-hero_content', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
(113, 87, '_c-hero_c-hero_content', 'field_631420e4472ac'),
(114, 87, 'c-hero_c-hero_listen', 'Listen On Also'),
(115, 87, '_c-hero_c-hero_listen', 'field_63142108472ad'),
(116, 87, 'c-hero_c-hero_media', '86'),
(117, 87, '_c-hero_c-hero_media', 'field_6314211b472ae'),
(118, 87, 'c-hero', ''),
(119, 87, '_c-hero', 'field_63142050472a9'),
(120, 87, 'b-footer_b-footer_logo', '83'),
(121, 87, '_b-footer_b-footer_logo', 'field_63141b7ea9654'),
(122, 87, 'b-footer_b-footer_menu', 'a:1:{i:0;s:2:\"20\";}'),
(123, 87, '_b-footer_b-footer_menu', 'field_63141b97a9655'),
(124, 87, 'b-footer_b-footer_content', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. '),
(125, 87, '_b-footer_b-footer_content', 'field_63141bcaa9656'),
(126, 87, 'b-footer_b-footer_social', 'a:3:{s:5:\"title\";s:1:\"f\";s:3:\"url\";s:36:\"https://www.facebook.com/nicasource/\";s:6:\"target\";s:6:\"_blank\";}'),
(127, 87, '_b-footer_b-footer_social', 'field_63141be0a9657'),
(128, 87, 'b-footer_b-footer_episodes', ''),
(129, 87, '_b-footer_b-footer_episodes', 'field_63141c5aa9658'),
(130, 87, 'b-footer_b-footer_rights', ''),
(131, 87, '_b-footer_b-footer_rights', 'field_63141caca9659'),
(132, 87, 'b-footer', ''),
(133, 87, '_b-footer', 'field_63141b6da9653'),
(134, 88, '_edit_last', '1'),
(135, 88, '_edit_lock', '1662449587:1'),
(136, 89, '_wp_attached_file', '2022/09/developer.jpeg'),
(137, 89, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:22:\"2022/09/developer.jpeg\";s:8:\"filesize\";i:251164;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"developer-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15058;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"developer-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7058;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"developer-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:61602;}s:13:\"custom-medium\";a:5:{s:4:\"file\";s:22:\"developer-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15058;}s:13:\"custom-tablet\";a:5:{s:4:\"file\";s:22:\"developer-600x400.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:42693;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:24:\"rh2010 - stock.adobe.com\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 88, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(139, 88, '_yoast_wpseo_wordproof_timestamp', ''),
(140, 88, 'c-episode_c-episode_info', 'Latest Podcast Episode'),
(141, 88, '_c-episode_c-episode_info', 'field_63142304c185b'),
(142, 88, 'c-episode_c-episode_button', 'Know more'),
(143, 88, '_c-episode_c-episode_button', 'field_631424f6c1863'),
(144, 88, 'c-episode_c-episode_picture', '89'),
(145, 88, '_c-episode_c-episode_picture', 'field_6314248bc1860'),
(146, 88, 'c-episode_c-episode_title', 'dolorem ipsum quia dolor sit amet, consectetur'),
(147, 88, '_c-episode_c-episode_title', 'field_631424dcc1861'),
(148, 88, 'c-episode_c-episode_content', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia'),
(149, 88, '_c-episode_c-episode_content', 'field_631424e7c1862'),
(150, 88, 'c-episode_c-episode_season', '1'),
(151, 88, '_c-episode_c-episode_season', 'field_63142502c1864'),
(152, 88, 'c-episode_c-episode_date', '20220903'),
(153, 88, '_c-episode_c-episode_date', 'field_6314250fc1865'),
(154, 88, 'c-episode_c-episode_type', 'a:3:{i:0;s:5:\"audio\";i:1;s:7:\"goobyes\";i:2;s:4:\"life\";}'),
(155, 88, '_c-episode_c-episode_type', 'field_63142550c1866'),
(156, 88, 'c-episode', ''),
(157, 88, '_c-episode', 'field_631422f4c185a'),
(158, 90, 'c-episode_c-episode_info', 'Latest Podcast Episode'),
(159, 90, '_c-episode_c-episode_info', 'field_63142304c185b'),
(160, 90, 'c-episode_c-episode_button', 'Know more'),
(161, 90, '_c-episode_c-episode_button', 'field_631424f6c1863'),
(162, 90, 'c-episode_c-episode_picture', '89'),
(163, 90, '_c-episode_c-episode_picture', 'field_6314248bc1860'),
(164, 90, 'c-episode_c-episode_title', 'dolorem ipsum quia dolor sit amet, consectetur'),
(165, 90, '_c-episode_c-episode_title', 'field_631424dcc1861'),
(166, 90, 'c-episode_c-episode_content', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia'),
(167, 90, '_c-episode_c-episode_content', 'field_631424e7c1862'),
(168, 90, 'c-episode_c-episode_season', '1'),
(169, 90, '_c-episode_c-episode_season', 'field_63142502c1864'),
(170, 90, 'c-episode_c-episode_date', '20220903'),
(171, 90, '_c-episode_c-episode_date', 'field_6314250fc1865'),
(172, 90, 'c-episode_c-episode_type', 'life'),
(173, 90, '_c-episode_c-episode_type', 'field_63142550c1866'),
(174, 90, 'c-episode', ''),
(175, 90, '_c-episode', 'field_631422f4c185a'),
(178, 17, 'c-blog_c-blog_autor', 'Mehedi Hasan'),
(179, 17, '_c-blog_c-blog_autor', 'field_631425e08a6d0'),
(180, 17, 'c-blog_c-blog_date', '20220911'),
(181, 17, '_c-blog_c-blog_date', 'field_631425fd8a6d1'),
(182, 17, 'c-blog_c-blog_enterprise', 'NicaSource Radio'),
(183, 17, '_c-blog_c-blog_enterprise', 'field_631426108a6d2'),
(184, 17, 'c-blog_c-blog_title', 'Global News Podcast Thai Soldier kills many'),
(185, 17, '_c-blog_c-blog_title', 'field_631426358a6d3'),
(186, 17, 'c-blog_c-blog_content', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia'),
(187, 17, '_c-blog_c-blog_content', 'field_631426468a6d4'),
(188, 17, 'c-blog_c-blog_button', 'Read More'),
(189, 17, '_c-blog_c-blog_button', 'field_6314265c8a6d5'),
(190, 17, 'c-blog', ''),
(191, 17, '_c-blog', 'field_631425c78a6cf'),
(192, 92, 'c-blog_c-blog_autor', 'Mehedi Hasan'),
(193, 92, '_c-blog_c-blog_autor', 'field_631425e08a6d0'),
(194, 92, 'c-blog_c-blog_date', '20220911'),
(195, 92, '_c-blog_c-blog_date', 'field_631425fd8a6d1'),
(196, 92, 'c-blog_c-blog_enterprise', 'NicaSource Radio'),
(197, 92, '_c-blog_c-blog_enterprise', 'field_631426108a6d2'),
(198, 92, 'c-blog_c-blog_title', 'Global News Podcast Thai Soldier kills many'),
(199, 92, '_c-blog_c-blog_title', 'field_631426358a6d3'),
(200, 92, 'c-blog_c-blog_content', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia'),
(201, 92, '_c-blog_c-blog_content', 'field_631426468a6d4'),
(202, 92, 'c-blog_c-blog_button', 'Read More'),
(203, 92, '_c-blog_c-blog_button', 'field_6314265c8a6d5'),
(204, 92, 'c-blog', ''),
(205, 92, '_c-blog', 'field_631425c78a6cf'),
(206, 93, '_wp_attached_file', '2022/09/Portada.jpeg'),
(207, 93, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:20:\"2022/09/Portada.jpeg\";s:8:\"filesize\";i:251866;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"Portada-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15503;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"Portada-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7597;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"Portada-768x512.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:63930;}s:13:\"custom-medium\";a:5:{s:4:\"file\";s:20:\"Portada-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15503;}s:13:\"custom-tablet\";a:5:{s:4:\"file\";s:20:\"Portada-600x400.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:44496;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:26:\"REDPIXEL - stock.adobe.com\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(210, 65, 'c-gallery_c-gallery_title', 'gallery'),
(211, 65, '_c-gallery_c-gallery_title', 'field_631428708bbbc'),
(212, 65, 'c-gallery', ''),
(213, 65, '_c-gallery', 'field_6314283e8bbba'),
(214, 66, 'c-gallery_c-gallery_title', ''),
(215, 66, '_c-gallery_c-gallery_title', 'field_631428708bbbc'),
(216, 66, 'c-gallery', ''),
(217, 66, '_c-gallery', 'field_6314283e8bbba'),
(218, 65, 'c-gallery_picture', '89,93,100'),
(219, 65, '_c-gallery_picture', 'field_631428558bbbb'),
(222, 94, 'c-gallery_c-gallery_title', 'gallery'),
(223, 94, '_c-gallery_c-gallery_title', 'field_631428708bbbc'),
(224, 94, 'c-gallery', ''),
(225, 94, '_c-gallery', 'field_6314283e8bbba'),
(226, 94, 'c-gallery_picture', '89,93,100'),
(227, 94, '_c-gallery_picture', 'field_631428558bbbb'),
(230, 73, 'c-subscribe_c-subscribe_title', 'New Episode Every Week!'),
(231, 73, '_c-subscribe_c-subscribe_title', 'field_63142c8501ac7'),
(232, 73, 'c-subscribe_c-subscribe_content', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form'),
(233, 73, '_c-subscribe_c-subscribe_content', 'field_63142c9d01ac8'),
(234, 73, 'c-subscribe_c-subscribe_emaii', ''),
(235, 73, '_c-subscribe_c-subscribe_emaii', 'field_63142cad01ac9'),
(236, 73, 'c-subscribe_c-subscribe_button', 'Subscribe'),
(237, 73, '_c-subscribe_c-subscribe_button', 'field_63142cd201aca'),
(238, 73, 'c-subscribe', ''),
(239, 73, '_c-subscribe', 'field_63142c7a01ac6'),
(240, 95, 'c-subscribe_c-subscribe_title', 'New Episode Every Week!'),
(241, 95, '_c-subscribe_c-subscribe_title', 'field_63142c8501ac7'),
(242, 95, 'c-subscribe_c-subscribe_content', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form'),
(243, 95, '_c-subscribe_c-subscribe_content', 'field_63142c9d01ac8'),
(244, 95, 'c-subscribe_c-subscribe_emaii', ''),
(245, 95, '_c-subscribe_c-subscribe_emaii', 'field_63142cad01ac9'),
(246, 95, 'c-subscribe_c-subscribe_button', 'Subscribe'),
(247, 95, '_c-subscribe_c-subscribe_button', 'field_63142cd201aca'),
(248, 95, 'c-subscribe', ''),
(249, 95, '_c-subscribe', 'field_63142c7a01ac6'),
(250, 88, '_yoast_wpseo_content_score', '90'),
(251, 96, 'c-episode_c-episode_info', 'Latest Podcast Episode'),
(252, 96, '_c-episode_c-episode_info', 'field_63142304c185b'),
(253, 96, 'c-episode_c-episode_button', 'Know more'),
(254, 96, '_c-episode_c-episode_button', 'field_631424f6c1863'),
(255, 96, 'c-episode_c-episode_picture', '89'),
(256, 96, '_c-episode_c-episode_picture', 'field_6314248bc1860'),
(257, 96, 'c-episode_c-episode_title', 'dolorem ipsum quia dolor sit amet, consectetur'),
(258, 96, '_c-episode_c-episode_title', 'field_631424dcc1861'),
(259, 96, 'c-episode_c-episode_content', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia'),
(260, 96, '_c-episode_c-episode_content', 'field_631424e7c1862'),
(261, 96, 'c-episode_c-episode_season', '1'),
(262, 96, '_c-episode_c-episode_season', 'field_63142502c1864'),
(263, 96, 'c-episode_c-episode_date', '20220903'),
(264, 96, '_c-episode_c-episode_date', 'field_6314250fc1865'),
(265, 96, 'c-episode_c-episode_type', 'life'),
(266, 96, '_c-episode_c-episode_type', 'field_63142550c1866'),
(267, 96, 'c-episode', ''),
(268, 96, '_c-episode', 'field_631422f4c185a'),
(269, 97, '_edit_last', '1'),
(270, 97, '_edit_lock', '1662449654:1'),
(271, 97, '_yoast_wpseo_content_score', '90'),
(272, 97, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(273, 97, '_yoast_wpseo_wordproof_timestamp', ''),
(274, 97, 'c-episode_c-episode_picture', '93'),
(275, 97, '_c-episode_c-episode_picture', 'field_6314248bc1860'),
(276, 97, 'c-episode_c-episode_title', 'The standard chunk of Lorem Ipsum used since the 1500'),
(277, 97, '_c-episode_c-episode_title', 'field_631424dcc1861'),
(278, 97, 'c-episode_c-episode_content', 'Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.'),
(279, 97, '_c-episode_c-episode_content', 'field_631424e7c1862'),
(280, 97, 'c-episode_c-episode_button', 'Know more'),
(281, 97, '_c-episode_c-episode_button', 'field_631424f6c1863'),
(282, 97, 'c-episode_c-episode_season', '1'),
(283, 97, '_c-episode_c-episode_season', 'field_63142502c1864'),
(284, 97, 'c-episode_c-episode_date', '20200729'),
(285, 97, '_c-episode_c-episode_date', 'field_6314250fc1865'),
(286, 97, 'c-episode_c-episode_type', 'a:2:{i:0;s:7:\"goobyes\";i:1;s:4:\"life\";}'),
(287, 97, '_c-episode_c-episode_type', 'field_63142550c1866'),
(288, 97, 'c-episode', ''),
(289, 97, '_c-episode', 'field_631422f4c185a'),
(290, 98, 'c-episode_c-episode_picture', '93'),
(291, 98, '_c-episode_c-episode_picture', 'field_6314248bc1860'),
(292, 98, 'c-episode_c-episode_title', 'The standard chunk of Lorem Ipsum used since the 1500'),
(293, 98, '_c-episode_c-episode_title', 'field_631424dcc1861'),
(294, 98, 'c-episode_c-episode_content', 'Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.'),
(295, 98, '_c-episode_c-episode_content', 'field_631424e7c1862'),
(296, 98, 'c-episode_c-episode_button', 'Know more'),
(297, 98, '_c-episode_c-episode_button', 'field_631424f6c1863'),
(298, 98, 'c-episode_c-episode_season', '1'),
(299, 98, '_c-episode_c-episode_season', 'field_63142502c1864'),
(300, 98, 'c-episode_c-episode_date', '20200729'),
(301, 98, '_c-episode_c-episode_date', 'field_6314250fc1865'),
(302, 98, 'c-episode_c-episode_type', 'audio'),
(303, 98, '_c-episode_c-episode_type', 'field_63142550c1866'),
(304, 98, 'c-episode', ''),
(305, 98, '_c-episode', 'field_631422f4c185a'),
(306, 99, '_edit_last', '1'),
(307, 99, '_edit_lock', '1662451877:1'),
(308, 100, '_wp_attached_file', '2022/09/my-machien.jpg'),
(309, 100, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:813;s:6:\"height\";i:789;s:4:\"file\";s:22:\"2022/09/my-machien.jpg\";s:8:\"filesize\";i:38310;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"my-machien-300x291.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13450;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"my-machien-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5450;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"my-machien-768x745.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:745;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:47134;}s:13:\"custom-medium\";a:5:{s:4:\"file\";s:22:\"my-machien-300x291.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13450;}s:13:\"custom-tablet\";a:5:{s:4:\"file\";s:22:\"my-machien-600x582.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:582;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33855;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(310, 99, '_yoast_wpseo_content_score', '90'),
(311, 99, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(312, 99, '_yoast_wpseo_wordproof_timestamp', ''),
(313, 99, 'c-episode_c-episode_picture', '100'),
(314, 99, '_c-episode_c-episode_picture', 'field_6314248bc1860'),
(315, 99, 'c-episode_c-episode_title', 'dolorem ipsum quia dolor sit amet, consectetur'),
(316, 99, '_c-episode_c-episode_title', 'field_631424dcc1861'),
(317, 99, 'c-episode_c-episode_content', 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.'),
(318, 99, '_c-episode_c-episode_content', 'field_631424e7c1862'),
(319, 99, 'c-episode_c-episode_button', 'Know more'),
(320, 99, '_c-episode_c-episode_button', 'field_631424f6c1863'),
(321, 99, 'c-episode_c-episode_season', '1'),
(322, 99, '_c-episode_c-episode_season', 'field_63142502c1864'),
(323, 99, 'c-episode_c-episode_date', '20200911'),
(324, 99, '_c-episode_c-episode_date', 'field_6314250fc1865'),
(325, 99, 'c-episode_c-episode_type', 'a:2:{i:0;s:5:\"audio\";i:1;s:7:\"goobyes\";}'),
(326, 99, '_c-episode_c-episode_type', 'field_63142550c1866'),
(327, 99, 'c-episode', ''),
(328, 99, '_c-episode', 'field_631422f4c185a'),
(329, 101, 'c-episode_c-episode_picture', '100'),
(330, 101, '_c-episode_c-episode_picture', 'field_6314248bc1860'),
(331, 101, 'c-episode_c-episode_title', 'dolorem ipsum quia dolor sit amet, consectetur'),
(332, 101, '_c-episode_c-episode_title', 'field_631424dcc1861'),
(333, 101, 'c-episode_c-episode_content', 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.'),
(334, 101, '_c-episode_c-episode_content', 'field_631424e7c1862'),
(335, 101, 'c-episode_c-episode_button', 'Know more'),
(336, 101, '_c-episode_c-episode_button', 'field_631424f6c1863'),
(337, 101, 'c-episode_c-episode_season', '1'),
(338, 101, '_c-episode_c-episode_season', 'field_63142502c1864'),
(339, 101, 'c-episode_c-episode_date', '20200911'),
(340, 101, '_c-episode_c-episode_date', 'field_6314250fc1865'),
(341, 101, 'c-episode_c-episode_type', 'goodbyes'),
(342, 101, '_c-episode_c-episode_type', 'field_63142550c1866'),
(343, 101, 'c-episode', ''),
(344, 101, '_c-episode', 'field_631422f4c185a'),
(345, 102, 'c-episode_c-episode_info', 'Latest Podcast Episode'),
(346, 102, '_c-episode_c-episode_info', 'field_63142304c185b'),
(347, 102, 'c-episode_c-episode_button', 'Know more'),
(348, 102, '_c-episode_c-episode_button', 'field_631424f6c1863'),
(349, 102, 'c-episode_c-episode_picture', '89'),
(350, 102, '_c-episode_c-episode_picture', 'field_6314248bc1860'),
(351, 102, 'c-episode_c-episode_title', 'dolorem ipsum quia dolor sit amet, consectetur'),
(352, 102, '_c-episode_c-episode_title', 'field_631424dcc1861'),
(353, 102, 'c-episode_c-episode_content', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia'),
(354, 102, '_c-episode_c-episode_content', 'field_631424e7c1862'),
(355, 102, 'c-episode_c-episode_season', '1'),
(356, 102, '_c-episode_c-episode_season', 'field_63142502c1864'),
(357, 102, 'c-episode_c-episode_date', '20220903'),
(358, 102, '_c-episode_c-episode_date', 'field_6314250fc1865'),
(359, 102, 'c-episode_c-episode_type', 'a:3:{i:0;s:5:\"audio\";i:1;s:7:\"goobyes\";i:2;s:4:\"life\";}'),
(360, 102, '_c-episode_c-episode_type', 'field_63142550c1866'),
(361, 102, 'c-episode', ''),
(362, 102, '_c-episode', 'field_631422f4c185a'),
(363, 103, 'c-episode_c-episode_picture', '93'),
(364, 103, '_c-episode_c-episode_picture', 'field_6314248bc1860'),
(365, 103, 'c-episode_c-episode_title', 'The standard chunk of Lorem Ipsum used since the 1500'),
(366, 103, '_c-episode_c-episode_title', 'field_631424dcc1861'),
(367, 103, 'c-episode_c-episode_content', 'Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.'),
(368, 103, '_c-episode_c-episode_content', 'field_631424e7c1862'),
(369, 103, 'c-episode_c-episode_button', 'Know more'),
(370, 103, '_c-episode_c-episode_button', 'field_631424f6c1863'),
(371, 103, 'c-episode_c-episode_season', '1'),
(372, 103, '_c-episode_c-episode_season', 'field_63142502c1864'),
(373, 103, 'c-episode_c-episode_date', '20200729'),
(374, 103, '_c-episode_c-episode_date', 'field_6314250fc1865'),
(375, 103, 'c-episode_c-episode_type', 'a:2:{i:0;s:7:\"goobyes\";i:1;s:4:\"life\";}'),
(376, 103, '_c-episode_c-episode_type', 'field_63142550c1866'),
(377, 103, 'c-episode', ''),
(378, 103, '_c-episode', 'field_631422f4c185a'),
(379, 104, 'c-episode_c-episode_picture', '100'),
(380, 104, '_c-episode_c-episode_picture', 'field_6314248bc1860'),
(381, 104, 'c-episode_c-episode_title', 'dolorem ipsum quia dolor sit amet, consectetur'),
(382, 104, '_c-episode_c-episode_title', 'field_631424dcc1861'),
(383, 104, 'c-episode_c-episode_content', 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.'),
(384, 104, '_c-episode_c-episode_content', 'field_631424e7c1862'),
(385, 104, 'c-episode_c-episode_button', 'Know more'),
(386, 104, '_c-episode_c-episode_button', 'field_631424f6c1863'),
(387, 104, 'c-episode_c-episode_season', '1'),
(388, 104, '_c-episode_c-episode_season', 'field_63142502c1864'),
(389, 104, 'c-episode_c-episode_date', '20200911'),
(390, 104, '_c-episode_c-episode_date', 'field_6314250fc1865'),
(391, 104, 'c-episode_c-episode_type', 'a:2:{i:0;s:5:\"audio\";i:1;s:7:\"goobyes\";}'),
(392, 104, '_c-episode_c-episode_type', 'field_63142550c1866'),
(393, 104, 'c-episode', ''),
(394, 104, '_c-episode', 'field_631422f4c185a'),
(397, 106, '_edit_last', '1'),
(398, 106, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(399, 106, '_yoast_wpseo_wordproof_timestamp', ''),
(400, 106, '_edit_lock', '1662445390:1'),
(401, 88, 'episode_picture', '93'),
(402, 88, '_episode_picture', 'field_6314248bc1860'),
(403, 88, 'episode_title', 'dolorem ipsum quia dolor sit amet, consectetur'),
(404, 88, '_episode_title', 'field_631424dcc1861'),
(405, 88, 'episode_content', '<div id=\"column1\">\r\n<div>\r\n\r\n consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.\r\n\r\nDonec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis.\r\n\r\n</div>\r\n</div>\r\n<div id=\"column2\">\r\n\r\n&nbsp;\r\n\r\n</div>'),
(406, 88, '_episode_content', 'field_631424e7c1862'),
(407, 88, 'episode_button', 'Know more'),
(408, 88, '_episode_button', 'field_631424f6c1863'),
(409, 88, 'episode_season', '1'),
(410, 88, '_episode_season', 'field_63142502c1864'),
(411, 88, 'episode_date', '20200903'),
(412, 88, '_episode_date', 'field_6314250fc1865'),
(413, 88, 'episode_type', 'a:3:{i:0;s:5:\"audio\";i:1;s:7:\"goobyes\";i:2;s:4:\"life\";}'),
(414, 88, '_episode_type', 'field_63142550c1866'),
(415, 88, 'episode', ''),
(416, 88, '_episode', 'field_631422f4c185a'),
(417, 108, 'c-episode_c-episode_info', 'Latest Podcast Episode'),
(418, 108, '_c-episode_c-episode_info', 'field_63142304c185b'),
(419, 108, 'c-episode_c-episode_button', 'Know more'),
(420, 108, '_c-episode_c-episode_button', 'field_631424f6c1863'),
(421, 108, 'c-episode_c-episode_picture', '89'),
(422, 108, '_c-episode_c-episode_picture', 'field_6314248bc1860'),
(423, 108, 'c-episode_c-episode_title', 'dolorem ipsum quia dolor sit amet, consectetur'),
(424, 108, '_c-episode_c-episode_title', 'field_631424dcc1861'),
(425, 108, 'c-episode_c-episode_content', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia'),
(426, 108, '_c-episode_c-episode_content', 'field_631424e7c1862'),
(427, 108, 'c-episode_c-episode_season', '1'),
(428, 108, '_c-episode_c-episode_season', 'field_63142502c1864'),
(429, 108, 'c-episode_c-episode_date', '20220903'),
(430, 108, '_c-episode_c-episode_date', 'field_6314250fc1865'),
(431, 108, 'c-episode_c-episode_type', 'a:3:{i:0;s:5:\"audio\";i:1;s:7:\"goobyes\";i:2;s:4:\"life\";}'),
(432, 108, '_c-episode_c-episode_type', 'field_63142550c1866'),
(433, 108, 'c-episode', ''),
(434, 108, '_c-episode', 'field_631422f4c185a'),
(435, 108, 'episode_picture', '93'),
(436, 108, '_episode_picture', 'field_6314248bc1860'),
(437, 108, 'episode_title', 'dolorem ipsum quia dolor sit amet, consectetur'),
(438, 108, '_episode_title', 'field_631424dcc1861'),
(439, 108, 'episode_content', '<div id=\"column1\">\r\n<div>\r\n\r\n consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.\r\n\r\nDonec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis.\r\n\r\n</div>\r\n</div>\r\n<div id=\"column2\">\r\n\r\n&nbsp;\r\n\r\n</div>'),
(440, 108, '_episode_content', 'field_631424e7c1862'),
(441, 108, 'episode_button', 'Know more'),
(442, 108, '_episode_button', 'field_631424f6c1863'),
(443, 108, 'episode_season', '1'),
(444, 108, '_episode_season', 'field_63142502c1864'),
(445, 108, 'episode_date', '20200903'),
(446, 108, '_episode_date', 'field_6314250fc1865'),
(447, 108, 'episode_type', 'a:3:{i:0;s:5:\"audio\";i:1;s:7:\"goobyes\";i:2;s:4:\"life\";}'),
(448, 108, '_episode_type', 'field_63142550c1866'),
(449, 108, 'episode', ''),
(450, 108, '_episode', 'field_631422f4c185a'),
(451, 97, 'episode_picture', '89'),
(452, 97, '_episode_picture', 'field_6314248bc1860'),
(453, 97, 'episode_title', 'The standard chunk of Lorem Ipsum used since the 1500'),
(454, 97, '_episode_title', 'field_631424dcc1861'),
(455, 97, 'episode_content', '<div id=\"column1\">\r\n<div>\r\n\r\nPraesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.\r\n\r\nPhasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate sem tristique cursus. Nam nulla quam, gravida non, commodo a, sodales sit amet, nisi.\r\n\r\n</div>\r\n</div>'),
(456, 97, '_episode_content', 'field_631424e7c1862'),
(457, 97, 'episode_button', 'Know more'),
(458, 97, '_episode_button', 'field_631424f6c1863'),
(459, 97, 'episode_season', '1'),
(460, 97, '_episode_season', 'field_63142502c1864'),
(461, 97, 'episode_date', '20200729'),
(462, 97, '_episode_date', 'field_6314250fc1865'),
(463, 97, 'episode_type', 'a:2:{i:0;s:7:\"goobyes\";i:1;s:4:\"life\";}'),
(464, 97, '_episode_type', 'field_63142550c1866'),
(465, 97, 'episode', ''),
(466, 97, '_episode', 'field_631422f4c185a'),
(467, 109, 'c-episode_c-episode_picture', '93'),
(468, 109, '_c-episode_c-episode_picture', 'field_6314248bc1860'),
(469, 109, 'c-episode_c-episode_title', 'The standard chunk of Lorem Ipsum used since the 1500'),
(470, 109, '_c-episode_c-episode_title', 'field_631424dcc1861'),
(471, 109, 'c-episode_c-episode_content', 'Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.'),
(472, 109, '_c-episode_c-episode_content', 'field_631424e7c1862'),
(473, 109, 'c-episode_c-episode_button', 'Know more'),
(474, 109, '_c-episode_c-episode_button', 'field_631424f6c1863'),
(475, 109, 'c-episode_c-episode_season', '1'),
(476, 109, '_c-episode_c-episode_season', 'field_63142502c1864'),
(477, 109, 'c-episode_c-episode_date', '20200729'),
(478, 109, '_c-episode_c-episode_date', 'field_6314250fc1865'),
(479, 109, 'c-episode_c-episode_type', 'a:2:{i:0;s:7:\"goobyes\";i:1;s:4:\"life\";}'),
(480, 109, '_c-episode_c-episode_type', 'field_63142550c1866'),
(481, 109, 'c-episode', ''),
(482, 109, '_c-episode', 'field_631422f4c185a'),
(483, 109, 'episode_picture', '89'),
(484, 109, '_episode_picture', 'field_6314248bc1860'),
(485, 109, 'episode_title', 'The standard chunk of Lorem Ipsum used since the 1500'),
(486, 109, '_episode_title', 'field_631424dcc1861'),
(487, 109, 'episode_content', '<div id=\"column1\">\r\n<div>\r\n\r\nPraesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.\r\n\r\nPhasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate sem tristique cursus. Nam nulla quam, gravida non, commodo a, sodales sit amet, nisi.\r\n\r\n</div>\r\n</div>'),
(488, 109, '_episode_content', 'field_631424e7c1862'),
(489, 109, 'episode_button', 'Know more'),
(490, 109, '_episode_button', 'field_631424f6c1863'),
(491, 109, 'episode_season', '1'),
(492, 109, '_episode_season', 'field_63142502c1864'),
(493, 109, 'episode_date', '20200729'),
(494, 109, '_episode_date', 'field_6314250fc1865'),
(495, 109, 'episode_type', 'a:2:{i:0;s:7:\"goobyes\";i:1;s:4:\"life\";}'),
(496, 109, '_episode_type', 'field_63142550c1866'),
(497, 109, 'episode', ''),
(498, 109, '_episode', 'field_631422f4c185a'),
(499, 99, 'episode_picture', '100'),
(500, 99, '_episode_picture', 'field_6314248bc1860'),
(501, 99, 'episode_title', 'THE dolorem ipsum quia dolor sit amet, consectetur'),
(502, 99, '_episode_title', 'field_631424dcc1861'),
(503, 99, 'episode_content', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.'),
(504, 99, '_episode_content', 'field_631424e7c1862'),
(505, 99, 'episode_button', 'Know more'),
(506, 99, '_episode_button', 'field_631424f6c1863'),
(507, 99, 'episode_season', '1'),
(508, 99, '_episode_season', 'field_63142502c1864'),
(509, 99, 'episode_date', '20200911'),
(510, 99, '_episode_date', 'field_6314250fc1865'),
(511, 99, 'episode_type', 'a:2:{i:0;s:5:\"audio\";i:1;s:7:\"goobyes\";}'),
(512, 99, '_episode_type', 'field_63142550c1866'),
(513, 99, 'episode', ''),
(514, 99, '_episode', 'field_631422f4c185a'),
(515, 110, 'c-episode_c-episode_picture', '100'),
(516, 110, '_c-episode_c-episode_picture', 'field_6314248bc1860'),
(517, 110, 'c-episode_c-episode_title', 'dolorem ipsum quia dolor sit amet, consectetur'),
(518, 110, '_c-episode_c-episode_title', 'field_631424dcc1861'),
(519, 110, 'c-episode_c-episode_content', 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.'),
(520, 110, '_c-episode_c-episode_content', 'field_631424e7c1862'),
(521, 110, 'c-episode_c-episode_button', 'Know more'),
(522, 110, '_c-episode_c-episode_button', 'field_631424f6c1863'),
(523, 110, 'c-episode_c-episode_season', '1'),
(524, 110, '_c-episode_c-episode_season', 'field_63142502c1864'),
(525, 110, 'c-episode_c-episode_date', '20200911'),
(526, 110, '_c-episode_c-episode_date', 'field_6314250fc1865'),
(527, 110, 'c-episode_c-episode_type', 'a:2:{i:0;s:5:\"audio\";i:1;s:7:\"goobyes\";}'),
(528, 110, '_c-episode_c-episode_type', 'field_63142550c1866'),
(529, 110, 'c-episode', ''),
(530, 110, '_c-episode', 'field_631422f4c185a'),
(531, 110, 'episode_picture', '100'),
(532, 110, '_episode_picture', 'field_6314248bc1860'),
(533, 110, 'episode_title', 'THE dolorem ipsum quia dolor sit amet, consectetur'),
(534, 110, '_episode_title', 'field_631424dcc1861'),
(535, 110, 'episode_content', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.'),
(536, 110, '_episode_content', 'field_631424e7c1862'),
(537, 110, 'episode_button', 'Know more'),
(538, 110, '_episode_button', 'field_631424f6c1863'),
(539, 110, 'episode_season', '1'),
(540, 110, '_episode_season', 'field_63142502c1864'),
(541, 110, 'episode_date', '20200911'),
(542, 110, '_episode_date', 'field_6314250fc1865'),
(543, 110, 'episode_type', 'a:2:{i:0;s:5:\"audio\";i:1;s:7:\"goobyes\";}'),
(544, 110, '_episode_type', 'field_63142550c1866'),
(545, 110, 'episode', ''),
(546, 110, '_episode', 'field_631422f4c185a'),
(549, 17, '_yoast_wpseo_content_score', '90'),
(550, 17, 'blog_autor', 'Mehedi Hasan'),
(551, 17, '_blog_autor', 'field_631425e08a6d0'),
(552, 17, 'blog_date', '20200911'),
(553, 17, '_blog_date', 'field_631425fd8a6d1'),
(554, 17, 'blog_enterprise', 'NicaSource Radio'),
(555, 17, '_blog_enterprise', 'field_631426108a6d2'),
(556, 17, 'blog_title', 'Global News Podcast Thai Soldier kills many'),
(557, 17, '_blog_title', 'field_631426358a6d3'),
(558, 17, 'blog_content', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 year'),
(559, 17, '_blog_content', 'field_631426468a6d4'),
(560, 17, 'blog_button', 'Read More'),
(561, 17, '_blog_button', 'field_6314265c8a6d5'),
(562, 17, 'blog', ''),
(563, 17, '_blog', 'field_631425c78a6cf'),
(564, 111, 'c-blog_c-blog_autor', 'Mehedi Hasan'),
(565, 111, '_c-blog_c-blog_autor', 'field_631425e08a6d0'),
(566, 111, 'c-blog_c-blog_date', '20220911'),
(567, 111, '_c-blog_c-blog_date', 'field_631425fd8a6d1'),
(568, 111, 'c-blog_c-blog_enterprise', 'NicaSource Radio'),
(569, 111, '_c-blog_c-blog_enterprise', 'field_631426108a6d2'),
(570, 111, 'c-blog_c-blog_title', 'Global News Podcast Thai Soldier kills many'),
(571, 111, '_c-blog_c-blog_title', 'field_631426358a6d3'),
(572, 111, 'c-blog_c-blog_content', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia'),
(573, 111, '_c-blog_c-blog_content', 'field_631426468a6d4'),
(574, 111, 'c-blog_c-blog_button', 'Read More'),
(575, 111, '_c-blog_c-blog_button', 'field_6314265c8a6d5'),
(576, 111, 'c-blog', ''),
(577, 111, '_c-blog', 'field_631425c78a6cf'),
(578, 111, 'blog_autor', 'Mehedi Hasan'),
(579, 111, '_blog_autor', 'field_631425e08a6d0'),
(580, 111, 'blog_date', '20200911'),
(581, 111, '_blog_date', 'field_631425fd8a6d1'),
(582, 111, 'blog_enterprise', 'NicaSource Radio'),
(583, 111, '_blog_enterprise', 'field_631426108a6d2'),
(584, 111, 'blog_title', 'Global News Podcast Thai Soldier kills many'),
(585, 111, '_blog_title', 'field_631426358a6d3'),
(586, 111, 'blog_content', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 year'),
(587, 111, '_blog_content', 'field_631426468a6d4'),
(588, 111, 'blog_button', 'Read More'),
(589, 111, '_blog_button', 'field_6314265c8a6d5'),
(590, 111, 'blog', ''),
(591, 111, '_blog', 'field_631425c78a6cf'),
(594, 65, 'gallery_title', ''),
(595, 65, '_gallery_title', 'field_631428708bbbc'),
(596, 65, 'gallery', ''),
(597, 65, '_gallery', 'field_6314283e8bbba'),
(598, 94, 'gallery_title', ''),
(599, 94, '_gallery_title', 'field_631428708bbbc'),
(600, 94, 'gallery', ''),
(601, 94, '_gallery', 'field_6314283e8bbba'),
(602, 65, 'picture', '89,100,93'),
(603, 65, '_picture', 'field_631428558bbbb'),
(604, 116, '_edit_last', '1'),
(605, 116, '_edit_lock', '1662455113:1'),
(608, 116, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(609, 116, '_yoast_wpseo_wordproof_timestamp', ''),
(610, 118, '_edit_last', '1'),
(613, 118, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(614, 118, '_yoast_wpseo_wordproof_timestamp', ''),
(615, 118, '_edit_lock', '1662455010:1'),
(616, 120, '_edit_last', '1'),
(619, 120, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
(620, 120, '_yoast_wpseo_wordproof_timestamp', ''),
(621, 120, '_edit_lock', '1662458715:1'),
(622, 122, '_wp_attached_file', '2022/09/ns-logo-b-1.png'),
(623, 122, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:402;s:6:\"height\";i:194;s:4:\"file\";s:23:\"2022/09/ns-logo-b-1.png\";s:8:\"filesize\";i:39845;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"ns-logo-b-1-300x145.png\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:37969;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"ns-logo-b-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:19483;}s:13:\"custom-medium\";a:5:{s:4:\"file\";s:23:\"ns-logo-b-1-300x145.png\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:37969;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(626, 118, 'header_logo', '122'),
(627, 118, '_header_logo', 'field_63141a8e78107'),
(628, 118, 'header_menu', ''),
(629, 118, '_header_menu', 'field_63141aa278108'),
(630, 118, 'header_buttonsubscribe', 'Subscribe'),
(631, 118, '_header_buttonsubscribe', 'field_63141abb78109'),
(632, 118, 'header_buttonlogin', 'Sing-in'),
(633, 118, '_header_buttonlogin', 'field_63170af2b8103'),
(634, 118, 'header', ''),
(635, 118, '_header', 'field_63141a7978106'),
(636, 123, 'header_logo', '122'),
(637, 123, '_header_logo', 'field_63141a8e78107'),
(638, 123, 'header_menu', ''),
(639, 123, '_header_menu', 'field_63141aa278108'),
(640, 123, 'header_buttonsubscribe', 'Subscribe'),
(641, 123, '_header_buttonsubscribe', 'field_63141abb78109');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(642, 123, 'header_buttonlogin', 'Sing-in'),
(643, 123, '_header_buttonlogin', 'field_63170af2b8103'),
(644, 123, 'header', ''),
(645, 123, '_header', 'field_63141a7978106'),
(646, 124, '_wp_attached_file', '2022/09/Podcast.png'),
(647, 124, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:405;s:6:\"height\";i:420;s:4:\"file\";s:19:\"2022/09/Podcast.png\";s:8:\"filesize\";i:70594;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"Podcast-289x300.png\";s:5:\"width\";i:289;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:71474;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"Podcast-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22992;}s:13:\"custom-medium\";a:5:{s:4:\"file\";s:19:\"Podcast-300x311.png\";s:5:\"width\";i:300;s:6:\"height\";i:311;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:78257;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(650, 116, '_yoast_wpseo_content_score', '90'),
(651, 116, 'hero_trending', 'Trending Episode'),
(652, 116, '_hero_trending', 'field_6314205f472aa'),
(653, 116, 'hero_title', 'This is the best Episode ever seen in your life'),
(654, 116, '_hero_title', 'field_631420cb472ab'),
(655, 116, 'hero_content', '<div>\r\n<div>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</div>\r\n</div>'),
(656, 116, '_hero_content', 'field_631420e4472ac'),
(657, 116, 'hero_listen', 'Listen On Also'),
(658, 116, '_hero_listen', 'field_63142108472ad'),
(659, 116, 'hero_media', '124'),
(660, 116, '_hero_media', 'field_6314211b472ae'),
(661, 116, 'hero', ''),
(662, 116, '_hero', 'field_63142050472a9'),
(663, 125, 'hero_trending', 'Trending Episode'),
(664, 125, '_hero_trending', 'field_6314205f472aa'),
(665, 125, 'hero_title', 'This is the best Episode ever seen in your life'),
(666, 125, '_hero_title', 'field_631420cb472ab'),
(667, 125, 'hero_content', '<div>\r\n<div>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</div>\r\n</div>'),
(668, 125, '_hero_content', 'field_631420e4472ac'),
(669, 125, 'hero_listen', 'Listen On Also'),
(670, 125, '_hero_listen', 'field_63142108472ad'),
(671, 125, 'hero_media', '124'),
(672, 125, '_hero_media', 'field_6314211b472ae'),
(673, 125, 'hero', ''),
(674, 125, '_hero', 'field_63142050472a9'),
(677, 73, '_yoast_wpseo_content_score', '90'),
(678, 73, 'subscribe_title', 'New Episode Every Week!'),
(679, 73, '_subscribe_title', 'field_63142c8501ac7'),
(680, 73, 'subscribe_content', '<div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto culpa quo tenetur dolores recusandae !</div>\r\n</div>'),
(681, 73, '_subscribe_content', 'field_63142c9d01ac8'),
(682, 73, 'subscribe_email', 'Type your e-mail'),
(683, 73, '_subscribe_email', 'field_63142cad01ac9'),
(684, 73, 'subscribe_button', 'Subscribe'),
(685, 73, '_subscribe_button', 'field_63142cd201aca'),
(686, 73, 'subscribe', ''),
(687, 73, '_subscribe', 'field_63142c7a01ac6'),
(688, 126, 'c-subscribe_c-subscribe_title', 'New Episode Every Week!'),
(689, 126, '_c-subscribe_c-subscribe_title', 'field_63142c8501ac7'),
(690, 126, 'c-subscribe_c-subscribe_content', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form'),
(691, 126, '_c-subscribe_c-subscribe_content', 'field_63142c9d01ac8'),
(692, 126, 'c-subscribe_c-subscribe_emaii', ''),
(693, 126, '_c-subscribe_c-subscribe_emaii', 'field_63142cad01ac9'),
(694, 126, 'c-subscribe_c-subscribe_button', 'Subscribe'),
(695, 126, '_c-subscribe_c-subscribe_button', 'field_63142cd201aca'),
(696, 126, 'c-subscribe', ''),
(697, 126, '_c-subscribe', 'field_63142c7a01ac6'),
(698, 126, 'subscribe_title', 'New Episode Every Week!'),
(699, 126, '_subscribe_title', 'field_63142c8501ac7'),
(700, 126, 'subscribe_content', '<div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto culpa quo tenetur dolores recusandae !</div>\r\n</div>'),
(701, 126, '_subscribe_content', 'field_63142c9d01ac8'),
(702, 126, 'subscribe_email', ''),
(703, 126, '_subscribe_email', 'field_63142cad01ac9'),
(704, 126, 'subscribe_button', 'Subscribe'),
(705, 126, '_subscribe_button', 'field_63142cd201aca'),
(706, 126, 'subscribe', ''),
(707, 126, '_subscribe', 'field_63142c7a01ac6'),
(710, 120, '_yoast_wpseo_content_score', '90'),
(711, 120, 'footer_logo', '122'),
(712, 120, '_footer_logo', 'field_63141b7ea9654'),
(713, 120, 'footer_content', 'loreosdfsadf dfasdfsdfsafdasfdsacvfdfsdf dfsdfsdfsdf'),
(714, 120, '_footer_content', 'field_63141bcaa9656'),
(715, 120, 'footer_facebbok', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:25:\"https://www.facebook.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(716, 120, '_footer_facebbok', 'field_63141be0a9657'),
(717, 120, 'footer_rights', 'NicaSource. All Rights Reserved'),
(718, 120, '_footer_rights', 'field_63141caca9659'),
(719, 120, 'footer_linkedin', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:25:\"https://www.linkedin.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(720, 120, '_footer_linkedin', 'field_63170bdbab086'),
(721, 120, 'footer_instagram', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(722, 120, '_footer_instagram', 'field_63170bebab087'),
(723, 120, 'footer_skype', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:22:\"https://www.skype.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(724, 120, '_footer_skype', 'field_63170bfbab088'),
(725, 120, 'footer', ''),
(726, 120, '_footer', 'field_63141b6da9653'),
(727, 127, 'footer_logo', '122'),
(728, 127, '_footer_logo', 'field_63141b7ea9654'),
(729, 127, 'footer_content', 'loreosdfsadf dfasdfsdfsafdasfdsacvfdfsdf dfsdfsdfsdf'),
(730, 127, '_footer_content', 'field_63141bcaa9656'),
(731, 127, 'footer_facebbok', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:25:\"https://www.facebook.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(732, 127, '_footer_facebbok', 'field_63141be0a9657'),
(733, 127, 'footer_rights', 'NicaSource. All Rights Reserved'),
(734, 127, '_footer_rights', 'field_63141caca9659'),
(735, 127, 'footer_linkedin', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:25:\"https://www.linkedin.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(736, 127, '_footer_linkedin', 'field_63170bdbab086'),
(737, 127, 'footer_instagram', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(738, 127, '_footer_instagram', 'field_63170bebab087'),
(739, 127, 'footer_skype', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:22:\"https://www.skype.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(740, 127, '_footer_skype', 'field_63170bfbab088'),
(741, 127, 'footer', ''),
(742, 127, '_footer', 'field_63141b6da9653'),
(745, 128, 'c-subscribe_c-subscribe_title', 'New Episode Every Week!'),
(746, 128, '_c-subscribe_c-subscribe_title', 'field_63142c8501ac7'),
(747, 128, 'c-subscribe_c-subscribe_content', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form'),
(748, 128, '_c-subscribe_c-subscribe_content', 'field_63142c9d01ac8'),
(749, 128, 'c-subscribe_c-subscribe_emaii', ''),
(750, 128, '_c-subscribe_c-subscribe_emaii', 'field_63142cad01ac9'),
(751, 128, 'c-subscribe_c-subscribe_button', 'Subscribe'),
(752, 128, '_c-subscribe_c-subscribe_button', 'field_63142cd201aca'),
(753, 128, 'c-subscribe', ''),
(754, 128, '_c-subscribe', 'field_63142c7a01ac6'),
(755, 128, 'subscribe_title', 'New Episode Every Week!'),
(756, 128, '_subscribe_title', 'field_63142c8501ac7'),
(757, 128, 'subscribe_content', '<div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto culpa quo tenetur dolores recusandae !</div>\r\n</div>'),
(758, 128, '_subscribe_content', 'field_63142c9d01ac8'),
(759, 128, 'subscribe_email', 'Type your e-mail'),
(760, 128, '_subscribe_email', 'field_63142cad01ac9'),
(761, 128, 'subscribe_button', 'Subscribe'),
(762, 128, '_subscribe_button', 'field_63142cd201aca'),
(763, 128, 'subscribe', ''),
(764, 128, '_subscribe', 'field_63142c7a01ac6'),
(767, 120, 'footer_facebook', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:25:\"https://www.facebook.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(768, 120, '_footer_facebook', 'field_63171b59c5e65'),
(769, 130, 'footer_logo', '122'),
(770, 130, '_footer_logo', 'field_63141b7ea9654'),
(771, 130, 'footer_content', 'loreosdfsadf dfasdfsdfsafdasfdsacvfdfsdf dfsdfsdfsdf'),
(772, 130, '_footer_content', 'field_63141bcaa9656'),
(773, 130, 'footer_facebbok', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:25:\"https://www.facebook.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(774, 130, '_footer_facebbok', 'field_63141be0a9657'),
(775, 130, 'footer_rights', 'NicaSource. All Rights Reserved'),
(776, 130, '_footer_rights', 'field_63141caca9659'),
(777, 130, 'footer_linkedin', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:25:\"https://www.linkedin.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(778, 130, '_footer_linkedin', 'field_63170bdbab086'),
(779, 130, 'footer_instagram', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:26:\"https://www.instagram.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(780, 130, '_footer_instagram', 'field_63170bebab087'),
(781, 130, 'footer_skype', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:22:\"https://www.skype.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(782, 130, '_footer_skype', 'field_63170bfbab088'),
(783, 130, 'footer', ''),
(784, 130, '_footer', 'field_63141b6da9653'),
(785, 130, 'footer_facebook', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:25:\"https://www.facebook.com/\";s:6:\"target\";s:6:\"_blank\";}'),
(786, 130, '_footer_facebook', 'field_63171b59c5e65');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
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
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 1, '2022-09-03 19:52:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-09-03 19:52:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-ns-podcast/?p=4', 0, 'post', '', 0),
(8, 1, '2022-09-03 20:30:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-09-03 20:30:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-ns-podcast/?page_id=8', 0, 'page', '', 0),
(9, 1, '2022-09-03 20:30:18', '2022-09-03 20:30:18', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentytwo', '', '', '2022-09-03 20:30:18', '2022-09-03 20:30:18', '', 0, 'http://localhost/wp-ns-podcast/wp-global-styles-twentytwentytwo/', 0, 'wp_global_styles', '', 0),
(10, 1, '2022-09-03 22:07:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-09-03 22:07:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-ns-podcast/?post_type=cpt-podcast&p=10', 0, 'cpt-podcast', '', 0),
(11, 1, '2022-09-04 01:54:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-09-04 01:54:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-ns-podcast/?post_type=acf-field-group&p=11', 0, 'acf-field-group', '', 0),
(12, 1, '2022-09-04 02:12:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-09-04 02:12:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-ns-podcast/?post_type=acf-field-group&p=12', 0, 'acf-field-group', '', 0),
(13, 1, '2022-09-04 02:13:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-09-04 02:13:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-ns-podcast/?post_type=cpt-podcast&p=13', 0, 'cpt-podcast', '', 0),
(14, 1, '2022-09-04 02:31:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-09-04 02:31:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-ns-podcast/?post_type=cpt-podcast&p=14', 0, 'cpt-podcast', '', 0),
(15, 1, '2022-09-04 02:33:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-09-04 02:33:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-ns-podcast/?post_type=cpt-podcast&p=15', 0, 'cpt-podcast', '', 0),
(16, 1, '2022-09-04 02:34:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-09-04 02:34:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-ns-podcast/?post_type=acf-field-group&p=16', 0, 'acf-field-group', '', 0),
(17, 1, '2022-09-04 03:02:19', '2022-09-04 03:02:19', '', 'Blog', '', 'publish', 'open', 'open', '', 'blog', '', '', '2022-09-06 08:16:31', '2022-09-06 08:16:31', '', 0, 'http://localhost/wp-ns-podcast/?p=17', 2, 'post', '', 0),
(18, 1, '2022-09-04 03:02:19', '2022-09-04 03:02:19', 'This is my blog for NS Assessment', 'Blog', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2022-09-04 03:02:19', '2022-09-04 03:02:19', '', 17, 'http://localhost/wp-ns-podcast/?p=18', 0, 'revision', '', 0),
(19, 1, '2022-09-04 03:19:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-09-04 03:19:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-ns-podcast/?post_type=acf-field-group&p=19', 0, 'acf-field-group', '', 0),
(20, 1, '2022-09-04 03:21:11', '2022-09-04 03:21:11', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-09-04 05:01:16', '2022-09-04 05:01:16', '', 0, 'http://localhost/wp-ns-podcast/?page_id=20', 0, 'page', '', 0),
(21, 1, '2022-09-04 03:21:11', '2022-09-04 03:21:11', '', 'Home', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2022-09-04 03:21:11', '2022-09-04 03:21:11', '', 20, 'http://localhost/wp-ns-podcast/?p=21', 0, 'revision', '', 0),
(22, 1, '2022-09-04 03:24:02', '2022-09-04 03:24:02', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"118\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'header', 'header', 'publish', 'closed', 'closed', '', 'group_631419d607525', '', '', '2022-09-06 09:03:20', '2022-09-06 09:03:20', '', 0, 'http://localhost/wp-ns-podcast/?post_type=acf-field-group&#038;p=22', 0, 'acf-field-group', '', 0),
(26, 1, '2022-09-04 03:27:06', '2022-09-04 03:27:06', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'header', 'header', 'publish', 'closed', 'closed', '', 'field_63141a7978106', '', '', '2022-09-06 08:55:42', '2022-09-06 08:55:42', '', 22, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=26', 0, 'acf-field', '', 0),
(27, 1, '2022-09-04 03:27:07', '2022-09-04 03:27:07', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_63141a8e78107', '', '', '2022-09-06 08:55:43', '2022-09-06 08:55:43', '', 26, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=27', 0, 'acf-field', '', 0),
(28, 1, '2022-09-04 03:27:08', '2022-09-04 03:27:08', 'a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"page\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}', 'Menu', 'menu', 'publish', 'closed', 'closed', '', 'field_63141aa278108', '', '', '2022-09-06 08:55:44', '2022-09-06 08:55:44', '', 26, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=28', 1, 'acf-field', '', 0),
(29, 1, '2022-09-04 03:27:08', '2022-09-04 03:27:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'buttonSubscribe', 'buttonsubscribe', 'publish', 'closed', 'closed', '', 'field_63141abb78109', '', '', '2022-09-06 08:55:44', '2022-09-06 08:55:44', '', 26, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=29', 2, 'acf-field', '', 0),
(30, 1, '2022-09-04 03:34:34', '2022-09-04 03:34:34', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"120\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'footer', 'footer', 'publish', 'closed', 'closed', '', 'group_63141b40a2abf', '', '', '2022-09-06 10:05:33', '2022-09-06 10:05:33', '', 0, 'http://localhost/wp-ns-podcast/?post_type=acf-field-group&#038;p=30', 0, 'acf-field-group', '', 0),
(31, 1, '2022-09-04 03:34:34', '2022-09-04 03:34:34', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'footer', 'footer', 'publish', 'closed', 'closed', '', 'field_63141b6da9653', '', '', '2022-09-06 08:57:00', '2022-09-06 08:57:00', '', 30, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=31', 0, 'acf-field', '', 0),
(32, 1, '2022-09-04 03:34:35', '2022-09-04 03:34:35', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'logo', 'logo', 'publish', 'closed', 'closed', '', 'field_63141b7ea9654', '', '', '2022-09-06 08:57:01', '2022-09-06 08:57:01', '', 31, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=32', 0, 'acf-field', '', 0),
(34, 1, '2022-09-04 03:34:37', '2022-09-04 03:34:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_63141bcaa9656', '', '', '2022-09-06 08:59:53', '2022-09-06 08:59:53', '', 31, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=34', 1, 'acf-field', '', 0),
(37, 1, '2022-09-04 03:34:37', '2022-09-04 03:34:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Rights', 'rights', 'publish', 'closed', 'closed', '', 'field_63141caca9659', '', '', '2022-09-06 10:05:28', '2022-09-06 10:05:28', '', 31, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=37', 2, 'acf-field', '', 0),
(38, 1, '2022-09-04 03:55:23', '2022-09-04 03:55:23', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"116\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'hero', 'hero', 'publish', 'closed', 'closed', '', 'group_631420390e0b5', '', '', '2022-09-06 09:01:51', '2022-09-06 09:01:51', '', 0, 'http://localhost/wp-ns-podcast/?post_type=acf-field-group&#038;p=38', 0, 'acf-field-group', '', 0),
(39, 1, '2022-09-04 03:55:23', '2022-09-04 03:55:23', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'hero', 'hero', 'publish', 'closed', 'closed', '', 'field_63142050472a9', '', '', '2022-09-06 08:54:01', '2022-09-06 08:54:01', '', 38, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=39', 0, 'acf-field', '', 0),
(40, 1, '2022-09-04 03:55:25', '2022-09-04 03:55:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Trending', 'trending', 'publish', 'closed', 'closed', '', 'field_6314205f472aa', '', '', '2022-09-06 08:54:01', '2022-09-06 08:54:01', '', 39, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=40', 0, 'acf-field', '', 0),
(41, 1, '2022-09-04 03:55:27', '2022-09-04 03:55:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_631420cb472ab', '', '', '2022-09-06 08:54:01', '2022-09-06 08:54:01', '', 39, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=41', 1, 'acf-field', '', 0),
(42, 1, '2022-09-04 03:55:28', '2022-09-04 03:55:28', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_631420e4472ac', '', '', '2022-09-06 08:54:02', '2022-09-06 08:54:02', '', 39, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=42', 2, 'acf-field', '', 0),
(43, 1, '2022-09-04 03:55:31', '2022-09-04 03:55:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Listen', 'listen', 'publish', 'closed', 'closed', '', 'field_63142108472ad', '', '', '2022-09-06 08:54:03', '2022-09-06 08:54:03', '', 39, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=43', 3, 'acf-field', '', 0),
(44, 1, '2022-09-04 03:55:32', '2022-09-04 03:55:32', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Media', 'media', 'publish', 'closed', 'closed', '', 'field_6314211b472ae', '', '', '2022-09-06 08:54:03', '2022-09-06 08:54:03', '', 39, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=44', 4, 'acf-field', '', 0),
(45, 1, '2022-09-04 04:12:19', '2022-09-04 04:12:19', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"cpt-podcast\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'espisode', 'espisode', 'publish', 'closed', 'closed', '', 'group_631421da4c1b6', '', '', '2022-09-06 07:32:04', '2022-09-06 07:32:04', '', 0, 'http://localhost/wp-ns-podcast/?post_type=acf-field-group&#038;p=45', 0, 'acf-field-group', '', 0),
(46, 1, '2022-09-04 04:12:20', '2022-09-04 04:12:20', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'episode', 'episode', 'publish', 'closed', 'closed', '', 'field_631422f4c185a', '', '', '2022-09-06 07:28:05', '2022-09-06 07:28:05', '', 45, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=46', 0, 'acf-field', '', 0),
(49, 1, '2022-09-04 04:12:22', '2022-09-04 04:12:22', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Picture', 'picture', 'publish', 'closed', 'closed', '', 'field_6314248bc1860', '', '', '2022-09-06 07:32:01', '2022-09-06 07:32:01', '', 46, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=49', 0, 'acf-field', '', 0),
(50, 1, '2022-09-04 04:12:23', '2022-09-04 04:12:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_631424dcc1861', '', '', '2022-09-06 07:32:01', '2022-09-06 07:32:01', '', 46, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=50', 1, 'acf-field', '', 0),
(51, 1, '2022-09-04 04:12:23', '2022-09-04 04:12:23', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_631424e7c1862', '', '', '2022-09-06 07:32:02', '2022-09-06 07:32:02', '', 46, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=51', 2, 'acf-field', '', 0),
(52, 1, '2022-09-04 04:12:23', '2022-09-04 04:12:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Button', 'button', 'publish', 'closed', 'closed', '', 'field_631424f6c1863', '', '', '2022-09-06 07:32:02', '2022-09-06 07:32:02', '', 46, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=52', 3, 'acf-field', '', 0),
(53, 1, '2022-09-04 04:12:24', '2022-09-04 04:12:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Season', 'season', 'publish', 'closed', 'closed', '', 'field_63142502c1864', '', '', '2022-09-06 07:32:02', '2022-09-06 07:32:02', '', 46, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=53', 4, 'acf-field', '', 0),
(54, 1, '2022-09-04 04:12:24', '2022-09-04 04:12:24', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:6:\"F j, Y\";s:9:\"first_day\";i:1;}', 'Date', 'date', 'publish', 'closed', 'closed', '', 'field_6314250fc1865', '', '', '2022-09-06 07:32:03', '2022-09-06 07:32:03', '', 46, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=54', 5, 'acf-field', '', 0),
(55, 1, '2022-09-04 04:12:24', '2022-09-04 04:12:24', 'a:12:{s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:5:\"audio\";s:5:\"audio\";s:7:\"goobyes\";s:7:\"goobyes\";s:4:\"life\";s:4:\"life\";}s:12:\"allow_custom\";i:0;s:13:\"default_value\";a:0:{}s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"save_custom\";i:0;}', 'Type', 'type', 'publish', 'closed', 'closed', '', 'field_63142550c1866', '', '', '2022-09-06 07:32:03', '2022-09-06 07:32:03', '', 46, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=55', 6, 'acf-field', '', 0),
(56, 1, '2022-09-04 04:15:37', '2022-09-04 04:15:37', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"17\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'blog', 'blog', 'publish', 'closed', 'closed', '', 'group_631425b929e3c', '', '', '2022-09-06 08:15:23', '2022-09-06 08:15:23', '', 0, 'http://localhost/wp-ns-podcast/?post_type=acf-field-group&#038;p=56', 0, 'acf-field-group', '', 0),
(57, 1, '2022-09-04 04:15:38', '2022-09-04 04:15:38', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'blog', 'blog', 'publish', 'closed', 'closed', '', 'field_631425c78a6cf', '', '', '2022-09-06 08:15:08', '2022-09-06 08:15:08', '', 56, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=57', 0, 'acf-field', '', 0),
(58, 1, '2022-09-04 04:15:39', '2022-09-04 04:15:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Autor', 'autor', 'publish', 'closed', 'closed', '', 'field_631425e08a6d0', '', '', '2022-09-06 08:15:09', '2022-09-06 08:15:09', '', 57, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=58', 0, 'acf-field', '', 0),
(59, 1, '2022-09-04 04:15:41', '2022-09-04 04:15:41', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:6:\"F j, Y\";s:9:\"first_day\";i:1;}', 'Date', 'date', 'publish', 'closed', 'closed', '', 'field_631425fd8a6d1', '', '', '2022-09-06 08:15:09', '2022-09-06 08:15:09', '', 57, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=59', 1, 'acf-field', '', 0),
(60, 1, '2022-09-04 04:15:42', '2022-09-04 04:15:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Enterprise', 'enterprise', 'publish', 'closed', 'closed', '', 'field_631426108a6d2', '', '', '2022-09-06 08:15:10', '2022-09-06 08:15:10', '', 57, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=60', 2, 'acf-field', '', 0),
(61, 1, '2022-09-04 04:15:43', '2022-09-04 04:15:43', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_631426358a6d3', '', '', '2022-09-06 08:15:10', '2022-09-06 08:15:10', '', 57, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=61', 3, 'acf-field', '', 0),
(62, 1, '2022-09-04 04:15:44', '2022-09-04 04:15:44', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_631426468a6d4', '', '', '2022-09-06 08:15:10', '2022-09-06 08:15:10', '', 57, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=62', 4, 'acf-field', '', 0),
(63, 1, '2022-09-04 04:15:45', '2022-09-04 04:15:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Button', 'button', 'publish', 'closed', 'closed', '', 'field_6314265c8a6d5', '', '', '2022-09-06 08:15:10', '2022-09-06 08:15:10', '', 57, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=63', 5, 'acf-field', '', 0),
(64, 1, '2022-09-04 04:18:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-09-04 04:18:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-ns-podcast/?post_type=acf-field-group&p=64', 0, 'acf-field-group', '', 0),
(65, 1, '2022-09-04 04:22:56', '2022-09-04 04:22:56', '', 'Gallery', '', 'publish', 'open', 'open', '', 'gallery', '', '', '2022-09-06 08:24:31', '2022-09-06 08:24:31', '', 0, 'http://localhost/wp-ns-podcast/?p=65', 3, 'post', '', 0),
(66, 1, '2022-09-04 04:22:56', '2022-09-04 04:22:56', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2022-09-04 04:22:56', '2022-09-04 04:22:56', '', 65, 'http://localhost/wp-ns-podcast/?p=66', 0, 'revision', '', 0),
(67, 1, '2022-09-04 04:24:40', '2022-09-04 04:24:40', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"65\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'gallery', 'gallery', 'publish', 'closed', 'closed', '', 'group_6314282ae47f8', '', '', '2022-09-06 08:23:56', '2022-09-06 08:23:56', '', 0, 'http://localhost/wp-ns-podcast/?post_type=acf-field-group&#038;p=67', 0, 'acf-field-group', '', 0),
(68, 1, '2022-09-04 04:24:41', '2022-09-04 04:24:41', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'gallery', 'gallery', 'publish', 'closed', 'closed', '', 'field_6314283e8bbba', '', '', '2022-09-06 08:23:54', '2022-09-06 08:23:54', '', 67, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=68', 0, 'acf-field', '', 0),
(69, 1, '2022-09-04 04:24:41', '2022-09-04 04:24:41', 'a:7:{s:4:\"type\";s:13:\"photo_gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:24:\"fields[c-gallery_picture\";a:4:{s:10:\"edit_modal\";s:7:\"Default\";s:12:\"images_limit\";s:0:\"\";s:18:\"remove_edit_button\";s:2:\"No\";s:20:\"remove_delete_button\";s:2:\"No\";}s:10:\"edit_modal\";s:7:\"Default\";}', 'Picture', 'picture', 'publish', 'closed', 'closed', '', 'field_631428558bbbb', '', '', '2022-09-06 08:23:54', '2022-09-06 08:23:54', '', 68, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=69', 0, 'acf-field', '', 0),
(70, 1, '2022-09-04 04:24:42', '2022-09-04 04:24:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_631428708bbbc', '', '', '2022-09-06 08:23:55', '2022-09-06 08:23:55', '', 68, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=70', 1, 'acf-field', '', 0),
(71, 1, '2022-09-04 04:25:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-09-04 04:25:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-ns-podcast/?post_type=cpt-podcast&p=71', 0, 'cpt-podcast', '', 0),
(72, 1, '2022-09-04 04:30:22', '2022-09-04 04:30:22', '<label> Your name\n    [text* your-name] </label>\n\n<label> Your email\n    [email* your-email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <elvisgomezfloegel@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <elvisgomezfloegel@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2022-09-04 04:30:22', '2022-09-04 04:30:22', '', 0, 'http://localhost/wp-ns-podcast/?post_type=wpcf7_contact_form&p=72', 0, 'wpcf7_contact_form', '', 0),
(73, 1, '2022-09-04 04:40:45', '2022-09-04 04:40:45', '', 'Subscribe', '', 'publish', 'open', 'open', '', 'subscribe', '', '', '2022-09-06 09:48:29', '2022-09-06 09:48:29', '', 0, 'http://localhost/wp-ns-podcast/?p=73', 4, 'post', '', 0),
(74, 1, '2022-09-04 04:40:45', '2022-09-04 04:40:45', '', 'Subscribe', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2022-09-04 04:40:45', '2022-09-04 04:40:45', '', 73, 'http://localhost/wp-ns-podcast/?p=74', 0, 'revision', '', 0),
(75, 1, '2022-09-04 04:40:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-09-04 04:40:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-ns-podcast/?post_type=acf-field-group&p=75', 0, 'acf-field-group', '', 0),
(76, 1, '2022-09-04 04:43:11', '2022-09-04 04:43:11', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"73\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'subscribe', 'subscribe', 'publish', 'closed', 'closed', '', 'group_63142c5ce98a6', '', '', '2022-09-06 09:47:47', '2022-09-06 09:47:47', '', 0, 'http://localhost/wp-ns-podcast/?post_type=acf-field-group&#038;p=76', 0, 'acf-field-group', '', 0),
(77, 1, '2022-09-04 04:43:11', '2022-09-04 04:43:11', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'subscribe', 'subscribe', 'publish', 'closed', 'closed', '', 'field_63142c7a01ac6', '', '', '2022-09-06 08:53:03', '2022-09-06 08:53:03', '', 76, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=77', 0, 'acf-field', '', 0),
(78, 1, '2022-09-04 04:43:12', '2022-09-04 04:43:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_63142c8501ac7', '', '', '2022-09-06 08:53:04', '2022-09-06 08:53:04', '', 77, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=78', 0, 'acf-field', '', 0),
(79, 1, '2022-09-04 04:43:12', '2022-09-04 04:43:12', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_63142c9d01ac8', '', '', '2022-09-06 08:53:05', '2022-09-06 08:53:05', '', 77, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=79', 1, 'acf-field', '', 0),
(80, 1, '2022-09-04 04:43:13', '2022-09-04 04:43:13', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Email', 'email', 'publish', 'closed', 'closed', '', 'field_63142cad01ac9', '', '', '2022-09-06 09:47:46', '2022-09-06 09:47:46', '', 77, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=80', 2, 'acf-field', '', 0),
(81, 1, '2022-09-04 04:43:13', '2022-09-04 04:43:13', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Button', 'button', 'publish', 'closed', 'closed', '', 'field_63142cd201aca', '', '', '2022-09-06 08:53:05', '2022-09-06 08:53:05', '', 77, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=81', 3, 'acf-field', '', 0),
(82, 1, '2022-09-04 04:44:41', '2022-09-04 04:44:41', '', 'ns-logo', '', 'inherit', 'open', 'closed', '', 'ns-logo', '', '', '2022-09-04 04:44:41', '2022-09-04 04:44:41', '', 20, 'http://localhost/wp-ns-podcast/wp-content/uploads/2022/09/ns-logo.png', 0, 'attachment', 'image/png', 0),
(83, 1, '2022-09-04 04:54:34', '2022-09-04 04:54:34', '', 'ns-logo-b', '', 'inherit', 'open', 'closed', '', 'ns-logo-b', '', '', '2022-09-04 04:54:34', '2022-09-04 04:54:34', '', 20, 'http://localhost/wp-ns-podcast/wp-content/uploads/2022/09/ns-logo-b.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2022-09-04 04:59:14', '2022-09-04 04:59:14', '', 'ns-apple-podcast', '', 'inherit', 'open', 'closed', '', 'ns-apple-podcast', '', '', '2022-09-04 04:59:14', '2022-09-04 04:59:14', '', 20, 'http://localhost/wp-ns-podcast/wp-content/uploads/2022/09/ns-apple-podcast.png', 0, 'attachment', 'image/png', 0),
(85, 1, '2022-09-04 04:59:16', '2022-09-04 04:59:16', '', 'ns-google-podcast', '', 'inherit', 'open', 'closed', '', 'ns-google-podcast', '', '', '2022-09-04 04:59:16', '2022-09-04 04:59:16', '', 20, 'http://localhost/wp-ns-podcast/wp-content/uploads/2022/09/ns-google-podcast.png', 0, 'attachment', 'image/png', 0),
(86, 1, '2022-09-04 04:59:17', '2022-09-04 04:59:17', '', 'ns-spotify', '', 'inherit', 'open', 'closed', '', 'ns-spotify', '', '', '2022-09-04 04:59:17', '2022-09-04 04:59:17', '', 20, 'http://localhost/wp-ns-podcast/wp-content/uploads/2022/09/ns-spotify.png', 0, 'attachment', 'image/png', 0),
(87, 1, '2022-09-04 05:01:16', '2022-09-04 05:01:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2022-09-04 05:01:16', '2022-09-04 05:01:16', '', 20, 'http://localhost/wp-ns-podcast/?p=87', 0, 'revision', '', 0),
(88, 1, '2022-09-04 05:05:31', '2022-09-04 05:05:31', '', 'Episode 1', '', 'publish', 'closed', 'closed', '', 'latest-podcast', '', '', '2022-09-06 07:35:19', '2022-09-06 07:35:19', '', 0, 'http://localhost/wp-ns-podcast/?post_type=cpt-podcast&#038;p=88', 2, 'cpt-podcast', '', 0),
(89, 1, '2022-09-04 05:03:36', '2022-09-04 05:03:36', '', 'developer', '', 'inherit', 'open', 'closed', '', 'developer', '', '', '2022-09-04 05:03:36', '2022-09-04 05:03:36', '', 88, 'http://localhost/wp-ns-podcast/wp-content/uploads/2022/09/developer.jpeg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2022-09-04 05:05:31', '2022-09-04 05:05:31', '', 'Latest Podcast', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2022-09-04 05:05:31', '2022-09-04 05:05:31', '', 88, 'http://localhost/wp-ns-podcast/?p=90', 0, 'revision', '', 0),
(91, 1, '2022-09-04 05:07:06', '2022-09-04 05:07:06', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '17-autosave-v1', '', '', '2022-09-04 05:07:06', '2022-09-04 05:07:06', '', 17, 'http://localhost/wp-ns-podcast/?p=91', 0, 'revision', '', 0),
(92, 1, '2022-09-04 05:07:40', '2022-09-04 05:07:40', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2022-09-04 05:07:40', '2022-09-04 05:07:40', '', 17, 'http://localhost/wp-ns-podcast/?p=92', 0, 'revision', '', 0),
(93, 1, '2022-09-04 05:09:05', '2022-09-04 05:09:05', '', 'Portada', '', 'inherit', 'open', 'closed', '', 'portada', '', '', '2022-09-04 05:09:05', '2022-09-04 05:09:05', '', 65, 'http://localhost/wp-ns-podcast/wp-content/uploads/2022/09/Portada.jpeg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2022-09-04 05:10:09', '2022-09-04 05:10:09', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2022-09-04 05:10:09', '2022-09-04 05:10:09', '', 65, 'http://localhost/wp-ns-podcast/?p=94', 0, 'revision', '', 0),
(95, 1, '2022-09-04 05:11:32', '2022-09-04 05:11:32', '', 'Subscribe', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2022-09-04 05:11:32', '2022-09-04 05:11:32', '', 73, 'http://localhost/wp-ns-podcast/?p=95', 0, 'revision', '', 0),
(96, 1, '2022-09-04 05:15:38', '2022-09-04 05:15:38', '', 'Episode 1', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2022-09-04 05:15:38', '2022-09-04 05:15:38', '', 88, 'http://localhost/wp-ns-podcast/?p=96', 0, 'revision', '', 0),
(97, 1, '2022-09-04 05:20:55', '2022-09-04 05:20:55', '', 'Episode 2', '', 'publish', 'closed', 'closed', '', 'episode-2', '', '', '2022-09-06 07:36:24', '2022-09-06 07:36:24', '', 0, 'http://localhost/wp-ns-podcast/?post_type=cpt-podcast&#038;p=97', 1, 'cpt-podcast', '', 0),
(98, 1, '2022-09-04 05:20:45', '2022-09-04 05:20:45', '', 'Episode 2', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2022-09-04 05:20:45', '2022-09-04 05:20:45', '', 97, 'http://localhost/wp-ns-podcast/?p=98', 0, 'revision', '', 0),
(99, 1, '2022-09-04 05:22:19', '2022-09-04 05:22:19', '', 'Episode 3', '', 'publish', 'closed', 'closed', '', 'episode-2-2', '', '', '2022-09-06 07:37:28', '2022-09-06 07:37:28', '', 0, 'http://localhost/wp-ns-podcast/?post_type=cpt-podcast&#038;p=99', 0, 'cpt-podcast', '', 0),
(100, 1, '2022-09-04 05:21:31', '2022-09-04 05:21:31', '', 'my machien', '', 'inherit', 'open', 'closed', '', 'my-machien', '', '', '2022-09-04 05:21:31', '2022-09-04 05:21:31', '', 99, 'http://localhost/wp-ns-podcast/wp-content/uploads/2022/09/my-machien.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2022-09-04 05:22:19', '2022-09-04 05:22:19', '', 'Episode 2', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2022-09-04 05:22:19', '2022-09-04 05:22:19', '', 99, 'http://localhost/wp-ns-podcast/?p=101', 0, 'revision', '', 0),
(102, 1, '2022-09-04 05:26:06', '2022-09-04 05:26:06', '', 'Episode 1', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2022-09-04 05:26:06', '2022-09-04 05:26:06', '', 88, 'http://localhost/wp-ns-podcast/?p=102', 0, 'revision', '', 0),
(103, 1, '2022-09-04 05:26:43', '2022-09-04 05:26:43', '', 'Episode 2', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2022-09-04 05:26:43', '2022-09-04 05:26:43', '', 97, 'http://localhost/wp-ns-podcast/?p=103', 0, 'revision', '', 0),
(104, 1, '2022-09-04 05:27:07', '2022-09-04 05:27:07', '', 'Episode 3', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2022-09-04 05:27:07', '2022-09-04 05:27:07', '', 99, 'http://localhost/wp-ns-podcast/?p=104', 0, 'revision', '', 0),
(105, 1, '2022-09-04 06:19:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-09-04 06:19:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-ns-podcast/?page_id=105', 0, 'page', '', 0),
(106, 1, '2022-09-06 06:24:01', '2022-09-06 06:24:01', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2022-09-06 06:24:01', '2022-09-06 06:24:01', '', 0, 'http://localhost/wp-ns-podcast/?page_id=106', 0, 'page', '', 0),
(107, 1, '2022-09-06 06:24:01', '2022-09-06 06:24:01', '', 'About', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2022-09-06 06:24:01', '2022-09-06 06:24:01', '', 106, 'http://localhost/wp-ns-podcast/?p=107', 0, 'revision', '', 0),
(108, 1, '2022-09-06 07:35:19', '2022-09-06 07:35:19', '', 'Episode 1', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2022-09-06 07:35:19', '2022-09-06 07:35:19', '', 88, 'http://localhost/wp-ns-podcast/?p=108', 0, 'revision', '', 0),
(109, 1, '2022-09-06 07:36:24', '2022-09-06 07:36:24', '', 'Episode 2', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2022-09-06 07:36:24', '2022-09-06 07:36:24', '', 97, 'http://localhost/wp-ns-podcast/?p=109', 0, 'revision', '', 0),
(110, 1, '2022-09-06 07:37:28', '2022-09-06 07:37:28', '', 'Episode 3', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2022-09-06 07:37:28', '2022-09-06 07:37:28', '', 99, 'http://localhost/wp-ns-podcast/?p=110', 0, 'revision', '', 0),
(111, 1, '2022-09-06 08:16:31', '2022-09-06 08:16:31', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2022-09-06 08:16:31', '2022-09-06 08:16:31', '', 17, 'http://localhost/wp-ns-podcast/?p=111', 0, 'revision', '', 0),
(112, 1, '2022-09-06 08:55:44', '2022-09-06 08:55:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'buttonlogin', 'buttonlogin', 'publish', 'closed', 'closed', '', 'field_63170af2b8103', '', '', '2022-09-06 08:55:44', '2022-09-06 08:55:44', '', 26, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=112', 3, 'acf-field', '', 0),
(113, 1, '2022-09-06 08:59:55', '2022-09-06 08:59:55', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'linkedin', 'linkedin', 'publish', 'closed', 'closed', '', 'field_63170bdbab086', '', '', '2022-09-06 10:05:28', '2022-09-06 10:05:28', '', 31, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=113', 3, 'acf-field', '', 0),
(114, 1, '2022-09-06 08:59:56', '2022-09-06 08:59:56', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Instagram', 'instagram', 'publish', 'closed', 'closed', '', 'field_63170bebab087', '', '', '2022-09-06 10:05:29', '2022-09-06 10:05:29', '', 31, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=114', 4, 'acf-field', '', 0),
(115, 1, '2022-09-06 08:59:57', '2022-09-06 08:59:57', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Skype', 'skype', 'publish', 'closed', 'closed', '', 'field_63170bfbab088', '', '', '2022-09-06 10:05:29', '2022-09-06 10:05:29', '', 31, 'http://localhost/wp-ns-podcast/?post_type=acf-field&#038;p=115', 5, 'acf-field', '', 0),
(116, 1, '2022-09-06 09:01:06', '2022-09-06 09:01:06', '', 'Hero', '', 'publish', 'open', 'open', '', 'hero', '', '', '2022-09-06 09:07:28', '2022-09-06 09:07:28', '', 0, 'http://localhost/wp-ns-podcast/?p=116', 1, 'post', '', 0),
(117, 1, '2022-09-06 09:01:06', '2022-09-06 09:01:06', '', 'Hero', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2022-09-06 09:01:06', '2022-09-06 09:01:06', '', 116, 'http://localhost/wp-ns-podcast/?p=117', 0, 'revision', '', 0),
(118, 1, '2022-09-06 09:02:19', '2022-09-06 09:02:19', '', 'Header', '', 'publish', 'open', 'open', '', 'header', '', '', '2022-09-06 09:05:42', '2022-09-06 09:05:42', '', 0, 'http://localhost/wp-ns-podcast/?p=118', 0, 'post', '', 0),
(119, 1, '2022-09-06 09:02:19', '2022-09-06 09:02:19', '', 'Header', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2022-09-06 09:02:19', '2022-09-06 09:02:19', '', 118, 'http://localhost/wp-ns-podcast/?p=119', 0, 'revision', '', 0),
(120, 1, '2022-09-06 09:02:33', '2022-09-06 09:02:33', '', 'Footer', '', 'publish', 'open', 'open', '', 'footer', '', '', '2022-09-06 10:06:09', '2022-09-06 10:06:09', '', 0, 'http://localhost/wp-ns-podcast/?p=120', 5, 'post', '', 0),
(121, 1, '2022-09-06 09:02:33', '2022-09-06 09:02:33', '', 'Footer', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2022-09-06 09:02:33', '2022-09-06 09:02:33', '', 120, 'http://localhost/wp-ns-podcast/?p=121', 0, 'revision', '', 0),
(122, 1, '2022-09-06 09:04:49', '2022-09-06 09:04:49', '', 'ns-logo-b', '', 'inherit', 'open', 'closed', '', 'ns-logo-b-2', '', '', '2022-09-06 09:04:49', '2022-09-06 09:04:49', '', 118, 'http://localhost/wp-ns-podcast/wp-content/uploads/2022/09/ns-logo-b-1.png', 0, 'attachment', 'image/png', 0),
(123, 1, '2022-09-06 09:05:42', '2022-09-06 09:05:42', '', 'Header', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2022-09-06 09:05:42', '2022-09-06 09:05:42', '', 118, 'http://localhost/wp-ns-podcast/?p=123', 0, 'revision', '', 0),
(124, 1, '2022-09-06 09:07:16', '2022-09-06 09:07:16', '', 'Podcast', '', 'inherit', 'open', 'closed', '', 'podcast', '', '', '2022-09-06 09:07:16', '2022-09-06 09:07:16', '', 116, 'http://localhost/wp-ns-podcast/wp-content/uploads/2022/09/Podcast.png', 0, 'attachment', 'image/png', 0),
(125, 1, '2022-09-06 09:07:28', '2022-09-06 09:07:28', '', 'Hero', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2022-09-06 09:07:28', '2022-09-06 09:07:28', '', 116, 'http://localhost/wp-ns-podcast/?p=125', 0, 'revision', '', 0),
(126, 1, '2022-09-06 09:08:37', '2022-09-06 09:08:37', '', 'Subscribe', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2022-09-06 09:08:37', '2022-09-06 09:08:37', '', 73, 'http://localhost/wp-ns-podcast/?p=126', 0, 'revision', '', 0),
(127, 1, '2022-09-06 09:11:56', '2022-09-06 09:11:56', '', 'Footer', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2022-09-06 09:11:56', '2022-09-06 09:11:56', '', 120, 'http://localhost/wp-ns-podcast/?p=127', 0, 'revision', '', 0),
(128, 1, '2022-09-06 09:48:29', '2022-09-06 09:48:29', '', 'Subscribe', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2022-09-06 09:48:29', '2022-09-06 09:48:29', '', 73, 'http://localhost/wp-ns-podcast/?p=128', 0, 'revision', '', 0),
(129, 1, '2022-09-06 10:05:30', '2022-09-06 10:05:30', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_63171b59c5e65', '', '', '2022-09-06 10:05:30', '2022-09-06 10:05:30', '', 31, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=129', 6, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(130, 1, '2022-09-06 10:06:09', '2022-09-06 10:06:09', '', 'Footer', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2022-09-06 10:06:09', '2022-09-06 10:06:09', '', 120, 'http://localhost/wp-ns-podcast/?p=130', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'twentytwentytwo', 'twentytwentytwo', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(9, 2, 0),
(17, 1, 0),
(65, 1, 0),
(73, 1, 0),
(116, 1, 0),
(118, 1, 0),
(120, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
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
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6),
(2, 2, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'nspod'),
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"65cb0883327c60b66934157263a633d69cc0be7f646fbeae976aeb729159019b\";a:4:{s:10:\"expiration\";i:1662621163;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\";s:5:\"login\";i:1662448363;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_yoast_notifications', 'a:3:{i:0;a:2:{s:7:\"message\";s:343:\"<p>We see that you enabled automatic updates for WordPress. We recommend that you do this for Yoast SEO as well. This way we can guarantee that WordPress and Yoast SEO will continue to run smoothly together. <a href=\"http://localhost/wp-ns-podcast/wp-admin/plugins.php\">Go to your plugins overview to enable auto-updates for Yoast SEO.</a></p>\";s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-auto-update\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:5:\"nspod\";s:9:\"user_pass\";s:34:\"$P$BeqfmhRhIco4c7vvqygqFgHTbe0Lci.\";s:13:\"user_nicename\";s:5:\"nspod\";s:10:\"user_email\";s:27:\"elvisgomezfloegel@gmail.com\";s:8:\"user_url\";s:30:\"http://localhost/wp-ns-podcast\";s:15:\"user_registered\";s:19:\"2022-09-03 19:51:50\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:5:\"nspod\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:484:\"<p><strong>Huge SEO Issue: You&#039;re blocking access to robots.</strong> If you want search engines to show this site in their results, you must <a href=\"http://localhost/wp-ns-podcast/wp-admin/options-reading.php\">go to your Reading Settings</a> and uncheck the box for Search Engine Visibility. <button type=\"button\" id=\"robotsmessage-dismiss-button\" class=\"button-link hide-if-no-js\" data-nonce=\"3857d4707b\">I don&#039;t want this site to show in the search results.</button></p>\";s:7:\"options\";a:10:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:32:\"wpseo-search-engines-discouraged\";s:4:\"user\";r:7;s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:2;a:2:{s:7:\"message\";O:61:\"Yoast\\WP\\SEO\\Presenters\\Admin\\Indexing_Notification_Presenter\":3:{s:18:\"\0*\0total_unindexed\";i:16;s:9:\"\0*\0reason\";s:26:\"permalink_settings_changed\";s:20:\"\0*\0short_link_helper\";O:38:\"Yoast\\WP\\SEO\\Helpers\\Short_Link_Helper\":2:{s:17:\"\0*\0options_helper\";O:35:\"Yoast\\WP\\SEO\\Helpers\\Options_Helper\":0:{}s:17:\"\0*\0product_helper\";O:35:\"Yoast\\WP\\SEO\\Helpers\\Product_Helper\":0:{}}}s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:13:\"wpseo-reindex\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:5:\"nspod\";s:9:\"user_pass\";s:34:\"$P$BeqfmhRhIco4c7vvqygqFgHTbe0Lci.\";s:13:\"user_nicename\";s:5:\"nspod\";s:10:\"user_email\";s:27:\"elvisgomezfloegel@gmail.com\";s:8:\"user_url\";s:30:\"http://localhost/wp-ns-podcast\";s:15:\"user_registered\";s:19:\"2022-09-03 19:51:50\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:5:\"nspod\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(19, 1, '_yoast_wpseo_profile_updated', '1662242704'),
(20, 1, 'acf_to_rest_api_donation_version', '3.3.3'),
(21, 1, 'meta-box-order_cpt-podcast', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:33:\"submitdiv,postimagediv,wpseo_meta\";s:6:\"normal\";s:7:\"slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(22, 1, 'screen_layout_cpt-podcast', '2'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:25:\"add-post-type-cpt-podcast\";i:1;s:12:\"add-post_tag\";}'),
(25, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(26, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(27, 1, 'closedpostboxes_page', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(28, 1, 'metaboxhidden_page', 'a:4:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}'),
(29, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:129:\"wpseo_meta,acf-group_631419d607525,acf-group_631420390e0b5,acf-group_63141b40a2abf,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(30, 1, 'screen_layout_page', '2'),
(31, 1, 'closedpostboxes_post', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(32, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(33, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse'),
(34, 1, 'wp_user-settings-time', '1662267678');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
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
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'nspod', '$P$BeqfmhRhIco4c7vvqygqFgHTbe0Lci.', 'nspod', 'elvisgomezfloegel@gmail.com', 'http://localhost/wp-ns-podcast', '2022-09-03 19:51:50', '', 0, 'nspod');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_yoast_indexable`
--

CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0,
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT 1,
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`) VALUES
(1, 'http://localhost/wp-ns-podcast/category/uncategorized/', '54:278f92f5fbd3a61bd3b9ce3e845cebd0', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Uncategorized', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-03 20:46:16', '2022-09-06 16:06:12', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-06 10:06:09', '2022-09-04 03:02:19'),
(2, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, 'Error 404: Page not found', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-03 20:46:17', '2022-09-06 12:21:17', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(3, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-03 20:46:17', '2022-09-06 12:21:17', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(4, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-03 20:46:17', '2022-09-06 12:21:17', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL),
(5, 'http://localhost/wp-ns-podcast/', '31:08cf03a4b56129c0cba8887f7d6eb975', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', 'Just another WordPress site', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2022-09-03 20:46:17', '2022-09-06 16:06:12', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-06 10:06:09', '2022-09-04 03:02:19'),
(6, 'http://localhost/wp-ns-podcast/author/nspod/', '44:7ed6546598ac5fc1dc8cbb377e31e33b', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://1.gravatar.com/avatar/72c1084c6edeb64addda7fe0b7c2a0a6?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://1.gravatar.com/avatar/72c1084c6edeb64addda7fe0b7c2a0a6?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2022-09-04 03:01:34', '2022-09-06 16:06:12', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-06 10:06:09', '2022-09-03 20:30:18'),
(7, 'http://localhost/wp-ns-podcast/blog/', '36:bd3bd79130b90934cf922bb48de71ad0', 17, 'post', 'post', 1, 0, NULL, NULL, 'Blog', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 03:01:34', '2022-09-06 14:16:36', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-09-06 08:16:31', '2022-09-04 03:02:19'),
(8, 'http://localhost/wp-ns-podcast/home/', '36:19298bbf5ccd43389b877f572b933ac6', 20, 'post', 'page', 1, 0, NULL, NULL, 'Home', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 03:21:11', '2022-09-06 12:22:16', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-09-04 05:01:16', '2022-09-04 03:21:11'),
(9, 'http://localhost/wp-ns-podcast/?post_type=acf-field-group&p=22', '62:9dec13202f6dbf0f81523d1bf3bf1fb2', 22, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'header', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 03:24:02', '2022-09-06 15:03:20', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-06 09:03:20', '2022-09-04 03:24:02'),
(13, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=26', '56:159659b09cfd29088f6bb0eb4fd8f4e3', 26, 'post', 'acf-field', 1, 22, NULL, NULL, 'header', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 03:27:07', '2022-09-06 14:55:43', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:55:42', '2022-09-04 03:27:06'),
(14, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=27', '56:b5150634858cb2e790315ce068afb0c9', 27, 'post', 'acf-field', 1, 26, NULL, NULL, 'Logo', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 03:27:07', '2022-09-06 14:55:44', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:55:43', '2022-09-04 03:27:07'),
(15, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=28', '56:b1f790699611f695d6549815bead2c30', 28, 'post', 'acf-field', 1, 26, NULL, NULL, 'Menu', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 03:27:08', '2022-09-06 14:55:44', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:55:44', '2022-09-04 03:27:08'),
(16, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=29', '56:8231a38172ea4ae46c232ba465b08ce8', 29, 'post', 'acf-field', 1, 26, NULL, NULL, 'buttonSubscribe', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 03:27:08', '2022-09-06 14:55:44', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:55:44', '2022-09-04 03:27:08'),
(17, 'http://localhost/wp-ns-podcast/?post_type=acf-field-group&p=30', '62:7b1854018d97ea66e0024d9d08e3017d', 30, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'footer', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 03:34:34', '2022-09-06 16:05:34', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-06 10:05:33', '2022-09-04 03:34:34'),
(18, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=31', '56:9954123d2034c6b5ae2d254873123faa', 31, 'post', 'acf-field', 1, 30, NULL, NULL, 'footer', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 03:34:34', '2022-09-06 14:57:01', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:57:00', '2022-09-04 03:34:34'),
(19, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=32', '56:b54255f06f5ac548f1b737a87e18ec69', 32, 'post', 'acf-field', 1, 31, NULL, NULL, 'logo', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 03:34:35', '2022-09-06 14:57:01', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:57:01', '2022-09-04 03:34:35'),
(21, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=34', '56:be2a58a51457df25aa59acdf13a147ba', 34, 'post', 'acf-field', 1, 31, NULL, NULL, 'Content', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 03:34:37', '2022-09-06 14:59:54', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:59:53', '2022-09-04 03:34:37'),
(24, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=37', '56:181336595cddbc68cfb757ce23cb7db8', 37, 'post', 'acf-field', 1, 31, NULL, NULL, 'Rights', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 03:34:37', '2022-09-06 16:05:28', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 10:05:28', '2022-09-04 03:34:37'),
(25, 'http://localhost/wp-ns-podcast/?post_type=acf-field-group&p=38', '62:368bf423a5896fd9888d51d6390bac52', 38, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'hero', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 03:55:24', '2022-09-06 15:01:52', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-06 09:01:51', '2022-09-04 03:55:23'),
(26, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=39', '56:1fc52a24532c7752d848538ea240ad23', 39, 'post', 'acf-field', 1, 38, NULL, NULL, 'hero', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 03:55:24', '2022-09-06 14:54:01', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:54:01', '2022-09-04 03:55:23'),
(27, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=40', '56:99410e8fc89ec36bbce5888dd401895c', 40, 'post', 'acf-field', 1, 39, NULL, NULL, 'Trending', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 03:55:26', '2022-09-06 14:54:01', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:54:01', '2022-09-04 03:55:25'),
(28, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=41', '56:9a0e1796cc9cd83fd0804f5f1796a9f1', 41, 'post', 'acf-field', 1, 39, NULL, NULL, 'Title', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 03:55:28', '2022-09-06 14:54:02', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:54:01', '2022-09-04 03:55:27'),
(29, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=42', '56:427830f828c4d2758730e845e199dc06', 42, 'post', 'acf-field', 1, 39, NULL, NULL, 'Content', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 03:55:29', '2022-09-06 14:54:03', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:54:02', '2022-09-04 03:55:28'),
(30, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=43', '56:963aa661fe1df171fc200fbd33c8c55c', 43, 'post', 'acf-field', 1, 39, NULL, NULL, 'Listen', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 03:55:32', '2022-09-06 14:54:03', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:54:03', '2022-09-04 03:55:31'),
(31, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=44', '56:5afa82edb2f984bd721fc0184cc9b2a0', 44, 'post', 'acf-field', 1, 39, NULL, NULL, 'Media', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 03:55:33', '2022-09-06 14:54:04', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:54:03', '2022-09-04 03:55:32'),
(32, 'http://localhost/wp-ns-podcast/?post_type=acf-field-group&p=45', '62:5457f0bb83faffcb02a33d33561b88af', 45, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'espisode', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:12:20', '2022-09-06 13:32:04', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-06 07:32:04', '2022-09-04 04:12:19'),
(33, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=46', '56:d431ef1a53e8df15e14642e563ac7d54', 46, 'post', 'acf-field', 1, 45, NULL, NULL, 'episode', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:12:20', '2022-09-06 13:28:06', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 07:28:05', '2022-09-04 04:12:20'),
(36, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=49', '56:27544ecf3adcffe5df7c20db1ad1e7e2', 49, 'post', 'acf-field', 1, 46, NULL, NULL, 'Picture', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:12:22', '2022-09-06 13:32:01', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 07:32:01', '2022-09-04 04:12:22'),
(37, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=50', '56:ddf5b0d5f8249dc02a7ce88f0214ce1b', 50, 'post', 'acf-field', 1, 46, NULL, NULL, 'Title', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:12:23', '2022-09-06 13:32:02', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 07:32:01', '2022-09-04 04:12:23'),
(38, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=51', '56:c1e953ad3e8bc6d2f14b4351cfe9fe30', 51, 'post', 'acf-field', 1, 46, NULL, NULL, 'Content', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:12:23', '2022-09-06 13:32:02', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 07:32:02', '2022-09-04 04:12:23'),
(39, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=52', '56:38a38a0f1257dc533bf16a3b86d168ae', 52, 'post', 'acf-field', 1, 46, NULL, NULL, 'Button', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:12:24', '2022-09-06 13:32:02', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 07:32:02', '2022-09-04 04:12:23'),
(40, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=53', '56:4247b47281e9d509536f783def95b118', 53, 'post', 'acf-field', 1, 46, NULL, NULL, 'Season', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:12:24', '2022-09-06 13:32:03', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 07:32:02', '2022-09-04 04:12:24'),
(41, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=54', '56:a3963dd889c606c40faf63d6e818badf', 54, 'post', 'acf-field', 1, 46, NULL, NULL, 'Date', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:12:24', '2022-09-06 13:32:03', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 07:32:03', '2022-09-04 04:12:24'),
(42, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=55', '56:943819a87da617980d395260d8b6f431', 55, 'post', 'acf-field', 1, 46, NULL, NULL, 'Type', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:12:24', '2022-09-06 13:32:04', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 07:32:03', '2022-09-04 04:12:24'),
(43, 'http://localhost/wp-ns-podcast/?post_type=acf-field-group&p=56', '62:a3c25e9e71160ab70bfff46acae15517', 56, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'blog', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:15:38', '2022-09-06 14:15:23', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-06 08:15:23', '2022-09-04 04:15:37'),
(44, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=57', '56:9adc04e4f1b648cce3ffa00efc9b86cb', 57, 'post', 'acf-field', 1, 56, NULL, NULL, 'blog', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:15:38', '2022-09-06 14:15:09', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:15:08', '2022-09-04 04:15:38'),
(45, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=58', '56:ff69b7e4b11f199d387124c201b79db3', 58, 'post', 'acf-field', 1, 57, NULL, NULL, 'Autor', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:15:40', '2022-09-06 14:15:09', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:15:09', '2022-09-04 04:15:39'),
(46, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=59', '56:c0892637f3cc8ecf3fb6dc5ae1d204bb', 59, 'post', 'acf-field', 1, 57, NULL, NULL, 'Date', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:15:41', '2022-09-06 14:15:10', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:15:09', '2022-09-04 04:15:41'),
(47, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=60', '56:be8a4df07845cded190e432852b91839', 60, 'post', 'acf-field', 1, 57, NULL, NULL, 'Enterprise', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:15:42', '2022-09-06 14:15:10', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:15:10', '2022-09-04 04:15:42'),
(48, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=61', '56:2415c05d153e8f3f2343b07541f14989', 61, 'post', 'acf-field', 1, 57, NULL, NULL, 'Title', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:15:43', '2022-09-06 14:15:10', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:15:10', '2022-09-04 04:15:43'),
(49, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=62', '56:360de81679762728c11a97ce47228cff', 62, 'post', 'acf-field', 1, 57, NULL, NULL, 'Content', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:15:45', '2022-09-06 14:15:10', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:15:10', '2022-09-04 04:15:44'),
(50, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=63', '56:7ed1b8f9d21827cf20daaaa45fdf996d', 63, 'post', 'acf-field', 1, 57, NULL, NULL, 'Button', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:15:46', '2022-09-06 14:15:11', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:15:10', '2022-09-04 04:15:45'),
(51, 'http://localhost/wp-ns-podcast/gallery/', '39:d08ba473e6c71c5edcbc3d0c94c4775b', 65, 'post', 'post', 1, 0, NULL, NULL, 'Gallery', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:22:58', '2022-09-06 14:24:34', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-09-06 08:24:31', '2022-09-04 04:22:56'),
(52, 'http://localhost/wp-ns-podcast/?post_type=acf-field-group&p=67', '62:9f2dd1d0873da8b596a83a3eb7eb7ea5', 67, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'gallery', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:24:41', '2022-09-06 14:23:57', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-06 08:23:56', '2022-09-04 04:24:40'),
(53, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=68', '56:21114b85ca6f87d72af3937181666d8b', 68, 'post', 'acf-field', 1, 67, NULL, NULL, 'gallery', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:24:41', '2022-09-06 14:23:54', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:23:54', '2022-09-04 04:24:41'),
(54, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=69', '56:63db9abcb485d0765d6a905b3d3c5fba', 69, 'post', 'acf-field', 1, 68, NULL, NULL, 'Picture', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:24:41', '2022-09-06 14:23:55', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:23:54', '2022-09-04 04:24:41'),
(55, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=70', '56:b21c9d8604f4bb5fceb0484bc339f4be', 70, 'post', 'acf-field', 1, 68, NULL, NULL, 'Title', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:24:42', '2022-09-06 14:23:56', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:23:55', '2022-09-04 04:24:42'),
(56, NULL, NULL, 72, 'post', 'wpcf7_contact_form', 1, 0, NULL, NULL, 'Contact form 1', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:30:23', '2022-09-05 14:31:18', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-09-04 04:30:22', '2022-09-04 04:30:22'),
(57, 'http://localhost/wp-ns-podcast/subscribe/', '41:a6de9c3f099725025b3686c87911f678', 73, 'post', 'post', 1, 0, NULL, NULL, 'Subscribe', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:40:47', '2022-09-06 15:48:33', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-09-06 09:48:29', '2022-09-04 04:40:45'),
(58, 'http://localhost/wp-ns-podcast/?post_type=acf-field-group&p=76', '62:efd52363d725a83ec65a9bbdb6df5d7d', 76, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'subscribe', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:43:11', '2022-09-06 15:47:48', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-06 09:47:47', '2022-09-04 04:43:11'),
(59, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=77', '56:c8d626672d17644f02f972a05ed1d21b', 77, 'post', 'acf-field', 1, 76, NULL, NULL, 'subscribe', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:43:11', '2022-09-06 14:53:04', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:53:03', '2022-09-04 04:43:11'),
(60, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=78', '56:ff849b7c90260d877fa57aa152b0927a', 78, 'post', 'acf-field', 1, 77, NULL, NULL, 'Title', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:43:12', '2022-09-06 14:53:05', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:53:04', '2022-09-04 04:43:12'),
(61, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=79', '56:36871bb0fe9a3aea5c6e76a9fea1648e', 79, 'post', 'acf-field', 1, 77, NULL, NULL, 'Content', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:43:13', '2022-09-06 14:53:05', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:53:05', '2022-09-04 04:43:12'),
(62, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=80', '56:6fd7a8496dc80d1751842193d459f972', 80, 'post', 'acf-field', 1, 77, NULL, NULL, 'Email', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:43:13', '2022-09-06 15:47:47', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 09:47:46', '2022-09-04 04:43:13'),
(63, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=81', '56:2fa0a7854cbd70fccad5d8c57abae863', 81, 'post', 'acf-field', 1, 77, NULL, NULL, 'Button', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 04:43:14', '2022-09-06 14:53:06', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:53:05', '2022-09-04 04:43:13'),
(64, NULL, NULL, 82, 'post', 'attachment', 1, 20, NULL, NULL, 'ns-logo', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wp-ns-podcast/wp-content/uploads/2022/09/ns-logo.png', NULL, '82', 'attachment-image', NULL, NULL, NULL, '82', 'attachment-image', NULL, NULL, NULL, NULL, '2022-09-04 04:44:42', '2022-09-05 14:31:18', 1, NULL, NULL, NULL, NULL, 1, NULL, 0, '2022-09-04 04:44:41', '2022-09-04 04:44:41'),
(65, NULL, NULL, 83, 'post', 'attachment', 1, 20, NULL, NULL, 'ns-logo-b', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wp-ns-podcast/wp-content/uploads/2022/09/ns-logo-b.png', NULL, '83', 'attachment-image', NULL, NULL, NULL, '83', 'attachment-image', NULL, NULL, NULL, NULL, '2022-09-04 04:54:35', '2022-09-05 14:31:18', 1, NULL, NULL, NULL, NULL, 1, NULL, 0, '2022-09-04 04:54:34', '2022-09-04 04:54:34'),
(66, NULL, NULL, 84, 'post', 'attachment', 1, 20, NULL, NULL, 'ns-apple-podcast', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wp-ns-podcast/wp-content/uploads/2022/09/ns-apple-podcast.png', NULL, '84', 'attachment-image', NULL, NULL, NULL, '84', 'attachment-image', NULL, NULL, NULL, NULL, '2022-09-04 04:59:14', '2022-09-05 14:31:18', 1, NULL, NULL, NULL, NULL, 1, NULL, 0, '2022-09-04 04:59:14', '2022-09-04 04:59:14'),
(67, NULL, NULL, 85, 'post', 'attachment', 1, 20, NULL, NULL, 'ns-google-podcast', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wp-ns-podcast/wp-content/uploads/2022/09/ns-google-podcast.png', NULL, '85', 'attachment-image', NULL, NULL, NULL, '85', 'attachment-image', NULL, NULL, NULL, NULL, '2022-09-04 04:59:16', '2022-09-05 14:31:18', 1, NULL, NULL, NULL, NULL, 1, NULL, 0, '2022-09-04 04:59:16', '2022-09-04 04:59:16'),
(68, NULL, NULL, 86, 'post', 'attachment', 1, 20, NULL, NULL, 'ns-spotify', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wp-ns-podcast/wp-content/uploads/2022/09/ns-spotify.png', NULL, '86', 'attachment-image', NULL, NULL, NULL, '86', 'attachment-image', NULL, NULL, NULL, NULL, '2022-09-04 04:59:18', '2022-09-05 14:31:18', 1, NULL, NULL, NULL, NULL, 1, NULL, 0, '2022-09-04 04:59:17', '2022-09-04 04:59:17'),
(69, 'http://localhost/wp-ns-podcast/cpt-podcast/latest-podcast/', '58:a9cc697802f17000b8b03706f7ab1b0e', 88, 'post', 'cpt-podcast', 1, 0, NULL, NULL, 'Episode 1', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 05:02:56', '2022-09-06 13:35:24', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-09-06 07:35:19', '2022-09-04 05:05:31'),
(70, NULL, NULL, 89, 'post', 'attachment', 1, 88, NULL, NULL, 'developer', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wp-ns-podcast/wp-content/uploads/2022/09/developer.jpeg', NULL, '89', 'attachment-image', NULL, NULL, NULL, '89', 'attachment-image', NULL, NULL, NULL, NULL, '2022-09-04 05:03:36', '2022-09-05 14:31:18', 1, NULL, NULL, NULL, NULL, 1, NULL, 0, '2022-09-04 05:03:36', '2022-09-04 05:03:36'),
(71, NULL, NULL, 93, 'post', 'attachment', 1, 65, NULL, NULL, 'Portada', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wp-ns-podcast/wp-content/uploads/2022/09/Portada.jpeg', NULL, '93', 'attachment-image', NULL, NULL, NULL, '93', 'attachment-image', NULL, NULL, NULL, NULL, '2022-09-04 05:09:05', '2022-09-05 14:31:18', 1, NULL, NULL, NULL, NULL, 1, NULL, 0, '2022-09-04 05:09:05', '2022-09-04 05:09:05'),
(72, 'http://localhost/wp-ns-podcast/cpt-podcast/episode-2/', '53:da13b9bbae36768d15969d9f57749e30', 97, 'post', 'cpt-podcast', 1, 0, NULL, NULL, 'Episode 2', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 05:19:28', '2022-09-06 13:36:29', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-09-06 07:36:24', '2022-09-04 05:20:55'),
(73, 'http://localhost/wp-ns-podcast/cpt-podcast/episode-2-2/', '55:0e0fc9262a2e40bbc62afb3328cda7aa', 99, 'post', 'cpt-podcast', 1, 0, NULL, NULL, 'Episode 3', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-04 05:21:19', '2022-09-06 13:37:33', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-09-06 07:37:28', '2022-09-04 05:22:19'),
(74, NULL, NULL, 100, 'post', 'attachment', 1, 99, NULL, NULL, 'my machien', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wp-ns-podcast/wp-content/uploads/2022/09/my-machien.jpg', NULL, '100', 'attachment-image', NULL, NULL, NULL, '100', 'attachment-image', NULL, NULL, NULL, NULL, '2022-09-04 05:21:32', '2022-09-05 14:31:18', 1, NULL, NULL, NULL, NULL, 1, NULL, 0, '2022-09-04 05:21:31', '2022-09-04 05:21:31'),
(75, 'http://localhost/wp-ns-podcast/about/', '37:4802241984a1b4e16d9458ff954ecae8', 106, 'post', 'page', 1, 0, NULL, NULL, 'About', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-06 06:24:08', '2022-09-06 12:24:12', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-09-06 06:24:01', '2022-09-06 06:24:01'),
(76, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=112', '57:bd10c4e365a8373a6d4fea9e97264b05', 112, 'post', 'acf-field', 1, 26, NULL, NULL, 'buttonlogin', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-06 08:55:45', '2022-09-06 14:55:45', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 08:55:44', '2022-09-06 08:55:44'),
(77, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=113', '57:9ac88284bed787126e760716297160bb', 113, 'post', 'acf-field', 1, 31, NULL, NULL, 'linkedin', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-06 08:59:56', '2022-09-06 16:05:29', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 10:05:28', '2022-09-06 08:59:55'),
(78, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=114', '57:c12793a27bf954cf26065886ac29eca5', 114, 'post', 'acf-field', 1, 31, NULL, NULL, 'Instagram', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-06 08:59:56', '2022-09-06 16:05:29', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 10:05:29', '2022-09-06 08:59:56'),
(79, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=115', '57:2737add7258d39be301abba4290c33e7', 115, 'post', 'acf-field', 1, 31, NULL, NULL, 'Skype', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-06 08:59:57', '2022-09-06 16:05:30', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 10:05:29', '2022-09-06 08:59:57'),
(80, 'http://localhost/wp-ns-podcast/hero/', '36:fb642e920a9b746e2f905652a38fe86d', 116, 'post', 'post', 1, 0, NULL, NULL, 'Hero', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-06 09:00:44', '2022-09-06 15:07:31', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-09-06 09:07:28', '2022-09-06 09:01:06'),
(81, 'http://localhost/wp-ns-podcast/header/', '38:e66ed16f279f04941e481b330ab9976d', 118, 'post', 'post', 1, 0, NULL, NULL, 'Header', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-06 09:02:20', '2022-09-06 15:05:46', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-09-06 09:05:42', '2022-09-06 09:02:19'),
(82, 'http://localhost/wp-ns-podcast/footer/', '38:9eb155fe7105b40f2f3d87235c920645', 120, 'post', 'post', 1, 0, NULL, NULL, 'Footer', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 90, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-06 09:02:34', '2022-09-06 16:06:12', 1, NULL, NULL, NULL, NULL, 0, 0, 2, '2022-09-06 10:06:09', '2022-09-06 09:02:33'),
(83, 'http://localhost/wp-ns-podcast/wp-content/uploads/2022/09/ns-logo-b-1.png', '73:2f37cc6e7e088d5f204c86363c9847cd', 122, 'post', 'attachment', 1, 118, NULL, NULL, 'ns-logo-b', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wp-ns-podcast/wp-content/uploads/2022/09/ns-logo-b-1.png', NULL, '122', 'attachment-image', NULL, NULL, NULL, '122', 'attachment-image', NULL, NULL, NULL, NULL, '2022-09-06 09:04:51', '2022-09-06 15:04:51', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 09:04:49', '2022-09-06 09:04:49'),
(84, 'http://localhost/wp-ns-podcast/wp-content/uploads/2022/09/Podcast.png', '69:c58c3705204bcbc37834f9a0bdae9c8c', 124, 'post', 'attachment', 1, 116, NULL, NULL, 'Podcast', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://localhost/wp-ns-podcast/wp-content/uploads/2022/09/Podcast.png', NULL, '124', 'attachment-image', NULL, NULL, NULL, '124', 'attachment-image', NULL, NULL, NULL, NULL, '2022-09-06 09:07:16', '2022-09-06 15:07:16', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 09:07:16', '2022-09-06 09:07:16'),
(85, 'http://localhost/wp-ns-podcast/?post_type=acf-field&p=129', '57:f716f01eb0946d023985200188666070', 129, 'post', 'acf-field', 1, 31, NULL, NULL, 'facebook', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-09-06 10:05:30', '2022-09-06 16:05:31', 1, NULL, NULL, NULL, NULL, 1, NULL, 2, '2022-09-06 10:05:30', '2022-09-06 10:05:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_yoast_indexable_hierarchy`
--

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_yoast_indexable_hierarchy`
--

INSERT INTO `wp_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(1, 0, 0, 1),
(5, 0, 0, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(9, 0, 0, 1),
(13, 9, 1, 1),
(14, 9, 2, 1),
(14, 13, 1, 1),
(15, 9, 2, 1),
(15, 13, 1, 1),
(16, 9, 2, 1),
(16, 13, 1, 1),
(17, 0, 0, 1),
(18, 17, 1, 1),
(19, 17, 2, 1),
(19, 18, 1, 1),
(21, 17, 2, 1),
(21, 18, 1, 1),
(24, 17, 2, 1),
(24, 18, 1, 1),
(25, 0, 0, 1),
(26, 25, 1, 1),
(27, 25, 2, 1),
(27, 26, 1, 1),
(28, 25, 2, 1),
(28, 26, 1, 1),
(29, 25, 2, 1),
(29, 26, 1, 1),
(30, 25, 2, 1),
(30, 26, 1, 1),
(31, 25, 2, 1),
(31, 26, 1, 1),
(32, 0, 0, 1),
(33, 32, 1, 1),
(36, 32, 2, 1),
(36, 33, 1, 1),
(37, 32, 2, 1),
(37, 33, 1, 1),
(38, 32, 2, 1),
(38, 33, 1, 1),
(39, 32, 2, 1),
(39, 33, 1, 1),
(40, 32, 2, 1),
(40, 33, 1, 1),
(41, 32, 2, 1),
(41, 33, 1, 1),
(42, 32, 2, 1),
(42, 33, 1, 1),
(43, 0, 0, 1),
(44, 43, 1, 1),
(45, 43, 2, 1),
(45, 44, 1, 1),
(46, 43, 2, 1),
(46, 44, 1, 1),
(47, 43, 2, 1),
(47, 44, 1, 1),
(48, 43, 2, 1),
(48, 44, 1, 1),
(49, 43, 2, 1),
(49, 44, 1, 1),
(50, 43, 2, 1),
(50, 44, 1, 1),
(51, 0, 0, 1),
(52, 0, 0, 1),
(53, 52, 1, 1),
(54, 52, 2, 1),
(54, 53, 1, 1),
(55, 52, 2, 1),
(55, 53, 1, 1),
(57, 0, 0, 1),
(58, 0, 0, 1),
(59, 58, 1, 1),
(60, 58, 2, 1),
(60, 59, 1, 1),
(61, 58, 2, 1),
(61, 59, 1, 1),
(62, 58, 2, 1),
(62, 59, 1, 1),
(63, 58, 2, 1),
(63, 59, 1, 1),
(69, 0, 0, 1),
(72, 0, 0, 1),
(73, 0, 0, 1),
(75, 0, 0, 1),
(77, 17, 2, 1),
(77, 18, 1, 1),
(78, 17, 2, 1),
(78, 18, 1, 1),
(79, 17, 2, 1),
(79, 18, 1, 1),
(80, 0, 0, 1),
(81, 0, 0, 1),
(82, 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_yoast_migrations`
--

CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134'),
(22, '20210817092415'),
(23, '20211020091404');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_yoast_primary_term`
--

CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `target_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `size` int(11) UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indices de la tabla `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  ADD KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`);

--
-- Indices de la tabla `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Indices de la tabla `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wp_yoast_migrations_version` (`version`);

--
-- Indices de la tabla `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Indices de la tabla `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=474;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=787;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de la tabla `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
