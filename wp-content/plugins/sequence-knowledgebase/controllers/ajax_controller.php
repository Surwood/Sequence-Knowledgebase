<?php

  //testing git ignore
  //testing again snoogens

   $parse_uri = explode( '/wp-content/', $_SERVER['SCRIPT_FILENAME'] );
   require_once( $parse_uri[0] . '/wp-load.php' );

   require_once SKB_PLUGIN_PATH . 'models/Email.php';

    if ($_GET['method'] == "test"){
        test();
    } elseif ($_GET['method'] == "unpublish_article"){
      unpublish_article();
    } elseif ($_GET['method'] == "update_article_rank"){
      update_article_rank();
    } elseif ($_GET['method'] == "get_search_results"){
      get_search_results();
    } elseif ($_GET['method'] == "reject_article"){
      reject_article();
    } elseif ($_GET['method'] == "auto_save"){
      auto_save();
    }

    function auto_save(){

      $response = new stdClass();
      $response->message = "No action taken.";

      $user = wp_get_current_user();

      $post_information = array(
        'post_author' =>  $user->ID,
        'post_type' => 'skb_article',
        'post_status' => 'draft'
      );



      if(isset($_POST['postTitle'])){
        $post_information['post_title'] = $_POST['postTitle'];
      } else {
        if(isset($_POST['postSummary'])){
            $post_information['post_title'] = substr($_POST['postSummary'],0,55);
        } elseif (isset($_POST['postContent'])) {
          $post_information['post_title'] = substr($_POST['postContent'],0,55);
        } else {
          $response->message = "Nothing to save. ";
          echo json_encode($response);
          exit;
        }
      }

      if(isset($_POST['postSummary'])){
        $post_information['post_excerpt'] = $_POST['postSummary'];
      }
      if(isset($_POST['postContent']) && trim($_POST['postContent']) != ""){

        $post_information['post_content'] = $_POST['postContent'];
      }



      if(isset($_POST['article_id']) && $_POST['article_id'] != ""){


        // update draft
        $post = get_post($_POST['article_id']);


        if($user->ID == $post->post_author){
          $response->article_id = $_POST['article_id'];
          $post_information['ID'] = $_POST['article_id'];
          $post_information['post_author'] = $post->post_author;
          if(wp_update_post($post_information)){
            $response->message = "Article saved. ";
          } else {
            $response->message = "Article failed to save. ";
          }
        }




      } else {

        // create draft
        if($response->article_id = wp_insert_post( $post_information )){
          $response->message = "New article created.";
        } else {
          $response->message = "Nothing to save. ";
        }


      }

      if($post_id = $response->article_id){
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
        if(isset($_POST['postApprover'])){
          $article->post_approver = $_POST['postApprover'];
          update_post_meta($post_id,'post_approver',$article->post_approver);
        }
      }

      echo json_encode($response);

    }

    function reject_article(){

      if(isset($_POST['article_id'])){
        $article_id = $_POST['article_id'];
        $article = array(
          'ID'  =>  $article_id,
          'post_status' =>  "rejected"
        );
        wp_update_post($article);
        if(isset($_POST['message'])){
          $user = wp_get_current_user();
          $article = get_post($_POST['article_id']);
          $email = new Sequence_Email($article->post_author,$user->ID,$article->ID,$_POST['message']);
          // var_dump($email);
          $email->send("rejection");
        }
      }
      echo "1";

    }


    function get_search_results(){

        $user = get_current_user();

        $search_filters = array();

        global $wpdb;
        $search_term = "";
        $dateRange = "";
        $closeBrac = "";

        $cat = trim($_POST['postCategories1']);
        $tag1 = trim($_POST['postCategories2']);
        $tag2 = trim($_POST['postCategories3']);
        $tag3 = trim($_POST['postCategories4']);
        $item = trim($_POST['look']);
        $dateBefore = trim($_POST['dateBefore']);
        $dateAfter = trim($_POST['dateAfter']);

        // var_dump($dateAfter);

        //building search query depending on several conditions.
        $search_sql = "SELECT  p.ID, p.post_title, p.post_excerpt, p.post_date
        FROM ". $wpdb->posts ." p
        LEFT JOIN ".$wpdb->terms." r ON (p.ID = r.object_id)
        LEFT JOIN ".$wpdb->postmeta." m ON ( p.ID = m.post_id )
        WHERE 1=1 ";
        if(!empty($dateAfter) && !empty($dateBefore) ) {

            $dateAfter = $dateAfter.' 23:59:59';
            $dateBefore = $dateBefore.' 00:00:00';

            $search_filters['after'] = $dateAfter;
            $search_filters['before'] = $dateBefore;
            $closeBrac = ')';
            $dateRange = "AND ((( p.post_date > '$dateAfter' AND p.post_date < '$dateBefore' ))";

        }elseif(empty($dateAfter) && !empty($dateBefore)){

            // $dateAfter = $dateAfter.' 00:00:00';
            // $dateBefore = $dateBefore.' 23:59:59';
            $dateAfter = $dateAfter.' 23:59:59';
            $dateBefore = $dateBefore.' 00:00:00';

            // $search_filters['after'] = $dateAfter;
            $search_filters['before'] = $dateBefore;
            $closeBrac = ')';
            $dateRange = "AND ((( p.post_date < '$dateBefore' ))";

        }elseif(!empty($dateAfter) && empty($dateBefore)){

            // $dateAfter = $dateAfter.' 00:00:00';
            // $dateBefore = $dateBefore.' 23:59:59';
            $dateAfter = $dateAfter.' 23:59:59';
            $dateBefore = $dateBefore.' 00:00:00';

            $search_filters['after'] = $dateAfter;
            // $search_filters['before'] = $dateBefore;
            $closeBrac = ')';
            $dateRange = "AND ((( p.post_date > '$dateAfter' ))";

        }else{
            // Do Nothing
        }
        $search_sql .=$dateRange;

        if( $cat!= -1 || $tag1!= -1 || $tag2!= -1 || $tag3!= -1 ) {
            $search_sql .= "
            AND(
            r.term_taxonomy_id IN ($cat)
            OR r.term_taxonomy_id IN ($tag1)
            OR r.term_taxonomy_id IN ($tag2)
            OR r.term_taxonomy_id IN ($tag3)
            )";
            if($cat != -1){
              $search_filters['cat'] = $cat;
            }
            if($tag1 != -1){
              $search_filters['tag1'] = $tag1;
            }
            if($tag2 != -1){
              $search_filters['tag2'] = $tag2;
            }
            if($tag3 != -1){
              $search_filters['tag3'] = $tag3;
            }

        }
        if(!empty($item)) {
            $search_sql .= "
            AND ((
            (p.post_title LIKE '%$item%')
            OR (p.post_excerpt LIKE '%$item%')
            OR (p.post_content LIKE '%$item%')
            ))";
            $search_filters['string'] = $item;
        }
        $search_sql .="
        $closeBrac
        AND p.post_type = 'skb_article'
        AND ((p.post_status = 'publish'))
        GROUP BY p.ID
        ORDER BY p.post_date DESC
        "; // LIMIT 0, 50   [no limit has no problem]

        $pageposts = $wpdb->get_results($search_sql,OBJECT);

        require_once SKB_PLUGIN_PATH . "models/Search.php";

        if(isset($_POST['user']) && ($_POST['user'] != 0)){
          $search_filters['user'] = get_current_user_id();
        }

        if(isset($_POST['posts_per_page'])){
          //$search_filters['posts_per_page'] = $_POST['posts_per_page'];
        }



        $search = new Article_Search($search_filters);

        $post_ids = array();
        foreach($search->get_results()->posts as $post){
          $post_ids[] = $post->ID;
        }

        // var_dump

        $search_sql = "
          SELECT  p.ID, p.post_title, p.post_excerpt, p.post_date
          FROM ". $wpdb->posts ." p
          LEFT JOIN ".$wpdb->postmeta." m ON ( p.ID = m.post_id )
          WHERE
        ";

        foreach($post_ids as $key => $post_id){
          $post_ids[$key] = " p.ID = '" . $post_id . "' ";
        }

        if(count($post_ids) > 0){
          $search_sql .= implode(' OR ',$post_ids);
        } else {
          $search_sql .= " 1=0 ";
        }

        $search_sql .= " GROUP BY p.ID ORDER BY p.post_date DESC ";

        // var_dump($search->get_results()->query);
        // var_dump($post_ids);

        $pageposts = $wpdb->get_results($search_sql);

      include SKB_PLUGIN_PATH . 'views/Dashboard/Search_Results.php';

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
