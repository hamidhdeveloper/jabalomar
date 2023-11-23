<footer class="footer">
  <div class="container">
    <div class="row">

      <div class="col-md-4 col-ms-6">
        <div class="footer_logo_container">
          <img class="footerlogo" src="<?php echo get_template_directory_uri(); ?>/assets/images/logo-light.png">
          <div class="footer_logo_content_container">

            <div class="footer_logo_conntent_top">
              <p><a target="_blank" href=""><?php pll_e('footer_address_one'); ?></a></p>
              <p><a target="_blank" href=""><?php pll_e('footer_address_two'); ?></a></p>
            </div><!--end of footer_logo_conntent_top-->

            <div class="footer_logo_conntent_bottom">
              <p><a href="mailto:info@jodc.com.sa"><?php pll_e('footer_email'); ?></a></p>
              <p style="direction: ltr"><a href="tel:+966125106100"><?php pll_e('footer_phone'); ?></a></p>
            </div><!--end of footer_logo_conntent_bottom-->

          </div><!--endn of footer_logo_content_container-->
        </div><!--end of footer_logo_container-->
        <div class="footer_social_media_container">
          <a href="" taget="_blank"><i class="fab fa-youtube"></i></a>
          <a href="" taget="_blank"><i class="fab fa-linkedin"></i></a>
          <a href="" taget="_blank"><i class="fab fa-twitter"></i></a>
          <a href="" taget="_blank"><i class="fab fa-facebook"></i></a>
          <a href="" taget="_blank"><i class="fab fa-instagram-square"></i></a>
        </div><!--end of footer_social_media_container-->
      </div><!--end of col-->


      <div class="col-md-3 col-ms-6">
        <div class="footer_menu_container">
          <h4><?php pll_e('footer_menu_one') ?></h4>
          <?php
            $args = array(
            'theme_location'=>'footer_menu_one'
            );
            ?>
          <?php wp_nav_menu($args);?>
        </div><!--end of footer_menu_container-->
      </div><!--end of col-->



      <div class="col-md-3 col-ms-6">
        <div class="footer_menu_container">
          <h4><?php pll_e('footer_menu_two') ?></h4>
          <?php
            $args = array(
            'theme_location'=>'footer_menu_two'
            );
            ?>
          <?php wp_nav_menu($args);?>
        </div><!--end of footer_menu_container-->
      </div><!--end of col-->


      <div class="col-md-2 col-ms-6">
        <div class="footer_menu_container">
          <h4><?php pll_e('footer_menu_three') ?></h4>
          <?php
            $args = array(
            'theme_location'=>'footer_menu_three'
            );
            ?>
          <?php wp_nav_menu($args);?>
        </div><!--end of footer_menu_container-->
      </div><!--end of col-->


      <div class="rights_container">
        <?php pll_e('rights') ?> <?php echo date('Y');?>
      </div><!--end of rights_container-->

    </div><!--end of row-->

  </div><!--end of container-->


</footer><!--end of footer-->


  <script>
    const slider = document.querySelector(".slider-inner");
      const progressBar = document.querySelector(".prog-bar-inner");

      let sliderGrabbed = false;

      slider.parentElement.addEventListener("scroll", (e) => {
        progressBar.style.width = `${getScrollPercentage()}%`;
        
        if (progressBar.style.width === '101%') {
          // Remove custom scrolling behavior
          slider.parentElement.style.overflow = 'hidden';
          // Restore the cursor style if needed
          // slider.parentElement.style.cursor = 'default';
        }
      });

      slider.addEventListener("mousedown", (e) => {
        sliderGrabbed = true;
        slider.style.cursor = "grabbing";
      });

      slider.addEventListener("mouseup", (e) => {
        sliderGrabbed = false;
        slider.style.cursor = "grab";
      });

      slider.addEventListener("mouseleave", (e) => {
        sliderGrabbed = false;
      });

      slider.addEventListener("mousemove", (e) => {
        if (sliderGrabbed) {
          slider.parentElement.scrollLeft -= e.movementX;
        }
      });

      slider.addEventListener("wheel", (e) => {
        if (progressBar.style.width !== '101%') {
        e.preventDefault();
        }
        slider.parentElement.scrollLeft += e.deltaY;
        
      });

      function getScrollPercentage() {
        
        return (
          (slider.parentElement.scrollLeft /
            (slider.parentElement.scrollWidth -
              slider.parentElement.clientWidth)) *
          101
        );
        
      }

  </script>

<?php wp_footer(); ?>
</body>
</html>
