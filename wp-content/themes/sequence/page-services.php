<?php
/*
 * Template Name: Services
 */
?>
<?php get_header(); ?>
<div id="hero">
	<?php if(get_field('image')): ?>
		<img id="hero-image" src="<?php the_field('image'); ?>" alt="Hero" />
	<?php endif; ?>
	<?php if(get_field('title')): ?>
		<div id="hero-title"><?php the_field('title'); ?></div>
	<?php endif; ?>
</div>
<div id="main">
	<div id="content">
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
		<?php if(get_field('services', 'option')): ?>
			<?php while(has_sub_field('services', 'option')): ?>
				<div class="service">
					<div class="services-title-wrapper">
						<span class="services-title"><?php the_sub_field('service_title', 'option'); ?></span>
						<span class="services-subtitle"><?php the_sub_field('services_subtitle', 'option'); ?></span>
					</div>
					<div class="services-text"><?php the_sub_field('services_text', 'option'); ?></div>
					<a class="services-link" href="<?php the_sub_field('services_link', 'option'); ?>">Read More</a>
				</div>
			<?php endwhile; ?>
		<?php endif; ?>
	</div>
	<div id="sidebar">
		<?php if(get_field('employee_spotlight', 'option')): ?>
			<div class="employee-spotlight">
				<div class="employee-spotlight-title-wrapper">
					<span class="employee-spotlight-title">Employee</span>
					<span class="employee-spotlight-subtitle">Spotlight</span>
				</div>
				<div class="flexslider employee-spotlight-slideshow">
					<ul class="slides">
						<?php while(has_sub_field('employee_spotlight', 'option')): ?>
							<li>
								<div class="employee-spotlight-slide">
									<img class="employee-spotlight-image" src="<?php the_sub_field('image', 'option'); ?>" alt="Employee" />
									<div class="employee-job-wrapper">
										<div class="employee-spotlight-name"><?php the_sub_field('name', 'option'); ?></div>
										<div class="employee-spotlight-job-title"><?php the_sub_field('job_title', 'option'); ?></div>
									</div>
									<div class="employee-spotlight-text"><?php the_sub_field('text', 'option'); ?></div>
									<a class="employee-spotlight-link" href="<?php the_sub_field('link', 'option'); ?>">Read More</a>
								</div>
							</li>
						<?php endwhile; ?>
					</ul>
				</div>
			</div>
		<?php endif; ?>
		<?php if(get_field('call_to_actions', 'option')): ?>
			<?php while(has_sub_field('call_to_actions', 'option')): ?>
				<a class="call-to-action-link" href="<?php the_sub_field('call_to_action_link', 'option'); ?>"><img class="call-to-action-image" src="<?php the_sub_field('call_to_action_image', 'option'); ?>" alt="Call to action" /></a>
			<?php endwhile; ?>
		<?php endif; ?>
	</div>
</div>
<?php get_footer(); ?>