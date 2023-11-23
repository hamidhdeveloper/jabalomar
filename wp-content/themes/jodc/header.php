<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html <?php language_attributes(); ?>>
<head>
<!-- <meta http-equiv="Content-Type" content="<?php bloginfo('html_type'); ?>; charset=<?php bloginfo('charset'); ?>" /> -->
<meta name="generator" content="WordPress <?php bloginfo('version'); ?>" /> 
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> -->
<meta charset="<?php bloginfo( 'charset' ); ?>"/>
<title><?php bloginfo('name'); ?> <?php wp_title(); ?></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="pingback" href="<?php bloginfo('pingback url'); ?>" /> 
<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="<?php bloginfo('rss2_url'); ?>" />
<link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>" type="text/css" media="screen" />
<link rel="shortcut icon" href="<?php bloginfo('template_directory'); ?>/favicon.ico"/>


<?php wp_head();?>
</head>

<body class="active">
  <div class="flex-container">
      
     
<div class="loader">
    <img class="loader_img" src="<?php bloginfo('template_directory'); ?>/assets/images/logo-light.png"/>
</div>




<!-- my header start -->
<!-- header start -->
<header class="haeder">

  <div class="search_holder ">
    <form>
      <input type="text" name="s" id="s" class="responsive_search" placeholder="<?php pll_e('serch_placeholder'); ?>" />
      <span class="responsive_search_button"><i class="fas fa-search"></i></span>
    </form>
  </div><!--end of search holder-->


  <div class="midnightHeader default">
      <!-- header-flex-box start -->
      <div class="container">
        <div class="header-flex-box">
          <div class="header-left">
            <a href="<?php echo home_url();?>" class="logo pointer-large animsition-link">
              <div class="logo-img-box">
                <img
                  class="logo"
                  src="<?php bloginfo('template_directory'); ?>/assets/images/logo-dark.png"
                  alt="logo"
                  loading="lazy"
                />
              </div>
            </a>
          </div>
          <div class="header-right">
            <div class="language_menu">
            <?php
            $args = array(
            'theme_location'=>'language_menu'
            );
            ?>
            <?php wp_nav_menu($args);?>
            </div>
            <div class="search_container">
              <i class="fas fa-search"></i>
            </div>
            <!-- menu-open start -->
            <div class="menu-outline">
              <div class="menu-open pointer-large">
                <span class="hamburger"></span>
              </div>
            </div>
            <!-- menu-open end -->
          </div>
        </div>
      </div>
      <!-- header-flex-box end -->
    </div>
  
</header>
<!-- header end -->

<!-- nav-container start -->
<nav class="nav-container dark-bg-1">
  <!-- nav-logo start -->
  <div class="nav-logo">
    <a href="<?php echo home_url();?>">
      <img src="<?php bloginfo('template_directory'); ?>/assets/images/logo-light.png" alt="logo" loading="lazy" />
    </a>
  </div>
  <!-- nav-logo end -->

  <!-- menu-close -->
  <div class="menu-close "></div>

  <!-- dropdown-close-box start -->
  <div class="dropdown-close-box">
    <div class="dropdown-close">
      <span></span>
    </div>
  </div>
  <!-- dropdown-close-box end -->

  <!-- nav-menu start -->
  <ul class="nav-menu dark-bg-1">
    <!-- nav-box start -->
    <?php
    // Define the arguments for the menu
    $args = array(
        'theme_location' => 'main_menu',
        'echo'           => false, // Set 'echo' to false to retrieve the menu without displaying it
    );

    // Get the menu as a string
    $menu_html = wp_nav_menu($args);

    // Parse the menu HTML using a DOM parser
    $dom = new DOMDocument();
    $dom->loadHTML(mb_convert_encoding($menu_html, 'HTML-ENTITIES', 'UTF-8'));

    // Get the list items from the menu
    $list_items = $dom->getElementsByTagName('li');

    // Loop through the list items
    foreach ($list_items as $list_item) {
        $hasSubMenu = $list_item->getElementsByTagName('ul')->length > 0;
        $link = $list_item->getElementsByTagName('a')->item(0);
        $text = $link->textContent;
        $href = $link->getAttribute('href');

        if ($hasSubMenu) {
            // For items with sub-menus
            echo '<li class="nav-box nav-bg-change dropdown-open active">';
            echo '<a class="pointer-large nav-link">';
            echo '<span class="nav-btn" data-text="' . $text . '">' . $text . '</span>';
            echo '</a>';
            echo '<div class="nav-bg"></div>';
            // Add the sub-menu structure
            echo '<ul class="dropdown">';
            // Iterate over the sub-menu items
            $subMenuItems = $list_item->getElementsByTagName('li');
            foreach ($subMenuItems as $subMenuItem) {
                $subMenuLink = $subMenuItem->getElementsByTagName('a')->item(0);
                $subMenuText = $subMenuLink->textContent;
                $subMenuHref = $subMenuLink->getAttribute('href');
                echo '<li class="nav-box">';
                echo '<a href="' . $subMenuHref . '" class="animsition-link pointer-large">';
                echo '<span class="nav-btn" data-text="' . $subMenuText . '">' . $subMenuText . '</span>';
                echo '</a>';
                echo '</li>';
            }

            if ($hasSubMenu) {
                $subMenu = $list_item->getElementsByTagName('ul')->item(0);
                $subMenu->parentNode->removeChild($subMenu);
            }
            
            echo '</ul>';
            echo '</li>';
        } else {
            // For items without sub-menus
            echo '<li class="nav-box nav-bg-change">';
            echo '<a href="' . $href . '" class="pointer-large nav-link">';
            echo '<span class="nav-btn" data-text="' . $text . '">' . $text . '</span>';
            echo '</a>';
            echo '<div class="nav-bg"></div>';
            echo '</li>';
        }
    }
    ?>

    <!-- you can add your language menu here static -->

    <!-- you can add your language menu here static -->

  </ul>
  <!-- nav-menu end -->



</nav>
<!-- nav-container end -->






 







