<?php
@ini_set( 'upload_max_size' , '64M' );
@ini_set( 'post_max_size', '64M' );
@ini_set( 'max_execution_time', '300' );




//navigation menus
register_nav_menus(array(
    'main_menu'=>__('main_menu'),
    'language_menu'=>__('language_menu'),
  ));
  




function deu_register_styles(){
    $version = wp_get_theme()->get('version'); 
    wp_enqueue_style('app-bootstarp', get_template_directory_uri()."/assets/css/bootstrap.min.css", array(), '5.2.2', 'all');
    wp_enqueue_style('app-animate', get_template_directory_uri()."/assets/css/animate.min.css", array(), '1.1.1', 'all');
    wp_enqueue_style('app-loader', get_template_directory_uri()."/assets/css/loader.css", array(), '1.1.1', 'all');
    wp_enqueue_style('app-menu', get_template_directory_uri()."/assets/css/menu.css", array(), '1.1.1', 'all');
}
add_action('wp_enqueue_scripts', 'deu_register_styles');




function deu_register_scripts(){
    //false in header and true in foooter
    wp_enqueue_script('app-jquery', get_template_directory_uri().'/assets/js/jquery.min.js', array(), '1.8.3', false);
    wp_enqueue_script('app-bootstarp', get_template_directory_uri().'/assets/js/bootstrap.bundle.min.js', array('app-jquery'), '5.2.2', false);
    wp_enqueue_script('app-fontawesome', get_template_directory_uri().'/assets/js/119e56454d.js', array(), '1.1.9', false);
    wp_enqueue_script('app-inview', get_template_directory_uri()."/assets/js/jquery.inview.min.js", array('app-jquery'), '1.1.1', false);
    wp_enqueue_script('app-app', get_template_directory_uri()."/assets/js/app.js", array('app-jquery'), '1.1.1', false);
    wp_enqueue_script('app-menu-js', get_template_directory_uri()."/assets/js/menu.js", array('app-jquery'), '1.1.1', false);
    
}
add_action('wp_enqueue_scripts', 'deu_register_scripts');








// add featured image to the post
add_theme_support('post-thumbnails');

//add post format support
add_theme_support('post-format', array('aside','gallary','link'));

// post formats
add_theme_support( 'post-formats',      
      array( 
        'aside',   // title less blurb
        'gallery', // gallery of images
        'link',    // quick link to other site
        'image',   // an image
        'quote',   // a quick quote
        'status',  // a Facebook like status update
        'video',   // video 
        'audio',   // audio
        'chat'     // chat transcript 
      )
    ); 
	





// Admin footer modification
 
function remove_footer_admin () 
{
    echo '<span id="footer-thankyou">Developed by <a href="https://n24-sa.com" target="_blank">N24</a></span>';
}
add_filter('admin_footer_text', 'remove_footer_admin');



// REMOVE META BOXES FROM WORDPRESS DASHBOARD FOR ALL USERS
 
function remove_dashboard_widgets() {
	global $wp_meta_boxes;

	unset($wp_meta_boxes['dashboard']['side']['core']['dashboard_quick_press']);
	unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_incoming_links']);
	unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_right_now']);
	unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_plugins']);
	unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_recent_drafts']);
	unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_recent_comments']);
	unset($wp_meta_boxes['dashboard']['side']['core']['dashboard_primary']);
	unset($wp_meta_boxes['dashboard']['side']['core']['dashboard_secondary']);

}

add_action('wp_dashboard_setup', 'remove_dashboard_widgets' );






//numbers of worlds before read more
function excerpt($limit) {
  $excerpt = explode(' ', get_the_excerpt(), $limit);
  if (count($excerpt)>=$limit) {
  array_pop($excerpt);
  $excerpt = implode(" ",$excerpt).'… <a href="'. get_permalink($post->ID) . '">' . '' . '</a>';
} else {
  $excerpt = implode(" ",$excerpt);
}	
$excerpt = preg_replace('`\[[^\]]*\]`','',$excerpt);
return $excerpt;
}



function content($limit) {
$content = explode(' ', get_the_content(), $limit);
if (count($content)>=$limit) {
  array_pop($content);
  $content = implode(" ",$content).'...';
} else {
 $content = implode(" ",$content);
}	
$content = preg_replace('/\[.+\]/','', $content);
$content = apply_filters('the_content', $content); 
$content = str_replace(']]>', ']]&gt;', $content);
return $content;
}











//strings translations
add_action('init', function() {
  pll_register_string('learn_more_text', 'learn_more');
  pll_register_string('footer_about_text', 'footer_about');
  pll_register_string('staff_title_text', 'staff_title');
  pll_register_string('news_title_text', 'news_title');
  pll_register_string('services_title_text', 'services_title');
  pll_register_string('activities_title_text', 'activities_title');
  pll_register_string('accreditations_title_text', 'accreditations_title');
  pll_register_string('footer_location_text', 'footer_location');
  pll_register_string('footer_phone_text', 'footer_phone');
  pll_register_string('footer_email_text', 'footer_email');
  pll_register_string('wiget_one_text', 'wiget_one');
  pll_register_string('wiget_two_text', 'wiget_two');
  pll_register_string('wiget_three_text', 'wiget_three');
  pll_register_string('wiget_four_text', 'wiget_four');
  pll_register_string('about_text', 'about');
  pll_register_string('move_name_text', 'move_name');
  pll_register_string('partners_text', 'partners');

  pll_register_string('call_title_text','call_title');
  pll_register_string('call_number_text','call_number');
  pll_register_string('email_title_text','email_title');
  pll_register_string('email_info_text','email_info');
  pll_register_string('location_title_text','location_title');
  pll_register_string('location_info_text','location_info');
});





/* Remove WP logo from login page */
function custom_login_logo() {
  echo '<style type ="text/css">.login h1 a { visibility:hidden!important; }</style>';
}
add_action('login_head', 'custom_login_logo');


/* Remove admin bar logo */
function example_admin_bar_remove_logo() {
  global $wp_admin_bar;
  $wp_admin_bar->remove_menu( 'wp-logo' );
}
add_action( 'wp_before_admin_bar_render', 'example_admin_bar_remove_logo', 0 );





?>