
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
      <?php if(have_posts()) : ?>
        <?php while(have_posts()) : the_post(); ?>


        <?php the_content();?>


        <?php endwhile; ?>
        <?php else : ?>
        <p></p>
      <?php endif; wp_reset_query(); ?>

      <div style="width: 100%; height: 300px;"></div>
  </div>
</div>

</div><!--end of pages_content_container-->
<!-----------------------------------------------end o page content---------------------------------->

<?php get_footer();?>
