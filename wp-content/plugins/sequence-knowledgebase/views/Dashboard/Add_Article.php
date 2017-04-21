<style>

#sequence-article-form {
  width: 100%;
  text-align: center;
}

#sequence-article-form fieldset {
  margin: 15px;
  width: 100%;
  /*border: 2px solid black;*/
  text-align: left;
}

#sequence-article-form .article-body .mce-bws_shortcode_button {
  display:none;
}

#sequence-article-form .article-category {
  margin: 10px;
  /*display: none;*/
}


</style>

<div id="sequence-article-form" class="container add-article">


<?php if ( $postTitleError != '' ) { ?>
    <span class="error"><?php echo $postTitleError; ?></span>
    <div class="clearfix"></div>
<?php } ?>

<form action="" id="primaryPostForm" method="POST">

  <div class="row">
    <div class="col-lg-12"><style>

#sequence-article-form {
  width: 100%;
}

#sequence-article-form fieldset {
  margin: 15px;
  width: 100%;
  /*border: 2px solid black;*/

}



</style>

<div id="sequence-article-form" class="container add-article">



<hr />

<?php if ( $postTitleError != '' ) { ?>
    <span class="error"><?php echo $postTitleError; ?></span>
    <div class="clearfix"></div>
<?php } ?>

<form action="" id="primaryPostForm" method="POST">

    <input type="hidden" id="article-id" value="<?php echo $article->ID; ?>" />

      <div class="row ">

        <div class="row col-lg-12 " style="text-align:left;">
          <div class="btn-group"></div>

            <!-- <button type="button" class="btn btn-secondary article-action submit-article"><?php _e('Submit', 'framework') ?></button> -->
            <!-- <button type="button" class="btn btn-secondary article-action cancel-article"><?php _e('Home', 'framework') ?></button> -->
            <!-- <button type="button" class="btn btn-secondary article-action delete-article"><?php _e('Delete', 'framework') ?></button> -->

        </div>

        <div class="col-lg-12 form-group">
      <div class="row ">







        <div class="row col-lg-12 ">
          <fieldset class="">
              <label for="postTitle"><?php _e('Title', 'framework') ?></label>
              <input type="text" maxlength="70" name="postTitle" value="<?php if ( isset( $_POST['postTitle'] ) ) echo $_POST['postTitle']; ?>" id="postTitle" class="form-control required" />
          </fieldset>
        </div>

        <div class="row col-lg-12 ">
          <fieldset >
              <label for="postSummary"><?php _e('Summary', 'framework') ?></label>
              <input type="text" maxlength="210" name="postSummary" value="<?php if ( isset( $_POST['postSummary'] ) ) echo $_POST['postSummary']; ?>" id="postSummary" class="form-control required input-lg" />

          </fieldset>
        </div>

        <div class="row col-lg-12 ">
          <fieldset>
            <label for="postContent"><?php _e('Article', 'framework') ?></label>
            <?php

              wp_editor(
                stripslashes($_POST['postContent']),
                'postContent',
                array(
                  'quicktags'=>false,
                  'editor_height'=>225,
                  'drag_drop_upload'=>true,
                  'editor_class'=>"form-control article-body required",
                  'media_buttons'=>true,
                  'teeny'=>false
                )
              );

            ?>

          </fieldset>
        </div>

        <div class="col-xs-12">

          <div class="row">

            <h3>&nbspAssign Categories</h3>

            <div class="col-xs-5 article-category">
              <fieldset>
                <label for="postCategories1"><?php _e('Category 1','framework')?></label><br />
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

            <div class="col-xs-5 article-category">
              <fieldset>
                <label for="postCategories2"><?php _e('Category 2','framework')?></label><br />
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


          </div><div class="row">

            <div class="col-xs-5 article-category">
              <fieldset>
                <label for="postCategories3"><?php _e('Category 3','framework')?></label><br />
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

            <div class="col-xs-5 article-category">
              <fieldset>
                <label for="postCategories4"><?php _e('Category 4','framework')?></label><br />

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


          </div>

        </div>



        <div class="row">
          <fieldset>
            <label for="postAuthor"><?php _e('Author','framework')?></label>
            <div class="col-3">
              <?php echo  $author_name ?>
            </div>

          </fieldset>
        </div>

        <div class="row">
          <fieldset>
            <label for="postApprover"><?php _e('Approver','framework')?></label>
            <div class="col-3">
              <?php
              $selected = 0;
              if (isset($_POST['postApprover'])){ $selected = $_POST['postApprover']; }
                $users_with_role = implode(",", get_users ( array ( 'fields' => 'id', 'role' => 'sequence_approver' ) ) );
                $args = array(
                  'id'  =>  'postApprover',
                  'name'  =>  'postApprover',
                  'show_option_none' => 'Choose an approver...',
                  'hide_empty' => 0,
                  'include_selected' => true,
                  'include' => $users_with_role,
                  'selected'  =>  $selected,
                  'class' =>  ''
                );
                wp_dropdown_users($args);
              ?>
            </div>

          </fieldset>
        </div>


      </div>
    </div>


  </div>

  <div class="row">
    <div class="col-lg-12 ">
      <fieldset>
          <input type="hidden" name="submitted" id="submitted" value="true" />
          <?php wp_nonce_field( 'post_nonce', 'post_nonce_field' ); ?>

          <div class="btn-group"></div>

            <button type="button" class="btn btn-secondary article-action submit-article"><?php $submit_button = ((isset($_REQUEST['article']) && $article->post_author != $user->ID) && (current_user_can('sequence_approver') || current_user_can('sequence_admin'))) ? "Approve" : "Submit"; _e($submit_button, 'framework') ?></button>
            <button type="button" class="btn btn-secondary article-action cancel-article"><?php _e('Home', 'framework') ?></button>
            <button type="button" style="<?php echo ((isset($_REQUEST['article']) && $article->post_author != $user->ID) && (current_user_can('sequence_approver') || current_user_can('sequence_admin'))) ? "" : "display:none;"; ?>" class="btn btn-secondary article-action reject-article"><?php _e('Reject', 'framework') ?></button>
            <button type="button" class="btn btn-secondary article-action delete-article"><?php _e('Delete', 'framework') ?></button>





      </fieldset>
    </div>
  </div>

</form>

<script>

  (function($){

    $('#postApprover option:first').val(null);
    $('#postApprover').attr('required',true);

    var url = "<?php echo SKB_PLUGIN_URL; ?>";
    var path = "<?php echo SKB_PLUGIN_PATH; ?>";
    var article_id = "<?php echo $article->ID; ?>";

    $('.article-action').click(function(e){

      e.preventDefault();

      if($(this).hasClass('submit-article')){
          $('#primaryPostForm').submit();
          // alert('test');

      }

      if($(this).hasClass('cancel-article')){
        window.location.href = "<?php echo site_url(); ?>/dashboard/";
      }

      if($(this).hasClass('delete-article')){
        $.post(url + 'controllers/ajax_controller.php?method=unpublish_article',
          { article_id: '<?php echo $article->ID; ?>' },
          function(data){
            window.location.href = "<?php echo site_url(); ?>/dashboard/";
          }
        );
      }

      if($(this).hasClass('reject-article')){

        $('#skb-dashboard-modal').modal();
        $('#skb-dashboard-modal .modal-body span').hide();
        $('#skb-dashboard-modal .modal-body p').show();

        $('.reject-article-go').click(function(){
          $.post(url + 'controllers/ajax_controller.php?method=reject_article',
            {
              message: $('#reject-article-message').val(),
              article_id: '<?php echo $article->ID; ?>'
            },
            function(data){
              // alert($('#reject-article-message').val())
              $('#skb-dashboard-modal .modal-body p').hide();
              $('#skb-dashboard-modal .modal-body span').show();
              window.location.href = "<?php echo site_url(); ?>/dashboard/";
            }
          );
        });

      }

      if($(this).hasClass('reject-article-go')){

        // alert('test');



      }






      // skb-dashboard-modal


    });

    $('#sequence-article-form').append('<div id="sequence-article-autosave" class="alert alert-success sequence-alert-message">test</div>');



    setInterval(function(){
      // alert(get_tinymce_content('postContent'));
      $.post(url + 'controllers/ajax_controller.php?method=auto_save',
        {
          article_id: $('#article-id').val(),
          postTitle: $('#postTitle').val(),
          postSummary: $('#postSummary').val(),
          postContent: get_tinymce_content('postContent'),
          postCategories1: $('#postCategories1').val(),
          postCategories2: $('#postCategories2').val(),
          postCategories3: $('#postCategories3').val(),
          postCategories4: $('#postCategories4').val(),
          postApprover: $('#postApprover').val()
        },
        function(data){
          data = JSON.parse(data);
          if(data.article_id !== -1 && data.article_id != ""){
            $('#article-id').val(data.article_id);
          }
          var auto_save = $('#sequence-article-autosave');
          auto_save.html(data.message);
          auto_save.show();
          auto_save.fadeOut(4000);
        }
      );

    },60000);

  })(jQuery);


  function get_tinymce_content(id) {
      var content;
      var inputid = id;
      var editor = tinyMCE.get(inputid);
      var textArea = jQuery('textarea#' + inputid);
      if (textArea.length>0 && textArea.is(':visible')) {
          content = textArea.val();
      } else {
          content = editor.getContent();
      }
      return content;
  }

</script>
