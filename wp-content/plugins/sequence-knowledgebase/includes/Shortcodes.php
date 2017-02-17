<?php

  function sequence_add_article($atts){

    if ( isset( $_POST['submitted'] ) && isset( $_POST['post_nonce_field'] ) && wp_verify_nonce( $_POST['post_nonce_field'], 'post_nonce' ) ) {

        if ( trim( $_POST['postTitle'] ) === '' ) {
            $postTitleError = 'Please enter a title.';
            $hasError = true;
        }

        $post_information = array(
            'post_title' => wp_strip_all_tags( $_POST['postTitle'] ),
            'post_content' => $_POST['postContent'],
            'post_type' => 'post',
            'post_status' => 'pending'
        );

      $post_id = wp_insert_post( $post_information );

      if ( $post_id ) {
          wp_redirect( home_url() );
          exit;
      }

    }


    include SKB_PLUGIN_PATH . "views/Dashboard/Add_Article.php";
  }

  add_shortcode('sequence_add_article','sequence_add_article');





 ?>
