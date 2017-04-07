<?php


  // $parse_uri = explode( '/wp-content/', $_SERVER['SCRIPT_FILENAME'] );
  // require_once( $parse_uri[0] . '/wp-load.php' );
  require_once( '/home/seqgxp2100/public_html/dev.sequencegxp.com/wp-load.php' );



  $args = array(
    'post_type'=>'skb_article',
    'post_status' =>  'publish'
  );

  $posts = get_posts($args);

  $results = array();

  $high_rating = 0;
  $most_views = 0;

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

  $args = array(
    $author->user_email,
    'Highest Ranking Article!',
    "Your article '". $post->post_title ."' received and average\n rating of ". $high_rating ." and got ". $most_views ." page views. ",
    "gsequence@sequencegxp.com"
  );

  var_dump($args);

  $header = "From: gsequence@sequenceqcs.com\r\n";
  $header .= "Reply-To: no-reply\r\n";
  $header .= "MIME-Version: 1.0\r\n";
  $header .= "Content-Type: text/html; charset=ISO-8859-1\r\n";

  $message = "Your article '". $post->post_title ."' received and average\r\n rating of ". $high_rating ." and got ". $most_views ." page views. "

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
                  <td width="100%" bgcolor="#ffffff"><a href="'. site_url() .'/dashboard/"><img alt="SEQUENCE KNOWLEDGEBASE" src="'. SKB_PLUGIN_URL .'images/logo.png" /></td>
                </tr>
              </table><!-- header -->
            </td>
          </tr><!-- header -->
          <tr>
            <td>
              <table id="content-2" cellpadding="0" cellspacing="0" align="center">
              <tr>
                <td align="center" width="100%">
                  <p>Click <a href="'. site_url() .'/dashboard/">here</a> to visit Sequence Knowledgebase Dashboard. </p>
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
                  <p>Click <a href="'. site_url() .'dashboard/view-article/?article='. $post->ID .'">here</a> to view article. </p>
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

  echo $body;

  mail(
    $author->user_email,
    'Highest Ranking Article!',
    $body,
    $header
  );

  echo "Mail sent";

 ?>
