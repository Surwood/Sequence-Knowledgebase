<?php
/*
 * Template Name: Dashboard New
 */
 ?>
<?php
// ||(!is_user_in_role('sequence_user') && !is_user_in_role('sequence_author') && !is_user_in_role('sequence_approver') && !is_user_in_role('sequence_admin'))


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
      <button type="button"  class="btn return-home">home</button>
      <button type="button"  class="snoogenstest">test</button>
      <button type="button" style="<?php echo $add_article_button; ?>" class="btn controls add-article">add article</button>



      <div id="sequence-search-results"></div>


		<?php

			 if (have_posts()) : while (have_posts()) : the_post();?>

				<div id="main-content" class="full-width">

					<?php the_content(); ?>

					<?php if(is_page('dashboard')){?>

					<?php }?>

				</div>
				<?php endwhile; ?>
				<?php else : ?>
				<div id="main-content">
					<h2>Not Found</h2>
				</div>
			<?php endif; ?>



		</div>


    <?php if(is_page('dashboard')){?>
      <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 search_sidebar">


  			<div>
  				<label class="screen-reader-text" for="look"><h1>Search</h1></label>
          <?php //get_search_form(); ?>
  				<input class="sequence-filter-field" type="text" name="look" id="s" value="<?php if(isset($_POST['look'])){ echo $_POST['look']; }?>" />
          <button class="btn btn-secondary sequence-filter-submit"><?php _e('Go', 'framework') ?></button>
  			</div>






  			<div class="">
  				<fieldset>
  					<label for="postCategories1"><?php _e('Category 1','framework')?></label>
  					  <br/>
  					  <?php
  					  $selected = 0;
              //  if(isset($_POST['postCategories1'])){ echo $selected = $_POST['look']; }
  					  if (isset($_POST['postCategories1'])){ $selected = $_POST['postCategories1']; }
  						$args = array(
  						  'id'  =>  'postCategories1',
  						  'name'  =>  'postCategories1',
                'class' =>  'sequence-filter-field',
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
                'class' =>  'sequence-filter-field',
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
                'class' =>  'sequence-filter-field',
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
                'class' =>  'sequence-filter-field',
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
  				<input type="date" id="dateAfter" name="dateAfter" class="sequence-filter-field" value="<?php if(isset($_POST['dateAfter'])){ echo $_POST['dateAfter']; }?>" />
  			</div>

  			<div class="dateBefore">
  				<label for="postCategories4"><?php _e('Date Before','framework')?></label><br/>
  				<input type="date" id="dateBefore" name="dateBefore" class="sequence-filter-field" value="<?php if(isset($_POST['dateBefore'])){ echo $_POST['dateBefore']; }?>" />
  			</div>

  			<div class="">
  				<input type="hidden" name="check_filter" value="100134"/>
  				<!-- <input type="submit" value="Filter" id="" /> -->
          <button class="btn btn-secondary sequence-filter-submit"><?php _e('Submit', 'framework') ?></button>
  			</div>

        <br />





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

<?php get_footer(); ?>
