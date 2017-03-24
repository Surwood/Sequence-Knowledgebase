<?php


  class Sequence_Email {

    var $author,$approver,$article,$subject,$message,$header = "From: gsequence@sequenceqcs.com";

    function __construct($author_id,$approver_id,$article_id){
      $this->author = get_user_by('id',$author_id);
      $this->approver = get_user_by('id',$approver_id);
      $this->article = get_post($article_id);
      // var_dump($author);
    }

    public function send($reason){
      if($reason == "request"){
        $this->subject = "Approval request.";
        $this->message = $this->author->display_name . " is requesting approval for article '" . $this->article->post_title . "'";
        // var_dump($this->approver->user_email);
        // $args = array($this->approver->user_email,$this->subject,$this->message,$this->header);
        // var_dump($args);
        // var_dump()
        mail($this->approver->user_email,$this->subject,$this->message,$this->header);
        var_dump($this->approver->user_email);
      } elseif ($reason == "approval"){
        $this->subject = "Article approved.";
        $this->message = "Your article '". $this->article->post_title ."' has been approved by " . $this->approver->display_name . ".";

        mail($this->author->user_email,$this->subject,$this->message,$this->header);
        var_dump($this->author->user_email);
      }

    }

  }



 ?>
