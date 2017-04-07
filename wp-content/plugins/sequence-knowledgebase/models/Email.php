<?php


  class Sequence_Email {

    var $author,$approver,$article,$subject,$message,$rejection_message,$header = "From: gsequence@sequenceqcs.com";

    function __construct($author_id,$approver_id,$article_id,$rejection_message){
      $this->author = get_user_by('id',$author_id);
      $this->approver = get_user_by('id',$approver_id);
      $this->article = get_post($article_id);

      $this->header = "From: gsequence@sequenceqcs.com\r\n";
      $this->header .= "Reply-To: no-reply\r\n";
      $this->header .= "MIME-Version: 1.0\r\n";
      $this->header .= "Content-Type: text/html; charset=ISO-8859-1\r\n";

      if(isset($rejection_message)){
        $this->rejection_message = $rejection_message;
      } else {
        $this->rejection_message = "";
      }

      // var_dump($author);
    }

    public function send($reason){


      $to = "";

      if($reason == "request"){
        $this->subject = "Approval request.";
        $this->message = $this->author->display_name . " is requesting approval for article '" . $this->article->post_title . "'";
        $to = $this->approver->user_email;
      } elseif ($reason == "approval"){
        $this->subject = "Article approved.";
        $this->message = "Your article '". $this->article->post_title ."' has been approved by " . $this->approver->display_name . ".";
        $to = $this->author->user_email;
      } elseif ($reason == "rejection"){
        $this->subject = "Article rejected.";
        $this->message = "Your article '". $this->article->post_title ."' has been rejected by " . $this->approver->display_name . ".\r\n";
        $this->message .= $this->rejection_message;
        $to = $this->author->user_email;
      }


      $html = '
        <html>
          <head>
             <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
             <title>Nettuts Email Newsletter</title>
             <style type="text/css">
                a {color: #4A72AF;}
                body, #header h1, #header h2, p {margin: 0; padding: 0;}
                #main {border: 1px solid #cfcece;}
                img {display: block;}
                #top-message p, #bottom-message p {color: #3f4042; font-size: 12px; font-family: Arial, Helvetica, sans-serif; }
                #header h1 {color: #ffffff !important; font-family: "Lucida Grande", "Lucida Sans", "Lucida Sans Unicode", sans-serif; font-size: 24px; margin-bottom: 0!important; padding-bottom: 0; }
                #header h2 {color: #ffffff !important; font-family: Arial, Helvetica, sans-serif; font-size: 24px; margin-bottom: 0 !important; padding-bottom: 0; }
                #header p {color: #ffffff !important; font-family: "Lucida Grande", "Lucida Sans", "Lucida Sans Unicode", sans-serif; font-size: 12px;  }
                h1, h2, h3, h4, h5, h6 {margin: 0 0 0.8em 0;}
                h3 {font-size: 28px; color: #444444 !important; font-family: Arial, Helvetica, sans-serif; }
                h4 {font-size: 22px; color: #4A72AF !important; font-family: Arial, Helvetica, sans-serif; }
                h5 {font-size: 18px; color: #444444 !important; font-family: Arial, Helvetica, sans-serif; }
                p {font-size: 12px; color: #444444 !important; font-family: "Lucida Grande", "Lucida Sans", "Lucida Sans Unicode", sans-serif; line-height: 1.5;}
             </style>
          </head>
          <body>
            <table width="100%" cellpadding="0" cellspacing="0" bgcolor="e4e4e4"><tr><td>
            <table id="top-message" cellpadding="20" cellspacing="0" width="600" align="center">
                <tr>
                  <td align="center">
                    <p>Trouble viewing this email? <a href="#">View in Browser</a></p>
                  </td>
                </tr>
              </table><!-- top message -->
            <table id="main" width="600" align="center" cellpadding="0" cellspacing="15" bgcolor="ffffff">
                <tr>
                  <td>
                    <table id="header" cellpadding="10" cellspacing="0" align="center" bgcolor="8fb3e9">
                      <tr>
                        <td width="100%" bgcolor="#ffffff"><a href="'. site_url() .'/dashboard/"><img alt="SEQUENCE KNOWLEDGEBASE" src="'. SKB_PLUGIN_URL .'images/logo.png" /></td>
                      </tr>
                    </table><!-- header -->
                  </td>
                </tr><!-- header -->
                <tr>
                  <td>
                    <table id="content-2" cellpadding="0" cellspacing="0" align="center">
                    <tr>
                      <td align="center" width="100%">
                        <p>Click <a href="'. site_url() .'/dashboard/">here</a> to visit Sequence Knowledgebase Dashboard. </p>
                      </td>
                    </tr>
                    </table><!-- content-2 -->
                  </td>
                </tr><!-- content-2 -->
                <tr>
                  <td></td>
                </tr>
                <tr>
                  <td>
                    <table id="content-1" cellpadding="0" cellspacing="0" align="center">
                      <tr>
                        <td width="15"></td>
                        <td width="375" valign="top" colspan="3">
                          <h3>'. $this->article->post_title .'</h3>
                          <h4>'. $this->message .'</h4>
                        </td>

                      </tr>
                    </table><!-- content 1 -->
                  </td>
                </tr><!-- content 1 -->
                <tr>
                  <td>
                    <table id="content-2" cellpadding="0" cellspacing="0" align="center">
                    <tr>
                      <td align="center" width="100%">
                        <p>Click <a href="'. site_url() .'dashboard/view-article/?article='. $this->article->ID .'">here</a> to view article. </p>
                      </td>
                    </tr>
                    </table><!-- content-2 -->
                  </td>
                </tr><!-- content-2 -->
              </table><!-- main -->
            </td></tr></table><!-- wrapper -->
          </body>
        </html>
      ';

      mail($to,$this->subject,$html,$this->header);


    }

  }



 ?>
