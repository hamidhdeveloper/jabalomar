<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html <?php language_attributes(); ?>>
<head>
<!-- <meta http-equiv="Content-Type" content="<?php bloginfo('html_type'); ?>; charset=<?php bloginfo('charset'); ?>" /> -->
<meta name="generator" content="WordPress <?php bloginfo('version'); ?>" /> 
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> -->
<meta charset="<?php bloginfo( 'charset' ); ?>"/>
<title><?php bloginfo('name'); ?> <?php wp_title(); ?></title>
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1" />
<link rel="pingback" href="<?php bloginfo('pingback url'); ?>" /> 
<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="<?php bloginfo('rss2_url'); ?>" />
<link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>" type="text/css" media="screen" />
<link rel="shortcut icon" href="<?php bloginfo('template_directory'); ?>/favicon.ico"/>


<link rel="stylesheet" type="text/css" href="<?php bloginfo('template_directory'); ?>/assets/css/jquery.pagepiling.css"/>






<?php wp_head();?>
</head>

<?php 
  $main_logo = "";
  if(pll_current_language() == 'ar')
  {
    $main_logo = '/assets/images/logo_green_ar.svg';
  }
  else{
    $main_logo = '/assets/images/logo_green.svg';
  }
  ?>



<div class="responsive_responsive_menu_container mobile">
  <div class="responsive_menu">
    <i style="color: #043f1f;" class="fa-sharp fa-solid fa-bars"></i>
  </div>

  <a class="main_logo" href="<?php echo home_url();?>">
  <img class="mobile" src="<?php echo bloginfo('template_directory') . $main_logo; ?>"/>
  </a>

</div><!--end of responsive_menu_container-->








<div class="left_skew page_left_skew">


  <a class="main_logo" href="<?php echo home_url();?>">
  <img src="<?php echo bloginfo('template_directory') .  $main_logo; ?>"/>
  </a>


  <div class="left_menu_line">

    <?php 
    $registration_link = ""; 
    $contact_link = "";
      if(pll_current_language() == 'ar')
      {
        $registration_link = get_site_url()."/ecosep-registration"; 
        $contact_link = get_site_url()."/ar/تواصل-معنا/";
      }
      else{
        $registration_link = get_site_url()."/ecosep-registration"; 
        $contact_link = get_site_url()."/contact-us";
      }
    ?>

    <a href="<?php echo $registration_link; ?>" class= "home_btn_one">
      <p><?php pll_e('register'); ?></p>
    </a>

    <a href="<?php echo $contact_link; ?>" class= "home_btn_one level_two_btn">
      <p><?php pll_e('contact'); ?></p>
    </a>


    <div class="language">
      <?php
        $args = array(
        'theme_location'=>'language_menu'
        );
        ?>
      <?php wp_nav_menu($args);?>
    </div><!--end of language-->


  </div><!--end of left_menu_line-->

</div><!--end of left_skew-->



<div class="right_skew page_right_skew">
  <div class="right_line right_line_one">
    <a class="social" target="_blank" href="https://twitter.com/MOVEcsm"><i class="fab fa-twitter"></i></a>
  </div>
  <div class="right_line right_line_two">
    <a class="social" target="_blank" href="https://instagram.com/move_csm/"><i class="fab fa-instagram"></i></a>
  </div>
  <div class="right_line right_line_three">
    <a class="social" target="_blank" href="https://linkedin.com/company/move-comprehensive-sports-medicine"><i class="fa-brands fa-linkedin-in"></i></a>
  </div>

  <?php 
    $echosep_link = ""; 
      if(pll_current_language() == 'ar')
      {
        $echosep_link = get_site_url()."/ar/الكلية-الأوروبية-لأطباء-الرياضة-والت/"; 
      }
      else{
        $echosep_link = get_site_url()."/european-college-of-sports-and-exercise-physicians"; 
      }
    ?>

  <a href="<?php echo $echosep_link;?>" class="ecosep_container computer">
    <img class="ecosep_icon" src="<?php bloginfo('template_directory'); ?>/assets/images/ecosep.png"/>
    <div class="ecosep_title"><?php pll_e('ecosep_title'); ?></div>
    <div class="ecosep_counter_container">
      <div class="counter_container"><p id="days"></p><p class="counter_text"><?php pll_e('days'); ?></p></div>
      <div class="counter_container"><p id="hours"></p><p class="counter_text"><?php pll_e('hours'); ?></p></div>
      <div class="counter_container"><p id="mins"></p><p class="counter_text"><?php pll_e('min'); ?></p></div>
      <div class="counter_container"><p id="sec"></p><p class="counter_text"><?php pll_e('sec'); ?></p></div>
    </div><!--end of ecosep_counter_container-->

  </a><!--end of ecosep_container-->

</div><!--end of left_skew-->





<div class="top_menu_container" style="z-index: 9;">
  <div class="top_nav">
  <?php
    $args = array(
    'theme_location'=>'main_menu'
    );
    ?>
  <?php wp_nav_menu($args);?>
  </div><!--end of top_nav-->
</div><!--top_menu_container-->




<!------------------------------------responsive menu----------------------->
<div class="responsive_menu_container">
<img class="menu_close_container" src="<?php bloginfo('template_directory'); ?>/assets/images/close.png"/>
  <div class="responsive_menu_content_container">

    <a href="<?php echo $appointment_link; ?>"><div class="responsive_appointment">
      <p><?php pll_e('appointment'); ?></p>
    </div></a><!--end of responsive_appointment-->

    <div class="left_responsive_menu">
      <?php
      $args = array(
      'theme_location'=>'main_menu'
      );
      ?>
      <?php wp_nav_menu($args);?>
    </div><!--end of left_responsive_menu-->

    <div class="right_responsive_menu">
      <?php
      $args = array(
      'theme_location'=>'footer_menu'
      );
      ?>
      <?php wp_nav_menu($args);?>

      <?php
        $args = array(
        'theme_location'=>'language_menu'
        );
        ?>
      <?php wp_nav_menu($args);?>

    </div><!--end of right_responsive_menu-->

  </div><!--end of responsive_menu_content_container-->
</div>
<!--end of responsive_menu_container-->




</div><!-----------------------------end of loader-------------------------------->


