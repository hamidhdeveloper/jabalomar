<?php
/*
Template Name: about
*/
?>

<?php get_header('page');?>
<!-----------------------------------------------page content---------------------------------->


   <!-- About  main Section  -->


   <div class="container-fluid" style="padding:0px; position:relative;" >

        <div class="about-main-section">
          <div class="about-main-left">
            <img src="<?php the_post_thumbnail_url(); ?>" />
          </div>
          <div class="about-main-right">


            <div class="banner_text_container">
                                    <?php
                        // Get the page main title
                        $pageMainTitle = get_field('page_main_title');

                        // Split the title into words
                        $words = explode(' ', $pageMainTitle);

                        // Group the words (2 words per line)
                        $groupedWords = array_chunk($words, 2);

                        // HTML structure
                        echo '<h2 class="large-title-bold">';
                        foreach ($groupedWords as $group) {
                            echo '<span class="load-title-fill" data-text="' . implode(' ', $group) . '">'
                                . implode(' ', $group) . '</span><br />';
                        }
                        echo '</h2>';
                        ?>

                              <?php
                              // Get the page subtitle
                              $pageSubtitle = get_field('page_subtitle');

                              // Split the subtitle into words
                              $words = explode(' ', $pageSubtitle);

                              // Group the words (9 words per line)
                              $groupedWords = array_chunk($words, 10);

                              // HTML structure
                              echo '<p class="load-para">';
                              foreach ($groupedWords as $group) {
                                  echo '<span class="load-title-fill" data-text="' . implode(' ', $group) . '">'
                                      . implode(' ', $group) . '</span><br />';
                              }
                              echo '</p>';
                              ?>
            </div><!--end of banner_text_container-->
            
     
                       <!-- scroll btn start  -->
            <div class="aboutscroll">
              <a href="#down" class="scroll-btn about-scroll-btn">
                <div class="scroll-arrow-box">
                  <span class="scroll-arrow"></span>
                </div>
                <div class="scroll-btn-flip-box">
                  <span class="scroll-btn-flip" data-text="Scroll">Scroll</span>
                </div> 
              </a>
            </div>
           <!-- scroll btn end -->

          </div>
        </div>
      </div>

      <!-- About main Section end -->









<!------------------------------------------------------------end of banner section------------------------------>
<!--------------------------------------------------------------------------------------------------------------->
<!--------------------------------------------------------------------------------------------------------------->











      <!-- sustainability section start -->
      <section class="container-fluid sustain-fluid-container" id="down">
            <div class="container sustain-container">
                 <div class="sustain-left">
                        <h1>Lorem ipsum</h1>
                      <p>
                      Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed
      diam nonummy nibh euismod tincidunt ut laoreet dolore magna
      aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostr
      ud exerci tation ullamcorper suscipit lobortis nisl ut aliquip
      Lorem ipsum dolor sit amet
                      </p>
                      <div class="arrow-btn-box slider-fade slider-tr-delay06 top-margin-30" style="margin-top: 20px">
                        <a href="" class="arrow-btn pointer-large">view more</a>
                      </div>

                 </div>
                 <div class="sustain-right">
                            <img src="<?php bloginfo('template_url')?>/assets/images/about-main.png"/>
                            <img src="<?php bloginfo('template_url')?>/assets/images/about-main.png"/>
                 </div>
            </div>
      </section>
      <!-- sustainability section end -->
           
      <!-- about matrix section start  -->
      <section class="container-fluid matrix-section">
            <div class="container">
              <div class="row matrix-box">
                     <div class="col-md-3 matrix-boxes">
                            <img src="<?php bloginfo('template_url')?>/assets/images/matrix-icons.png" />
                            <h5>2,5M m2</h5>
                            <p>Lorem ipsum</p>
                     </div>
                     <div class="col-md-3 matrix-boxes">
                            <img src="<?php bloginfo('template_url')?>/assets/images/matrix-icons.png" />
                            <h5>2,5M m2</h5>
                            <p>Lorem ipsum</p>
                     </div>
                     <div class="col-md-3 matrix-boxes">
                            <img src="<?php bloginfo('template_url')?>/assets/images/matrix-icons.png" />
                            <h5>2,5M m2</h5>
                            <p>Lorem ipsum</p>
                     </div>
                     <div class="col-md-3 matrix-boxes">
                            <img src="<?php bloginfo('template_url')?>/assets/images/matrix-icons.png" />
                            <h5>2,5M m2</h5>
                            <p>Lorem ipsum</p>
                     </div>
                     
              </div>
              <div class="row matrix-box">
                     <div class="col-md-3 matrix-boxes">
                            <img src="<?php bloginfo('template_url')?>/assets/images/matrix-icons.png" />
                            <h5>2,5M m2</h5>
                            <p>Lorem ipsum</p>
                     </div>
                     <div class="col-md-3 matrix-boxes">
                            <img src="<?php bloginfo('template_url')?>/assets/images/matrix-icons.png" />
                            <h5>2,5M m2</h5>
                            <p>Lorem ipsum</p>
                     </div>
                     <div class="col-md-3 matrix-boxes">
                            <img src="<?php bloginfo('template_url')?>/assets/images/matrix-icons.png" />
                            <h5>2,5M m2</h5>
                            <p>Lorem ipsum</p>
                     </div>
                     <div class="col-md-3 matrix-boxes">
                            <img src="<?php bloginfo('template_url')?>/assets/images/matrix-icons.png" />
                            <h5>2,5M m2</h5>
                            <p>Lorem ipsum</p>
                     </div>
                     
              </div>
            </div>
      </section>

        <!-- about matrix section end  -->


      <!-- about partners auto logo start  -->
       <section class="container-fluid" style="padding:5rem 0rem;">
         
       <div class="container">
       <h1 class="about-main-partnerheading">Lorem ipsum dolor sit ame</h1>
        <div class="brand-wheel">
          <div class="brand-slide">
            <div class="logo-div">
              <img src="<?php bloginfo('template_url')?>/assets/images/partner logo 1.png"/>
            </div>
            <div class="logo-div">
              <img src="<?php bloginfo('template_url')?>/assets/images/partner logo 1.png"/>
            </div>
            <div class="logo-div">
              <img src="<?php bloginfo('template_url')?>/assets/images/partner logo 1.png"/>
            </div>
            <div class="logo-div">
              <img src="<?php bloginfo('template_url')?>/assets/images/partner logo 1.png"/>
            </div>
            <div class="logo-div">
              <img src="<?php bloginfo('template_url')?>/assets/images/partner logo 1.png"/>
            </div>
            <div class="logo-div">
              <img src="<?php bloginfo('template_url')?>/assets/images/partner logo 1.png"/>
            </div>
            <div class="logo-div">
              <img src="<?php bloginfo('template_url')?>/assets/images/partner logo 1.png"/>
            </div>
            <div class="logo-div">
              <img src="<?php bloginfo('template_url')?>/assets/images/partner logo 1.png"/>
            </div>
          </div>
          <div class="brand-slide delay">
            <div class="logo-div">
              <img src="<?php bloginfo('template_url')?>/assets/images/partner logo 1.png"/>
            </div>
            <div class="logo-div">
              <img src="<?php bloginfo('template_url')?>/assets/images/partner logo 1.png"/>
            </div>
            <div class="logo-div">
              <img src="<?php bloginfo('template_url')?>/assets/images/partner logo 1.png"/>
            </div>
            <div class="logo-div">
              <img src="<?php bloginfo('template_url')?>/assets/images/partner logo 1.png"/>
            </div>
            <div class="logo-div">
              <img src="<?php bloginfo('template_url')?>/assets/images/partner logo 1.png"/>
            </div>
            <div class="logo-div">
              <img src="<?php bloginfo('template_url')?>/assets/images/partner logo 1.png"/>
            </div>
            <div class="logo-div">
              <img src="<?php bloginfo('template_url')?>/assets/images/partner logo 1.png"/>
            </div>
            <div class="logo-div">
              <img src="<?php bloginfo('template_url')?>/assets/images/partner logo 1.png"/>
            </div>
          </div>
        </div>
      </div>
               
       </section>
       <!-- about partners auto logo end  -->
     



<div class="pages_content_container">


</div><!--end of pages_content_container-->
<!-----------------------------------------------end o page content---------------------------------->
<?php get_footer('page');?>


