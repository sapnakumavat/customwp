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
define( 'DB_NAME', 'theme' );

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
define( 'AUTH_KEY',         'tjopg$}dL&x4dfS?$!83o/Qd/4+[paL>Tr|Z`<)o Gb,:eD[)pmW8B.v60~Evxul' );
define( 'SECURE_AUTH_KEY',  '2<pS<{.j8TxkpPO1q`K>P8t$4%!an^PgI~SJ,RL7}Y._Tl-C<_|$%m1;RFCwFZj&' );
define( 'LOGGED_IN_KEY',    'Gua7!b!f[awZ 4qvu~h!g1Qx(]F05X(0PqM<_AsaYpu4jGHS}0-:P?tRA:oZ$m34' );
define( 'NONCE_KEY',        's_R@&9DQK5KbI*+UO,;Wk+.6xh}qb)0o4bkJw<~{rqXrklp.,kk,|X&{c&_i(4LH' );
define( 'AUTH_SALT',        'gi>/L/Us{P442wgl@;i%Oq:Y3@Yc#i>:]hJ@sn*>eZpiEW0NV:I3=gXF)4o78RNr' );
define( 'SECURE_AUTH_SALT', 'E_3Wa2ir&5Yj&uxIQ*g^Qs6o(D65+c)TkJ^aU3V@)t/`7+6@~{%Swtg?,qA}&E3x' );
define( 'LOGGED_IN_SALT',   'BF.dV=|~*hyIsPw }VcLxM-V6`dKZxRy<s4  6@GY=!J*pX{$@@WOJd2ac:.uLB?' );
define( 'NONCE_SALT',       '_x@E.]bvsMBZ(cpKi9v~4Ue6howFhF5<$]|x$CZ%x@VF%a/@Gq}e%@-o>KdsC2l0' );

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
