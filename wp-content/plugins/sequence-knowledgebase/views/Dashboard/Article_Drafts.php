<div id="sequence-article-drafts">
  <?php if(count($article_drafts)>0){ ?>
      <div href="#article-draft-results" data-toggle="collapse" class="article-widget-header">
        <hr />
        <h3>Your Article Drafts</h3>
        <hr />
      </div>
      <div id="article-draft-results" class="user-article-results collapse">
        <?php foreach($article_drafts as $post){ ?>
            <a href="<?php echo site_url() . "/dashboard/add-article/?article=" . $post->ID; ?>">
              <h3><?php echo $post->post_title; ?></h3>
            </a>
        <?php } ?>
      </div>
  <?php } ?>
  <hr />
</div>
