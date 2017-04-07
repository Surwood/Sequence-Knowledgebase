<div id="sequence-pending-approval">

<?php



if(count($pending_approval)>0){
  ?><hr /><h3>Articles Pending Your Approval</h3><hr /><?php
  foreach($pending_approval as $post){
    ?>
      <a href="<?php echo site_url() . "/dashboard/add-article/?article=" . $post->ID; ?>">
        <h3><?php echo $post->post_title; ?></h3>
      </a>
    <?php

  }

}

if(count($rejected_articles)>0){
  ?><hr /><h3>Rejected by Approver</h3><hr /><?php
  foreach($rejected_articles as $post){
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
