<?php 
  $main_logo_light = "";
  if(pll_current_language() == 'ar')
  {
    $main_logo_light = '/assets/images/logo-ar_light.png';
  }
  else{
    $main_logo_light = '/assets/images/logo_en_light.png';
  }
?>

<div class="side_socila_media">
    <a class="side_social" target="_blank" href="https://twitter.com/MOVEcsm"><i class="fab fa-twitter"></i></a>
    <a class="side_social" target="_blank" href="https://instagram.com/move_csm/"><i class="fab fa-instagram"></i></a>
    <a class="side_social" target="_blank" href="https://linkedin.com/company/move-comprehensive-sports-medicine"><i class="fa-brands fa-linkedin-in"></i></a>
    <a class="side_social" target="_blank" href=""><i class="fa-brands fa-whatsapp"></i></a>
</div><!--end of side_socila_media-->



<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                <img class="footer_logo" src="<?php echo bloginfo('template_directory') . $main_logo_light; ?>"/>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                <div class="footer_menu">
                    <?php
                    $args = array(
                    'theme_location'=>'footer_menu_one'
                    );
                    ?>
                    <?php wp_nav_menu($args);?>
                </div><!--end of footer_menu-->
            </div>
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                <div class="footer_menu">
                    <?php
                    $args = array(
                    'theme_location'=>'footer_menu_two'
                    );
                    ?>
                    <?php wp_nav_menu($args);?>
                </div><!--end of footer_menu-->
            </div>
            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                <div class="footer_info"><i class="fas fa-map-marker-alt"></i><?php pll_e('footer_location'); ?></div>
                <div class="footer_info"><i class="fas fa-phone-alt"></i><?php pll_e('footer_phone'); ?></div>
                <div class="footer_info"><i class="far fa-envelope"></i><?php pll_e('footer_email'); ?></div>
            </div>

            <div style="width: 100%; height: 40px;"></div>

            <!-- <div class="footer_social_media">
                <a class="footer_social" target="_blank" href="https://twitter.com/MOVEcsm"><i class="fab fa-twitter"></i></a>
                <a class="footer_social" target="_blank" href="https://instagram.com/move_csm/"><i class="fab fa-instagram"></i></a>
                <a class="footer_social" target="_blank" href="https://linkedin.com/company/move-comprehensive-sports-medicine"><i class="fa-brands fa-linkedin-in"></i></a>
            </div> -->

        </div><!--end row-->
    </div><!--end of container-->

    <!--<div class="live_chat">
    <i class="fab fa-rocketchat"></i>
    </div>-->
</footer>
<?php wp_footer(); ?>

  </div>    <!-- Flex container end-->
</body>
</html>
