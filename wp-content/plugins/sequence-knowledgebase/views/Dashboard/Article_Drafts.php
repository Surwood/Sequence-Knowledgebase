<div id="sequence-article-drafts">test
<?php
if(count($article_drafts)>0){
  ?><hr /><h3>Your Article Drafts</h3><hr /><?php
  foreach($article_drafts as $post){
    ?>
      <a href="<?php echo site_url() . "/dashboard/add-article/?article=" . $post->ID; ?>">
        <h3><?php echo $post->post_title; ?></h3>
      </a>
    <?php
  }
}
 ?>
  <hr />
</div>
