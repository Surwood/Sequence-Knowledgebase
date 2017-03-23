<?php

/*

    Plugin Name: Sequence Knowledgebase
    Plugin URI: http://www/scaryprankster.com/
    Description: Knowledgebase for Sequence users to add and manage articles.
    Version: 1.0.5
    Author: Scary Prankster


*/



  //define plugin variables
  define('SKB_PLUGIN_URL', plugin_dir_url( __FILE__ ));
  define('SKB_PLUGIN_PATH', plugin_dir_path( __FILE__ ));

  add_action('init', 'skb_header_scripts');

  function skb_header_scripts(){
    wp_register_script('bootstrapjs', SKB_PLUGIN_URL . 'js/bootstrap.min.js',array('jquery')); // Custom scripts,a
    wp_enqueue_script('bootstrapjs');


    // custom jquery
    wp_register_script( 'form-validation-js', SKB_PLUGIN_URL . '/js/jquery.form-validation.js', array( 'jquery' ), '1.0', TRUE );
    wp_enqueue_script( 'form-validation-js' );

    // validation
    wp_register_script( 'validation', 'http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js', array( 'jquery' ) );
    wp_enqueue_script( 'validation' );

  }




  add_action('wp_enqueue_scripts', 'skb_get_scripts');

  function skb_get_scripts(){

      wp_register_style('bootstrap',SKB_PLUGIN_URL .'css/bootstrap.min.css');
      wp_enqueue_style('bootstrap');

      wp_register_style('font-awesome','https://maxcdn.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.min.css');
      wp_enqueue_style('font-awesome');

      // wp_register_style()
      wp_register_style('skb-css',SKB_PLUGIN_URL . 'css/skb.css' );
      wp_enqueue_style('skb-css');

      wp_register_script('skb-header-js',SKB_PLUGIN_URL . 'js/skb-header.js',array('jquery'),1);
      wp_register_script('skb-footer-js',SKB_PLUGIN_URL . 'js/skb-footer.js',array('jquery'),1,true);

      // die(SKB_PLUGIN_PATH . 'js/skb-header.js');


      wp_enqueue_script('jquery');
      wp_enqueue_script('skb-header-js');
      wp_enqueue_script('skb-footer-js');


      wp_localize_script('skb-js', 'php_vars', array(
          'url' => SKB_PLUGIN_URL,
          'path' =>    SKB_PLUGIN_PATH
      ));




  }

 require_once SKB_PLUGIN_PATH . 'includes/Shortcodes.php';

 // require_once SKB_PLUGIN_PATH . 'includes/Taxonomies.php';



  add_action( 'init', 'create_article_post_type' );

  function create_article_post_type() {
      register_post_type( 'skb_article',
          array(
              'labels' => array(
                  'name' => __( 'Sequence Articles' ),
                  'singular_name' => __( 'Articles' )
              ),
              'menu_icon' =>  SKB_PLUGIN_URL . "images/favicon.ico",
              'public' => true,
              'has_archive' => true,
              'taxonomies' => array('catagory'),
              'supports'=>   array('title','editor','author','thumbnail', 'excerpt', 'comments')
          )
      );

      $labels = array(
        'name'              => _x( 'Article Categories', 'taxonomy general name' ),
        'singular_name'     => _x( 'Article Category', 'taxonomy singular name' ),
        'search_items'      => __( 'Search Article Categories' ),
        'all_items'         => __( 'All Article Categories' ),
        'parent_item'       => __( 'Parent Article Category' ),
        'parent_item_colon' => __( 'Parent Article Category:' ),
        'edit_item'         => __( 'Edit Article Category' ),
        'update_item'       => __( 'Update Article Category' ),
        'add_new_item'      => __( 'Add New Article Category' ),
        'new_item_name'     => __( 'New Article Category' ),
        'menu_name'         => __( 'Article Categories' )
      );
      $args = array('labels'=> $labels,'hierarchical'=>true);
      register_taxonomy('article_category','skb_article',$args);

      $labels = array(
        'name'              => _x( 'Article Tags 1', 'taxonomy general name' ),
        'singular_name'     => _x( 'Article Tag 1', 'taxonomy singular name' ),
        'search_items'      => __( 'Search Article Tags' ),
        'all_items'         => __( 'All Article Tags 1' ),
        'parent_item'       => __( 'Parent Article Tag' ),
        'parent_item_colon' => __( 'Parent Article Tag:' ),
        'edit_item'         => __( 'Edit Article Tag' ),
        'update_item'       => __( 'Update Article Tag' ),
        'add_new_item'      => __( 'Add New Article Tag' ),
        'new_item_name'     => __( 'New Article Tag' ),
        'menu_name'         => __( 'Article Tags 1' )
      );
      $args = array('labels'=> $labels,'hierarchical'=>false);
      register_taxonomy('article_tag1','skb_article',$args);

      $labels = array(
        'name'              => _x( 'Article Tags 2', 'taxonomy general name' ),
        'singular_name'     => _x( 'Article Tag 2', 'taxonomy singular name' ),
        'search_items'      => __( 'Search Article Tags' ),
        'all_items'         => __( 'All Article Tags 2' ),
        'parent_item'       => __( 'Parent Article Tag' ),
        'parent_item_colon' => __( 'Parent Article Tag:' ),
        'edit_item'         => __( 'Edit Article Tag' ),
        'update_item'       => __( 'Update Article Tag' ),
        'add_new_item'      => __( 'Add New Article Tag' ),
        'new_item_name'     => __( 'New Article Tag' ),
        'menu_name'         => __( 'Article Tags 2' )
      );
      $args = array('labels'=> $labels,'hierarchical'=>false);
      register_taxonomy('article_tag2','skb_article',$args);

      $labels = array(
        'name'              => _x( 'Article Tags 3', 'taxonomy general name' ),
        'singular_name'     => _x( 'Article Tag 3', 'taxonomy singular name' ),
        'search_items'      => __( 'Search Article Tags' ),
        'all_items'         => __( 'All Article Tags 3' ),
        'parent_item'       => __( 'Parent Article Tag' ),
        'parent_item_colon' => __( 'Parent Article Tag:' ),
        'edit_item'         => __( 'Edit Article Tag' ),
        'update_item'       => __( 'Update Article Tag' ),
        'add_new_item'      => __( 'Add New Article Tag' ),
        'new_item_name'     => __( 'New Article Tag' ),
        'menu_name'         => __( 'Article Tags 3' )
      );
      $args = array('labels'=> $labels,'hierarchical'=>false);
      register_taxonomy('article_tag3','skb_article',$args);



  }

  // add_action('init','create_article_taxonomies');

?>
