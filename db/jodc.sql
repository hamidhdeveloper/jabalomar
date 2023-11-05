-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 05, 2023 at 09:18 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jodc`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/jodc', 'yes'),
(2, 'home', 'http://localhost/jodc', 'yes'),
(3, 'blogname', 'Jaba Omar', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mohjel369@hotmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '1000', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '1000', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:21:\"polylang/polylang.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:19:\"akismet/akismet.php\";i:3;s:33:\"classic-editor/classic-editor.php\";i:4;s:35:\"modula-best-grid-gallery/Modula.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'jodc', 'yes'),
(41, 'stylesheet', 'jodc', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '55853', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
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
(82, 'page_on_front', '14', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '10', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1713692739', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '55853', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1699173941;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1699177541;a:5:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1699177566;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1699177567;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1699350344;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1699436741;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.3.2\";s:5:\"files\";a:496:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"quote/style-rtl.css\";i:357;s:23:\"quote/style-rtl.min.css\";i:358;s:15:\"quote/style.css\";i:359;s:19:\"quote/style.min.css\";i:360;s:19:\"quote/theme-rtl.css\";i:361;s:23:\"quote/theme-rtl.min.css\";i:362;s:15:\"quote/theme.css\";i:363;s:19:\"quote/theme.min.css\";i:364;s:23:\"read-more/style-rtl.css\";i:365;s:27:\"read-more/style-rtl.min.css\";i:366;s:19:\"read-more/style.css\";i:367;s:23:\"read-more/style.min.css\";i:368;s:18:\"rss/editor-rtl.css\";i:369;s:22:\"rss/editor-rtl.min.css\";i:370;s:14:\"rss/editor.css\";i:371;s:18:\"rss/editor.min.css\";i:372;s:17:\"rss/style-rtl.css\";i:373;s:21:\"rss/style-rtl.min.css\";i:374;s:13:\"rss/style.css\";i:375;s:17:\"rss/style.min.css\";i:376;s:21:\"search/editor-rtl.css\";i:377;s:25:\"search/editor-rtl.min.css\";i:378;s:17:\"search/editor.css\";i:379;s:21:\"search/editor.min.css\";i:380;s:20:\"search/style-rtl.css\";i:381;s:24:\"search/style-rtl.min.css\";i:382;s:16:\"search/style.css\";i:383;s:20:\"search/style.min.css\";i:384;s:20:\"search/theme-rtl.css\";i:385;s:24:\"search/theme-rtl.min.css\";i:386;s:16:\"search/theme.css\";i:387;s:20:\"search/theme.min.css\";i:388;s:24:\"separator/editor-rtl.css\";i:389;s:28:\"separator/editor-rtl.min.css\";i:390;s:20:\"separator/editor.css\";i:391;s:24:\"separator/editor.min.css\";i:392;s:23:\"separator/style-rtl.css\";i:393;s:27:\"separator/style-rtl.min.css\";i:394;s:19:\"separator/style.css\";i:395;s:23:\"separator/style.min.css\";i:396;s:23:\"separator/theme-rtl.css\";i:397;s:27:\"separator/theme-rtl.min.css\";i:398;s:19:\"separator/theme.css\";i:399;s:23:\"separator/theme.min.css\";i:400;s:24:\"shortcode/editor-rtl.css\";i:401;s:28:\"shortcode/editor-rtl.min.css\";i:402;s:20:\"shortcode/editor.css\";i:403;s:24:\"shortcode/editor.min.css\";i:404;s:24:\"site-logo/editor-rtl.css\";i:405;s:28:\"site-logo/editor-rtl.min.css\";i:406;s:20:\"site-logo/editor.css\";i:407;s:24:\"site-logo/editor.min.css\";i:408;s:23:\"site-logo/style-rtl.css\";i:409;s:27:\"site-logo/style-rtl.min.css\";i:410;s:19:\"site-logo/style.css\";i:411;s:23:\"site-logo/style.min.css\";i:412;s:27:\"site-tagline/editor-rtl.css\";i:413;s:31:\"site-tagline/editor-rtl.min.css\";i:414;s:23:\"site-tagline/editor.css\";i:415;s:27:\"site-tagline/editor.min.css\";i:416;s:25:\"site-title/editor-rtl.css\";i:417;s:29:\"site-title/editor-rtl.min.css\";i:418;s:21:\"site-title/editor.css\";i:419;s:25:\"site-title/editor.min.css\";i:420;s:24:\"site-title/style-rtl.css\";i:421;s:28:\"site-title/style-rtl.min.css\";i:422;s:20:\"site-title/style.css\";i:423;s:24:\"site-title/style.min.css\";i:424;s:26:\"social-link/editor-rtl.css\";i:425;s:30:\"social-link/editor-rtl.min.css\";i:426;s:22:\"social-link/editor.css\";i:427;s:26:\"social-link/editor.min.css\";i:428;s:27:\"social-links/editor-rtl.css\";i:429;s:31:\"social-links/editor-rtl.min.css\";i:430;s:23:\"social-links/editor.css\";i:431;s:27:\"social-links/editor.min.css\";i:432;s:26:\"social-links/style-rtl.css\";i:433;s:30:\"social-links/style-rtl.min.css\";i:434;s:22:\"social-links/style.css\";i:435;s:26:\"social-links/style.min.css\";i:436;s:21:\"spacer/editor-rtl.css\";i:437;s:25:\"spacer/editor-rtl.min.css\";i:438;s:17:\"spacer/editor.css\";i:439;s:21:\"spacer/editor.min.css\";i:440;s:20:\"spacer/style-rtl.css\";i:441;s:24:\"spacer/style-rtl.min.css\";i:442;s:16:\"spacer/style.css\";i:443;s:20:\"spacer/style.min.css\";i:444;s:20:\"table/editor-rtl.css\";i:445;s:24:\"table/editor-rtl.min.css\";i:446;s:16:\"table/editor.css\";i:447;s:20:\"table/editor.min.css\";i:448;s:19:\"table/style-rtl.css\";i:449;s:23:\"table/style-rtl.min.css\";i:450;s:15:\"table/style.css\";i:451;s:19:\"table/style.min.css\";i:452;s:19:\"table/theme-rtl.css\";i:453;s:23:\"table/theme-rtl.min.css\";i:454;s:15:\"table/theme.css\";i:455;s:19:\"table/theme.min.css\";i:456;s:23:\"tag-cloud/style-rtl.css\";i:457;s:27:\"tag-cloud/style-rtl.min.css\";i:458;s:19:\"tag-cloud/style.css\";i:459;s:23:\"tag-cloud/style.min.css\";i:460;s:28:\"template-part/editor-rtl.css\";i:461;s:32:\"template-part/editor-rtl.min.css\";i:462;s:24:\"template-part/editor.css\";i:463;s:28:\"template-part/editor.min.css\";i:464;s:27:\"template-part/theme-rtl.css\";i:465;s:31:\"template-part/theme-rtl.min.css\";i:466;s:23:\"template-part/theme.css\";i:467;s:27:\"template-part/theme.min.css\";i:468;s:30:\"term-description/style-rtl.css\";i:469;s:34:\"term-description/style-rtl.min.css\";i:470;s:26:\"term-description/style.css\";i:471;s:30:\"term-description/style.min.css\";i:472;s:27:\"text-columns/editor-rtl.css\";i:473;s:31:\"text-columns/editor-rtl.min.css\";i:474;s:23:\"text-columns/editor.css\";i:475;s:27:\"text-columns/editor.min.css\";i:476;s:26:\"text-columns/style-rtl.css\";i:477;s:30:\"text-columns/style-rtl.min.css\";i:478;s:22:\"text-columns/style.css\";i:479;s:26:\"text-columns/style.min.css\";i:480;s:19:\"verse/style-rtl.css\";i:481;s:23:\"verse/style-rtl.min.css\";i:482;s:15:\"verse/style.css\";i:483;s:19:\"verse/style.min.css\";i:484;s:20:\"video/editor-rtl.css\";i:485;s:24:\"video/editor-rtl.min.css\";i:486;s:16:\"video/editor.css\";i:487;s:20:\"video/editor.min.css\";i:488;s:19:\"video/style-rtl.css\";i:489;s:23:\"video/style-rtl.min.css\";i:490;s:15:\"video/style.css\";i:491;s:19:\"video/style.min.css\";i:492;s:19:\"video/theme-rtl.css\";i:493;s:23:\"video/theme-rtl.min.css\";i:494;s:15:\"video/theme.css\";i:495;s:19:\"video/theme.min.css\";}}', 'yes'),
(121, 'nonce_key', 'j)41}{I|U{@4fwoy#CWmz,<<1zzf~/{ERlkiLUkW)~JC@~FG6;9`(SETQ8nji Ma', 'no'),
(122, 'nonce_salt', 'U-|dxmB|1jLSJ|mgzHGVqZ>C?<MWi:X1hT,y_kZsPVccJST:]iqp7krCgdy6m;<v', 'no'),
(124, 'recovery_keys', 'a:0:{}', 'yes'),
(125, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1698149555;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(126, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(140, 'auth_key', '0!mDu~uZkNkLa72e}[c 0N$I::i}7(4E|C;DBvMowBYz{OU-OLv(Y^pge3{K/^Ip', 'no'),
(141, 'auth_salt', '-5O:wfjpLHloq+3onlc S`6N~X!k?eC_L2?;LVK%wzp=MfbXyI#QZFefQe$Dr1`:', 'no'),
(142, 'logged_in_key', '5TT{reYyLw#xx].xHqT304?~QRP}%GSk(lt8s__ScLTo/izk%R7`Ji/0C%VAYYK=', 'no'),
(143, 'logged_in_salt', '^>FV$y$fqV;)a8Z 9<x#(.2ryZ+=T4tYvmYT@0&p%V/(ZoL7w&?3~@Kjsy@>*YzV', 'no'),
(149, 'can_compress_scripts', '1', 'yes'),
(164, 'finished_updating_comment_type', '1', 'yes'),
(166, 'recently_activated', 'a:0:{}', 'yes'),
(170, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.3.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.2\";s:7:\"version\";s:5:\"6.3.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1699164730;s:15:\"version_checked\";s:5:\"6.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(173, 'acf_version', '6.2.2', 'yes'),
(175, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(176, 'modula_version', 'a:2:{s:13:\"upgraded_from\";s:5:\"2.7.8\";s:15:\"current_version\";s:5:\"2.7.8\";}', 'yes'),
(177, 'widget_modula_gallery_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(178, 'modula-rate-time', '1856352786', 'yes'),
(179, '_transient_timeout_modula_all_packages', '1700740759', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(180, '_transient_modula_all_packages', 'a:1:{s:15:\"upsell_packages\";a:5:{s:37:\"modula-grid-gallery-business-lifetime\";a:6:{s:4:\"name\";s:41:\"Modula Grid Gallery - Business (lifetime)\";s:13:\"upgrade_price\";s:6:\"345.00\";s:4:\"slug\";s:37:\"modula-grid-gallery-business-lifetime\";s:7:\"excerpt\";s:26:\"Build the perfect gallery.\";s:2:\"id\";i:538961;s:10:\"extensions\";a:19:{s:6:\"modula\";a:3:{s:4:\"name\";s:10:\"Modula PRO\";s:11:\"description\";s:0:\"\";s:4:\"slug\";s:17:\"modula/Modula.php\";}s:12:\"modula-video\";a:3:{s:4:\"name\";s:5:\"Video\";s:11:\"description\";s:137:\"Adding a video gallery with both self-hosted videos and videos from sources like YouTube and Vimeo to your website has never been easier.\";s:4:\"slug\";s:29:\"modula-video/modula-video.php\";}s:14:\"modula-speedup\";a:3:{s:4:\"name\";s:7:\"SpeedUp\";s:11:\"description\";s:199:\"Allow Modula to automatically optimize your images to load as fast as possible by reducing their file sizes, resizing them through ShortPixel and serve them from StackPath\'s content delivery network.\";s:4:\"slug\";s:33:\"modula-speedup/modula-speedup.php\";}s:26:\"modula-advanced-shortcodes\";a:3:{s:4:\"name\";s:18:\"Advanced Shortcode\";s:11:\"description\";s:118:\"Allows you to dynamically link to specific galleries without creating pages for them by using URLs with query strings.\";s:4:\"slug\";s:57:\"modula-advanced-shortcodes/modula-advanced-shortcodes.php\";}s:17:\"modula-protection\";a:3:{s:4:\"name\";s:22:\"Right-Click Protection\";s:11:\"description\";s:199:\"The Modula Protection extension allows you to easily prevent your visitors from downloading your images with right-click protection. Use this extension to retain full ownership of your creative work.\";s:4:\"slug\";s:39:\"modula-protection/modula-protection.php\";}s:15:\"modula-deeplink\";a:3:{s:4:\"name\";s:12:\"SEO Deeplink\";s:11:\"description\";s:101:\"Full SEO control over your galleries. Create a unique and indexable URL for each Modula Gallery item.\";s:4:\"slug\";s:35:\"modula-deeplink/modula-deeplink.php\";}s:16:\"modula-watermark\";a:3:{s:4:\"name\";s:9:\"Watermark\";s:11:\"description\";s:101:\"Easily protect your photos by adding custom watermarks to your WordPress image galleries with Modula.\";s:4:\"slug\";s:37:\"modula-watermark/modula-watermark.php\";}s:23:\"modula-password-protect\";a:3:{s:4:\"name\";s:26:\"Password Protect Galleries\";s:11:\"description\";s:91:\"Password protect your galleries. This is a perfect solution for exclusive client galleries!\";s:4:\"slug\";s:51:\"modula-password-protect/modula-password-protect.php\";}s:16:\"modula-slideshow\";a:3:{s:4:\"name\";s:18:\"Lightbox Slideshow\";s:11:\"description\";s:98:\"Automatically turn your lightbox images into an auto-play slideshow. Play & pause between images. \";s:4:\"slug\";s:37:\"modula-slideshow/modula-slideshow.php\";}s:13:\"modula-slider\";a:3:{s:4:\"name\";s:25:\"Convert Gallery to Slider\";s:11:\"description\";s:116:\"Ever wanted to be able to create a gallery slider? One big image with thumbnail navigation below? We got it covered.\";s:4:\"slug\";s:31:\"modula-slider/modula-slider.php\";}s:13:\"modula-albums\";a:3:{s:4:\"name\";s:14:\"Gallery Albums\";s:11:\"description\";s:179:\"Give your galleries a place to call home with the Albums addon. Create albums, add galleries, manage cover photos, show gallery titles and even image counts in this superb add-on!\";s:4:\"slug\";s:31:\"modula-albums/modula-albums.php\";}s:11:\"modula-exif\";a:3:{s:4:\"name\";s:4:\"EXIF\";s:11:\"description\";s:88:\"The EXIF Addon for Modula allows you to edit & display EXIF metadata in your lightboxes.\";s:4:\"slug\";s:27:\"modula-exif/modula-exif.php\";}s:15:\"modula-download\";a:3:{s:4:\"name\";s:8:\"Download\";s:11:\"description\";s:103:\"Give your users the ability to download your images, galleries or albums with an easy to use shortcode.\";s:4:\"slug\";s:35:\"modula-download/modula-download.php\";}s:11:\"modula-zoom\";a:3:{s:4:\"name\";s:4:\"Zoom\";s:11:\"description\";s:90:\"Adds zoom functionality to images, when opened in the lightbox, to allow up close viewing.\";s:4:\"slug\";s:27:\"modula-zoom/modula-zoom.php\";}s:15:\"modula-defaults\";a:3:{s:4:\"name\";s:8:\"Defaults\";s:11:\"description\";s:245:\"Speed up your gallery creation process by starting from a pre-saved default. Save any gallery\'s settings as a default and reuse them indefinitely. Got a bunch of galleries you want to apply a default to? That\'s possible too with this extension. \";s:4:\"slug\";s:35:\"modula-defaults/modula-defaults.php\";}s:12:\"modula-roles\";a:3:{s:4:\"name\";s:15:\"Role Management\";s:11:\"description\";s:177:\"Granular control over which user roles can add, edit or update galleries on your website. Add permissions to an existing user role or remove them by simply checking a checkbox. \";s:4:\"slug\";s:29:\"modula-roles/modula-roles.php\";}s:17:\"modula-pagination\";a:3:{s:4:\"name\";s:10:\"Pagination\";s:11:\"description\";s:79:\"Modula Pagination allows you to display your gallery images in a paginated way.\";s:4:\"slug\";s:39:\"modula-pagination/modula-pagination.php\";}s:17:\"modula-whitelabel\";a:3:{s:4:\"name\";s:11:\"White Label\";s:11:\"description\";s:164:\"Want to use Modula but brand it with your own logo, external URLs and remove all mentions that aren\'t related to your brand? This extension helps you achieve this. \";s:4:\"slug\";s:39:\"modula-whitelabel/modula-whitelabel.php\";}s:17:\"modula-fullscreen\";a:3:{s:4:\"name\";s:10:\"Fullscreen\";s:11:\"description\";s:187:\"Delight your users with the possibility of showing images, inside the lightbox, in a full screen mode. Blow up your images as large as they can be with the native fullscreen browser mode.\";s:4:\"slug\";s:39:\"modula-fullscreen/modula-fullscreen.php\";}}}s:33:\"modula-grid-gallery-trio-lifetime\";a:6:{s:4:\"name\";s:37:\"Modula Grid Gallery - Trio (lifetime)\";s:13:\"upgrade_price\";s:6:\"240.00\";s:4:\"slug\";s:33:\"modula-grid-gallery-trio-lifetime\";s:7:\"excerpt\";s:39:\"Power users who need even more control.\";s:2:\"id\";i:538958;s:10:\"extensions\";a:10:{s:6:\"modula\";a:3:{s:4:\"name\";s:10:\"Modula PRO\";s:11:\"description\";s:0:\"\";s:4:\"slug\";s:17:\"modula/Modula.php\";}s:12:\"modula-video\";a:3:{s:4:\"name\";s:5:\"Video\";s:11:\"description\";s:137:\"Adding a video gallery with both self-hosted videos and videos from sources like YouTube and Vimeo to your website has never been easier.\";s:4:\"slug\";s:29:\"modula-video/modula-video.php\";}s:14:\"modula-speedup\";a:3:{s:4:\"name\";s:7:\"SpeedUp\";s:11:\"description\";s:199:\"Allow Modula to automatically optimize your images to load as fast as possible by reducing their file sizes, resizing them through ShortPixel and serve them from StackPath\'s content delivery network.\";s:4:\"slug\";s:33:\"modula-speedup/modula-speedup.php\";}s:26:\"modula-advanced-shortcodes\";a:3:{s:4:\"name\";s:18:\"Advanced Shortcode\";s:11:\"description\";s:118:\"Allows you to dynamically link to specific galleries without creating pages for them by using URLs with query strings.\";s:4:\"slug\";s:57:\"modula-advanced-shortcodes/modula-advanced-shortcodes.php\";}s:17:\"modula-protection\";a:3:{s:4:\"name\";s:22:\"Right-Click Protection\";s:11:\"description\";s:199:\"The Modula Protection extension allows you to easily prevent your visitors from downloading your images with right-click protection. Use this extension to retain full ownership of your creative work.\";s:4:\"slug\";s:39:\"modula-protection/modula-protection.php\";}s:23:\"modula-password-protect\";a:3:{s:4:\"name\";s:26:\"Password Protect Galleries\";s:11:\"description\";s:91:\"Password protect your galleries. This is a perfect solution for exclusive client galleries!\";s:4:\"slug\";s:51:\"modula-password-protect/modula-password-protect.php\";}s:16:\"modula-slideshow\";a:3:{s:4:\"name\";s:18:\"Lightbox Slideshow\";s:11:\"description\";s:98:\"Automatically turn your lightbox images into an auto-play slideshow. Play & pause between images. \";s:4:\"slug\";s:37:\"modula-slideshow/modula-slideshow.php\";}s:13:\"modula-slider\";a:3:{s:4:\"name\";s:25:\"Convert Gallery to Slider\";s:11:\"description\";s:116:\"Ever wanted to be able to create a gallery slider? One big image with thumbnail navigation below? We got it covered.\";s:4:\"slug\";s:31:\"modula-slider/modula-slider.php\";}s:13:\"modula-albums\";a:3:{s:4:\"name\";s:14:\"Gallery Albums\";s:11:\"description\";s:179:\"Give your galleries a place to call home with the Albums addon. Create albums, add galleries, manage cover photos, show gallery titles and even image counts in this superb add-on!\";s:4:\"slug\";s:31:\"modula-albums/modula-albums.php\";}s:17:\"modula-fullscreen\";a:3:{s:4:\"name\";s:10:\"Fullscreen\";s:11:\"description\";s:187:\"Delight your users with the possibility of showing images, inside the lightbox, in a full screen mode. Blow up your images as large as they can be with the native fullscreen browser mode.\";s:4:\"slug\";s:39:\"modula-fullscreen/modula-fullscreen.php\";}}}s:36:\"modula-grid-gallery-starter-lifetime\";a:6:{s:4:\"name\";s:40:\"Modula Grid Gallery - Starter (Lifetime)\";s:13:\"upgrade_price\";s:6:\"135.00\";s:4:\"slug\";s:36:\"modula-grid-gallery-starter-lifetime\";s:7:\"excerpt\";s:44:\"A tool for those that are just starting out.\";s:2:\"id\";i:538955;s:10:\"extensions\";a:3:{s:6:\"modula\";a:3:{s:4:\"name\";s:10:\"Modula PRO\";s:11:\"description\";s:0:\"\";s:4:\"slug\";s:17:\"modula/Modula.php\";}s:12:\"modula-video\";a:3:{s:4:\"name\";s:5:\"Video\";s:11:\"description\";s:137:\"Adding a video gallery with both self-hosted videos and videos from sources like YouTube and Vimeo to your website has never been easier.\";s:4:\"slug\";s:29:\"modula-video/modula-video.php\";}s:16:\"modula-slideshow\";a:3:{s:4:\"name\";s:18:\"Lightbox Slideshow\";s:11:\"description\";s:98:\"Automatically turn your lightbox images into an auto-play slideshow. Play & pause between images. \";s:4:\"slug\";s:37:\"modula-slideshow/modula-slideshow.php\";}}}s:28:\"modula-grid-gallery-business\";a:7:{s:4:\"name\";s:30:\"Modula Grid Gallery - Business\";s:13:\"upgrade_price\";s:5:\"99.00\";s:4:\"slug\";s:28:\"modula-grid-gallery-business\";s:7:\"excerpt\";s:26:\"Build the perfect gallery.\";s:2:\"id\";i:256712;s:10:\"extensions\";a:19:{s:6:\"modula\";a:3:{s:4:\"name\";s:10:\"Modula PRO\";s:11:\"description\";s:0:\"\";s:4:\"slug\";s:17:\"modula/Modula.php\";}s:12:\"modula-video\";a:3:{s:4:\"name\";s:5:\"Video\";s:11:\"description\";s:137:\"Adding a video gallery with both self-hosted videos and videos from sources like YouTube and Vimeo to your website has never been easier.\";s:4:\"slug\";s:29:\"modula-video/modula-video.php\";}s:14:\"modula-speedup\";a:3:{s:4:\"name\";s:7:\"SpeedUp\";s:11:\"description\";s:199:\"Allow Modula to automatically optimize your images to load as fast as possible by reducing their file sizes, resizing them through ShortPixel and serve them from StackPath\'s content delivery network.\";s:4:\"slug\";s:33:\"modula-speedup/modula-speedup.php\";}s:26:\"modula-advanced-shortcodes\";a:3:{s:4:\"name\";s:18:\"Advanced Shortcode\";s:11:\"description\";s:118:\"Allows you to dynamically link to specific galleries without creating pages for them by using URLs with query strings.\";s:4:\"slug\";s:57:\"modula-advanced-shortcodes/modula-advanced-shortcodes.php\";}s:17:\"modula-protection\";a:3:{s:4:\"name\";s:22:\"Right-Click Protection\";s:11:\"description\";s:199:\"The Modula Protection extension allows you to easily prevent your visitors from downloading your images with right-click protection. Use this extension to retain full ownership of your creative work.\";s:4:\"slug\";s:39:\"modula-protection/modula-protection.php\";}s:15:\"modula-deeplink\";a:3:{s:4:\"name\";s:12:\"SEO Deeplink\";s:11:\"description\";s:101:\"Full SEO control over your galleries. Create a unique and indexable URL for each Modula Gallery item.\";s:4:\"slug\";s:35:\"modula-deeplink/modula-deeplink.php\";}s:16:\"modula-watermark\";a:3:{s:4:\"name\";s:9:\"Watermark\";s:11:\"description\";s:101:\"Easily protect your photos by adding custom watermarks to your WordPress image galleries with Modula.\";s:4:\"slug\";s:37:\"modula-watermark/modula-watermark.php\";}s:23:\"modula-password-protect\";a:3:{s:4:\"name\";s:26:\"Password Protect Galleries\";s:11:\"description\";s:91:\"Password protect your galleries. This is a perfect solution for exclusive client galleries!\";s:4:\"slug\";s:51:\"modula-password-protect/modula-password-protect.php\";}s:16:\"modula-slideshow\";a:3:{s:4:\"name\";s:18:\"Lightbox Slideshow\";s:11:\"description\";s:98:\"Automatically turn your lightbox images into an auto-play slideshow. Play & pause between images. \";s:4:\"slug\";s:37:\"modula-slideshow/modula-slideshow.php\";}s:13:\"modula-slider\";a:3:{s:4:\"name\";s:25:\"Convert Gallery to Slider\";s:11:\"description\";s:116:\"Ever wanted to be able to create a gallery slider? One big image with thumbnail navigation below? We got it covered.\";s:4:\"slug\";s:31:\"modula-slider/modula-slider.php\";}s:13:\"modula-albums\";a:3:{s:4:\"name\";s:14:\"Gallery Albums\";s:11:\"description\";s:179:\"Give your galleries a place to call home with the Albums addon. Create albums, add galleries, manage cover photos, show gallery titles and even image counts in this superb add-on!\";s:4:\"slug\";s:31:\"modula-albums/modula-albums.php\";}s:11:\"modula-exif\";a:3:{s:4:\"name\";s:4:\"EXIF\";s:11:\"description\";s:88:\"The EXIF Addon for Modula allows you to edit & display EXIF metadata in your lightboxes.\";s:4:\"slug\";s:27:\"modula-exif/modula-exif.php\";}s:15:\"modula-download\";a:3:{s:4:\"name\";s:8:\"Download\";s:11:\"description\";s:103:\"Give your users the ability to download your images, galleries or albums with an easy to use shortcode.\";s:4:\"slug\";s:35:\"modula-download/modula-download.php\";}s:11:\"modula-zoom\";a:3:{s:4:\"name\";s:4:\"Zoom\";s:11:\"description\";s:90:\"Adds zoom functionality to images, when opened in the lightbox, to allow up close viewing.\";s:4:\"slug\";s:27:\"modula-zoom/modula-zoom.php\";}s:15:\"modula-defaults\";a:3:{s:4:\"name\";s:8:\"Defaults\";s:11:\"description\";s:245:\"Speed up your gallery creation process by starting from a pre-saved default. Save any gallery\'s settings as a default and reuse them indefinitely. Got a bunch of galleries you want to apply a default to? That\'s possible too with this extension. \";s:4:\"slug\";s:35:\"modula-defaults/modula-defaults.php\";}s:12:\"modula-roles\";a:3:{s:4:\"name\";s:15:\"Role Management\";s:11:\"description\";s:177:\"Granular control over which user roles can add, edit or update galleries on your website. Add permissions to an existing user role or remove them by simply checking a checkbox. \";s:4:\"slug\";s:29:\"modula-roles/modula-roles.php\";}s:17:\"modula-pagination\";a:3:{s:4:\"name\";s:10:\"Pagination\";s:11:\"description\";s:79:\"Modula Pagination allows you to display your gallery images in a paginated way.\";s:4:\"slug\";s:39:\"modula-pagination/modula-pagination.php\";}s:17:\"modula-whitelabel\";a:3:{s:4:\"name\";s:11:\"White Label\";s:11:\"description\";s:164:\"Want to use Modula but brand it with your own logo, external URLs and remove all mentions that aren\'t related to your brand? This extension helps you achieve this. \";s:4:\"slug\";s:39:\"modula-whitelabel/modula-whitelabel.php\";}s:17:\"modula-fullscreen\";a:3:{s:4:\"name\";s:10:\"Fullscreen\";s:11:\"description\";s:187:\"Delight your users with the possibility of showing images, inside the lightbox, in a full screen mode. Blow up your images as large as they can be with the native fullscreen browser mode.\";s:4:\"slug\";s:39:\"modula-fullscreen/modula-fullscreen.php\";}}s:14:\"extra_features\";a:2:{s:5:\"sites\";i:5;s:7:\"support\";s:8:\"Priority\";}}s:23:\"modula-grid-gallery-duo\";a:7:{s:4:\"name\";s:26:\"Modula Grid Gallery - Trio\";s:13:\"upgrade_price\";s:5:\"69.00\";s:4:\"slug\";s:23:\"modula-grid-gallery-duo\";s:7:\"excerpt\";s:39:\"Power users who need even more control.\";s:2:\"id\";i:256708;s:10:\"extensions\";a:10:{s:6:\"modula\";a:3:{s:4:\"name\";s:10:\"Modula PRO\";s:11:\"description\";s:0:\"\";s:4:\"slug\";s:17:\"modula/Modula.php\";}s:12:\"modula-video\";a:3:{s:4:\"name\";s:5:\"Video\";s:11:\"description\";s:137:\"Adding a video gallery with both self-hosted videos and videos from sources like YouTube and Vimeo to your website has never been easier.\";s:4:\"slug\";s:29:\"modula-video/modula-video.php\";}s:14:\"modula-speedup\";a:3:{s:4:\"name\";s:7:\"SpeedUp\";s:11:\"description\";s:199:\"Allow Modula to automatically optimize your images to load as fast as possible by reducing their file sizes, resizing them through ShortPixel and serve them from StackPath\'s content delivery network.\";s:4:\"slug\";s:33:\"modula-speedup/modula-speedup.php\";}s:26:\"modula-advanced-shortcodes\";a:3:{s:4:\"name\";s:18:\"Advanced Shortcode\";s:11:\"description\";s:118:\"Allows you to dynamically link to specific galleries without creating pages for them by using URLs with query strings.\";s:4:\"slug\";s:57:\"modula-advanced-shortcodes/modula-advanced-shortcodes.php\";}s:17:\"modula-protection\";a:3:{s:4:\"name\";s:22:\"Right-Click Protection\";s:11:\"description\";s:199:\"The Modula Protection extension allows you to easily prevent your visitors from downloading your images with right-click protection. Use this extension to retain full ownership of your creative work.\";s:4:\"slug\";s:39:\"modula-protection/modula-protection.php\";}s:23:\"modula-password-protect\";a:3:{s:4:\"name\";s:26:\"Password Protect Galleries\";s:11:\"description\";s:91:\"Password protect your galleries. This is a perfect solution for exclusive client galleries!\";s:4:\"slug\";s:51:\"modula-password-protect/modula-password-protect.php\";}s:16:\"modula-slideshow\";a:3:{s:4:\"name\";s:18:\"Lightbox Slideshow\";s:11:\"description\";s:98:\"Automatically turn your lightbox images into an auto-play slideshow. Play & pause between images. \";s:4:\"slug\";s:37:\"modula-slideshow/modula-slideshow.php\";}s:13:\"modula-slider\";a:3:{s:4:\"name\";s:25:\"Convert Gallery to Slider\";s:11:\"description\";s:116:\"Ever wanted to be able to create a gallery slider? One big image with thumbnail navigation below? We got it covered.\";s:4:\"slug\";s:31:\"modula-slider/modula-slider.php\";}s:13:\"modula-albums\";a:3:{s:4:\"name\";s:14:\"Gallery Albums\";s:11:\"description\";s:179:\"Give your galleries a place to call home with the Albums addon. Create albums, add galleries, manage cover photos, show gallery titles and even image counts in this superb add-on!\";s:4:\"slug\";s:31:\"modula-albums/modula-albums.php\";}s:17:\"modula-fullscreen\";a:3:{s:4:\"name\";s:10:\"Fullscreen\";s:11:\"description\";s:187:\"Delight your users with the possibility of showing images, inside the lightbox, in a full screen mode. Blow up your images as large as they can be with the native fullscreen browser mode.\";s:4:\"slug\";s:39:\"modula-fullscreen/modula-fullscreen.php\";}}s:14:\"extra_features\";a:2:{s:5:\"sites\";i:3;s:7:\"support\";s:7:\"Regular\";}}}}', 'no'),
(183, 'polylang', 'a:16:{s:7:\"browser\";i:0;s:7:\"rewrite\";i:1;s:12:\"hide_default\";i:1;s:10:\"force_lang\";i:1;s:13:\"redirect_lang\";i:0;s:13:\"media_support\";b:0;s:9:\"uninstall\";i:0;s:4:\"sync\";a:0:{}s:10:\"post_types\";a:0:{}s:10:\"taxonomies\";a:0:{}s:7:\"domains\";a:0:{}s:7:\"version\";s:5:\"3.5.2\";s:16:\"first_activation\";i:1698148762;s:12:\"default_lang\";s:2:\"en\";s:16:\"previous_version\";s:5:\"3.5.1\";s:9:\"nav_menus\";a:1:{s:4:\"jodc\";a:2:{s:9:\"main_menu\";a:2:{s:2:\"en\";i:18;s:2:\"ar\";i:19;}s:13:\"language_menu\";a:2:{s:2:\"en\";i:20;s:2:\"ar\";i:20;}}}}', 'yes'),
(184, 'polylang_wpml_strings', 'a:0:{}', 'yes'),
(185, 'widget_polylang', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(188, 'rewrite_rules', '', 'yes'),
(192, 'pll_dismissed_notices', 'a:1:{i:0;s:6:\"wizard\";}', 'yes'),
(194, 'current_theme', 'Jodc theme', 'yes'),
(195, 'theme_mods_jodc', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:9:\"main_menu\";i:18;s:13:\"language_menu\";i:20;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(196, 'theme_switched', '', 'yes'),
(210, '_transient_health-check-site-status-result', '{\"good\":19,\"recommended\":5,\"critical\":0}', 'yes'),
(272, 'category_children', 'a:0:{}', 'yes'),
(277, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(310, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1699164731;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.2.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:35:\"modula-best-grid-gallery/Modula.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:38:\"w.org/plugins/modula-best-grid-gallery\";s:4:\"slug\";s:24:\"modula-best-grid-gallery\";s:6:\"plugin\";s:35:\"modula-best-grid-gallery/Modula.php\";s:11:\"new_version\";s:5:\"2.7.8\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/modula-best-grid-gallery/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/modula-best-grid-gallery.2.7.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/modula-best-grid-gallery/assets/icon-256x256.png?rev=2914735\";s:2:\"1x\";s:77:\"https://ps.w.org/modula-best-grid-gallery/assets/icon-256x256.png?rev=2914735\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/modula-best-grid-gallery/assets/banner-772x250.jpg?rev=2914729\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.3\";}s:21:\"polylang/polylang.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:22:\"w.org/plugins/polylang\";s:4:\"slug\";s:8:\"polylang\";s:6:\"plugin\";s:21:\"polylang/polylang.php\";s:11:\"new_version\";s:5:\"3.5.2\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/polylang/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/polylang.3.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/polylang/assets/icon-256x256.png?rev=1331499\";s:2:\"1x\";s:61:\"https://ps.w.org/polylang/assets/icon-128x128.png?rev=1331499\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/polylang/assets/banner-1544x500.png?rev=1405299\";s:2:\"1x\";s:63:\"https://ps.w.org/polylang/assets/banner-772x250.png?rev=1405299\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}}s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.2.2\";s:19:\"akismet/akismet.php\";s:3:\"5.3\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";s:35:\"modula-best-grid-gallery/Modula.php\";s:5:\"2.7.8\";s:21:\"polylang/polylang.php\";s:5:\"3.5.2\";}}', 'no'),
(322, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(336, '_site_transient_timeout_php_check_f9b25a35946393ab2b3328e72e3e778a', '1699264566', 'no'),
(337, '_site_transient_php_check_f9b25a35946393ab2b3328e72e3e778a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(345, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1699164731;s:7:\"checked\";a:1:{s:4:\"jodc\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(367, '_site_transient_timeout_browser_6bf9f47fa7833780f7fb47814ffc5090', '1699351953', 'no'),
(368, '_site_transient_browser_6bf9f47fa7833780f7fb47814ffc5090', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"118.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(372, '_site_transient_timeout_browser_7cad339fd4b53d23059d0efddc145297', '1699362608', 'no'),
(373, '_site_transient_browser_7cad339fd4b53d23059d0efddc145297', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"118.0.0.0\";s:8:\"platform\";s:7:\"Android\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:1;}', 'no'),
(410, '_transient_pll_languages_list', 'a:2:{i:0;a:22:{s:4:\"name\";s:7:\"English\";s:4:\"slug\";s:2:\"en\";s:10:\"term_group\";i:0;s:7:\"term_id\";i:2;s:6:\"locale\";s:5:\"en_GB\";s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"en-GB\";s:8:\"facebook\";s:5:\"en_GB\";s:8:\"home_url\";s:22:\"http://localhost/jodc/\";s:10:\"search_url\";s:22:\"http://localhost/jodc/\";s:4:\"host\";N;s:13:\"page_on_front\";i:14;s:14:\"page_for_posts\";i:0;s:9:\"flag_code\";s:2:\"gb\";s:8:\"flag_url\";s:62:\"http://localhost/jodc/wp-content/plugins/polylang/flags/gb.png\";s:4:\"flag\";s:636:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAMAAABBPP0LAAAAt1BMVEWSmb66z+18msdig8La3u+tYX9IaLc7W7BagbmcUW+kqMr/q6n+//+hsNv/lIr/jIGMnNLJyOP9/fyQttT/wb3/////aWn+YWF5kNT0oqz0i4ueqtIZNJjhvt/8gn//WVr/6+rN1+o9RKZwgcMPJpX/VFT9UEn+RUX8Ozv2Ly+FGzdYZrfU1e/8LS/lQkG/mbVUX60AE231hHtcdMb0mp3qYFTFwNu3w9prcqSURGNDaaIUMX5FNW5wYt7AAAAAjklEQVR4AR3HNUJEMQCGwf+L8RR36ajR+1+CEuvRdd8kK9MNAiRQNgJmVDAt1yM6kSzYVJUsPNssAk5N7ZFKjVNFAY4co6TAOI+kyQm+LFUEBEKKzuWUNB7rSH/rSnvOulOGk+QlXTBqMIrfYX4tSe2nP3iRa/KNK7uTmWJ5a9+erZ3d+18od4ytiZdvZyuKWy8o3UpTVAAAAABJRU5ErkJggg==\" alt=\"English\" width=\"16\" height=\"11\" style=\"width: 16px; height: 11px;\" />\";s:15:\"custom_flag_url\";s:0:\"\";s:11:\"custom_flag\";s:0:\"\";s:6:\"active\";b:1;s:9:\"fallbacks\";a:0:{}s:10:\"is_default\";b:1;s:10:\"term_props\";a:2:{s:8:\"language\";a:3:{s:7:\"term_id\";i:2;s:16:\"term_taxonomy_id\";i:2;s:5:\"count\";i:10;}s:13:\"term_language\";a:3:{s:7:\"term_id\";i:3;s:16:\"term_taxonomy_id\";i:3;s:5:\"count\";i:2;}}}i:1;a:22:{s:4:\"name\";s:14:\"العربية\";s:4:\"slug\";s:2:\"ar\";s:10:\"term_group\";i:0;s:7:\"term_id\";i:5;s:6:\"locale\";s:2:\"ar\";s:6:\"is_rtl\";i:1;s:3:\"w3c\";s:2:\"ar\";s:8:\"facebook\";s:5:\"ar_AR\";s:8:\"home_url\";s:41:\"http://localhost/jodc/?page_id=16&lang=ar\";s:10:\"search_url\";s:30:\"http://localhost/jodc/?lang=ar\";s:4:\"host\";N;s:13:\"page_on_front\";i:16;s:14:\"page_for_posts\";i:0;s:9:\"flag_code\";s:4:\"arab\";s:8:\"flag_url\";s:64:\"http://localhost/jodc/wp-content/plugins/polylang/flags/arab.png\";s:4:\"flag\";s:363:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAMAAABBPP0LAAAANlBMVEUAYjMTYDs3R0AvV0NObzE3dSoTWzhAZjgyfEY0gl1EcDFqpIhKj28TVzaLs41ol1JSaF1JW1NzUHm9AAAAPUlEQVR4AY2MtQEAMAgE447tv2xKvuQqeEtRcikZ/9p6b9X/Mdfeaw4PnPvehQhNvpcnJYiInIqraqYpyAd1AAFxIEreLQAAAABJRU5ErkJggg==\" alt=\"العربية\" width=\"16\" height=\"11\" style=\"width: 16px; height: 11px;\" />\";s:15:\"custom_flag_url\";s:0:\"\";s:11:\"custom_flag\";s:0:\"\";s:6:\"active\";b:1;s:9:\"fallbacks\";a:0:{}s:10:\"is_default\";b:0;s:10:\"term_props\";a:2:{s:8:\"language\";a:3:{s:7:\"term_id\";i:5;s:16:\"term_taxonomy_id\";i:5;s:5:\"count\";i:10;}s:13:\"term_language\";a:3:{s:7:\"term_id\";i:6;s:16:\"term_taxonomy_id\";i:6;s:5:\"count\";i:2;}}}}', 'yes'),
(420, '_site_transient_timeout_theme_roots', '1699166531', 'no'),
(421, '_site_transient_theme_roots', 'a:1:{s:4:\"jodc\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(8, 8, '_wp_trash_meta_status', 'publish'),
(9, 8, '_wp_trash_meta_time', '1698149594'),
(10, 9, '_wp_attached_file', '2023/10/fav-1.png'),
(11, 9, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:17:\"2023/10/fav-1.png\";s:8:\"filesize\";i:10865;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"fav-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:70720;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"fav-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:21810;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 10, '_wp_attached_file', '2023/10/cropped-fav-1.png'),
(13, 10, '_wp_attachment_context', 'site-icon'),
(14, 10, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:25:\"2023/10/cropped-fav-1.png\";s:8:\"filesize\";i:35941;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"cropped-fav-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:70720;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"cropped-fav-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:21810;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:25:\"cropped-fav-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:61118;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:25:\"cropped-fav-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14749;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:25:\"cropped-fav-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:27053;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:23:\"cropped-fav-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1403;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 11, '_wp_trash_meta_status', 'publish'),
(16, 11, '_wp_trash_meta_time', '1698150714'),
(17, 2, '_wp_trash_meta_status', 'publish'),
(18, 2, '_wp_trash_meta_time', '1698227315'),
(19, 2, '_wp_desired_post_slug', 'sample-page'),
(20, 3, '_wp_trash_meta_status', 'draft'),
(21, 3, '_wp_trash_meta_time', '1698227317'),
(22, 3, '_wp_desired_post_slug', 'privacy-policy'),
(23, 14, '_edit_last', '1'),
(24, 14, '_wp_page_template', 'default'),
(25, 14, '_edit_lock', '1698227187:1'),
(26, 16, '_wp_page_template', 'default'),
(27, 16, '_edit_last', '1'),
(28, 16, '_edit_lock', '1698323023:1'),
(29, 18, '_edit_last', '1'),
(30, 18, '_wp_page_template', 'default'),
(31, 18, '_edit_lock', '1698307201:1'),
(32, 20, '_wp_page_template', 'default'),
(33, 20, '_edit_last', '1'),
(34, 20, '_edit_lock', '1698307211:1'),
(35, 22, '_edit_last', '1'),
(36, 22, '_wp_page_template', 'default'),
(37, 22, '_edit_lock', '1698307331:1'),
(38, 24, '_wp_page_template', 'default'),
(39, 24, '_edit_last', '1'),
(40, 24, '_edit_lock', '1698307347:1'),
(41, 26, '_edit_last', '1'),
(42, 26, '_wp_page_template', 'default'),
(43, 26, '_edit_lock', '1698307393:1'),
(44, 28, '_wp_page_template', 'default'),
(45, 28, '_edit_last', '1'),
(46, 28, '_edit_lock', '1698307443:1'),
(47, 30, '_edit_last', '1'),
(48, 30, '_wp_page_template', 'default'),
(49, 30, '_edit_lock', '1698307455:1'),
(50, 32, '_wp_page_template', 'default'),
(51, 32, '_edit_last', '1'),
(52, 32, '_edit_lock', '1698307502:1'),
(53, 34, '_edit_last', '1'),
(54, 34, '_wp_page_template', 'default'),
(55, 34, '_edit_lock', '1698309775:1'),
(56, 36, '_wp_page_template', 'default'),
(57, 36, '_edit_last', '1'),
(58, 36, '_edit_lock', '1698307707:1'),
(59, 38, '_edit_last', '1'),
(60, 38, '_edit_lock', '1698307925:1'),
(61, 38, '_wp_page_template', 'default'),
(62, 40, '_wp_page_template', 'default'),
(63, 40, '_edit_last', '1'),
(64, 40, '_edit_lock', '1698308124:1'),
(65, 42, '_edit_last', '1'),
(66, 42, '_wp_page_template', 'default'),
(67, 42, '_edit_lock', '1698308161:1'),
(68, 44, '_wp_page_template', 'default'),
(69, 44, '_edit_last', '1'),
(70, 44, '_edit_lock', '1698308170:1'),
(71, 46, '_edit_last', '1'),
(72, 46, '_wp_page_template', 'default'),
(73, 46, '_edit_lock', '1698308182:1'),
(74, 48, '_wp_page_template', 'default'),
(75, 48, '_edit_last', '1'),
(76, 48, '_edit_lock', '1698308389:1'),
(77, 51, '_edit_last', '1'),
(78, 51, '_edit_lock', '1698819334:1'),
(79, 54, '_wp_attached_file', '2023/10/main-background.png'),
(80, 54, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:884;s:4:\"file\";s:27:\"2023/10/main-background.png\";s:8:\"filesize\";i:781677;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"main-background-300x138.png\";s:5:\"width\";i:300;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:91354;}s:5:\"large\";a:5:{s:4:\"file\";s:28:\"main-background-1024x471.png\";s:5:\"width\";i:1024;s:6:\"height\";i:471;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:948067;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"main-background-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:48372;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"main-background-768x354.png\";s:5:\"width\";i:768;s:6:\"height\";i:354;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:550189;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:28:\"main-background-1536x707.png\";s:5:\"width\";i:1536;s:6:\"height\";i:707;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2051482;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 53, '_edit_last', '1'),
(82, 53, '_edit_lock', '1698326578:1'),
(83, 55, '_wp_attached_file', '2023/10/MOVE.mp4'),
(84, 55, '_wp_attachment_metadata', 'a:10:{s:8:\"filesize\";i:16770102;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:25;s:16:\"length_formatted\";s:4:\"0:25\";s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:7:{s:10:\"dataformat\";s:3:\"mp4\";s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:48000;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";}s:17:\"created_timestamp\";i:1697706339;}'),
(85, 53, '_thumbnail_id', '54'),
(86, 53, '_wp_page_template', 'default'),
(89, 53, 'video_ulr', 'http://localhost/jodc/wp-content/uploads/2023/10/MOVE.mp4'),
(90, 53, '_video_ulr', 'field_653a26bc34a00'),
(91, 56, 'video_ulr', 'http://localhost/jodc/wp-content/uploads/2023/10/MOVE.mp4'),
(92, 56, '_video_ulr', 'field_653a26bc34a00'),
(95, 53, 'video_url', 'http://localhost/jodc/wp-content/uploads/2023/10/MOVE.mp4'),
(96, 53, '_video_url', 'field_653a26bc34a00'),
(97, 57, 'video_ulr', 'http://localhost/jodc/wp-content/uploads/2023/10/MOVE.mp4'),
(98, 57, '_video_ulr', 'field_653a26bc34a00'),
(99, 57, 'video_url', 'http://localhost/jodc/wp-content/uploads/2023/10/MOVE.mp4'),
(100, 57, '_video_url', 'field_653a26bc34a00'),
(103, 58, 'video_ulr', 'http://localhost/jodc/wp-content/uploads/2023/10/MOVE.mp4'),
(104, 58, '_video_ulr', 'field_653a26bc34a00'),
(105, 58, 'video_url', 'http://localhost/jodc/wp-content/uploads/2023/10/MOVE.mp4'),
(106, 58, '_video_url', 'field_653a26bc34a00'),
(109, 60, 'video_ulr', 'http://localhost/jodc/wp-content/uploads/2023/10/MOVE.mp4'),
(110, 60, '_video_ulr', 'field_653a26bc34a00'),
(111, 60, 'video_url', 'http://localhost/jodc/wp-content/uploads/2023/10/MOVE.mp4'),
(112, 60, '_video_url', 'field_653a26bc34a00'),
(113, 61, 'video_ulr', 'http://localhost/jodc/wp-content/uploads/2023/10/MOVE.mp4'),
(114, 61, 'video_url', 'http://localhost/jodc/wp-content/uploads/2023/10/MOVE.mp4'),
(115, 61, '_wp_page_template', 'default'),
(116, 61, '_thumbnail_id', '54'),
(117, 61, '_edit_last', '1'),
(118, 61, '_edit_lock', '1698328268:1'),
(121, 61, '_video_url', 'field_653a26bc34a00'),
(122, 62, 'video_url', 'http://localhost/jodc/wp-content/uploads/2023/10/MOVE.mp4'),
(123, 62, '_video_url', 'field_653a26bc34a00'),
(126, 63, 'video_ulr', 'http://localhost/jodc/wp-content/uploads/2023/10/MOVE.mp4'),
(127, 63, '_video_ulr', 'field_653a26bc34a00'),
(128, 63, 'video_url', ''),
(129, 63, '_video_url', 'field_653a26bc34a00'),
(134, 64, 'video_url', ''),
(135, 64, '_video_url', 'field_653a26bc34a00'),
(138, 65, 'video_url', 'http://localhost/jodc/wp-content/uploads/2023/10/MOVE.mp4'),
(139, 65, '_video_url', 'field_653a26bc34a00'),
(142, 66, 'video_ulr', 'http://localhost/jodc/wp-content/uploads/2023/10/MOVE.mp4'),
(143, 66, '_video_ulr', 'field_653a26bc34a00'),
(144, 66, 'video_url', 'http://localhost/jodc/wp-content/uploads/2023/10/MOVE.mp4'),
(145, 66, '_video_url', 'field_653a26bc34a00'),
(146, 67, '_menu_item_type', 'custom'),
(147, 67, '_menu_item_menu_item_parent', '0'),
(148, 67, '_menu_item_object_id', '67'),
(149, 67, '_menu_item_object', 'custom'),
(150, 67, '_menu_item_target', ''),
(151, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(152, 67, '_menu_item_xfn', ''),
(153, 67, '_menu_item_url', '#pll_switcher'),
(155, 67, '_pll_menu_item', 'a:6:{s:22:\"hide_if_no_translation\";i:0;s:12:\"hide_current\";i:1;s:10:\"force_home\";i:0;s:10:\"show_flags\";i:0;s:10:\"show_names\";i:1;s:8:\"dropdown\";i:0;}'),
(160, 69, '_menu_item_type', 'post_type'),
(161, 69, '_menu_item_menu_item_parent', '0'),
(162, 69, '_menu_item_object_id', '14'),
(163, 69, '_menu_item_object', 'page'),
(164, 69, '_menu_item_target', ''),
(165, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(166, 69, '_menu_item_xfn', ''),
(167, 69, '_menu_item_url', ''),
(169, 70, '_menu_item_type', 'post_type'),
(170, 70, '_menu_item_menu_item_parent', '0'),
(171, 70, '_menu_item_object_id', '18'),
(172, 70, '_menu_item_object', 'page'),
(173, 70, '_menu_item_target', ''),
(174, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(175, 70, '_menu_item_xfn', ''),
(176, 70, '_menu_item_url', ''),
(178, 71, '_menu_item_type', 'post_type'),
(179, 71, '_menu_item_menu_item_parent', '0'),
(180, 71, '_menu_item_object_id', '42'),
(181, 71, '_menu_item_object', 'page'),
(182, 71, '_menu_item_target', ''),
(183, 71, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(184, 71, '_menu_item_xfn', ''),
(185, 71, '_menu_item_url', ''),
(187, 72, '_menu_item_type', 'post_type'),
(188, 72, '_menu_item_menu_item_parent', '0'),
(189, 72, '_menu_item_object_id', '34'),
(190, 72, '_menu_item_object', 'page'),
(191, 72, '_menu_item_target', ''),
(192, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(193, 72, '_menu_item_xfn', ''),
(194, 72, '_menu_item_url', ''),
(196, 73, '_menu_item_type', 'post_type'),
(197, 73, '_menu_item_menu_item_parent', '0'),
(198, 73, '_menu_item_object_id', '22'),
(199, 73, '_menu_item_object', 'page'),
(200, 73, '_menu_item_target', ''),
(201, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(202, 73, '_menu_item_xfn', ''),
(203, 73, '_menu_item_url', ''),
(205, 74, '_menu_item_type', 'post_type'),
(206, 74, '_menu_item_menu_item_parent', '0'),
(207, 74, '_menu_item_object_id', '38'),
(208, 74, '_menu_item_object', 'page'),
(209, 74, '_menu_item_target', ''),
(210, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(211, 74, '_menu_item_xfn', ''),
(212, 74, '_menu_item_url', ''),
(214, 75, '_menu_item_type', 'post_type'),
(215, 75, '_menu_item_menu_item_parent', '0'),
(216, 75, '_menu_item_object_id', '46'),
(217, 75, '_menu_item_object', 'page'),
(218, 75, '_menu_item_target', ''),
(219, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(220, 75, '_menu_item_xfn', ''),
(221, 75, '_menu_item_url', ''),
(223, 76, '_menu_item_type', 'post_type'),
(224, 76, '_menu_item_menu_item_parent', '0'),
(225, 76, '_menu_item_object_id', '30'),
(226, 76, '_menu_item_object', 'page'),
(227, 76, '_menu_item_target', ''),
(228, 76, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(229, 76, '_menu_item_xfn', ''),
(230, 76, '_menu_item_url', ''),
(232, 77, '_menu_item_type', 'post_type'),
(233, 77, '_menu_item_menu_item_parent', '0'),
(234, 77, '_menu_item_object_id', '26'),
(235, 77, '_menu_item_object', 'page'),
(236, 77, '_menu_item_target', ''),
(237, 77, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(238, 77, '_menu_item_xfn', ''),
(239, 77, '_menu_item_url', ''),
(268, 69, '_wp_old_date', '2023-10-30'),
(269, 70, '_wp_old_date', '2023-10-30'),
(270, 71, '_wp_old_date', '2023-10-30'),
(271, 72, '_wp_old_date', '2023-10-30'),
(272, 73, '_wp_old_date', '2023-10-30'),
(273, 74, '_wp_old_date', '2023-10-30'),
(274, 75, '_wp_old_date', '2023-10-30'),
(275, 76, '_wp_old_date', '2023-10-30'),
(276, 77, '_wp_old_date', '2023-10-30'),
(277, 81, '_menu_item_type', 'custom'),
(278, 81, '_menu_item_menu_item_parent', '70'),
(279, 81, '_menu_item_object_id', '81'),
(280, 81, '_menu_item_object', 'custom'),
(281, 81, '_menu_item_target', ''),
(282, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(283, 81, '_menu_item_xfn', ''),
(284, 81, '_menu_item_url', '#'),
(286, 82, '_menu_item_type', 'custom'),
(287, 82, '_menu_item_menu_item_parent', '70'),
(288, 82, '_menu_item_object_id', '82'),
(289, 82, '_menu_item_object', 'custom'),
(290, 82, '_menu_item_target', ''),
(291, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(292, 82, '_menu_item_xfn', ''),
(293, 82, '_menu_item_url', '#'),
(295, 83, '_menu_item_type', 'custom'),
(296, 83, '_menu_item_menu_item_parent', '72'),
(297, 83, '_menu_item_object_id', '83'),
(298, 83, '_menu_item_object', 'custom'),
(299, 83, '_menu_item_target', ''),
(300, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(301, 83, '_menu_item_xfn', ''),
(302, 83, '_menu_item_url', '#'),
(304, 84, '_wp_attached_file', '2023/10/blog1.png'),
(305, 84, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1136;s:6:\"height\";i:872;s:4:\"file\";s:17:\"2023/10/blog1.png\";s:8:\"filesize\";i:1792256;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"blog1-300x230.png\";s:5:\"width\";i:300;s:6:\"height\";i:230;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:134942;}s:5:\"large\";a:5:{s:4:\"file\";s:18:\"blog1-1024x786.png\";s:5:\"width\";i:1024;s:6:\"height\";i:786;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1319061;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"blog1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:48491;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"blog1-768x590.png\";s:5:\"width\";i:768;s:6:\"height\";i:590;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:785058;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2023-10-24 09:45:39', '2023-10-24 09:45:39', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/jodc/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2023-10-25 09:48:35', '2023-10-25 09:48:35', '', 0, 'http://localhost/jodc/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-10-24 09:45:39', '2023-10-24 09:45:39', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/jodc.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2023-10-25 09:48:37', '2023-10-25 09:48:37', '', 0, 'http://localhost/jodc/?page_id=3', 0, 'page', '', 0),
(4, 0, '2023-10-24 09:45:41', '2023-10-24 09:45:41', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2023-10-24 09:45:41', '2023-10-24 09:45:41', '', 0, 'https://localhost/jodc/index.php/2023/10/24/navigation/', 0, 'wp_navigation', '', 0),
(8, 1, '2023-10-24 12:13:14', '2023-10-24 12:13:14', '{\n    \"site_icon\": {\n        \"value\": 7,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-24 12:13:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '77f27e00-ff20-479d-858e-80cbc6c53f83', '', '', '2023-10-24 12:13:14', '2023-10-24 12:13:14', '', 0, 'http://localhost/jodc/index.php/2023/10/24/77f27e00-ff20-479d-858e-80cbc6c53f83/', 0, 'customize_changeset', '', 0),
(9, 1, '2023-10-24 12:31:48', '2023-10-24 12:31:48', '', 'fav', '', 'inherit', 'open', 'closed', '', 'fav', '', '', '2023-10-24 12:31:48', '2023-10-24 12:31:48', '', 0, 'http://localhost/jodc/wp-content/uploads/2023/10/fav-1.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2023-10-24 12:31:51', '2023-10-24 12:31:51', 'http://localhost/jodc/wp-content/uploads/2023/10/cropped-fav-1.png', 'cropped-fav-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-fav-1-png', '', '', '2023-10-24 12:31:51', '2023-10-24 12:31:51', '', 0, 'http://localhost/jodc/wp-content/uploads/2023/10/cropped-fav-1.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2023-10-24 12:31:54', '2023-10-24 12:31:54', '{\n    \"site_icon\": {\n        \"value\": 10,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-24 12:31:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c2a0850a-23dd-4a87-b315-7ed5c073ee55', '', '', '2023-10-24 12:31:54', '2023-10-24 12:31:54', '', 0, 'http://localhost/jodc/index.php/2023/10/24/c2a0850a-23dd-4a87-b315-7ed5c073ee55/', 0, 'customize_changeset', '', 0),
(12, 1, '2023-10-25 09:48:35', '2023-10-25 09:48:35', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/jodc/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-10-25 09:48:35', '2023-10-25 09:48:35', '', 2, 'http://localhost/jodc/?p=12', 0, 'revision', '', 0),
(13, 1, '2023-10-25 09:48:37', '2023-10-25 09:48:37', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/jodc.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2023-10-25 09:48:37', '2023-10-25 09:48:37', '', 3, 'http://localhost/jodc/?p=13', 0, 'revision', '', 0),
(14, 1, '2023-10-25 09:48:43', '2023-10-25 09:48:43', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-10-25 09:48:43', '2023-10-25 09:48:43', '', 0, 'http://localhost/jodc/?page_id=14', 0, 'page', '', 0),
(15, 1, '2023-10-25 09:48:43', '2023-10-25 09:48:43', '', 'Home', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2023-10-25 09:48:43', '2023-10-25 09:48:43', '', 14, 'http://localhost/jodc/?p=15', 0, 'revision', '', 0),
(16, 1, '2023-10-25 09:49:05', '2023-10-25 09:49:05', '', 'الرئيسية', '', 'publish', 'closed', 'closed', '', '%d8%a7%d9%84%d8%b1%d8%a6%d9%8a%d8%b3%d9%8a%d8%a9', '', '', '2023-10-25 09:49:05', '2023-10-25 09:49:05', '', 0, 'http://localhost/jodc/?page_id=16', 0, 'page', '', 0),
(17, 1, '2023-10-25 09:49:05', '2023-10-25 09:49:05', '', 'الرئيسية', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-10-25 09:49:05', '2023-10-25 09:49:05', '', 16, 'http://localhost/jodc/?p=17', 0, 'revision', '', 0),
(18, 1, '2023-10-26 08:02:24', '2023-10-26 08:02:24', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2023-10-26 08:02:24', '2023-10-26 08:02:24', '', 0, 'http://localhost/jodc/?page_id=18', 0, 'page', '', 0),
(19, 1, '2023-10-26 08:02:24', '2023-10-26 08:02:24', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2023-10-26 08:02:24', '2023-10-26 08:02:24', '', 18, 'http://localhost/jodc/?p=19', 0, 'revision', '', 0),
(20, 1, '2023-10-26 08:02:34', '2023-10-26 08:02:34', '', 'نبذة عنا', '', 'publish', 'closed', 'closed', '', '%d9%86%d8%a8%d8%b0%d8%a9-%d8%b9%d9%86%d8%a7', '', '', '2023-10-26 08:02:34', '2023-10-26 08:02:34', '', 0, 'http://localhost/jodc/?page_id=20', 0, 'page', '', 0),
(21, 1, '2023-10-26 08:02:34', '2023-10-26 08:02:34', '', 'نبذة عنا', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2023-10-26 08:02:34', '2023-10-26 08:02:34', '', 20, 'http://localhost/jodc/?p=21', 0, 'revision', '', 0),
(22, 1, '2023-10-26 08:04:33', '2023-10-26 08:04:33', '', 'Hospitality', '', 'publish', 'closed', 'closed', '', 'hospitality', '', '', '2023-10-26 08:04:33', '2023-10-26 08:04:33', '', 0, 'http://localhost/jodc/?page_id=22', 0, 'page', '', 0),
(23, 1, '2023-10-26 08:04:33', '2023-10-26 08:04:33', '', 'Hospitality', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2023-10-26 08:04:33', '2023-10-26 08:04:33', '', 22, 'http://localhost/jodc/?p=23', 0, 'revision', '', 0),
(24, 1, '2023-10-26 08:04:46', '2023-10-26 08:04:46', '', 'الضيافة', '', 'publish', 'closed', 'closed', '', '%d8%a7%d9%84%d8%b6%d9%8a%d8%a7%d9%81%d8%a9', '', '', '2023-10-26 08:04:46', '2023-10-26 08:04:46', '', 0, 'http://localhost/jodc/?page_id=24', 0, 'page', '', 0),
(25, 1, '2023-10-26 08:04:46', '2023-10-26 08:04:46', '', 'الضيافة', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2023-10-26 08:04:46', '2023-10-26 08:04:46', '', 24, 'http://localhost/jodc/?p=25', 0, 'revision', '', 0),
(26, 1, '2023-10-26 08:05:34', '2023-10-26 08:05:34', '', 'Residential', '', 'publish', 'closed', 'closed', '', 'residential', '', '', '2023-10-26 08:05:34', '2023-10-26 08:05:34', '', 0, 'http://localhost/jodc/?page_id=26', 0, 'page', '', 0),
(27, 1, '2023-10-26 08:05:34', '2023-10-26 08:05:34', '', 'Residential', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2023-10-26 08:05:34', '2023-10-26 08:05:34', '', 26, 'http://localhost/jodc/?p=27', 0, 'revision', '', 0),
(28, 1, '2023-10-26 08:06:13', '2023-10-26 08:06:13', '', 'سكني', '', 'publish', 'closed', 'closed', '', '%d8%b3%d9%83%d9%86%d9%8a', '', '', '2023-10-26 08:06:13', '2023-10-26 08:06:13', '', 0, 'http://localhost/jodc/?page_id=28', 0, 'page', '', 0),
(29, 1, '2023-10-26 08:06:13', '2023-10-26 08:06:13', '', 'سكني', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2023-10-26 08:06:13', '2023-10-26 08:06:13', '', 28, 'http://localhost/jodc/?p=29', 0, 'revision', '', 0),
(30, 1, '2023-10-26 08:06:37', '2023-10-26 08:06:37', '', 'Malls', '', 'publish', 'closed', 'closed', '', 'malls', '', '', '2023-10-26 08:06:37', '2023-10-26 08:06:37', '', 0, 'http://localhost/jodc/?page_id=30', 0, 'page', '', 0),
(31, 1, '2023-10-26 08:06:37', '2023-10-26 08:06:37', '', 'Malls', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2023-10-26 08:06:37', '2023-10-26 08:06:37', '', 30, 'http://localhost/jodc/?p=31', 0, 'revision', '', 0),
(32, 1, '2023-10-26 08:06:50', '2023-10-26 08:06:50', '', 'الأسواق', '', 'publish', 'closed', 'closed', '', '%d8%a7%d9%84%d8%a3%d8%b3%d9%88%d8%a7%d9%82', '', '', '2023-10-26 08:06:50', '2023-10-26 08:06:50', '', 0, 'http://localhost/jodc/?page_id=32', 0, 'page', '', 0),
(33, 1, '2023-10-26 08:06:50', '2023-10-26 08:06:50', '', 'الأسواق', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2023-10-26 08:06:50', '2023-10-26 08:06:50', '', 32, 'http://localhost/jodc/?p=33', 0, 'revision', '', 0),
(34, 1, '2023-10-26 08:07:36', '2023-10-26 08:07:36', '', 'Experience', '', 'publish', 'closed', 'closed', '', 'experience', '', '', '2023-10-26 08:07:36', '2023-10-26 08:07:36', '', 0, 'http://localhost/jodc/?page_id=34', 0, 'page', '', 0),
(35, 1, '2023-10-26 08:07:36', '2023-10-26 08:07:36', '', 'Experience', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2023-10-26 08:07:36', '2023-10-26 08:07:36', '', 34, 'http://localhost/jodc/?p=35', 0, 'revision', '', 0),
(36, 1, '2023-10-26 08:10:41', '2023-10-26 08:10:41', '', 'التجارب', '', 'publish', 'closed', 'closed', '', '%d8%a7%d9%84%d8%aa%d8%ac%d8%a7%d8%b1%d8%a8', '', '', '2023-10-26 08:10:41', '2023-10-26 08:10:41', '', 0, 'http://localhost/jodc/?page_id=36', 0, 'page', '', 0),
(37, 1, '2023-10-26 08:10:41', '2023-10-26 08:10:41', '', 'التجارب', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2023-10-26 08:10:41', '2023-10-26 08:10:41', '', 36, 'http://localhost/jodc/?p=37', 0, 'revision', '', 0),
(38, 1, '2023-10-26 08:14:28', '2023-10-26 08:14:28', '', 'Investors', '', 'publish', 'closed', 'closed', '', 'investors', '', '', '2023-10-26 08:14:28', '2023-10-26 08:14:28', '', 0, 'http://localhost/jodc/?page_id=38', 0, 'page', '', 0),
(39, 1, '2023-10-26 08:14:28', '2023-10-26 08:14:28', '', 'Investors', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2023-10-26 08:14:28', '2023-10-26 08:14:28', '', 38, 'http://localhost/jodc/?p=39', 0, 'revision', '', 0),
(40, 1, '2023-10-26 08:15:20', '2023-10-26 08:15:20', '', 'المستثمرين', '', 'publish', 'closed', 'closed', '', '%d8%a7%d9%84%d9%85%d8%b3%d8%aa%d8%ab%d9%85%d8%b1%d9%8a%d9%86', '', '', '2023-10-26 08:15:20', '2023-10-26 08:15:20', '', 0, 'http://localhost/jodc/?page_id=40', 0, 'page', '', 0),
(41, 1, '2023-10-26 08:15:20', '2023-10-26 08:15:20', '', 'المستثمرين', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2023-10-26 08:15:20', '2023-10-26 08:15:20', '', 40, 'http://localhost/jodc/?p=41', 0, 'revision', '', 0),
(42, 1, '2023-10-26 08:18:24', '2023-10-26 08:18:24', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2023-10-26 08:18:24', '2023-10-26 08:18:24', '', 0, 'http://localhost/jodc/?page_id=42', 0, 'page', '', 0),
(43, 1, '2023-10-26 08:18:24', '2023-10-26 08:18:24', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2023-10-26 08:18:24', '2023-10-26 08:18:24', '', 42, 'http://localhost/jodc/?p=43', 0, 'revision', '', 0),
(44, 1, '2023-10-26 08:18:31', '2023-10-26 08:18:31', '', 'تواصل معنا', '', 'publish', 'closed', 'closed', '', '%d8%aa%d9%88%d8%a7%d8%b5%d9%84-%d9%85%d8%b9%d9%86%d8%a7', '', '', '2023-10-26 08:18:31', '2023-10-26 08:18:31', '', 0, 'http://localhost/jodc/?page_id=44', 0, 'page', '', 0),
(45, 1, '2023-10-26 08:18:31', '2023-10-26 08:18:31', '', 'تواصل معنا', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2023-10-26 08:18:31', '2023-10-26 08:18:31', '', 44, 'http://localhost/jodc/?p=45', 0, 'revision', '', 0),
(46, 1, '2023-10-26 08:18:45', '2023-10-26 08:18:45', '', 'Join Us', '', 'publish', 'closed', 'closed', '', 'join-us', '', '', '2023-10-26 08:18:45', '2023-10-26 08:18:45', '', 0, 'http://localhost/jodc/?page_id=46', 0, 'page', '', 0),
(47, 1, '2023-10-26 08:18:45', '2023-10-26 08:18:45', '', 'Join Us', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2023-10-26 08:18:45', '2023-10-26 08:18:45', '', 46, 'http://localhost/jodc/?p=47', 0, 'revision', '', 0),
(48, 1, '2023-10-26 08:19:05', '2023-10-26 08:19:05', '', 'انضم لنا', '', 'publish', 'closed', 'closed', '', '%d8%a7%d9%86%d8%b6%d9%85-%d9%84%d9%86%d8%a7', '', '', '2023-10-26 08:19:05', '2023-10-26 08:19:05', '', 0, 'http://localhost/jodc/?page_id=48', 0, 'page', '', 0),
(49, 1, '2023-10-26 08:19:05', '2023-10-26 08:19:05', '', 'انضم لنا', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2023-10-26 08:19:05', '2023-10-26 08:19:05', '', 48, 'http://localhost/jodc/?p=49', 0, 'revision', '', 0),
(51, 1, '2023-10-26 08:45:10', '2023-10-26 08:45:10', 'a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:19:\"category:home_video\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"category:home_video_ar\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'video background', 'video-background', 'publish', 'closed', 'closed', '', 'group_653a26bca9210', '', '', '2023-10-26 08:58:38', '2023-10-26 08:58:38', '', 0, 'http://localhost/jodc/?post_type=acf-field-group&#038;p=51', 0, 'acf-field-group', '', 0),
(52, 1, '2023-10-26 08:45:10', '2023-10-26 08:45:10', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'video url', 'video_url', 'publish', 'closed', 'closed', '', 'field_653a26bc34a00', '', '', '2023-10-26 08:58:38', '2023-10-26 08:58:38', '', 51, 'http://localhost/jodc/?post_type=acf-field&#038;p=52', 0, 'acf-field', '', 0),
(53, 1, '2023-10-26 08:56:30', '2023-10-26 08:56:30', 'Combines our forward-thinking approach to sustainable growth with a deep respect for and preservation of our cultural heritage. It\'s our commitment to shaping a better future while honoring the past.', 'Envisioning Growth, Enhancing Heritage', '', 'publish', 'open', 'open', '', 'envisioning-growth-enhancing-heritage', '', '', '2023-10-26 12:40:22', '2023-10-26 12:40:22', '', 0, 'http://localhost/jodc/?p=53', 0, 'post', '', 0),
(54, 1, '2023-10-26 08:52:14', '2023-10-26 08:52:14', '', 'main background', '', 'inherit', 'open', 'closed', '', 'main-background', '', '', '2023-10-26 08:52:14', '2023-10-26 08:52:14', '', 53, 'http://localhost/jodc/wp-content/uploads/2023/10/main-background.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2023-10-26 08:56:11', '2023-10-26 08:56:11', '', 'MOVE', '', 'inherit', 'open', 'closed', '', 'move', '', '', '2023-10-26 08:56:11', '2023-10-26 08:56:11', '', 0, 'http://localhost/jodc/wp-content/uploads/2023/10/MOVE.mp4', 0, 'attachment', 'video/mp4', 0),
(56, 1, '2023-10-26 08:56:30', '2023-10-26 08:56:30', 'Combines our forward-thinking approach to sustainable growth with a deep respect for and preservation of our cultural heritage. It\'s our commitment to shaping a better future while honoring the past.', 'Envisioning Growth, Enhancing Heritage', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2023-10-26 08:56:30', '2023-10-26 08:56:30', '', 53, 'http://localhost/jodc/?p=56', 0, 'revision', '', 0),
(57, 1, '2023-10-26 09:00:33', '2023-10-26 09:00:33', 'Combines our forward-thinking approach to sustainable growth with a deep respect for and preservation of our cultural heritage. It\'s our commitment to shaping a better future while honoring the past.', 'Envisioning Growth, Enhancing Heritage', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2023-10-26 09:00:33', '2023-10-26 09:00:33', '', 53, 'http://localhost/jodc/?p=57', 0, 'revision', '', 0),
(58, 1, '2023-10-26 12:19:52', '2023-10-26 12:19:52', 'Combines our forward-thinking approach to sustainable growth with a deep respect for and preservation of our cultural heritage. It\'s our commitment to shaping a better future while honoring the past.', 'Envisioning Growth', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2023-10-26 12:19:52', '2023-10-26 12:19:52', '', 53, 'http://localhost/jodc/?p=58', 0, 'revision', '', 0),
(59, 1, '2023-10-26 12:20:54', '2023-10-26 12:20:54', 'Combines our forward-thinking approach to sustainable growth with a deep respect for and preservation of our cultural heritage. It\'s our commitment to shaping a better future while honoring the past.', 'Envisioning Growth, Enhancing Heritage', '', 'inherit', 'closed', 'closed', '', '53-autosave-v1', '', '', '2023-10-26 12:20:54', '2023-10-26 12:20:54', '', 53, 'http://localhost/jodc/?p=59', 0, 'revision', '', 0),
(60, 1, '2023-10-26 12:22:15', '2023-10-26 12:22:15', 'Combines our forward-thinking approach to sustainable growth with a deep respect for and preservation of our cultural heritage. It\'s our commitment to shaping a better future while honoring the past.', 'Envisioning Growth, Enhancing Heritage', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2023-10-26 12:22:15', '2023-10-26 12:22:15', '', 53, 'http://localhost/jodc/?p=60', 0, 'revision', '', 0),
(61, 1, '2023-10-26 12:25:27', '2023-10-26 12:25:27', 'رحلة التحول الكبير والتقدم الباهر في منطقة جبل عمر، في تطوير البنية التحتية، وازدهار المباني الشامخة.', 'من أرض عشوائية إلى صرح شامخ', '', 'publish', 'open', 'open', '', '%d9%85%d9%86-%d8%a3%d8%b1%d8%b6-%d8%b9%d8%b4%d9%88%d8%a7%d8%a6%d9%8a%d8%a9-%d8%a5%d9%84%d9%89-%d8%b5%d8%b1%d8%ad-%d8%b4%d8%a7%d9%85%d8%ae', '', '', '2023-10-26 12:40:17', '2023-10-26 12:40:17', '', 0, 'http://localhost/jodc/?p=61', 0, 'post', '', 0),
(62, 1, '2023-10-26 12:25:27', '2023-10-26 12:25:27', 'رحلة التحول الكبير والتقدم الباهر في منطقة جبل عمر، في تطوير البنية التحتية، وازدهار المباني الشامخة.', 'من أرض عشوائية إلى صرح شامخ', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2023-10-26 12:25:27', '2023-10-26 12:25:27', '', 61, 'http://localhost/jodc/?p=62', 0, 'revision', '', 0),
(63, 1, '2023-10-26 12:38:27', '2023-10-26 12:38:27', 'Combines our forward-thinking approach to sustainable growth with a deep respect for and preservation of our cultural heritage. It\'s our commitment to shaping a better future while honoring the past.', 'Envisioning Growth, Enhancing Heritage', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2023-10-26 12:38:27', '2023-10-26 12:38:27', '', 53, 'http://localhost/jodc/?p=63', 0, 'revision', '', 0),
(64, 1, '2023-10-26 12:39:09', '2023-10-26 12:39:09', 'رحلة التحول الكبير والتقدم الباهر في منطقة جبل عمر، في تطوير البنية التحتية، وازدهار المباني الشامخة.', 'من أرض عشوائية إلى صرح شامخ', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2023-10-26 12:39:09', '2023-10-26 12:39:09', '', 61, 'http://localhost/jodc/?p=64', 0, 'revision', '', 0),
(65, 1, '2023-10-26 12:40:17', '2023-10-26 12:40:17', 'رحلة التحول الكبير والتقدم الباهر في منطقة جبل عمر، في تطوير البنية التحتية، وازدهار المباني الشامخة.', 'من أرض عشوائية إلى صرح شامخ', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2023-10-26 12:40:17', '2023-10-26 12:40:17', '', 61, 'http://localhost/jodc/?p=65', 0, 'revision', '', 0),
(66, 1, '2023-10-26 12:40:22', '2023-10-26 12:40:22', 'Combines our forward-thinking approach to sustainable growth with a deep respect for and preservation of our cultural heritage. It\'s our commitment to shaping a better future while honoring the past.', 'Envisioning Growth, Enhancing Heritage', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2023-10-26 12:40:22', '2023-10-26 12:40:22', '', 53, 'http://localhost/jodc/?p=66', 0, 'revision', '', 0),
(67, 1, '2023-10-29 13:08:29', '2023-10-29 13:08:29', '', 'Languages', '', 'publish', 'closed', 'closed', '', 'languages', '', '', '2023-10-29 13:08:29', '2023-10-29 13:08:29', '', 0, 'http://localhost/jodc/?p=67', 1, 'nav_menu_item', '', 0),
(69, 1, '2023-10-31 09:40:28', '2023-10-30 14:00:56', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2023-10-31 09:40:28', '2023-10-31 09:40:28', '', 0, 'http://localhost/jodc/?p=69', 1, 'nav_menu_item', '', 0),
(70, 1, '2023-10-31 09:40:28', '2023-10-30 14:00:56', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2023-10-31 09:40:28', '2023-10-31 09:40:28', '', 0, 'http://localhost/jodc/?p=70', 2, 'nav_menu_item', '', 0),
(71, 1, '2023-10-31 09:40:28', '2023-10-30 14:00:56', ' ', '', '', 'publish', 'closed', 'closed', '', '71', '', '', '2023-10-31 09:40:28', '2023-10-31 09:40:28', '', 0, 'http://localhost/jodc/?p=71', 5, 'nav_menu_item', '', 0),
(72, 1, '2023-10-31 09:40:28', '2023-10-30 14:00:56', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2023-10-31 09:40:28', '2023-10-31 09:40:28', '', 0, 'http://localhost/jodc/?p=72', 6, 'nav_menu_item', '', 0),
(73, 1, '2023-10-31 09:40:28', '2023-10-30 14:00:56', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2023-10-31 09:40:28', '2023-10-31 09:40:28', '', 0, 'http://localhost/jodc/?p=73', 8, 'nav_menu_item', '', 0),
(74, 1, '2023-10-31 09:40:28', '2023-10-30 14:00:56', ' ', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2023-10-31 09:40:28', '2023-10-31 09:40:28', '', 0, 'http://localhost/jodc/?p=74', 9, 'nav_menu_item', '', 0),
(75, 1, '2023-10-31 09:40:28', '2023-10-30 14:00:56', ' ', '', '', 'publish', 'closed', 'closed', '', '75', '', '', '2023-10-31 09:40:28', '2023-10-31 09:40:28', '', 0, 'http://localhost/jodc/?p=75', 10, 'nav_menu_item', '', 0),
(76, 1, '2023-10-31 09:40:28', '2023-10-30 14:00:56', ' ', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2023-10-31 09:40:28', '2023-10-31 09:40:28', '', 0, 'http://localhost/jodc/?p=76', 11, 'nav_menu_item', '', 0),
(77, 1, '2023-10-31 09:40:28', '2023-10-30 14:00:56', ' ', '', '', 'publish', 'closed', 'closed', '', '77', '', '', '2023-10-31 09:40:28', '2023-10-31 09:40:28', '', 0, 'http://localhost/jodc/?p=77', 12, 'nav_menu_item', '', 0),
(81, 1, '2023-10-31 09:40:28', '2023-10-31 06:38:16', '', 'LIST1', '', 'publish', 'closed', 'closed', '', 'list1', '', '', '2023-10-31 09:40:28', '2023-10-31 09:40:28', '', 0, 'http://localhost/jodc/?p=81', 3, 'nav_menu_item', '', 0),
(82, 1, '2023-10-31 09:40:28', '2023-10-31 06:38:16', '', 'List 2', '', 'publish', 'closed', 'closed', '', 'list-2', '', '', '2023-10-31 09:40:28', '2023-10-31 09:40:28', '', 0, 'http://localhost/jodc/?p=82', 4, 'nav_menu_item', '', 0),
(83, 1, '2023-10-31 09:40:28', '2023-10-31 07:50:48', '', 'list 3', '', 'publish', 'closed', 'closed', '', 'list-3', '', '', '2023-10-31 09:40:28', '2023-10-31 09:40:28', '', 0, 'http://localhost/jodc/?p=83', 7, 'nav_menu_item', '', 0),
(84, 1, '2023-10-31 13:35:23', '2023-10-31 13:35:23', '', 'blog1', '', 'inherit', 'open', 'closed', '', 'blog1', '', '', '2023-10-31 13:35:23', '2023-10-31 13:35:23', '', 0, 'http://localhost/jodc/wp-content/uploads/2023/10/blog1.png', 0, 'attachment', 'image/png', 0),
(85, 1, '2023-11-02 11:36:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-11-02 11:36:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/jodc/?p=85', 0, 'post', '', 0),
(86, 1, '2023-11-02 12:17:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-11-02 12:17:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/jodc/?post_type=acf-field-group&p=86', 0, 'acf-field-group', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'English', 'en', 0),
(3, 'English', 'pll_en', 0),
(4, 'pll_6537b1af468af', 'pll_6537b1af468af', 0),
(5, 'العربية', 'ar', 0),
(6, 'العربية', 'pll_ar', 0),
(7, 'Uncategorized', 'uncategorized-ar', 0),
(9, 'pll_6538e4912d558', 'pll_6538e4912d558', 0),
(10, 'pll_653a1d1adf0ac', 'pll_653a1d1adf0ac', 0),
(11, 'pll_653a1d9ea0bee', 'pll_653a1d9ea0bee', 0),
(12, 'pll_653a1df548792', 'pll_653a1df548792', 0),
(13, 'pll_653a1e1ab4340', 'pll_653a1e1ab4340', 0),
(14, 'pll_653a1f018c9e8', 'pll_653a1f018c9e8', 0),
(15, 'pll_653a2018d2607', 'pll_653a2018d2607', 0),
(16, 'pll_653a20d7a97dd', 'pll_653a20d7a97dd', 0),
(17, 'pll_653a20f9511ec', 'pll_653a20f9511ec', 0),
(18, 'main menu', 'main-menu', 0),
(19, 'main menu ar', 'main-menu-ar', 0),
(20, 'language menu', 'language-menu', 0),
(21, 'home_video', 'home_video', 0),
(22, 'pll_653a269ee91dd', 'pll_653a269ee91dd', 0),
(23, 'home_video_ar', 'home_video_ar', 0),
(25, 'pll_653a5ab72846d', 'pll_653a5ab72846d', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 3, 0),
(1, 4, 0),
(2, 2, 0),
(3, 2, 0),
(7, 4, 0),
(7, 6, 0),
(14, 2, 0),
(14, 9, 0),
(16, 5, 0),
(16, 9, 0),
(18, 2, 0),
(18, 10, 0),
(20, 5, 0),
(20, 10, 0),
(21, 3, 0),
(21, 22, 0),
(22, 2, 0),
(22, 11, 0),
(23, 6, 0),
(23, 22, 0),
(24, 5, 0),
(24, 11, 0),
(26, 2, 0),
(26, 12, 0),
(28, 5, 0),
(28, 12, 0),
(30, 2, 0),
(30, 13, 0),
(32, 5, 0),
(32, 13, 0),
(34, 2, 0),
(34, 14, 0),
(36, 5, 0),
(36, 14, 0),
(38, 2, 0),
(38, 15, 0),
(40, 5, 0),
(40, 15, 0),
(42, 2, 0),
(42, 16, 0),
(44, 5, 0),
(44, 16, 0),
(46, 2, 0),
(46, 17, 0),
(48, 5, 0),
(48, 17, 0),
(53, 2, 0),
(53, 21, 0),
(53, 25, 0),
(61, 5, 0),
(61, 23, 0),
(61, 25, 0),
(67, 20, 0),
(69, 18, 0),
(70, 18, 0),
(71, 18, 0),
(72, 18, 0),
(73, 18, 0),
(74, 18, 0),
(75, 18, 0),
(76, 18, 0),
(77, 18, 0),
(81, 18, 0),
(82, 18, 0),
(83, 18, 0),
(85, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'language', 'a:3:{s:6:\"locale\";s:5:\"en_GB\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"gb\";}', 0, 10),
(3, 3, 'term_language', '', 0, 2),
(4, 4, 'term_translations', 'a:2:{s:2:\"en\";i:1;s:2:\"ar\";i:7;}', 0, 2),
(5, 5, 'language', 'a:3:{s:6:\"locale\";s:2:\"ar\";s:3:\"rtl\";i:1;s:9:\"flag_code\";s:4:\"arab\";}', 0, 10),
(6, 6, 'term_language', '', 0, 2),
(7, 7, 'category', '', 0, 0),
(9, 9, 'post_translations', 'a:2:{s:2:\"ar\";i:16;s:2:\"en\";i:14;}', 0, 2),
(10, 10, 'post_translations', 'a:2:{s:2:\"ar\";i:20;s:2:\"en\";i:18;}', 0, 2),
(11, 11, 'post_translations', 'a:2:{s:2:\"ar\";i:24;s:2:\"en\";i:22;}', 0, 2),
(12, 12, 'post_translations', 'a:2:{s:2:\"ar\";i:28;s:2:\"en\";i:26;}', 0, 2),
(13, 13, 'post_translations', 'a:2:{s:2:\"ar\";i:32;s:2:\"en\";i:30;}', 0, 2),
(14, 14, 'post_translations', 'a:2:{s:2:\"ar\";i:36;s:2:\"en\";i:34;}', 0, 2),
(15, 15, 'post_translations', 'a:2:{s:2:\"ar\";i:40;s:2:\"en\";i:38;}', 0, 2),
(16, 16, 'post_translations', 'a:2:{s:2:\"ar\";i:44;s:2:\"en\";i:42;}', 0, 2),
(17, 17, 'post_translations', 'a:2:{s:2:\"ar\";i:48;s:2:\"en\";i:46;}', 0, 2),
(18, 18, 'nav_menu', '', 0, 12),
(19, 19, 'nav_menu', '', 0, 0),
(20, 20, 'nav_menu', '', 0, 1),
(21, 21, 'category', '', 0, 1),
(22, 22, 'term_translations', 'a:2:{s:2:\"en\";i:21;s:2:\"ar\";i:23;}', 0, 2),
(23, 23, 'category', '', 0, 1),
(25, 25, 'post_translations', 'a:2:{s:2:\"en\";i:53;s:2:\"ar\";i:61;}', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Jaba Omar Development Company'),
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
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1698226773'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(22, 1, 'nav_menu_recently_edited', '18'),
(23, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(32, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(33, 1, 'acf_user_settings', 'a:1:{s:19:\"post-type-first-run\";b:1;}'),
(34, 1, 'pll_filter_content', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Jaba Omar Development Company', '$P$BG1SZaYOuR21htSjUjJdUpJwNySfq71', 'jaba-omar-development-company', 'mohjel369@hotmail.com', 'http://localhost/jodc', '2023-10-24 09:45:39', '', 0, 'Jaba Omar Development Company');

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=424;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
