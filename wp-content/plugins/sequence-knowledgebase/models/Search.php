<?php

  class Article_Search {

    var $string,$cat,$tag1,$tag2,$tag3,$after,$before;

    function __construct($args){

      $this->set_filters($args);


    }

    public function set_filters($args){
      if(isset($args)){
        if(is_array($args)){
          foreach ($args as $key => $value){
            $this->{$key} = $value;
          }
        }
      }
    }

    public function get_results(){


        $string = "";
        $tax_query = array(
          'relation'  =>  "AND"
        );
        $date_query = false;

        $results = array();

        if(isset($this->string)){
          $string = $this->string;
        }

        if(isset($this->cat)){
          $term = get_term($this->cat);
          if($term){
            // $category__in[] = $this->cat;
            $tax_query[] = array(
              'taxonomy'  =>  $term->taxonomy,
              'field' =>  'term_id',
              'terms' =>  $this->cat
            );
          }
        }

        if(isset($this->tag1)){
          $term = get_term($this->tag1);
          if($term){
            $tax_query[] = array(
              'taxonomy'  =>  $term->taxonomy,
              'field' =>  'term_id',
              'terms' =>  $this->tag1
            );
          }
        }

        if(isset($this->tag2)){
          $term = get_term($this->tag2);
          if($term){
            $tax_query[] = array(
              'taxonomy'  =>  $term->taxonomy,
              'field' =>  'term_id',
              'terms' =>  $this->tag2
            );
          }
        }

        if(isset($this->tag3)){
          $term = get_term($this->tag3);
          if($term){
            $tax_query[] = array(
              'taxonomy'  =>  $term->taxonomy,
              'field' =>  'term_id',
              'terms' =>  $this->tag3
            );
          }
        }

        if(isset($this->after) && isset($this->before)){
          $date_query = array(
            array('inclusive' => true)
          );
          if(isset($this->after)){
            $date_query[]['after'] = $this->after;
          }
          if(isset($this->before)){
            $date_query[]['before'] = $this->before;
          }
        } elseif(isset($this->after) && !isset($this->before)){
          $date_query = array(
            'after' =>  $this->after
          );
        } elseif (!isset($this->after) && isset($this->before)){
          $date_query = array(
            'before' =>  $this->before
          );
        }


        $article_query = new WP_Query(
          array(
            'post_type' =>  "skb_article",
            'post_status' =>  "publish",
            's' =>  $string,
            'tax_query' =>  $tax_query,
            'date_query'  =>  $date_query
          )
        );


        return $article_query;

    }


  }


 ?>
