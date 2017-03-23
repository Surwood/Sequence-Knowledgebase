<?php


// die(includes_url());
function my_theme_enqueue_styles() {

  // $parse_uri = explode( '/wp-content/', $_SERVER['SCRIPT_FILENAME'] );
  // require_once( $parse_uri[0] . 'wp-admin/includes/template.php' );
  // die(get_template_directory_uri());

    $parent_style = 'parent-style'; // This is 'twentyfifteen-style' for the Twenty Fifteen theme.

    wp_enqueue_style( $parent_style, get_template_directory_uri() . '/style.css',array('dashicons') );
    wp_enqueue_style(
      'frontend-dashicons',
      includes_url() . 'css/dashicons.css'
    );
    wp_enqueue_style(
        'child-style',
        get_stylesheet_directory_uri() . '/style.css',
        array( $parent_style, 'dashicons'),
        wp_get_theme()->get('Version')
    );

    wp_enqueue_style(
      'rateyo-styles',
      content_url().'/themes/sequence-child/css/jquery.rateyo.min.css'
    );
}
add_action( 'wp_enqueue_scripts', 'my_theme_enqueue_styles' );

function my_theme_enqueue_scripts(){

  wp_enqueue_script('jquery');

  wp_enqueue_script(
    'rateyo-scripts',
    content_url().'/themes/sequence-child/js/jquery.rateyo.min.js',
    array('jquery')
  );


}
add_action('wp_enqueue_scripts','my_theme_enqueue_scripts');




?>
