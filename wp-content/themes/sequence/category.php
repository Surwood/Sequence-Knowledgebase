<?php get_header(); ?>
<div id="hero">
	<?php if(get_field('image')): ?>
		<img id="hero-image" src="<?php the_field('image'); ?>" alt="Hero" />
	<?php endif; ?>
	<div id="hero-title"><?php single_cat_title(); ?></div>
</div>
<div id="main">
	<div id="content">
		<h1><?php single_cat_title(); ?></h1>
		<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
			<div class="post">
				<?php if(get_field('thumbnail')): ?>
					<img class="post-thumbnail" src="<?php the_field('thumbnail'); ?>" alt="Thumbnail" />
				<?php endif; ?>				
				<h2 class="post-title"><a class="post-title-link" href="<?php the_permalink() ?>"><?php the_title(); ?></a></h2>
				<p class="created"><?php the_time('F jS, Y') ?></p>
				<?php the_content(); ?>
				<a class="post-read-more" href="<?php the_permalink() ?>">Read More</a>
			</div>
		<?php endwhile; ?>
		<div class="navigation">
			<p><?php posts_nav_link(); ?></p>
		</div>
		<?php else : ?>
			<h2>Not Found</h2>
		<?php endif; ?>
	</div>
	<?php get_sidebar(); ?>
</div>
<?php get_footer(); ?>