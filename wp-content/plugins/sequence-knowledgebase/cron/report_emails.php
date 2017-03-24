<?php


  $parse_uri = explode( '/wp-content/', $_SERVER['SCRIPT_FILENAME'] );
  require_once( $parse_uri[0] . '/wp-load.php' );



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

  mail(
    $author->user_email,
    'Highest Ranking Article!',
    "Your article '". $post->post_title ."' received and average\n rating of ". $high_rating ." and got ". $most_views ." page views. ",
    "gsequence@sequencegxp.com"
  );

  echo "Mail sent".

 ?>
