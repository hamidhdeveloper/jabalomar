<?php
/*
Template Name: faq
*/
?>





<?php get_header();?>
<!-----------------------------------------------page content---------------------------------->


    <div class="pages_content_container">

        <?php 
        $args = array(
        'category_name' => 'faq',
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





      <div style="width: 100%; height: 100px;"></div>
    </div><!--end of pages_content_container-->

<!-----------------------------------------------end o page content---------------------------------->

<?php get_footer();?>

