<?php 
  require_once("../wp-load.php");
  require_once("../wp-includes/pluggable.php");

  global $current_user;
  get_currentuserinfo();
  echo "User id: " . $current_user->user_login . "</br>";
  echo "User first name: " . $current_user->user_firstname . "</br>";

?>