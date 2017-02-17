-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 10.12.3.74
-- Generation Time: Feb 07, 2017 at 05:08 AM
-- Server version: 5.0.83-community
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db1062794_wordpress`
--

--
-- Truncate table before insert `wp_commentmeta`
--

TRUNCATE TABLE `wp_commentmeta`;
--
-- Truncate table before insert `wp_comments`
--

TRUNCATE TABLE `wp_comments`;
--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-08-08 06:02:33', '2015-08-08 06:02:33', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

--
-- Truncate table before insert `wp_links`
--

TRUNCATE TABLE `wp_links`;
--
-- Truncate table before insert `wp_options`
--

TRUNCATE TABLE `wp_options`;
--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://www.sequencegxp.com', 'yes'),
(2, 'home', 'http://www.sequencegxp.com', 'yes'),
(3, 'blogname', 'Sequence Quality and Compliance', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jsanchez@sequenceqcs.com', 'yes'),
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
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'twentyfifteen', 'yes'),
(42, 'stylesheet', 'twentyfifteen', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '31536', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '31536', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(98, 'rewrite_rules', 'a:59:{s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(97, 'cron', 'a:3:{i:1439056954;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1439061000;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(100, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.4.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.4-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.2.4-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.4";s:7:"version";s:5:"4.2.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1439013759;s:15:"version_checked";s:5:"4.2.4";s:12:"translations";a:0:{}}', 'yes'),
(103, '_site_transient_timeout_theme_roots', '1439015560', 'yes'),
(104, '_site_transient_theme_roots', 'a:4:{s:8:"sequence";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes'),
(106, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1439013762;s:7:"checked";a:4:{s:8:"sequence";s:3:"1.0";s:14:"twentyfourteen";s:3:"1.0";s:14:"twentythirteen";s:3:"1.1";s:12:"twentytwelve";s:3:"1.3";}s:8:"response";a:3:{s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.4";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentyfourteen.1.4.zip";}s:14:"twentythirteen";a:4:{s:5:"theme";s:14:"twentythirteen";s:11:"new_version";s:3:"1.5";s:3:"url";s:44:"https://wordpress.org/themes/twentythirteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentythirteen.1.5.zip";}s:12:"twentytwelve";a:4:{s:5:"theme";s:12:"twentytwelve";s:11:"new_version";s:3:"1.7";s:3:"url";s:42:"https://wordpress.org/themes/twentytwelve/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/twentytwelve.1.7.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(107, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1439013761;s:8:"response";a:2:{s:43:"all-in-one-seo-pack/all_in_one_seo_pack.php";O:8:"stdClass":6:{s:2:"id";s:3:"520";s:4:"slug";s:19:"all-in-one-seo-pack";s:6:"plugin";s:43:"all-in-one-seo-pack/all_in_one_seo_pack.php";s:11:"new_version";s:7:"2.2.7.1";s:3:"url";s:50:"https://wordpress.org/plugins/all-in-one-seo-pack/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/all-in-one-seo-pack.zip";}s:64:"quick-pagepost-redirect-plugin_old/page_post_redirect_plugin.php";O:8:"stdClass":7:{s:2:"id";s:4:"9318";s:4:"slug";s:30:"quick-pagepost-redirect-plugin";s:6:"plugin";s:64:"quick-pagepost-redirect-plugin_old/page_post_redirect_plugin.php";s:11:"new_version";s:5:"5.1.1";s:3:"url";s:61:"https://wordpress.org/plugins/quick-pagepost-redirect-plugin/";s:7:"package";s:73:"https://downloads.wordpress.org/plugin/quick-pagepost-redirect-plugin.zip";s:14:"upgrade_notice";s:30:"Bug Fixes and Added Fueatures.";}}s:12:"translations";a:0:{}s:9:"no_update";a:7:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.2";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/advanced-custom-fields.zip";}s:25:"easy-table/easy-table.php";O:8:"stdClass":6:{s:2:"id";s:5:"31650";s:4:"slug";s:10:"easy-table";s:6:"plugin";s:25:"easy-table/easy-table.php";s:11:"new_version";s:5:"1.5.2";s:3:"url";s:41:"https://wordpress.org/plugins/easy-table/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/easy-table.1.5.2.zip";}s:47:"import-users-from-csv/import-users-from-csv.php";O:8:"stdClass":6:{s:2:"id";s:5:"22720";s:4:"slug";s:21:"import-users-from-csv";s:6:"plugin";s:47:"import-users-from-csv/import-users-from-csv.php";s:11:"new_version";s:5:"1.0.0";s:3:"url";s:52:"https://wordpress.org/plugins/import-users-from-csv/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/import-users-from-csv.1.0.0.zip";}s:46:"peters-login-redirect_old/wplogin_redirect.php";O:8:"stdClass":6:{s:2:"id";s:4:"4633";s:4:"slug";s:21:"peters-login-redirect";s:6:"plugin";s:46:"peters-login-redirect_old/wplogin_redirect.php";s:11:"new_version";s:5:"2.8.3";s:3:"url";s:52:"https://wordpress.org/plugins/peters-login-redirect/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/peters-login-redirect.zip";}s:53:"restricted-site-access_old/restricted_site_access.php";O:8:"stdClass":7:{s:2:"id";s:4:"9708";s:4:"slug";s:22:"restricted-site-access";s:6:"plugin";s:53:"restricted-site-access_old/restricted_site_access.php";s:11:"new_version";s:3:"5.1";s:3:"url";s:53:"https://wordpress.org/plugins/restricted-site-access/";s:7:"package";s:69:"https://downloads.wordpress.org/plugin/restricted-site-access.5.1.zip";s:14:"upgrade_notice";s:53:"Drops support for versions of WordPress prior to 3.5.";}s:47:"shortcodes-ultimate_old/shortcodes-ultimate.php";O:8:"stdClass":6:{s:2:"id";s:5:"21713";s:4:"slug";s:19:"shortcodes-ultimate";s:6:"plugin";s:47:"shortcodes-ultimate_old/shortcodes-ultimate.php";s:11:"new_version";s:5:"4.9.8";s:3:"url";s:50:"https://wordpress.org/plugins/shortcodes-ultimate/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/shortcodes-ultimate.zip";}s:29:"wp-mail-smtp/wp_mail_smtp.php";O:8:"stdClass":7:{s:2:"id";s:3:"951";s:4:"slug";s:12:"wp-mail-smtp";s:6:"plugin";s:29:"wp-mail-smtp/wp_mail_smtp.php";s:11:"new_version";s:5:"0.9.5";s:3:"url";s:43:"https://wordpress.org/plugins/wp-mail-smtp/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/wp-mail-smtp.0.9.5.zip";s:14:"upgrade_notice";s:38:"Minor security fix, hat tip JD Grimes.";}}}', 'yes');

--
-- Truncate table before insert `wp_postmeta`
--

TRUNCATE TABLE `wp_postmeta`;
--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default');

--
-- Truncate table before insert `wp_posts`
--

TRUNCATE TABLE `wp_posts`;
--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-08-08 06:02:33', '2015-08-08 06:02:33', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-08-08 06:02:33', '2015-08-08 06:02:33', '', 0, 'http://www.sequencegxp.com/?p=1', 0, 'post', '', 1),
(2, 1, '2015-08-08 06:02:33', '2015-08-08 06:02:33', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://www.sequencegxp.com/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2015-08-08 06:02:33', '2015-08-08 06:02:33', '', 0, 'http://www.sequencegxp.com/?page_id=2', 0, 'page', '', 0);

--
-- Truncate table before insert `wp_terms`
--

TRUNCATE TABLE `wp_terms`;
--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

--
-- Truncate table before insert `wp_term_relationships`
--

TRUNCATE TABLE `wp_term_relationships`;
--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

--
-- Truncate table before insert `wp_term_taxonomy`
--

TRUNCATE TABLE `wp_term_taxonomy`;
--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

--
-- Truncate table before insert `wp_usermeta`
--

TRUNCATE TABLE `wp_usermeta`;
--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'jsanchez@sequenceqcs.com'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets'),
(13, 1, 'show_welcome_panel', '1');

--
-- Truncate table before insert `wp_users`
--

TRUNCATE TABLE `wp_users`;
--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'jsanchez@sequenceqcs.com', '$P$BL4j5eiQMWqwOJSeAAvgdPpq7UXVSC/', 'jsanchezsequenceqcs-com', 'jsanchez@sequenceqcs.com', '', '2015-08-08 06:02:33', '', 0, 'jsanchez@sequenceqcs.com');

--
-- Truncate table before insert `wp_wxnnNt6qb6_commentmeta`
--

TRUNCATE TABLE `wp_wxnnNt6qb6_commentmeta`;
--
-- Truncate table before insert `wp_wxnnNt6qb6_comments`
--

TRUNCATE TABLE `wp_wxnnNt6qb6_comments`;
--
-- Dumping data for table `wp_wxnnNt6qb6_comments`
--

INSERT INTO `wp_wxnnNt6qb6_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1035424, 'Samir Patel', 'sjpatel@sequenceqcs.com', '', '74.219.7.242', '2016-11-09 09:22:04', '2016-11-09 14:22:04', 'Reply test', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36', '', 0, 80),
(2, 1035424, 'Sequence Test', 'SSherwood@seqeuenceqcs.com', '', '74.219.7.242', '2016-11-09 13:06:51', '2016-11-09 18:06:51', 'Sequence test account reply test.', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36', '', 1, 212),
(3, 1042420, 'Samir Patel', 'sjpatel@sequenceqcs.com', '', '74.219.7.242', '2016-11-10 09:40:08', '2016-11-10 14:40:08', 'I like this article a lot', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36', '', 0, 80);

--
-- Truncate table before insert `wp_wxnnNt6qb6_gf_addon_feed`
--

TRUNCATE TABLE `wp_wxnnNt6qb6_gf_addon_feed`;
--
-- Dumping data for table `wp_wxnnNt6qb6_gf_addon_feed`
--

INSERT INTO `wp_wxnnNt6qb6_gf_addon_feed` (`id`, `form_id`, `is_active`, `meta`, `addon_slug`, `feed_order`) VALUES
(2, 16, 1, '{"description":"Samir Test ","approver":"80","feed_condition_conditional_logic":"1","feed_condition_conditional_logic_object":{"conditionalLogic":{"actionType":"show","logicType":"all","rules":[{"fieldId":"3","operator":"is","value":"304:IT Quality Services"},{"fieldId":"3","operator":"is","value":"316:Information Technology"},{"fieldId":"2","operator":"is","value":""}]}}}', 'gravityformsapprovals', 0),
(24, 23, 1, '{"step_name":"PeerRecognitionSubmission","description":"","step_type":"notification","feed_condition_conditional_logic":"0","feed_condition_conditional_logic_object":[],"scheduled":"0","schedule_type":"delay","schedule_date":"","schedule_delay_offset":"","schedule_delay_unit":"hours","schedule_date_field_offset":"0","schedule_date_field_offset_unit":"hours","schedule_date_field_before_after":"after","notification_id_58811da4afaf5":"0","workflow_notification_enabled":"1","workflow_notification_type":"select","workflow_notification_users":["user_id|166","user_id|37","user_id|80","assignee_user_field|8"],"workflow_notification_routing":[{"assignee":"user_id|3","fieldId":"0","operator":"is","value":"","type":""}],"workflow_notification_from_name":"Peer Recognition Form -{Person Nominated:1}","workflow_notification_from_email":"{admin_email}","workflow_notification_reply_to":"","workflow_notification_bcc":"","workflow_notification_subject":"Peer Recognition Form Submission","workflow_notification_message":"{all_fields}","workflow_notification_disable_autoformat":"0","destination_complete":"complete"}', 'gravityflow', 0),
(25, 16, 1, '{"step_name":"JR Notice","description":"","step_type":"notification","feed_condition_conditional_logic":"0","feed_condition_conditional_logic_object":{"conditionalLogic":{"actionType":"show","logicType":"all","rules":[{"fieldId":"37","operator":"is","value":""}]}},"scheduled":"0","schedule_type":"delay","schedule_date":"","schedule_delay_offset":"","schedule_delay_unit":"hours","schedule_date_field_offset":"0","schedule_date_field_offset_unit":"hours","schedule_date_field_before_after":"after","schedule_date_field":"1","notification_id_58078bcd35593":"0","workflow_notification_enabled":"1","workflow_notification_type":"select","workflow_notification_users":["user_id|146","user_id|166","user_id|37"],"workflow_notification_routing":[{"assignee":"user_id|3","fieldId":"0","operator":"is","value":"","type":""}],"workflow_notification_from_name":"","workflow_notification_from_email":"{admin_email}","workflow_notification_reply_to":"","workflow_notification_bcc":"","workflow_notification_subject":"JRFNotification","workflow_notification_message":"A Job Requisition form has been submitted by\\u00a0{Your Name::37}\\r\\n\\r\\n{all_fields}","workflow_notification_disable_autoformat":"0","destination_complete":"complete"}', 'gravityflow', 0),
(14, 19, 1, '{"step_name":"Promotion Request Form","description":"","step_type":"approval","feed_condition_conditional_logic":"0","feed_condition_conditional_logic_object":[],"scheduled":"0","schedule_type":"delay","schedule_date":"","schedule_delay_offset":"","schedule_delay_unit":"hours","schedule_date_field_offset":"0","schedule_date_field_offset_unit":"hours","schedule_date_field_before_after":"after","schedule_date_field":"5","type":"select","assignees":["user_id|146","user_id|176","user_id|166","user_id|37"],"routing":[{"assignee":"user_id|3","fieldId":"0","operator":"is","value":"","type":""}],"unanimous_approval":"1","instructionsEnable":"1","instructionsValue":"Instructions: please review the Promotion Request\\u00a0Form below and click on the Approve or Reject button. \\u00a0If you reject the form it will be sent back to the author\\/user and you will be required to list your reason(s) for rejecting the request in the WorkFlow Note section above the Approve \\/ Reject buttons. Once the user has updated the required information you will receive the updated form again via your WorkFlow Inbox.\\r\\n\\r\\nThank you for you time","display_fields_mode":"all_fields","assignee_notification_enabled":"1","assignee_notification_from_name":"","assignee_notification_from_email":"{admin_email}","assignee_notification_reply_to":"","assignee_notification_bcc":"","assignee_notification_subject":"","assignee_notification_message":"A new Promotion Request\\u00a0{entry_id} is pending your approval. Please check your Workflow Inbox.\\r\\n<ol>\\r\\n \\t<li><a href=\\"http:\\/\\/www.sequencegxp.com\\/wp-admin\\/admin.php?page=gravityflow-inbox\\">Click here<\\/a>\\u00a0to login to your WorkFlow Inbox located on The Hub<\\/li>\\r\\n \\t<li>Select the appropriate <span style=\\"text-decoration: underline;\\">Promotion Request\\u00a0Form<\\/span> and review the form<\\/li>\\r\\n<\\/ol>\\r\\n<a href=\\"http:\\/\\/www.sequencegxp.com\\/wp-content\\/uploads\\/2016\\/10\\/Inbox.png\\" rel=\\"attachment wp-att-1025569\\"><img class=\\"alignnone wp-image-1025569 size-full\\" src=\\"http:\\/\\/www.sequencegxp.com\\/wp-content\\/uploads\\/2016\\/10\\/Inbox.png\\" alt=\\"inbox\\" width=\\"567\\" height=\\"126\\" \\/><\\/a>\\r\\n<ol>\\r\\n \\t<li>Promotion Request\\u00a0Approval\\/Rejection - Review all information. Approve or Reject the request.\\u00a0 Provide rationale if rejection is required.<\\/li>\\r\\n<\\/ol>\\r\\n<a href=\\"http:\\/\\/www.sequencegxp.com\\/wp-content\\/uploads\\/2016\\/10\\/Approve_Reject.png\\" rel=\\"attachment wp-att-1025570\\"><img class=\\"alignnone wp-image-1025570 size-full\\" src=\\"http:\\/\\/www.sequencegxp.com\\/wp-content\\/uploads\\/2016\\/10\\/Approve_Reject.png\\" alt=\\"approve_reject\\" width=\\"285\\" height=\\"409\\" \\/><\\/a>\\r\\n\\r\\nContact Scott Sherwood with any questions.","assignee_notification_disable_autoformat":"0","resend_assignee_emailEnable":"1","resend_assignee_emailValue":"1","rejection_notification_enabled":"1","rejection_notification_type":"select","rejection_notification_users":["assignee_user_field|11"],"rejection_notification_routing":[{"target":false,"fieldId":"0","operator":"is","value":"","type":false,"assignee":"user_id|3"}],"rejection_notification_from_name":"","rejection_notification_from_email":"{admin_email}","rejection_notification_reply_to":"","rejection_notification_bcc":"","rejection_notification_subject":"","rejection_notification_message":"Entry {entry_id} has been rejected, please take a moment\\u00a0<a href=\\"http:\\/\\/www.sequencegxp.com\\/wp-admin\\/admin.php?page=gravityflow-inbox\\">to login<\\/a>\\u00a0and \\u00a0review the WorkFlow note that will contain the reasoning for the rejection. \\u00a0You can update the requistion form making\\u00a0the appropriate changes before resubmitting your Job Requistion Form by clicking\\u00a0<strong><u>Update.<\\/u><\\/strong>","rejection_notification_disable_autoformat":"0","approval_notification_enabled":"1","approval_notification_type":"select","approval_notification_users":["user_id|176","user_id|166","assignee_user_field|11"],"approval_notification_routing":[{"assignee":"user_id|3","fieldId":"0","operator":"is","value":"","type":""}],"approval_notification_from_name":"","approval_notification_from_email":"{admin_email}","approval_notification_reply_to":"","approval_notification_bcc":"","approval_notification_subject":"","approval_notification_message":"Entry {entry_id} has been approved. \\u00a0All appropriate information has been sent to, Talent Aquistion and Human Resources departments\\r\\n\\r\\nYou can review your approved Job Requistion Form by loging into your WorkFlow Inbox and selecting your Activity Tab.\\r\\n\\r\\n{all_fields}","approval_notification_disable_autoformat":"0","revertEnable":"0","revertValue":"15","note_mode":"required_if_rejected","expiration":"0","expiration_type":"delay","expiration_date":"","expiration_delay_offset":"","expiration_delay_unit":"hours","status_expiration":"rejected","destination_expired":"next","destination_rejected":"15","destination_approved":"19"}', 'gravityflow', 0),
(15, 19, 1, '{"step_name":"Rejected Send back to Manager","description":"","step_type":"user_input","feed_condition_conditional_logic":"0","feed_condition_conditional_logic_object":[],"scheduled":"0","schedule_type":"delay","schedule_date":"","schedule_delay_offset":"","schedule_delay_unit":"hours","schedule_date_field_offset":"0","schedule_date_field_offset_unit":"hours","schedule_date_field_before_after":"after","schedule_date_field":"5","type":"select","assignees":["assignee_user_field|11"],"editable_fields":["3","4","5","6","7","8","9","10"],"routing":"","highlight_editable_fields_enabled":"1","highlight_editable_fields_class":"green-triangle","assignee_policy":"all","instructionsEnable":"1","instructionsValue":"Your intial Promotion Request has been rejected. \\u00a0Please review the WorkFlow Notes for the reasons for this rejection and make the appropriate \\/ recommended changes. \\u00a0Once the changes have been made please click update to restart the Promotion Request Approval process.","display_fields_mode":"all_fields","default_status":"hidden","note_mode":"not_required","assignee_notification_enabled":"1","assignee_notification_from_name":"","assignee_notification_from_email":"{admin_email}","assignee_notification_reply_to":"","assignee_notification_bcc":"","assignee_notification_subject":"","assignee_notification_message":"Your intial Promotion Request has been rejected. \\u00a0Please review the WorkFlow Notes for the reasons for this rejection and make the appropriate \\/ recommended changes. \\u00a0Once the changes have been made please click update to restart the Promotion Request Approval process.","assignee_notification_disable_autoformat":"0","resend_assignee_emailEnable":"1","resend_assignee_emailValue":"1","expiration":"0","expiration_type":"delay","expiration_date":"","expiration_delay_offset":"","expiration_delay_unit":"hours","status_expiration":"complete","destination_expired":"next","destination_complete":"14"}', 'gravityflow', 0),
(16, 18, 1, '{"step_name":"Merit Increase Request","description":"","step_type":"approval","feed_condition_conditional_logic":"0","feed_condition_conditional_logic_object":[],"scheduled":"0","schedule_type":"delay","schedule_date":"","schedule_delay_offset":"","schedule_delay_unit":"hours","schedule_date_field_offset":"0","schedule_date_field_offset_unit":"hours","schedule_date_field_before_after":"after","schedule_date_field":"5","type":"select","assignees":["user_id|146","user_id|176","user_id|166","user_id|37"],"routing":[{"assignee":"user_id|3","fieldId":"0","operator":"is","value":"","type":""}],"unanimous_approval":"1","instructionsEnable":"1","instructionsValue":"Instructions: please review the Merit Increase request\\u00a0below and click on the Approve or Reject button. \\u00a0If you reject the form it will be sent back to the author\\/user and you will be required to list your reason(s) for rejecting the request in the WorkFlow Note section above the Approve \\/ Reject buttons. Once the user has updated the required information you will receive the updated form again via your WorkFlow Inbox.\\r\\n\\r\\nThank you for you time","display_fields_mode":"all_fields","assignee_notification_enabled":"1","assignee_notification_from_name":"","assignee_notification_from_email":"{admin_email}","assignee_notification_reply_to":"","assignee_notification_bcc":"","assignee_notification_subject":"","assignee_notification_message":"A new Merit Increase request\\u00a0is pending your approval. Please check your Workflow Inbox.\\r\\n<ol>\\r\\n \\t<li><a href=\\"http:\\/\\/www.sequencegxp.com\\/wp-admin\\/admin.php?page=gravityflow-inbox\\">Click here<\\/a>\\u00a0to login to your WorkFlow Inbox located on The Hub<\\/li>\\r\\n \\t<li>Select the appropriate Job Requistion Form and review the form<\\/li>\\r\\n<\\/ol>\\r\\n<a href=\\"http:\\/\\/www.sequencegxp.com\\/wp-content\\/uploads\\/2016\\/10\\/Inbox.png\\" rel=\\"attachment wp-att-1025569\\"><img class=\\"alignnone size-full wp-image-1025569\\" src=\\"http:\\/\\/www.sequencegxp.com\\/wp-content\\/uploads\\/2016\\/10\\/Inbox.png\\" alt=\\"inbox\\" width=\\"567\\" height=\\"126\\" \\/><\\/a>\\r\\n\\r\\n3. Merit Increase\\u00a0Approval\\/Rejection - Review all information. Approve or Reject the request.\\u00a0 Provide rationale if rejection is required.\\r\\n\\r\\n<a href=\\"http:\\/\\/www.sequencegxp.com\\/wp-content\\/uploads\\/2016\\/10\\/Approve_Reject.png\\" rel=\\"attachment wp-att-1025570\\"><img class=\\"alignnone size-full wp-image-1025570\\" src=\\"http:\\/\\/www.sequencegxp.com\\/wp-content\\/uploads\\/2016\\/10\\/Approve_Reject.png\\" alt=\\"approve_reject\\" width=\\"285\\" height=\\"409\\" \\/><\\/a>\\r\\n\\r\\nContact Scott Sherwood with any technical questions.","assignee_notification_disable_autoformat":"0","resend_assignee_emailEnable":"0","resend_assignee_emailValue":"7","rejection_notification_enabled":"1","rejection_notification_type":"select","rejection_notification_routing":"","rejection_notification_from_name":"","rejection_notification_from_email":"{admin_email}","rejection_notification_reply_to":"","rejection_notification_bcc":"","rejection_notification_subject":"","rejection_notification_message":"Entry {entry_id} has been rejected, please take a moment\\u00a0<a href=\\"http:\\/\\/www.sequencegxp.com\\/wp-admin\\/admin.php?page=gravityflow-inbox\\">to login<\\/a>\\u00a0and \\u00a0review the WorkFlow note that will contain the reasoning for the rejection. \\u00a0You can update the requistion form making\\u00a0the appropriate changes before resubmitting your Job Requistion Form by clicking\\u00a0<strong><u>Update.<\\/u><\\/strong>","rejection_notification_disable_autoformat":"0","approval_notification_enabled":"1","approval_notification_type":"select","approval_notification_users":["user_id|176","user_id|166","assignee_user_field|13"],"approval_notification_routing":[{"assignee":"user_id|3","fieldId":"0","operator":"is","value":"","type":""}],"approval_notification_from_name":"","approval_notification_from_email":"{admin_email}","approval_notification_reply_to":"","approval_notification_bcc":"","approval_notification_subject":"","approval_notification_message":"Entry {entry_id} has been approved. \\u00a0All appropriate information has been sent to, Talent Aquistion and Human Resources departments\\r\\n\\r\\nYou can review your approved Merit Increase\\u00a0Forms by loging into your WorkFlow Inbox and selecting your Activity Tab.\\r\\n\\r\\n{all_fields}","approval_notification_disable_autoformat":"0","revertEnable":"0","revertValue":"17","note_mode":"required_if_rejected","expiration":"0","expiration_type":"delay","expiration_date":"","expiration_delay_offset":"","expiration_delay_unit":"hours","status_expiration":"rejected","destination_expired":"next","destination_rejected":"17","destination_approved":"18"}', 'gravityflow', 0),
(17, 18, 1, '{"step_name":"Update Merit Request Form","description":"","step_type":"user_input","feed_condition_conditional_logic":"0","feed_condition_conditional_logic_object":[],"scheduled":"0","schedule_type":"delay","schedule_date":"","schedule_delay_offset":"","schedule_delay_unit":"hours","schedule_date_field_offset":"0","schedule_date_field_offset_unit":"hours","schedule_date_field_before_after":"after","schedule_date_field":"5","type":"select","assignees":["assignee_user_field|13"],"editable_fields":["3","4","5","6","7","8","9","10","11","12"],"routing":"","highlight_editable_fields_enabled":"1","highlight_editable_fields_class":"green-triangle","assignee_policy":"all","instructionsEnable":"1","instructionsValue":"Entry {entry_id} has been rejected for {Employee Name Recommending for Merit Increase:2}, please take a moment\\u00a0<a href=\\"http:\\/\\/www.sequencegxp.com\\/wp-admin\\/admin.php?page=gravityflow-inbox\\">to login<\\/a>\\u00a0and \\u00a0review the WorkFlow note that will contain the reasoning for the rejection. \\u00a0You can update the form making\\u00a0the appropriate changes before resubmitting your Merti Increast request form by clicking\\u00a0<strong><u>Update.<\\/u><\\/strong>","display_fields_mode":"all_fields","default_status":"hidden","note_mode":"required","assignee_notification_enabled":"1","assignee_notification_from_name":"","assignee_notification_from_email":"{admin_email}","assignee_notification_reply_to":"","assignee_notification_bcc":"","assignee_notification_subject":"","assignee_notification_message":"Entry {entry_id} has been rejected for {Employee Name Recommending for Merit Increase:2}, please take a moment\\u00a0<a href=\\"http:\\/\\/www.sequencegxp.com\\/wp-admin\\/admin.php?page=gravityflow-inbox\\">to login<\\/a>\\u00a0and \\u00a0review the WorkFlow note that will contain the reasoning for the rejection. \\u00a0You can update the form making\\u00a0the appropriate changes before resubmitting your Merti Increast request form by clicking\\u00a0<strong><u><span style=\\"text-decoration: underline;\\">Update.<\\/span><\\/u><\\/strong>","assignee_notification_disable_autoformat":"0","resend_assignee_emailEnable":"1","resend_assignee_emailValue":"1","expiration":"0","expiration_type":"delay","expiration_date":"","expiration_delay_offset":"","expiration_delay_unit":"hours","status_expiration":"complete","destination_expired":"next","destination_complete":"16"}', 'gravityflow', 0),
(18, 18, 1, '{"step_name":"Approval","description":"","step_type":"notification","feed_condition_conditional_logic":"0","feed_condition_conditional_logic_object":[],"scheduled":"0","schedule_type":"delay","schedule_date":"","schedule_delay_offset":"","schedule_delay_unit":"hours","schedule_date_field_offset":"0","schedule_date_field_offset_unit":"hours","schedule_date_field_before_after":"after","schedule_date_field":"5","notification_id_5825b81953f8d":"0","workflow_notification_enabled":"1","workflow_notification_type":"select","workflow_notification_users":["user_id|176","user_id|166","assignee_user_field|13"],"workflow_notification_routing":[{"assignee":"user_id|3","fieldId":"0","operator":"is","value":"","type":""}],"workflow_notification_from_name":"","workflow_notification_from_email":"{admin_email}","workflow_notification_reply_to":"","workflow_notification_bcc":"","workflow_notification_subject":"","workflow_notification_message":"Entry {entry_id} has been approved {Employee Name Recommending for Merit Increase:2}. \\u00a0All appropriate information has been sent to, Talent Aquistion and Human Resources departments\\r\\n\\r\\nYou can review your approved Merit Increase Request\\u00a0Forms by loging into your WorkFlow Inbox and selecting your Activity Tab.\\r\\n\\r\\n{all_fields}","workflow_notification_disable_autoformat":"0","destination_complete":"complete"}', 'gravityflow', 0),
(19, 19, 1, '{"step_name":"Approval","description":"","step_type":"notification","feed_condition_conditional_logic":"0","feed_condition_conditional_logic_object":[],"scheduled":"0","schedule_type":"delay","schedule_date":"","schedule_delay_offset":"","schedule_delay_unit":"hours","schedule_date_field_offset":"0","schedule_date_field_offset_unit":"hours","schedule_date_field_before_after":"after","schedule_date_field":"5","notification_id_5825c17b86893":"0","workflow_notification_enabled":"1","workflow_notification_type":"select","workflow_notification_users":["user_id|176","user_id|166","assignee_user_field|11"],"workflow_notification_routing":[{"assignee":"user_id|3","fieldId":"0","operator":"is","value":"","type":""}],"workflow_notification_from_name":"","workflow_notification_from_email":"{admin_email}","workflow_notification_reply_to":"","workflow_notification_bcc":"","workflow_notification_subject":"","workflow_notification_message":"Entry {entry_id} has been approved for {Employee Name:2}. \\u00a0All appropriate information has been sent to, Talent Aquistion and Human Resources departments\\r\\n\\r\\nYou can review your approved Promotion Request Form by loging into your WorkFlow Inbox and selecting your Activity Tab.\\r\\n\\r\\n&nbsp;","workflow_notification_disable_autoformat":"0","destination_complete":"complete"}', 'gravityflow', 0),
(20, 20, 1, '{"step_name":"IS Support Form","description":"","step_type":"approval","feed_condition_conditional_logic":"0","feed_condition_conditional_logic_object":[],"scheduled":"0","schedule_type":"delay","schedule_date":"","schedule_delay_offset":"","schedule_delay_unit":"hours","schedule_date_field_offset":"0","schedule_date_field_offset_unit":"hours","schedule_date_field_before_after":"after","schedule_date_field":"2","type":"select","assignees":["user_id|205"],"routing":[{"assignee":"user_id|3","fieldId":"0","operator":"is","value":"","type":""}],"unanimous_approval":"","instructionsEnable":"0","instructionsValue":"Instructions: please review the values in the fields below and click on the Approve or Reject button","display_fields_mode":"all_fields","assignee_notification_enabled":"1","assignee_notification_from_name":"","assignee_notification_from_email":"{admin_email}","assignee_notification_reply_to":"","assignee_notification_bcc":"","assignee_notification_subject":"","assignee_notification_message":"A new entry is pending your approval. Please check your Workflow Inbox.","assignee_notification_disable_autoformat":"0","resend_assignee_emailEnable":"0","resend_assignee_emailValue":"7","rejection_notification_enabled":"1","rejection_notification_type":"select","rejection_notification_routing":"","rejection_notification_from_name":"","rejection_notification_from_email":"{admin_email}","rejection_notification_reply_to":"","rejection_notification_bcc":"","rejection_notification_subject":"","rejection_notification_message":"Entry {entry_id} has been rejected","rejection_notification_disable_autoformat":"0","approval_notification_enabled":"1","approval_notification_type":"select","approval_notification_routing":[{"assignee":"user_id|3","fieldId":"0","operator":"is","value":"","type":""}],"approval_notification_from_name":"","approval_notification_from_email":"{admin_email}","approval_notification_reply_to":"","approval_notification_bcc":"","approval_notification_subject":"","approval_notification_message":"Entry {entry_id} has been approved","approval_notification_disable_autoformat":"0","note_mode":"required","expiration":"0","expiration_type":"delay","expiration_date":"","expiration_delay_offset":"","expiration_delay_unit":"hours","status_expiration":"rejected","destination_expired":"next","destination_rejected":"complete","destination_approved":"next"}', 'gravityflow', 0),
(21, 20, 1, '{"step_name":"Final Note","description":"","step_type":"notification","feed_condition_conditional_logic":"0","feed_condition_conditional_logic_object":{"conditionalLogic":{"actionType":"show","logicType":"all","rules":[{"fieldId":"1","operator":"is","value":"3"}]}},"scheduled":"0","schedule_type":"delay","schedule_date":"","schedule_delay_offset":"","schedule_delay_unit":"hours","schedule_date_field_offset":"0","schedule_date_field_offset_unit":"hours","schedule_date_field_before_after":"after","schedule_date_field":"2","notification_id_583da302ad0cb":"0","workflow_notification_enabled":"1","workflow_notification_type":"select","workflow_notification_users":["assignee_user_field|1"],"workflow_notification_routing":[{"assignee":"user_id|3","fieldId":"0","operator":"is","value":"","type":""}],"workflow_notification_from_name":"Scott Sherwood","workflow_notification_from_email":"{admin_email}","workflow_notification_reply_to":"","workflow_notification_bcc":"","workflow_notification_subject":"","workflow_notification_message":"Your IT Support Request has been completed thank you for contacting us.\\r\\n\\r\\n&nbsp;\\r\\n\\r\\n{workflow_timeline}","workflow_notification_disable_autoformat":"0","destination_complete":"complete"}', 'gravityflow', 0),
(22, 17, 1, '{"step_name":"App Suggestion","description":"Notification of App Suggestion ","step_type":"notification","feed_condition_conditional_logic":"0","feed_condition_conditional_logic_object":[],"scheduled":"0","schedule_type":"delay","schedule_date":"","schedule_delay_offset":"","schedule_delay_unit":"hours","schedule_date_field_offset":"0","schedule_date_field_offset_unit":"hours","schedule_date_field_before_after":"after","notification_id_5818b5d5e9f8d":"0","workflow_notification_enabled":"1","workflow_notification_type":"select","workflow_notification_users":["user_id|205"],"workflow_notification_routing":[{"assignee":"user_id|3","fieldId":"0","operator":"is","value":"","type":""}],"workflow_notification_from_name":"{user:user_login}","workflow_notification_from_email":"{admin_email}","workflow_notification_reply_to":"","workflow_notification_bcc":"","workflow_notification_subject":"","workflow_notification_message":"Application suggestion","workflow_notification_disable_autoformat":"0","destination_complete":"complete"}', 'gravityflow', 0),
(23, 21, 1, '{"step_name":"submission","description":"","step_type":"notification","feed_condition_conditional_logic":"0","feed_condition_conditional_logic_object":[],"scheduled":"0","schedule_type":"delay","schedule_date":"","schedule_delay_offset":"","schedule_delay_unit":"hours","schedule_date_field_offset":"0","schedule_date_field_offset_unit":"hours","schedule_date_field_before_after":"after","notification_id_5849b0663139f":"0","workflow_notification_enabled":"1","workflow_notification_type":"select","workflow_notification_users":["user_id|205"],"workflow_notification_routing":[{"assignee":"user_id|3","fieldId":"0","operator":"is","value":"","type":""}],"workflow_notification_from_name":"","workflow_notification_from_email":"{admin_email}","workflow_notification_reply_to":"","workflow_notification_bcc":"","workflow_notification_subject":"Submission","workflow_notification_message":"","workflow_notification_disable_autoformat":"0","destination_complete":"complete"}', 'gravityflow', 0);

--
-- Truncate table before insert `wp_wxnnNt6qb6_gravityflow_activity_log`
--

TRUNCATE TABLE `wp_wxnnNt6qb6_gravityflow_activity_log`;
--
-- Dumping data for table `wp_wxnnNt6qb6_gravityflow_activity_log`
--

INSERT INTO `wp_wxnnNt6qb6_gravityflow_activity_log` (`id`, `log_object`, `log_event`, `log_value`, `date_created`, `form_id`, `lead_id`, `assignee_id`, `assignee_type`, `display_name`, `feed_id`, `duration`) VALUES
(1, 'workflow', 'started', '', '2016-10-24 17:14:09', 16, 785, '0', '', '', 0, 0),
(2, 'workflow', 'ended', 'complete', '2016-10-24 17:14:09', 16, 785, '0', '', '', 0, 45),
(3, 'workflow', 'started', '', '2016-10-25 11:43:10', 16, 788, '0', '', '', 0, 0),
(4, 'workflow', 'ended', 'complete', '2016-10-25 11:43:10', 16, 788, '0', '', '', 0, 47),
(5, 'workflow', 'started', '', '2016-10-25 11:58:51', 16, 789, '0', '', '', 0, 0),
(6, 'workflow', 'ended', 'complete', '2016-10-25 11:58:51', 16, 789, '0', '', '', 0, 47),
(7, 'workflow', 'started', '', '2016-10-25 12:29:23', 16, 791, '0', '', '', 0, 0),
(8, 'step', 'started', '', '2016-10-25 12:29:23', 16, 791, '0', '', '', 5, 0),
(9, 'assignee', 'status', 'pending', '2016-10-25 12:29:23', 16, 791, '205', 'user_id', 'Scott Sherwood', 5, 0),
(10, 'token', 'generated', '{"iat":1477398563,"exp":1477571363,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":791,"action":"cancel_workflow"},"jti":"580f5023b634e"}', '2016-10-25 12:29:23', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(11, 'token', 'generated', '{"iat":1477398563,"exp":1477571363,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":5,"entry_timestamp":"1477398516","entry_id":791,"action":"approve"},"jti":"580f5023b7ea5"}', '2016-10-25 12:29:23', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(12, 'token', 'generated', '{"iat":1477398563,"exp":1477571363,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":5,"entry_timestamp":"1477398516","entry_id":791,"action":"reject"},"jti":"580f5023b8a5c"}', '2016-10-25 12:29:23', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(13, 'assignee', 'status', 'approved', '2016-10-25 12:30:36', 16, 791, '205', 'user_id', 'Scott Sherwood', 5, 73),
(14, 'step', 'ended', 'approved', '2016-10-25 12:30:36', 16, 791, '0', '', '', 5, 73),
(15, 'step', 'started', '', '2016-10-25 12:30:36', 16, 791, '0', '', '', 5, 0),
(16, 'assignee', 'status', 'pending', '2016-10-25 12:30:36', 16, 791, '205', 'user_id', 'Scott Sherwood', 5, 0),
(17, 'token', 'generated', '{"iat":1477398636,"exp":1477571436,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":791,"action":"cancel_workflow"},"jti":"580f506c76d71"}', '2016-10-25 12:30:36', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(18, 'token', 'generated', '{"iat":1477398636,"exp":1477571436,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":5,"entry_timestamp":"1477398516","entry_id":791,"action":"approve"},"jti":"580f506c78c74"}', '2016-10-25 12:30:36', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(19, 'token', 'generated', '{"iat":1477398636,"exp":1477571436,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":5,"entry_timestamp":"1477398516","entry_id":791,"action":"reject"},"jti":"580f506c7a429"}', '2016-10-25 12:30:36', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(20, 'assignee', 'status', 'approved', '2016-10-25 12:31:03', 16, 791, '205', 'user_id', 'Scott Sherwood', 5, 27),
(21, 'step', 'ended', 'approved', '2016-10-25 12:31:03', 16, 791, '0', '', '', 5, 27),
(22, 'step', 'started', '', '2016-10-25 12:31:03', 16, 791, '0', '', '', 5, 0),
(23, 'assignee', 'status', 'pending', '2016-10-25 12:31:03', 16, 791, '205', 'user_id', 'Scott Sherwood', 5, 0),
(24, 'token', 'generated', '{"iat":1477398663,"exp":1477571463,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":791,"action":"cancel_workflow"},"jti":"580f5087c19b8"}', '2016-10-25 12:31:03', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(25, 'token', 'generated', '{"iat":1477398663,"exp":1477571463,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":5,"entry_timestamp":"1477398516","entry_id":791,"action":"approve"},"jti":"580f5087c2571"}', '2016-10-25 12:31:03', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(26, 'token', 'generated', '{"iat":1477398663,"exp":1477571463,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":5,"entry_timestamp":"1477398516","entry_id":791,"action":"reject"},"jti":"580f5087c3122"}', '2016-10-25 12:31:03', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(27, 'assignee', 'status', 'rejected', '2016-10-25 12:31:22', 16, 791, '205', 'user_id', 'Scott Sherwood', 5, 19),
(28, 'step', 'ended', 'rejected', '2016-10-25 12:31:22', 16, 791, '0', '', '', 5, 19),
(29, 'workflow', 'ended', 'rejected', '2016-10-25 12:31:22', 16, 791, '0', '', '', 0, 166),
(30, 'workflow', 'started', '', '2016-10-25 16:11:13', 16, 795, '0', '', '', 0, 0),
(31, 'workflow', 'ended', 'complete', '2016-10-25 16:11:14', 16, 795, '0', '', '', 0, 49),
(32, 'workflow', 'started', '', '2016-10-26 15:16:22', 16, 796, '0', '', '', 0, 0),
(33, 'step', 'started', '', '2016-10-26 15:16:22', 16, 796, '0', '', '', 11, 0),
(34, 'assignee', 'status', 'pending', '2016-10-26 15:16:22', 16, 796, '80', 'user_id', 'Samir Patel', 11, 0),
(35, 'token', 'generated', '{"iat":1477494982,"exp":1477667782,"sub":"user_id|80","scopes":{"pages":["inbox"],"entry_id":796,"action":"cancel_workflow"},"jti":"5810c8c6afa0f"}', '2016-10-26 15:16:22', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(36, 'token', 'generated', '{"iat":1477494982,"exp":1477667782,"sub":"user_id|80","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477494930","entry_id":796,"action":"approve"},"jti":"5810c8c6b01cc"}', '2016-10-26 15:16:22', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(37, 'token', 'generated', '{"iat":1477494982,"exp":1477667782,"sub":"user_id|80","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477494930","entry_id":796,"action":"reject"},"jti":"5810c8c6b0d87"}', '2016-10-26 15:16:22', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(38, 'assignee', 'status', 'pending', '2016-10-26 15:16:24', 16, 796, '53', 'user_id', 'Matt Brawner', 11, 0),
(39, 'token', 'generated', '{"iat":1477494984,"exp":1477667784,"sub":"user_id|53","scopes":{"pages":["inbox"],"entry_id":796,"action":"cancel_workflow"},"jti":"5810c8c83670d"}', '2016-10-26 15:16:24', 0, 0, '53', 'user_id', 'Matt Brawner', 0, 0),
(40, 'token', 'generated', '{"iat":1477494984,"exp":1477667784,"sub":"user_id|53","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477494930","entry_id":796,"action":"approve"},"jti":"5810c8c8372c4"}', '2016-10-26 15:16:24', 0, 0, '53', 'user_id', 'Matt Brawner', 0, 0),
(41, 'token', 'generated', '{"iat":1477494984,"exp":1477667784,"sub":"user_id|53","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477494930","entry_id":796,"action":"reject"},"jti":"5810c8c837faf"}', '2016-10-26 15:16:24', 0, 0, '53', 'user_id', 'Matt Brawner', 0, 0),
(42, 'assignee', 'status', 'pending', '2016-10-26 15:16:25', 16, 796, '205', 'user_id', 'Scott Sherwood', 11, 0),
(43, 'token', 'generated', '{"iat":1477494985,"exp":1477667785,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":796,"action":"cancel_workflow"},"jti":"5810c8c9bcf19"}', '2016-10-26 15:16:25', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(44, 'token', 'generated', '{"iat":1477494985,"exp":1477667785,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477494930","entry_id":796,"action":"approve"},"jti":"5810c8c9bdebb"}', '2016-10-26 15:16:25', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(45, 'token', 'generated', '{"iat":1477494985,"exp":1477667785,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477494930","entry_id":796,"action":"reject"},"jti":"5810c8c9bea71"}', '2016-10-26 15:16:25', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(46, 'assignee', 'status', 'rejected', '2016-10-26 15:17:03', 16, 796, '205', 'user_id', 'Scott Sherwood', 11, 38),
(47, 'token', 'generated', '{"iat":1477495023,"exp":1477667823,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":796,"action":"cancel_workflow"},"jti":"5810c8efa643c"}', '2016-10-26 15:17:03', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(48, 'token', 'generated', '{"iat":1477495023,"exp":1477667823,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477494930","entry_id":796,"action":"approve"},"jti":"5810c8efa6ff1"}', '2016-10-26 15:17:03', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(49, 'token', 'generated', '{"iat":1477495023,"exp":1477667823,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477494930","entry_id":796,"action":"reject"},"jti":"5810c8efa7bad"}', '2016-10-26 15:17:03', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(50, 'step', 'ended', 'rejected', '2016-10-26 15:17:05', 16, 796, '0', '', '', 11, 43),
(51, 'step', 'started', '', '2016-10-26 15:17:05', 16, 796, '0', '', '', 12, 0),
(52, 'assignee', 'status', 'pending', '2016-10-26 15:17:05', 16, 796, '205', 'user_id', 'Scott Sherwood', 12, 0),
(53, 'token', 'generated', '{"iat":1477495025,"exp":1477667825,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":796,"action":"cancel_workflow"},"jti":"5810c8f1416ad"}', '2016-10-26 15:17:05', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(54, 'workflow', 'restarted', '', '2016-10-26 15:18:37', 16, 796, '0', '', '', 0, 0),
(55, 'workflow', 'started', '', '2016-10-26 15:18:37', 16, 796, '0', '', '', 0, 0),
(56, 'step', 'started', '', '2016-10-26 15:18:37', 16, 796, '0', '', '', 11, 0),
(57, 'assignee', 'status', 'pending', '2016-10-26 15:18:37', 16, 796, '80', 'user_id', 'Samir Patel', 11, 0),
(58, 'token', 'generated', '{"iat":1477495117,"exp":1477667917,"sub":"user_id|80","scopes":{"pages":["inbox"],"entry_id":796,"action":"cancel_workflow"},"jti":"5810c94d6895c"}', '2016-10-26 15:18:37', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(59, 'token', 'generated', '{"iat":1477495117,"exp":1477667917,"sub":"user_id|80","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477494930","entry_id":796,"action":"approve"},"jti":"5810c94d69511"}', '2016-10-26 15:18:37', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(60, 'token', 'generated', '{"iat":1477495117,"exp":1477667917,"sub":"user_id|80","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477494930","entry_id":796,"action":"reject"},"jti":"5810c94d6a0cd"}', '2016-10-26 15:18:37', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(61, 'assignee', 'status', 'pending', '2016-10-26 15:18:38', 16, 796, '53', 'user_id', 'Matt Brawner', 11, 0),
(62, 'token', 'generated', '{"iat":1477495118,"exp":1477667918,"sub":"user_id|53","scopes":{"pages":["inbox"],"entry_id":796,"action":"cancel_workflow"},"jti":"5810c94ed8d9f"}', '2016-10-26 15:18:38', 0, 0, '53', 'user_id', 'Matt Brawner', 0, 0),
(63, 'token', 'generated', '{"iat":1477495118,"exp":1477667918,"sub":"user_id|53","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477494930","entry_id":796,"action":"approve"},"jti":"5810c94ed9953"}', '2016-10-26 15:18:38', 0, 0, '53', 'user_id', 'Matt Brawner', 0, 0),
(64, 'token', 'generated', '{"iat":1477495118,"exp":1477667918,"sub":"user_id|53","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477494930","entry_id":796,"action":"reject"},"jti":"5810c94eda50b"}', '2016-10-26 15:18:38', 0, 0, '53', 'user_id', 'Matt Brawner', 0, 0),
(65, 'assignee', 'status', 'pending', '2016-10-26 15:18:40', 16, 796, '205', 'user_id', 'Scott Sherwood', 11, 0),
(66, 'token', 'generated', '{"iat":1477495120,"exp":1477667920,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":796,"action":"cancel_workflow"},"jti":"5810c9508b352"}', '2016-10-26 15:18:40', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(67, 'token', 'generated', '{"iat":1477495120,"exp":1477667920,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477494930","entry_id":796,"action":"approve"},"jti":"5810c9508bf0c"}', '2016-10-26 15:18:40', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(68, 'token', 'generated', '{"iat":1477495120,"exp":1477667920,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477494930","entry_id":796,"action":"reject"},"jti":"5810c9508cab2"}', '2016-10-26 15:18:40', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(69, 'assignee', 'status', 'rejected', '2016-10-26 15:19:28', 16, 796, '205', 'user_id', 'Scott Sherwood', 11, 48),
(70, 'token', 'generated', '{"iat":1477495168,"exp":1477667968,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":796,"action":"cancel_workflow"},"jti":"5810c98082547"}', '2016-10-26 15:19:28', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(71, 'token', 'generated', '{"iat":1477495168,"exp":1477667968,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477494930","entry_id":796,"action":"approve"},"jti":"5810c9808312a"}', '2016-10-26 15:19:28', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(72, 'token', 'generated', '{"iat":1477495168,"exp":1477667968,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477494930","entry_id":796,"action":"reject"},"jti":"5810c98083ce7"}', '2016-10-26 15:19:28', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(73, 'step', 'ended', 'rejected', '2016-10-26 15:19:30', 16, 796, '0', '', '', 11, 53),
(74, 'step', 'started', '', '2016-10-26 15:19:30', 16, 796, '0', '', '', 12, 0),
(75, 'assignee', 'status', 'pending', '2016-10-26 15:19:30', 16, 796, '205', 'user_id', 'Scott Sherwood', 12, 0),
(76, 'token', 'generated', '{"iat":1477495170,"exp":1477667970,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":796,"action":"cancel_workflow"},"jti":"5810c982419ce"}', '2016-10-26 15:19:30', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(77, 'assignee', 'status', 'complete', '2016-10-26 15:20:00', 16, 796, '205', 'user_id', 'Scott Sherwood', 12, 30),
(78, 'step', 'ended', 'complete', '2016-10-26 15:20:00', 16, 796, '0', '', '', 12, 30),
(79, 'workflow', 'ended', 'rejected', '2016-10-26 15:20:00', 16, 796, '0', '', '', 0, 270),
(80, 'workflow', 'restarted', '', '2016-10-26 15:20:10', 16, 796, '0', '', '', 0, 0),
(81, 'workflow', 'started', '', '2016-10-26 15:20:10', 16, 796, '0', '', '', 0, 0),
(82, 'step', 'started', '', '2016-10-26 15:20:10', 16, 796, '0', '', '', 11, 0),
(83, 'assignee', 'status', 'pending', '2016-10-26 15:20:10', 16, 796, '80', 'user_id', 'Samir Patel', 11, 0),
(84, 'token', 'generated', '{"iat":1477495210,"exp":1477668010,"sub":"user_id|80","scopes":{"pages":["inbox"],"entry_id":796,"action":"cancel_workflow"},"jti":"5810c9aa2f88b"}', '2016-10-26 15:20:10', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(85, 'token', 'generated', '{"iat":1477495210,"exp":1477668010,"sub":"user_id|80","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477495200","entry_id":796,"action":"approve"},"jti":"5810c9aa30478"}', '2016-10-26 15:20:10', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(86, 'token', 'generated', '{"iat":1477495210,"exp":1477668010,"sub":"user_id|80","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477495200","entry_id":796,"action":"reject"},"jti":"5810c9aa31023"}', '2016-10-26 15:20:10', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(87, 'assignee', 'status', 'pending', '2016-10-26 15:20:11', 16, 796, '53', 'user_id', 'Matt Brawner', 11, 0),
(88, 'token', 'generated', '{"iat":1477495211,"exp":1477668011,"sub":"user_id|53","scopes":{"pages":["inbox"],"entry_id":796,"action":"cancel_workflow"},"jti":"5810c9abc52c7"}', '2016-10-26 15:20:11', 0, 0, '53', 'user_id', 'Matt Brawner', 0, 0),
(89, 'token', 'generated', '{"iat":1477495211,"exp":1477668011,"sub":"user_id|53","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477495200","entry_id":796,"action":"approve"},"jti":"5810c9abc5e75"}', '2016-10-26 15:20:11', 0, 0, '53', 'user_id', 'Matt Brawner', 0, 0),
(90, 'token', 'generated', '{"iat":1477495211,"exp":1477668011,"sub":"user_id|53","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477495200","entry_id":796,"action":"reject"},"jti":"5810c9abc6648"}', '2016-10-26 15:20:11', 0, 0, '53', 'user_id', 'Matt Brawner', 0, 0),
(91, 'assignee', 'status', 'pending', '2016-10-26 15:20:13', 16, 796, '205', 'user_id', 'Scott Sherwood', 11, 0),
(92, 'token', 'generated', '{"iat":1477495213,"exp":1477668013,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":796,"action":"cancel_workflow"},"jti":"5810c9ad66ad2"}', '2016-10-26 15:20:13', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(93, 'token', 'generated', '{"iat":1477495213,"exp":1477668013,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477495200","entry_id":796,"action":"approve"},"jti":"5810c9ad67e60"}', '2016-10-26 15:20:13', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(94, 'token', 'generated', '{"iat":1477495213,"exp":1477668013,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477495200","entry_id":796,"action":"reject"},"jti":"5810c9ad68e1b"}', '2016-10-26 15:20:13', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(95, 'assignee', 'status', 'approved', '2016-10-26 15:21:05', 16, 796, '205', 'user_id', 'Scott Sherwood', 11, 52),
(96, 'assignee', 'status', 'approved', '2016-10-27 11:40:14', 16, 796, '53', 'user_id', 'Matt Brawner', 11, 73203),
(97, 'workflow', 'started', '', '2016-10-27 14:41:47', 16, 799, '0', '', '', 0, 0),
(98, 'step', 'started', '', '2016-10-27 14:41:47', 16, 799, '0', '', '', 11, 0),
(99, 'assignee', 'status', 'pending', '2016-10-27 14:41:47', 16, 799, '80', 'user_id', 'Samir Patel', 11, 0),
(100, 'token', 'generated', '{"iat":1477579307,"exp":1477752107,"sub":"user_id|80","scopes":{"pages":["inbox"],"entry_id":799,"action":"cancel_workflow"},"jti":"5812122b23d49"}', '2016-10-27 14:41:47', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(101, 'token', 'generated', '{"iat":1477579307,"exp":1477752107,"sub":"user_id|80","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477579251","entry_id":799,"action":"approve"},"jti":"5812122b248f1"}', '2016-10-27 14:41:47', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(102, 'token', 'generated', '{"iat":1477579307,"exp":1477752107,"sub":"user_id|80","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477579251","entry_id":799,"action":"reject"},"jti":"5812122b254a8"}', '2016-10-27 14:41:47', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(103, 'assignee', 'status', 'pending', '2016-10-27 14:41:48', 16, 799, '53', 'user_id', 'Matt Brawner', 11, 0),
(104, 'token', 'generated', '{"iat":1477579308,"exp":1477752108,"sub":"user_id|53","scopes":{"pages":["inbox"],"entry_id":799,"action":"cancel_workflow"},"jti":"5812122c97a6c"}', '2016-10-27 14:41:48', 0, 0, '53', 'user_id', 'Matt Brawner', 0, 0),
(105, 'token', 'generated', '{"iat":1477579308,"exp":1477752108,"sub":"user_id|53","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477579251","entry_id":799,"action":"approve"},"jti":"5812122c9823e"}', '2016-10-27 14:41:48', 0, 0, '53', 'user_id', 'Matt Brawner', 0, 0),
(106, 'token', 'generated', '{"iat":1477579308,"exp":1477752108,"sub":"user_id|53","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477579251","entry_id":799,"action":"reject"},"jti":"5812122c98a0b"}', '2016-10-27 14:41:48', 0, 0, '53', 'user_id', 'Matt Brawner', 0, 0),
(107, 'assignee', 'status', 'pending', '2016-10-27 14:41:50', 16, 799, '205', 'user_id', 'Scott Sherwood', 11, 0),
(108, 'token', 'generated', '{"iat":1477579310,"exp":1477752110,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":799,"action":"cancel_workflow"},"jti":"5812122e8dbe0"}', '2016-10-27 14:41:50', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(109, 'token', 'generated', '{"iat":1477579310,"exp":1477752110,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477579251","entry_id":799,"action":"approve"},"jti":"5812122e8e79b"}', '2016-10-27 14:41:50', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(110, 'token', 'generated', '{"iat":1477579310,"exp":1477752110,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477579251","entry_id":799,"action":"reject"},"jti":"5812122e8ef65"}', '2016-10-27 14:41:50', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(111, 'assignee', 'status', 'approved', '2016-10-27 16:58:20', 16, 796, '80', 'user_id', 'Samir Patel', 11, 92290),
(112, 'token', 'generated', '{"iat":1477587500,"exp":1477760300,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":796,"action":"cancel_workflow"},"jti":"5812322c3a0ce"}', '2016-10-27 16:58:20', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(113, 'token', 'generated', '{"iat":1477587500,"exp":1477760300,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477495200","entry_id":796,"action":"approve"},"jti":"5812322c3b031"}', '2016-10-27 16:58:20', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(114, 'token', 'generated', '{"iat":1477587500,"exp":1477760300,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477495200","entry_id":796,"action":"reject"},"jti":"5812322c3b7e2"}', '2016-10-27 16:58:20', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(115, 'step', 'ended', 'approved', '2016-10-27 16:58:22', 16, 796, '0', '', '', 11, 92292),
(116, 'step', 'started', '', '2016-10-27 16:58:22', 16, 796, '0', '', '', 13, 0),
(117, 'step', 'ended', 'complete', '2016-10-27 16:58:22', 16, 796, '0', '', '', 13, 0),
(118, 'workflow', 'ended', 'approved', '2016-10-27 16:58:22', 16, 796, '0', '', '', 0, 92572),
(119, 'assignee', 'status', 'rejected', '2016-10-27 16:58:50', 16, 799, '80', 'user_id', 'Samir Patel', 11, 8223),
(120, 'token', 'generated', '{"iat":1477587530,"exp":1477760330,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":799,"action":"cancel_workflow"},"jti":"5812324aa9777"}', '2016-10-27 16:58:50', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(121, 'token', 'generated', '{"iat":1477587530,"exp":1477760330,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477579251","entry_id":799,"action":"approve"},"jti":"5812324aa9f82"}', '2016-10-27 16:58:50', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(122, 'token', 'generated', '{"iat":1477587530,"exp":1477760330,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1477579251","entry_id":799,"action":"reject"},"jti":"5812324aaa72c"}', '2016-10-27 16:58:50', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(123, 'step', 'ended', 'rejected', '2016-10-27 16:58:52', 16, 799, '0', '', '', 11, 8225),
(124, 'step', 'started', '', '2016-10-27 16:58:52', 16, 799, '0', '', '', 12, 0),
(125, 'assignee', 'status', 'pending', '2016-10-27 16:58:52', 16, 799, '205', 'user_id', 'Scott Sherwood', 12, 0),
(126, 'token', 'generated', '{"iat":1477587532,"exp":1477760332,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":799,"action":"cancel_workflow"},"jti":"5812324c497d2"}', '2016-10-27 16:58:52', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(127, 'workflow', 'started', '', '2016-11-03 19:17:13', 16, 816, '0', '', '', 0, 0),
(128, 'step', 'started', '', '2016-11-03 19:17:13', 16, 816, '0', '', '', 11, 0),
(129, 'assignee', 'status', 'pending', '2016-11-03 19:17:13', 16, 816, '80', 'user_id', 'Samir Patel', 11, 0),
(130, 'token', 'generated', '{"iat":1478200633,"exp":1478373433,"sub":"user_id|80","scopes":{"pages":["inbox"],"entry_id":816,"action":"cancel_workflow"},"jti":"581b8d39588bb"}', '2016-11-03 19:17:13', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(131, 'token', 'generated', '{"iat":1478200633,"exp":1478373433,"sub":"user_id|80","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1478200629","entry_id":816,"action":"approve"},"jti":"581b8d395946d"}', '2016-11-03 19:17:13', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(132, 'token', 'generated', '{"iat":1478200633,"exp":1478373433,"sub":"user_id|80","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1478200629","entry_id":816,"action":"reject"},"jti":"581b8d395a023"}', '2016-11-03 19:17:13', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(133, 'assignee', 'status', 'pending', '2016-11-03 19:17:14', 16, 816, '53', 'user_id', 'Matt Brawner', 11, 0),
(134, 'token', 'generated', '{"iat":1478200634,"exp":1478373434,"sub":"user_id|53","scopes":{"pages":["inbox"],"entry_id":816,"action":"cancel_workflow"},"jti":"581b8d3ab0e80"}', '2016-11-03 19:17:14', 0, 0, '53', 'user_id', 'Matt Brawner', 0, 0),
(135, 'token', 'generated', '{"iat":1478200634,"exp":1478373434,"sub":"user_id|53","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1478200629","entry_id":816,"action":"approve"},"jti":"581b8d3ab1e33"}', '2016-11-03 19:17:14', 0, 0, '53', 'user_id', 'Matt Brawner', 0, 0),
(136, 'token', 'generated', '{"iat":1478200634,"exp":1478373434,"sub":"user_id|53","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1478200629","entry_id":816,"action":"reject"},"jti":"581b8d3ab2732"}', '2016-11-03 19:17:14', 0, 0, '53', 'user_id', 'Matt Brawner', 0, 0),
(137, 'assignee', 'status', 'pending', '2016-11-03 19:17:16', 16, 816, '205', 'user_id', 'Scott Sherwood', 11, 0),
(138, 'token', 'generated', '{"iat":1478200636,"exp":1478373436,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":816,"action":"cancel_workflow"},"jti":"581b8d3c56549"}', '2016-11-03 19:17:16', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(139, 'token', 'generated', '{"iat":1478200636,"exp":1478373436,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1478200629","entry_id":816,"action":"approve"},"jti":"581b8d3c56d13"}', '2016-11-03 19:17:16', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(140, 'token', 'generated', '{"iat":1478200636,"exp":1478373436,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1478200629","entry_id":816,"action":"reject"},"jti":"581b8d3c574dd"}', '2016-11-03 19:17:16', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(141, 'step', 'ended', 'pending', '2016-11-03 19:33:15', 16, 816, '0', '', '', 11, 962),
(142, 'step', 'started', '', '2016-11-03 19:33:15', 16, 816, '0', '', '', 12, 0),
(143, 'assignee', 'status', 'pending', '2016-11-03 19:33:15', 16, 816, '205', 'user_id', 'Scott Sherwood', 12, 0),
(144, 'token', 'generated', '{"iat":1478201595,"exp":1478374395,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":816,"action":"cancel_workflow"},"jti":"581b90fbb4352"}', '2016-11-03 19:33:15', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(145, 'assignee', 'status', 'complete', '2016-11-03 19:47:48', 16, 816, '205', 'user_id', 'Scott Sherwood', 12, 873),
(146, 'step', 'ended', 'complete', '2016-11-03 19:47:48', 16, 816, '0', '', '', 12, 873),
(147, 'step', 'started', '', '2016-11-03 19:47:48', 16, 816, '0', '', '', 13, 0),
(148, 'step', 'ended', 'complete', '2016-11-03 19:47:48', 16, 816, '0', '', '', 13, 0),
(149, 'workflow', 'ended', 'complete', '2016-11-03 19:47:48', 16, 816, '0', '', '', 0, 1839),
(150, 'workflow', 'started', '', '2016-11-04 18:59:30', 16, 818, '0', '', '', 0, 0),
(151, 'step', 'started', '', '2016-11-04 18:59:30', 16, 818, '0', '', '', 12, 0),
(152, 'assignee', 'status', 'pending', '2016-11-04 18:59:30', 16, 818, '205', 'user_id', 'Scott Sherwood', 12, 0),
(153, 'token', 'generated', '{"iat":1478285970,"exp":1478458770,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":818,"action":"cancel_workflow"},"jti":"581cda9235e69"}', '2016-11-04 18:59:30', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(154, 'workflow', 'started', '', '2016-11-04 19:04:38', 16, 819, '0', '', '', 0, 0),
(155, 'step', 'started', '', '2016-11-04 19:04:38', 16, 819, '0', '', '', 12, 0),
(156, 'assignee', 'status', 'pending', '2016-11-04 19:04:38', 16, 819, '205', 'user_id', 'Scott Sherwood', 12, 0),
(157, 'token', 'generated', '{"iat":1478286278,"exp":1478459078,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":819,"action":"cancel_workflow"},"jti":"581cdbc67f6b6"}', '2016-11-04 19:04:38', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(158, 'workflow', 'started', '', '2016-11-04 19:07:49', 16, 820, '0', '', '', 0, 0),
(159, 'step', 'started', '', '2016-11-04 19:07:49', 16, 820, '0', '', '', 12, 0),
(160, 'assignee', 'status', 'pending', '2016-11-04 19:07:49', 16, 820, '205', 'user_id', 'Scott Sherwood', 12, 0),
(161, 'token', 'generated', '{"iat":1478286469,"exp":1478459269,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":820,"action":"cancel_workflow"},"jti":"581cdc8584b08"}', '2016-11-04 19:07:49', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(162, 'workflow', 'started', '', '2016-11-04 19:12:35', 16, 821, '0', '', '', 0, 0),
(163, 'step', 'started', '', '2016-11-04 19:12:36', 16, 821, '0', '', '', 10, 0),
(164, 'assignee', 'status', 'pending', '2016-11-04 19:12:36', 16, 821, '146', 'user_id', 'Andrew Wilding', 10, 0),
(165, 'token', 'generated', '{"iat":1478286756,"exp":1478459556,"sub":"user_id|146","scopes":{"pages":["inbox"],"entry_id":821,"action":"cancel_workflow"},"jti":"581cdda41b1f3"}', '2016-11-04 19:12:36', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(166, 'token', 'generated', '{"iat":1478286756,"exp":1478459556,"sub":"user_id|146","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478286748","entry_id":821,"action":"approve"},"jti":"581cdda41bd9a"}', '2016-11-04 19:12:36', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(167, 'token', 'generated', '{"iat":1478286756,"exp":1478459556,"sub":"user_id|146","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478286748","entry_id":821,"action":"reject"},"jti":"581cdda41c930"}', '2016-11-04 19:12:36', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(168, 'assignee', 'status', 'pending', '2016-11-04 19:12:37', 16, 821, '37', 'user_id', 'Jeff Price', 10, 0),
(169, 'token', 'generated', '{"iat":1478286757,"exp":1478459557,"sub":"user_id|37","scopes":{"pages":["inbox"],"entry_id":821,"action":"cancel_workflow"},"jti":"581cdda598925"}', '2016-11-04 19:12:37', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(170, 'token', 'generated', '{"iat":1478286757,"exp":1478459557,"sub":"user_id|37","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478286748","entry_id":821,"action":"approve"},"jti":"581cdda5994df"}', '2016-11-04 19:12:37', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(171, 'token', 'generated', '{"iat":1478286757,"exp":1478459557,"sub":"user_id|37","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478286748","entry_id":821,"action":"reject"},"jti":"581cdda599cb2"}', '2016-11-04 19:12:37', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(172, 'assignee', 'status', 'pending', '2016-11-04 19:12:39', 16, 821, '166', 'user_id', 'Chris Burchell', 10, 0),
(173, 'token', 'generated', '{"iat":1478286759,"exp":1478459559,"sub":"user_id|166","scopes":{"pages":["inbox"],"entry_id":821,"action":"cancel_workflow"},"jti":"581cdda741e11"}', '2016-11-04 19:12:39', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(174, 'token', 'generated', '{"iat":1478286759,"exp":1478459559,"sub":"user_id|166","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478286748","entry_id":821,"action":"approve"},"jti":"581cdda7425e3"}', '2016-11-04 19:12:39', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(175, 'token', 'generated', '{"iat":1478286759,"exp":1478459559,"sub":"user_id|166","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478286748","entry_id":821,"action":"reject"},"jti":"581cdda743198"}', '2016-11-04 19:12:39', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(176, 'assignee', 'status', 'approved', '2016-11-04 19:17:48', 16, 821, '37', 'user_id', 'Jeff Price', 10, 311),
(177, 'assignee', 'status', 'rejected', '2016-11-04 19:21:42', 16, 821, '146', 'user_id', 'Andrew Wilding', 10, 546),
(178, 'step', 'ended', 'rejected', '2016-11-04 19:21:42', 16, 821, '0', '', '', 10, 546),
(179, 'step', 'started', '', '2016-11-04 19:21:42', 16, 821, '0', '', '', 12, 0),
(180, 'assignee', 'status', 'pending', '2016-11-04 19:21:42', 16, 821, '205', 'user_id', 'Scott Sherwood', 12, 0),
(181, 'token', 'generated', '{"iat":1478287302,"exp":1478460102,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":821,"action":"cancel_workflow"},"jti":"581cdfc66389b"}', '2016-11-04 19:21:42', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(182, 'assignee', 'status', 'complete', '2016-11-04 19:23:24', 16, 821, '205', 'user_id', 'Scott Sherwood', 12, 102),
(183, 'step', 'ended', 'complete', '2016-11-04 19:23:24', 16, 821, '0', '', '', 12, 102),
(184, 'step', 'started', '', '2016-11-04 19:23:24', 16, 821, '0', '', '', 13, 0),
(185, 'step', 'ended', 'complete', '2016-11-04 19:23:24', 16, 821, '0', '', '', 13, 0),
(186, 'workflow', 'ended', 'rejected', '2016-11-04 19:23:24', 16, 821, '0', '', '', 0, 656),
(187, 'workflow', 'restarted', '', '2016-11-04 19:26:52', 16, 821, '0', '', '', 0, 0),
(188, 'workflow', 'started', '', '2016-11-04 19:26:52', 16, 821, '0', '', '', 0, 0),
(189, 'step', 'started', '', '2016-11-04 19:26:53', 16, 821, '0', '', '', 10, 0),
(190, 'assignee', 'status', 'pending', '2016-11-04 19:26:53', 16, 821, '146', 'user_id', 'Andrew Wilding', 10, 0),
(191, 'token', 'generated', '{"iat":1478287613,"exp":1478460413,"sub":"user_id|146","scopes":{"pages":["inbox"],"entry_id":821,"action":"cancel_workflow"},"jti":"581ce0fd03794"}', '2016-11-04 19:26:53', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(192, 'token', 'generated', '{"iat":1478287613,"exp":1478460413,"sub":"user_id|146","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478287404","entry_id":821,"action":"approve"},"jti":"581ce0fd04329"}', '2016-11-04 19:26:53', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(193, 'token', 'generated', '{"iat":1478287613,"exp":1478460413,"sub":"user_id|146","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478287404","entry_id":821,"action":"reject"},"jti":"581ce0fd04ee8"}', '2016-11-04 19:26:53', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(194, 'assignee', 'status', 'pending', '2016-11-04 19:26:54', 16, 821, '37', 'user_id', 'Jeff Price', 10, 0),
(195, 'token', 'generated', '{"iat":1478287614,"exp":1478460414,"sub":"user_id|37","scopes":{"pages":["inbox"],"entry_id":821,"action":"cancel_workflow"},"jti":"581ce0fec1239"}', '2016-11-04 19:26:54', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(196, 'token', 'generated', '{"iat":1478287614,"exp":1478460414,"sub":"user_id|37","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478287404","entry_id":821,"action":"approve"},"jti":"581ce0fec1e3e"}', '2016-11-04 19:26:54', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(197, 'token', 'generated', '{"iat":1478287614,"exp":1478460414,"sub":"user_id|37","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478287404","entry_id":821,"action":"reject"},"jti":"581ce0fec29da"}', '2016-11-04 19:26:54', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(198, 'assignee', 'status', 'pending', '2016-11-04 19:26:56', 16, 821, '166', 'user_id', 'Chris Burchell', 10, 0),
(199, 'token', 'generated', '{"iat":1478287616,"exp":1478460416,"sub":"user_id|166","scopes":{"pages":["inbox"],"entry_id":821,"action":"cancel_workflow"},"jti":"581ce1005f768"}', '2016-11-04 19:26:56', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(200, 'token', 'generated', '{"iat":1478287616,"exp":1478460416,"sub":"user_id|166","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478287404","entry_id":821,"action":"approve"},"jti":"581ce10060320"}', '2016-11-04 19:26:56', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(201, 'token', 'generated', '{"iat":1478287616,"exp":1478460416,"sub":"user_id|166","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478287404","entry_id":821,"action":"reject"},"jti":"581ce10060ed8"}', '2016-11-04 19:26:56', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(202, 'assignee', 'status', 'rejected', '2016-11-04 19:31:44', 16, 821, '37', 'user_id', 'Jeff Price', 10, 290),
(203, 'step', 'ended', 'rejected', '2016-11-04 19:31:44', 16, 821, '0', '', '', 10, 292),
(204, 'step', 'started', '', '2016-11-04 19:31:44', 16, 821, '0', '', '', 12, 0),
(205, 'assignee', 'status', 'pending', '2016-11-04 19:31:44', 16, 821, '205', 'user_id', 'Scott Sherwood', 12, 0),
(206, 'token', 'generated', '{"iat":1478287904,"exp":1478460704,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":821,"action":"cancel_workflow"},"jti":"581ce220b151f"}', '2016-11-04 19:31:44', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(207, 'workflow', 'restarted', '', '2016-11-04 19:41:25', 16, 821, '0', '', '', 0, 0),
(208, 'workflow', 'started', '', '2016-11-04 19:41:25', 16, 821, '0', '', '', 0, 0),
(209, 'step', 'started', '', '2016-11-04 19:41:25', 16, 821, '0', '', '', 10, 0),
(210, 'assignee', 'status', 'pending', '2016-11-04 19:41:25', 16, 821, '146', 'user_id', 'Andrew Wilding', 10, 0),
(211, 'token', 'generated', '{"iat":1478288485,"exp":1478461285,"sub":"user_id|146","scopes":{"pages":["inbox"],"entry_id":821,"action":"cancel_workflow"},"jti":"581ce465e0e7c"}', '2016-11-04 19:41:25', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(212, 'token', 'generated', '{"iat":1478288485,"exp":1478461285,"sub":"user_id|146","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478287965","entry_id":821,"action":"approve"},"jti":"581ce465e164b"}', '2016-11-04 19:41:25', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(213, 'token', 'generated', '{"iat":1478288485,"exp":1478461285,"sub":"user_id|146","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478287965","entry_id":821,"action":"reject"},"jti":"581ce465e1e1c"}', '2016-11-04 19:41:25', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(214, 'assignee', 'status', 'pending', '2016-11-04 19:41:40', 16, 821, '37', 'user_id', 'Jeff Price', 10, 0),
(215, 'token', 'generated', '{"iat":1478288500,"exp":1478461300,"sub":"user_id|37","scopes":{"pages":["inbox"],"entry_id":821,"action":"cancel_workflow"},"jti":"581ce474dd4e9"}', '2016-11-04 19:41:40', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(216, 'token', 'generated', '{"iat":1478288500,"exp":1478461300,"sub":"user_id|37","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478287965","entry_id":821,"action":"approve"},"jti":"581ce474de096"}', '2016-11-04 19:41:40', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(217, 'token', 'generated', '{"iat":1478288500,"exp":1478461300,"sub":"user_id|37","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478287965","entry_id":821,"action":"reject"},"jti":"581ce474df036"}', '2016-11-04 19:41:40', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(218, 'assignee', 'status', 'pending', '2016-11-04 19:41:43', 16, 821, '166', 'user_id', 'Chris Burchell', 10, 0),
(219, 'token', 'generated', '{"iat":1478288503,"exp":1478461303,"sub":"user_id|166","scopes":{"pages":["inbox"],"entry_id":821,"action":"cancel_workflow"},"jti":"581ce477ad328"}', '2016-11-04 19:41:43', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(220, 'token', 'generated', '{"iat":1478288503,"exp":1478461303,"sub":"user_id|166","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478287965","entry_id":821,"action":"approve"},"jti":"581ce477adee0"}', '2016-11-04 19:41:43', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(221, 'token', 'generated', '{"iat":1478288503,"exp":1478461303,"sub":"user_id|166","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478287965","entry_id":821,"action":"reject"},"jti":"581ce477aea97"}', '2016-11-04 19:41:43', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(222, 'assignee', 'status', 'approved', '2016-11-04 19:59:49', 16, 821, '146', 'user_id', 'Andrew Wilding', 10, 1104),
(223, 'assignee', 'status', 'approved', '2016-11-04 20:38:23', 16, 821, '166', 'user_id', 'Chris Burchell', 10, 3400),
(224, 'token', 'generated', '{"iat":1478383734,"exp":1478556534,"sub":"user_id|37","scopes":{"pages":["inbox"],"entry_id":821,"action":"cancel_workflow"},"jti":"581e5876d62b7"}', '2016-11-05 22:08:54', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(225, 'token', 'generated', '{"iat":1478383734,"exp":1478556534,"sub":"user_id|37","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478287965","entry_id":821,"action":"approve"},"jti":"581e5876d763b"}', '2016-11-05 22:08:54', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(226, 'token', 'generated', '{"iat":1478383734,"exp":1478556534,"sub":"user_id|37","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478287965","entry_id":821,"action":"reject"},"jti":"581e5876d81e8"}', '2016-11-05 22:08:54', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(227, 'workflow', 'started', '', '2016-11-07 14:22:51', 16, 824, '0', '', '', 0, 0),
(228, 'step', 'started', '', '2016-11-07 14:22:51', 16, 824, '0', '', '', 11, 0),
(229, 'assignee', 'status', 'pending', '2016-11-07 14:22:51', 16, 824, '205', 'user_id', 'Scott Sherwood', 11, 0),
(230, 'token', 'generated', '{"iat":1478528571,"exp":1478701371,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":824,"action":"cancel_workflow"},"jti":"58208e3b1e3b0"}', '2016-11-07 14:22:51', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(231, 'token', 'generated', '{"iat":1478528571,"exp":1478701371,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1478528553","entry_id":824,"action":"approve"},"jti":"58208e3b1ef72"}', '2016-11-07 14:22:51', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(232, 'token', 'generated', '{"iat":1478528571,"exp":1478701371,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1478528553","entry_id":824,"action":"reject"},"jti":"58208e3b1fb53"}', '2016-11-07 14:22:51', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(233, 'step', 'ended', 'pending', '2016-11-07 14:23:47', 16, 824, '0', '', '', 11, 56),
(234, 'step', 'started', '', '2016-11-07 14:23:47', 16, 824, '0', '', '', 12, 0),
(235, 'assignee', 'status', 'pending', '2016-11-07 14:23:47', 16, 824, '205', 'user_id', 'Scott Sherwood', 12, 0),
(236, 'token', 'generated', '{"iat":1478528627,"exp":1478701427,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":824,"action":"cancel_workflow"},"jti":"58208e738ed76"}', '2016-11-07 14:23:47', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(237, 'assignee', 'status', 'complete', '2016-11-07 14:25:29', 16, 824, '205', 'user_id', 'Scott Sherwood', 12, 102),
(238, 'step', 'ended', 'complete', '2016-11-07 14:25:29', 16, 824, '0', '', '', 12, 102),
(239, 'step', 'started', '', '2016-11-07 14:25:29', 16, 824, '0', '', '', 13, 0),
(240, 'step', 'ended', 'complete', '2016-11-07 14:25:29', 16, 824, '0', '', '', 13, 0),
(241, 'workflow', 'ended', 'complete', '2016-11-07 14:25:29', 16, 824, '0', '', '', 0, 176),
(242, 'workflow', 'started', '', '2016-11-07 14:30:37', 16, 825, '0', '', '', 0, 0),
(243, 'step', 'started', '', '2016-11-07 14:30:38', 16, 825, '0', '', '', 11, 0),
(244, 'assignee', 'status', 'pending', '2016-11-07 14:30:38', 16, 825, '205', 'user_id', 'Scott Sherwood', 11, 0),
(245, 'token', 'generated', '{"iat":1478529038,"exp":1478701838,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":825,"action":"cancel_workflow"},"jti":"5820900e19c34"}', '2016-11-07 14:30:38', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(246, 'token', 'generated', '{"iat":1478529038,"exp":1478701838,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1478529019","entry_id":825,"action":"approve"},"jti":"5820900e1abdb"}', '2016-11-07 14:30:38', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(247, 'token', 'generated', '{"iat":1478529038,"exp":1478701838,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1478529019","entry_id":825,"action":"reject"},"jti":"5820900e1b78f"}', '2016-11-07 14:30:38', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(248, 'step', 'ended', 'pending', '2016-11-07 14:31:21', 16, 825, '0', '', '', 11, 43),
(249, 'step', 'started', '', '2016-11-07 14:31:21', 16, 825, '0', '', '', 12, 0),
(250, 'assignee', 'status', 'pending', '2016-11-07 14:31:21', 16, 825, '205', 'user_id', 'Scott Sherwood', 12, 0),
(251, 'token', 'generated', '{"iat":1478529081,"exp":1478701881,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":825,"action":"cancel_workflow"},"jti":"58209039877e8"}', '2016-11-07 14:31:21', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(252, 'assignee', 'status', 'complete', '2016-11-07 14:31:49', 16, 825, '205', 'user_id', 'Scott Sherwood', 12, 28),
(253, 'step', 'ended', 'complete', '2016-11-07 14:31:49', 16, 825, '0', '', '', 12, 28),
(254, 'step', 'started', '', '2016-11-07 14:31:49', 16, 825, '0', '', '', 11, 0),
(255, 'assignee', 'status', 'pending', '2016-11-07 14:31:49', 16, 825, '205', 'user_id', 'Scott Sherwood', 11, 0),
(256, 'token', 'generated', '{"iat":1478529109,"exp":1478701909,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":825,"action":"cancel_workflow"},"jti":"5820905573418"}', '2016-11-07 14:31:49', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(257, 'token', 'generated', '{"iat":1478529109,"exp":1478701909,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1478529109","entry_id":825,"action":"approve"},"jti":"5820905574013"}', '2016-11-07 14:31:49', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(258, 'token', 'generated', '{"iat":1478529109,"exp":1478701909,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1478529109","entry_id":825,"action":"reject"},"jti":"5820905574bc9"}', '2016-11-07 14:31:49', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(259, 'assignee', 'status', 'approved', '2016-11-07 14:32:06', 16, 825, '205', 'user_id', 'Scott Sherwood', 11, 17),
(260, 'token', 'generated', '{"iat":1478529126,"exp":1478701926,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":825,"action":"cancel_workflow"},"jti":"58209066eb6aa"}', '2016-11-07 14:32:06', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(261, 'token', 'generated', '{"iat":1478529126,"exp":1478701926,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1478529109","entry_id":825,"action":"approve"},"jti":"58209066ec22e"}', '2016-11-07 14:32:06', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(262, 'token', 'generated', '{"iat":1478529126,"exp":1478701926,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1478529109","entry_id":825,"action":"reject"},"jti":"58209066ed54d"}', '2016-11-07 14:32:06', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(263, 'step', 'ended', 'approved', '2016-11-07 14:32:08', 16, 825, '0', '', '', 11, 19),
(264, 'step', 'started', '', '2016-11-07 14:32:08', 16, 825, '0', '', '', 13, 0),
(265, 'step', 'ended', 'complete', '2016-11-07 14:32:08', 16, 825, '0', '', '', 13, 0),
(266, 'workflow', 'ended', 'approved', '2016-11-07 14:32:08', 16, 825, '0', '', '', 0, 109),
(267, 'workflow', 'started', '', '2016-11-07 14:54:55', 16, 826, '0', '', '', 0, 0),
(268, 'step', 'started', '', '2016-11-07 14:54:55', 16, 826, '0', '', '', 11, 0),
(269, 'assignee', 'status', 'pending', '2016-11-07 14:54:55', 16, 826, '205', 'user_id', 'Scott Sherwood', 11, 0),
(270, 'token', 'generated', '{"iat":1478530495,"exp":1478703295,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":826,"action":"cancel_workflow"},"jti":"582095bf2ea27"}', '2016-11-07 14:54:55', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(271, 'token', 'generated', '{"iat":1478530495,"exp":1478703295,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1478530477","entry_id":826,"action":"approve"},"jti":"582095bf2f5cf"}', '2016-11-07 14:54:55', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(272, 'token', 'generated', '{"iat":1478530495,"exp":1478703295,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1478530477","entry_id":826,"action":"reject"},"jti":"582095bf301a1"}', '2016-11-07 14:54:55', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(273, 'assignee', 'status', 'rejected', '2016-11-07 14:55:32', 16, 826, '205', 'user_id', 'Scott Sherwood', 11, 37),
(274, 'token', 'generated', '{"iat":1478530532,"exp":1478703332,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":826,"action":"cancel_workflow"},"jti":"582095e470585"}', '2016-11-07 14:55:32', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(275, 'token', 'generated', '{"iat":1478530532,"exp":1478703332,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1478530477","entry_id":826,"action":"approve"},"jti":"582095e4714cf"}', '2016-11-07 14:55:32', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(276, 'token', 'generated', '{"iat":1478530532,"exp":1478703332,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1478530477","entry_id":826,"action":"reject"},"jti":"582095e47209e"}', '2016-11-07 14:55:32', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(277, 'step', 'ended', 'rejected', '2016-11-07 14:55:33', 16, 826, '0', '', '', 11, 38),
(278, 'step', 'started', '', '2016-11-07 14:55:34', 16, 826, '0', '', '', 12, 0),
(279, 'assignee', 'status', 'pending', '2016-11-07 14:55:34', 16, 826, '205', 'user_id', 'Scott Sherwood', 12, 0),
(280, 'token', 'generated', '{"iat":1478530534,"exp":1478703334,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":826,"action":"cancel_workflow"},"jti":"582095e615c0b"}', '2016-11-07 14:55:34', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(281, 'assignee', 'status', 'complete', '2016-11-07 14:56:19', 16, 826, '205', 'user_id', 'Scott Sherwood', 12, 45),
(282, 'step', 'ended', 'complete', '2016-11-07 14:56:19', 16, 826, '0', '', '', 12, 45),
(283, 'step', 'started', '', '2016-11-07 14:56:19', 16, 826, '0', '', '', 11, 0),
(284, 'assignee', 'status', 'pending', '2016-11-07 14:56:19', 16, 826, '205', 'user_id', 'Scott Sherwood', 11, 0),
(285, 'token', 'generated', '{"iat":1478530579,"exp":1478703379,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":826,"action":"cancel_workflow"},"jti":"582096135b480"}', '2016-11-07 14:56:19', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(286, 'token', 'generated', '{"iat":1478530579,"exp":1478703379,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1478530579","entry_id":826,"action":"approve"},"jti":"582096135c391"}', '2016-11-07 14:56:19', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0);
INSERT INTO `wp_wxnnNt6qb6_gravityflow_activity_log` (`id`, `log_object`, `log_event`, `log_value`, `date_created`, `form_id`, `lead_id`, `assignee_id`, `assignee_type`, `display_name`, `feed_id`, `duration`) VALUES
(287, 'token', 'generated', '{"iat":1478530579,"exp":1478703379,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1478530579","entry_id":826,"action":"reject"},"jti":"582096135cf6f"}', '2016-11-07 14:56:19', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(288, 'token', 'generated', '{"iat":1478617234,"exp":1478790034,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":826,"action":"cancel_workflow"},"jti":"5821e8922485d"}', '2016-11-08 15:00:34', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(289, 'token', 'generated', '{"iat":1478617234,"exp":1478790034,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1478530579","entry_id":826,"action":"approve"},"jti":"5821e89225be6"}', '2016-11-08 15:00:34', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(290, 'token', 'generated', '{"iat":1478617234,"exp":1478790034,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1478530579","entry_id":826,"action":"reject"},"jti":"5821e892267a6"}', '2016-11-08 15:00:34', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(291, 'assignee', 'status', 'approved', '2016-11-08 15:09:33', 16, 826, '205', 'user_id', 'Scott Sherwood', 11, 87194),
(292, 'token', 'generated', '{"iat":1478617773,"exp":1478790573,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":826,"action":"cancel_workflow"},"jti":"5821eaad4af10"}', '2016-11-08 15:09:33', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(293, 'token', 'generated', '{"iat":1478617773,"exp":1478790573,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1478530579","entry_id":826,"action":"approve"},"jti":"5821eaad4bac1"}', '2016-11-08 15:09:33', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(294, 'token', 'generated', '{"iat":1478617773,"exp":1478790573,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":11,"entry_timestamp":"1478530579","entry_id":826,"action":"reject"},"jti":"5821eaad4c67b"}', '2016-11-08 15:09:33', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(295, 'step', 'ended', 'approved', '2016-11-08 15:09:34', 16, 826, '0', '', '', 11, 87195),
(296, 'step', 'started', '', '2016-11-08 15:09:34', 16, 826, '0', '', '', 13, 0),
(297, 'step', 'ended', 'complete', '2016-11-08 15:09:34', 16, 826, '0', '', '', 13, 0),
(298, 'workflow', 'ended', 'approved', '2016-11-08 15:09:34', 16, 826, '0', '', '', 0, 87297),
(299, 'assignee', 'status', 'removed', '2016-11-08 16:41:21', 16, 821, '166', 'user_id', 'Chris Burchell', 10, 0),
(300, 'workflow', 'started', '', '2016-11-08 17:05:14', 16, 830, '0', '', '', 0, 0),
(301, 'step', 'started', '', '2016-11-08 17:05:14', 16, 830, '0', '', '', 10, 0),
(302, 'assignee', 'status', 'pending', '2016-11-08 17:05:14', 16, 830, '205', 'user_id', 'Scott Sherwood', 10, 0),
(303, 'token', 'generated', '{"iat":1478624714,"exp":1478797514,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":830,"action":"cancel_workflow"},"jti":"582205caaabf5"}', '2016-11-08 17:05:14', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(304, 'token', 'generated', '{"iat":1478624714,"exp":1478797514,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478624692","entry_id":830,"action":"approve"},"jti":"582205caabb95"}', '2016-11-08 17:05:14', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(305, 'token', 'generated', '{"iat":1478624714,"exp":1478797514,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478624692","entry_id":830,"action":"reject"},"jti":"582205caac365"}', '2016-11-08 17:05:14', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(306, 'assignee', 'status', 'pending', '2016-11-08 17:05:16', 16, 830, '80', 'user_id', 'Samir Patel', 10, 0),
(307, 'token', 'generated', '{"iat":1478624716,"exp":1478797516,"sub":"user_id|80","scopes":{"pages":["inbox"],"entry_id":830,"action":"cancel_workflow"},"jti":"582205cc3aa96"}', '2016-11-08 17:05:16', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(308, 'token', 'generated', '{"iat":1478624716,"exp":1478797516,"sub":"user_id|80","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478624692","entry_id":830,"action":"approve"},"jti":"582205cc3b69b"}', '2016-11-08 17:05:16', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(309, 'token', 'generated', '{"iat":1478624716,"exp":1478797516,"sub":"user_id|80","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478624692","entry_id":830,"action":"reject"},"jti":"582205cc3c290"}', '2016-11-08 17:05:16', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(310, 'assignee', 'status', 'approved', '2016-11-08 17:54:47', 16, 830, '205', 'user_id', 'Scott Sherwood', 10, 2973),
(311, 'assignee', 'status', 'rejected', '2016-11-08 17:56:21', 16, 830, '80', 'user_id', 'Samir Patel', 10, 3065),
(312, 'step', 'ended', 'rejected', '2016-11-08 17:56:21', 16, 830, '0', '', '', 10, 3067),
(313, 'step', 'started', '', '2016-11-08 17:56:22', 16, 830, '0', '', '', 12, 0),
(314, 'assignee', 'status', 'pending', '2016-11-08 17:56:22', 16, 830, '213', 'user_id', 'Trey Martin', 12, 0),
(315, 'token', 'generated', '{"iat":1478627782,"exp":1478800582,"sub":"user_id|213","scopes":{"pages":["inbox"],"entry_id":830,"action":"cancel_workflow"},"jti":"582211c60fd8f"}', '2016-11-08 17:56:22', 0, 0, '213', 'user_id', 'Trey Martin', 0, 0),
(316, 'assignee', 'status', 'complete', '2016-11-08 17:59:16', 16, 830, '213', 'user_id', 'Trey Martin', 12, 174),
(317, 'step', 'ended', 'complete', '2016-11-08 17:59:16', 16, 830, '0', '', '', 12, 174),
(318, 'step', 'started', '', '2016-11-08 17:59:16', 16, 830, '0', '', '', 10, 0),
(319, 'assignee', 'status', 'pending', '2016-11-08 17:59:16', 16, 830, '205', 'user_id', 'Scott Sherwood', 10, 0),
(320, 'token', 'generated', '{"iat":1478627956,"exp":1478800756,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":830,"action":"cancel_workflow"},"jti":"582212744bf2b"}', '2016-11-08 17:59:16', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(321, 'token', 'generated', '{"iat":1478627956,"exp":1478800756,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478627956","entry_id":830,"action":"approve"},"jti":"582212744c71f"}', '2016-11-08 17:59:16', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(322, 'token', 'generated', '{"iat":1478627956,"exp":1478800756,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478627956","entry_id":830,"action":"reject"},"jti":"582212744ced2"}', '2016-11-08 17:59:16', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(323, 'assignee', 'status', 'pending', '2016-11-08 17:59:17', 16, 830, '80', 'user_id', 'Samir Patel', 10, 0),
(324, 'token', 'generated', '{"iat":1478627957,"exp":1478800757,"sub":"user_id|80","scopes":{"pages":["inbox"],"entry_id":830,"action":"cancel_workflow"},"jti":"58221275c96bc"}', '2016-11-08 17:59:17', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(325, 'token', 'generated', '{"iat":1478627957,"exp":1478800757,"sub":"user_id|80","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478627956","entry_id":830,"action":"approve"},"jti":"58221275ca274"}', '2016-11-08 17:59:17', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(326, 'token', 'generated', '{"iat":1478627957,"exp":1478800757,"sub":"user_id|80","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478627956","entry_id":830,"action":"reject"},"jti":"58221275cae2d"}', '2016-11-08 17:59:17', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(327, 'assignee', 'status', 'approved', '2016-11-08 18:00:40', 16, 830, '80', 'user_id', 'Samir Patel', 10, 83),
(328, 'assignee', 'status', 'approved', '2016-11-08 18:01:14', 16, 830, '205', 'user_id', 'Scott Sherwood', 10, 118),
(329, 'step', 'ended', 'approved', '2016-11-08 18:01:14', 16, 830, '0', '', '', 10, 118),
(330, 'step', 'started', '', '2016-11-08 18:01:15', 16, 830, '0', '', '', 13, 0),
(331, 'step', 'ended', 'complete', '2016-11-08 18:01:15', 16, 830, '0', '', '', 13, 0),
(332, 'workflow', 'ended', 'approved', '2016-11-08 18:01:15', 16, 830, '0', '', '', 0, 3383),
(333, 'workflow', 'sent_to_step', '10', '2016-11-08 20:12:10', 16, 820, '0', '', '', 0, 0),
(334, 'step', 'started', '', '2016-11-08 20:12:10', 16, 820, '0', '', '', 10, 0),
(335, 'assignee', 'status', 'pending', '2016-11-08 20:12:10', 16, 820, '146', 'user_id', 'Andrew Wilding', 10, 0),
(336, 'token', 'generated', '{"iat":1478635930,"exp":1478808730,"sub":"user_id|146","scopes":{"pages":["inbox"],"entry_id":820,"action":"cancel_workflow"},"jti":"5822319a92b22"}', '2016-11-08 20:12:10', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(337, 'token', 'generated', '{"iat":1478635930,"exp":1478808730,"sub":"user_id|146","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478286462","entry_id":820,"action":"approve"},"jti":"5822319a93c07"}', '2016-11-08 20:12:10', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(338, 'token', 'generated', '{"iat":1478635930,"exp":1478808730,"sub":"user_id|146","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478286462","entry_id":820,"action":"reject"},"jti":"5822319a94694"}', '2016-11-08 20:12:10', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(339, 'assignee', 'status', 'pending', '2016-11-08 20:12:12', 16, 820, '37', 'user_id', 'Jeff Price', 10, 0),
(340, 'token', 'generated', '{"iat":1478635932,"exp":1478808732,"sub":"user_id|37","scopes":{"pages":["inbox"],"entry_id":820,"action":"cancel_workflow"},"jti":"5822319cb26ec"}', '2016-11-08 20:12:12', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(341, 'token', 'generated', '{"iat":1478635932,"exp":1478808732,"sub":"user_id|37","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478286462","entry_id":820,"action":"approve"},"jti":"5822319cb3672"}', '2016-11-08 20:12:12', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(342, 'token', 'generated', '{"iat":1478635932,"exp":1478808732,"sub":"user_id|37","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478286462","entry_id":820,"action":"reject"},"jti":"5822319cb4618"}', '2016-11-08 20:12:12', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(343, 'workflow', 'cancelled', '', '2016-11-08 20:12:46', 16, 819, '0', '', '', 0, 0),
(344, 'workflow', 'cancelled', '', '2016-11-08 20:13:00', 16, 818, '0', '', '', 0, 0),
(345, 'assignee', 'status', 'approved', '2016-11-08 20:13:39', 16, 821, '37', 'user_id', 'Jeff Price', 10, 347519),
(346, 'step', 'ended', 'approved', '2016-11-08 20:13:39', 16, 821, '0', '', '', 10, 347534),
(347, 'step', 'started', '', '2016-11-08 20:13:39', 16, 821, '0', '', '', 13, 0),
(348, 'token', 'generated', '{"iat":1478636019,"exp":1478808819,"sub":"user_id|176","scopes":{"pages":["inbox"],"entry_id":821,"action":"cancel_workflow"},"jti":"582231f372d6d"}', '2016-11-08 20:13:39', 0, 0, '176', 'user_id', 'Carrie Brown', 0, 0),
(349, 'token', 'generated', '{"iat":1478636021,"exp":1478808821,"sub":"user_id|166","scopes":{"pages":["inbox"],"entry_id":821,"action":"cancel_workflow"},"jti":"582231f528de7"}', '2016-11-08 20:13:41', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(350, 'token', 'generated', '{"iat":1478636022,"exp":1478808822,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":821,"action":"cancel_workflow"},"jti":"582231f6d1097"}', '2016-11-08 20:13:42', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(351, 'token', 'generated', '{"iat":1478636024,"exp":1478808824,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":821,"action":"cancel_workflow"},"jti":"582231f87b149"}', '2016-11-08 20:13:44', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(352, 'step', 'ended', 'complete', '2016-11-08 20:13:44', 16, 821, '0', '', '', 13, 5),
(353, 'workflow', 'ended', 'approved', '2016-11-08 20:13:44', 16, 821, '0', '', '', 0, 349276),
(354, 'workflow', 'sent_to_step', '10', '2016-11-08 20:15:51', 16, 799, '0', '', '', 0, 0),
(355, 'step', 'started', '', '2016-11-08 20:15:52', 16, 799, '0', '', '', 10, 0),
(356, 'assignee', 'status', 'pending', '2016-11-08 20:15:52', 16, 799, '205', 'user_id', 'Scott Sherwood', 10, 0),
(357, 'token', 'generated', '{"iat":1478636152,"exp":1478808952,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":799,"action":"cancel_workflow"},"jti":"5822327805d52"}', '2016-11-08 20:15:52', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(358, 'token', 'generated', '{"iat":1478636152,"exp":1478808952,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1477579251","entry_id":799,"action":"approve"},"jti":"5822327806945"}', '2016-11-08 20:15:52', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(359, 'token', 'generated', '{"iat":1478636152,"exp":1478808952,"sub":"user_id|205","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1477579251","entry_id":799,"action":"reject"},"jti":"5822327807c8f"}', '2016-11-08 20:15:52', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(360, 'assignee', 'status', 'pending', '2016-11-08 20:15:53', 16, 799, '80', 'user_id', 'Samir Patel', 10, 0),
(361, 'token', 'generated', '{"iat":1478636153,"exp":1478808953,"sub":"user_id|80","scopes":{"pages":["inbox"],"entry_id":799,"action":"cancel_workflow"},"jti":"582232799b2e5"}', '2016-11-08 20:15:53', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(362, 'token', 'generated', '{"iat":1478636153,"exp":1478808953,"sub":"user_id|80","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1477579251","entry_id":799,"action":"approve"},"jti":"582232799be3b"}', '2016-11-08 20:15:53', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(363, 'token', 'generated', '{"iat":1478636153,"exp":1478808953,"sub":"user_id|80","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1477579251","entry_id":799,"action":"reject"},"jti":"582232799ce22"}', '2016-11-08 20:15:53', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(364, 'assignee', 'status', 'approved', '2016-11-08 20:31:10', 16, 799, '205', 'user_id', 'Scott Sherwood', 10, 918),
(365, 'assignee', 'status', 'approved', '2016-11-08 20:52:41', 16, 799, '80', 'user_id', 'Samir Patel', 10, 2208),
(366, 'step', 'ended', 'approved', '2016-11-08 20:52:42', 16, 799, '0', '', '', 10, 2211),
(367, 'step', 'started', '', '2016-11-08 20:52:42', 16, 799, '0', '', '', 13, 0),
(368, 'token', 'generated', '{"iat":1478638362,"exp":1478811162,"sub":"user_id|176","scopes":{"pages":["inbox"],"entry_id":799,"action":"cancel_workflow"},"jti":"58223b1a1da7c"}', '2016-11-08 20:52:42', 0, 0, '176', 'user_id', 'Carrie Brown', 0, 0),
(369, 'token', 'generated', '{"iat":1478638363,"exp":1478811163,"sub":"user_id|166","scopes":{"pages":["inbox"],"entry_id":799,"action":"cancel_workflow"},"jti":"58223b1bda564"}', '2016-11-08 20:52:43', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(370, 'token', 'generated', '{"iat":1478638365,"exp":1478811165,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":799,"action":"cancel_workflow"},"jti":"58223b1d9d0c4"}', '2016-11-08 20:52:45', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(371, 'token', 'generated', '{"iat":1478638367,"exp":1478811167,"sub":"user_id|205","scopes":{"pages":["inbox"],"entry_id":799,"action":"cancel_workflow"},"jti":"58223b1f32cdf"}', '2016-11-08 20:52:47', 0, 0, '205', 'user_id', 'Scott Sherwood', 0, 0),
(372, 'step', 'ended', 'complete', '2016-11-08 20:52:47', 16, 799, '0', '', '', 13, 5),
(373, 'workflow', 'ended', 'approved', '2016-11-08 20:52:47', 16, 799, '0', '', '', 0, 1059116),
(374, 'assignee', 'status', 'approved', '2016-11-08 21:54:10', 16, 820, '146', 'user_id', 'Andrew Wilding', 10, 6120),
(375, 'token', 'generated', '{"iat":1478722773,"exp":1478895573,"sub":"user_id|37","scopes":{"pages":["inbox"],"entry_id":820,"action":"cancel_workflow"},"jti":"582384d5205f3"}', '2016-11-09 20:19:33', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(376, 'token', 'generated', '{"iat":1478722773,"exp":1478895573,"sub":"user_id|37","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478286462","entry_id":820,"action":"approve"},"jti":"582384d521975"}', '2016-11-09 20:19:33', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(377, 'token', 'generated', '{"iat":1478722773,"exp":1478895573,"sub":"user_id|37","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1478286462","entry_id":820,"action":"reject"},"jti":"582384d52252a"}', '2016-11-09 20:19:33', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(378, 'workflow', 'started', '', '2016-12-12 17:35:26', 19, 896, '0', '', '', 0, 0),
(379, 'step', 'started', '', '2016-12-12 17:35:26', 19, 896, '0', '', '', 14, 0),
(380, 'assignee', 'status', 'pending', '2016-12-12 17:35:26', 19, 896, '146', 'user_id', 'Andrew Wilding', 14, 0),
(381, 'token', 'generated', '{"iat":1481564126,"exp":1481736926,"sub":"user_id|146","scopes":{"pages":["inbox"],"entry_id":896,"action":"cancel_workflow"},"jti":"584edfde7ecd8"}', '2016-12-12 17:35:26', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(382, 'token', 'generated', '{"iat":1481564126,"exp":1481736926,"sub":"user_id|146","scopes":{"pages":["inbox"],"step_id":14,"entry_timestamp":"1481564122","entry_id":896,"action":"approve"},"jti":"584edfde7fc15"}', '2016-12-12 17:35:26', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(383, 'token', 'generated', '{"iat":1481564126,"exp":1481736926,"sub":"user_id|146","scopes":{"pages":["inbox"],"step_id":14,"entry_timestamp":"1481564122","entry_id":896,"action":"reject"},"jti":"584edfde80862"}', '2016-12-12 17:35:26', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(384, 'assignee', 'status', 'pending', '2016-12-12 17:35:27', 19, 896, '176', 'user_id', 'Carrie Brown', 14, 0),
(385, 'token', 'generated', '{"iat":1481564127,"exp":1481736927,"sub":"user_id|176","scopes":{"pages":["inbox"],"entry_id":896,"action":"cancel_workflow"},"jti":"584edfdfeca69"}', '2016-12-12 17:35:27', 0, 0, '176', 'user_id', 'Carrie Brown', 0, 0),
(386, 'token', 'generated', '{"iat":1481564127,"exp":1481736927,"sub":"user_id|176","scopes":{"pages":["inbox"],"step_id":14,"entry_timestamp":"1481564122","entry_id":896,"action":"approve"},"jti":"584edfdfed61e"}', '2016-12-12 17:35:27', 0, 0, '176', 'user_id', 'Carrie Brown', 0, 0),
(387, 'token', 'generated', '{"iat":1481564127,"exp":1481736927,"sub":"user_id|176","scopes":{"pages":["inbox"],"step_id":14,"entry_timestamp":"1481564122","entry_id":896,"action":"reject"},"jti":"584edfdfee1de"}', '2016-12-12 17:35:27', 0, 0, '176', 'user_id', 'Carrie Brown', 0, 0),
(388, 'assignee', 'status', 'pending', '2016-12-12 17:35:29', 19, 896, '166', 'user_id', 'Chris Burchell', 14, 0),
(389, 'token', 'generated', '{"iat":1481564129,"exp":1481736929,"sub":"user_id|166","scopes":{"pages":["inbox"],"entry_id":896,"action":"cancel_workflow"},"jti":"584edfe15c589"}', '2016-12-12 17:35:29', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(390, 'token', 'generated', '{"iat":1481564129,"exp":1481736929,"sub":"user_id|166","scopes":{"pages":["inbox"],"step_id":14,"entry_timestamp":"1481564122","entry_id":896,"action":"approve"},"jti":"584edfe15d139"}', '2016-12-12 17:35:29', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(391, 'token', 'generated', '{"iat":1481564129,"exp":1481736929,"sub":"user_id|166","scopes":{"pages":["inbox"],"step_id":14,"entry_timestamp":"1481564122","entry_id":896,"action":"reject"},"jti":"584edfe15dcef"}', '2016-12-12 17:35:29', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(392, 'assignee', 'status', 'pending', '2016-12-12 17:35:30', 19, 896, '37', 'user_id', 'Jeff Price', 14, 0),
(393, 'token', 'generated', '{"iat":1481564130,"exp":1481736930,"sub":"user_id|37","scopes":{"pages":["inbox"],"entry_id":896,"action":"cancel_workflow"},"jti":"584edfe2c6490"}', '2016-12-12 17:35:30', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(394, 'token', 'generated', '{"iat":1481564130,"exp":1481736930,"sub":"user_id|37","scopes":{"pages":["inbox"],"step_id":14,"entry_timestamp":"1481564122","entry_id":896,"action":"approve"},"jti":"584edfe2c7041"}', '2016-12-12 17:35:30', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(395, 'token', 'generated', '{"iat":1481564130,"exp":1481736930,"sub":"user_id|37","scopes":{"pages":["inbox"],"step_id":14,"entry_timestamp":"1481564122","entry_id":896,"action":"reject"},"jti":"584edfe2c7bf8"}', '2016-12-12 17:35:30', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(396, 'assignee', 'status', 'approved', '2016-12-12 18:45:41', 19, 896, '146', 'user_id', 'Andrew Wilding', 14, 4215),
(397, 'assignee', 'status', 'approved', '2016-12-12 19:07:04', 19, 896, '166', 'user_id', 'Chris Burchell', 14, 5495),
(398, 'assignee', 'status', 'approved', '2016-12-13 17:10:09', 19, 896, '37', 'user_id', 'Jeff Price', 14, 84879),
(399, 'token', 'generated', '{"iat":1481651078,"exp":1481823878,"sub":"user_id|176","scopes":{"pages":["inbox"],"entry_id":896,"action":"cancel_workflow"},"jti":"5850338634493"}', '2016-12-13 17:44:38', 0, 0, '176', 'user_id', 'Carrie Brown', 0, 0),
(400, 'token', 'generated', '{"iat":1481651078,"exp":1481823878,"sub":"user_id|176","scopes":{"pages":["inbox"],"step_id":14,"entry_timestamp":"1481564122","entry_id":896,"action":"approve"},"jti":"5850338635460"}', '2016-12-13 17:44:38', 0, 0, '176', 'user_id', 'Carrie Brown', 0, 0),
(401, 'token', 'generated', '{"iat":1481651078,"exp":1481823878,"sub":"user_id|176","scopes":{"pages":["inbox"],"step_id":14,"entry_timestamp":"1481564122","entry_id":896,"action":"reject"},"jti":"585033863604d"}', '2016-12-13 17:44:38', 0, 0, '176', 'user_id', 'Carrie Brown', 0, 0),
(402, 'assignee', 'status', 'approved', '2016-12-13 17:54:49', 19, 896, '176', 'user_id', 'Carrie Brown', 14, 87562),
(403, 'token', 'generated', '{"iat":1481651689,"exp":1481824489,"sub":"user_id|176","scopes":{"pages":["inbox"],"entry_id":896,"action":"cancel_workflow"},"jti":"585035e9aa073"}', '2016-12-13 17:54:49', 0, 0, '176', 'user_id', 'Carrie Brown', 0, 0),
(404, 'token', 'generated', '{"iat":1481651689,"exp":1481824489,"sub":"user_id|176","scopes":{"pages":["inbox"],"step_id":14,"entry_timestamp":"1481564122","entry_id":896,"action":"approve"},"jti":"585035e9aac2d"}', '2016-12-13 17:54:49', 0, 0, '176', 'user_id', 'Carrie Brown', 0, 0),
(405, 'token', 'generated', '{"iat":1481651689,"exp":1481824489,"sub":"user_id|176","scopes":{"pages":["inbox"],"step_id":14,"entry_timestamp":"1481564122","entry_id":896,"action":"reject"},"jti":"585035e9ab7e3"}', '2016-12-13 17:54:49', 0, 0, '176', 'user_id', 'Carrie Brown', 0, 0),
(406, 'token', 'generated', '{"iat":1481651691,"exp":1481824491,"sub":"user_id|166","scopes":{"pages":["inbox"],"entry_id":896,"action":"cancel_workflow"},"jti":"585035eb94c49"}', '2016-12-13 17:54:51', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(407, 'token', 'generated', '{"iat":1481651691,"exp":1481824491,"sub":"user_id|166","scopes":{"pages":["inbox"],"step_id":14,"entry_timestamp":"1481564122","entry_id":896,"action":"approve"},"jti":"585035eb95829"}', '2016-12-13 17:54:51', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(408, 'token', 'generated', '{"iat":1481651691,"exp":1481824491,"sub":"user_id|166","scopes":{"pages":["inbox"],"step_id":14,"entry_timestamp":"1481564122","entry_id":896,"action":"reject"},"jti":"585035eb963d0"}', '2016-12-13 17:54:51', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(409, 'token', 'generated', '{"iat":1481651693,"exp":1481824493,"sub":"user_id|68","scopes":{"pages":["inbox"],"entry_id":896,"action":"cancel_workflow"},"jti":"585035ed187ab"}', '2016-12-13 17:54:53', 0, 0, '68', 'user_id', 'Tushar Bhagat', 0, 0),
(410, 'token', 'generated', '{"iat":1481651693,"exp":1481824493,"sub":"user_id|68","scopes":{"pages":["inbox"],"step_id":14,"entry_timestamp":"1481564122","entry_id":896,"action":"approve"},"jti":"585035ed19484"}', '2016-12-13 17:54:53', 0, 0, '68', 'user_id', 'Tushar Bhagat', 0, 0),
(411, 'token', 'generated', '{"iat":1481651693,"exp":1481824493,"sub":"user_id|68","scopes":{"pages":["inbox"],"step_id":14,"entry_timestamp":"1481564122","entry_id":896,"action":"reject"},"jti":"585035ed19c63"}', '2016-12-13 17:54:53', 0, 0, '68', 'user_id', 'Tushar Bhagat', 0, 0),
(412, 'step', 'ended', 'approved', '2016-12-13 17:54:54', 19, 896, '0', '', '', 14, 87568),
(413, 'step', 'started', '', '2016-12-13 17:54:54', 19, 896, '0', '', '', 19, 0),
(414, 'token', 'generated', '{"iat":1481651694,"exp":1481824494,"sub":"user_id|176","scopes":{"pages":["inbox"],"entry_id":896,"action":"cancel_workflow"},"jti":"585035eeae1e9"}', '2016-12-13 17:54:54', 0, 0, '176', 'user_id', 'Carrie Brown', 0, 0),
(415, 'token', 'generated', '{"iat":1481651696,"exp":1481824496,"sub":"user_id|166","scopes":{"pages":["inbox"],"entry_id":896,"action":"cancel_workflow"},"jti":"585035f07303f"}', '2016-12-13 17:54:56', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(416, 'token', 'generated', '{"iat":1481651698,"exp":1481824498,"sub":"user_id|68","scopes":{"pages":["inbox"],"entry_id":896,"action":"cancel_workflow"},"jti":"585035f23e155"}', '2016-12-13 17:54:58', 0, 0, '68', 'user_id', 'Tushar Bhagat', 0, 0),
(417, 'step', 'ended', 'complete', '2016-12-13 17:55:00', 19, 896, '0', '', '', 19, 6),
(418, 'workflow', 'ended', 'approved', '2016-12-13 17:55:00', 19, 896, '0', '', '', 0, 87578),
(419, 'workflow', 'started', '', '2017-01-20 14:25:14', 23, 977, '0', '', '', 0, 0),
(420, 'step', 'started', '', '2017-01-20 14:25:14', 23, 977, '0', '', '', 24, 0),
(421, 'token', 'generated', '{"iat":1484922314,"exp":1485095114,"sub":"user_id|166","scopes":{"pages":["inbox"],"entry_id":977,"action":"cancel_workflow"},"jti":"58821dcab6f2f"}', '2017-01-20 14:25:14', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(422, 'token', 'generated', '{"iat":1484922316,"exp":1485095116,"sub":"user_id|37","scopes":{"pages":["inbox"],"entry_id":977,"action":"cancel_workflow"},"jti":"58821dcc4e664"}', '2017-01-20 14:25:16', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(423, 'token', 'generated', '{"iat":1484922318,"exp":1485095118,"sub":"user_id|80","scopes":{"pages":["inbox"],"entry_id":977,"action":"cancel_workflow"},"jti":"58821dce0ddd6"}', '2017-01-20 14:25:18', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(424, 'token', 'generated', '{"iat":1484922319,"exp":1485095119,"sub":"user_id|87","scopes":{"pages":["inbox"],"entry_id":977,"action":"cancel_workflow"},"jti":"58821dcf8e499"}', '2017-01-20 14:25:19', 0, 0, '87', 'user_id', 'Eric Borries', 0, 0),
(425, 'step', 'ended', 'complete', '2017-01-20 14:25:21', 23, 977, '0', '', '', 24, 7),
(426, 'workflow', 'ended', 'complete', '2017-01-20 14:25:21', 23, 977, '0', '', '', 0, 51),
(427, 'workflow', 'started', '', '2017-01-20 14:27:25', 23, 978, '0', '', '', 0, 0),
(428, 'step', 'started', '', '2017-01-20 14:27:26', 23, 978, '0', '', '', 24, 0),
(429, 'token', 'generated', '{"iat":1484922446,"exp":1485095246,"sub":"user_id|166","scopes":{"pages":["inbox"],"entry_id":978,"action":"cancel_workflow"},"jti":"58821e4e1a586"}', '2017-01-20 14:27:26', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(430, 'token', 'generated', '{"iat":1484922448,"exp":1485095248,"sub":"user_id|37","scopes":{"pages":["inbox"],"entry_id":978,"action":"cancel_workflow"},"jti":"58821e503ecff"}', '2017-01-20 14:27:28', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(431, 'token', 'generated', '{"iat":1484922449,"exp":1485095249,"sub":"user_id|80","scopes":{"pages":["inbox"],"entry_id":978,"action":"cancel_workflow"},"jti":"58821e51d7229"}', '2017-01-20 14:27:29', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(432, 'token', 'generated', '{"iat":1484922451,"exp":1485095251,"sub":"user_id|87","scopes":{"pages":["inbox"],"entry_id":978,"action":"cancel_workflow"},"jti":"58821e535309a"}', '2017-01-20 14:27:31', 0, 0, '87', 'user_id', 'Eric Borries', 0, 0),
(433, 'step', 'ended', 'complete', '2017-01-20 14:27:33', 23, 978, '0', '', '', 24, 7),
(434, 'workflow', 'ended', 'complete', '2017-01-20 14:27:33', 23, 978, '0', '', '', 0, 51),
(435, 'workflow', 'started', '', '2017-01-26 17:51:46', 16, 990, '0', '', '', 0, 0),
(436, 'step', 'started', '', '2017-01-26 17:51:46', 16, 990, '0', '', '', 10, 0),
(437, 'assignee', 'status', 'pending', '2017-01-26 17:51:46', 16, 990, '28', 'user_id', 'Dylan Clark', 10, 0),
(438, 'token', 'generated', '{"iat":1485453106,"exp":1485625906,"sub":"user_id|28","scopes":{"pages":["inbox"],"entry_id":990,"action":"cancel_workflow"},"jti":"588a3732af281"}', '2017-01-26 17:51:46', 0, 0, '28', 'user_id', 'Dylan Clark', 0, 0),
(439, 'token', 'generated', '{"iat":1485453106,"exp":1485625906,"sub":"user_id|28","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1485453099","entry_id":990,"action":"approve"},"jti":"588a3732afa7a"}', '2017-01-26 17:51:46', 0, 0, '28', 'user_id', 'Dylan Clark', 0, 0),
(440, 'token', 'generated', '{"iat":1485453106,"exp":1485625906,"sub":"user_id|28","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1485453099","entry_id":990,"action":"reject"},"jti":"588a3732b024d"}', '2017-01-26 17:51:46', 0, 0, '28', 'user_id', 'Dylan Clark', 0, 0),
(441, 'assignee', 'status', 'pending', '2017-01-26 17:51:48', 16, 990, '146', 'user_id', 'Andrew Wilding', 10, 0),
(442, 'token', 'generated', '{"iat":1485453108,"exp":1485625908,"sub":"user_id|146","scopes":{"pages":["inbox"],"entry_id":990,"action":"cancel_workflow"},"jti":"588a373445e9d"}', '2017-01-26 17:51:48', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(443, 'token', 'generated', '{"iat":1485453108,"exp":1485625908,"sub":"user_id|146","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1485453099","entry_id":990,"action":"approve"},"jti":"588a373446a54"}', '2017-01-26 17:51:48', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(444, 'token', 'generated', '{"iat":1485453108,"exp":1485625908,"sub":"user_id|146","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1485453099","entry_id":990,"action":"reject"},"jti":"588a373447696"}', '2017-01-26 17:51:48', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(445, 'assignee', 'status', 'pending', '2017-01-26 17:51:50', 16, 990, '37', 'user_id', 'Jeff Price', 10, 0),
(446, 'token', 'generated', '{"iat":1485453110,"exp":1485625910,"sub":"user_id|37","scopes":{"pages":["inbox"],"entry_id":990,"action":"cancel_workflow"},"jti":"588a373627239"}', '2017-01-26 17:51:50', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(447, 'token', 'generated', '{"iat":1485453110,"exp":1485625910,"sub":"user_id|37","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1485453099","entry_id":990,"action":"approve"},"jti":"588a373627e35"}', '2017-01-26 17:51:50', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(448, 'token', 'generated', '{"iat":1485453110,"exp":1485625910,"sub":"user_id|37","scopes":{"pages":["inbox"],"step_id":10,"entry_timestamp":"1485453099","entry_id":990,"action":"reject"},"jti":"588a37362899a"}', '2017-01-26 17:51:50', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(449, 'assignee', 'status', 'approved', '2017-01-26 22:02:58', 16, 990, '146', 'user_id', 'Andrew Wilding', 10, 15070),
(450, 'workflow', 'started', '', '2017-01-27 16:31:24', 16, 993, '0', '', '', 0, 0),
(451, 'step', 'started', '', '2017-01-27 16:31:25', 16, 993, '0', '', '', 13, 0),
(452, 'token', 'generated', '{"iat":1485534685,"exp":1485707485,"sub":"user_id|146","scopes":{"pages":["inbox"],"entry_id":993,"action":"cancel_workflow"},"jti":"588b75dd3820b"}', '2017-01-27 16:31:25', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(453, 'token', 'generated', '{"iat":1485534686,"exp":1485707486,"sub":"user_id|166","scopes":{"pages":["inbox"],"entry_id":993,"action":"cancel_workflow"},"jti":"588b75deed03e"}', '2017-01-27 16:31:26', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(454, 'token', 'generated', '{"iat":1485534688,"exp":1485707488,"sub":"user_id|37","scopes":{"pages":["inbox"],"entry_id":993,"action":"cancel_workflow"},"jti":"588b75e0997f9"}', '2017-01-27 16:31:28', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(455, 'step', 'ended', 'complete', '2017-01-27 16:31:30', 16, 993, '0', '', '', 13, 5),
(456, 'workflow', 'ended', 'complete', '2017-01-27 16:31:30', 16, 993, '0', '', '', 0, 16),
(457, 'workflow', 'started', '', '2017-01-27 16:41:55', 16, 994, '0', '', '', 0, 0),
(458, 'step', 'started', '', '2017-01-27 16:41:55', 16, 994, '0', '', '', 25, 0),
(459, 'token', 'generated', '{"iat":1485535315,"exp":1485708115,"sub":"user_id|146","scopes":{"pages":["inbox"],"entry_id":994,"action":"cancel_workflow"},"jti":"588b7853e2559"}', '2017-01-27 16:41:55', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(460, 'token', 'generated', '{"iat":1485535317,"exp":1485708117,"sub":"user_id|166","scopes":{"pages":["inbox"],"entry_id":994,"action":"cancel_workflow"},"jti":"588b785566d30"}', '2017-01-27 16:41:57', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(461, 'token', 'generated', '{"iat":1485535319,"exp":1485708119,"sub":"user_id|37","scopes":{"pages":["inbox"],"entry_id":994,"action":"cancel_workflow"},"jti":"588b785718310"}', '2017-01-27 16:41:59', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(462, 'step', 'ended', 'complete', '2017-01-27 16:42:00', 16, 994, '0', '', '', 25, 5),
(463, 'workflow', 'ended', 'complete', '2017-01-27 16:42:00', 16, 994, '0', '', '', 0, 15),
(464, 'workflow', 'restarted', '', '2017-01-30 13:43:42', 16, 990, '0', '', '', 0, 0),
(465, 'workflow', 'started', '', '2017-01-30 13:43:42', 16, 990, '0', '', '', 0, 0),
(466, 'step', 'started', '', '2017-01-30 13:43:42', 16, 990, '0', '', '', 25, 0),
(467, 'token', 'generated', '{"iat":1485783822,"exp":1485956622,"sub":"user_id|146","scopes":{"pages":["inbox"],"entry_id":990,"action":"cancel_workflow"},"jti":"588f430e96c90"}', '2017-01-30 13:43:42', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(468, 'token', 'generated', '{"iat":1485783824,"exp":1485956624,"sub":"user_id|166","scopes":{"pages":["inbox"],"entry_id":990,"action":"cancel_workflow"},"jti":"588f4310f29fb"}', '2017-01-30 13:43:44', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(469, 'token', 'generated', '{"iat":1485783826,"exp":1485956626,"sub":"user_id|37","scopes":{"pages":["inbox"],"entry_id":990,"action":"cancel_workflow"},"jti":"588f4312c7204"}', '2017-01-30 13:43:46', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(470, 'step', 'ended', 'complete', '2017-01-30 13:43:48', 16, 990, '0', '', '', 25, 6),
(471, 'workflow', 'ended', 'complete', '2017-01-30 13:43:48', 16, 990, '0', '', '', 0, 330729),
(472, 'workflow', 'started', '', '2017-01-30 22:15:28', 18, 999, '0', '', '', 0, 0),
(473, 'step', 'started', '', '2017-01-30 22:15:28', 18, 999, '0', '', '', 16, 0),
(474, 'assignee', 'status', 'pending', '2017-01-30 22:15:28', 18, 999, '146', 'user_id', 'Andrew Wilding', 16, 0),
(475, 'token', 'generated', '{"iat":1485814528,"exp":1485987328,"sub":"user_id|146","scopes":{"pages":["inbox"],"entry_id":999,"action":"cancel_workflow"},"jti":"588fbb00ca833"}', '2017-01-30 22:15:28', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(476, 'token', 'generated', '{"iat":1485814528,"exp":1485987328,"sub":"user_id|146","scopes":{"pages":["inbox"],"step_id":16,"entry_timestamp":"1485814509","entry_id":999,"action":"approve"},"jti":"588fbb00cc396"}', '2017-01-30 22:15:28', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(477, 'token', 'generated', '{"iat":1485814528,"exp":1485987328,"sub":"user_id|146","scopes":{"pages":["inbox"],"step_id":16,"entry_timestamp":"1485814509","entry_id":999,"action":"reject"},"jti":"588fbb00cd33b"}', '2017-01-30 22:15:28', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(478, 'assignee', 'status', 'pending', '2017-01-30 22:15:30', 18, 999, '176', 'user_id', 'Carrie Brown', 16, 0),
(479, 'token', 'generated', '{"iat":1485814530,"exp":1485987330,"sub":"user_id|176","scopes":{"pages":["inbox"],"entry_id":999,"action":"cancel_workflow"},"jti":"588fbb02d01a8"}', '2017-01-30 22:15:30', 0, 0, '176', 'user_id', 'Carrie Brown', 0, 0),
(480, 'token', 'generated', '{"iat":1485814530,"exp":1485987330,"sub":"user_id|176","scopes":{"pages":["inbox"],"step_id":16,"entry_timestamp":"1485814509","entry_id":999,"action":"approve"},"jti":"588fbb02d0d62"}', '2017-01-30 22:15:30', 0, 0, '176', 'user_id', 'Carrie Brown', 0, 0),
(481, 'token', 'generated', '{"iat":1485814530,"exp":1485987330,"sub":"user_id|176","scopes":{"pages":["inbox"],"step_id":16,"entry_timestamp":"1485814509","entry_id":999,"action":"reject"},"jti":"588fbb02d1920"}', '2017-01-30 22:15:30', 0, 0, '176', 'user_id', 'Carrie Brown', 0, 0),
(482, 'assignee', 'status', 'pending', '2017-01-30 22:15:32', 18, 999, '166', 'user_id', 'Chris Burchell', 16, 0),
(483, 'token', 'generated', '{"iat":1485814532,"exp":1485987332,"sub":"user_id|166","scopes":{"pages":["inbox"],"entry_id":999,"action":"cancel_workflow"},"jti":"588fbb04897d8"}', '2017-01-30 22:15:32', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(484, 'token', 'generated', '{"iat":1485814532,"exp":1485987332,"sub":"user_id|166","scopes":{"pages":["inbox"],"step_id":16,"entry_timestamp":"1485814509","entry_id":999,"action":"approve"},"jti":"588fbb048a390"}', '2017-01-30 22:15:32', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(485, 'token', 'generated', '{"iat":1485814532,"exp":1485987332,"sub":"user_id|166","scopes":{"pages":["inbox"],"step_id":16,"entry_timestamp":"1485814509","entry_id":999,"action":"reject"},"jti":"588fbb048af4a"}', '2017-01-30 22:15:32', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(486, 'assignee', 'status', 'pending', '2017-01-30 22:15:34', 18, 999, '37', 'user_id', 'Jeff Price', 16, 0),
(487, 'token', 'generated', '{"iat":1485814534,"exp":1485987334,"sub":"user_id|37","scopes":{"pages":["inbox"],"entry_id":999,"action":"cancel_workflow"},"jti":"588fbb0676eeb"}', '2017-01-30 22:15:34', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(488, 'token', 'generated', '{"iat":1485814534,"exp":1485987334,"sub":"user_id|37","scopes":{"pages":["inbox"],"step_id":16,"entry_timestamp":"1485814509","entry_id":999,"action":"approve"},"jti":"588fbb0677a90"}', '2017-01-30 22:15:34', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(489, 'token', 'generated', '{"iat":1485814534,"exp":1485987334,"sub":"user_id|37","scopes":{"pages":["inbox"],"step_id":16,"entry_timestamp":"1485814509","entry_id":999,"action":"reject"},"jti":"588fbb067829a"}', '2017-01-30 22:15:34', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(490, 'workflow', 'started', '', '2017-02-01 19:45:42', 16, 1004, '0', '', '', 0, 0),
(491, 'step', 'started', '', '2017-02-01 19:45:42', 16, 1004, '0', '', '', 25, 0),
(492, 'token', 'generated', '{"iat":1485978342,"exp":1486151142,"sub":"user_id|146","scopes":{"pages":["inbox"],"entry_id":1004,"action":"cancel_workflow"},"jti":"58923ae677c6e"}', '2017-02-01 19:45:42', 0, 0, '146', 'user_id', 'Andrew Wilding', 0, 0),
(493, 'token', 'generated', '{"iat":1485978344,"exp":1486151144,"sub":"user_id|166","scopes":{"pages":["inbox"],"entry_id":1004,"action":"cancel_workflow"},"jti":"58923ae81ab1b"}', '2017-02-01 19:45:44', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(494, 'token', 'generated', '{"iat":1485978345,"exp":1486151145,"sub":"user_id|37","scopes":{"pages":["inbox"],"entry_id":1004,"action":"cancel_workflow"},"jti":"58923ae9a683a"}', '2017-02-01 19:45:45', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(495, 'step', 'ended', 'complete', '2017-02-01 19:45:47', 16, 1004, '0', '', '', 25, 5),
(496, 'workflow', 'ended', 'complete', '2017-02-01 19:45:47', 16, 1004, '0', '', '', 0, 34),
(497, 'workflow', 'started', '', '2017-02-03 14:20:07', 23, 1012, '0', '', '', 0, 0),
(498, 'step', 'started', '', '2017-02-03 14:20:07', 23, 1012, '0', '', '', 24, 0),
(499, 'token', 'generated', '{"iat":1486131607,"exp":1486304407,"sub":"user_id|166","scopes":{"pages":["inbox"],"entry_id":1012,"action":"cancel_workflow"},"jti":"58949197e8ec2"}', '2017-02-03 14:20:07', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(500, 'token', 'generated', '{"iat":1486131609,"exp":1486304409,"sub":"user_id|37","scopes":{"pages":["inbox"],"entry_id":1012,"action":"cancel_workflow"},"jti":"58949199a9ee1"}', '2017-02-03 14:20:09', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(501, 'token', 'generated', '{"iat":1486131611,"exp":1486304411,"sub":"user_id|80","scopes":{"pages":["inbox"],"entry_id":1012,"action":"cancel_workflow"},"jti":"5894919b6646e"}', '2017-02-03 14:20:11', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(502, 'token', 'generated', '{"iat":1486131612,"exp":1486304412,"sub":"user_id|87","scopes":{"pages":["inbox"],"entry_id":1012,"action":"cancel_workflow"},"jti":"5894919ceff6d"}', '2017-02-03 14:20:12', 0, 0, '87', 'user_id', 'Eric Borries', 0, 0),
(503, 'step', 'ended', 'complete', '2017-02-03 14:20:14', 23, 1012, '0', '', '', 24, 7),
(504, 'workflow', 'ended', 'complete', '2017-02-03 14:20:14', 23, 1012, '0', '', '', 0, 42),
(505, 'workflow', 'started', '', '2017-02-03 21:07:47', 23, 1016, '0', '', '', 0, 0),
(506, 'step', 'started', '', '2017-02-03 21:07:47', 23, 1016, '0', '', '', 24, 0),
(507, 'token', 'generated', '{"iat":1486156067,"exp":1486328867,"sub":"user_id|166","scopes":{"pages":["inbox"],"entry_id":1016,"action":"cancel_workflow"},"jti":"5894f1234db97"}', '2017-02-03 21:07:47', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(508, 'token', 'generated', '{"iat":1486156068,"exp":1486328868,"sub":"user_id|37","scopes":{"pages":["inbox"],"entry_id":1016,"action":"cancel_workflow"},"jti":"5894f124f372d"}', '2017-02-03 21:07:48', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(509, 'token', 'generated', '{"iat":1486156071,"exp":1486328871,"sub":"user_id|80","scopes":{"pages":["inbox"],"entry_id":1016,"action":"cancel_workflow"},"jti":"5894f1271ec6e"}', '2017-02-03 21:07:51', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(510, 'token', 'generated', '{"iat":1486156072,"exp":1486328872,"sub":"user_id|28","scopes":{"pages":["inbox"],"entry_id":1016,"action":"cancel_workflow"},"jti":"5894f128dc357"}', '2017-02-03 21:07:52', 0, 0, '28', 'user_id', 'Dylan Clark', 0, 0),
(511, 'step', 'ended', 'complete', '2017-02-03 21:07:54', 23, 1016, '0', '', '', 24, 7),
(512, 'workflow', 'ended', 'complete', '2017-02-03 21:07:54', 23, 1016, '0', '', '', 0, 44),
(513, 'workflow', 'started', '', '2017-02-03 21:17:41', 23, 1017, '0', '', '', 0, 0),
(514, 'step', 'started', '', '2017-02-03 21:17:41', 23, 1017, '0', '', '', 24, 0),
(515, 'token', 'generated', '{"iat":1486156661,"exp":1486329461,"sub":"user_id|166","scopes":{"pages":["inbox"],"entry_id":1017,"action":"cancel_workflow"},"jti":"5894f375c5095"}', '2017-02-03 21:17:41', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(516, 'token', 'generated', '{"iat":1486156663,"exp":1486329463,"sub":"user_id|37","scopes":{"pages":["inbox"],"entry_id":1017,"action":"cancel_workflow"},"jti":"5894f377a42a0"}', '2017-02-03 21:17:43', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(517, 'token', 'generated', '{"iat":1486156665,"exp":1486329465,"sub":"user_id|80","scopes":{"pages":["inbox"],"entry_id":1017,"action":"cancel_workflow"},"jti":"5894f3795cda5"}', '2017-02-03 21:17:45', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(518, 'token', 'generated', '{"iat":1486156667,"exp":1486329467,"sub":"user_id|20","scopes":{"pages":["inbox"],"entry_id":1017,"action":"cancel_workflow"},"jti":"5894f37b4a45f"}', '2017-02-03 21:17:47', 0, 0, '20', 'user_id', 'Daniel Santarsiero', 0, 0),
(519, 'step', 'ended', 'complete', '2017-02-03 21:17:48', 23, 1017, '0', '', '', 24, 7),
(520, 'workflow', 'ended', 'complete', '2017-02-03 21:17:48', 23, 1017, '0', '', '', 0, 43),
(521, 'workflow', 'started', '', '2017-02-03 21:24:02', 23, 1018, '0', '', '', 0, 0),
(522, 'step', 'started', '', '2017-02-03 21:24:02', 23, 1018, '0', '', '', 24, 0),
(523, 'token', 'generated', '{"iat":1486157042,"exp":1486329842,"sub":"user_id|166","scopes":{"pages":["inbox"],"entry_id":1018,"action":"cancel_workflow"},"jti":"5894f4f2ac78b"}', '2017-02-03 21:24:02', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(524, 'token', 'generated', '{"iat":1486157044,"exp":1486329844,"sub":"user_id|37","scopes":{"pages":["inbox"],"entry_id":1018,"action":"cancel_workflow"},"jti":"5894f4f4669fc"}', '2017-02-03 21:24:04', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(525, 'token', 'generated', '{"iat":1486157046,"exp":1486329846,"sub":"user_id|80","scopes":{"pages":["inbox"],"entry_id":1018,"action":"cancel_workflow"},"jti":"5894f4f60d7e4"}', '2017-02-03 21:24:06', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(526, 'token', 'generated', '{"iat":1486157047,"exp":1486329847,"sub":"user_id|166","scopes":{"pages":["inbox"],"entry_id":1018,"action":"cancel_workflow"},"jti":"5894f4f7a93ef"}', '2017-02-03 21:24:07', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(527, 'step', 'ended', 'complete', '2017-02-03 21:24:07', 23, 1018, '0', '', '', 24, 5),
(528, 'workflow', 'ended', 'complete', '2017-02-03 21:24:07', 23, 1018, '0', '', '', 0, 41),
(529, 'workflow', 'started', '', '2017-02-06 15:41:09', 23, 1019, '0', '', '', 0, 0),
(530, 'step', 'started', '', '2017-02-06 15:41:09', 23, 1019, '0', '', '', 24, 0),
(531, 'token', 'generated', '{"iat":1486395669,"exp":1486568469,"sub":"user_id|166","scopes":{"pages":["inbox"],"entry_id":1019,"action":"cancel_workflow"},"jti":"589899154dfd7"}', '2017-02-06 15:41:09', 0, 0, '166', 'user_id', 'Chris Burchell', 0, 0),
(532, 'token', 'generated', '{"iat":1486395671,"exp":1486568471,"sub":"user_id|37","scopes":{"pages":["inbox"],"entry_id":1019,"action":"cancel_workflow"},"jti":"58989917091ff"}', '2017-02-06 15:41:11', 0, 0, '37', 'user_id', 'Jeff Price', 0, 0),
(533, 'token', 'generated', '{"iat":1486395672,"exp":1486568472,"sub":"user_id|80","scopes":{"pages":["inbox"],"entry_id":1019,"action":"cancel_workflow"},"jti":"58989918a886b"}', '2017-02-06 15:41:12', 0, 0, '80', 'user_id', 'Samir Patel', 0, 0),
(534, 'token', 'generated', '{"iat":1486395674,"exp":1486568474,"sub":"user_id|87","scopes":{"pages":["inbox"],"entry_id":1019,"action":"cancel_workflow"},"jti":"5898991a8f5af"}', '2017-02-06 15:41:14', 0, 0, '87', 'user_id', 'Eric Borries', 0, 0),
(535, 'step', 'ended', 'complete', '2017-02-06 15:41:16', 23, 1019, '0', '', '', 24, 7),
(536, 'workflow', 'ended', 'complete', '2017-02-06 15:41:16', 23, 1019, '0', '', '', 0, 12);

--
-- Truncate table before insert `wp_wxnnNt6qb6_huge_itslider_images`
--

TRUNCATE TABLE `wp_wxnnNt6qb6_huge_itslider_images`;
--
-- Dumping data for table `wp_wxnnNt6qb6_huge_itslider_images`
--

INSERT INTO `wp_wxnnNt6qb6_huge_itslider_images` (`id`, `name`, `slider_id`, `description`, `image_url`, `sl_url`, `sl_type`, `link_target`, `sl_stitle`, `sl_sdesc`, `sl_postlink`, `ordering`, `published`, `published_in_sl_width`) VALUES
(1, '', '1', '', 'http://www.sequencegxp.com/wp-content/plugins/slider-image/Front_images/slides/slide1.jpg', 'http://huge-it.com', 'image', 'on', '', '', '', 1, 1, NULL),
(2, 'Simple Usage', '1', '', 'http://www.sequencegxp.com/wp-content/plugins/slider-image/Front_images/slides/slide2.jpg', 'http://huge-it.com', 'image', 'on', '', '', '', 2, 1, NULL),
(3, 'Huge-IT Slider', '1', 'The slider allows having unlimited amount of images with their titles and descriptions. The slider uses autogenerated shortcodes making it easier for the users to add it to the custom location.', 'http://www.sequencegxp.com/wp-content/plugins/slider-image/Front_images/slides/slide3.jpg', 'http://huge-it.com', 'image', 'on', '', '', '', 3, 1, NULL),
(5, '', '2', '', 'http://www.sequencegxp.com/wp-content/uploads/2016/10/Gamification.png', '', '', '', '', '', '', 1, 2, 1),
(6, '', '2', '', 'http://www.sequencegxp.com/wp-content/uploads/2016/10/ItsPlay.png', '', '', '', '', '', '', 1, 2, 1),
(7, '', '2', '', 'http://www.sequencegxp.com/wp-content/uploads/2016/10/Stay.png', '', '', '', '', '', '', 1, 2, 1),
(8, '', '2', '', 'http://www.sequencegxp.com/wp-content/uploads/2016/10/Competitive-Advantage.png', '', '', '', '', '', '', 0, 2, 1),
(9, '', '2', '', 'http://www.sequencegxp.com/wp-content/uploads/2016/10/ElementOfFun.png', '', '', '', '', '', '', 0, 2, 1);

--
-- Truncate table before insert `wp_wxnnNt6qb6_huge_itslider_params`
--

TRUNCATE TABLE `wp_wxnnNt6qb6_huge_itslider_params`;
--
-- Dumping data for table `wp_wxnnNt6qb6_huge_itslider_params`
--

INSERT INTO `wp_wxnnNt6qb6_huge_itslider_params` (`id`, `name`, `title`, `description`, `value`) VALUES
(89, 'slider_crop_image', 'Slider crop image', 'Slider crop image', 'resize'),
(90, 'slider_title_color', 'Slider title color', 'Slider title color', '000000'),
(91, 'slider_title_font_size', 'Slider title font size', 'Slider title font size', '13'),
(92, 'slider_description_color', 'Slider description color', 'Slider description color', 'ffffff'),
(93, 'slider_description_font_size', 'Slider description font size', 'Slider description font size', '13'),
(94, 'slider_title_position', 'Slider title position', 'Slider title position', 'right-top'),
(95, 'slider_description_position', 'Slider description position', 'Slider description position', 'right-bottom'),
(96, 'slider_title_border_size', 'Slider Title border size', 'Slider Title border size', '0'),
(97, 'slider_title_border_color', 'Slider title border color', 'Slider title border color', 'ffffff'),
(98, 'slider_title_border_radius', 'Slider title border radius', 'Slider title border radius', '4'),
(99, 'slider_description_border_size', 'Slider description border size', 'Slider description border size', '0'),
(100, 'slider_description_border_color', 'Slider description border color', 'Slider description border color', 'ffffff'),
(101, 'slider_description_border_radius', 'Slider description border radius', 'Slider description border radius', '0'),
(102, 'slider_slideshow_border_size', 'Slider border size', 'Slider border size', '0'),
(103, 'slider_slideshow_border_color', 'Slider border color', 'Slider border color', 'ffffff'),
(104, 'slider_slideshow_border_radius', 'Slider border radius', 'Slider border radius', '0'),
(105, 'slider_navigation_type', 'Slider navigation type', 'Slider navigation type', '1'),
(106, 'slider_navigation_position', 'Slider navigation position', 'Slider navigation position', 'bottom'),
(107, 'slider_title_background_color', 'Slider title background color', 'Slider title background color', 'ffffff'),
(108, 'slider_description_background_color', 'Slider description background color', 'Slider description background color', '000000'),
(109, 'slider_title_transparent', 'Slider title has background', 'Slider title has background', 'on'),
(110, 'slider_description_transparent', 'Slider description has background', 'Slider description has background', 'on'),
(111, 'slider_slider_background_color', 'Slider slider background color', 'Slider slider background color', 'ffffff'),
(112, 'slider_dots_position', 'slider dots position', 'slider dots position', 'top'),
(113, 'slider_active_dot_color', 'slider active dot color', '', 'ffffff'),
(114, 'slider_dots_color', 'slider dots color', '', '000000'),
(115, 'slider_description_width', 'Slider description width', 'Slider description width', '70'),
(116, 'slider_description_height', 'Slider description height', 'Slider description height', '50'),
(117, 'slider_description_background_transparency', 'slider description background transparency', 'slider description background transparency', '70'),
(118, 'slider_description_text_align', 'description text-align', 'description text-align', 'justify'),
(119, 'slider_title_width', 'slider title width', 'slider title width', '30'),
(120, 'slider_title_height', 'slider title height', 'slider title height', '50'),
(121, 'slider_title_background_transparency', 'slider title background transparency', 'slider title background transparency', '70'),
(122, 'slider_title_text_align', 'title text-align', 'title text-align', 'right'),
(123, 'slider_title_has_margin', 'title has margin', 'title has margin', 'on'),
(124, 'slider_description_has_margin', 'description has margin', 'description has margin', 'on'),
(125, 'slider_show_arrows', 'Slider show left right arrows', 'Slider show left right arrows', 'on'),
(126, 'loading_icon_type', 'Slider loading icon type', 'Slider loading icon type', '1'),
(127, 'slider_thumb_count_slides', 'Slide thumbs count', 'Slide thumbs count', '3'),
(128, 'slider_dots_position_new', 'Slide Dots Position', 'Slide Dots Position', 'dotstop'),
(129, 'slider_thumb_back_color', 'Thumbnail Background Color', 'Thumbnail Background Color', 'FFFFFF'),
(130, 'slider_thumb_passive_color', 'Passive Thumbnail Color', 'Passive Thumbnail Color', 'FFFFFF'),
(131, 'slider_thumb_passive_color_trans', 'Passive Thumbnail Color Transparency', 'Passive Thumbnail Color Transparency', '50'),
(132, 'slider_thumb_height', 'Slider Thumb Height', 'Slider Thumb Height', '100');

--
-- Truncate table before insert `wp_wxnnNt6qb6_huge_itslider_sliders`
--

TRUNCATE TABLE `wp_wxnnNt6qb6_huge_itslider_sliders`;
--
-- Dumping data for table `wp_wxnnNt6qb6_huge_itslider_sliders`
--

INSERT INTO `wp_wxnnNt6qb6_huge_itslider_sliders` (`id`, `name`, `sl_height`, `sl_width`, `pause_on_hover`, `slider_list_effects_s`, `description`, `param`, `sl_position`, `ordering`, `published`, `sl_loading_icon`, `show_thumb`, `video_autoplay`, `random_images`) VALUES
(1, 'My First Slider', 375, 600, 'on', 'random', '4000', '1000', 'center', 1, '300', 'off', 'dotstop', 'off', 'off'),
(2, 'Business Development ', 300, 600, 'on', 'cubeH', '4000', '1000', 'center', 1, '300', 'off', 'dotstop', 'off', 'off');

--
-- Truncate table before insert `wp_wxnnNt6qb6_links`
--

TRUNCATE TABLE `wp_wxnnNt6qb6_links`;
--
-- Truncate table before insert `wp_wxnnNt6qb6_login_redirects`
--

TRUNCATE TABLE `wp_wxnnNt6qb6_login_redirects`;
--
-- Dumping data for table `wp_wxnnNt6qb6_login_redirects`
--

INSERT INTO `wp_wxnnNt6qb6_login_redirects` (`rul_type`, `rul_value`, `rul_url`, `rul_url_logout`, `rul_order`) VALUES
('all', NULL, '', '', 0),
('register', NULL, '', NULL, 0),
('role', 'subscriber', 'http://www.sequencegxp.com/', '', 0);

--
-- Truncate table before insert `wp_wxnnNt6qb6_ltp_datas`
--

TRUNCATE TABLE `wp_wxnnNt6qb6_ltp_datas`;
--
-- Dumping data for table `wp_wxnnNt6qb6_ltp_datas`
--

INSERT INTO `wp_wxnnNt6qb6_ltp_datas` (`id`, `post_id`, `value`, `user_id`, `date_time`) VALUES
(1, 1071249, 1, 205, '2016-12-07 18:52:05');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
