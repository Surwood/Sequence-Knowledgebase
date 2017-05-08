<div id="sequence_pending_articles">

  <?php
    if ($query->have_posts()) : while ($query->have_posts()) : $query->the_post();

  ?>
    <div class="full-width">
      <a href="<?php echo site_url() . "/". SKB_PLUGIN_HOME ."/view-article/?article=" . get_the_ID(); ?>">
      <h1><?php the_title(); ?></h1>

      <?php the_content(); ?>
    </a>
    </div>
  <?php endwhile; wp_reset_postdata(); ?>
  <?php else : ?>
    <div id="main-content">
      <h2>No Pending Approvals</h2>


    </div>


  <?php endif; ?>


</div>
