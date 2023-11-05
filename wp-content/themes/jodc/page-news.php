<?php
/*
Template Name: news
*/
?>

<?php get_header();?>
<!-----------------------------------------------page content---------------------------------->
<div class="pages_content_container">

  <div class="page_header">
    <div class="page_header_overlay"></div>
    <img src="<?php the_field('page_header_image'); ?>"/>
    <div class="container">
    <h2><?php the_title(); ?></h2>
    </div>
  </div><!--end of page_header-->
  <div style="width: 100%; height: 50px;"></div>




    <div class="container">
      <div class="row">

        <?php 
          $args = array(
          'category_name' => 'news',
          );
          $arr_posts = new WP_Query( $args );
          if ( $arr_posts->have_posts() ) :
            while ( $arr_posts->have_posts() ) :
            $arr_posts->the_post();
          ?> 
            <div class="col-lg-4 col-md-4 col-sm-12">
            <div class="line line_animation" style="background-color:#ff6170; height: 10px; margin-bottom: 5px;"></div>
            <a href="<?php the_permalink(); ?>">
              <div class="service_container">
                <div class="service_thumnail_container">
                  <!-- <div class="service_overlay"></div> -->
                  <img src="<?php the_post_thumbnail_url(); ?>"/>
                </div><!--end of service_thumnail_container-->

                <div class="slide_animation_container service_title">
                  <span class="animation_slide"></span>
                  <h1><?php the_title();?></h1>
                </div>

              </div><!--end of service_container-->
            </a>
            </div><!--end of col-->
            <?php
        endwhile;
        endif;?>

      </div><!--end of row-->
    </div><!--end of container-->


  



      
  <div style="width: 100%; height: 100px;"></div>
</div><!--end of pages_content_container-->
<!-----------------------------------------------end o page content---------------------------------->

<?php get_footer();?>

