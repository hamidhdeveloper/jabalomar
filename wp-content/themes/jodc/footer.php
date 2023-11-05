<?php
                    // $args = array(
                    // 'theme_location'=>'footer_menu_one'
                    // );
                    ?>
                    <?php //wp_nav_menu($args);?>

                    <div class="container-fluid footer" style=" padding: 0rem; ">
        <div class="container footer-container">
              <div class="row">
                <div class="col-md-4 footer-logo-first-col">
                    <div class="footerlogo-left">
                          <img src="<?php echo get_template_directory_uri(); ?>/assets/images/logo-light.png">
                    </div>
                    <div class="footerlogo-right">
                      <p>1418 River Drive, Suite 35 <br/> Cottonhall, CA 9622</p>
                      <p><a href="#">sale@jodc.com</a></p>
                      <p><a href="#">+1 246-345-0695</a></p>
                      <div class="social-icons">
                          <img src="<?php echo get_template_directory_uri(); ?>/assets/images/social/facebook.svg" />
                          <img src="<?php echo get_template_directory_uri(); ?>/assets/images/social/twitter.svg" />
                          <img src="<?php echo get_template_directory_uri(); ?>/assets/images/social/instagram.svg" />
                          <img src="<?php echo get_template_directory_uri(); ?>/assets/images/social/youtube.svg" />
                          <img src="<?php echo get_template_directory_uri(); ?>/assets/images/social/pinterest.svg" />
                      </div>
                    </div>
                </div>
                <div class="col-md-3 ">
                  <h6>COMPANY</h6>
                  <ul class="footer-col-2">
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Affilliates</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">Contact Us</a></li>
                  </ul>
                </div>
                <div class="col-md-3">
                  <h6>SHOP</h6>
                  <ul class="footer-col-2">
                    <li><a href="#">New Arrivals</a></li>
                    <li><a href="#">Accessories</a></li>
                    <li><a href="#">Men</a></li>
                    <li><a href="#">Women</a></li>
                    <li><a href="#">Shop All</a></li>
                  </ul>
                </div>
                <div class="col-md-2">
                  <h6>HELP</h6>
                  <ul class="footer-col-2">
                    <li><a href="#">Customer Service </a></li>
                    <li><a href="#">My Account</a></li>
                    <li><a href="#">Find a Store</a></li>
                    <li><a href="#">Legal & Privacy</a></li>
                    <li><a href="#">Contact</a></li>
                    <li><a href="#">Gift Card</a></li>
                  </ul>
                </div>
              </div>
        </div>



        <hr style="opacity: 1;"/>
        <div class="container">
          <p class="copyright-text">©2023 JODC</p>
        </div>
         </div>




<?php wp_footer(); ?>

  </div>    <!-- Flex container end-->

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
</body>
</html>
