<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package new-demo
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
 
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<header>
    <div class="header-menu">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6 col-6">
                    <div class="logo"><a href=""> <img src="<?php echo __BASE_URL__ ?>/images/logo.png" class="img-fluid" alt=""></a></div>
                </div>
                <div class="col-md-6 col-6 text-right"><div class="link-branding"><a href="" class="" target="_blank">Get started!&nbsp;&nbsp;&nbsp;↗</a></div></div>
            </div>
        </div>
    </div>
</header>
 