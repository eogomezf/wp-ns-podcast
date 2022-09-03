<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wp-ns-podcast' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '<^O>R~@WA[>]VvsGx3l!N>vfzVXvv~9NO-Az$$59`kuD^|*P_.r`|^rP6_)4y7G%' );
define( 'SECURE_AUTH_KEY',  '_}H>H8L,/]ZvBj%>[uZkg@?(zjifaz7>eB37zoCj%6_5.gShT %kZi(n`<>GdQeU' );
define( 'LOGGED_IN_KEY',    'z^n^Q[AY6})frZkC4dJmzH9Q/1l1Ff-}/XWyVwnn#Oqa|((m_dmic-P??H*Az2iE' );
define( 'NONCE_KEY',        '1bHQ@53R%%(%`%%[!>s)qwYvcM)n0z@!XT/4qA+)[>U48LwMKG )n& t]PHHk?~Q' );
define( 'AUTH_SALT',        'k;zU#y`(7E<Z9MM8dMJH)8-^t7Tdj/AR,<jXV|AOhx%;?I(Z7xz!W9K*>||4Ia+F' );
define( 'SECURE_AUTH_SALT', 'HC1&(YPbDx0<.PQ$JZ:%gRWR@c?H|iMsaP)W6k:&!<?SC0,~FLW-a`omoRQ7z.J*' );
define( 'LOGGED_IN_SALT',   'E8[r6|K%Q0%q{B5R[^HABYp-lTtuene2h{u=HHE-AVVRj5qY27Zl08 _s1_p69K}' );
define( 'NONCE_SALT',       'WI/P23m{e4DL65E&Sl3Ab>qT||UyuD3N<7y>0Eze3d+L;K|AtN2*`+#7]3?]?y@A' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
