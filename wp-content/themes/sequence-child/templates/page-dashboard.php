<?php
/*
 * Template Name: Dashboard
 */
 ?>

<?php

if(!is_user_logged_in()){
  wp_redirect(home_url('/login/'));
  exit;
}

 ?>

<?php get_header(); ?>

<div id="main">
	<div id="content" class="wide" style="width: 100%;">

    <?php if(is_page('dashboard')){?>
      <div id="dashboard-left-sidebar">
        <ul>
          <li><button type="button" class="btn controls add-article">add article</button></li>
        </ul>
      </div>
    <?php }?>



    <script>

    $('#dashboard-left-sidebar .controls').click(function(){

      // $('#skb-dashboard-modal').modal();
      // alert('');
      window.location.href = "<?php echo site_url(); ?>/dashboard/add-article";

    });

    </script>


		<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
			<div id="main-content" class="full-width">
				<h1><?php the_title(); ?></h1>
				<?php the_content(); ?>
			</div>
		<?php endwhile; ?>
		<?php else : ?>
			<div id="main-content">
				<h2>Not Found</h2>
			</div>
		<?php endif; ?>


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
