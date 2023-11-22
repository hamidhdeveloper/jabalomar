<?php
/*
Template Name: about
*/
?>

<?php get_header();?>
<!-----------------------------------------------page content---------------------------------->
<div class="container-fluid">
        <div class="row about-main-section">
          <div class="col-md-6 about-main-left">
            <img src="./images/about-main.png" />
          </div>
          <div class="col-md-6 about-main-right">
            <h1 class="about-main-h1">Lorem ipsum dolor</h1>
            <p class="about-main-para">
              Lorem ipsum dolor sit amet, consectetuer<br />
              adipiscing elit, sed diam nonummy nibh eli
            </p>
            
               <!-- scroll btn start  -->
               <div class="myscroll">
              <a href="#down" class="scroll-btn" style="bottom:0px;position:inherit" >
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
      





<!-----------------------------------------------end o page content---------------------------------->

<?php get_footer();?>

