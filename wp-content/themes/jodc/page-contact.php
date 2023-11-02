<?php
/*
Template Name: contact
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
  <div style="width: 100%; height: 50px;"></div>



<br><br><br>



<div class="container">
<div class="row">
  <div class="col-lg-4 col-md-4 col-sm-12">

    <div class="contact_info_container call_container">
      <div class="contact_icon"><i class="fas fa-phone-alt"></i></div>
      <div class="contact_title"><?php pll_e('call_title'); ?></div>
      <a href="tel:920009298" class="contact_info"><?php pll_e('call_number'); ?></a>
    </div><!--end of contact_info_container-->

  </div>
  <div class="col-lg-4 col-md-4 col-sm-12"></div>
  <div class="col-lg-4 col-md-4 col-sm-12"></div>
</div><!--end of row-->

<div class="line" style="height: 2px; margin-top: 10px;"></div>


<div class="row">
  <div class="contact_info_container email_container">
    <div class="contact_icon"><i class="fas fa-envelope"></i></div>
    <div class="contact_title"><?php pll_e('email_title'); ?></div>
    <a href="mailto:info@move.med.sa" class="contact_info"><?php pll_e('email_info'); ?></a>
  </div><!--end of contact_info_container-->
</div><!--end of row-->

<div class="line" style="height: 2px; margin-top: 10px;"></div>

<div class="row">
  <div class="contact_info_container location_container">
    <div class="contact_icon"><i class="fas fa-map-marker"></i></div>
    <div class="contact_title"><?php pll_e('location_title'); ?></div>
    <a target="_blank" href="https://goo.gl/maps/bCUwAGtaVkYgUwSi7" class="contact_info"><?php pll_e('location_info'); ?></a>
  </div><!--end of contact_info_container-->
</div><!--end of row-->

<div class="line" style="height: 2px; margin-top: 10px;"></div>


<br><br><br><br><br><br><br>


    <div class="contact_form_container">
    <div class="container">
      <div class="row">
      <?php 
        if(pll_current_language() == 'ar')
        {
          echo do_shortcode('[contact-form-7 id="706" title="Contact form ar"]');

        }
        else{
          echo do_shortcode('[contact-form-7 id="5" title="Contact form en"]');
        }
      ?>
      </div><!--end of row-->
    </div><!--end of container-->
    </div><!--end of contact_form_container-->


</div><!--end of container-->



    <div class="google_map_container">
      <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1713.0476464882247!2d46.669085!3d24.716608!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e2f1d28a543466d%3A0x5228530a7506ecbd!2z2YXZiNmBINmE2YTYt9ioINin2YTYsdmK2KfYttmKINin2YTYtNin2YXZhA!5e1!3m2!1sar!2ssa!4v1675667864587!5m2!1sar!2ssa" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div><!--end of google_map_container-->




    <div class="contact_social_media_container">
    <a class="footer_social" target="_blank" href="https://twitter.com/MOVEcsm"><i class="fab fa-twitter"></i></a>
    <a class="footer_social" target="_blank" href="https://instagram.com/move_csm/"><i class="fab fa-instagram"></i></a>
    <a class="footer_social" target="_blank" href="https://linkedin.com/company/move-comprehensive-sports-medicine"><i class="fa-brands fa-linkedin-in"></i></a>
    <a class="footer_social" target="_blank" href=""><i class="fa-brands fa-facebook-f"></i></a>
    <a class="footer_social" target="_blank" href=""><i class="fa-brands fa-snapchat"></i></a>
    <a class="footer_social" target="_blank" href=""><i class="fa-brands fa-youtube"></i></a>
    </div><!--end of contact_social_media_container-->


    

    <div style="width: 100%; height: 100px;"></div>


</div><!--end of pages_content_container-->
<!-----------------------------------------------end o page content---------------------------------->

<?php get_footer();?>

