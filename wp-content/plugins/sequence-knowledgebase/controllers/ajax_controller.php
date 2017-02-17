<?php

   $parse_uri = explode( '/wp-content/', $_SERVER['SCRIPT_FILENAME'] );
   require_once( $parse_uri[0] . '/wp-load.php' );

    if ($_GET['action'] == "test"){
        test();
    } elseif ($_GET['action'] == "test"){

    }

    function test(){

        require( BRT_PLUGIN_PATH . "views/test.php" );

    }

?>
