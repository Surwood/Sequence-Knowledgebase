<style>

#sequence-article-form {
  width: 100%;
}

#sequence-article-form fieldset {
  margin: 15px;
}



</style>

<div id="sequence-article-form" class="container add-article">

<hr />

<?php if ( $postTitleError != '' ) { ?>
    <span class="error"><?php echo $postTitleError; ?></span>
    <div class="clearfix"></div>
<?php } ?>

<form action="" id="primaryPostForm" method="POST">

  <div class="row">
    <div class="col-8">
      <div class="row form-group">

        <div class="col-12 ">
          <fieldset>
              <label for="postTitle"><?php _e('Title:', 'framework') ?></label>
              <input type="text" name="postTitle" value="<?php if ( isset( $_POST['postTitle'] ) ) echo $_POST['postTitle']; ?>" id="postTitle" class="form-control required" />
          </fieldset>
        </div>

        <div class="col-12 ">
          <fieldset>
              <label for="postContent"><?php _e('Post Content:', 'framework') ?></label>
              <textarea name="postContent" id="postContent" class="form-control required"><?php if ( isset( $_POST['postContent'] ) ) { if ( function_exists( 'stripslashes' ) ) { echo stripslashes( $_POST['postContent'] ); } else { echo $_POST['postContent']; } } ?></textarea>
          </fieldset>
        </div>

        <div class="col-12 ">
            <?php echo do_shortcode('[sequence_add_attachment]'); ?>
        </div>

        <div class="col-12 ">
          <fieldset>
              <input type="hidden" name="submitted" id="submitted" value="true" />
              <?php wp_nonce_field( 'post_nonce', 'post_nonce_field' ); ?>
              <button type="submit" class="btn form-control"><?php _e('Add Post', 'framework') ?></button>
          </fieldset>
        </div>




      </div>
    </div>
    <div class="col-4">
test
    </div>

  </div>











</form>
