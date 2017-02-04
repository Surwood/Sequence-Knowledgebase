/**
 * If a form element wrapper has a class of compact-form put value attribute
 * inside the element.
 *
 * See style.css for styles that hide the default label if the form element
 * wrapper has a class of compact-form.
 */
$(document).ready(function() {
	$('.compact-form input[type="text"], .compact-form input[type="password"], .compact-form textarea').focus(function(){
		if (this.value == this.defaultValue) this.value="";
	}).blur(function(){
		if ( !this.value.length ) this.value = this.defaultValue;
	});
});


/**
 * Call flexslider for particular classes.
 */
$(window).load(function(){
	$('.partner-slideshow').flexslider({
		animation: "slide",
		controlNav: false,
		animationLoop: false,
		itemWidth: 206,
		itemMargin: 20
	});
	$('.home-page-slideshow').flexslider({
		animation: "fade",
		directionNav: false,
		manualControls: ".flex-control-nav li"
	});	
	$('.employee-spotlight-slideshow').flexslider({
		animation: "fade",
		directionNav: false
	});
});