<?php /* Template Name: Home */ ?>
<?php get_header() ?>
<main>
	<section class="box-banner">
		<div class="container">
			<div class="info-banner">
				<div class="link-banner link-git"><a href="<?php echo get_field('link_left'); ?>" target="_blank">github</a></div>
				<div class="build-tag text-center">
					<h3 class="build-1"><?php echo get_field('title_banner_1'); ?></h3>
					<div class="text-loop text-center">
						<div class="slide-text-loop"> 
							<?php while ( has_sub_field('text_slide_banner' ) ) : ?>
								<div class="item"><h2><?php the_sub_field('text_banner') ?></h2></div>
							<?php endwhile; ?> 
						</div>
					</div>
					<h3 class="build-2"><?php echo get_field('title_banner_2') ?></h3>
				</div>
				<div class="link-banner link-twit"><a href="<?php echo get_field('link_right'); ?>" target="_blank">twitter</a></div> 
			</div>
			<div class="anim-effect text-center"> <img src="<?php echo __BASE_URL__ ?>/images/anim.gif" class="img-fluid" alt=""></div>
		</div>
		<div class="btn-scroll text-center"><a href="#build"> <img src="<?php echo __BASE_URL__ ?>/images/scroll.svg" class="img-fluid" alt=""></a></div>
	</section>
	<section id="build" class="box-build"> 
		<div class="container">
			<div class="content-build">
				<div class="title text-center">
					<h2><?php the_field('title_build') ?></h2>
				</div>
				<div class="desc-title text-center">
					<?php the_field('desc_build') ?>
				</div>
				<div class="link-more text-center"><a href="<?php echo the_field('link_href_build') ?>" target="_blank"><?php the_field('link_build_text') ?>  <img src="<?php echo __BASE_URL__ ?>/images/link.png" class="img-fluid" alt=""></a></div>
				<div class="anim-effect text-center"> <img src="<?php echo __BASE_URL__ ?>/images/anim.gif" class="img-fluid" alt=""></div>
			</div>
		</div>
	</section>
	<section class="box-service">
		<div class="container">
			<div class="lits-srv">
				<div class="row">
					<?php while ( has_sub_field('list_servist' ) ) : ?>
						
						<div class="col-md-6">
							<div class="item-srv text-center">
								<div class="icon"> <img src="<?php echo get_sub_field('icon_service')['url'] ?>" class="img-fluid" alt=""></div>
								<div class="info">
									<h3><?php the_sub_field('title_service') ?></h3>
									<div class="desc"><?php the_sub_field('desc') ?></div> 
								</div>
							</div>
						</div>
					<?php endwhile; ?>  
				</div>
			</div>
		</div>
	</section>
	<section class="box-started">
		<div class="container">
			<div class="content-started text-center">
				<div class="title">
					<h2><?php the_field('title_started') ?></h2>
				</div>
				<div class="desc-title">
					<?php the_field('desc_started') ?>
				</div>
				<div class="link-more text-center"><a href="<?php the_field('link_href_started') ?>" target="_blank"><?php the_field('title_link _started') ?>  <img src="<?php echo __BASE_URL__ ?>/images/link.png" class="img-fluid" alt=""></a></div>
				<div class="avarta"> <img src="<?php echo get_field('avarta_started')['url'] ?>" class="img-fluid" alt=""></div>
			</div>
		</div>
	</section>
	<section class="box-polkadot">
		<div class="container">
			<div class="content-pol">
				<div class="title">
					<h2><?php the_field('title_polkadot') ?></h2>
				</div>
				<div class="desc-title ml-0">
					<?php the_field('desc_polkadot') ?>
				</div>
				<div class="link-more"><a href="<?php the_field('href_link_polkadot') ?>" target="_blank"><?php the_field('text_link_polkadot') ?>  <img src="<?php echo __BASE_URL__ ?>/images/link.png" class="img-fluid" alt=""></a></div>
			</div>
			<div class="anim-effect text-center"> <img src="<?php echo __BASE_URL__ ?>/images/anim.gif" class="img-fluid" alt=""></div>
		</div>
	</section>
	<section class="box-future">
		<div class="container">
			<div class="content-pol text-center">
				<div class="title">
					<h2><?php the_field('title_future') ?></h2>
				</div>
				<div class="desc-title">
					<?php the_field('desc_future') ?>
				</div>
			</div>
		</div>
	</section>
	<section class="box-team">
		<div class="container">
			<div class="content-team">
				<div class="row align-items-center">
					<div class="col-md-5">
						<div class="text-team">
							<h3><?php the_field('title_Substrate') ?></h3>
							<div class="desc">
								<?php the_field('desc_Substrate') ?>
							</div>
							<div class="link-more"><a href="<?php the_field('link_Substrate') ?>" target="_blank"><?php the_field('txt_link_Substrate') ?></a></div>
							<div class="list-part">
								<ul>
									<?php while ( has_sub_field('icon-partner') ) : ?>
										<li>
											<div class="item"><a href=""> <img src="<?php echo get_sub_field('avarta_partner')['url'] ?>" class="img-fluid" alt=""></a></div>
										</li>
									<?php endwhile; ?> 
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-7">
						<div class="box-video"> 
							<?php the_field('video_Substrate') ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="box-system">
		<div class="container">
			<div class="content-system text-center">
				<div class="title">
					<h2><?php the_field('title_Ecosystem') ?></h2>
				</div>
				<div class="list-system">
					<div class="row">
						<?php while ( has_sub_field('list_ecosystem') ) : ?>
							<div class="col-md-6">
								<div class="item-sys text-center">
									<h3><?php the_sub_field('sub_title_ecosystem') ?></h3>
									<div class="info">
										<div class="desc"><?php the_sub_field('desc_ecosystem') ?></div>
										<div class="link-more text-center"><a href="<?php the_sub_field('href_link_ecosystem') ?>" target="_blank"><?php the_sub_field('txx_link_ecosystem') ?>  <img src="<?php echo __BASE_URL__ ?>/images/link.png" class="img-fluid" alt=""></a></div>
									</div>
								</div>
							</div>
						<?php endwhile; ?>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="box-newletter">
		<div class="container">
			<div class="content-newletter">
				<div class="title">
					<h2><?php the_field('title_Newsletter') ?></h2>
				</div>
				<div class="desc-title ml-0">
					<?php the_field('desc_Newsletter') ?>
				</div>
				<div class="form-subscribe">
					<input type="text" placeholder="hello@your-email.com">
				</div>
			</div>
		</div>
	</section>
</main>
<?php get_footer() ?>