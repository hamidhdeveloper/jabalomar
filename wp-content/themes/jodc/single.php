<?php get_header();?>

<!-----------------------------------------------page content---------------------------------------->
<div class="pages_content_container">

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

      <?php if(have_posts()) : ?>
        <?php while(have_posts()) : the_post(); ?>


        <div class="post_thumnail_container">
        <img src="<?php the_post_thumbnail_url(); ?>"/>
        </div><!--end of post_thumnail_container-->

        <!-- <h2 class="doctors_post_title"><?php the_title();?></h2> -->


        <div class="post_content">
        <?php the_content();?>
        </div>


        <?php endwhile; ?>
        <?php else : ?>
        <p></p>
      <?php endif; wp_reset_query(); ?>

    </div><!--end of row-->
</div><!--end of container-->



<div style="width: 100%; height: 300px;"></div>
</div><!--end of pages_content_container-->
<!-----------------------------------------------end o page content---------------------------------->
<?php get_footer();?>
