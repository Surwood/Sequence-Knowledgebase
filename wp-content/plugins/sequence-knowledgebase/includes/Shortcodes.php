<?php

  function sequence_add_article($atts){



    $user = wp_get_current_user();

    $author_name = $user->display_name;

    if(isset($_REQUEST['article'])){
      $article = get_post($_REQUEST['article']);
      $article_author = get_user_by('id',$article->post_author);
      $author_name = $article_author->display_name;
    }

    if(
      !in_array('sequence_author',(array)$user->roles ) &&
      !in_array('sequence_approver',(array)$user->roles ) &&
      !in_array('sequence_admin',(array)$user->roles )
    ){
      wp_redirect(home_url('/login/'));
      exit;
    }

    if ( isset( $_POST['submitted'] ) && isset( $_POST['post_nonce_field'] ) && wp_verify_nonce( $_POST['post_nonce_field'], 'post_nonce' ) ) {

        if ( trim( $_POST['postTitle'] ) === '' ) {
            $postTitleError = 'Please enter a title.';
            $hasError = true;
        }

        $post_information = array(
            'post_title' => wp_strip_all_tags( $_POST['postTitle'] ),
            'post_content' => $_POST['postContent'],
            'post_excerpt' =>  $_POST['postSummary'],
            'post_type' => 'skb_article',
            'post_status' => 'pending'
        );





        //if user role > author, post status = publish

        if(
          in_array('sequence_approver',(array)$user->roles ) ||
          in_array('sequence_admin',(array)$user->roles )
        ){
          $post_information['post_status'] = 'publish';
          if($_POST['postApprover'] != $user->ID){
            $post_information['post_status'] = 'pending';
          }

          $submit_text = "Publish Article";
        } else {

          $submit_text = "Submit for Approval";
        }


        // update categories and Tags



        if(isset($_REQUEST['article'])){

          $post_id = $_REQUEST['article'];

          if($article = get_post($post_id)){


            if(
              !in_array('sequence_approver',(array)$user->roles ) &&
              !in_array('sequence_admin',(array)$user->roles )
            ){
              if($article->post_author != get_current_user_id()){
                wp_redirect(home_url('/login/'));
                exit;
              }
            }
            $post_information['ID'] = $post_id;
            wp_update_post($post_information);
          } else {
            $post_id = wp_insert_post( $post_information );
            $article = get_post($post_id);
          }
        } else {
          $post_id = wp_insert_post( $post_information );
          $article = get_post($post_id);
        }

        if (isset($_POST['postCategories1'])){
          $categories = array((int)$_POST['postCategories1']);
          wp_set_object_terms($post_id,$categories,'article_category');
        }

        if (isset($_POST['postCategories2'])){
          $categories = array((int)$_POST['postCategories2']);
          wp_set_object_terms($post_id,$categories,'article_tag1');
        }

        if (isset($_POST['postCategories3'])){
          $categories = array((int)$_POST['postCategories3']);
          wp_set_object_terms($post_id,$categories,'article_tag2');
        }

        if (isset($_POST['postCategories4'])){
          $categories = array((int)$_POST['postCategories4']);
          wp_set_object_terms($post_id,$categories,'article_tag3');
        }

        // die('test');

        if(isset($_POST['postApprover'])){
          $article->post_approver = $_POST['postApprover'];
          // die($article->post_approver);
          update_post_meta($post_id,'post_approver',$article->post_approver);
        }

        if(in_array('sequence_approver',(array)$user->roles )){

          $email = new Sequence_Email($article->post_author,$user->ID,$article->ID);
          // var_dump($email);
          $email->send("approval");
        } elseif(in_array('sequence_author',(array)$user->roles )){

          $email = new Sequence_Email($user->ID,$_POST['postApprover'],$article->ID);
          // var_dump($email);
          $email->send("request");
        }

    } else {
      if(isset($_REQUEST['article'])){
        $article_id = $_REQUEST['article'];
        $article = get_post($article_id);
        $article->postApprover = get_post_meta($article_id,'post_approver',true);
        $_POST['postTitle'] = $article->post_title;
        $_POST['postSummary'] = $article->post_excerpt;
        $_POST['postContent'] = $article->post_content;
        $_POST['postApprover'] = $article->post_approver;
        $_POST['postCategories1'] = get_the_terms($article_id,'article_category')[0]->term_id;
        $_POST['postCategories2'] = get_the_terms($article_id,'article_tag1')[0]->term_id;
        $_POST['postCategories3'] = get_the_terms($article_id,'article_tag2')[0]->term_id;
        $_POST['postCategories4'] = get_the_terms($article_id,'article_tag3')[0]->term_id;





        // $_POST['postApprover'] =
      } else {
        $article = new stdClass();
      }
    }

    $user = wp_get_current_user();



    include SKB_PLUGIN_PATH . "views/Dashboard/Add_Article.php";
  }

  add_shortcode('sequence_add_article','sequence_add_article');


  function sequence_recent_articles($atts){

    $user = wp_get_current_user();
    global $wpdb;

    $pending_approval = array();

    if(
      in_array('sequence_approver',(array)$user->roles ) ||
      in_array('sequence_admin',(array)$user->roles )
    ){

      $sql = "
        SELECT
        *
        FROM ". $wpdb->posts ." posts
        JOIN ". $wpdb->postmeta ." meta ON posts.ID = meta.post_id
        WHERE posts.post_type = 'skb_article'
        AND posts.post_status = 'pending'
        AND meta.meta_key = 'post_approver'
        AND meta.meta_value = '". get_current_user_id() ."'

      ";


      $pending_approval = $wpdb->get_results($sql);
    }

    $sql = "
      SELECT
      ID
      FROM ". $wpdb->posts ." posts
      WHERE posts.post_type = 'skb_article'
      AND posts.author_id = '". $user->ID ."'
      AND (posts.post_status = 'pending' || posts.post_status = 'publish')

    ";

    $your_articles = array();
    $your_articles = $wpdb->get_results($sql);


    // if(count($your_articles) > 0){
    //   $args = array(
    //     'post_type' =>  'skb_article',
    //     'post_in' => $your_articles
    //   );
    //   $your_query = new WP_Query($args);
    // }



    // return "TEST";

    


    include SKB_PLUGIN_PATH . "views/Dashboard/Recent_Articles.php";



  }
  add_shortcode('sequence_recent_articles','sequence_recent_articles');


  function sequence_pending_articles($atts){

    // $user = wp_get_current_user();
    // if(in_array('sequence_approver',$user->roles)){
    //   $args = array('post_type'=>'skb_article');
    //   $query = new WP_Query($args);
    //
    //   // include SKB_PLUGIN_PATH . "views/Dashboard/Pending_Articles.php";
    // }




  }

  add_shortcode('sequence_pending_articles','sequence_pending_articles');


  function sequence_view_article($atts){

    $article_id = $_REQUEST['article'];
    $article = get_post($article_id);
    $article->categories = get_the_terms($article_id,'article_category');
    if(!is_array($article->categories)){
      $article->categories = array('No categories found. ');
    }
    $article->tags1 = get_the_terms($article_id,'article_tag1');
    if(!is_array($article->tags1)){
      $tag = new stdClass();
      $tag->name = 'No categories found. ';
      $article->tags1 = array($tag);
    }
    $article->tags2 = get_the_terms($article_id,'article_tag2');
    if(!is_array($article->tags2)){
      $tag = new stdClass();
      $tag->name = 'No categories found. ';
      $article->tags2 = array($tag);
    }
    $article->tags3 = get_the_terms($article_id,'article_tag3');
    if(!is_array($article->tags3)){
      $tag = new stdClass();
      $tag->name = 'No categories found. ';
      $article->tags3 = array($tag);
    }

    $author = get_user_by('id',$article->post_author);
    $approver_id = get_post_meta($article_id,'post_approver',true);
    $approver = get_user_by('id',$approver_id);

    $article_ratings = get_post_meta($article_id,'article_rating');
    $my_rating = get_current_user_id() . '_0';
    if(count($article_ratings > 0)){
      foreach($article_ratings as $rating){
        list($user_id,$value) = explode('_',$rating);
        if($user_id == get_current_user_id()){
          $my_rating = $user_id . '_' . $value;
        }
      }
    }

    $article_views = get_post_meta($article_id,'article_view');
    if(!in_array(get_current_user_id() . '_' . date('Ymd'),$article_views)){
      add_post_meta($article_id,'article_view',get_current_user_id() . '_' . date('Ymd'));
    }

    $article->view_count = count(get_post_meta($article_id,'article_view'));

    $args = array('p'=>$article->ID,'post_type'=>'skb_article');
    $wp_query = new WP_Query($args);

    $edit_article_button = "display: none;";

    if($article->post_author == get_current_user_id()){
      $edit_article_button = "";
    }

    include SKB_PLUGIN_PATH . "views/Dashboard/View_Article.php";



  }

  add_shortcode('sequence_view_article','sequence_view_article');



 ?>
