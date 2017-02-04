			<?php if(get_field('partners', 'option')): ?>
				<div id="subfooter">
					<div id="subfooter-wrapper">
						<div class="flexslider partner-slideshow">
							<ul class="slides">
								<?php while(has_sub_field('partners', 'option')): ?>
									<li>
										<img src="<?php the_sub_field('partner_logo', 'option'); ?>" alt="Partner" />
									</li>
								<?php endwhile; ?>
							</ul>
						</div>
					</div>
				</div>
			<?php endif; ?>
		</div> <!-- #page -->
		<div id="footer">
			<?php wp_nav_menu( array( 'theme_location' => 'footer-menu' ) ); ?>
			<div id="copyright">
				&copy; <?php print date('Y', time());?> Sequence Validation Consulting Services. All Rights Reserved.<br />
				<!--<a href="http://clickoptimize.com" target="_blank">Internet Marketing</a> & <a href="http://clickoptimize.com" target="_blank">Web Design</a> by <a href="http://clickoptimize.com" target="_blank">Click Optimize, LLC</a>.-->
				<?php /*if(get_field('phone_number', 'option')): ?>
					<div id="footer-phone-number-tagline">Call Toll Free</div>
					<div id="footer-phone-number"><?php the_field('phone_number', 'option'); ?></div>
				<?php endif; */?>
			</div>
		</div>
		<?php wp_footer(); ?>
	</body>
</html>