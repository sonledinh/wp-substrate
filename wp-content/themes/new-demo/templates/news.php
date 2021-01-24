<?php /* Template Name: News */ ?>
<?php get_header() ?>
<main>
	<section> 
		<div class="container">
			<div class="list-news">
				<div class="item-news">
					<div class="avarta"><a href=""><img src="http://tpl.gco.vn/free-azevent/images/new-1.jpg" class="img-fluid" alt=""></a></div>
					<h3><a href="">LOREM IPSUM IS SIMPLY DUMMY TEXT OF THE PRINTING AND TYPESETTING INDUSTRY.</a></h3>
					<div class="desc">
						Build a brand for your company using a specific color scheme and a professional logo designed with your business in mind. Keep it simple and memorable and use it everywhere. Signs, business cards, web sites, yellow page ads and any printed brochures should include your logo and company colors. Join trade associations and local organizations. […]
					</div>
				</div>
				<div class="item-news">
					<div class="avarta"><a href=""><img src="http://tpl.gco.vn/free-azevent/images/new-1.jpg" class="img-fluid" alt=""></a></div>
					<h3><a href="">LOREM IPSUM IS SIMPLY DUMMY TEXT OF THE PRINTING AND TYPESETTING INDUSTRY.</a></h3>
					<div class="desc">
						Build a brand for your company using a specific color scheme and a professional logo designed with your business in mind. Keep it simple and memorable and use it everywhere. Signs, business cards, web sites, yellow page ads and any printed brochures should include your logo and company colors. Join trade associations and local organizations. […]
					</div>
				</div>
				<div class="item-news">
					<div class="avarta"><a href=""><img src="http://tpl.gco.vn/free-azevent/images/new-1.jpg" class="img-fluid" alt=""></a></div>
					<h3><a href="">LOREM IPSUM IS SIMPLY DUMMY TEXT OF THE PRINTING AND TYPESETTING INDUSTRY.</a></h3>
					<div class="desc">
						Build a brand for your company using a specific color scheme and a professional logo designed with your business in mind. Keep it simple and memorable and use it everywhere. Signs, business cards, web sites, yellow page ads and any printed brochures should include your logo and company colors. Join trade associations and local organizations. […]
					</div>
				</div>
				<div class="item-news">
					<div class="avarta"><a href=""><img src="http://tpl.gco.vn/free-azevent/images/new-1.jpg" class="img-fluid" alt=""></a></div>
					<h3><a href="">LOREM IPSUM IS SIMPLY DUMMY TEXT OF THE PRINTING AND TYPESETTING INDUSTRY.</a></h3>
					<div class="desc">
						Build a brand for your company using a specific color scheme and a professional logo designed with your business in mind. Keep it simple and memorable and use it everywhere. Signs, business cards, web sites, yellow page ads and any printed brochures should include your logo and company colors. Join trade associations and local organizations. […]
					</div>
				</div>
			</div>
		</div>
	</section>

	<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<header class="entry-header">
		<?php
		if ( is_singular() ) :
			the_title( '<h1 class="entry-title">', '</h1>' );
		else :
			the_title( '<h2 class="entry-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' );
		endif;

		if ( 'post' === get_post_type() ) :
			?>
			<div class="entry-meta">
				<?php
				new_demo_posted_on();
				new_demo_posted_by();
				?>
			</div><!-- .entry-meta -->
		<?php endif; ?>
	</header><!-- .entry-header -->

	<?php new_demo_post_thumbnail(); ?>

	<div class="entry-content">
		<?php
		the_content(
			sprintf(
				wp_kses(
					/* translators: %s: Name of current post. Only visible to screen readers */
					__( 'Continue reading<span class="screen-reader-text"> "%s"</span>', 'new-demo' ),
					array(
						'span' => array(
							'class' => array(),
						),
					)
				),
				wp_kses_post( get_the_title() )
			)
		);

		wp_link_pages(
			array(
				'before' => '<div class="page-links">' . esc_html__( 'Pages:', 'new-demo' ),
				'after'  => '</div>',
			)
		);
		?>
	</div><!-- .entry-content -->

	<footer class="entry-footer">
		<?php new_demo_entry_footer(); ?>
	</footer><!-- .entry-footer -->
</article><!-- #post-<?php the_ID(); ?> -->
</main>
<?php get_footer() ?> 