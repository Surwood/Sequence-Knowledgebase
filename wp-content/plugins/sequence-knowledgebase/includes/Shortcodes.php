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




  //  include SKB_PLUGIN_PATH . "views/Dashboard/Recent_Articles.php";



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
    						<td width="100%" bgcolor="#ffffff"><img src="'. SKB_PLUGIN_URL .'images/logo.png" /></td>
    					</tr>

    				</table><!-- header -->
    			</td>
    		</tr><!-- header -->

    		<tr>
    			<td></td>
    		</tr>
    		<tr>
    			<td>
    				<table id="content-1" cellpadding="0" cellspacing="0" align="center">
    					<tr>
    						<td width="170" valign="top">
    							<table cellpadding="5" cellspacing="0">
    								<tr><td bgcolor="d0d0d0"><img src="http://tessat.s3.amazonaws.com/coins_small.jpg" width="170" /></td></tr></table>
    						</td>
    						<td width="15"></td>
    						<td width="375" valign="top" colspan="3">
    							<h3>All New Site Design</h3>
    							<h4>It\'s 150% Better and 40% More Efficient!</h4>
    						</td>
    					</tr>
    				</table><!-- content 1 -->
    			</td>
    		</tr><!-- content 1 -->
    		<tr>
    			<td>
    				<table id="content-2" cellpadding="0" cellspacing="0" align="center">
    					<tr>
    						<td width="570"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p></td>
    					</tr>
    				</table><!-- content-2 -->
    			</td>
    		</tr><!-- content-2 -->
    		<tr>
    			<td height="30"><img src="http://dummyimage.com/570x30/fff/fff" /></td>
    		</tr>
    		<tr>
    			<td>
    				<table id="content-3" cellpadding="0" cellspacing="0" align="center">
    					<tr>
    						<td width="170" valign="top" bgcolor="d0d0d0" style="padding:5px;">
    							<img src="http://tessat.s3.amazonaws.com/crayons.jpg" width="170" />
    						</td>
    						<td width="15"></td>
    						<td width="170" valign="top" bgcolor="d0d0d0" style="padding:5px;">
    							<img src="http://tessat.s3.amazonaws.com/handshake.jpg" />
    						</td>
    						<td width="15"></td>
    						<td width="170" valign="top" bgcolor="d0d0d0" style="padding:5px;">
    							<img src="http://tessat.s3.amazonaws.com/moo02.jpg" />
    						</td>
    					</tr>
    				</table><!-- content-3 -->
    			</td>
    		</tr><!-- content-3 -->
    		<tr>
    			<td>
    				<table id="content-4" cellpadding="0" cellspacing="0" align="center">
    					<tr>
    						<td width="180" valign="top">
    							<h5>Exciting New Products!</h5>
    							<p> Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.									Duis aute irure dolor in reprehenderit in voluptate velit esse cillum</p>
    						</td>
    						<td width="15"></td>
    						<td width="180" valign="top">
    							<h5>A Newsletter Every Month</h5>
    							<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
    								deserunt mollit anim id est laborum.</p>
    						</td>
    						<td width="15"></td>
    						<td width="180" valign="top">
    							<h5>New and Improved Forum</h5>
    							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
    								sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    						</td>
    					</tr>
    				</table><!-- content-4 -->
    			</td>
    		</tr><!-- content-4 -->
    		<tr>
    			<td height="30"><img src="http://dummyimage.com/570x30/fff/fff" /></td>
    		</tr>
    		<tr>
    			<td>
    				<table id="content-5" cellpadding="0" cellspacing="0" align="center">
    					<tr>
    						<td width="267" valign="top">
    							<table cellpadding="5" cellspacing="0" bgcolor="d0d0d0"><tr><td>
    								<img src="http://tessat.s3.amazonaws.com/card18.jpg" />
    							</td></tr></table>
    						</td>
    						<td width="15"></td>
    						<td width="278" valign="top">
    							<h4>This is a heading</h4>
    							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
    						</td>
    					</tr>
    				</table><!-- content-5 -->
    			</td>
    		</tr><!-- content-5 -->
    		<tr>
    			<td height="30"><img src="http://dummyimage.com/570x30/fff/fff" /></td>
    		</tr>
    		<tr>
    			<td>
    				<table id="content-6" cellpadding="0" cellspacing="0" align="center">
    					<p align="center">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
    					<p align="center"><a href="#">CALL TO ACTION</a></p>
    				</table>
    			</td>
    		</tr>

    	</table><!-- main -->
    	<table id="bottom-message" cellpadding="20" cellspacing="0" width="600" align="center">
    		<tr>
    			<td align="center">
    				<p>You are receiving this email because you signed up for updates</p>
    				<p><a href="#">Unsubscribe instantly</a> | <a href="#">Forward to a friend</a> | <a href="#">View in Browser</a></p>
    			</td>
    		</tr>
    	</table><!-- top message -->
    </td></tr></table><!-- wrapper -->



    </body>
    </html>

    ';

    echo $message;


    mail("jaylong255@gmail.com","html email test",$message);

  }

 ?>
