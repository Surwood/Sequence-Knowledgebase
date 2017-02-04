<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'db1062794_wordpress');

/** MySQL database username */
//define('DB_USER', 'u1062794_wp');
define('DB_USER', 'jay');

/** MySQL database password */
//define('DB_PASSWORD', 'd+CO4v}0Ws');
define('DB_PASSWORD', 'password');

/** MySQL hostname */
//define('DB_HOST', 'lin-mysql09.hostmanagement.net');
define('DB_HOST', 'localhost');


/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

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
define('AUTH_KEY',         'r^Y@fL{6`@Jsxe;lt8[5X|RnV~1f.ND?jKWgJ[)Wig|^rM-CfetkJmbyG!dL$.}+');
define('SECURE_AUTH_KEY',  '10sN|-NXkRPMppGy&qCn+MUO~JlvDQ%/ysJ?:F&3E/woi]cpdH=UI:=h?>Td/ivT');
define('LOGGED_IN_KEY',    '9X/z-i2Yu@:he8Fsu!<?bE^t)upa;qkEwt-d-w|L9)tDt{@:{yC+b^#I~Z+x7CQ(');
define('NONCE_KEY',        'yMN2V%@&cjW-)M nP2NY1csC/]xW&OAWjxTtUdILAiW3*F00JF .lR@TA65}hm^Q');
define('AUTH_SALT',        'RWB^<U#+8R0f+/{[Xv [T0,`JnEyS~JI&OX?_NU_6|ILe%D8sUG=E-?1;%Hqi8Lo');
define('SECURE_AUTH_SALT', '9/K51[lE1Co&T7,f[pUrtHo+D|-rd6||~+oj~fu+7AG22C)Y(M**t^~eT>yf@}p*');
define('LOGGED_IN_SALT',   'J;_$l(@=48p|+veJmf{j&S>_bk[T9Hq=wPvRl*S|(SjH=q:!&^?<!>4m/^r:|`F%');
define('NONCE_SALT',       '@e17}<95|*Hsv|_<|t.9`eT.}(NB4c-S(F<2|CLmi-er2Qi5ah$npTA|`wV|iLBV');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
/// $table_prefix  = 'wp_wxnnNt6qb6_';

 $table_prefix  = 'wp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
