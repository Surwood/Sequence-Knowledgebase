<?php

  //testing git ignore
  //testing again snoogens

   $parse_uri = explode( '/wp-content/', $_SERVER['SCRIPT_FILENAME'] );
   require_once( $parse_uri[0] . '/wp-load.php' );

    if ($_GET['method'] == "test"){
        test();
    } elseif ($_GET['method'] == "unpublish_article"){
      unpublish_article();
    } elseif ($_GET['method'] == "update_article_rank"){
      update_article_rank();
    }

    function update_article_rank(){
      $rank = $_POST['rank'];
      $article_id = $_POST['article_id'];
      $article_ranks = get_post_meta($article_id,'article_rating');
      $found = false;

      if(count($article_ranks) > 0){
        foreach($article_ranks as $article_rank){
          list($user_id,$value) = explode('_',$article_rank);
          if($user_id == get_current_user_id()){
            $found = true;
            update_post_meta($article_id,'article_rating',get_current_user_id() . '_' . $rank,$article_rank);
          }
        }
      }

      if(!$found){
        add_post_meta($article_id,'article_rating',get_current_user_id() . '_' . $rank);
        // echo 'no';
      } else {
        // echo 'yes';
      }
      echo count($article_ranks);
      // var_dump($article_ranks);
    }

    function unpublish_article(){

      if(isset($_POST['article_id'])){
        $article_id = $_POST['article_id'];
        $article = array(
          'ID'  =>  $article_id,
          'post_status' =>  "private"
        );
        wp_update_post($article);
      }
      echo "1";

    }

    function test(){

        require( SKB_PLUGIN_PATH . "views/test.php" );

    }

?>
