<?php get_header(); ?>
<div id="hero">
	<?php if(get_field('slideshow', 'option')): ?>
		<div class="flexslider home-page-slideshow">
			<ul class="slides">
				<?php

				$test_img = array();

				?>
				<?php while(has_sub_field('slideshow', 'option')): ?>
					<?php
					// ob_start();
					// the_sub_field('slideshow_image', 'option');
					// $test_img[] = ob_get_contents();
					// ob_end_clean();

					?>
					<li>
						<a class="slideshow-slide" href="<?php the_sub_field('slideshow_link', 'option'); ?>">
							<img class="slideshow-image" src="<?php the_sub_field('slideshow_image', 'option'); ?>" alt="Slide" />
							<span class="slideshow-title"><?php the_sub_field('slideshow_title', 'option'); ?></span>
							<span class="slideshow-link" href="<?php the_sub_field('slideshow_link', 'option'); ?>">Click here</span>
						</a>
					</li>
				<?php endwhile; ?>

			</ul>

			<ul class="flex-control-nav">
				<?php while(has_sub_field('slideshow', 'option')): ?>
					<li><a class="slideshow-tab" href="<?php the_sub_field('slideshow_link', 'option'); ?>"><?php the_sub_field('slideshow_tab', 'option'); ?></a></li>
				<?php endwhile; ?>
			</ul>


<!--ORIGINAL2
                        <ul class="flex-control-nav">
				<?php while(has_sub_field('slideshow', 'option')): ?>
					<li>
                                            <a href="<?php the_sub_field('slideshow_link', 'option'); ?>" class="slideshow-tab"><?php the_sub_field('slideshow_tab', 'option'); ?>
                                            </a>
                                        </li>
				<?php endwhile; ?>
			</ul>
                    -->
<!--ORIGINAL
			<ul class="flex-control-nav">
				<?php while(has_sub_field('slideshow', 'option')): ?>
					<li><span class="slideshow-tab"><?php the_sub_field('slideshow_tab', 'option'); ?></span></li>
				<?php endwhile; ?>
			</ul>
                    -->
		</div>
	<?php endif;// ?>

</div>
<div id="main">
	<div id="content">
		<?php if(get_field('banner', 'option')): ?>
			<?php while(has_sub_field('banner', 'option')): ?>
				<div class="banner">
					<img class="banner-image" src="<?php the_sub_field('banner_image', 'option'); ?>" alt="Banner" />
					<div class="banner-title-wrapper">
						<span class="banner-title"><?php the_sub_field('banner_title', 'option'); ?></span>
						<span class="banner-subtitle"><?php the_sub_field('banner_subtitle', 'option'); ?></span>
					</div>
					<div class="banner-text"><?php the_sub_field('banner_text', 'option'); ?></div>
					<a class="banner-link" href="<?php the_sub_field('banner_link', 'option'); ?>">Read More</a>
				</div>
			<?php endwhile; ?>
		<?php endif; ?>
		<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
			<div id="main-content">
				<h1><?php the_title(); ?></h1>
				<?php the_content(); ?>
			</div>
		<?php endwhile; ?>
		<?php else : ?>
			<div id="main-content">
				<h2>Not Found</h2>
			</div>
		<?php endif; ?>
	</div>
    <!--
            REMOVED BY RMH ON 29-JAN
	<div id="sidebar">

		<div class="login-form">
			<div class="login-form-title-wrapper">
				<span class="login-form-title">Employee</span>
				<span class="login-form-subtitle">Resources</span>
			</div>
			<a id="login-link" href="/employee-login/" target="_blank">Click here to login</a>
		</div>

		<?php if(get_field('call_to_actions', 'option')): ?>
			<?php while(has_sub_field('call_to_actions', 'option')): ?>
				<a class="call-to-action-link" href="<?php the_sub_field('call_to_action_link', 'option'); ?>"><img class="call-to-action-image" src="<?php the_sub_field('call_to_action_image', 'option'); ?>" alt="Call to action" /></a>
			<?php endwhile; ?>
		<?php endif; ?>
	</div>
      -->
</div>
<?php get_footer(); ?>
