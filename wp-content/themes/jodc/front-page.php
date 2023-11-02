<?php get_header();?>

    <div class="home_video_container">
        <?php 
        $args = array(
        'category_name' => 'home_video',
        'posts_per_page' => 1,
        );
        $arr_posts = new WP_Query( $args );
        if ( $arr_posts->have_posts() ) :
        while ( $arr_posts->have_posts() ) :
        $arr_posts->the_post();
        ?> 

        <video autoplay loop muted id="video">
            <source src="<?php the_field('video_url'); ?>" type="video/mp4" />
            <source src="<?php the_field('video_url'); ?>" type="video/webm" />
        </video>

        <img class="video_background_image" src="<?php the_post_thumbnail_url(); ?>"/>

        
        <div class="video_content_outer_container">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="video_content_container">
                            <h1 class="main_header myfill-title" data-text="<?php the_title();?>"><?php the_title();?></h1>
                            <div class="slider_content myfill-text"><?php the_content() ?></div>
                        </div><!--end of video_content_container-->
                    </div>
                </div>
            </div>
        </div><!--end of video_content_outer_container-->



        <div class="video_overlay"></div>

        <?php
        endwhile;
        endif;?>
    </div><!--end of home_video_container-->





<?php get_footer();?>