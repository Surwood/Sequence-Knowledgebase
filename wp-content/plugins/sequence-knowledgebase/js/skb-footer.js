
  jQuery(document).ready(function($){

    $('#footer').hide();


    $('.return-home').click(function(){
      window.location.href = php_vars.site + "/dashboard/";
    });

    $('#add-article-button-snoogens').click(function(){
      alert('test');
      window.location.href = php_vars.site + "/dashboard/add-article/";
    });

    $('.some-other-button-test').click(function(){
      alert('test');
    });



    $('.sequence-filter-field').change(function(){
      $('#sequence-search-results').html(spinner);
      $.post(
        php_vars.url + 'controllers/ajax_controller.php?method=get_search_results',
        {
          look: $('#s').val(),
          postCategories1: $('#postCategories1').val(),
          postCategories2: $('#postCategories2').val(),
          postCategories3: $('#postCategories3').val(),
          postCategories4: $('#postCategories4').val(),
          dateAfter: $('#dateAfter').val(),
          dateBefore: $('#dateBefore').val()
         },
        function(data){
          $('#sequence-search-results').html(data);
        }
      );
    });


  });

(function($){

  // $('#dashboard-left-sidebar .controls').click(function(){
  //
  //
  //
  // });



})(jQuery);
