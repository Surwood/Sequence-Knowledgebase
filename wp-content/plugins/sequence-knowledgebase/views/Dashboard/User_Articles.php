<div id="sequence-pending-approval">

  <hr />

    <h3>Your Articles</h3>

  <hr />

  <?php if ($query->have_posts()) : while ($query->have_posts()) : $query->the_post(); ?>
    <div class="full-width">
      <a href="<?php echo site_url() . "/dashboard/view-article/?article=" . get_the_ID(); ?>">
      <h1><?php the_title(); ?></h1>

      <?php the_excerpt();


      // if($terms = get_the_terms(get_the_ID(),'article_tag1')){
      //   // echo "test";?
      //   // var_dump($terms);
      //   foreach($terms as $term){
      //     echo $term->name;
      //   }
      // }

      ?>
    </a>
    </div>
  <?php endwhile; wp_reset_postdata(); ?>
  <?php else : ?>
    <div id="main-content">
      <h2>No Articles</h2>


    </div>


  <?php endif; ?>


  <hr />

</div>
