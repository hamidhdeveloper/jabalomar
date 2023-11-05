<?php
/*
Template Name: ecosep
*/
?>





<?php get_header('ecosep');?>
<!-----------------------------------------------page content---------------------------------->
<?php 
  $registration_link = ""; 
    if(pll_current_language() == 'ar')
    {
      $registration_link = get_site_url()."/ecosep-registration"; 
    }
    else{
      $registration_link = get_site_url()."/ecosep-registration"; 
    }
  ?>

    <div class="pages_content_container">




<div class="responsive_registeration_container">
  <a href="<?php echo $registration_link; ?>" style="text-decoration: none;"><div class="responsive_registeration mobile">
    <p><?php pll_e('register'); ?></p>
  </div></a><!--end of responsive_appointment-->
</div>



        <div class="eco_sep_section">
        <?php 
          $args = array(
          'category_name' => 'ecosep_what',
          'posts_per_page' => 1,
          );
          $arr_posts = new WP_Query( $args );
          if ( $arr_posts->have_posts() ) :
            while ( $arr_posts->have_posts() ) :
            $arr_posts->the_post();
          ?> 

            <div class="slide_animation_container">
            <span class="animation_slide"></span>
            <h1><?php the_title();?></h1>
            </div>

            <?php the_content();?>
            <?php
        endwhile;
        endif;?>
        </div><!--end of eco_sep_section-->


        <div class="line"></div>


        <div class="eco_sep_section">
        <?php 
          $args = array(
          'category_name' => 'ecosep_why',
          'posts_per_page' => 1,
          );
          $arr_posts = new WP_Query( $args );
          if ( $arr_posts->have_posts() ) :
            while ( $arr_posts->have_posts() ) :
            $arr_posts->the_post();
          ?> 

            <div class="slide_animation_container">
            <span class="animation_slide"></span>
            <h1><?php the_title();?></h1>
            </div>

            <?php the_content();?>
            <?php
        endwhile;
        endif;?>
        </div><!--end of eco_sep_section-->


        <div class="line"></div>


        <div class="eco_sep_section">
        <?php 
          $args = array(
          'category_name' => 'ecosep_propose',
          'posts_per_page' => 1,
          );
          $arr_posts = new WP_Query( $args );
          if ( $arr_posts->have_posts() ) :
            while ( $arr_posts->have_posts() ) :
            $arr_posts->the_post();
          ?> 

            <div class="slide_animation_container">
            <span class="animation_slide"></span>
            <h1><?php the_title();?></h1>
            </div>

            <?php the_content();?>
            <?php
        endwhile;
        endif;?>
        </div><!--end of eco_sep_section-->


        <div class="line"></div>


        <div class="eco_sep_section">
        <?php 
          $args = array(
          'category_name' => 'ecosep_how',
          'posts_per_page' => 1,
          );
          $arr_posts = new WP_Query( $args );
          if ( $arr_posts->have_posts() ) :
            while ( $arr_posts->have_posts() ) :
            $arr_posts->the_post();
          ?> 

            <div class="slide_animation_container">
            <span class="animation_slide"></span>
            <h1><?php the_title();?></h1>
            </div>

            <?php the_content();?>
            <?php
        endwhile;
        endif;?>
        </div><!--end of eco_sep_section-->





      <div style="width: 100%; height: 100px;"></div>
    </div><!--end of pages_content_container-->

<!-----------------------------------------------end o page content---------------------------------->

<?php get_footer();?>

