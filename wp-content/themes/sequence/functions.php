<?php


/**
 * Declare widget zones.
 */
if (function_exists('register_sidebar')) {
	register_sidebar(array(
		'name' => 'Blog Sidebar Widgets',
		'id'   => 'blog-sidebar-widgets',
		'description'   => 'These are widgets displayed in the sidebar on blog pages.',
		'before_widget' => '<div id="%1$s" class="widget clearfix %2$s">',
		'after_widget'  => '</div>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>'
	));
}


/**
 * Register menus.
 */
function register_menus() {
	register_nav_menus(
		array(
			'utility-menu' => __( 'Utility Menu' ),
			'header-menu' => __( 'Header Menu' ),
			'footer-menu' => __( 'Footer Menu' )
		)
	);
}
add_action( 'init', 'register_menus' );


/**
 * Enqueue styles and scripts.
 */
if(!is_admin()) {
	function load_styles_and_scripts() {
		wp_deregister_script( 'jquery' );
		wp_register_script( 'jquery', 'http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js', false );
		wp_register_script( 'flexslider', get_template_directory_uri() . '/js/jquery.flexslider-min.js', array('jquery'), '1.0', false );
		wp_register_script( 'main', get_template_directory_uri() . '/js/main.js', array('jquery'), '1.0', false );
		wp_enqueue_script( 'jquery' );
		wp_enqueue_script( 'flexslider' );
		wp_enqueue_script( 'main' );
	}
	add_action( 'wp_enqueue_scripts', 'load_styles_and_scripts' );
}


/**
 * Add custom CSS to login screen.
 */
function custom_login() { 
	echo '<link rel="stylesheet" type="text/css" href="'.get_bloginfo('template_directory').'/css/custom-login.css" />'; 
}
add_action('login_head', 'custom_login');


?>