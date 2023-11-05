<?php
/*
 * Template Name: service
 * Template Post Type: post
 */
?>

<?php get_header();?>

<!-----------------------------------------------page content---------------------------------------->



<div class="pages_content_container">

<?php if(have_posts()) : ?>
  <?php while(have_posts()) : the_post(); ?>

    <div class="service_details_thumnail_flex_container">
      <div class="service_details_thumnail">
        <img src="<?php the_post_thumbnail_url(); ?>"/>
      </div><!--end of service_thumnail_container-->

      <div class="slide_animation_container service_details_header_container">
        <span class="animation_slide"></span>
        <h1><?php the_title();?></h1>
      </div>
    </div><!--end of service_details_thumnail_flex_container-->


    <div class="container">
      <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12"></div>
        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
          <div class="service_details_content">
            <?php the_content();?>
          </div>
        </div>
      </div>
    </div>





  <?php endwhile; ?>
  <?php else : ?>
  <p></p>
<?php endif; wp_reset_query(); ?>

<div style="width: 100%; height: 300px;"></div>
</div><!--end of pages_content_container-->




<!-----------------------------------------------end o page content---------------------------------->

<?php get_footer();?>
