<?php
/*
Template Name: information
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


<div class="page_content">
<div class="container">
  <div class="row">
    <?php if(have_posts()) : ?>
      <?php while(have_posts()) : the_post(); ?>

      <?php the_content();?>

      <?php endwhile; ?>
      <?php else : ?>
      <p></p>
    <?php endif; wp_reset_query(); ?>
  </div>
</div>
</div><!--end of page content-->

<div style="width: 100%; height: 30px"></div>


<div class="container">
  <div class="row">
  <?php 
  $args = array(
  'category_name' => 'information',
  );
  $arr_posts = new WP_Query( $args );
  if ( $arr_posts->have_posts() ) :
    while ( $arr_posts->have_posts() ) :
    $arr_posts->the_post();
  ?> 
    <button class="accordion"><h2><?php the_title();?></h2></button>
    <div class="panel">
    <?php the_content();?>
    </div>
    <div class="line" style="margin-bottom: 10px; background-color: #9780FF; height: 2px;"></div>
  <?php
  endwhile;
  endif;?>

  </div><!--end of row-->
</div><!--end of container-->


<div style="width: 100%; height: 50px"></div>

</div><!--end of pages_content_container-->
<!-----------------------------------------------end o page content---------------------------------->

<?php get_footer();?>

