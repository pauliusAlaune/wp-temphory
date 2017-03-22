<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wp_vcs');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '%;F.pu3966!W#9uYsqKz:XiTRtq*P+L2k,RCHq$Z~V6*LVl6[aI4X&>uhN).97/a');
define('SECURE_AUTH_KEY',  'v{`}b<e^=@ 8Iy*}2@392]rJ@1-%vOr5GPe{-^-J~)KZa]n)auO[d*=d5v|Z# yW');
define('LOGGED_IN_KEY',    'A)dE3$Pg%.24(r=!v#B7~KAQ;#5#{d(/AeP`4bEajzDJT/{jHnbPQ7.*l^R>NxYl');
define('NONCE_KEY',        '.EATrV&t^rC{89[pg<pRhc>O)l8z[CF*Q#cS99fq/A)IK5sd=J9{kd!wcN7-yc P');
define('AUTH_SALT',        'Z.KZt)=aivxeJzLQm<~M1@t.J(=b)}53GSFO3@Z[%0MIHk%JV]O4``4TI[|wh-8}');
define('SECURE_AUTH_SALT', 'xl(K$F$kU*@2}IQ_%^/u>$.6I}LGf>+Q:q%B:(8]`xGToS^AUCNQ==Q5W<)!<r8^');
define('LOGGED_IN_SALT',   '-Swl4i}KeDi=]P>Zk->(MU]^{|b37h ^N^(YURA|l;g.VB|NDPCB+yg/oUUv&&vR');
define('NONCE_SALT',       'y?wc+{oBpitQnqC/A8<1]k5s2Kfj(;Ghc!O+o)1jfCFP`l.cbJOEN-1qKM&3Dqyr');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
