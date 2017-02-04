<!DOCTYPE html>
<html <?php language_attributes(); ?>>
    <head>
        <meta charset="<?php bloginfo( 'charset' ); ?>" />
		<title><?php wp_title();?></title>
        <link rel="stylesheet" href="<?php echo get_stylesheet_uri(); ?>" type="text/css" media="screen" />
        <link href='http://fonts.googleapis.com/css?family=Ubuntu|Oxygen' rel='stylesheet' type='text/css'>
        <link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
		<link rel="shortcut icon" type="image/x-icon" href="<?php bloginfo('template_directory'); ?>/images/favicon.ico">
        <?php wp_head(); ?>
    </head>
    <body <?php body_class(); ?>>
		<div id="utility">
			<div id="utility-wrapper">
				<?php wp_nav_menu( array( 'theme_location' => 'utility-menu' ) ); ?>
			</div>
		</div>
		<div id="page">
			<div id="header">
				<?php if(get_field('logo', 'option')): ?>
					<a href="<?php echo esc_url( home_url( '/' ) ); ?>" id="logo"><img id="logo-image" src="<?php the_field('logo', 'option'); ?>" alt="<?php bloginfo('name'); ?>" /></a>
				<?php endif; ?>
				<?php if(get_field('phone_number', 'option')): ?>
					<div id="phone-number-tagline">Office No.</div>
					<div id="phone-number"><?php the_field('phone_number', 'option'); ?></div>
				<?php endif; ?>
				<div id="header-menu">
					<?php wp_nav_menu( array( 'theme_location' => 'header-menu' ) ); ?>
				</div>
			</div>