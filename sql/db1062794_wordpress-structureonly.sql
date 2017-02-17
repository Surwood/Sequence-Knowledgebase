-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 10.12.3.74
-- Generation Time: Feb 07, 2017 at 05:04 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL auto_increment,
  `comment_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL auto_increment,
  `comment_post_ID` bigint(20) unsigned NOT NULL default '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL default '',
  `comment_author_url` varchar(200) NOT NULL default '',
  `comment_author_IP` varchar(100) NOT NULL default '',
  `comment_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL default '0',
  `comment_approved` varchar(20) NOT NULL default '1',
  `comment_agent` varchar(255) NOT NULL default '',
  `comment_type` varchar(20) NOT NULL default '',
  `comment_parent` bigint(20) unsigned NOT NULL default '0',
  `user_id` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL auto_increment,
  `link_url` varchar(255) NOT NULL default '',
  `link_name` varchar(255) NOT NULL default '',
  `link_image` varchar(255) NOT NULL default '',
  `link_target` varchar(25) NOT NULL default '',
  `link_description` varchar(255) NOT NULL default '',
  `link_visible` varchar(20) NOT NULL default 'Y',
  `link_owner` bigint(20) unsigned NOT NULL default '1',
  `link_rating` int(11) NOT NULL default '0',
  `link_updated` datetime NOT NULL default '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL default '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL auto_increment,
  `option_name` varchar(64) NOT NULL default '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL default 'yes',
  PRIMARY KEY  (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL auto_increment,
  `post_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL auto_increment,
  `post_author` bigint(20) unsigned NOT NULL default '0',
  `post_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL default 'publish',
  `comment_status` varchar(20) NOT NULL default 'open',
  `ping_status` varchar(20) NOT NULL default 'open',
  `post_password` varchar(20) NOT NULL default '',
  `post_name` varchar(200) NOT NULL default '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL default '0',
  `guid` varchar(255) NOT NULL default '',
  `menu_order` int(11) NOT NULL default '0',
  `post_type` varchar(20) NOT NULL default 'post',
  `post_mime_type` varchar(100) NOT NULL default '',
  `comment_count` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(200) NOT NULL default '',
  `slug` varchar(200) NOT NULL default '',
  `term_group` bigint(10) NOT NULL default '0',
  PRIMARY KEY  (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL default '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL default '0',
  `term_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL auto_increment,
  `term_id` bigint(20) unsigned NOT NULL default '0',
  `taxonomy` varchar(32) NOT NULL default '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL default '0',
  `count` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL auto_increment,
  `user_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL auto_increment,
  `user_login` varchar(60) NOT NULL default '',
  `user_pass` varchar(64) NOT NULL default '',
  `user_nicename` varchar(50) NOT NULL default '',
  `user_email` varchar(100) NOT NULL default '',
  `user_url` varchar(100) NOT NULL default '',
  `user_registered` datetime NOT NULL default '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL default '',
  `user_status` int(11) NOT NULL default '0',
  `display_name` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_commentmeta`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_commentmeta`;
CREATE TABLE `wp_wxnnNt6qb6_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL auto_increment,
  `comment_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_comments`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_comments`;
CREATE TABLE `wp_wxnnNt6qb6_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL auto_increment,
  `comment_post_ID` bigint(20) unsigned NOT NULL default '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL default '',
  `comment_author_url` varchar(200) NOT NULL default '',
  `comment_author_IP` varchar(100) NOT NULL default '',
  `comment_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL default '0',
  `comment_approved` varchar(20) NOT NULL default '1',
  `comment_agent` varchar(255) NOT NULL default '',
  `comment_type` varchar(20) NOT NULL default '',
  `comment_parent` bigint(20) unsigned NOT NULL default '0',
  `user_id` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_gf_addon_feed`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_gf_addon_feed`;
CREATE TABLE `wp_wxnnNt6qb6_gf_addon_feed` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `form_id` mediumint(8) unsigned NOT NULL,
  `is_active` tinyint(1) NOT NULL default '1',
  `meta` longtext,
  `addon_slug` varchar(50) default NULL,
  `feed_order` mediumint(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `addon_form` (`addon_slug`,`form_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_gravityflow_activity_log`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_gravityflow_activity_log`;
CREATE TABLE `wp_wxnnNt6qb6_gravityflow_activity_log` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `log_object` varchar(50) default NULL,
  `log_event` varchar(50) default NULL,
  `log_value` varchar(255) default NULL,
  `date_created` datetime NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `lead_id` int(10) unsigned NOT NULL,
  `assignee_id` varchar(255) default NULL,
  `assignee_type` varchar(50) default NULL,
  `display_name` varchar(250) default NULL,
  `feed_id` mediumint(8) unsigned NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_huge_itslider_images`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_huge_itslider_images`;
CREATE TABLE `wp_wxnnNt6qb6_huge_itslider_images` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `slider_id` varchar(200) default NULL,
  `description` text,
  `image_url` text,
  `sl_url` text,
  `sl_type` text NOT NULL,
  `link_target` text NOT NULL,
  `sl_stitle` text NOT NULL,
  `sl_sdesc` text NOT NULL,
  `sl_postlink` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(4) unsigned default NULL,
  `published_in_sl_width` tinyint(4) unsigned default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_huge_itslider_params`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_huge_itslider_params`;
CREATE TABLE `wp_wxnnNt6qb6_huge_itslider_params` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `value` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_huge_itslider_sliders`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_huge_itslider_sliders`;
CREATE TABLE `wp_wxnnNt6qb6_huge_itslider_sliders` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(200) NOT NULL,
  `sl_height` int(11) unsigned default NULL,
  `sl_width` int(11) unsigned default NULL,
  `pause_on_hover` text,
  `slider_list_effects_s` text,
  `description` text,
  `param` text,
  `sl_position` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` text,
  `sl_loading_icon` text NOT NULL,
  `show_thumb` varchar(255) NOT NULL default 'dotstop',
  `video_autoplay` varchar(255) NOT NULL default 'off',
  `random_images` varchar(255) NOT NULL default 'off',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_links`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_links`;
CREATE TABLE `wp_wxnnNt6qb6_links` (
  `link_id` bigint(20) unsigned NOT NULL auto_increment,
  `link_url` varchar(255) NOT NULL default '',
  `link_name` varchar(255) NOT NULL default '',
  `link_image` varchar(255) NOT NULL default '',
  `link_target` varchar(25) NOT NULL default '',
  `link_description` varchar(255) NOT NULL default '',
  `link_visible` varchar(20) NOT NULL default 'Y',
  `link_owner` bigint(20) unsigned NOT NULL default '1',
  `link_rating` int(11) NOT NULL default '0',
  `link_updated` datetime NOT NULL default '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL default '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_login_redirects`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_login_redirects`;
CREATE TABLE `wp_wxnnNt6qb6_login_redirects` (
  `rul_type` enum('user','role','level','all','register') NOT NULL,
  `rul_value` varchar(191) default NULL,
  `rul_url` longtext,
  `rul_url_logout` longtext,
  `rul_order` int(2) NOT NULL default '0',
  UNIQUE KEY `rul_type` (`rul_type`,`rul_value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_ltp_datas`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_ltp_datas`;
CREATE TABLE `wp_wxnnNt6qb6_ltp_datas` (
  `id` bigint(11) NOT NULL auto_increment,
  `post_id` int(11) NOT NULL,
  `value` int(2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_options`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_options`;
CREATE TABLE `wp_wxnnNt6qb6_options` (
  `option_id` bigint(20) unsigned NOT NULL auto_increment,
  `option_name` varchar(191) default NULL,
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL default 'yes',
  PRIMARY KEY  (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_postmeta`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_postmeta`;
CREATE TABLE `wp_wxnnNt6qb6_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL auto_increment,
  `post_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_posts`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_posts`;
CREATE TABLE `wp_wxnnNt6qb6_posts` (
  `ID` bigint(20) unsigned NOT NULL auto_increment,
  `post_author` bigint(20) unsigned NOT NULL default '0',
  `post_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL default 'publish',
  `comment_status` varchar(20) NOT NULL default 'open',
  `ping_status` varchar(20) NOT NULL default 'open',
  `post_password` varchar(20) NOT NULL default '',
  `post_name` varchar(200) NOT NULL default '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL default '0',
  `guid` varchar(255) NOT NULL default '',
  `menu_order` int(11) NOT NULL default '0',
  `post_type` varchar(20) NOT NULL default 'post',
  `post_mime_type` varchar(100) NOT NULL default '',
  `comment_count` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_name` (`post_name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_rg_form`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_rg_form`;
CREATE TABLE `wp_wxnnNt6qb6_rg_form` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `title` varchar(150) NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL default '1',
  `is_trash` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_rg_form_meta`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_rg_form_meta`;
CREATE TABLE `wp_wxnnNt6qb6_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext,
  `entries_grid_meta` longtext,
  `confirmations` longtext,
  `notifications` longtext,
  PRIMARY KEY  (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_rg_form_view`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_rg_form_view`;
CREATE TABLE `wp_wxnnNt6qb6_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) default NULL,
  `count` mediumint(8) unsigned NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `form_id` (`form_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_rg_incomplete_submissions`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_rg_incomplete_submissions`;
CREATE TABLE `wp_wxnnNt6qb6_rg_incomplete_submissions` (
  `uuid` char(32) NOT NULL,
  `email` varchar(255) default NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) NOT NULL,
  `source_url` longtext NOT NULL,
  `submission` longtext NOT NULL,
  PRIMARY KEY  (`uuid`),
  KEY `form_id` (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_rg_lead`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_rg_lead`;
CREATE TABLE `wp_wxnnNt6qb6_rg_lead` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned default NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL default '0',
  `is_read` tinyint(1) NOT NULL default '0',
  `ip` varchar(39) NOT NULL,
  `source_url` varchar(200) NOT NULL default '',
  `user_agent` varchar(250) NOT NULL default '',
  `currency` varchar(5) default NULL,
  `payment_status` varchar(15) default NULL,
  `payment_date` datetime default NULL,
  `payment_amount` decimal(19,2) default NULL,
  `transaction_id` varchar(50) default NULL,
  `is_fulfilled` tinyint(1) default NULL,
  `created_by` bigint(20) unsigned default NULL,
  `transaction_type` tinyint(1) default NULL,
  `status` varchar(20) NOT NULL default 'active',
  `payment_method` varchar(30) default NULL,
  PRIMARY KEY  (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_rg_lead_detail`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_rg_lead_detail`;
CREATE TABLE `wp_wxnnNt6qb6_rg_lead_detail` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` longtext,
  PRIMARY KEY  (`id`),
  KEY `form_id` (`form_id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_field_number` (`lead_id`,`field_number`),
  KEY `lead_field_value` (`value`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_rg_lead_detail_long`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_rg_lead_detail_long`;
CREATE TABLE `wp_wxnnNt6qb6_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext,
  PRIMARY KEY  (`lead_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_rg_lead_meta`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_rg_lead_meta`;
CREATE TABLE `wp_wxnnNt6qb6_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL auto_increment,
  `form_id` mediumint(8) unsigned NOT NULL default '0',
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `form_id_meta_key` (`form_id`,`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_rg_lead_notes`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_rg_lead_notes`;
CREATE TABLE `wp_wxnnNt6qb6_rg_lead_notes` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) default NULL,
  `user_id` bigint(20) default NULL,
  `date_created` datetime NOT NULL,
  `value` longtext,
  `note_type` varchar(50) default NULL,
  PRIMARY KEY  (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_user_key` (`lead_id`,`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_termmeta`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_termmeta`;
CREATE TABLE `wp_wxnnNt6qb6_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL auto_increment,
  `term_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_terms`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_terms`;
CREATE TABLE `wp_wxnnNt6qb6_terms` (
  `term_id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(200) NOT NULL default '',
  `slug` varchar(200) NOT NULL default '',
  `term_group` bigint(10) NOT NULL default '0',
  `terms_order` int(4) default '0',
  PRIMARY KEY  (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_term_relationships`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_term_relationships`;
CREATE TABLE `wp_wxnnNt6qb6_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL default '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL default '0',
  `term_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_term_taxonomy`;
CREATE TABLE `wp_wxnnNt6qb6_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL auto_increment,
  `term_id` bigint(20) unsigned NOT NULL default '0',
  `taxonomy` varchar(32) NOT NULL default '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL default '0',
  `count` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_usermeta`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_usermeta`;
CREATE TABLE `wp_wxnnNt6qb6_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL auto_increment,
  `user_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_users`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_users`;
CREATE TABLE `wp_wxnnNt6qb6_users` (
  `ID` bigint(20) unsigned NOT NULL auto_increment,
  `user_login` varchar(60) NOT NULL default '',
  `user_pass` varchar(255) NOT NULL default '',
  `user_nicename` varchar(50) NOT NULL default '',
  `user_email` varchar(100) NOT NULL default '',
  `user_url` varchar(100) NOT NULL default '',
  `user_registered` datetime NOT NULL default '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL default '',
  `user_status` int(11) NOT NULL default '0',
  `display_name` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_wdslayer`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_wdslayer`;
CREATE TABLE `wp_wxnnNt6qb6_wdslayer` (
  `id` int(11) NOT NULL auto_increment,
  `title` longtext NOT NULL,
  `slide_id` bigint(20) NOT NULL,
  `type` varchar(8) NOT NULL,
  `depth` bigint(20) NOT NULL,
  `text` mediumtext NOT NULL,
  `link` mediumtext NOT NULL,
  `left` int(4) NOT NULL,
  `top` int(4) NOT NULL,
  `start` bigint(20) NOT NULL,
  `end` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `color` varchar(8) NOT NULL,
  `size` bigint(20) NOT NULL,
  `ffamily` varchar(32) NOT NULL,
  `fweight` varchar(8) NOT NULL,
  `padding` varchar(32) NOT NULL,
  `fbgcolor` varchar(8) NOT NULL,
  `transparent` int(4) NOT NULL,
  `border_width` int(4) NOT NULL,
  `border_style` varchar(16) NOT NULL,
  `border_color` varchar(8) NOT NULL,
  `border_radius` varchar(32) NOT NULL,
  `shadow` varchar(127) NOT NULL,
  `image_url` mediumtext NOT NULL,
  `image_width` int(4) NOT NULL,
  `image_height` int(4) NOT NULL,
  `image_scale` varchar(8) NOT NULL,
  `alt` varchar(127) NOT NULL,
  `imgtransparent` int(4) NOT NULL,
  `social_button` varchar(16) NOT NULL,
  `hover_color` varchar(8) NOT NULL,
  `layer_effect_in` varchar(32) NOT NULL,
  `duration_eff_in` bigint(20) NOT NULL,
  `layer_effect_out` varchar(32) NOT NULL,
  `duration_eff_out` bigint(20) NOT NULL,
  `target_attr_layer` tinyint(1) NOT NULL,
  `hotp_width` int(4) NOT NULL,
  `hotp_fbgcolor` varchar(8) NOT NULL,
  `hotp_border_width` int(4) NOT NULL,
  `hotp_border_style` varchar(16) NOT NULL,
  `hotp_border_color` varchar(8) NOT NULL,
  `hotp_border_radius` varchar(32) NOT NULL,
  `hotp_text_position` varchar(6) NOT NULL,
  `google_fonts` int(1) NOT NULL,
  `add_class` varchar(127) NOT NULL,
  `layer_video_loop` tinyint(1) NOT NULL,
  `youtube_rel_layer_video` tinyint(1) NOT NULL,
  `hotspot_animation` tinyint(1) NOT NULL,
  `layer_callback_list` varchar(32) NOT NULL,
  `hotspot_text_display` varchar(8) NOT NULL,
  `hover_color_text` varchar(8) NOT NULL,
  `text_alignment` varchar(8) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_wdsslide`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_wdsslide`;
CREATE TABLE `wp_wxnnNt6qb6_wdsslide` (
  `id` int(11) NOT NULL auto_increment,
  `slider_id` bigint(20) NOT NULL,
  `title` longtext NOT NULL,
  `type` varchar(128) NOT NULL,
  `image_url` mediumtext NOT NULL,
  `thumb_url` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL,
  `link` mediumtext NOT NULL,
  `order` bigint(20) NOT NULL,
  `target_attr_slide` tinyint(1) NOT NULL,
  `youtube_rel_video` tinyint(1) NOT NULL,
  `video_loop` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_wdsslider`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_wdsslider`;
CREATE TABLE `wp_wxnnNt6qb6_wdsslider` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(127) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `full_width` tinyint(1) NOT NULL,
  `width` int(4) NOT NULL,
  `height` int(4) NOT NULL,
  `bg_fit` varchar(16) NOT NULL,
  `align` varchar(8) NOT NULL,
  `effect` varchar(16) NOT NULL,
  `time_intervval` int(4) NOT NULL,
  `autoplay` tinyint(1) NOT NULL,
  `shuffle` tinyint(1) NOT NULL,
  `music` tinyint(1) NOT NULL,
  `music_url` mediumtext NOT NULL,
  `preload_images` tinyint(1) NOT NULL,
  `background_color` varchar(8) NOT NULL,
  `background_transparent` int(4) NOT NULL,
  `glb_border_width` int(4) NOT NULL,
  `glb_border_style` varchar(16) NOT NULL,
  `glb_border_color` varchar(8) NOT NULL,
  `glb_border_radius` varchar(32) NOT NULL,
  `glb_margin` int(4) NOT NULL,
  `glb_box_shadow` varchar(127) NOT NULL,
  `image_right_click` tinyint(1) NOT NULL,
  `layer_out_next` tinyint(1) NOT NULL,
  `prev_next_butt` tinyint(1) NOT NULL,
  `play_paus_butt` tinyint(1) NOT NULL,
  `navigation` varchar(16) NOT NULL,
  `rl_butt_style` varchar(16) NOT NULL,
  `rl_butt_size` int(4) NOT NULL,
  `pp_butt_size` int(4) NOT NULL,
  `butts_color` varchar(8) NOT NULL,
  `butts_transparent` int(4) NOT NULL,
  `hover_color` varchar(8) NOT NULL,
  `nav_border_width` int(4) NOT NULL,
  `nav_border_style` varchar(16) NOT NULL,
  `nav_border_color` varchar(8) NOT NULL,
  `nav_border_radius` varchar(32) NOT NULL,
  `nav_bg_color` varchar(8) NOT NULL,
  `bull_position` varchar(16) NOT NULL,
  `bull_style` varchar(20) NOT NULL,
  `bull_size` int(4) NOT NULL,
  `bull_color` varchar(8) NOT NULL,
  `bull_act_color` varchar(8) NOT NULL,
  `bull_margin` int(4) NOT NULL,
  `film_pos` varchar(16) NOT NULL,
  `film_thumb_width` int(4) NOT NULL,
  `film_thumb_height` int(4) NOT NULL,
  `film_bg_color` varchar(8) NOT NULL,
  `film_tmb_margin` int(4) NOT NULL,
  `film_act_border_width` int(4) NOT NULL,
  `film_act_border_style` varchar(16) NOT NULL,
  `film_act_border_color` varchar(8) NOT NULL,
  `film_dac_transparent` int(4) NOT NULL,
  `built_in_watermark_type` varchar(16) NOT NULL,
  `built_in_watermark_position` varchar(16) NOT NULL,
  `built_in_watermark_size` int(4) NOT NULL,
  `built_in_watermark_url` mediumtext NOT NULL,
  `built_in_watermark_text` mediumtext NOT NULL,
  `built_in_watermark_font_size` int(4) NOT NULL,
  `built_in_watermark_font` varchar(16) NOT NULL,
  `built_in_watermark_color` varchar(8) NOT NULL,
  `built_in_watermark_opacity` int(4) NOT NULL,
  `css` mediumtext NOT NULL,
  `timer_bar_type` varchar(16) NOT NULL,
  `timer_bar_size` int(4) NOT NULL,
  `timer_bar_color` varchar(8) NOT NULL,
  `timer_bar_transparent` int(4) NOT NULL,
  `spider_uploader` tinyint(1) NOT NULL,
  `stop_animation` tinyint(1) NOT NULL,
  `right_butt_url` varchar(255) NOT NULL,
  `left_butt_url` varchar(255) NOT NULL,
  `right_butt_hov_url` varchar(255) NOT NULL,
  `left_butt_hov_url` varchar(255) NOT NULL,
  `rl_butt_img_or_not` varchar(8) NOT NULL,
  `bullets_img_main_url` varchar(255) NOT NULL,
  `bullets_img_hov_url` varchar(255) NOT NULL,
  `bull_butt_img_or_not` varchar(8) NOT NULL,
  `play_paus_butt_img_or_not` varchar(8) NOT NULL,
  `play_butt_url` varchar(255) NOT NULL,
  `play_butt_hov_url` varchar(255) NOT NULL,
  `paus_butt_url` varchar(255) NOT NULL,
  `paus_butt_hov_url` varchar(255) NOT NULL,
  `start_slide_num` int(4) NOT NULL,
  `effect_duration` int(6) NOT NULL,
  `carousel` tinyint(1) NOT NULL,
  `carousel_image_counts` int(4) NOT NULL,
  `carousel_image_parameters` varchar(8) NOT NULL,
  `carousel_fit_containerWidth` tinyint(1) NOT NULL,
  `carousel_width` int(4) NOT NULL,
  `parallax_effect` tinyint(1) NOT NULL,
  `mouse_swipe_nav` tinyint(1) NOT NULL,
  `bull_hover` int(1) NOT NULL,
  `touch_swipe_nav` tinyint(1) NOT NULL,
  `mouse_wheel_nav` tinyint(1) NOT NULL,
  `keyboard_nav` tinyint(1) NOT NULL,
  `possib_add_ffamily` varchar(255) NOT NULL,
  `show_thumbnail` tinyint(1) NOT NULL,
  `thumb_size` varchar(8) NOT NULL,
  `fixed_bg` tinyint(1) NOT NULL,
  `smart_crop` tinyint(1) NOT NULL,
  `crop_image_position` varchar(16) NOT NULL,
  `javascript` text NOT NULL,
  `carousel_degree` int(4) NOT NULL,
  `carousel_grayscale` int(4) NOT NULL,
  `carousel_transparency` int(4) NOT NULL,
  `bull_back_act_color` varchar(8) NOT NULL,
  `bull_back_color` varchar(8) NOT NULL,
  `bull_radius` varchar(32) NOT NULL,
  `possib_add_google_fonts` tinyint(1) NOT NULL,
  `possib_add_ffamily_google` varchar(255) NOT NULL,
  `slider_loop` tinyint(1) NOT NULL,
  `hide_on_mobile` int(4) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wxnnNt6qb6_wti_like_post`
--

DROP TABLE IF EXISTS `wp_wxnnNt6qb6_wti_like_post`;
CREATE TABLE `wp_wxnnNt6qb6_wti_like_post` (
  `id` bigint(11) NOT NULL auto_increment,
  `post_id` int(11) NOT NULL,
  `value` int(2) NOT NULL,
  `date_time` datetime NOT NULL,
  `ip` varchar(40) NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
