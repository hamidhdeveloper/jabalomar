<?php
/*
Template Name: about
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

  
<div style="width: 100%; height: 50px"></div>

<div class="container">
  <div class="row">

    <?php 
    $args = array(
    'category_name' => 'about_move',
    'posts_per_page' => 1,
    );
    $arr_posts = new WP_Query( $args );
    if ( $arr_posts->have_posts() ) :
      while ( $arr_posts->have_posts() ) :
      $arr_posts->the_post();
    ?> 

    <div class="col-lg-6 col-md-6 col-sm-12">
      <div class="about_outer_container">
        <div class="about_title_container">
          <div class="about_title_line">
            <h1 class="about_title_text"><?php pll_e('about'); ?></h1>
            <div class="line"></div>
          </div><!--end of about_title_line-->
          <div class="about_title_line">
            <div class="line"></div>
            <h1 class="about_title_text"><?php pll_e('move_name'); ?></h1>
          </div><!--end of about_title_line-->
        </div><!--end of about_title_container-->

        <div class="about_move_text">
          <?php the_content();?>
        </div><!--end of about_move_text-->
      </div><!--end of about_title_container-->
    </div><!--end of col-->

    <div class="col-lg-6 col-md-6 col-sm-12">
      <div class="about_image_container">
        <img class="about_image_img" src="<?php the_post_thumbnail_url(); ?>"/>
      </div>
    </div>

    <?php
    endwhile;
    endif;?>
  </div><!--end of row-->



<br><br><br><br>

  
    <?php 
    $args = array(
    'category_name' => 'message',
    'posts_per_page' => 1,
    );
    $arr_posts = new WP_Query( $args );
    if ( $arr_posts->have_posts() ) :
      while ( $arr_posts->have_posts() ) :
      $arr_posts->the_post();
    ?> 
    <div class="row">



    <h1 data-aos="fade-right" class="about_main_title"><?php the_title();?></h1>

    <div style="width:100%; height: auto;">
    <div class="line"></div>
    </div>

    <br><br>

    <div class="col-lg-4 col-md-4 col-sm-4">
    <img data-aos="fade-right" class="about_icon" src="<?php the_post_thumbnail_url(); ?>"/>
    </div>

    <div class="col-lg-8 col-md-8 col-sm-8">
      <div class="about_move_text" data-aos="fade-up" data-aos-duration="500">
        <?php the_content();?>
      </div><!--end of about_move_text-->
    </div>

    </div><!--end of row-->
    <?php
    endwhile;
    endif;?>








<br><br><br><br><br><br>

  
    <?php 
    $args = array(
    'category_name' => 'mission',
    'posts_per_page' => 1,
    );
    $arr_posts = new WP_Query( $args );
    if ( $arr_posts->have_posts() ) :
      while ( $arr_posts->have_posts() ) :
      $arr_posts->the_post();
    ?> 
    <div class="row">



    <h1 data-aos="fade-right" class="about_main_title"><?php the_title();?></h1>

    <div style="width:100%; height: auto;">
    <div class="line"></div>
    </div>

    <br><br>

    <div class="col-lg-4 col-md-4 col-sm-4">
    <img data-aos="fade-right" class="about_icon" src="<?php the_post_thumbnail_url(); ?>"/>
    </div>

    <div class="col-lg-8 col-md-8 col-sm-8">
      <div class="about_move_text" data-aos="fade-up" data-aos-duration="500">
        <?php the_content();?>
      </div><!--end of about_move_text-->
    </div>

    </div><!--end of row-->
    <?php
    endwhile;
    endif;?>








<br><br><br><br><br><br>

  
    <?php 
    $args = array(
    'category_name' => 'goals',
    'posts_per_page' => 1,
    );
    $arr_posts = new WP_Query( $args );
    if ( $arr_posts->have_posts() ) :
      while ( $arr_posts->have_posts() ) :
      $arr_posts->the_post();
    ?> 
    <div class="row">



    <h1 data-aos="fade-right" class="about_main_title"><?php the_title();?></h1>

    <div style="width:100%; height: auto;">
    <div class="line"></div>
    </div>

    <br><br>

    <div class="col-lg-4 col-md-4 col-sm-4">
    <img data-aos="fade-right" class="about_icon" src="<?php the_post_thumbnail_url(); ?>"/>
    </div>

    <div class="col-lg-8 col-md-8 col-sm-8">
      <div class="about_move_text">
        <?php the_content();?>
      </div><!--end of about_move_text-->
    </div>

    </div><!--end of row-->
    <?php
    endwhile;
    endif;?>








    <br><br><br><br><br><br>


    <h1 data-aos="fade-right" class="about_main_title"><?php pll_e('partners'); ?></h1>

    <div style="width:100%; height: auto;">
    <div class="line"></div>
    </div>

    <div class="partners_outer_container">
    <?php 
    $args = array(
    'category_name' => 'partners',
    );
    $arr_posts = new WP_Query( $args );
    if ( $arr_posts->have_posts() ) :
      while ( $arr_posts->have_posts() ) :
      $arr_posts->the_post();
    ?> 

    <div class="partners_inner_container">
    <img data-aos="fade-right" class="parntner_image" src="<?php the_post_thumbnail_url(); ?>"/>
    </div>


    <?php
    endwhile;
    endif;?>
    </div> 










</div><!--end of container-->
    

<div style="width: 100%; height: 200px;"></div>
</div><!--end of pages_content_container-->
<!-----------------------------------------------end o page content---------------------------------->

<?php get_footer();?>

