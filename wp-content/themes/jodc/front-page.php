<?php get_header();?>

    <div class="home_video_container">
        <?php 
        $args = array(
        'category_name' => 'home_video',
        'posts_per_page' => 1,
        );
        $arr_posts = new WP_Query( $args );
        if ( $arr_posts->have_posts() ) :
        while ( $arr_posts->have_posts() ) :
        $arr_posts->the_post();
        ?> 

        <video autoplay loop muted id="video">
            <source src="<?php the_field('video_url'); ?>" type="video/mp4" />
            <source src="<?php the_field('video_url'); ?>" type="video/webm" />
        </video>

        <img class="video_background_image" src="<?php the_post_thumbnail_url(); ?>"/>

        
        <div class="video_content_outer_container">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="video_content_container">
                            <h1 class="main_header myfill-title" data-text="<?php the_title();?>"><?php the_title();?></h1>
                            <div class="slider_content myfill-text"><?php the_content() ?></div>
                            
                        </div><!--end of video_content_container-->
                        
                    </div>
                </div>
            </div>
        </div><!--end of video_content_outer_container-->



        <div class="video_overlay"></div>

        <?php
        endwhile;
        endif;?>
    </div><!--end of home_video_container-->

    
    <!-- Content Section 1 -->
    <div class="container-fluid dark-background">
      <div class="row" >

      <?php 
      $args = array(
      'category_name' => 'home_about',
      'posts_per_page' => 1,
      );
      $arr_posts = new WP_Query( $args );
      if ( $arr_posts->have_posts() ) :
      while ( $arr_posts->have_posts() ) :
      $arr_posts->the_post();
      ?> 
      
          <div class="col-md-12">
               <div class="container content-container">
                <div class="overlay-text-animation">
                  <div class="overlay-loading1 content-overlay"></div>
                <h1 class="content1">
                  <span><?php the_title();?></span>
                </h1>
                </div>
                <div class="contentpara fade-anim-box">
                  <?php the_content() ?>
                </div>
                
                <div class="arrow-btn-box slider-fade slider-tr-delay06 top-margin-30" style="margin-top: 20px">
                  <a href="" class="arrow-btn pointer-large"><?php pll_e('view_more') ?></a>
                </div>

               </div>
          </div>
        <?php
        endwhile;
        endif;?>
      </div>
    </div>
    <!-- Content Section 1 end -->





    

    <!-- Content Section 2 ------>
    <div class="container-fluid">
          <div class="container content-container2">
            <div class="row">

          <?php 
          $args = array(
          'category_name' => 'home_statistics',
          'posts_per_page' => 1,
          );
          $arr_posts = new WP_Query( $args );
          if ( $arr_posts->have_posts() ) :
          while ( $arr_posts->have_posts() ) :
          $arr_posts->the_post();
          ?> 
                  
     
              <h1 class="content2 myfill-title-invert"><?php the_title(); ?></h1>
                <p class="contentpara2 fade-anim-box">
                  <?php echo get_the_content(); ?>
                </p>

                  <div class="row">
                      <div class="col-lg-3 col-md-3 col-sm-6" >
                        <div class="content2iconboxes">
                            <img src="<?php the_field("image_one")?>" />
                            <span class="num" data-val="<?php the_field("number_one")?>">000</span>
                            <p><?php the_field("text_one")?></p>
                        </div>
                      </div>

                      <div class="col-lg-3 col-md-3 col-sm-6">
                        <div class="content2iconboxes">
                            <img src="<?php the_field("image_two")?>" />
                            <span class="num" data-val="<?php the_field("number_two")?>">000</span>
                            <p><?php the_field("text_two")?></p>
                        </div>
                      </div>

                      <div class="col-lg-3 col-md-3 col-sm-6">
                        <div class="content2iconboxes">
                            <img src="<?php the_field("image_three")?>" />
                            <span class="num" data-val="<?php the_field("number_three")?>">000</span>
                            <p><?php the_field("text_three")?></p>
                        </div>
                      </div>

                      <div class="col-lg-3 col-md-3 col-sm-6">
                        <div class="content2iconboxes">
                            <img src="<?php the_field("image_four")?>" />
                            <span class="num" data-val="<?php the_field("number_four")?>">000</span>
                            <p><?php the_field("text_four")?></p>
                        </div>
                      </div>

                  </div><!--end of row-->
            <?php
            endwhile;
            endif;?>

          </div><!--end of row-->
        </div><!--end of container-->
    </div>
    <!-- Content Section 2 end -->










  <div class="container-fluid" style=" padding: 0rem; ">


    <div class="background-progress">

      <?php 
      $args = array(
      'category_name' => 'home_progress',
      'posts_per_page' => 1,
      );
      $arr_posts = new WP_Query( $args );
      if ( $arr_posts->have_posts() ) :
      while ( $arr_posts->have_posts() ) :
      $arr_posts->the_post();
      ?> 
                 

    

      <div class="progress_content_container">

          <div class="container">
            <div class="row" style="direction: ltr;">

              <div class="col-lg-7 col-md-7 col-sm-12"></div>
              <div class="col-lg-4 col-md-5 col-sm-12">

                    <h1 class="progress-h1 myfill-title-invert"><?php the_title();?></h1>
                    <!-- all progress bars -->





                    <div class="progress-bar-all">

                        <!-- progress-box start -->
                        <div class="progress-box">
                          <div data-animation-child="" class="p-letter-style title-fill animated title-fill-anim" data-animation="title-fill-anim" data-text="TVC Production">
                            <?php the_field('stage_one_text'); ?>
                          </div>
                          <div data-animation-child="" class="p-letter-style title-fill tr-delay02 progress-counter animated title-fill-anim" data-animation="title-fill-anim" data-text="<?php the_field('stage_one_number'); ?>">
                            <?php the_field('stage_one_number'); ?>
                          </div>
                          <div class="progress-zero" data-progress="<?php the_field('stage_one_number'); ?>">
                            <div class="progress-full animated" data-animation-child="" data-animation="slide-progress" style="width: <?php the_field('stage_one_number'); ?>;"></div>
                            <div class="progress-full progress-full-red animated" data-animation-child="" data-animation="slide-progress" data-animation-delay="200ms" style="animation-delay: 200ms; width: <?php the_field('stage_one_number'); ?>;"></div>
                          </div>
                        </div>
                        <!-- progress-box end -->

                        <!-- progress-box start -->
                        <div class="progress-box">
                          <div data-animation-child="" class="p-letter-style title-fill animated title-fill-anim" data-animation="title-fill-anim" data-text="Graphic Designing">
                            <?php the_field('stage_two_text'); ?>
                          </div>
                          <div data-animation-child="" class="p-letter-style title-fill tr-delay02 progress-counter animated title-fill-anim" data-animation="title-fill-anim" data-text="<?php the_field('stage_two_number'); ?>">
                          <?php the_field('stage_two_number'); ?>
                          </div>
                          <div class="progress-zero" data-progress="<?php the_field('stage_two_number'); ?>">
                            <div class="progress-full animated " data-animation-child="" data-animation="slide-progress" style="width: <?php the_field('stage_two_number'); ?>;"></div>
                            <div class="progress-full progress-full-red animated" data-animation-child="" data-animation="slide-progress" data-animation-delay="200ms" style="animation-delay: 200ms; width: <?php the_field('stage_two_number'); ?>;"></div>
                          </div>
                        </div>
                        <!-- progress-box end -->

                        <!-- progress-box start -->
                        <div class="progress-box">
                          <div data-animation-child="" class="p-letter-style title-fill tr-delay01 animated title-fill-anim" data-animation="title-fill-anim" data-text="Product Branding">
                            <?php the_field('stage_three_text'); ?>
                          </div>
                          <div data-animation-child="" class="p-letter-style title-fill tr-delay03 progress-counter animated title-fill-anim" data-animation="title-fill-anim" data-text="<?php the_field('stage_three_number');?>">
                          <?php the_field('stage_three_number');?>
                          </div>
                          <div class="progress-zero" data-progress="<?php the_field('stage_three_number');?>">
                            <div class="progress-full animated " data-animation-child="" data-animation="slide-progress" data-animation-delay="100ms" style="animation-delay: 100ms; width:<?php the_field('stage_three_number');?>;"></div>
                            <div class="progress-full progress-full-red animated " data-animation-child="" data-animation="slide-progress" data-animation-delay="300ms" style="animation-delay: 300ms; width: <?php the_field('stage_three_number');?>;"></div>
                          </div>
                        </div>
                        <!-- progress-box end -->

                        <!-- progress-box start -->
                        <div class="progress-box">
                          <div data-animation-child="" class="p-letter-style title-fill tr-delay02 animated title-fill-anim" data-animation="title-fill-anim" data-text="Events Management">
                            <?php the_field('stage_four_text'); ?>
                          </div>
                          <div data-animation-child="" class="p-letter-style title-fill tr-delay04 progress-counter animated title-fill-anim" data-animation="title-fill-anim" data-text="<?php the_field('stage_four_number');?>">
                          <?php the_field('stage_four_number');?>
                          </div>
                          <div class="progress-zero" data-progress="<?php the_field('stage_four_number');?>">
                            <div class="progress-full animated" data-animation-child="" data-animation="slide-progress" data-animation-delay="200ms" style="animation-delay: 200ms; width: <?php the_field('stage_four_number');?>;"></div>
                            <div class="progress-full progress-full-red animated" data-animation-child="" data-animation="slide-progress" data-animation-delay="400ms" style="animation-delay: 400ms; width: <?php the_field('stage_four_number');?>;"></div>
                          </div>
                        </div>
                        <!-- progress-box end -->

                        <!-- progress-box start -->
                        <div class="progress-box">
                          <div data-animation-child="" class="p-letter-style title-fill tr-delay03 animated title-fill-anim" data-animation="title-fill-anim" data-text="Photoshooting">
                            <?php the_field('stage_five_text'); ?>
                          </div>
                          <div data-animation-child="" class="p-letter-style title-fill tr-delay05 progress-counter animated title-fill-anim" data-animation="title-fill-anim" data-text="<?php the_field('stage_five_number');?>">
                          <?php the_field('stage_five_number');?>
                          </div>
                          <div class="progress-zero" data-progress="<?php the_field('stage_five_number');?>">
                            <div class="progress-full animated " data-animation-child="" data-animation="slide-progress" data-animation-delay="300ms" style="animation-delay: 300ms; width: <?php the_field('stage_five_number');?>;"></div>
                            <div class="progress-full progress-full-red animated" data-animation-child="" data-animation="slide-progress" data-animation-delay="500ms" style="animation-delay: 500ms; width: <?php the_field('stage_five_number');?>;"></div>
                          </div>
                        </div>
                        <!-- progress-box end -->


                        <!-- progress-box start -->
                        <div class="progress-box">
                          <div data-animation-child="" class="p-letter-style title-fill tr-delay03 animated title-fill-anim" data-animation="title-fill-anim" data-text="Photoshooting">
                            <?php the_field('stage_six_text'); ?>
                          </div>
                          <div data-animation-child="" class="p-letter-style title-fill tr-delay05 progress-counter animated title-fill-anim" data-animation="title-fill-anim" data-text="<?php the_field('stage_six_number');?>">
                          <?php the_field('stage_six_number');?>
                          </div>
                          <div class="progress-zero" data-progress="<?php the_field('stage_six_number');?>">
                            <div class="progress-full animated " data-animation-child="" data-animation="slide-progress" data-animation-delay="300ms" style="animation-delay: 300ms; width: <?php the_field('stage_six_number');?>;"></div>
                            <div class="progress-full progress-full-red animated" data-animation-child="" data-animation="slide-progress" data-animation-delay="500ms" style="animation-delay: 500ms; width: <?php the_field('stage_six_number');?>;"></div>
                          </div>
                        </div>
                        <!-- progress-box end -->
            
                    </div><!-- all progress bars ends -->

              </div><!--end of col-->

            </div><!-- end of row-->
          </div><!--end of container-->


      </div><!--end of progress_content_container-->


      <img class="progress_background_image" src="<?php the_post_thumbnail_url(); ?>"/>
      
    </div><!--end of background-progress-->

    <?php
    endwhile;
    endif;?>

  </div><!-- Progress bar section end-->







<!-- Our Hotels Section-->
<div class="home_hotels_container">
  <div class="container">
    <div class="row">

      <h1 class="paterner-content myfill-title-invert"><?php pll_e('home_hotels_title');?></h1>
      <p class="partner-content-para fade-anim-box">
        <?php pll_e('home_hotels_subtitle');?>
      </p>


      <ul class="home_clients_thumnails">

        <?php 
        $args = array(
        'category_name' => 'hotels',
        );
        $arr_posts = new WP_Query( $args );
        if ( $arr_posts->have_posts() ) :
        while ( $arr_posts->have_posts() ) :
        $arr_posts->the_post();
        ?> 

        <li class="home_clients_thumnails_single">
          <a href="" class="home_clients_unchr">
          <div class="sectors_thumnails_overlay"></div>
          <img src="<?php the_post_thumbnail_url(); ?>"/>
          </a>
        </li>

        <?php
        endwhile;
        endif;?>

      </ul>


    </div><!--end of row-->
  </div><!--end of container-->
</div><!--end of home_hotels_container-->
<!-- Our Hotels Section End-->







<div class="home_malls_container">
  <div class="home_malls_section home_malls_title_section">
    <div class="home_malls_subtitle"><?php pll_e('home_malls_subtitle'); ?></div>
    <!-- animated title start -->
    <div class="overlay-text-animation">
       <div class="overlay-loading1 malls-overlay" style="background: var(--primary)"></div>
    <div class="home_malls_title"><?php pll_e('home_malls_title'); ?></div>
      </div> <!-- animated title end -->
    <div class="line" style="margin: 40px 0px 30px 0px"></div>
  </div>


  <?php 
  $args = array(
  'category_name' => 'malls',
  );
  $arr_posts = new WP_Query( $args );
  if ( $arr_posts->have_posts() ) :
  while ( $arr_posts->have_posts() ) :
  $arr_posts->the_post();
  ?> 

  <div class="home_malls_section home_malls_content_section" >
    <div class="malls_overlay_animation"></div>
    <div class="home_malls_content_container">
      <h2><?php the_title();?></h2>
      <a href="<?php the_field('more_button_url');?>">
        <div class="home_malls_btn"><?php pll_e('view_more');?></div>
      </a>
    </div>
    <div class="home_malls_over_lay"></div>
    <img class="home_malls_image" src="<?php the_post_thumbnail_url(); ?>"/>
  </div>

  <?php
  endwhile;
  endif;?>
</div><!--end of home_malls_container-->







<!-- Award Section-->
<div class="container-fluid award-section">

  <div class="container">
    <h1 class="award-title myfill-title-invert" style="padding: 0px;"><?php pll_e('home_awards_title');?></h1>
    <p class="partner-content-para fade-anim-box" style="margin-top:0px">
      <?php pll_e('home_awards_subtitle');?>
    </p>
  </div>

  <div class="slider-wrap-award">
    <div class="slider-award">
      <div class="slider-inner">

        <?php 
        $args = array(
        'category_name' => 'awards',
        );
        $arr_posts = new WP_Query( $args );
        if ( $arr_posts->have_posts() ) :
        while ( $arr_posts->have_posts() ) :
        $arr_posts->the_post();
        ?> 

        <div class="item-award ">
          <img src="<?php the_post_thumbnail_url(); ?>"  class="fade-anim-box"/>
          <p class="fade-anim-box"><?php the_title() ?></p>
        </div>

        <?php
        endwhile;
        endif;?>
      </div>
    </div>
    
    <div class="award-progress-bar">
      <div class="prog-bar-inner"></div>
    </div>

  </div>

</div>
<!-- Award Section end-->





<!-- Blog Section-->
<div class="home_news_container">
  <div class="container">
    <div class="row">

      <h1 class="myblog-title myfill-title-invert" style="padding: 0px; text-align: center;"><?php pll_e('home_news_title');?></h1>

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
        <a class="news_container" href="<?php the_permalink(); ?>">
          <div class="news_image_container">
            <div class="malls_overlay_animation"></div>
            <img class="blog-image" src="<?php the_post_thumbnail_url(); ?>"/>
          </div>
          <div class="line" style="background-color: #9da07c;"></div>
          <div class="blog-label fade-anim-box"><?php the_title(); ?></div>
        </a><!--end of news_container-->
      </div>

      <?php
      endwhile;
      endif;?>
      <div class="home-scroll-btn" style="margin:0 auto;width:24%;">
      <div class="arrow-btn-box slider-fade slider-tr-delay06 top-margin-30" style="margin-top: 20px; display: flex; justify-content: center; align-items: center;">
        <a href="" class="arrow-btn pointer-large" style="position:relative"><?php pll_e('view_more') ?></a>
      </div>
      </div>
  
      

    </div><!--end of row-->
  </div><!--end of container-->
</div>
<!-- Blog Section End-->




<?php get_footer();?>