<div id="sequence-featured-articles">

  <hr />

    <h3>Featured Articles</h3>

  <hr />

    <div class="article-results"></div>


  <hr />

</div>

<script>


  jQuery(document).ready(function(){

    $.post(

      '<?php echo SKB_PLUGIN_URL; ?>controllers/ajax_controller.php?method=get_search_results',
      {
        look: "",
        postCategories1: -1,
        postCategories2: -1,
        postCategories3: -1,
        postCategories4: -1,
        posts_per_page: 5
      },
      function(data){
        // alert('test');
        $('#sequence-featured-articles .article-results').html(data);
      }


    );


  });


</script>
