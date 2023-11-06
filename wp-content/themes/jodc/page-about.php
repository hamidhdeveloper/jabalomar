<?php
/*
Template Name: about
*/
?>

<?php get_header();?>
<style>
  /* @media only screen and (max-width: 767px) {
    .about-main-section{
      height: auto;
    }
    .about-main-h1 {
      margin-top: 3rem; 
      text-align: center; 
    }
    .about-main-para {
      margin-bottom: 3rem;
      text-align: center; 
    }
    .myscroll {
      margin-bottom: 4rem;
    text-align: left;
    }

  } */
</style>
<!-----------------------------------------------page content---------------------------------->
<!-- About  main Section  -->
<div class="container-fluid">
  <div class="row about-main-section">
    <div class="col-md-6 about-main-left">
      <img
        src="<?php echo get_template_directory_uri(); ?>/assets/images/about-main.png"
      />
    </div>
    <div class="col-md-6 about-main-right">
      <!-- <h1 class="about-main-h1 myfill-title">Lorem ipsum dolor</h1> -->
      <h2 class="about-main-h1">
        <span class="about-main-h1" data-text="The best">The best</span><br />
        <span class="about-main-h1" data-text="Services you">Services you</span
        ><br />
        <span class="about-main-h1 tr-delay05" data-text="can think of"
          >can think of</span
        >
      </h2>
      <p class="about-main-para fade-anim-box">
        Lorem ipsum dolor sit amet, consectetuer<br />
        adipiscing elit, sed diam nonummy nibh eli
      </p>

      <!-- scroll btn start  -->
      <div class="myscroll">
        <a
          href="#down"
          class="scroll-btn"
          style="bottom: 0px; position: inherit"
        >
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

<!-- About Section 2  -->

<div class="container-fluid about-section-2">
  <div class="row">
    <div class="container about-section-2-container">
      <div class="col-md-12 about-section-2-col">
        <h1 class="about-section-2-h1 myfill-title-invert">Lorem ipsum</h1>
        <p class="about-section-2-para fade-anim-box">
          Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam
          nonummy nibh eli euismod tincidunt ut laoreet dolore magna Lorem ipsum
          dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh
          eli euismod tincidunt ut laoreet dolore magna Lorem ipsum dolor sit
          amet, consectetuer adipiscing elit, sed diam nonummy nibh eli euismod
          tincidunt ut laoreet dolore magna Lorem
        </p>
        <!-- animated button -->
        <div class="border-btn-box border-btn-red pointer-large">
          <div class="border-btn-inner">
            <a href="about.html" class="border-btn" data-text="view more"
              >view more</a
            >
          </div>
        </div>
        <!-- animated button end -->
        <div class="container about-section-2-contentContainer">
          <div class="about-section-2-icon-boxes">
            <img
              src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/icon-2.svg"
            />
            <span class="num" data-val="250">000</span>
            <p>Lorem ipsum dolor</p>
          </div>
          <div class="about-section-2-icon-boxes">
            <img
              src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/icon-3.svg"
            />
            <span class="num" data-val="325">000</span>
            <p>Lorem ipsum dolor</p>
          </div>
          <div class="about-section-2-icon-boxes">
            <img
              src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/icon-4.svg"
            />
            <span class="num" data-val="425">000</span>
            <p>Lorem ipsum dolor</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- About Section 2 end -->

<!-- Award Section-->
<div class="container-fluid about-award-section">
  <div class="overlay2"></div>
  <!-- news section -->
  <div class="container news-section-container">
    <div class="row">
      <div class="col-md-6 news-left">
        <h1 class="about-main-h1 myfill-title">Lorem ipsum dolor</h1>
        <p class="about-main-para fade-anim-box">
          Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam
          nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat
          volutpat. Ut wisi enim ad minim veniam, quis nostr ud exerci tation
          ullamcorper suscipit lobortis nisl ut aliquip Lorem ipsum dolor sit
          amet
        </p>

        <!-- arrow button -->
        <div class="arrow-btn-box slider-fade slider-tr-delay06 top-margin-30">
          <a href="about.html" class="arrow-btn pointer-large">view more</a>
        </div>
        <!-- arrow button ends here -->
      </div>
      <div class="col-md-6 news-right">
        <img
          src="<?php echo get_template_directory_uri(); ?>/assets/images/about news section.png"
        />
        <img
          src="<?php echo get_template_directory_uri(); ?>/assets/images/about news section 2.png"
        />
      </div>
    </div>
  </div>
  <!-- news section -->
  <div class="award-section-about">
    <div class="slider-wrap-award">
      <div class="slider-award">
        <div class="slider-inner">
          <div class="about-item-award">
            <img
              src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 1.png"
            />
            <p>Lorem</p>
          </div>
          <div class="about-item-award">
            <img
              src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 2.png"
            />
            <p>Lorem</p>
          </div>
          <div class="about-item-award">
            <img
              src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 3.png"
            />
            <p>Lorem</p>
          </div>
          <div class="about-item-award">
            <img
              src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 4.png"
            />
            <p>Lorem</p>
          </div>
          <div class="about-item-award">
            <img
              src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 5.png"
            />
            <p>Lorem</p>
          </div>
          <div class="about-item-award">
            <img
              src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 6.png"
            />
            <p>Lorem</p>
          </div>
          <div class="about-item-award">
            <img
              src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 7.png"
            />
            <p>Lorem</p>
          </div>
          <div class="about-item-award">
            <img
              src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 1.png"
            />
            <p>Lorem</p>
          </div>
          <div class="about-item-award">
            <img
              src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 2.png"
            />
            <p>Lorem</p>
          </div>
          <div class="about-item-award">
            <img
              src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 3.png"
            />
            <p>Lorem</p>
          </div>
          <div class="about-item-award">
            <img
              src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 4.png"
            />
            <p>Lorem</p>
          </div>
          <div class="about-item-award">
            <img
              src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 5.png"
            />
            <p>Lorem</p>
          </div>
          <div class="about-item-award">
            <img
              src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 6.png"
            />
            <p>Lorem</p>
          </div>
          <div class="about-item-award">
            <img
              src="<?php echo get_template_directory_uri(); ?>/assets/images/awards/award 7.png"
            />
            <p>Lorem</p>
          </div>
        </div>
      </div>

      <div class="award-progress-bar">
        <div class="prog-bar-inner"></div>
      </div>
    </div>
  </div>
  <!-- award-section-about -->
</div>
<!-- <div class="container-fluid about-award-section"> -->

<!-- Award Section end-->

<!-- About counter section start -->
<section class="container-fluid about-counter-section2">
  <div class="about-a-counter-container">
    <div class="row">
      <div class="col-md-12 a-counter-container">
        <div class="a-counter">
          <img
            src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/about-icons/row icon 1.png"
          />
          <h6>2,5M m2</h6>
          <span>Lorem ipsum</span>
        </div>
        <div class="a-counter">
          <img
            src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/about-icons/row icon 2.png"
          />
          <h6>2,5M m2</h6>
          <span>Lorem ipsum</span>
        </div>
        <div class="a-counter">
          <img
            src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/about-icons/row icon 3.png"
          />
          <h6>2,5M m2</h6>
          <span>Lorem ipsum</span>
        </div>
        <div class="a-counter">
          <img
            src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/about-icons/row icon 4.png"
          />
          <h6>2,5M m2</h6>
          <span>Lorem ipsum</span>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12 a-counter-container">
        <div class="a-counter">
          <img
            src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/about-icons/row icon 5.png"
          />
          <h6>2,5M m2</h6>
          <span>Lorem ipsum</span>
        </div>
        <div class="a-counter">
          <img
            src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/about-icons/row icon 6.png"
          />
          <h6>2,5M m2</h6>
          <span>Lorem ipsum</span>
        </div>
        <div class="a-counter">
          <img
            src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/about-icons/row icon 7.png"
          />
          <h6>2,5M m2</h6>
          <span>Lorem ipsum</span>
        </div>
        <div class="a-counter">
          <img
            src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/about-icons/row icon 8.png"
          />
          <h6>2,5M m2</h6>
          <span>Lorem ipsum</span>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- About counter section end -->

<!-- /* about us logo wheel section start */ -->
<section class="container-fluid about-logo-scroll-section">
  <div class="container">
    <h1 class="award-title myfill-title-invert" style="padding-bottom: 0rem">
      Lorem ipsum dolor sit ame
    </h1>
    <div class="brand-wheel">
      <div class="brand-slide">
        <div class="logo-div">
          <img
            alt="#"
            src="<?php echo get_template_directory_uri(); ?>/assets/images/partnerns/logo1.png"
          />
        </div>
        <div class="logo-div">
          <img
            alt="#"
            src="<?php echo get_template_directory_uri(); ?>/assets/images/partnerns/logos-06@2x.png"
          />
        </div>
        <div class="logo-div">
          <img
            alt="#"
            src="<?php echo get_template_directory_uri(); ?>/assets/images/partnerns/logo1.png"
          />
        </div>
        <div class="logo-div">
          <img
            alt="#"
            src="<?php echo get_template_directory_uri(); ?>/assets/images/partnerns/logos-06@2x.png"
          />
        </div>
        <div class="logo-div">
          <img
            alt="#"
            src="<?php echo get_template_directory_uri(); ?>/assets/images/partnerns/logo1.png"
          />
        </div>
        <div class="logo-div">
          <img
            alt="#"
            src="<?php echo get_template_directory_uri(); ?>/assets/images/partnerns/logos-06@2x.png"
          />
        </div>
        <div class="logo-div">
          <img
            alt="#"
            src="<?php echo get_template_directory_uri(); ?>/assets/images/partnerns/logo1.png"
          />
        </div>
        <div class="logo-div">
          <img
            alt="#"
            src="<?php echo get_template_directory_uri(); ?>/assets/images/partnerns/logos-06@2x.png"
          />
        </div>
      </div>
      <div class="brand-slide delay">
        <div class="logo-div">
          <img
            alt="#"
            src="<?php echo get_template_directory_uri(); ?>/assets/images/partnerns/logo1.png"
          />
        </div>
        <div class="logo-div">
          <img
            alt="#"
            src="<?php echo get_template_directory_uri(); ?>/assets/images/partnerns/logos-06@2x.png"
          />
        </div>
        <div class="logo-div">
          <img
            alt="#"
            src="<?php echo get_template_directory_uri(); ?>/assets/images/partnerns/logo1.png"
          />
        </div>
        <div class="logo-div">
          <img
            alt="#"
            src="<?php echo get_template_directory_uri(); ?>/assets/images/partnerns/logos-06@2x.png"
          />
        </div>
        <div class="logo-div">
          <img
            alt="#"
            src="<?php echo get_template_directory_uri(); ?>/assets/images/partnerns/logo1.png"
          />
        </div>
        <div class="logo-div">
          <img
            alt="#"
            src="<?php echo get_template_directory_uri(); ?>/assets/images/partnerns/logos-06@2x.png"
          />
        </div>
        <div class="logo-div">
          <img
            alt="#"
            src="<?php echo get_template_directory_uri(); ?>/assets/images/partnerns/logo1.png"
          />
        </div>
        <div class="logo-div">
          <img
            alt="#"
            src="<?php echo get_template_directory_uri(); ?>/assets/images/partnerns/logos-06@2x.png"
          />
        </div>
      </div>
    </div>
  </div>
</section>

<!-- /* about us logo wheel section */ end-->

<!-----------------------------------------------end o page content---------------------------------->

<?php get_footer();?>
