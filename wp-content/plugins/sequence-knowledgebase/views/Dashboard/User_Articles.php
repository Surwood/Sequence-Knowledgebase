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
        posts_per_page: 5
      },
      function(data){
        // alert('test');
        $('#sequence-featured-articles .article-results').html(data);


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

      }


    );

    jQuery('.ratingWrapper').each(function(event){
  		var id = '#'+jQuery(this).attr('id');
  		var rating = jQuery(this).attr('data-rating');
  		// console.log('id : '+id+' == rating : '+rating);

  		jQuery(id).rateYo({ rating: rating, starWidth: "20px", readOnly: true });

  	});


  });


</script>
