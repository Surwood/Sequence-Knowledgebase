<?php

  add_shortcode('sequence_add_article','sequence_add_article');
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

    $submit_test = false;

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
              if($article->post_author != $user->ID){
                $submit_button = "Approve";
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

        $article->post_approver = get_post_meta($article->ID,'post_approver',true);

        if(isset($_POST['postApprover'])){
          $article->post_approver = $_POST['postApprover'];
          // die($article->post_approver);
          update_post_meta($post_id,'post_approver',$article->post_approver);
        }

        if(in_array('sequence_author',(array)$user->roles ) || in_array('sequence_approver',(array)$user->roles ) in_array('sequence_admin',(array)$user->roles )){

          if(in_array('sequence_approver',(array)$user->roles )  && ($article->post_approver == $user->ID)){

            $email = new Sequence_Email($article->post_author,$article->post_approver,$article->ID);
            // var_dump($email);
            $email->send("approval");
          } else {

            $email = new Sequence_Email($user->ID,$article->post_approver,$article->ID);
            // var_dump($email);
            $email->send("request");

          }

        }




        $submit_test = true;



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

    if($submit_test){
      include SKB_PLUGIN_PATH . 'views/Tools/Launch_Modal.php';
    } else {
      include SKB_PLUGIN_PATH . "views/Dashboard/Add_Article.php";
    }

  //

  }



    add_shortcode('sequence_recent_articles','sequence_recent_articles');
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
        AND meta.meta_value = '". $user->ID ."'

      ";
      $pending_approval = $wpdb->get_results($sql);
    } elseif (current_user_can('sequence_author')){

      $sql = "
        SELECT
        *
        FROM ". $wpdb->posts ." posts
        JOIN ". $wpdb->postmeta ." meta ON posts.ID = meta.post_id
        WHERE posts.post_type = 'skb_article'
        AND posts.post_status = 'rejected'
        AND posts.post_author = '". $user->ID ."'

      ";
      $rejected_articles = $wpdb->get_results($sql);

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



  }



  add_shortcode('sequence_pending_approval','sequence_pending_approval');
  function sequence_pending_approval($atts){

    global $wpdb;
    $user = wp_get_current_user();
    $pending_approval = array();
    if(
      in_array('sequence_approver',(array)$user->roles ) ||
      in_array('sequence_admin',(array)$user->roles )
    ){
      $sql = "
        SELECT *
        FROM ". $wpdb->posts ." posts
        JOIN ". $wpdb->postmeta ." meta ON posts.ID = meta.post_id
        WHERE posts.post_type = 'skb_article'
        AND posts.post_status = 'pending'
        AND meta.meta_key = 'post_approver'
        AND meta.meta_value = '". $user->ID ."'
      ";
      // $pending_approval = array();
      $pending_approval = $wpdb->get_results($sql);
      // if(count($results > 0)){
      //   foreach($results as $row){
      //     $pending_approval[] = $row->ID;
      //   }
      // }

      // var_dump($pending_approval);

      //
      // if(count($pending_approval)>0){
      //   $args = array('post_type'=>'skb_article');
      //   $query = new WP_Query($args);
      //
      // }

      include SKB_PLUGIN_PATH . "views/Dashboard/Pending_Approval.php";



    }


  }

  add_shortcode('sequence_featured_articles','sequence_featured_articles');
  function sequence_featured_articles($atts){
    // require_once SKB_PLUGIN_PATH . "models/Search.php";

    // look: $('#s').val(),
    // postCategories1: $('#postCategories1').val(),
    // postCategories2: $('#postCategories2').val(),
    // postCategories3: $('#postCategories3').val(),
    // postCategories4: $('#postCategories4').val(),
    // dateAfter: $('#dateAfter').val(),
    // dateBefore: $('#dateBefore').val()



    // $featured_articles = new WP_Query(
    //   array(
    //     'post_type' =>  "skb_article",
    //     'post_status' =>  "publish",
    //     'posts_per_page'  =>  3
    //   )
    // );
    //
    include SKB_PLUGIN_PATH . "views/Dashboard/Featured_Articles.php";
  }

  add_shortcode('sequence_user_articles','sequence_user_articles');
  function sequence_user_articles($atts){
    global $wpdb;
    $user = wp_get_current_user();
    $pending_approval = array();
    if(
      in_array('sequence_approver',(array)$user->roles ) ||
      in_array('sequence_admin',(array)$user->roles ) ||
      in_array('sequence_author',(array)$user->roles )

    ){
      $sql = "
        SELECT posts.ID
        FROM ". $wpdb->posts ." posts
        WHERE posts.post_type = 'skb_article'
        AND posts.post_author = '". $user->ID ."'
      ";
      $user_articles = array();
      $results = $wpdb->get_results($sql);
      if(count($results > 0)){
        foreach($results as $post_id){
          $user_articles[] = $post_id->ID;
        }
      }
      // var_dump($user_articles);

      if(count($user_articles)>0){
        $args = array('post_type'=>'skb_article','post__in'=>$user_articles);
        $query = new WP_Query($args);
        include SKB_PLUGIN_PATH . "views/Dashboard/User_Articles.php";
      }

    }
    // include SKB_PLUGIN_PATH . "views/Dashboard/User_Articles.php";
  }



  add_shortcode('sequence_article_drafts','sequence_article_drafts');
  function sequence_article_drafts($atts){
    global $wpdb;
    $user = wp_get_current_user();
    $article_drafts = array();
    if(
      in_array('sequence_approver',(array)$user->roles ) ||
      in_array('sequence_admin',(array)$user->roles ) ||
      in_array('sequence_author',(array)$user->roles )
    ){
      $sql = "
        SELECT *
        FROM ". $wpdb->posts ." posts
        WHERE posts.post_type = 'skb_article'
        AND ( posts.post_status = 'draft' OR posts.post_status = 'rejected')
        AND posts.post_author = '". $user->ID ."'
      ";
      $article_drafts = $wpdb->get_results($sql);
      include SKB_PLUGIN_PATH . "views/Dashboard/Article_Drafts.php";
    }
  }





  function sequence_view_article($atts){

    $user = wp_get_current_user();

    // var_dump($user);

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


  add_shortcode('test_email_shortcode','test_email_shortcode');

  function test_email_shortcode(){

    $headers = "From: gsequence@sequenceqcs.com\r\n";
    $headers .= "Reply-To: no-reply\r\n";
    $headers .= "MIME-Version: 1.0\r\n";
    $headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";

    $message = '
      <html>
        <head>
           <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
           <title>Nettuts Email Newsletter</title>
           <style type="text/css">
             	a {color: #4A72AF;}
            	body, #header h1, #header h2, p {margin: 0; padding: 0;}
            	#main {border: 1px solid #cfcece;}
            	img {display: block;}
            	#top-message p, #bottom-message p {color: #3f4042; font-size: 12px; font-family: Arial, Helvetica, sans-serif; }
            	#header h1 {color: #ffffff !important; font-family: "Lucida Grande", "Lucida Sans", "Lucida Sans Unicode", sans-serif; font-size: 24px; margin-bottom: 0!important; padding-bottom: 0; }
            	#header h2 {color: #ffffff !important; font-family: Arial, Helvetica, sans-serif; font-size: 24px; margin-bottom: 0 !important; padding-bottom: 0; }
            	#header p {color: #ffffff !important; font-family: "Lucida Grande", "Lucida Sans", "Lucida Sans Unicode", sans-serif; font-size: 12px;  }
            	h1, h2, h3, h4, h5, h6 {margin: 0 0 0.8em 0;}
            	h3 {font-size: 28px; color: #444444 !important; font-family: Arial, Helvetica, sans-serif; }
            	h4 {font-size: 22px; color: #4A72AF !important; font-family: Arial, Helvetica, sans-serif; }
            	h5 {font-size: 18px; color: #444444 !important; font-family: Arial, Helvetica, sans-serif; }
            	p {font-size: 12px; color: #444444 !important; font-family: "Lucida Grande", "Lucida Sans", "Lucida Sans Unicode", sans-serif; line-height: 1.5;}
           </style>
        </head>
        <body>
          <table width="100%" cellpadding="0" cellspacing="0" bgcolor="e4e4e4"><tr><td>
          <table id="top-message" cellpadding="20" cellspacing="0" width="600" align="center">
          		<tr>
          			<td align="center">
          				<p>Trouble viewing this email? <a href="#">View in Browser</a></p>
          			</td>
          		</tr>
          	</table><!-- top message -->
          <table id="main" width="600" align="center" cellpadding="0" cellspacing="15" bgcolor="ffffff">
          		<tr>
          			<td>
          				<table id="header" cellpadding="10" cellspacing="0" align="center" bgcolor="8fb3e9">
          					<tr>
          						<td width="100%" bgcolor="#ffffff"><a href="'. site_url() .'/". SKB_PLUGIN_HOME ."/"><img alt="SEQUENCE KNOWLEDGEBASE" src="'. SKB_PLUGIN_URL .'images/logo.png" /></td>
          					</tr>
          				</table><!-- header -->
          			</td>
          		</tr><!-- header -->
              <tr>
          			<td>
          				<table id="content-2" cellpadding="0" cellspacing="0" align="center">
                  <tr>
                    <td align="center" width="100%">
                      <p>Click <a href="'. site_url() .'/". SKB_PLUGIN_HOME ."/">here</a> to visit Sequence Knowledgebase Dashboard. </p>
                    </td>
                  </tr>
          				</table><!-- content-2 -->
          			</td>
          		</tr><!-- content-2 -->
          		<tr>
          			<td></td>
          		</tr>
          		<tr>
          			<td>
          				<table id="content-1" cellpadding="0" cellspacing="0" align="center">
          					<tr>
          						<td width="15"></td>
          						<td width="375" valign="top" colspan="3">
          							<h3>Article Title</h3>
          							<h4>Email message goes here.</h4>
          						</td>
                      <td align="center" width="">
                        <p>Article excerpt goes here. </p>
                      </td>
          					</tr>
          				</table><!-- content 1 -->
          			</td>
          		</tr><!-- content 1 -->
              <tr>
          			<td>
          				<table id="content-2" cellpadding="0" cellspacing="0" align="center">
                  <tr>
                    <td align="center" width="100%">
                      <p>Click <a href="'. site_url() .'/'. SKB_PLUGIN_HOME .'/view-article/?article='. $article->ID .'">here</a> to view article. </p>
                    </td>
                  </tr>
          				</table><!-- content-2 -->
          			</td>
          		</tr><!-- content-2 -->
          	</table><!-- main -->
          </td></tr></table><!-- wrapper -->
        </body>
      </html>
    ';

    echo $message;


    mail("jaylong255@gmail.com","html email test",$message,$headers);

  }

 ?>
