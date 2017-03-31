<div id="sequence-pending-approval">

  <hr />

    <h3>Articles Pending Your Approval</h3>

  <hr />

<?php

if(count($pending_approval)>0){
  ?><hr /><h2>Pending Your Approval</h2><hr /><?php
  foreach($pending_approval as $post){
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
