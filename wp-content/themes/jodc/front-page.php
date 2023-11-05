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
      <div class="container-fluid" style=" padding: 0rem;" id="down" >
      <div class="row content-box" >
          <div class="col-md-12 dark-background">
               <div class="container content-container">
                <div class="overlay-text-animation">
                  <div class="overlay-loading1"></div>
                <h1 class="content1">
                  <span> LOREM IPSUM DOLOR SIT AMET</span>
                </h1>
                </div>
                <p class="contentpara fade-anim-box">
                
                  Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh eli
                  <br />
                  euismod tincidunt ut laoreet dolore magna Lorem ipsum dolor sit amet, consectetuer
                  <br />
                  adipiscing elit, sed diam nonummy nibh eli euismod tincidunt ut laoreet dolore magna
                </p>
                
                <!-- animated button -->
                <!-- <div class="border-btn-box border-btn-red pointer-large">
                        <div class="border-btn-inner">
                          <a href="about.html" class="border-btn" data-text="view more">view more</a>
                        </div>
                </div> -->
                <!-- animated button end -->
                <!-- arrow button -->
                <div class="arrow-btn-box slider-fade slider-tr-delay06 top-margin-30">
                    <a href="about.html" class="arrow-btn pointer-large">view more</a>
                  </div>
                <!-- arrow button ends here -->
                <!-- <button class="pbutton">VIEW MORE <img src="images/right-arrow.svg" /></button> -->
               </div>
          </div>
      </div>
    </div>
    <!-- Content Section 1 end -->

    <!-- Content Section 2 -->
    <div class="container-fluid " style=" padding: 0rem; ">
        <div class="row">
          <div class="container content-container2">
            <div class="col-md-12">
              <h1 class="content2 myfill-title-invert">ENVISIONING GROWTH ENVISIONING GROWTH</h1>
                <p class="contentpara2 fade-anim-box">
                  Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh eli
                  <br />
                  euismod tincidunt ut laoreet dolore magna Lorem ipsum dolor sit amet, consectetue
                </p>
                  <div class="container content2container">
                      <div class="content2iconboxes" >
                              <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/icon-1.svg" />
                              <span class="num" data-val="250">000</span>
                              <p>Lorem ipsum dolor</p>
                      </div>
                      <div class="content2iconboxes">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/icon-2.svg" />
                        <span class="num" data-val="325">000</span>
                        <p>Lorem ipsum dolor</p>
                      </div>
                      <div class="content2iconboxes">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/icon-3.svg" />
                              <span class="num" data-val="425">000</span>
                              <p>Lorem ipsum dolor</p>
                      </div>
                      <div class="content2iconboxes" >
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/icon-4.svg" />
                        <span class="num" data-val="525">000</span>
                        <p>Lorem ipsum dolor</p>
                      </div>
                  </div>
               
            </div>
          </div>
        </div>
    </div>
    <!-- Content Section 2 end -->
  <!-- Progress bar section -->
  <div class="container-fluid" style=" padding: 0rem; ">
      <div class="row">
          <div class="col-md-12 background-progress" >
            <div class="container">
              <div class="row">
              <div class="col-md-7"></div>
              <div class="col-md-4 progress-bar-col">
                <h1 class="progress-h1 myfill-title-invert">Lorem ipsum </h1>
                <!-- all progress bars -->
                <div class="progress-bar-all">
          <!-- progress-box start -->
          <div class="progress-box">
            <div data-animation-child="" class="p-letter-style title-fill animated title-fill-anim" data-animation="title-fill-anim" data-text="TVC Production">
                Lorem
            </div>
            <div data-animation-child="" class="p-letter-style title-fill tr-delay02 progress-counter animated title-fill-anim" data-animation="title-fill-anim" data-text="95%">
              95%
            </div>
            <div class="progress-zero" data-progress="95%">
              <div class="progress-full animated" data-animation-child="" data-animation="slide-progress" style="width: 95%;"></div>
              <div class="progress-full progress-full-red animated" data-animation-child="" data-animation="slide-progress" data-animation-delay="200ms" style="animation-delay: 200ms; width: 95%;"></div>
            </div>
          </div>
          <!-- progress-box end -->
          <!-- progress-box start -->
          <div class="progress-box">
            <div data-animation-child="" class="p-letter-style title-fill animated title-fill-anim" data-animation="title-fill-anim" data-text="Graphic Designing">
                Lorem
            </div>
            <div data-animation-child="" class="p-letter-style title-fill tr-delay02 progress-counter animated title-fill-anim" data-animation="title-fill-anim" data-text="90%">
              90%
            </div>
            <div class="progress-zero" data-progress="90%">
              <div class="progress-full animated " data-animation-child="" data-animation="slide-progress" style="width: 90%;"></div>
              <div class="progress-full progress-full-red animated" data-animation-child="" data-animation="slide-progress" data-animation-delay="200ms" style="animation-delay: 200ms; width: 90%;"></div>
            </div>
          </div>
          <!-- progress-box end -->
          <!-- progress-box start -->
          <div class="progress-box">
            <div data-animation-child="" class="p-letter-style title-fill tr-delay01 animated title-fill-anim" data-animation="title-fill-anim" data-text="Product Branding">
                Lorem
            </div>
            <div data-animation-child="" class="p-letter-style title-fill tr-delay03 progress-counter animated title-fill-anim" data-animation="title-fill-anim" data-text="98%">
              98%
            </div>
            <div class="progress-zero" data-progress="98%">
              <div class="progress-full animated " data-animation-child="" data-animation="slide-progress" data-animation-delay="100ms" style="animation-delay: 100ms; width: 98%;"></div>
              <div class="progress-full progress-full-red animated " data-animation-child="" data-animation="slide-progress" data-animation-delay="300ms" style="animation-delay: 300ms; width: 98%;"></div>
            </div>
          </div>
          <!-- progress-box end -->

          <!-- progress-box start -->
          <div class="progress-box">
            <div data-animation-child="" class="p-letter-style title-fill tr-delay02 animated title-fill-anim" data-animation="title-fill-anim" data-text="Events Management">
                Lorem
            </div>
            <div data-animation-child="" class="p-letter-style title-fill tr-delay04 progress-counter animated title-fill-anim" data-animation="title-fill-anim" data-text="100%">
              100%
            </div>
            <div class="progress-zero" data-progress="100%">
              <div class="progress-full animated" data-animation-child="" data-animation="slide-progress" data-animation-delay="200ms" style="animation-delay: 200ms; width: 100%;"></div>
              <div class="progress-full progress-full-red animated" data-animation-child="" data-animation="slide-progress" data-animation-delay="400ms" style="animation-delay: 400ms; width: 100%;"></div>
            </div>
          </div>
          <!-- progress-box end -->
          <!-- progress-box start -->
          <div class="progress-box">
            <div data-animation-child="" class="p-letter-style title-fill tr-delay03 animated title-fill-anim" data-animation="title-fill-anim" data-text="Photoshooting">
                Lorem
            </div>
            <div data-animation-child="" class="p-letter-style title-fill tr-delay05 progress-counter animated title-fill-anim" data-animation="title-fill-anim" data-text="93%">
              93%
            </div>
            <div class="progress-zero" data-progress="93%">
              <div class="progress-full animated " data-animation-child="" data-animation="slide-progress" data-animation-delay="300ms" style="animation-delay: 300ms; width: 93%;"></div>
              <div class="progress-full progress-full-red animated" data-animation-child="" data-animation="slide-progress" data-animation-delay="500ms" style="animation-delay: 500ms; width: 93%;"></div>
            </div>
          </div>
          <!-- progress-box end -->
         
        </div>
                <!-- all progress bars ends -->
              </div>
            </div>
            </div>
          </div>
      </div>
    </div>
    <!-- Progress bar section end-->

     <!-- Our Partner Section-->
     <div class="container-fluid logo-partners-animate" style=" padding: 0rem; ">
      <div class="container paterner-container">
      <div class="row">
          <div class="col-md-12">
            <h1 class="paterner-content myfill-title-invert">Lorem ipsum</h1>
              <p class="partner-content-para fade-anim-box">
                Lorem ipsum dolor sit amet, consectetuer
                <br />
                adipiscing elit, sed diam nonummy nibh
              </p>
              <div class="container partner-main-container">
                    <div class="row partners-logo-container" >
                      <div class="col-md-3 partnerLogos">
                        <div class="sectors_thumnails_overlay"></div>
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/partnerns/logo1.png"/>
                      </div>
                      <div class="col-md-3 partnerLogos">
                        <div class="sectors_thumnails_overlay"></div>
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/partnerns/logo2.png"/>
                      </div>
                      <div class="col-md-3 partnerLogos">
                        <div class="sectors_thumnails_overlay"></div>
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/partnerns/logo1.png"/>
                      </div>
                      <div class="col-md-3 partnerLogos">
                        <div class="sectors_thumnails_overlay"></div>
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/partnerns/logos-06@2x.png"/>
                      </div>
                    </div>
                    <div class="row partners-logo-container" >
                      <div class="col-md-3 partnerLogos">
                        <div class="sectors_thumnails_overlay"></div>
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/partnerns/logos-24@2x.png"/>
                      </div>
                      <div class="col-md-3 partnerLogos">
                        <div class="sectors_thumnails_overlay"></div>
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/partnerns/logos-21@2x.png"/>
                      </div>
                      <div class="col-md-3 partnerLogos">
                        <div class="sectors_thumnails_overlay"></div>
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/partnerns/logos-15@2x.png"/>
                      </div>
                      <div class="col-md-3 partnerLogos">
                        <div class="sectors_thumnails_overlay"></div>
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/partnerns/logos-09@2x.png"/>
                      </div>
                    </div> 
              </div>
          </div>
        </div>
      </div>
    </div>
      <!-- Our Partner Section End-->

       <!-- Award Section-->
       <div class="container-fluid award-section">

<div class="container">
  <h1 class="award-title myfill-title-invert">Lorem ipsum</h1>
</div>
<div class="slider-wrap-award">
  <div class="slider-award">
    <div class="slider-inner">
      <div class="item-award ">
        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 1.png"  class="fade-anim-box"/>
        <p class="fade-anim-box">Lorem</p>
      </div>
      <div class="item-award">
        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 2.png" class="fade-anim-box" />
        <p class="fade-anim-box">Lorem</p>
      </div>
      <div class="item-award">
        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 3.png" class="fade-anim-box"/>
        <p class="fade-anim-box">Lorem</p>
      </div>
      <div class="item-award">
        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 4.png" class="fade-anim-box"/>
        <p class="fade-anim-box">Lorem</p>
      </div>
      <div class="item-award">
        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 5.png" class="fade-anim-box"/>
        <p class="fade-anim-box">Lorem</p>
      </div>
      <div class="item-award">
        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 6.png" class="fade-anim-box"/>
        <p class="fade-anim-box">Lorem</p>
      </div>
      <div class="item-award">
        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 7.png" class="fade-anim-box"/>
        <p class="fade-anim-box">Lorem</p>
      </div>
      <div class="item-award">
        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 1.png" class="fade-anim-box"/>
        <p class="fade-anim-box">Lorem</p>
      </div>
      <div class="item-award">
        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 2.png" class="fade-anim-box"/>
        <p class="fade-anim-box">Lorem</p>
      </div>
      <div class="item-award">
        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 3.png" class="fade-anim-box"/>
        <p class="fade-anim-box">Lorem</p>
      </div>
      <div class="item-award">
        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 4.png" class="fade-anim-box"/>
        <p class="fade-anim-box">Lorem</p>
      </div>
      <div class="item-award">
        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 5.png" class="fade-anim-box"/>
        <p class="fade-anim-box">Lorem</p>
      </div>
      <div class="item-award">
        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 6.png" class="fade-anim-box"/>
        <p class="fade-anim-box">Lorem</p>
      </div>
      <div class="item-award">
        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 7.png" class="fade-anim-box"/>
        <p class="fade-anim-box">Lorem</p>
      </div>
    </div>
  </div>
  
  <div class="award-progress-bar">
    <div class="prog-bar-inner"></div>
  </div>

</div>

</div>

<!-- Award Section end-->

<!-- Blog Section-->
<!-- <div class="container-fluid blog-section" style=" padding: 0rem;">
   <div class="row blog-container">
    <div class="col-md-4 blog-box">
           <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blogs/blog1.png"/>
           <div class="overlay"></div>
           <div class="box-top">
               <span class="blog-label">Lorem ipsum</span>
               <span class="blog-date">Dec 18,2023</span>
           </div>
           <div class="box-bottom">
            <p>Lorem ipsum dolor sit amet, <br /> consecte adipiscing elit, sed</p>
           </div>
    </div>
    <div class="col-md-4 blog-box">
      <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blogs/blog2.png"/>
      <div class="overlay"></div>
      <div class="box-top">
               <span class="blog-label">Lorem ipsum</span>
               <span class="blog-date">Dec 18,2023</span>
           </div>
           <div class="box-bottom">
            <p>Lorem ipsum dolor sit amet, <br /> consecte adipiscing elit, sed</p>
           </div>
    </div>
    <div class="col-md-4 blog-box">
      <img src="<?php echo get_template_directory_uri(); ?>/assets/images/blogs/blog3.png"/>
      <div class="overlay"></div>
          <div class="box-top">
            <span class="blog-label">Lorem ipsum</span>
            <span class="blog-date">Dec 18,2023</span>
        </div>
        <div class="box-bottom">
        <p>Lorem ipsum dolor sit amet, <br /> consecte adipiscing elit, sed</p>
        </div>
    </div>
   </div>
</div> -->
<!-- Blog Section End-->


<?php get_footer();?>