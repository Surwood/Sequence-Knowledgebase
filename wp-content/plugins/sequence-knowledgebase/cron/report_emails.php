<?php







  // $parse_uri = explode( '/wp-content/', $_SERVER['SCRIPT_FILENAME'] );
  // require_once( $parse_uri[0] . '/wp-load.php' );

  // die($parse_uri[0] . '/wp-load.php');

  //require_once( '/home/seqgxp2100/public_html/dev.sequencegxp.com/wp-load.php' );
   require_once( '/home/seqgxp2100/public_html/wp-load.php' );





  $args = array(
    'post_type'=>'skb_article',
    'post_status' =>  'publish'
  );

  $posts = get_posts($args);

  $results = array();

  $high_rating = 0;
  $most_views = 0;

  $debug_email = "";

  foreach($posts as $post){
    $avg_rating = 0;
    $ratings = get_post_meta($post->ID,'article_rating');
    $total_ratings = count($ratings);
    $ratings_total = 0;
    if($total_ratings > 0){
      foreach($ratings as $value){
        list($user_id,$rating) = explode('_',$value);
        $ratings_total += $rating;
      }
      $avg_rating = round($ratings_total / $total_ratings,1);
    }
    $views = count(get_post_meta($post->ID,'article_view'));
    $results[$avg_rating][$views][] = $post;
    if($avg_rating > $high_rating){
      $high_rating = $avg_rating;
    }
    if($views > $most_views){
      $most_views = $views;
    }

  }




  $post = $results[$high_rating][$most_views][0];
  $author = get_user_by('ID',$post->post_author);
  $approver_id = get_post_meta($post->ID,'post_approver',true);
  $approver = get_user_by('ID',$approver_id);

  $args = array(
    $author->user_email,
    'Highest Ranking Article!',
    "Your article '". $post->post_title ."' received and average\n rating of ". $high_rating ." and got ". $most_views ." page views. ",
    "gsequence@sequencegxp.com"
  );

  // var_dump($args);



  $header = "From: gsequence@sequenceqcs.com\r\n";

  $message = "Your article '". $post->post_title ."' received and average\r\n rating of ". $high_rating ." and got ". $most_views ." page views. ";


  $message .= ' Visit '. site_url() .'/'. SKB_PLUGIN_HOME .'/view-article/?article='. $post->ID .' to view article.';
// echo "<h1>test7!</h1>";
  mail(
    $author->user_email,
    'Highest Ranking Article!',
    $message,
    $header
  );

  $debug_email .= "high ranking: ". $author->user_email ."\r\n";
  $debug_email .= $message . "\r\n";


  // echo "Mail sent to highest ranking author, " . $author->user_fullname . "<hr />";
  // echo $body . "<hr />";

  // send email to expired pending posts
  $args = array(
    'post_type'=>'skb_article',
    'post_status' =>  'pending'
  );
  $posts = get_posts($args);

  $email_list = array();


  $debug_email .= "pending: \r\n";

  foreach ($posts as $post){

    $author = get_user_by('ID',$post->post_author);
    $approver_id = get_post_meta($post->ID,'post_approver',true);
    $approver = get_user_by('ID',$approver_id);
$email_list[$author->user_email][] = $post;
    $days = (time() - strtotime($post->post_modified)) / ( 60 * 60 * 24 );

    $debug_email .= $author->user_email ."\r\n";
    // $debug_email .= $message . "\r\n";

    if($days > 7){



      $header = "From: gsequence@sequenceqcs.com\r\n";
      $message = "Your article '". $post->post_title ."' has still not been approved. \r\n It has been ". floor($days) ." days since you last submitted changes to this article. \n";
      $message .= ' Visit '. site_url() .'/'. SKB_PLUGIN_HOME .'/add-article/?article='. $post->ID .' to view article.';
      $body = send_mail_template($post,$message);
      // echo $message;
      $email_list[$author->user_email][] = $message;
      mail(
        $author->user_email,
        'Article still not approved. ',
        $message,
        $header
      );

      // $debug_email .= "high ranking: ". $author->user_email ."\r\n";
      $debug_email .= $message . "\r\n";

      // mail(
      //   $author->user_email,
      //   'Article still not approved. ',
      //   $message,
      //   $header
      // );



        $message = "You have still not approved or rejected article '". $post->post_title ."' by author ". $author->display_name .".\r\n";
        $message .=   "It has been ". floor($days) ." days since this article was last submitted for approval. \n";
        $message .= ' Visit '. site_url() .'/'. SKB_PLUGIN_HOME .'/add-article/?article='. $post->ID .' to view article.';
        $body = send_mail_template($post,$message);
        // echo $message;
        mail(
          $approver->user_email,
          'Article still not approved. ',
          $message,
          $header
        );

    }
  }





  // send email to expired draft posts
  $args = array(
    'post_type'=>'skb_article',
    'post_status' =>  'draft'
  );
  $posts = get_posts($args);

  $debug_email .= "draft: \r\n";

  foreach ($posts as $post){

    $author = get_user_by('ID',$post->post_author);
    $days = (time() - strtotime($post->post_modified)) / ( 60 * 60 * 24 );

$email_list[$author->user_email][] = $post;

$debug_email .= $author->user_email ."\r\n";

    if($days > 7){
      $header = "From: gsequence@sequenceqcs.com\r\n";
      $message = "Your article draft '". $post->post_title ."' has not yet been submitted for approval. \r\n It has been ". floor($days) ." days since you last updated this draft. \n";
      $message .= ' Visit '. site_url() .'/'. SKB_PLUGIN_HOME .'/add-article/?article='. $post->ID .' to view your draft.';
      $body = send_mail_template($post,$message);
      // echo $message;
      $email_list[$author->user_email][] = $message;
      mail(
        $author->user_email,
        'Article draft still not submitted. ',
        $message,
        $header
      );
      $debug_email .= $message . "\r\n";
    }
  }


  // mail(
  //   'jaylong255@gmail.com',
  //   'debugging email script',
  //   var_dump($email_list),
  //   "From: gsequence@sequenceqcs.com\r\n"
  // );

  $args = array(
    'post_type'=>'skb_article'
  );
  $posts = get_posts($args);
  // $email_list = array();
  foreach($posts as $post){
    $author = get_user_by('ID',$post->ID);
    //$email_list[$author->user_email][] = 'test';
  }



  // echo "<pre>";
  // var_dump($email_list);
  // echo "</pre>";

  echo $debug_email . "<hr />";

  $body = "all articles: <br />";
  foreach($email_list as $address => $email){
    $body .= $address . "\r\n";
  }

  echo $body;

  $mail = mail(
    'jaylong255@gmail.com',
    'sequence debug email',
    $debug_email,
    "From: gsequence@sequenceqcs.com\r\n"
  );

    // die('test');



    if($mail){
      echo "<h1>yes</h1>";
    } else {
      echo "<h1>no</h1>";
    }


  function send_mail_template($post,$message){
    $body = '
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
                    <td width="100%" bgcolor="#ffffff"><a href="'. site_url() .'/'. SKB_PLUGIN_HOME .'/"><img alt="SEQUENCE KNOWLEDGEBASE" src="'. SKB_PLUGIN_URL .'images/logo.png" /></td>
                  </tr>
                </table><!-- header -->
              </td>
            </tr><!-- header -->
            <tr>
              <td>
                <table id="content-2" cellpadding="0" cellspacing="0" align="center">
                <tr>
                  <td align="center" width="100%">
                    <p>Click <a href="'. site_url() .'/'. SKB_PLUGIN_HOME .'/">here</a> to visit Sequence Knowledgebase Dashboard. </p>
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
                      <h3>'. $post->post_title .'</h3>
                      <h4>'. $message .'</h4>
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
                    <p>Click <a href="'. site_url() .'/'. SKB_PLUGIN_HOME .'/view-article/?article='. $post->ID .'">here</a> to view article. </p>
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
    return $body;
  }

 ?>
