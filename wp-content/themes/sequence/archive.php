<?php get_header(); ?>
<div id="hero">
	<?php if(get_field('image')): ?>
		<img id="hero-image" src="<?php the_field('image'); ?>" alt="Hero" />
	<?php endif; ?>
	<?php if (is_category()) { ?>
		<div id="hero-title">Archive for the &#8216;<?php single_cat_title(); ?>&#8217; Category</div>
	<?php } elseif( is_tag() ) { ?>
		<div id="hero-title">Posts Tagged &#8216;<?php single_tag_title(); ?>&#8217;</div>
	<?php } elseif (is_day()) { ?>
		<div id="hero-title">Archive for <?php the_time('F jS, Y'); ?></div>
	<?php } elseif (is_month()) { ?>
		<div id="hero-title">Archive for <?php the_time('F, Y'); ?></div>
	<?php } elseif (is_year()) { ?>
		<div id="hero-title">Archive for <?php the_time('Y'); ?></div>
	<?php } elseif (is_author()) { ?>
		<div id="hero-title">Author Archive</div>
	<?php } elseif (isset($_GET['paged']) && !empty($_GET['paged'])) { ?>
		<div id="hero-title">Blog Archives</div>
	<?php } ?>		
</div>
<div id="main">
	<div id="content">
		<?php if (is_category()) { ?>
			<h1>Archive for the &#8216;<?php single_cat_title(); ?>&#8217; Category</h1>
		<?php } elseif( is_tag() ) { ?>
			<h1>Posts Tagged &#8216;<?php single_tag_title(); ?>&#8217;</h1>
		<?php } elseif (is_day()) { ?>
			<h1>Archive for <?php the_time('F jS, Y'); ?></h1>
		<?php } elseif (is_month()) { ?>
			<h1>Archive for <?php the_time('F, Y'); ?></h1>
		<?php } elseif (is_year()) { ?>
			<h1>Archive for <?php the_time('Y'); ?></h1>
		<?php } elseif (is_author()) { ?>
			<h1>Author Archive</h1>
		<?php } elseif (isset($_GET['paged']) && !empty($_GET['paged'])) { ?>
			<h1>Blog Archives</h1>
		<?php } ?>
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