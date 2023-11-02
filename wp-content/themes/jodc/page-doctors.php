<?php
/*
Template Name: doctors
*/
?>





<?php get_header();?>
<!-----------------------------------------------page content---------------------------------->

  <div class="pages_content_container">



  <div class="pages_content_container">
    <div class="page_header">
    <div class="page_header_overlay"></div>
    <img src="<?php the_field('page_header_image'); ?>"/>
    <div class="container">
    <h2><?php the_title(); ?></h2>
    </div>
  </div><!--end of page_header-->



    <div class="container">
      <div class="row">

        <?php 
          $args = array(
          'category_name' => 'team',
          );
          $arr_posts = new WP_Query( $args );
          if ( $arr_posts->have_posts() ) :
            while ( $arr_posts->have_posts() ) :
            $arr_posts->the_post();
          ?> 
           
          
          <div class="team_container" style="width: 240px; margin-top: 40px;">
          <a href="<?php the_permalink(); ?>">
            <div class="team_image_container">
                <div class="team_image_overlay">
                    <div class="team_info_title">
                    <?php the_field("position");?>
                    </div>
                </div><!--end of team_image_overlay-->
                <img style="height: 250px" src="<?php the_post_thumbnail_url(); ?>"/>
            </div>
            <div class="line" style="margin-top: 10px; margin-bottom: 10px; padding:0px"></div>
            <h1><?php the_title();?></h1>
          </a>
          </div><!--end of service_container-->
          

            <?php
        endwhile;
        endif;?>

      </div><!--end of row-->
    </div><!--end of container-->


  



    <div style="width: 100%; height: 100px;"></div>
  </div><!--end of pages_content_container-->

<!-----------------------------------------------end o page content---------------------------------->

<?php get_footer();?>

