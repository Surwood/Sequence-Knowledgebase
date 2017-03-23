<?php
/*
 * Template Name: Dashboard New
 */
 ?>
<?php
// ||(!is_user_in_role('sequence_user') && !is_user_in_role('sequence_author') && !is_user_in_role('sequence_approver') && !is_user_in_role('sequence_admin'))

// die(is_user_in_role('sequence_user') . 'tetete');
// die('test');

//we comment here for getting access in this page
if(!is_user_logged_in()){
  wp_redirect(home_url('/login/'));
  exit;
} else {
  $user = wp_get_current_user();
  if(
    !in_array('sequence_user',(array)$user->roles ) &&
    !in_array('sequence_author',(array)$user->roles ) &&
    !in_array('sequence_approver',(array)$user->roles ) &&
    !in_array('sequence_admin',(array)$user->roles )
  ){
    wp_redirect(home_url('/login/'));
    exit;
  }
  $add_article_button = "";
  if(
    !in_array('sequence_author',(array)$user->roles ) &&
    !in_array('sequence_approver',(array)$user->roles ) &&
    !in_array('sequence_admin',(array)$user->roles )
  ){
    $add_article_button = "display:none;";
  }
}

$parse_uri = explode( 'index.php', $_SERVER['SCRIPT_FILENAME'] );
require_once( $parse_uri[0] . 'wp-admin/includes/template.php' );

 ?>

<?php get_header(); ?>

<div id="main">
	<div id="content" class="wide" style="width: 100%;">
	<div class="row">
		<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
		<?php
			if( $_POST['check_filter'] == '100134' ){

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

        //building search query depending on several conditions.
        $search_sql = "SELECT  p.ID, p.post_title, p.post_excerpt, p.post_date
        FROM wp_posts p
        LEFT JOIN wp_term_relationships r ON (p.ID = r.object_id)
        LEFT JOIN wp_postmeta m ON ( p.ID = m.post_id )
        WHERE 1=1 ";
        if(!empty($dateAfter) && !empty($dateBefore) ) {

            $dateAfter = $dateAfter.' 00:00:00';
            $dateBefore = $dateBefore.' 23:59:59';
            $closeBrac = ')';
            $dateRange = "AND ((( p.post_date >= '$dateAfter' AND p.post_date <= '$dateBefore' ))";

        }elseif(empty($dateAfter) && !empty($dateBefore)){

            $dateAfter = $dateAfter.' 00:00:00';
            $dateBefore = $dateBefore.' 23:59:59';
            $closeBrac = ')';
            $dateRange = "AND ((( p.post_date <= '$dateBefore' ))";

        }elseif(!empty($dateAfter) && empty($dateBefore)){

            $dateAfter = $dateAfter.' 00:00:00';
            $dateBefore = $dateBefore.' 23:59:59';
            $closeBrac = ')';
            $dateRange = "AND ((( p.post_date >= '$dateAfter' ))";

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
        }
        if(!empty($item)) {
            $search_sql .= "
            AND ((
            (p.post_title LIKE '%$item%')
            OR (p.post_excerpt LIKE '%$item%')
            OR (p.post_content LIKE '%$item%')
            ))";
        }
        $search_sql .="
        $closeBrac
        AND p.post_type = 'skb_article'
        AND ((p.post_status = 'publish'))
        GROUP BY p.ID
        ORDER BY p.post_date DESC
        "; // LIMIT 0, 50   [no limit has no problem]

        $pageposts = $wpdb->get_results($search_sql,OBJECT);

        // die($search_sql);

            if ($pageposts):
                $allPosts = array();
                ?>

                <div class="row">
                    <div class="col-sm-3 text-center"><h2>Title</h2></div>
                    <div class="col-sm-3 text-center"><h2>Summery</h2></div>
                    <div class="col-sm-3 text-center"><h2>Rate</h2></div>
                    <div class="col-sm-1 text-center" style="padding: 0; text-align: left;"><h2>View</h2></div>
                    <div class="col-sm-2 text-center"><h2>Date</h2></div>
                </div>


                <?php
                global $post;
                foreach ($pageposts as $key=>$post):
                    //setting up object date in [$allPosts] array. We need only 6 property of object
                    $allPosts[$key]['ID'] =$post->ID;
                    $allPosts[$key]['post_title'] =$post->post_title;
                    $allPosts[$key]['post_excerpt'] =$post->post_excerpt;
                    $allPosts[$key]['post_rate'] =count(get_post_meta(get_the_ID(),'article_rating'));
                    $allPosts[$key]['post_view'] =count(get_post_meta(get_the_ID(),'article_view'));
                    $allPosts[$key]['post_date'] =date('Y-m-d', strtotime($post->post_date));

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
                    <div class="col-sm-3">
                        <a href="<?php echo site_url(). "/dashboard/view-article/?article=" .$post['ID'];?>"><h3><?php echo $post['post_title']; ?></h3></a>
                    </div>
                    <div class="col-sm-3"><?php echo $post['post_excerpt'];?></div>
                    <?php $rating = $post['post_rate']; ?>
                    <div id="rank-stars-<?php echo $post['ID'];?>" class="col-sm-3 text-center ratingWrapper" data-rating="<?php echo $rating; ?>"> <?php echo $rating; ?> </div>
                    <div class="col-sm-1 text-center"><?php echo $post['post_view'];?></div>
                    <div class="col-sm-2 text-center"><?php echo $post['post_date']; ?></div>
                    </div><?php
                }
                ?>

            <?php else : ?>
                <h2 class="center">Not Found</h2>
                <p class="center">Sorry, but you are looking for something that isn't here.</p><button type="button" class="btn btn-secondary return-home"><?php _e('Home', 'framework') ?></button>
            <?php endif;

			}else{

			 if (have_posts()) : while (have_posts()) : the_post();?>

				<div id="main-content" class="full-width">
					<h1><?php the_title(); ?></h1>
					<?php the_content(); ?>

					<?php if(is_page('dashboard')){?>
					  <div id="dashboard-left-sidebar">
						<ul>
						  <li><button type="button" style="<?php echo $add_article_button; ?>" class="btn controls add-article">add article</button></li>
						</ul>
					  </div>
					<?php }?>

				</div>
				<?php endwhile; ?>
				<?php else : ?>
				<div id="main-content">
					<h2>Not Found</h2>
				</div>
			<?php endif; ?>


				<?php
			}
		?>
		</div>


    <?php if(is_page('dashboard')){?>
      <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 search_sidebar">

  			<form role="filter" action="<?php echo site_url('/dashboard'); ?>" method="POST" id="filter">

  			<div>
  				<label class="screen-reader-text" for="look"><h1>Search</h1></label>
  				<input type="text" name="look" id="s" />
  			</div>
  				<h1>Categories</h1>
  			<div class="">
  				<fieldset>
  					<label for="postCategories1"><?php _e('Category 1','framework')?></label>
  					  <br/>
  					  <?php
  					  $selected = 0;
  					  if (isset($_POST['postCategories1'])){ $selected = $_POST['postCategories1']; }
  						$args = array(
  						  'id'  =>  'postCategories1',
  						  'name'  =>  'postCategories1',
  						  'show_option_none' => 'Choose an item...',
  						  'hide_empty' => 0,
  						  'post_type' =>  "skb_article",
  						  'taxonomy'  =>  'article_category',
  						  'hierarchical' => 1,
  						  'selected'  =>  $selected
  						);
  						wp_dropdown_categories($args);
  					  ?>
  				</fieldset>
  			</div>

  			<div class="">
  				<fieldset>
  					<label for="postCategories2"><?php _e('Category 2','framework')?></label><br/>
  					  <?php
  					  $selected = 0;
  					  if (isset($_POST['postCategories2'])){ $selected = $_POST['postCategories2']; }
  						$args = array(
  						  'id'  =>  'postCategories2',
  						  'name'  =>  'postCategories2',
  						  'show_option_none' => 'Choose an item...',
  						  'hide_empty' => 0,
  						  'post_type' =>  "skb_article",
  						  'taxonomy'  =>  'article_tag1',
  						  'selected'  =>  $selected
  						);
  						wp_dropdown_categories($args);
  					  ?>
  				</fieldset>
  			</div>

  			<div class="">
  				<fieldset>
  					<label for="postCategories3"><?php _e('Category 3','framework')?></label><br/>
  					  <?php
  					  $selected = 0;
  					  if (isset($_POST['postCategories3'])){ $selected = $_POST['postCategories3']; }
  						$args = array(
  						  'id'  =>  'postCategories3',
  						  'name'  =>  'postCategories3',
  						  'show_option_none' => 'Choose an item...',
  						  'hide_empty' => 0,
  						  'post_type' =>  "skb_article",
  						  'taxonomy'  =>  'article_tag2',
  						  'selected'  =>  $selected
  						);
  						wp_dropdown_categories($args);
  					  ?>
  				</fieldset>
  			</div>

  			<div class="">
  				<fieldset>
  					<label for="postCategories4"><?php _e('Category 4','framework')?></label><br/>

  					  <?php
  					  $selected = 0;
  					  if (isset($_POST['postCategories4'])){ $selected = $_POST['postCategories4']; }
  						$args = array(
  						  'id'  =>  'postCategories4',
  						  'name'  =>  'postCategories4',
  						  'show_option_none' => 'Choose an item...',
  						  'hide_empty' => 0,
  						  'post_type' =>  "skb_article",
  						  'taxonomy'  =>  'article_tag3',
  						  'selected'  => $selected
  						);
  						wp_dropdown_categories($args);
  					  ?>
  				</fieldset>
  			</div>

  			<div class="dateAfter">
  				<label for="dateAfter"><?php _e('Date After','framework')?></label><br/>
  				<input type="date" name="dateAfter" />
  			</div>

  			<div class="dateBefore">
  				<label for="postCategories4"><?php _e('Date Before','framework')?></label><br/>
  				<input type="date" name="dateBefore" />
  			</div>

  			<div class="">
  				<input type="hidden" name="check_filter" value="100134"/>
  				<!-- <input type="submit" value="Filter" id="" /> -->
          <button type="submit" value="Fileter" id="" class="btn btn-secondary"><?php _e('Submit', 'framework') ?></button>
  			</div>

  			</form>

  		</div>
    <?php }?>


	</div>

	</div>

</div>

<div id="skb-dashboard-modal" class="modal fade bs-example-modal-md skb-modal" tabindex="-1" role="dialog" aria-labelledby="modal-header">
	<div class="modal-dialog modal-md">
		<div class="modal-content">
			<div class="modal-header">
				<div class="col-xs-2">
						<div id="img-icon"></div>
				</div>
				<div class="col-xs-8">
					<h4 class="modal-title" id="myModalLabel">Sequence Knowledgebase</h4>
				</div>
				<div class="col-xs-2">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="glyphicons glyphicons-remove">X</i></span></button>
				</div>
			</div>
			<div class="modal-body">

			</div>
		</div>
	</div>
</div>


<script>

$('#dashboard-left-sidebar .controls').click(function(){

  // $('#skb-dashboard-modal').modal();
  // alert('');
  window.location.href = "<?php echo site_url(); ?>/dashboard/add-article";

});

// RATING
jQuery(function($){
	$('.ratingWrapper').each(function(event){
		var id = '#'+$(this).attr('id');
		var rating = $(this).attr('data-rating');
		// console.log('id : '+id+' == rating : '+rating);

		$(id).rateYo({ rating: rating });

	});
	// var my_rating = "<?php //echo $rating; ?>";
	// $('#rank-stars-62').rateYo({ rating: my_rating });
})
</script>
<?php get_footer(); ?>
