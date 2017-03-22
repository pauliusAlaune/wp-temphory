# WordPress MySQL database migration
#
# Generated: Wednesday 22. March 2017 08:13 UTC
# Hostname: localhost
# Database: `wp_vcs`
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-03-03 09:42:37', '2017-03-03 09:42:37', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=396 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/vcs-wp/paulius-alaune', 'yes'),
(2, 'home', 'http://localhost/vcs-wp/paulius-alaune', 'yes'),
(3, 'blogname', 'TEMPHORY', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'paulius.alaune@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:140:{s:32:"index.php/vcs-starter-members/?$";s:27:"index.php?post_type=members";s:62:"index.php/vcs-starter-members/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=members&feed=$matches[1]";s:57:"index.php/vcs-starter-members/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=members&feed=$matches[1]";s:49:"index.php/vcs-starter-members/page/([0-9]{1,})/?$";s:45:"index.php?post_type=members&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:57:"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:52:"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"index.php/category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:45:"index.php/category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:27:"index.php/category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:54:"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:49:"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:30:"index.php/tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:42:"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:24:"index.php/tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:55:"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:50:"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:31:"index.php/type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:43:"index.php/type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:25:"index.php/type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"index.php/vcs-starter-members/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:65:"index.php/vcs-starter-members/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:85:"index.php/vcs-starter-members/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:80:"index.php/vcs-starter-members/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:80:"index.php/vcs-starter-members/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:61:"index.php/vcs-starter-members/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:44:"index.php/vcs-starter-members/(.+?)/embed/?$";s:40:"index.php?members=$matches[1]&embed=true";s:48:"index.php/vcs-starter-members/(.+?)/trackback/?$";s:34:"index.php?members=$matches[1]&tb=1";s:68:"index.php/vcs-starter-members/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?members=$matches[1]&feed=$matches[2]";s:63:"index.php/vcs-starter-members/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?members=$matches[1]&feed=$matches[2]";s:56:"index.php/vcs-starter-members/(.+?)/page/?([0-9]{1,})/?$";s:47:"index.php?members=$matches[1]&paged=$matches[2]";s:63:"index.php/vcs-starter-members/(.+?)/comment-page-([0-9]{1,})/?$";s:47:"index.php?members=$matches[1]&cpage=$matches[2]";s:52:"index.php/vcs-starter-members/(.+?)(?:/([0-9]+))?/?$";s:46:"index.php?members=$matches[1]&page=$matches[2]";s:46:"index.php/carousel/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:56:"index.php/carousel/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:76:"index.php/carousel/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:71:"index.php/carousel/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:71:"index.php/carousel/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:52:"index.php/carousel/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:35:"index.php/carousel/([^/]+)/embed/?$";s:41:"index.php?carousel=$matches[1]&embed=true";s:39:"index.php/carousel/([^/]+)/trackback/?$";s:35:"index.php?carousel=$matches[1]&tb=1";s:47:"index.php/carousel/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?carousel=$matches[1]&paged=$matches[2]";s:54:"index.php/carousel/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?carousel=$matches[1]&cpage=$matches[2]";s:43:"index.php/carousel/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?carousel=$matches[1]&page=$matches[2]";s:35:"index.php/carousel/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"index.php/carousel/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"index.php/carousel/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"index.php/carousel/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"index.php/carousel/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"index.php/carousel/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:57:"index.php/between_section_img/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/between_section_img/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/between_section_img/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/between_section_img/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/between_section_img/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/between_section_img/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:46:"index.php/between_section_img/([^/]+)/embed/?$";s:52:"index.php?between_section_img=$matches[1]&embed=true";s:50:"index.php/between_section_img/([^/]+)/trackback/?$";s:46:"index.php?between_section_img=$matches[1]&tb=1";s:58:"index.php/between_section_img/([^/]+)/page/?([0-9]{1,})/?$";s:59:"index.php?between_section_img=$matches[1]&paged=$matches[2]";s:65:"index.php/between_section_img/([^/]+)/comment-page-([0-9]{1,})/?$";s:59:"index.php?between_section_img=$matches[1]&cpage=$matches[2]";s:54:"index.php/between_section_img/([^/]+)(?:/([0-9]+))?/?$";s:58:"index.php?between_section_img=$matches[1]&page=$matches[2]";s:46:"index.php/between_section_img/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:56:"index.php/between_section_img/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:76:"index.php/between_section_img/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:71:"index.php/between_section_img/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:71:"index.php/between_section_img/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:52:"index.php/between_section_img/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:42:"index.php/feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:37:"index.php/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:18:"index.php/embed/?$";s:21:"index.php?&embed=true";s:30:"index.php/page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:51:"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:46:"index.php/comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:27:"index.php/comments/embed/?$";s:21:"index.php?&embed=true";s:54:"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:49:"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:30:"index.php/search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:42:"index.php/search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:24:"index.php/search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:57:"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:52:"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:33:"index.php/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:45:"index.php/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:27:"index.php/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:79:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:55:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:49:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:66:"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:42:"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:54:"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:36:"index.php/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:53:"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:48:"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:29:"index.php/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:41:"index.php/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:23:"index.php/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:68:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:78:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:98:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:93:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:74:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:63:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:67:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:87:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:75:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:82:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:71:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:57:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:67:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:87:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:82:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:63:"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:74:"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:61:"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:48:"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:37:"index.php/.?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"index.php/.?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"index.php/.?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"index.php/(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:30:"index.php/(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:50:"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:45:"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:38:"index.php/(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:45:"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:34:"index.php/(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:3;s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";i:4;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:5;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'vcs-starter', 'yes'),
(41, 'stylesheet', 'vcs-starter', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:59:"intuitive-custom-post-order/intuitive-custom-post-order.php";s:15:"hicpo_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:19:"wp_inactive_widgets";a:0:{}s:14:"footer-widgets";a:1:{i:0;s:10:"nav_menu-2";}s:12:"blog-widgets";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:2:{i:2;a:1:{s:5:"title";s:12:"first-footer";}s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:4:{i:1490175760;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1490175776;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1490251919;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(105, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1489410929;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(119, 'can_compress_scripts', '1', 'no'),
(150, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:24:"paulius.alaune@gmail.com";s:7:"version";s:5:"4.7.3";s:9:"timestamp";i:1489404889;}', 'no'),
(165, 'current_theme', 'VCS Starter', 'yes'),
(166, 'theme_mods_vcs-starter', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:18:"primary-navigation";i:2;}}', 'yes'),
(167, 'theme_switched', '', 'yes'),
(168, 'recently_activated', 'a:0:{}', 'yes'),
(180, 'acf_version', '4.4.11', 'yes'),
(181, 'wpcf7', 'a:2:{s:7:"version";s:3:"4.7";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1489414372;s:7:"version";s:3:"4.7";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(182, 'hicpo_activation', '1', 'yes'),
(235, 'WPLANG', '', 'yes'),
(238, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(319, 'cptui_new_install', 'false', 'yes'),
(343, 'cptui_post_types', 'a:2:{s:8:"carousel";a:28:{s:4:"name";s:8:"carousel";s:5:"label";s:8:"Carousel";s:14:"singular_label";s:8:"Carousel";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:4:"true";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:1:{i:0;s:5:"title";}s:10:"taxonomies";a:0:{}s:6:"labels";a:23:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";}s:15:"custom_supports";s:0:"";}s:19:"between_section_img";a:28:{s:4:"name";s:19:"between_section_img";s:5:"label";s:19:"Between Section Img";s:14:"singular_label";s:19:"Between Section Img";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:23:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";}s:15:"custom_supports";s:0:"";}}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=527 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1489441965:1'),
(3, 4, '_form', '<div class="formos form-group row">\n<div class="col-md-12">\n[text* your-name class:form-control placeholder "Naam" ]\n</div>\n</div>\n<div class="formos form-group row">\n<div class="col-md-6 mob-br">\n[text* Your-adress class:form-control placeholder "Adres"]\n</div>\n<div class="col-md-6">\n[text* Your-adress class:form-control placeholder "Woonplaats"]\n</div>\n</div>\n<div class="formos form-group row">\n<div class="col-md-6 mob-br">\n[email* your-email class:form-control class:form-control-md id:lgFormGroupInput placeholder ".E-mailadres" ]\n</div>\n<div class="col-md-6">\n[text* Your-telephone class:form-control class:form-control-md id:lgFormGroupInput placeholder "Telefoon"]\n</div>\n</div>\n<div class="formos form-group row">\n<div class="col-md-12">\n[textarea* your-message class:form-control x3 placeholder "Uw vraag en/of opmerkingen"]\n</div>\n</div>\n<div class="form-group">\n[submit class:btn class:btn-ac-o "Submit"]						\n</div>'),
(4, 4, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:20:"vcs "[your-subject]"";s:6:"sender";s:38:"[your-name] <paulius.alaune@gmail.com>";s:9:"recipient";s:24:"paulius.alaune@gmail.com";s:4:"body";s:180:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on vcs (http://localhost/vcs-wp/paulius-alaune)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(5, 4, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:20:"vcs "[your-subject]"";s:6:"sender";s:30:"vcs <paulius.alaune@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:122:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on vcs (http://localhost/vcs-wp/paulius-alaune)";s:18:"additional_headers";s:34:"Reply-To: paulius.alaune@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(6, 4, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(7, 4, '_additional_settings', ''),
(8, 4, '_locale', 'en_US'),
(9, 5, '_menu_item_type', 'custom'),
(10, 5, '_menu_item_menu_item_parent', '0'),
(11, 5, '_menu_item_object_id', '5'),
(12, 5, '_menu_item_object', 'custom'),
(13, 5, '_menu_item_target', ''),
(14, 5, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(15, 5, '_menu_item_xfn', ''),
(16, 5, '_menu_item_url', 'http://localhost/vcs-wp/paulius-alaune/'),
(17, 5, '_menu_item_orphaned', '1489585007'),
(18, 6, '_menu_item_type', 'post_type'),
(19, 6, '_menu_item_menu_item_parent', '0'),
(20, 6, '_menu_item_object_id', '2'),
(21, 6, '_menu_item_object', 'page'),
(22, 6, '_menu_item_target', ''),
(23, 6, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(24, 6, '_menu_item_xfn', ''),
(25, 6, '_menu_item_url', ''),
(26, 6, '_menu_item_orphaned', '1489585007'),
(27, 7, '_menu_item_type', 'custom'),
(28, 7, '_menu_item_menu_item_parent', '0'),
(29, 7, '_menu_item_object_id', '7'),
(30, 7, '_menu_item_object', 'custom'),
(31, 7, '_menu_item_target', ''),
(32, 7, '_menu_item_classes', 'a:1:{i:0;s:8:"nav-item";}'),
(33, 7, '_menu_item_xfn', ''),
(34, 7, '_menu_item_url', 'http://waarom.html'),
(36, 8, '_menu_item_type', 'custom'),
(37, 8, '_menu_item_menu_item_parent', '0'),
(38, 8, '_menu_item_object_id', '8'),
(39, 8, '_menu_item_object', 'custom'),
(40, 8, '_menu_item_target', ''),
(41, 8, '_menu_item_classes', 'a:1:{i:0;s:8:"nav-item";}'),
(42, 8, '_menu_item_xfn', ''),
(43, 8, '_menu_item_url', 'http://over.html'),
(45, 9, '_menu_item_type', 'custom'),
(46, 9, '_menu_item_menu_item_parent', '0'),
(47, 9, '_menu_item_object_id', '9'),
(48, 9, '_menu_item_object', 'custom'),
(49, 9, '_menu_item_target', ''),
(50, 9, '_menu_item_classes', 'a:1:{i:0;s:8:"nav-item";}'),
(51, 9, '_menu_item_xfn', ''),
(52, 9, '_menu_item_url', 'http://vacatures.html'),
(54, 10, '_menu_item_type', 'custom'),
(55, 10, '_menu_item_menu_item_parent', '0'),
(56, 10, '_menu_item_object_id', '10'),
(57, 10, '_menu_item_object', 'custom'),
(58, 10, '_menu_item_target', ''),
(59, 10, '_menu_item_classes', 'a:1:{i:0;s:8:"nav-item";}'),
(60, 10, '_menu_item_xfn', ''),
(61, 10, '_menu_item_url', 'http://contact.html'),
(72, 12, '_wp_attached_file', '2017/03/logo-temphory.png'),
(73, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:199;s:6:"height";i:56;s:4:"file";s:25:"2017/03/logo-temphory.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"logo-temphory-150x56.png";s:5:"width";i:150;s:6:"height";i:56;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(74, 2, '_wp_trash_meta_status', 'publish'),
(75, 2, '_wp_trash_meta_time', '1489607423'),
(76, 2, '_wp_desired_post_slug', 'sample-page'),
(77, 16, '_edit_last', '1'),
(78, 16, '_edit_lock', '1489918694:1'),
(79, 17, '_wp_attached_file', '2017/03/worker.jpg'),
(80, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:291;s:6:"height";i:288;s:4:"file";s:18:"2017/03/worker.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"worker-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(81, 16, '_thumbnail_id', '17'),
(82, 16, '_wp_page_template', 'default'),
(83, 20, '_menu_item_type', 'custom'),
(84, 20, '_menu_item_menu_item_parent', '0'),
(85, 20, '_menu_item_object_id', '20'),
(86, 20, '_menu_item_object', 'custom'),
(87, 20, '_menu_item_target', ''),
(88, 20, '_menu_item_classes', 'a:1:{i:0;s:8:"nav-item";}'),
(89, 20, '_menu_item_xfn', ''),
(90, 20, '_menu_item_url', 'http://search.html'),
(92, 25, '_edit_last', '1'),
(93, 25, 'field_58ca969da490f', 'a:14:{s:3:"key";s:19:"field_58ca969da490f";s:5:"label";s:4:"text";s:4:"name";s:4:"text";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(95, 25, 'position', 'normal'),
(96, 25, 'layout', 'default'),
(97, 25, 'hide_on_screen', ''),
(98, 25, '_edit_lock', '1489917815:1'),
(99, 25, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"page";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(100, 16, 'subtitle', 'Realty Solutions'),
(101, 29, '_edit_last', '1'),
(102, 29, '_edit_lock', '1490101853:1'),
(103, 29, 'subtitle_orange', 'werkt snel en slagvaardig,'),
(104, 29, 'subtitle_white', '“temphory'),
(105, 29, '_wp_page_template', 'default'),
(106, 30, 'text', ''),
(107, 30, '_text', 'field_58ca969da490f'),
(108, 29, 'text', ''),
(109, 29, '_text', 'field_58ca969da490f'),
(110, 31, 'text', ''),
(111, 31, '_text', 'field_58ca969da490f'),
(112, 32, 'text', ''),
(113, 32, '_text', 'field_58ca969da490f'),
(114, 1, '_wp_trash_meta_status', 'publish'),
(115, 1, '_wp_trash_meta_time', '1489748743') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(116, 1, '_wp_desired_post_slug', 'hello-world'),
(117, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(118, 34, 'text', ''),
(119, 34, '_text', 'field_58ca969da490f'),
(120, 29, 'subtitle_white2', 'maar altijd op een betrouwbare manier."'),
(121, 29, 'subtitle2', '(hans van doren, van doren engineers)'),
(122, 36, 'text', ''),
(123, 36, '_text', 'field_58ca969da490f'),
(124, 38, 'text', ''),
(125, 38, '_text', 'field_58ca969da490f'),
(126, 25, '_wp_trash_meta_status', 'publish'),
(127, 25, '_wp_trash_meta_time', '1489917963'),
(128, 25, '_wp_desired_post_slug', 'acf_test'),
(129, 39, '_edit_last', '1'),
(130, 39, 'field_58ce584dbd853', 'a:14:{s:3:"key";s:19:"field_58ce584dbd853";s:5:"label";s:20:"Income Section Title";s:4:"name";s:20:"income_section_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(131, 39, 'field_58ce595cbd854', 'a:14:{s:3:"key";s:19:"field_58ce595cbd854";s:5:"label";s:26:"Income Section Title Quote";s:4:"name";s:25:"income_section_title_cite";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(132, 39, 'field_58ce59cdbd855', 'a:14:{s:3:"key";s:19:"field_58ce59cdbd855";s:5:"label";s:19:"Section2 Text Title";s:4:"name";s:19:"section2_text_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(133, 39, 'field_58ce5a42bd856', 'a:13:{s:3:"key";s:19:"field_58ce5a42bd856";s:5:"label";s:18:"Section2 Text Area";s:4:"name";s:18:"section2_text_area";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(135, 39, 'position', 'normal'),
(136, 39, 'layout', 'default'),
(137, 39, 'hide_on_screen', 'a:1:{i:0;s:11:"the_content";}'),
(138, 39, '_edit_lock', '1490102971:1'),
(139, 40, '_edit_last', '1'),
(140, 40, '_wp_page_template', 'default'),
(141, 40, '_edit_lock', '1490103099:1'),
(147, 43, 'income_section_title', '"Werken in de energie staat gelijk aan werken met vakmensen."'),
(148, 43, '_income_section_title', 'field_58ce584dbd853'),
(149, 43, 'income_section_title_cite', '(André platter, Mars)'),
(150, 43, '_income_section_title_cite', 'field_58ce595cbd854'),
(151, 43, 'section2_text_title', 'Echte vakmensen zijn steeds moeilijker te vinden'),
(152, 43, '_section2_text_title', 'field_58ce59cdbd855'),
(153, 43, 'section2_text_area', 'Maar niet voor Eurotemp. Door jarenlange ervaring in het uitzenden en detacheren heeft Eurotemp zich ontwikkeld tot een betrouwbare en professionele HR partner. Wij beschikken over een enorm potentieel aan vakbekwame professionals die u voor korte of langere tijd, volledig naar behoeften, kunt inlenen.\r\n\r\nWij spelen in op het toenemende tekort aan technisch personeel op LBO/MBO niveau in diverse technische branches. Dit realiseren wij door onze mensen te begeleiden in het behalen van de juiste diploma\'s	en certificeringen die noodzakelijk zijn voor een optimale prestatie bij onze opdrachtgevers. De juiste persoonscertificering voor de functie en veiligheid staan hierbij centraal.'),
(154, 43, '_section2_text_area', 'field_58ce5a42bd856'),
(155, 40, 'income_section_title', '"Werken in de energie staat gelijk aan werken met vakmensen."'),
(156, 40, '_income_section_title', 'field_58ce584dbd853'),
(157, 40, 'income_section_title_cite', '(André platter, Mars)'),
(158, 40, '_income_section_title_cite', 'field_58ce595cbd854'),
(159, 40, 'section2_text_title', 'Echte vakmensen zijn steeds moeilijker te vinden'),
(160, 40, '_section2_text_title', 'field_58ce59cdbd855'),
(161, 40, 'section2_text_area', 'Maar niet voor Eurotemp. Door jarenlange ervaring in het uitzenden en detacheren heeft Eurotemp zich ontwikkeld tot een betrouwbare en professionele HR partner. Wij beschikken over een enorm potentieel aan vakbekwame professionals die u voor korte of langere tijd, volledig naar behoeften, kunt inlenen.\r\n\r\nWij spelen in op het toenemende tekort aan technisch personeel op LBO/MBO niveau in diverse technische branches. Dit realiseren wij door onze mensen te begeleiden in het behalen van de juiste diploma\'s	en certificeringen die noodzakelijk zijn voor een optimale prestatie bij onze opdrachtgevers. De juiste persoonscertificering voor de functie en veiligheid staan hierbij centraal.'),
(162, 40, '_section2_text_area', 'field_58ce5a42bd856'),
(163, 16, '_wp_trash_meta_status', 'publish'),
(164, 16, '_wp_trash_meta_time', '1489921570'),
(165, 16, '_wp_desired_post_slug', 'carousel'),
(166, 45, '_edit_last', '1'),
(167, 45, '_wp_page_template', 'default'),
(168, 45, '_edit_lock', '1490103410:1'),
(169, 47, '_edit_last', '1'),
(172, 47, 'position', 'normal'),
(173, 47, 'layout', 'no_box'),
(174, 47, 'hide_on_screen', 'a:1:{i:0;s:11:"the_content";}'),
(175, 47, '_edit_lock', '1490103210:1'),
(176, 47, 'field_58ce8ddefa7e6', 'a:14:{s:3:"key";s:19:"field_58ce8ddefa7e6";s:5:"label";s:21:"Income Section3 Title";s:4:"name";s:21:"income_section3_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(177, 47, 'field_58ce8e05fa7e7', 'a:14:{s:3:"key";s:19:"field_58ce8e05fa7e7";s:5:"label";s:27:"Income Section3 Title Quote";s:4:"name";s:27:"income_section3_title_quote";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(178, 47, 'field_58ce8e54fa7e8', 'a:14:{s:3:"key";s:19:"field_58ce8e54fa7e8";s:5:"label";s:19:"Section3 Text Title";s:4:"name";s:19:"section3_text_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(179, 47, 'field_58ce8e7afa7e9', 'a:13:{s:3:"key";s:19:"field_58ce8e7afa7e9";s:5:"label";s:18:"Section3 Text Area";s:4:"name";s:18:"section3_text_area";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(181, 48, 'income_section3_title', '"Eurotemp werkt snel en slagvaardig, maar altijd op een betrouwbare manier."'),
(182, 48, '_income_section3_title', 'field_58ce8ddefa7e6'),
(183, 48, 'income_section3_title_quote', '(Hans van Doren, Van Doren engineers)'),
(184, 48, '_income_section3_title_quote', 'field_58ce8e05fa7e7'),
(185, 48, 'section3_text_title', 'Onze uitzendkrachten maken het verschil'),
(186, 48, '_section3_text_title', 'field_58ce8e54fa7e8'),
(187, 48, 'section3_text_area', 'Eurotemp is een uitzendbureau dat gemotiveerde en flexibele uitzendkrachten levert. Ons personeel is gedreven, kundig en betrokken. Ons doel? Prettige lange termijn relaties opbouwen door het inzetten van de juiste uitzendkracht op het juiste moment en door mee te blijven denken en betrokken te blijven. Landsgrenzen vormen voor ons geen belemmering. Eurotemp is een uitzendbureau dat gemotiveerde en flexibele uitzendkrachten levert. Ons personeel is gedreven, kundig en betrokken. Ons doel? Prettige lange termijn relaties opbouwen door het inzetten van de juiste uitzendkracht op het juiste moment en door mee te blijven denken en betrokken te blijven. Landsgrenzen vormen voor ons geen belemmering.'),
(188, 48, '_section3_text_area', 'field_58ce8e7afa7e9'),
(189, 45, 'income_section3_title', '"Eurotemp werkt snel en slagvaardig, maar altijd op een betrouwbare manier."'),
(190, 45, '_income_section3_title', 'field_58ce8ddefa7e6'),
(191, 45, 'income_section3_title_quote', '(Hans van Doren, Van Doren engineers)'),
(192, 45, '_income_section3_title_quote', 'field_58ce8e05fa7e7'),
(193, 45, 'section3_text_title', 'Onze uitzendkrachten maken het verschil'),
(194, 45, '_section3_text_title', 'field_58ce8e54fa7e8'),
(195, 45, 'section3_text_area', 'Eurotemp is een uitzendbureau dat gemotiveerde en flexibele uitzendkrachten levert. Ons personeel is gedreven, kundig en betrokken. Ons doel? Prettige lange termijn relaties opbouwen door het inzetten van de juiste uitzendkracht op het juiste moment en door mee te blijven denken en betrokken te blijven. Landsgrenzen vormen voor ons geen belemmering. Eurotemp is een uitzendbureau dat gemotiveerde en flexibele uitzendkrachten levert. Ons personeel is gedreven, kundig en betrokken. Ons doel? Prettige lange termijn relaties opbouwen door het inzetten van de juiste uitzendkracht op het juiste moment en door mee te blijven denken en betrokken te blijven. Landsgrenzen vormen voor ons geen belemmering.'),
(196, 45, '_section3_text_area', 'field_58ce8e7afa7e9'),
(197, 51, '_edit_last', '1'),
(198, 51, '_wp_page_template', 'default'),
(199, 51, '_edit_lock', '1490105395:1'),
(200, 53, '_edit_last', '1'),
(201, 53, 'field_58ce95d9d3e1a', 'a:14:{s:3:"key";s:19:"field_58ce95d9d3e1a";s:5:"label";s:21:"Income Section4 Title";s:4:"name";s:21:"income_section4_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(202, 53, 'field_58ce961bd3e1b', 'a:14:{s:3:"key";s:19:"field_58ce961bd3e1b";s:5:"label";s:27:"Income Section4 Title Quote";s:4:"name";s:27:"income_section4_title_quote";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(203, 53, 'field_58ce966ad3e1d', 'a:14:{s:3:"key";s:19:"field_58ce966ad3e1d";s:5:"label";s:19:"Section4 Text Title";s:4:"name";s:19:"section4_text_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(204, 53, 'field_58ce96edd3e1e', 'a:13:{s:3:"key";s:19:"field_58ce96edd3e1e";s:5:"label";s:18:"Section4 Text Area";s:4:"name";s:18:"section4_text_area";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(206, 53, 'position', 'normal'),
(207, 53, 'layout', 'no_box'),
(208, 53, 'hide_on_screen', 'a:1:{i:0;s:11:"the_content";}'),
(209, 53, '_edit_lock', '1490105243:1'),
(211, 55, 'income_section4_title', '"Werken in de energie staat gelijk aan werken met vakmensen."'),
(212, 55, '_income_section4_title', 'field_58ce95d9d3e1a'),
(213, 55, 'income_section4_title_quote', '(André platter, Mars)'),
(214, 55, '_income_section4_title_quote', 'field_58ce961bd3e1b'),
(215, 55, 'section4_text_title', 'Pijpfitter/Leidingwerker'),
(216, 55, '_section4_text_title', 'field_58ce966ad3e1d'),
(217, 55, 'section4_text_area', 'De werkzaamheden van een pijpfitter/lasser bestaan uit het installeren, monteren en opstellen van leidingwerk. Dit moet vaak direct gebeuren vanaf een tekening. Hierdoor is de kennis en inzicht van de fitter van groot belang evenals de materiaalkeus ten opzichte van de situatie. Bij de oplevering van een opdracht moet de pijpfitter in staat zijn om de leidingen te kunnen testen en bij te werken.'),
(218, 55, '_section4_text_area', 'field_58ce96edd3e1e'),
(219, 51, 'income_section4_title', '"Werken in de energie staat gelijk aan werken met vakmensen."'),
(220, 51, '_income_section4_title', 'field_58ce95d9d3e1a'),
(221, 51, 'income_section4_title_quote', '(André platter, Mars)'),
(222, 51, '_income_section4_title_quote', 'field_58ce961bd3e1b'),
(223, 51, 'section4_text_title', 'Pijpfitter/Leidingwerker'),
(224, 51, '_section4_text_title', 'field_58ce966ad3e1d'),
(225, 51, 'section4_text_area', 'De werkzaamheden van een pijpfitter/lasser bestaan uit het installeren, monteren en opstellen van leidingwerk. Dit moet vaak direct gebeuren vanaf een tekening. Hierdoor is de kennis en inzicht van de fitter van groot belang evenals de materiaalkeus ten opzichte van de situatie. Bij de oplevering van een opdracht moet de pijpfitter in staat zijn om de leidingen te kunnen testen en bij te werken.'),
(226, 51, '_section4_text_area', 'field_58ce96edd3e1e') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(228, 56, '_edit_last', '1'),
(229, 56, '_wp_page_template', 'default'),
(230, 56, '_edit_lock', '1490105845:1'),
(231, 58, '_form', ''),
(232, 58, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:25:"TEMPHORY "[your-subject]"";s:6:"sender";s:38:"[your-name] <paulius.alaune@gmail.com>";s:9:"recipient";s:24:"paulius.alaune@gmail.com";s:4:"body";s:185:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on TEMPHORY (http://localhost/vcs-wp/paulius-alaune)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(233, 58, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:25:"TEMPHORY "[your-subject]"";s:6:"sender";s:35:"TEMPHORY <paulius.alaune@gmail.com>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:127:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on TEMPHORY (http://localhost/vcs-wp/paulius-alaune)";s:18:"additional_headers";s:34:"Reply-To: paulius.alaune@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(234, 58, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(235, 58, '_additional_settings', ''),
(236, 58, '_locale', 'en_US'),
(237, 58, '_config_errors', 'a:1:{s:23:"mail.additional_headers";a:1:{i:0;a:2:{s:4:"code";i:102;s:4:"args";a:3:{s:7:"message";s:51:"Invalid mailbox syntax is used in the %name% field.";s:6:"params";a:1:{s:4:"name";s:8:"Reply-To";}s:4:"link";s:68:"https://contactform7.com/configuration-errors/invalid-mailbox-syntax";}}}}'),
(238, 60, '_edit_last', '1'),
(239, 60, 'field_58cf6586e4cad', 'a:14:{s:3:"key";s:19:"field_58cf6586e4cad";s:5:"label";s:21:"Income Section5 Title";s:4:"name";s:21:"income_section5_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(240, 60, 'field_58cf65b3e4cae', 'a:14:{s:3:"key";s:19:"field_58cf65b3e4cae";s:5:"label";s:27:"Income Section5 Title Quote";s:4:"name";s:27:"income_section5_title_quote";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(241, 60, 'field_58cf6684e4caf', 'a:13:{s:3:"key";s:19:"field_58cf6684e4caf";s:5:"label";s:18:"Section5 Text Area";s:4:"name";s:18:"section5_text_area";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(242, 60, 'field_58cf673be4cb0', 'a:12:{s:3:"key";s:19:"field_58cf673be4cb0";s:5:"label";s:13:"Section5 Form";s:4:"name";s:13:"section5_form";s:4:"type";s:11:"post_object";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:9:"post_type";a:1:{i:0;s:18:"wpcf7_contact_form";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:10:"allow_null";s:1:"0";s:8:"multiple";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(244, 60, 'position', 'normal'),
(245, 60, 'layout', 'no_box'),
(246, 60, 'hide_on_screen', 'a:1:{i:0;s:11:"the_content";}'),
(247, 60, '_edit_lock', '1490105532:1'),
(249, 61, 'income_section5_title', '"Eurotemp werkt snel en slagvaardig, maar altijd op een betrouwbare manier."'),
(250, 61, '_income_section5_title', 'field_58cf6586e4cad'),
(251, 61, 'income_section5_title_quote', '(Hans van Doren, Van Doren engineers)'),
(252, 61, '_income_section5_title_quote', 'field_58cf65b3e4cae'),
(253, 61, 'section5_text_area', 'Interesse in de dienstverlening van Temphory? Heeft u vragen of bent u op zoek naar werk?\r\nVul onderstaand formulier in en wij nemen zo spoedig mogelijk contact met u op.'),
(254, 61, '_section5_text_area', 'field_58cf6684e4caf'),
(255, 61, 'section5_form', '4'),
(256, 61, '_section5_form', 'field_58cf673be4cb0'),
(257, 56, 'income_section5_title', '"Eurotemp werkt snel en slagvaardig, maar altijd op een betrouwbare manier."'),
(258, 56, '_income_section5_title', 'field_58cf6586e4cad'),
(259, 56, 'income_section5_title_quote', '(Hans van Doren, Van Doren engineers)'),
(260, 56, '_income_section5_title_quote', 'field_58cf65b3e4cae'),
(261, 56, 'section5_text_area', 'Interesse in de dienstverlening van Temphory? Heeft u vragen of bent u op zoek naar werk?\r\nVul onderstaand formulier in en wij nemen zo spoedig mogelijk contact met u op.'),
(262, 56, '_section5_text_area', 'field_58cf6684e4caf'),
(263, 56, 'section5_form', '4'),
(264, 56, '_section5_form', 'field_58cf673be4cb0'),
(265, 62, '_edit_last', '1'),
(266, 62, '_wp_page_template', 'default'),
(267, 62, '_edit_lock', '1490012189:1'),
(268, 64, 'income_section5_title', '"Eurotemp werkt snel en slagvaardig, maar altijd op een betrouwbare manier."'),
(269, 64, '_income_section5_title', 'field_58cf6586e4cad'),
(270, 64, 'income_section5_title_quote', '(Hans van Doren, Van Doren engineers)'),
(271, 64, '_income_section5_title_quote', 'field_58cf65b3e4cae'),
(272, 64, 'section5_text_area', 'Interesse in de dienstverlening van Temphory? Heeft u vragen of bent u op zoek naar werk?\r\nVul onderstaand formulier in en wij nemen zo spoedig mogelijk contact met u op.'),
(273, 64, '_section5_text_area', 'field_58cf6684e4caf'),
(274, 64, 'section5_form', '58'),
(275, 64, '_section5_form', 'field_58cf673be4cb0'),
(276, 65, 'income_section5_title', '"Eurotemp werkt snel en slagvaardig, maar altijd op een betrouwbare manier."'),
(277, 65, '_income_section5_title', 'field_58cf6586e4cad'),
(278, 65, 'income_section5_title_quote', '(Hans van Doren, Van Doren engineers)'),
(279, 65, '_income_section5_title_quote', 'field_58cf65b3e4cae'),
(280, 65, 'section5_text_area', 'Interesse in de dienstverlening van Temphory? Heeft u vragen of bent u op zoek naar werk?\r\nVul onderstaand formulier in en wij nemen zo spoedig mogelijk contact met u op.'),
(281, 65, '_section5_text_area', 'field_58cf6684e4caf'),
(282, 65, 'section5_form', '4'),
(283, 65, '_section5_form', 'field_58cf673be4cb0'),
(284, 66, '_edit_last', '1'),
(285, 66, 'field_58cfb925dea97', 'a:11:{s:3:"key";s:19:"field_58cfb925dea97";s:5:"label";s:12:"Income Image";s:4:"name";s:12:"income_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(286, 66, 'field_58cfba94dea98', 'a:13:{s:3:"key";s:19:"field_58cfba94dea98";s:5:"label";s:32:"Income Carousel Title Black Part";s:4:"name";s:32:"income_carousel_title_black_part";s:4:"type";s:8:"textarea";s:12:"instructions";s:16:"Black Title Part";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:4:"none";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(287, 66, 'field_58cfbe20dea99', 'a:13:{s:3:"key";s:19:"field_58cfbe20dea99";s:5:"label";s:32:"Income Carousel Title White Part";s:4:"name";s:32:"income_carousel_title_white_part";s:4:"type";s:8:"textarea";s:12:"instructions";s:16:"White Title Part";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:4:"none";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(288, 66, 'field_58cfbe9fdea9a', 'a:13:{s:3:"key";s:19:"field_58cfbe9fdea9a";s:5:"label";s:20:"Income Carousel Text";s:4:"name";s:20:"income_carousel_text";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(290, 66, 'position', 'normal'),
(291, 66, 'layout', 'no_box'),
(292, 66, 'hide_on_screen', 'a:1:{i:0;s:11:"the_content";}'),
(293, 66, '_edit_lock', '1490085564:1'),
(294, 67, '_edit_last', '1'),
(295, 67, '_edit_lock', '1490024335:1'),
(296, 67, 'income_image', '17'),
(297, 67, '_income_image', 'field_58cfb925dea97'),
(298, 67, 'income_carousel_title_black_part', 'Werken in de energie staat gelijk aan'),
(299, 67, '_income_carousel_title_black_part', 'field_58cfba94dea98'),
(300, 67, 'income_carousel_title_white_part', 'werken met vakmensen.'),
(301, 67, '_income_carousel_title_white_part', 'field_58cfbe20dea99'),
(302, 67, 'income_carousel_text', 'Eurotemp is een uitzendbureau dat gemotiveerde en flexibele uitzendkrachten levert. Ons personeel is gedreven, kundig en betrokken. Ons doel? Prettige lange termijn relaties opbouwen door het inzetten van de juiste uitzendkracht op het juiste moment en door mee te blijven denken en betrokken te blijven. Landsgrenzen vormen voor ons geen belemmering. Eurotemp is een uitzendbureau dat gemotiveerde en flexibele uitzendkrachten levert. Ons personeel is gedreven, kundig en betrokken. Ons doel? Prettige lange termijn relaties opbouwen door het inzetten van de juiste uitzendkracht op het juiste moment en door mee te blijven denken en betrokken te blijven. Landsgrenzen vormen voor ons geen belemmering.'),
(303, 67, '_income_carousel_text', 'field_58cfbe9fdea9a'),
(304, 66, 'field_58cfc6c583c7b', 'a:14:{s:3:"key";s:19:"field_58cfc6c583c7b";s:5:"label";s:27:"Income Carousel Title Quote";s:4:"name";s:27:"income_carousel_title_quote";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(305, 66, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:8:"carousel";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(306, 67, 'income_carousel_title_quote', '(André platter, Mars)'),
(307, 67, '_income_carousel_title_quote', 'field_58cfc6c583c7b'),
(308, 68, '_edit_last', '1'),
(309, 68, '_edit_lock', '1490099614:1'),
(310, 68, 'income_image', '17'),
(311, 68, '_income_image', 'field_58cfb925dea97'),
(312, 68, 'income_carousel_title_black_part', 'Werken in de energie staat gelijk aan'),
(313, 68, '_income_carousel_title_black_part', 'field_58cfba94dea98'),
(314, 68, 'income_carousel_title_white_part', 'Blah blah.'),
(315, 68, '_income_carousel_title_white_part', 'field_58cfbe20dea99'),
(316, 68, 'income_carousel_title_quote', '(André platter, Mars)'),
(317, 68, '_income_carousel_title_quote', 'field_58cfc6c583c7b'),
(318, 68, 'income_carousel_text', 'sjad;lfjdsfsjd; kljd sg; lsd /vjv l;kvld;vk ldflk;dfkdfk; dfkdfd fk;d;kfdf;d klf;dsk ff;kkkkk kkkkkkkkkkkkkk kkk-k kk k k kkkkkkkkk kaaa aaaa aa aaaaaa aaaaaaa aamzzzzz zzzzzzzz zzzzzzm xxxxxxx x x xxxxx xxxxxmx mxmxm xmxdkk x k kskksks s ks kska sjad;lfjdsfsjd; kljd sg; lsd /vjv l;kvld;vk ldflk;dfkdfk; dfkdfd fk;d;kfdf;d klf;dsk ff;kkkkk kkkkkkkkkkkkkk kkk-k kk k k kkkkkkkkk kaaa aaaa aa aaaaaa aaaaaaa aamzzzzz zzzzzzzz zzzzzzm xxxxxxx x x xxxxx xxxxxmx mxmxm xmxdkk x k kskksks s ks kska.'),
(319, 68, '_income_carousel_text', 'field_58cfbe9fdea9a'),
(320, 69, '_edit_last', '1'),
(321, 69, '_edit_lock', '1490095389:1'),
(322, 69, 'income_image', '17'),
(323, 69, '_income_image', 'field_58cfb925dea97'),
(324, 69, 'income_carousel_title_black_part', 'Werken in de energie staat gelijk aan'),
(325, 69, '_income_carousel_title_black_part', 'field_58cfba94dea98'),
(326, 69, 'income_carousel_title_white_part', 'aqswedfr frtghy.'),
(327, 69, '_income_carousel_title_white_part', 'field_58cfbe20dea99'),
(328, 69, 'income_carousel_title_quote', '(miau miau)'),
(329, 69, '_income_carousel_title_quote', 'field_58cfc6c583c7b'),
(330, 69, 'income_carousel_text', 'Works great - you do have to edit the jQuery line from jQuery(document).ready(function() to jQuery(document).ready(function($) but apart from that it works out of the box and saved me a load of time! I\'m working on an amended version using the Advanced Custom Fields plugin so the user can add an optional image or title if they want to use that instead of the default the_thumbnail() or the_title() one.') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(331, 69, '_income_carousel_text', 'field_58cfbe9fdea9a'),
(332, 70, 'income_section_title', 'fuck you egle. fuck you'),
(333, 70, '_income_section_title', 'field_58ce584dbd853'),
(334, 70, 'income_section_title_cite', '(André platter, Mars)'),
(335, 70, '_income_section_title_cite', 'field_58ce595cbd854'),
(336, 70, 'section2_text_title', 'Echte vakmensen zijn steeds moeilijker te vinden'),
(337, 70, '_section2_text_title', 'field_58ce59cdbd855'),
(338, 70, 'section2_text_area', 'Maar niet voor Eurotemp. Door jarenlange ervaring in het uitzenden en detacheren heeft Eurotemp zich ontwikkeld tot een betrouwbare en professionele HR partner. Wij beschikken over een enorm potentieel aan vakbekwame professionals die u voor korte of langere tijd, volledig naar behoeften, kunt inlenen.\r\n\r\nWij spelen in op het toenemende tekort aan technisch personeel op LBO/MBO niveau in diverse technische branches. Dit realiseren wij door onze mensen te begeleiden in het behalen van de juiste diploma\'s	en certificeringen die noodzakelijk zijn voor een optimale prestatie bij onze opdrachtgevers. De juiste persoonscertificering voor de functie en veiligheid staan hierbij centraal.'),
(339, 70, '_section2_text_area', 'field_58ce5a42bd856'),
(340, 71, 'income_section_title', '"Werken in de energie staat gelijk aan werken met vakmensen."'),
(341, 71, '_income_section_title', 'field_58ce584dbd853'),
(342, 71, 'income_section_title_cite', '(André platter, Mars)'),
(343, 71, '_income_section_title_cite', 'field_58ce595cbd854'),
(344, 71, 'section2_text_title', 'Echte vakmensen zijn steeds moeilijker te vinden'),
(345, 71, '_section2_text_title', 'field_58ce59cdbd855'),
(346, 71, 'section2_text_area', 'Maar niet voor Eurotemp. Door jarenlange ervaring in het uitzenden en detacheren heeft Eurotemp zich ontwikkeld tot een betrouwbare en professionele HR partner. Wij beschikken over een enorm potentieel aan vakbekwame professionals die u voor korte of langere tijd, volledig naar behoeften, kunt inlenen.\r\n\r\nWij spelen in op het toenemende tekort aan technisch personeel op LBO/MBO niveau in diverse technische branches. Dit realiseren wij door onze mensen te begeleiden in het behalen van de juiste diploma\'s	en certificeringen die noodzakelijk zijn voor een optimale prestatie bij onze opdrachtgevers. De juiste persoonscertificering voor de functie en veiligheid staan hierbij centraal.'),
(347, 71, '_section2_text_area', 'field_58ce5a42bd856'),
(348, 72, 'income_section_title', 'Labas Aleksandra:]]]]'),
(349, 72, '_income_section_title', 'field_58ce584dbd853'),
(350, 72, 'income_section_title_cite', '(André platter, Mars)'),
(351, 72, '_income_section_title_cite', 'field_58ce595cbd854'),
(352, 72, 'section2_text_title', 'Echte vakmensen zijn steeds moeilijker te vinden'),
(353, 72, '_section2_text_title', 'field_58ce59cdbd855'),
(354, 72, 'section2_text_area', 'Maar niet voor Eurotemp. Door jarenlange ervaring in het uitzenden en detacheren heeft Eurotemp zich ontwikkeld tot een betrouwbare en professionele HR partner. Wij beschikken over een enorm potentieel aan vakbekwame professionals die u voor korte of langere tijd, volledig naar behoeften, kunt inlenen.\r\n\r\nWij spelen in op het toenemende tekort aan technisch personeel op LBO/MBO niveau in diverse technische branches. Dit realiseren wij door onze mensen te begeleiden in het behalen van de juiste diploma\'s	en certificeringen die noodzakelijk zijn voor een optimale prestatie bij onze opdrachtgevers. De juiste persoonscertificering voor de functie en veiligheid staan hierbij centraal.'),
(355, 72, '_section2_text_area', 'field_58ce5a42bd856'),
(356, 73, 'income_section_title', '"Werken in de energie staat gelijk aan werken met vakmensen."'),
(357, 73, '_income_section_title', 'field_58ce584dbd853'),
(358, 73, 'income_section_title_cite', '(André platter, Mars)'),
(359, 73, '_income_section_title_cite', 'field_58ce595cbd854'),
(360, 73, 'section2_text_title', 'Echte vakmensen zijn steeds moeilijker te vinden'),
(361, 73, '_section2_text_title', 'field_58ce59cdbd855'),
(362, 73, 'section2_text_area', 'Maar niet voor Eurotemp. Door jarenlange ervaring in het uitzenden en detacheren heeft Eurotemp zich ontwikkeld tot een betrouwbare en professionele HR partner. Wij beschikken over een enorm potentieel aan vakbekwame professionals die u voor korte of langere tijd, volledig naar behoeften, kunt inlenen.\r\n\r\nWij spelen in op het toenemende tekort aan technisch personeel op LBO/MBO niveau in diverse technische branches. Dit realiseren wij door onze mensen te begeleiden in het behalen van de juiste diploma\'s	en certificeringen die noodzakelijk zijn voor een optimale prestatie bij onze opdrachtgevers. De juiste persoonscertificering voor de functie en veiligheid staan hierbij centraal.'),
(363, 73, '_section2_text_area', 'field_58ce5a42bd856'),
(364, 76, '_edit_last', '1'),
(365, 76, 'field_58d0e802b128e', 'a:11:{s:3:"key";s:19:"field_58d0e802b128e";s:5:"label";s:17:"BetweenSection CF";s:4:"name";s:17:"betweensection_cf";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(367, 76, 'position', 'normal'),
(368, 76, 'layout', 'no_box'),
(369, 76, 'hide_on_screen', ''),
(370, 76, '_edit_lock', '1490088182:1'),
(371, 76, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:19:"between_section_img";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(372, 77, '_edit_last', '1'),
(373, 77, '_edit_lock', '1490086412:1'),
(374, 78, '_wp_attached_file', '2017/03/Foto1.jpg'),
(375, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1280;s:6:"height";i:521;s:4:"file";s:17:"2017/03/Foto1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"Foto1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"Foto1-300x122.jpg";s:5:"width";i:300;s:6:"height";i:122;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"Foto1-768x313.jpg";s:5:"width";i:768;s:6:"height";i:313;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"Foto1-1024x417.jpg";s:5:"width";i:1024;s:6:"height";i:417;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(376, 78, '_wp_attachment_image_alt', 'foto'),
(377, 77, 'betweensection_cf', '78'),
(378, 77, '_betweensection_cf', 'field_58d0e802b128e'),
(379, 79, '_edit_last', '1'),
(380, 79, '_edit_lock', '1490088990:1'),
(381, 80, '_wp_attached_file', '2017/03/cover-temphory_white-black.jpg'),
(382, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:695;s:4:"file";s:38:"2017/03/cover-temphory_white-black.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"cover-temphory_white-black-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"cover-temphory_white-black-300x174.jpg";s:5:"width";i:300;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:38:"cover-temphory_white-black-768x445.jpg";s:5:"width";i:768;s:6:"height";i:445;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:39:"cover-temphory_white-black-1024x593.jpg";s:5:"width";i:1024;s:6:"height";i:593;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(383, 80, '_wp_attachment_image_alt', 'worker on work'),
(384, 79, 'betweensection_cf', '80'),
(385, 79, '_betweensection_cf', 'field_58d0e802b128e'),
(386, 81, '_edit_last', '1'),
(387, 81, '_edit_lock', '1490090396:1'),
(388, 81, 'betweensection_cf', '78'),
(389, 81, '_betweensection_cf', 'field_58d0e802b128e'),
(390, 82, '_edit_last', '1'),
(391, 82, '_edit_lock', '1490090525:1'),
(392, 82, 'betweensection_cf', '80'),
(393, 82, '_betweensection_cf', 'field_58d0e802b128e'),
(394, 83, '_edit_last', '1'),
(395, 83, '_edit_lock', '1490090672:1'),
(396, 84, '_wp_attached_file', '2017/03/aparat-worker.jpg'),
(397, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:1261;s:4:"file";s:25:"2017/03/aparat-worker.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"aparat-worker-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"aparat-worker-285x300.jpg";s:5:"width";i:285;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"aparat-worker-768x807.jpg";s:5:"width";i:768;s:6:"height";i:807;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"aparat-worker-974x1024.jpg";s:5:"width";i:974;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(398, 84, '_wp_attachment_image_alt', 'aparat-worker'),
(399, 83, 'betweensection_cf', '84'),
(400, 83, '_betweensection_cf', 'field_58d0e802b128e'),
(401, 29, 'main_button', 'Testimonials'),
(402, 39, 'field_58d1272b32f14', 'a:14:{s:3:"key";s:19:"field_58d1272b32f14";s:5:"label";s:15:"Section2 Button";s:4:"name";s:15:"section2_button";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(404, 85, 'income_section_title', '"Werken in de energie staat gelijk aan werken met vakmensen."'),
(405, 85, '_income_section_title', 'field_58ce584dbd853'),
(406, 85, 'income_section_title_cite', '(André platter, Mars)'),
(407, 85, '_income_section_title_cite', 'field_58ce595cbd854'),
(408, 85, 'section2_text_title', 'Echte vakmensen zijn steeds moeilijker te vinden'),
(409, 85, '_section2_text_title', 'field_58ce59cdbd855'),
(410, 85, 'section2_text_area', 'Maar niet voor Eurotemp. Door jarenlange ervaring in het uitzenden en detacheren heeft Eurotemp zich ontwikkeld tot een betrouwbare en professionele HR partner. Wij beschikken over een enorm potentieel aan vakbekwame professionals die u voor korte of langere tijd, volledig naar behoeften, kunt inlenen.\r\n\r\nWij spelen in op het toenemende tekort aan technisch personeel op LBO/MBO niveau in diverse technische branches. Dit realiseren wij door onze mensen te begeleiden in het behalen van de juiste diploma\'s	en certificeringen die noodzakelijk zijn voor een optimale prestatie bij onze opdrachtgevers. De juiste persoonscertificering voor de functie en veiligheid staan hierbij centraal.'),
(411, 85, '_section2_text_area', 'field_58ce5a42bd856'),
(412, 85, 'secttion2_button', 'Testimonials'),
(413, 85, '_secttion2_button', 'field_58d1272b32f14'),
(414, 40, 'secttion2_button', 'Testimonials'),
(415, 40, '_secttion2_button', 'field_58d1272b32f14'),
(418, 39, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"40";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(419, 86, 'income_section_title', '"Werken in de energie staat gelijk aan werken met vakmensen."'),
(420, 86, '_income_section_title', 'field_58ce584dbd853'),
(421, 86, 'income_section_title_cite', '(André platter, Mars)'),
(422, 86, '_income_section_title_cite', 'field_58ce595cbd854'),
(423, 86, 'section2_text_title', 'Echte vakmensen zijn steeds moeilijker te vinden'),
(424, 86, '_section2_text_title', 'field_58ce59cdbd855'),
(425, 86, 'section2_text_area', 'Maar niet voor Eurotemp. Door jarenlange ervaring in het uitzenden en detacheren heeft Eurotemp zich ontwikkeld tot een betrouwbare en professionele HR partner. Wij beschikken over een enorm potentieel aan vakbekwame professionals die u voor korte of langere tijd, volledig naar behoeften, kunt inlenen.\r\n\r\nWij spelen in op het toenemende tekort aan technisch personeel op LBO/MBO niveau in diverse technische branches. Dit realiseren wij door onze mensen te begeleiden in het behalen van de juiste diploma\'s	en certificeringen die noodzakelijk zijn voor een optimale prestatie bij onze opdrachtgevers. De juiste persoonscertificering voor de functie en veiligheid staan hierbij centraal.'),
(426, 86, '_section2_text_area', 'field_58ce5a42bd856'),
(427, 86, 'section2_button', 'Testimonials'),
(428, 86, '_section2_button', 'field_58d1272b32f14'),
(429, 40, 'section2_button', 'Testimonials'),
(430, 40, '_section2_button', 'field_58d1272b32f14'),
(431, 47, 'field_58d12bd79d07d', 'a:14:{s:3:"key";s:19:"field_58d12bd79d07d";s:5:"label";s:15:"Section3 Button";s:4:"name";s:15:"section3_button";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(432, 47, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"45";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(433, 87, 'income_section3_title', '"Eurotemp werkt snel en slagvaardig, maar altijd op een betrouwbare manier."'),
(434, 87, '_income_section3_title', 'field_58ce8ddefa7e6') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(435, 87, 'income_section3_title_quote', '(Hans van Doren, Van Doren engineers)'),
(436, 87, '_income_section3_title_quote', 'field_58ce8e05fa7e7'),
(437, 87, 'section3_text_title', 'Onze uitzendkrachten maken het verschil'),
(438, 87, '_section3_text_title', 'field_58ce8e54fa7e8'),
(439, 87, 'section3_text_area', 'Eurotemp is een uitzendbureau dat gemotiveerde en flexibele uitzendkrachten levert. Ons personeel is gedreven, kundig en betrokken. Ons doel? Prettige lange termijn relaties opbouwen door het inzetten van de juiste uitzendkracht op het juiste moment en door mee te blijven denken en betrokken te blijven. Landsgrenzen vormen voor ons geen belemmering. Eurotemp is een uitzendbureau dat gemotiveerde en flexibele uitzendkrachten levert. Ons personeel is gedreven, kundig en betrokken. Ons doel? Prettige lange termijn relaties opbouwen door het inzetten van de juiste uitzendkracht op het juiste moment en door mee te blijven denken en betrokken te blijven. Landsgrenzen vormen voor ons geen belemmering.'),
(440, 87, '_section3_text_area', 'field_58ce8e7afa7e9'),
(441, 87, 'section3_button', 'Testimonials'),
(442, 87, '_section3_button', 'field_58d12bd79d07d'),
(443, 45, 'section3_button', 'Testimonials'),
(444, 45, '_section3_button', 'field_58d12bd79d07d'),
(445, 53, 'field_58d12d1255744', 'a:14:{s:3:"key";s:19:"field_58d12d1255744";s:5:"label";s:16:"Section4 Button1";s:4:"name";s:16:"section4_button1";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(446, 53, 'field_58d12f7755745', 'a:14:{s:3:"key";s:19:"field_58d12f7755745";s:5:"label";s:16:"Section4 Button2";s:4:"name";s:16:"section4_button2";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(449, 88, 'income_section4_title', '"Werken in de energie staat gelijk aan werken met vakmensen."'),
(450, 88, '_income_section4_title', 'field_58ce95d9d3e1a'),
(451, 88, 'income_section4_title_quote', '(André platter, Mars)'),
(452, 88, '_income_section4_title_quote', 'field_58ce961bd3e1b'),
(453, 88, 'section4_text_title', 'Pijpfitter/Leidingwerker'),
(454, 88, '_section4_text_title', 'field_58ce966ad3e1d'),
(455, 88, 'section4_text_area', 'De werkzaamheden van een pijpfitter/lasser bestaan uit het installeren, monteren en opstellen van leidingwerk. Dit moet vaak direct gebeuren vanaf een tekening. Hierdoor is de kennis en inzicht van de fitter van groot belang evenals de materiaalkeus ten opzichte van de situatie. Bij de oplevering van een opdracht moet de pijpfitter in staat zijn om de leidingen te kunnen testen en bij te werken.'),
(456, 88, '_section4_text_area', 'field_58ce96edd3e1e'),
(457, 88, 'section4_button1', 'REAGEREN'),
(458, 88, '_section4_button1', 'field_58d12d1255744'),
(459, 88, 'section4_button2', 'TERUG'),
(460, 88, '_section4_button2', 'field_58d12f7755745'),
(461, 51, 'section4_button1', 'REAGEREN'),
(462, 51, '_section4_button1', 'field_58d12d1255744'),
(463, 51, 'section4_button2', 'TERUG'),
(464, 51, '_section4_button2', 'field_58d12f7755745'),
(465, 53, 'field_58d1332acb133', 'a:14:{s:3:"key";s:19:"field_58d1332acb133";s:5:"label";s:22:"Income Section4 Button";s:4:"name";s:22:"income_section4_button";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(466, 53, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"51";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(467, 89, 'income_section4_title', '"Werken in de energie staat gelijk aan werken met vakmensen."'),
(468, 89, '_income_section4_title', 'field_58ce95d9d3e1a'),
(469, 89, 'income_section4_title_quote', '(André platter, Mars)'),
(470, 89, '_income_section4_title_quote', 'field_58ce961bd3e1b'),
(471, 89, 'income_section4_button', 'Testimonials'),
(472, 89, '_income_section4_button', 'field_58d1332acb133'),
(473, 89, 'section4_text_title', 'Pijpfitter/Leidingwerker'),
(474, 89, '_section4_text_title', 'field_58ce966ad3e1d'),
(475, 89, 'section4_text_area', 'De werkzaamheden van een pijpfitter/lasser bestaan uit het installeren, monteren en opstellen van leidingwerk. Dit moet vaak direct gebeuren vanaf een tekening. Hierdoor is de kennis en inzicht van de fitter van groot belang evenals de materiaalkeus ten opzichte van de situatie. Bij de oplevering van een opdracht moet de pijpfitter in staat zijn om de leidingen te kunnen testen en bij te werken.'),
(476, 89, '_section4_text_area', 'field_58ce96edd3e1e'),
(477, 89, 'section4_button1', 'REAGEREN'),
(478, 89, '_section4_button1', 'field_58d12d1255744'),
(479, 89, 'section4_button2', 'TERUG'),
(480, 89, '_section4_button2', 'field_58d12f7755745'),
(481, 51, 'income_section4_button', 'Testimonials'),
(482, 51, '_income_section4_button', 'field_58d1332acb133'),
(483, 60, 'field_58d134d748f9b', 'a:14:{s:3:"key";s:19:"field_58d134d748f9b";s:5:"label";s:15:"Section5 Button";s:4:"name";s:15:"section5_button";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(484, 60, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"56";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(485, 90, 'income_section5_title', '"Eurotemp werkt snel en slagvaardig, maar altijd op een betrouwbare manier."'),
(486, 90, '_income_section5_title', 'field_58cf6586e4cad'),
(487, 90, 'income_section5_title_quote', '(Hans van Doren, Van Doren engineers)'),
(488, 90, '_income_section5_title_quote', 'field_58cf65b3e4cae'),
(489, 90, 'section5_button', 'Testimonials'),
(490, 90, '_section5_button', 'field_58d134d748f9b'),
(491, 90, 'section5_text_area', 'Interesse in de dienstverlening van Temphory? Heeft u vragen of bent u op zoek naar werk?\r\nVul onderstaand formulier in en wij nemen zo spoedig mogelijk contact met u op.'),
(492, 90, '_section5_text_area', 'field_58cf6684e4caf'),
(493, 90, 'section5_form', '4'),
(494, 90, '_section5_form', 'field_58cf673be4cb0'),
(495, 56, 'section5_button', 'Testimonials'),
(496, 56, '_section5_button', 'field_58d134d748f9b'),
(497, 91, '_edit_last', '1'),
(498, 91, 'field_58d136b59ddc6', 'a:14:{s:3:"key";s:19:"field_58d136b59ddc6";s:5:"label";s:21:"Income Section7 Title";s:4:"name";s:21:"income_section7_title";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(499, 91, 'field_58d136d59ddc7', 'a:13:{s:3:"key";s:19:"field_58d136d59ddc7";s:5:"label";s:20:"Income Section7 Text";s:4:"name";s:20:"income_section7_text";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(500, 91, 'field_58d137039ddc8', 'a:14:{s:3:"key";s:19:"field_58d137039ddc8";s:5:"label";s:20:"Section7 List Title1";s:4:"name";s:20:"section7_list_title1";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(501, 91, 'field_58d137369ddc9', 'a:14:{s:3:"key";s:19:"field_58d137369ddc9";s:5:"label";s:20:"Section7 List Title2";s:4:"name";s:20:"section7_list_title2";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(503, 91, 'position', 'normal'),
(504, 91, 'layout', 'no_box'),
(505, 91, 'hide_on_screen', 'a:1:{i:0;s:11:"the_content";}'),
(506, 91, '_edit_lock', '1490107408:1'),
(507, 92, '_edit_last', '1'),
(508, 92, '_wp_page_template', 'default'),
(509, 92, '_edit_lock', '1490107916:1'),
(510, 91, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"92";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(511, 94, 'income_section7_title', 'Temphory'),
(512, 94, '_income_section7_title', 'field_58d136b59ddc6'),
(513, 94, 'income_section7_text', 'Ben jij een vakman of vakvrouw en wil je investeren in je ontwikkeling? Of ben je op zoek naar vakmensen? Neem dan contact met ons op via 0341 424 080 of vul het contactformulier in.'),
(514, 94, '_income_section7_text', 'field_58d136d59ddc7'),
(515, 94, 'section7_list_title1', 'Info1'),
(516, 94, '_section7_list_title1', 'field_58d137039ddc8'),
(517, 94, 'section7_list_title2', 'Info2'),
(518, 94, '_section7_list_title2', 'field_58d137369ddc9'),
(519, 92, 'income_section7_title', 'Temphory'),
(520, 92, '_income_section7_title', 'field_58d136b59ddc6'),
(521, 92, 'income_section7_text', 'Ben jij een vakman of vakvrouw en wil je investeren in je ontwikkeling? Of ben je op zoek naar vakmensen? Neem dan contact met ons op via 0341 424 080 of vul het contactformulier in.'),
(522, 92, '_income_section7_text', 'field_58d136d59ddc7'),
(523, 92, 'section7_list_title1', 'Info1'),
(524, 92, '_section7_list_title1', 'field_58d137039ddc8'),
(525, 92, 'section7_list_title2', 'Info2'),
(526, 92, '_section7_list_title2', 'field_58d137369ddc9') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-03-03 09:42:37', '2017-03-03 09:42:37', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2017-03-17 11:05:43', '2017-03-17 11:05:43', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?p=1', 0, 'post', '', 1),
(2, 1, '2017-03-03 09:42:37', '2017-03-03 09:42:37', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/vcs-wp/paulius-alaune/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2017-03-15 19:50:23', '2017-03-15 19:50:23', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-03-13 14:12:51', '2017-03-13 14:12:51', '<div class="formos form-group row">\r\n<div class="col-md-12">\r\n[text* your-name class:form-control placeholder "Naam" ]\r\n</div>\r\n</div>\r\n<div class="formos form-group row">\r\n<div class="col-md-6 mob-br">\r\n[text* Your-adress class:form-control placeholder "Adres"]\r\n</div>\r\n<div class="col-md-6">\r\n[text* Your-adress class:form-control placeholder "Woonplaats"]\r\n</div>\r\n</div>\r\n<div class="formos form-group row">\r\n<div class="col-md-6 mob-br">\r\n[email* your-email class:form-control class:form-control-md id:lgFormGroupInput placeholder ".E-mailadres" ]\r\n</div>\r\n<div class="col-md-6">\r\n[text* Your-telephone class:form-control class:form-control-md id:lgFormGroupInput placeholder "Telefoon"]\r\n</div>\r\n</div>\r\n<div class="formos form-group row">\r\n<div class="col-md-12">\r\n[textarea* your-message class:form-control x3 placeholder "Uw vraag en/of opmerkingen"]\r\n</div>\r\n</div>\r\n<div class="form-group">\r\n[submit class:btn class:btn-ac-o "Submit"]						\r\n</div>\n1\nvcs "[your-subject]"\n[your-name] <paulius.alaune@gmail.com>\npaulius.alaune@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on vcs (http://localhost/vcs-wp/paulius-alaune)\nReply-To: [your-email]\n\n\n\n\nvcs "[your-subject]"\nvcs <paulius.alaune@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on vcs (http://localhost/vcs-wp/paulius-alaune)\nReply-To: paulius.alaune@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-03-20 07:39:02', '2017-03-20 07:39:02', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=wpcf7_contact_form&#038;p=4', 0, 'wpcf7_contact_form', '', 0),
(5, 1, '2017-03-15 13:36:46', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-15 13:36:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2017-03-15 13:36:47', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-15 13:36:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2017-03-15 14:17:14', '2017-03-15 14:17:14', '', 'waarom temphory', '', 'publish', 'closed', 'closed', '', 'waarom-temphory', '', '', '2017-03-16 12:27:08', '2017-03-16 12:27:08', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2017-03-15 14:17:14', '2017-03-15 14:17:14', '', 'over temphory', '', 'publish', 'closed', 'closed', '', 'over-temphory', '', '', '2017-03-16 12:27:08', '2017-03-16 12:27:08', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?p=8', 2, 'nav_menu_item', '', 0),
(9, 1, '2017-03-15 14:17:15', '2017-03-15 14:17:15', '', 'vacatures', '', 'publish', 'closed', 'closed', '', 'vacatures', '', '', '2017-03-16 12:27:08', '2017-03-16 12:27:08', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?p=9', 3, 'nav_menu_item', '', 0),
(10, 1, '2017-03-15 14:17:15', '2017-03-15 14:17:15', '', 'contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2017-03-16 12:27:08', '2017-03-16 12:27:08', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?p=10', 4, 'nav_menu_item', '', 0),
(12, 1, '2017-03-15 19:26:56', '2017-03-15 19:26:56', '', 'logo-temphory', '', 'inherit', 'open', 'closed', '', 'logo-temphory', '', '', '2017-03-15 19:26:56', '2017-03-15 19:26:56', '', 0, 'http://localhost/vcs-wp/paulius-alaune/wp-content/uploads/2017/03/logo-temphory.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2017-03-15 19:50:23', '2017-03-15 19:50:23', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/vcs-wp/paulius-alaune/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-03-15 19:50:23', '2017-03-15 19:50:23', '', 2, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/15/2-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2017-03-16 06:51:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-16 06:51:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?page_id=14', 0, 'page', '', 0),
(15, 1, '2017-03-16 06:53:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-16 06:53:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=acf&p=15', 0, 'acf', '', 0),
(16, 1, '2017-03-16 09:25:28', '2017-03-16 09:25:28', '<h2><span>Werken in de energie staat gelijk aan</span> werken met vakmensen</h2>\r\n<h4>(André platter, Mars)</h4>\r\n<p>Eurotemp is een uitzendbureau dat gemotiveerde en\r\nflexibele uitzendkrachten levert. Ons personeel is gedreven, kundig\r\nen betrokken. Ons doel? Prettige lange termijn relaties opbouwen door\r\nhet inzetten van de juiste uitzendkracht op het juiste moment en door\r\nmee te blijven denken en betrokken te blijven. Landsgrenzen vormen voor\r\nons geen belemmering. Eurotemp is een uitzendbureau dat gemotiveerde\r\nen flexibele uitzendkrachten levert. Ons personeel is gedreven, kundig\r\nen betrokken. Ons doel? Prettige lange termijn relaties opbouwen door\r\nhet inzetten van de juiste uitzendkracht op het juiste moment en door\r\nmee te blijven denken en betrokken te blijven. Landsgrenzen vormen voor\r\nons geen belemmering.</p>', 'Carousel', '', 'trash', 'closed', 'closed', '', 'carousel__trashed', '', '', '2017-03-19 11:06:10', '2017-03-19 11:06:10', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?page_id=16', 0, 'page', '', 0),
(17, 1, '2017-03-16 09:22:54', '2017-03-16 09:22:54', '', 'worker', '', 'inherit', 'open', 'closed', '', 'worker', '', '', '2017-03-16 09:22:54', '2017-03-16 09:22:54', '', 16, 'http://localhost/vcs-wp/paulius-alaune/wp-content/uploads/2017/03/worker.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2017-03-16 09:25:28', '2017-03-16 09:25:28', '<h2><span>Werken in de energie staat gelijk aan</span> werken met vakmensen</h2>\r\n<h4>(André platter, Mars)</h4>\r\n<p>Eurotemp is een uitzendbureau dat gemotiveerde en\r\nflexibele uitzendkrachten levert. Ons personeel is gedreven, kundig\r\nen betrokken. Ons doel? Prettige lange termijn relaties opbouwen door\r\nhet inzetten van de juiste uitzendkracht op het juiste moment en door\r\nmee te blijven denken en betrokken te blijven. Landsgrenzen vormen voor\r\nons geen belemmering. Eurotemp is een uitzendbureau dat gemotiveerde\r\nen flexibele uitzendkrachten levert. Ons personeel is gedreven, kundig\r\nen betrokken. Ons doel? Prettige lange termijn relaties opbouwen door\r\nhet inzetten van de juiste uitzendkracht op het juiste moment en door\r\nmee te blijven denken en betrokken te blijven. Landsgrenzen vormen voor\r\nons geen belemmering.</p>', 'Carousel', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2017-03-16 09:25:28', '2017-03-16 09:25:28', '', 16, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/16/16-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2017-03-16 09:25:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-16 09:25:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=acf&p=19', 0, 'acf', '', 0),
(20, 1, '2017-03-16 12:25:29', '2017-03-16 12:25:29', '', 'search', '', 'publish', 'closed', 'closed', '', 'search', '', '', '2017-03-16 12:27:09', '2017-03-16 12:27:09', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?p=20', 5, 'nav_menu_item', '', 0),
(21, 1, '2017-03-16 13:35:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-16 13:35:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=acf&p=21', 0, 'acf', '', 0),
(22, 1, '2017-03-16 13:35:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-16 13:35:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=acf&p=22', 0, 'acf', '', 0),
(23, 1, '2017-03-16 13:36:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-16 13:36:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=acf&p=23', 0, 'acf', '', 0),
(24, 1, '2017-03-16 13:42:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-16 13:42:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?page_id=24', 0, 'page', '', 0),
(25, 1, '2017-03-16 13:44:26', '2017-03-16 13:44:26', '', 'test', '', 'trash', 'closed', 'closed', '', 'acf_test__trashed', '', '', '2017-03-19 10:06:03', '2017-03-19 10:06:03', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=acf&#038;p=25', 0, 'acf', '', 0),
(26, 1, '2017-03-16 13:47:41', '2017-03-16 13:47:41', '', 'Carousel', '', 'inherit', 'closed', 'closed', '', '16-autosave-v1', '', '', '2017-03-16 13:47:41', '2017-03-16 13:47:41', '', 16, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/16/16-autosave-v1/', 0, 'revision', '', 0),
(27, 1, '2017-03-17 05:59:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-03-17 05:59:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?p=27', 0, 'post', '', 0),
(28, 1, '2017-03-17 10:44:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-17 10:44:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=acf&p=28', 0, 'acf', '', 0),
(29, 1, '2017-03-17 10:56:33', '2017-03-17 10:56:33', '<h1 class="display-3"></h1>', 'home-cover', '', 'publish', 'closed', 'closed', '', 'h1', '', '', '2017-03-19 09:57:07', '2017-03-19 09:57:07', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?page_id=29', 0, 'page', '', 0),
(30, 1, '2017-03-17 10:56:33', '2017-03-17 10:56:33', '', 'h1', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2017-03-17 10:56:33', '2017-03-17 10:56:33', '', 29, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/17/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2017-03-17 10:59:52', '2017-03-17 10:59:52', '<h1 class="display-3">“TEMPHORY</h1>\r\n<h1 class="display-3"> MAAR ALTIJD OP EEN BETROUWBARE MANIER.”</h1>', 'h1', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2017-03-17 10:59:52', '2017-03-17 10:59:52', '', 29, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/17/29-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2017-03-17 11:00:42', '2017-03-17 11:00:42', '<h1 class="display-3">“TEMPHORY <span class="organge-text">WERKT SNEL EN SLAGVAARDIG,</span> MAAR ALTIJD OP EEN BETROUWBARE MANIER.” <span class="h-3main">(HANS VAN DOREN, VAN DOREN ENGINEERS)</span></h1>', 'h1', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2017-03-17 11:00:42', '2017-03-17 11:00:42', '', 29, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/17/29-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2017-03-17 11:05:43', '2017-03-17 11:05:43', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-03-17 11:05:43', '2017-03-17 11:05:43', '', 1, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/17/1-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2017-03-17 11:35:36', '2017-03-17 11:35:36', '<h1 class="display-3">“TEMPHORY  MAAR ALTIJD OP EEN BETROUWBARE MANIER.”</h1>', 'h1', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2017-03-17 11:35:36', '2017-03-17 11:35:36', '', 29, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/17/29-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2017-03-17 11:54:48', '2017-03-17 11:54:48', '<h1 class="display-3"></h1>', 'h1', '', 'inherit', 'closed', 'closed', '', '29-autosave-v1', '', '', '2017-03-17 11:54:48', '2017-03-17 11:54:48', '', 29, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/17/29-autosave-v1/', 0, 'revision', '', 0),
(36, 1, '2017-03-17 11:56:51', '2017-03-17 11:56:51', '<h1 class="display-3"></h1>', 'h1', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2017-03-17 11:56:51', '2017-03-17 11:56:51', '', 29, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/17/29-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2017-03-17 12:39:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-17 12:39:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=acf&p=37', 0, 'acf', '', 0),
(38, 1, '2017-03-19 09:56:39', '2017-03-19 09:56:39', '<h1 class="display-3"></h1>', 'home-cover', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2017-03-19 09:56:39', '2017-03-19 09:56:39', '', 29, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/19/29-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2017-03-19 10:19:48', '2017-03-19 10:19:48', '', 'Section2 Aka Werken In De', '', 'publish', 'closed', 'closed', '', 'acf_section2-aka-werken-in-de', '', '', '2017-03-21 13:31:02', '2017-03-21 13:31:02', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=acf&#038;p=39', 0, 'acf', '', 0),
(40, 1, '2017-03-19 10:21:12', '2017-03-19 10:21:12', '', 'HomeSection2', '', 'publish', 'closed', 'closed', '', 'homesection', '', '', '2017-03-21 13:33:27', '2017-03-21 13:33:27', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?page_id=40', 0, 'page', '', 0),
(41, 1, '2017-03-19 10:21:12', '2017-03-19 10:21:12', '', 'HomeSection', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2017-03-19 10:21:12', '2017-03-19 10:21:12', '', 40, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/19/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2017-03-19 10:39:42', '2017-03-19 10:39:42', '', 'HomeSection2', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2017-03-19 10:39:42', '2017-03-19 10:39:42', '', 40, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/19/40-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2017-03-19 11:02:41', '2017-03-19 11:02:41', '', 'HomeSection2', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2017-03-19 11:02:41', '2017-03-19 11:02:41', '', 40, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/19/40-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2017-03-19 13:15:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-19 13:15:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?page_id=44', 0, 'page', '', 0),
(45, 1, '2017-03-19 13:16:06', '2017-03-19 13:16:06', '', 'HomeSection3', '', 'publish', 'closed', 'closed', '', 'homesection3', '', '', '2017-03-21 13:36:20', '2017-03-21 13:36:20', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?page_id=45', 0, 'page', '', 0),
(46, 1, '2017-03-19 13:16:06', '2017-03-19 13:16:06', '', 'HomeSection3', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2017-03-19 13:16:06', '2017-03-19 13:16:06', '', 45, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/19/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2017-03-19 13:18:29', '2017-03-19 13:18:29', '', 'Section3 Aka Eurotemp Werkt Snel', '', 'publish', 'closed', 'closed', '', 'acf_section3-aka-eurotemp-werkt-snel', '', '', '2017-03-21 13:35:09', '2017-03-21 13:35:09', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=acf&#038;p=47', 0, 'acf', '', 0),
(48, 1, '2017-03-19 14:01:44', '2017-03-19 14:01:44', '', 'HomeSection3', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2017-03-19 14:01:44', '2017-03-19 14:01:44', '', 45, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/19/45-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2017-03-19 14:27:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-19 14:27:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?page_id=50', 0, 'page', '', 0),
(51, 1, '2017-03-19 14:28:41', '2017-03-19 14:28:41', '', 'HomeSection4', '', 'publish', 'closed', 'closed', '', 'homesection3-2', '', '', '2017-03-21 14:11:15', '2017-03-21 14:11:15', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?page_id=51', 0, 'page', '', 0),
(52, 1, '2017-03-19 14:28:41', '2017-03-19 14:28:41', '', 'HomeSection3', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2017-03-19 14:28:41', '2017-03-19 14:28:41', '', 51, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/19/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2017-03-19 14:37:18', '2017-03-19 14:37:18', '', 'Section4 Aka Werken In De Energie', '', 'publish', 'closed', 'closed', '', 'acf_section4-aka-werken-in-de-energie', '', '', '2017-03-21 14:09:30', '2017-03-21 14:09:30', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=acf&#038;p=53', 0, 'acf', '', 0),
(54, 1, '2017-03-19 14:39:16', '2017-03-19 14:39:16', '', 'HomeSection4', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2017-03-19 14:39:16', '2017-03-19 14:39:16', '', 51, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/19/51-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2017-03-19 14:42:02', '2017-03-19 14:42:02', '', 'HomeSection4', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2017-03-19 14:42:02', '2017-03-19 14:42:02', '', 51, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/19/51-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2017-03-19 16:47:35', '2017-03-19 16:47:35', '', 'HomeSection5ContactForm', '', 'publish', 'closed', 'closed', '', 'homesection5contactform', '', '', '2017-03-21 14:15:11', '2017-03-21 14:15:11', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?page_id=56', 0, 'page', '', 0),
(57, 1, '2017-03-19 16:47:35', '2017-03-19 16:47:35', '', 'HomeSection5ContactForm', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2017-03-19 16:47:35', '2017-03-19 16:47:35', '', 56, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/19/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2017-03-19 17:21:13', '2017-03-19 17:21:13', '1\nTEMPHORY "[your-subject]"\n[your-name] <paulius.alaune@gmail.com>\npaulius.alaune@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on TEMPHORY (http://localhost/vcs-wp/paulius-alaune)\nReply-To: [your-email]\n\n\n\n\nTEMPHORY "[your-subject]"\nTEMPHORY <paulius.alaune@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on TEMPHORY (http://localhost/vcs-wp/paulius-alaune)\nReply-To: paulius.alaune@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Primary Contact Form', '', 'publish', 'closed', 'closed', '', 'primary-contact-form', '', '', '2017-03-19 17:21:13', '2017-03-19 17:21:13', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=wpcf7_contact_form&p=58', 0, 'wpcf7_contact_form', '', 0),
(59, 1, '2017-03-20 05:12:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-20 05:12:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=acf&p=59', 0, 'acf', '', 0),
(60, 1, '2017-03-20 05:33:19', '2017-03-20 05:33:19', '', 'Section5 Aka Contact Form', '', 'publish', 'closed', 'closed', '', 'acf_section5-aka-contact-form', '', '', '2017-03-21 14:13:25', '2017-03-21 14:13:25', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=acf&#038;p=60', 0, 'acf', '', 0),
(61, 1, '2017-03-20 05:36:25', '2017-03-20 05:36:25', '', 'HomeSection5ContactForm', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2017-03-20 05:36:25', '2017-03-20 05:36:25', '', 56, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/20/56-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2017-03-20 09:05:26', '2017-03-20 09:05:26', '', 'Section6Carousel', '', 'publish', 'closed', 'closed', '', 'section6carousel', '', '', '2017-03-20 09:05:26', '2017-03-20 09:05:26', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?page_id=62', 0, 'page', '', 0),
(63, 1, '2017-03-20 09:05:26', '2017-03-20 09:05:26', '', 'Section6Carousel', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2017-03-20 09:05:26', '2017-03-20 09:05:26', '', 62, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/20/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2017-03-20 09:09:24', '2017-03-20 09:09:24', '', 'HomeSection5ContactForm', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2017-03-20 09:09:24', '2017-03-20 09:09:24', '', 56, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/20/56-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2017-03-20 09:10:44', '2017-03-20 09:10:44', '', 'HomeSection5ContactForm', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2017-03-20 09:10:44', '2017-03-20 09:10:44', '', 56, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/20/56-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2017-03-20 11:37:02', '2017-03-20 11:37:02', '', 'Carousel Section6', '', 'publish', 'closed', 'closed', '', 'acf_carousel-section6', '', '', '2017-03-20 12:11:46', '2017-03-20 12:11:46', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=acf&#038;p=66', 0, 'acf', '', 0),
(67, 1, '2017-03-20 12:09:36', '2017-03-20 12:09:36', '', 'Carousel-1', '', 'publish', 'closed', 'closed', '', 'carousel-1', '', '', '2017-03-20 12:16:47', '2017-03-20 12:16:47', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=carousel&#038;p=67', 0, 'carousel', '', 0),
(68, 1, '2017-03-20 14:24:48', '2017-03-20 14:24:48', '', 'Carousel-2', '', 'publish', 'closed', 'closed', '', 'carousel-2', '', '', '2017-03-21 11:27:34', '2017-03-21 11:27:34', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=carousel&#038;p=68', 0, 'carousel', '', 0),
(69, 1, '2017-03-20 15:00:36', '2017-03-20 15:00:36', '', 'Carousel-3', '', 'publish', 'closed', 'closed', '', 'carousel-3', '', '', '2017-03-20 15:00:36', '2017-03-20 15:00:36', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=carousel&#038;p=69', 0, 'carousel', '', 0),
(70, 1, '2017-03-20 17:08:09', '2017-03-20 17:08:09', '', 'HomeSection2', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2017-03-20 17:08:09', '2017-03-20 17:08:09', '', 40, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/20/40-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2017-03-20 17:09:30', '2017-03-20 17:09:30', '', 'HomeSection2', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2017-03-20 17:09:30', '2017-03-20 17:09:30', '', 40, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/20/40-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2017-03-21 04:16:42', '2017-03-21 04:16:42', '', 'HomeSection2', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2017-03-21 04:16:42', '2017-03-21 04:16:42', '', 40, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/21/40-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2017-03-21 04:17:18', '2017-03-21 04:17:18', '', 'HomeSection2', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2017-03-21 04:17:18', '2017-03-21 04:17:18', '', 40, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/21/40-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2017-03-21 08:40:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-21 08:40:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=acf&p=74', 0, 'acf', '', 0),
(75, 1, '2017-03-21 08:41:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-21 08:41:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=acf&p=75', 0, 'acf', '', 0),
(76, 1, '2017-03-21 08:45:25', '2017-03-21 08:45:25', '', 'BetweenSection', '', 'publish', 'closed', 'closed', '', 'acf_betweensection', '', '', '2017-03-21 08:45:45', '2017-03-21 08:45:45', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=acf&#038;p=76', 0, 'acf', '', 0),
(77, 1, '2017-03-21 08:51:45', '2017-03-21 08:51:45', '', 'Section2-3', '', 'publish', 'closed', 'closed', '', 'section2-3', '', '', '2017-03-21 08:51:45', '2017-03-21 08:51:45', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=between_section_img&#038;p=77', 0, 'between_section_img', '', 0),
(78, 1, '2017-03-21 08:51:19', '2017-03-21 08:51:19', '', 'Foto1', '', 'inherit', 'open', 'closed', '', 'foto1', '', '', '2017-03-21 08:51:36', '2017-03-21 08:51:36', '', 77, 'http://localhost/vcs-wp/paulius-alaune/wp-content/uploads/2017/03/Foto1.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2017-03-21 09:26:44', '2017-03-21 09:26:44', '', 'Section3-4', '', 'publish', 'closed', 'closed', '', 'section3-4', '', '', '2017-03-21 09:26:44', '2017-03-21 09:26:44', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=between_section_img&#038;p=79', 0, 'between_section_img', '', 0),
(80, 1, '2017-03-21 09:26:05', '2017-03-21 09:26:05', '', 'cover-temphory_white-black', '', 'inherit', 'open', 'closed', '', 'cover-temphory_white-black', '', '', '2017-03-21 09:26:28', '2017-03-21 09:26:28', '', 79, 'http://localhost/vcs-wp/paulius-alaune/wp-content/uploads/2017/03/cover-temphory_white-black.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2017-03-21 09:59:44', '2017-03-21 09:59:44', '', 'Section4-5', '', 'publish', 'closed', 'closed', '', 'section4-5', '', '', '2017-03-21 09:59:45', '2017-03-21 09:59:45', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=between_section_img&#038;p=81', 0, 'between_section_img', '', 0),
(82, 1, '2017-03-21 10:02:57', '2017-03-21 10:02:57', '', 'Section5-6', '', 'publish', 'closed', 'closed', '', 'section5-6', '', '', '2017-03-21 10:02:57', '2017-03-21 10:02:57', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=between_section_img&#038;p=82', 0, 'between_section_img', '', 0),
(83, 1, '2017-03-21 10:05:28', '2017-03-21 10:05:28', '', 'Section6-7', '', 'publish', 'closed', 'closed', '', 'section6-7', '', '', '2017-03-21 10:05:28', '2017-03-21 10:05:28', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=between_section_img&#038;p=83', 0, 'between_section_img', '', 0),
(84, 1, '2017-03-21 10:04:59', '2017-03-21 10:04:59', '', 'aparat-worker', '', 'inherit', 'open', 'closed', '', 'aparat-worker', '', '', '2017-03-21 10:05:20', '2017-03-21 10:05:20', '', 83, 'http://localhost/vcs-wp/paulius-alaune/wp-content/uploads/2017/03/aparat-worker.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2017-03-21 13:22:26', '2017-03-21 13:22:26', '', 'HomeSection2', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2017-03-21 13:22:26', '2017-03-21 13:22:26', '', 40, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/21/40-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2017-03-21 13:33:27', '2017-03-21 13:33:27', '', 'HomeSection2', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2017-03-21 13:33:27', '2017-03-21 13:33:27', '', 40, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/21/40-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2017-03-21 13:36:20', '2017-03-21 13:36:20', '', 'HomeSection3', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2017-03-21 13:36:20', '2017-03-21 13:36:20', '', 45, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/21/45-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2017-03-21 13:54:45', '2017-03-21 13:54:45', '', 'HomeSection4', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2017-03-21 13:54:45', '2017-03-21 13:54:45', '', 51, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/21/51-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2017-03-21 14:10:09', '2017-03-21 14:10:09', '', 'HomeSection4', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2017-03-21 14:10:09', '2017-03-21 14:10:09', '', 51, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/21/51-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2017-03-21 14:15:11', '2017-03-21 14:15:11', '', 'HomeSection5ContactForm', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2017-03-21 14:15:11', '2017-03-21 14:15:11', '', 56, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/21/56-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2017-03-21 14:23:34', '2017-03-21 14:23:34', '', 'Section7', '', 'publish', 'closed', 'closed', '', 'acf_section7', '', '', '2017-03-21 14:45:33', '2017-03-21 14:45:33', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?post_type=acf&#038;p=91', 0, 'acf', '', 0),
(92, 1, '2017-03-21 14:40:44', '2017-03-21 14:40:44', '', 'Section7', '', 'publish', 'closed', 'closed', '', 'section7', '', '', '2017-03-21 14:52:35', '2017-03-21 14:52:35', '', 0, 'http://localhost/vcs-wp/paulius-alaune/?page_id=92', 0, 'page', '', 0),
(93, 1, '2017-03-21 14:40:44', '2017-03-21 14:40:44', '', 'Section7', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2017-03-21 14:40:44', '2017-03-21 14:40:44', '', 92, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/21/92-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2017-03-21 14:52:35', '2017-03-21 14:52:35', '', 'Section7', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2017-03-21 14:52:35', '2017-03-21 14:52:35', '', 92, 'http://localhost/vcs-wp/paulius-alaune/index.php/2017/03/21/92-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0),
(8, 2, 0),
(9, 2, 0),
(10, 2, 0),
(20, 2, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 5) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Uncategorized', 'uncategorized', 0, 0),
(2, 'Main Navigation', 'main-navigation', 0, 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'false'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:5:{s:64:"99898a44c4cd5b775436f751e7f5dc9c16cc51cfec25957fada6b8ce2ad5fe12";a:4:{s:10:"expiration";i:1490202329;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1490029529;}s:64:"c5455bd07aed8667b55e631be014cf53f01129ce9646a33263d960bcb5b9afa0";a:4:{s:10:"expiration";i:1490246007;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1490073207;}s:64:"1eb3db9f5f2d322fae702fc78c316ae8465b2395b93af85d2dcda943889265b7";a:4:{s:10:"expiration";i:1490267906;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1490095106;}s:64:"3ea03448f839424d80890cfe230771872290d9f3c2a0d5da0d1c3f38c0c8acfe";a:4:{s:10:"expiration";i:1490288552;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1490115752;}s:64:"bae288bbf1f2863b7024b2cb38d56de74753953cd3b0390d2407289bcfc67724";a:4:{s:10:"expiration";i:1490342986;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1490170186;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '27'),
(17, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:15:"title-attribute";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(19, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&post_dfw=off'),
(22, 1, 'wp_user-settings-time', '1489917766'),
(23, 1, 'manageedit-acfcolumnshidden', 'a:0:{}'),
(24, 1, 'closedpostboxes_page', 'a:0:{}'),
(25, 1, 'metaboxhidden_page', 'a:6:{i:0;s:6:"acf_39";i:1;s:6:"acf_47";i:2;s:6:"acf_53";i:3;s:16:"commentstatusdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B/ln7CwpIgS3QkqdtXMGPmjjtE37ol/', 'admin', 'paulius.alaune@gmail.com', '', '2017-03-03 09:42:36', '', 0, 'admin') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

