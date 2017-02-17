<?php
    
    class Affiliate {
        
        var $id,$local_id,$name,$email,$city,$phone;
        
        function __construct($id){
        
            if ($id){
                
               // $this->get_from_id($id);
               $this->id = $id;
            
            }
    
        }
        
        function get_from_id(){
            
            $result = false;
            
            global $wpdb;
            
            $sql = "
                SELECT $wpdb->posts.ID
                    FROM $wpdb->posts JOIN $wpdb->postmeta
                        ON $wpdb->posts.ID = $wpdb->postmeta.post_id
                    
                    WHERE $wpdb->postmeta.meta_key = 'affiliate_id'
                        AND $wpdb->postmeta.meta_value = '". $this->id ."'
                        AND $wpdb->posts.post_type = 'affiliate'
                        AND $wpdb->posts.post_status = 'publish'
            ";
            
            if ($results = $wpdb->get_results($sql)){
                
               // foreach($results as $result){
                    
                    $result = $results[0];
                    
                    
                    
                    $this->id = $id;
                    $this->local_id = $result->ID;
                    
                    $meta = get_post_meta($this->local_id);
                    
                   // die($meta['affiliate_name'][0]);
                    
                    
                    $this->name = $meta['affiliate_name'][0];
                    $this->city = $meta['affiliate_city'][0];
                    $this->phone = $meta['affiliate_phone'][0];
                    $this->email = $meta['affiliate_email'][0];
                    
                  //  die($this->name);
                
              //  }
                

                
            }
            
            return $result;
            
        }
        
        function create($data){
    
            $mypost = array(                    
                'post_title' =>  $data['affiliate_name'],
                'post_content' => "",
                'post_status' =>    "publish",
                'post_type' =>  "affiliate"                
            );
            
            wp_insert_post($mypost);
            
            global $wpdb;
            update_post_meta($wpdb->insert_id,'affiliate_id',$data['affiliate_id']);
                            
            $this->update($data);
        
        }
        
        function update($data){
                        
            if ($data['affiliate_id']){
                update_post_meta($this->local_id,'affiliate_id',$data['affiliate_id']);
            }
            if ($data['affiliate_name']){
                update_post_meta($this->local_id,'affiliate_name',$data['affiliate_name']);
            }
            if ($data['affiliate_city']){
                update_post_meta($this->local_id,'affiliate_city',$data['affiliate_city']);
            }
            if ($data['affiliate_phone']){
                update_post_meta($this->local_id,'affiliate_phone',$data['affiliate_phone']);
            }
            if ($data['affiliate_email']){
                update_post_meta($this->local_id,'affiliate_email',$data['affiliate_email']);
            }
            
            $this->get_from_id();
                    
        }
    
    }


?>