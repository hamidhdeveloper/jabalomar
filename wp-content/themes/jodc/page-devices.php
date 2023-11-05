<?php
/*
Template Name: devices
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



    <div class="container">
      <div class="row">

        <?php 
          $args = array(
          'category_name' => 'devices',
          );
          $arr_posts = new WP_Query( $args );
          if ( $arr_posts->have_posts() ) :
            while ( $arr_posts->have_posts() ) :
            $arr_posts->the_post();
          ?> 


          <div class="col-lg-4 col-md-4 col-sm-6">
              <div class="devices_container">
                  <!-- <img src="<?php the_post_thumbnail_url(); ?>"/> -->
                  <h3 ><?php the_title();?></h3>
                  <div class="devices_content"><?php the_content(); ?></div>
              </div><!--end of home_service_container-->
          </div>


          <?php
        endwhile;
        endif;?>

      </div><!--end of row-->
    </div><!--end of container-->


  



      <div style="width: 100%; height: 100px;"></div>
    </div><!--end of pages_content_container-->

<!-----------------------------------------------end o page content---------------------------------->

<?php get_footer();?>

