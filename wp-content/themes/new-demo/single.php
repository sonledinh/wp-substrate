<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package new-demo
 */

get_header();
?>
<section class="new-detail"> 
	<div class="container">
		<div class="title-detail">
			<h1><?php the_title() ?></h1>
			<div class="description">
				<?php the_field('desc-news') ?>
			</div>
		</div>
		<div class="detail">
			<?php the_content() ?>
		</div>
	</div>
</section>
<?php
get_sidebar();
get_footer();
 