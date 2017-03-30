<?php


if ($pageposts):
    $allPosts = array();
    ?>






    <?php
    global $post;
    foreach ($pageposts as $key=>$post):
        //setting up object date in [$allPosts] array. We need only 6 property of object
        $allPosts[$key]['ID'] =$post->ID;
        $allPosts[$key]['post_title'] =$post->post_title;
        $allPosts[$key]['post_excerpt'] =$post->post_excerpt;
        $avg_rating = 0;
        $ratings = get_post_meta(get_the_ID(),'article_rating');
        $total_ratings = count($ratings);
        $ratings_total = 0;
        if($total_ratings > 0){
          foreach($ratings as $value){
            list($user_id,$rating) = explode('_',$value);
            $ratings_total += $rating;
          }
          $avg_rating = round($ratings_total / $total_ratings,1);
        }
        $allPosts[$key]['post_rate'] = $avg_rating;
        $allPosts[$key]['post_view'] =count(get_post_meta(get_the_ID(),'article_view'));
        $allPosts[$key]['post_date'] =date('n/d/Y', strtotime($post->post_date));

    endforeach;
    ?>
    <?php

    $sort_col = array();
    //setting up sorting columns
    foreach ($allPosts as $key=> $row) {
        $sort_col['post_rate'][$key] = $row['post_rate'];
        $sort_col['post_view'][$key] = $row['post_view'];
        $sort_col['post_date'][$key] = $row['post_date'];
    }
    //perform sorting with [array_multisort] first rating then view and then publish date
    array_multisort( $sort_col['post_rate'], SORT_DESC ,$sort_col['post_view'],SORT_DESC , $sort_col['post_date'], SORT_DESC , $allPosts);

    //print sorted posts.
    foreach ($allPosts as $post){?>
        <div class="row margin_row">
        <div class="col-sm-4">
            <a href="<?php echo site_url(). "/dashboard/view-article/?article=" .$post['ID'];?>"><span><?php echo $post['post_title']; ?></span></a>
        </div>
        <div class="col-sm-4"><?php echo $post['post_excerpt'];?></div>
        <?php $rating = $post['post_rate']; ?>
        <div id="rank-stars-<?php echo $post['ID'];?>" class="col-sm-2 text-center ratingWrapper" data-rating="<?php echo $rating; ?>"> <?php echo $rating; ?> </div>
        <div class="col-sm-1 text-center"><?php echo $post['post_view'];?></div>
        <div class="col-sm-1 text-center"><?php echo $post['post_date']; ?></div>
        </div><?php
    }
    ?>

<?php else : ?>
    <h2 class="center">Not Found</h2>
    <p class="center">Sorry, but you are looking for something that isn't here.</p>
<?php endif;


 ?>


 <script>

 jQuery(document).ready(function($){


   $('.ratingWrapper').each(function(event){
 		var id = '#'+$(this).attr('id');
 		var rating = $(this).attr('data-rating');
 		// console.log('id : '+id+' == rating : '+rating);

 		$(id).rateYo({ rating: rating, starWidth: "20px", readOnly: true });

 	});


 });


 </script>
