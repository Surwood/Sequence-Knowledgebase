<?php if(count($pending_approval)>0){ ?>
  <hr /><h2>Pending Your Approval</h2><hr />
  <?php foreach($pending_approval as $post){ ?>
    <a href="<?php echo site_url() . "/dashboard/add-article/?article=" . $post->ID; ?>">
      <h3><?php echo $post->post_title; ?></h3>
      <div><?php echo $post->post_content; ?></div>
    </a>
  <?php } ?>
  <hr />
  <?php } ?>
  <?php if(count($your_articles)>0){ ?>
    <hr /><h2>Your Articles</h2><hr />
  <?php } ?>

<div id="sequence_recent_articles">
  <?php $args = array('post_type'=>'skb_article','posts_per_page'=>'5'); ?>
  <?php $query = new WP_Query($args);?>
  <?php if ($query->have_posts()) : while ($query->have_posts()) : $query->the_post(); ?>
    <div class="full-width">
      <a href="<?php echo site_url() . "/dashboard/view-article/?article=" . get_the_ID(); ?>">
      <h1><?php the_title(); ?></h1>
      <?php the_excerpt();
      if($terms = get_the_terms(get_the_ID(),'article_tag1')){
        foreach($terms as $term){
          echo $term->name;
        }
      }
      ?>
    </a>
    </div>
  <?php endwhile; wp_reset_postdata(); ?>
  <?php else : ?>
    <div id="main-content">
      <h2>No Articles</h2>
    </div>


  <?php endif; ?>


</div>
