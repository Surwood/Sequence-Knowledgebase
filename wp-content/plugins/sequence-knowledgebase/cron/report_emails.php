<?php


  $parse_uri = explode( '/wp-content/', $_SERVER['SCRIPT_FILENAME'] );
  require_once( $parse_uri[0] . '/wp-load.php' );



  $args = array(
    'post_type'=>'skb_article',
    'post_status' =>  'publish'
  );
  
  $posts = get_posts($args);




 ?>
