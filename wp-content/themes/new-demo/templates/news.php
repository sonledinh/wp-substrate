<?php /* Template Name: News */ ?>
<?php get_header() ?>
    <section class="news pt-100 pb-60">
        <div class="container">
            <div class="list-new-hot list-new-cate">
                <div class="row">
                    <?php  
                        $args=array(
                            'post_type' => 'post',
                            'orderby'   => 'publish_date',
                            'order'     => 'DESC',
                            'paged'     => get_query_var('paged') ? get_query_var('paged') : 1,
                            'posts_per_page' => 8,
                        ); 
                        $my_query = new wp_query($args);
                        $max_num_pages = $my_query->max_num_pages;
                    ?>
                    <?php $i = 0; ?>
                    <?php if ( $my_query->have_posts() ): ?>
                        <?php while ($my_query->have_posts()):$my_query->the_post(); ?>
                            <div class="col-md-3">
                                    <div class="item-new-hot">
                                        <div class="avarta">
                                            <a href="<?php echo get_the_permalink() ?>"><img src="<?php echo get_the_post_thumbnail_url() ?>" class="img-fluid w-100" alt=""></a>
                                            <div class="date text-uppercase"><?php echo get_the_date( $d = 'd/m/yy' ) ?></div>
                                        </div>
                                        <div class="info">
                                            <h3><a href="<?php echo get_the_permalink() ?>"><?php echo get_the_title(); ?></a></h3>
                                            <ul class="list-inline">
                                                <li class="list-inline-item"><img src="<?php echo __BASE_URL__ ?>/images/cate.svg" class="img-fluid" alt=""><span>Tin tức</span></li>
                                                <li class="list-inline-item"><img src="<?php echo __BASE_URL__ ?>/images/comment.svg" class="img-fluid" alt=""><span>3 Comments</span></li>
                                            </ul>
                                            <div class="desc">
                                                <?php echo get_the_excerpt(); ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        <?php endwhile ?>
                    <?php endif;wp_reset_query(); ?>
                </div>
               <!--  <div class="pagination w-100">
                    <ul class="list-inline w-100 text-center">
                        <?php paginationCustom($max_num_pages) ?>
                    </ul>
                </div> -->
            </div>
        </div>
    </section>


<?php get_footer() ?>
