


var spinner = '<img src="'+ php_vars.url + 'images/spinner.gif' +'" />';


jQuery(document).ready(function($){

  // $('#sequence-search-results').html(spinner);

  $('.sequence-filter-submit').click(function(){
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
  alert('test');
  $('.controls').click(function(){

    if($(this).hasClass('home')){
      alert(php_vars.site);
      window.location.href = php_vars.site + "/dashboard/";
    } else {
        window.location.href = php_vars.site + "/dashboard/add-article";
    }

  });

});
