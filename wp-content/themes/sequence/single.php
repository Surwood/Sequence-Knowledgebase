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
				<p class="created"><?php the_time('F jS, Y') ?></p>
				<?php the_content(); ?>
			</div>
		<?php endwhile; ?>
		<?php else : ?>
			<div id="main-content">
				<h2>Not Found</h2>
			</div>
		<?php endif; ?>
	</div>
	<?php get_sidebar(); ?>
</div>
<?php get_footer(); ?>