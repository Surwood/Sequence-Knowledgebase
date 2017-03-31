<div id="sequence-user-articles">

  <hr />

    <h3>Your Articles</h3>

  <hr />

    <div class="user-article-results"></div>


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
        posts_per_page: 5,
        user: 1
      },
      function(data){
        // alert('test');
        $('#sequence-user-articles .user-article-results').html(data);
      }


    );


  });


</script>
