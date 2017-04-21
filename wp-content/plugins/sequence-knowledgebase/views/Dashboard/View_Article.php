<style>
  #sequence-view-article .row {
    width: 80%;
  }
</style>


  <div id="sequence-view-article" class="container">


    <div class="row">
      <hr />
      <div class="col-lg-12 ">

        <div class="btn-group"></div>
          <!-- <button type="button" class="btn btn-secondary article-action cancel-article">Home</button> -->
          <button type="button" style="<?php echo $edit_article_button; ?>" class="btn btn-secondary article-action edit-article">Edit</button>





      </div>
    </div>



    <div class="row">

      <hr />

      <div class="col-xs-1"><h2>Title:</h2></div>
      <div class="col-xs-11"><h3><i><?php echo $article->post_title; ?></i></h3></div>



      </div>
    </div>

    <hr />

    <div class="row">

      <div class="col-xs-2"><h2>Summary:</h2></div>
      <div class="col-xs-10"><br /><p><?php echo $article->post_excerpt; ?></p></div>

    </div>


    <div class="row">
      <div class="col-xs-12">
          <hr /><h2>Article:</h2><hr />


          <?php if ($wp_query->have_posts()) : while ($wp_query->have_posts()) : $wp_query->the_post(); ?>

              <?php the_content(); ?>

          <?php endwhile; wp_reset_postdata(); ?>

          <?php endif; ?>


      </div>
    </div>


    <div class="row">
      <hr /><h2>Categories:</h2><hr />
      <div class="col-xs-6">
          <h3>Category 1</h3>
          <ul>
            <?php foreach($article->categories as $category){?>
              <li><?php echo $category->name; ?></li>
              <?php } ?>
          </ul>
      </div>
      <div class="col-xs-6">
        <h3>Category 2</h3>
          <ul>
            <?php foreach($article->tags1 as $tag){?>
              <li><?php echo $tag->name;?></li>
              <?php } ?>
          </ul>
      </div>
      <div class="col-xs-6">
        <h3>Category 3</h3>
          <ul>
            <?php foreach($article->tags2 as $tag){?>
              <li><?php echo $tag->name; ?></li>
              <?php } ?>
          </ul>
      </div>
      <div class="col-xs-6">
        <h3>Category 4</h3>
          <ul>
            <?php foreach($article->tags3 as $tag){?>
              <li><?php echo $tag->name; ?></li>
              <?php } ?>
          </ul>
      </div>


    </div>


    <div class="row">
      <div class="col-12">
          <hr /><h2>Author:</h2><hr />
          <p><?php echo $author->display_name;?></p>
      </div>
    </div>


    <div class="row">
      <div class="col-12">
          <hr /><h2>Approver:</h2><hr />
          <p><?php echo $approver->display_name;?></p>
      </div>
    </div>


    <div class="row">
      <hr />
      <div class="col-xs-9">
          <h2>Rank:</h2>
          <p>Please rank the helpfulness of this article!</p>
          <div>
            <?php
              // $args = array(
              //   'rating'  =>  3.5,
              //   'type'  =>  'rating',
              //   'number'  =>  1234,
              // );
            //  wp_star_rating($args);
            ?>
          </div>

          <div id="rank-stars"></div>

      </div>
      <div class="col-xs-3">
          <h2>Views:</h2>
          <p><?php echo $article->view_count; ?></p>
      </div>
      <hr />
    </div>


    <div class="row">
      <hr />
      <div class="col-lg-12 ">

        <div class="btn-group"></div>
          <button type="button" class="btn btn-secondary article-action cancel-article">Home</button>
          <button type="button" class="btn btn-secondary article-action edit-article" style="<?php echo $edit_article_button; ?>">Edit</button>






      </div>
    </div>



  </div>


<script>

  jQuery(document).ready(function($){
    var url = "<?php echo SKB_PLUGIN_URL; ?>";
    var path = "<?php echo SKB_PLUGIN_PATH; ?>";
    var article_id = "<?php echo $article->ID; ?>";

    var my_rating = ('<?php echo $my_rating; ?>').split('_')[1];

    $('#rank-stars').rateYo({
      rating: my_rating,
      readOnly: '<?php  echo ($user->ID == $article->post_author); ?>'
    });


    $('#rank-stars').click(function(){
      // alert($(this).rateYo('option','rating'));
      $.post(url + 'controllers/ajax_controller.php?method=update_article_rank',
        { article_id: article_id, rank: $(this).rateYo('option','rating') },
        function(data){
          // alert(data);

        }
      );
    });

    // alert($('#rateyo').rateYo('option','rating'));

    $('.article-action').click(function(){
      if($(this).hasClass('cancel-article')){
        window.location.href = "<?php echo site_url(); ?>/dashboard/";
      }
      if($(this).hasClass('edit-article')){
        window.location.href = "<?php echo site_url(); ?>/dashboard/add-article?article=<?php echo $article->ID; ?>";
      }
    });

  });

</script>
