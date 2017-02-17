<?php



    //pass php vars to javascript




    add_action('wp_enqueue_scripts', 'brt_get_scripts');

    function brt_get_scripts(){

        wp_register_style('brt-css',BRT_PLUGIN_PATH . 'css/black-rainbow-toolkit.css' );
        wp_enqueue_style('blackrainbow-css');

        wp_register_script('brt-js',BRT_PLUGIN_PATH . 'js/black-rainbow-toolkit.js',array('jquery'),1);
        wp_register_script('brt-footer-js',BRT_PLUGIN_PATH . 'js/black-rainbow-footer.js',array('jquery'),1,true);

        wp_enqueue_script('jquery');
        wp_enqueue_script('brt-js');
        wp_enqueue_script('brt-footer-js');


        wp_localize_script('brt-js', 'php_vars', array(
            'plugin_url' => BRT_PLUGIN_URL,
            'plugin_path' =>    BRT_PLUGIN_PATH
        ));

    }


    function remove_activity_dashboard_widget() {
        remove_meta_box( 'dashboard_activity', 'dashboard', 'normal');//since 3.8
    }

    // Hook into the 'wp_dashboard_setup' action to register our function
    add_action('wp_dashboard_setup', 'remove_activity_dashboard_widget' );


    add_action( 'init', 'create_log_post_type' );

    function create_log_post_type() {
        register_post_type( 'debug_log',
            array(
                'labels' => array(
                    'name' => __( 'Debug Logs' ),
                    'singular_name' => __( 'Log' )
                ),
                'menu_icon' =>  BRT_PLUGIN_URL . "images/bug.png",
                'public' => true,
                'has_archive' => true,
                'taxonomies' => array('catagory'),
                'supports'=>   array('title','editor','author','thumbnail', 'excerpt', 'comments')
            )
        );



    }


    add_filter('manage_debug_log_posts_columns', 'add_new_debug_log_columns');
    add_action('manage_debug_log_posts_custom_column','manage_debug_log_columns',10,2);

    function add_new_debug_log_columns($columns){
        //die("nooch");


        $columns['affiliate_id'] = __('Affiliate Id','your_text_domain');

         $columns['date'] = __('L');

         $columns['comments'] = __('Log','column name');

        return $columns;

    }


     function manage_debug_log_columns($column,$post_id){



        $affiliate_id = get_post_meta($post_id,'affiliate_id',true);

        switch ( $column ){

            case 'affiliate_id' :

                echo $affiliate_id;
                break;

        }

    }


    function validate_user_affiliation(){
        $affiliate_id = absint($_GET['AffiliateId']);  //set variable from query string
        $affiliate = get_user_by('id', $affiliate_id); //get user object from affiliate id
        if($affiliate->ID == null) { //stop if we don't find anything
                return false;
        }

        $user_id = get_current_user_id();
        if($user_id == $affiliate_id) { // a user can't affiliate themselves
                return false;
        }
        return $affiliate_id;
    }

    //AFFILIATE POST TYPE



    add_action( 'init', 'create_affiliate_post_type' );

    function create_affiliate_post_type() {
        register_post_type( 'affiliate',
            array(
                'labels' => array(
                    'name' => __( 'Affiliates' ),
                    'singular_name' => __( 'Affiliate' )
                ),
                'menu_icon' =>  BRT_PLUGIN_URL . "images/affiliates.png",
                'public' => true,
                'has_archive' => true,
                'rewrite' =>    FALSE,
                'supports'=>   array('title','thumbnail')
            )
        );


    }


    add_action('admin_init', 'brt_add_affiliate_meta');
    add_action('save_post', 'brt_save_affiliate_meta');

    function brt_affiliate_meta(){

        global $post;

        $aff_meta = get_post_meta($post->ID);

        ?>

            <label for="affiliate_id">Affiliate Id

                <input id="affiliate_id" type="number" name="affiliate_id" value="<?php if($aff_meta['affiliate_id'][0]){ echo $aff_meta['affiliate_id'][0]; }  ?>" />

            </label>

            <label for="affiliate_id">Affiliate Name

                <input id="affiliate_name" type="text" name="affiliate_name" value="<?php if($aff_meta['affiliate_name'][0]){ echo $aff_meta['affiliate_name'][0]; }  ?>" />

            </label>

            <label for="affiliate_id">Affiliate Name

                <input id="affiliate_name" type="text" name="affiliate_name" value="<?php if($aff_meta['affiliate_name'][0]){ echo $aff_meta['affiliate_name'][0]; }  ?>" />

            </label>

        <?php

    }


    function brt_save_affiliate_meta($post_id){

        global $post;

        if($_POST){

            update_post_meta($post->ID, 'affiliate_id',$_POST['affiliate_id']);
            update_post_meta($post->ID, 'affiliate_name',$_POST['affiliate_name']);


        }

    }

    function brt_add_affiliate_meta(){

        add_meta_box('custom-metabox', __( 'Affiliate' ),'brt_affiliate_meta','affiliate','normal','high');

    }



    require_once BRT_PLUGIN_PATH . "models/Affiliate.php";


    function brt_update_affiliate_post(){

        $data = array();

        if ($_GET['AffiliateId']){

            $data['affiliate_id'] = $_GET['AffiliateId'];
            if(class_exists('WP_Session'))
            {
                $wp_session = WP_Session::get_instance();

                if ($wp_session['socialbug_name'] != null && strlen($wp_session['socialbug_name']) > 0)
                {

                    $data['affiliate_name'] = $wp_session['socialbug_name'];
                    $data['affiliate_city'] = $wp_session['socialbug_city'];
                    $data['affiliate_phone'] = $wp_session['socialbug_phone'];
                    $data['affiliate_email'] = $wp_session['socialbug_email'];

                }

            }

            $affiliate = new Affiliate($data['affiliate_id']);

            if ($affiliate->get_from_id()){

               $affiliate->update($data);

            } else {

                $affiliate->create($data);

            }
            //brt_affiliate_permalink();
        }

    }

    add_action('wp_loaded','brt_rewrite_url');

    function brt_rewrite_url(){

    //    if ($_GET['AffiliateId'] == "1"){

//             $affiliate = new Affiliate($_GET['AffiliateId']);
//             $affiliate->get_from_id();



          //  $new_tag = "%" . $affiliate->name . "%";

           // add_rewrite_tag($new_tag,'([^&]+)');

         //  $user = wp_get_current_user();

          // $new_tag = strtolower(str_replace(' ','-',$user->user_nicename));

        //  $new_tag = $user->user_nicename;

         // $new_tag = "snoogens";

           //die($user->user_nicename);

           //die($new_tag );

          // add_rewrite_rule($new_tag,'index.php?&AffiliateId=' . $_GET['AffiliateId'],'top');



//           add_rewrite_rule('^affiliate/([^/]*)$','index.php?AffiliateId=$matches[1]','top');
//           //add_rewrite_rule('affiliate/(.+?)/?$','index.php?affiliate=$matches[1]','top');
//
//          add_rewrite_tag('%affiliate%','([^/]*)');
/*
          global $wp_rewrite;

         // $wp_rewrite->add_rule('^affiliate','index.php?AffiliateId=$matches[1]','top');

           echo '<pre>';
           var_dump($wp_rewrite->rules);
           echo '</pre>';*/


               flush_rewrite_rules(true);



        //  die();


      //  }

    }

    add_action('wp_loaded',function(){
       // die('test');
        if ($_GET['AffiliateId']){

//                     $user = wp_get_current_user();
//
//                     // $new_tag = strtolower(str_replace(' ','-',$user->user_nicename));
//
//                     $new_tag = $user->user_nicename;
//
//                     $new_tag = "snoogens";

//                     list($domain,$rest) = explode('wp-content/',BRT_PLUGIN_URL);
               //      wp_redirect($domain . $new_tag);

               //      header("Refresh:0");
//                     exit;

          //  $affiliate = new Affiliate($_GET['AffiliateId']);


           // die($_GET['AffiliateId']);

//             if($affiliate->get_from_id()){
//
//                   //  die(var_dump($affiliate));
//
//                 if($affiliate->name != ""){
//
//                     $new_tag = strtolower(str_replace(' ','-',$affiliate->name));
//
//
//
//                     $user = wp_get_current_user();
//
//                     // $new_tag = strtolower(str_replace(' ','-',$user->user_nicename));
//
//                     $new_tag = $user->user_nicename;
//
//                     list($domain,$rest) = explode('wp-content/',BRT_PLUGIN_URL);
//                     wp_redirect($domain . $new_tag);
//                     exit;
//
//                 }
//
//             }


        }

    });




?>
