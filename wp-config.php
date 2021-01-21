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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'substrate' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'j~cT|,LHbu*6tz#|f+(g7pY+5P),>}_QN}8<(:e1:>d)3in0K<{Q_:9..~#4}/<n' );
define( 'SECURE_AUTH_KEY',  '&$X-;e?WM.SuxZv8pj(~i#u{Mj|}<xGH <W/ ~egR~v.JG#4PDqL1Df!I)GyhLs{' );
define( 'LOGGED_IN_KEY',    '%QdnTP*&=d|=Y1ND0)Y/{L!jC|tmBhi%SR+I0NFdy8wJ7FDJSa`bp?[WQ?kD:m|m' );
define( 'NONCE_KEY',        'X,7TeK;bVv$wJ)-03az$MsM6:,*yv@mdVkJ$EC+F~X&~Ml/B>2=fZ.%`]2&f#T3T' );
define( 'AUTH_SALT',        '_#>P*)^S&UDFdc#}XTCG6K)CGk+Lb3 ?~Q._( -BsYHB*4/#gX3&U9ZQnsOmm2Cu' );
define( 'SECURE_AUTH_SALT', 'T3s?J(CMPq^dRxZRj*]]IeU5`Osz<.4}m|KM6i8Ou1xeo_g=?sx+_Ri%]Kb<0De>' );
define( 'LOGGED_IN_SALT',   'qvt-vI%)2-SIkZ #}GS*|UN|G+m.:i|X4G&^VO}`0`wN>9N=Y6<tv*Bqq[(pH3VP' );
define( 'NONCE_SALT',       '6xcU6O|~UzDhK!|d2]IHH/HL|@b@#BwW[8].^/UIv)+fIgjs8--<^X=c8Ztz+oH(' );

/**#@-*/

/**
 * WordPress Database Table prefix.
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

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
