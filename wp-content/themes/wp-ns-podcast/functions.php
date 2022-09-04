<?php

//REDIRECT TO FE
if(!defined('REDIRECT_URL')){
    define("REDIRECT_URL", '');
}

if(!function_exists('ns_custom_redirect')){
    function ns_custom_redirect(){
        header("Location: ". REDIRECT_URL);
        die();
    }
}

//ENABLE POST-THUMBNAILS
if(!function_exists('ns_theme_setup')){
    function ns_theme_setup(){
        add_theme_support('post-thumbnails');      
    }
    add_action('after_setup_theme', 'ns_theme_setup');
}

//GLOBAL OPTIONS
//if(!function_exists('add_global_custom_options()')){
//     function add_global_custom_options(){
//         add_options_page('Global Custom Options', 'Global Custom Options', 'manage_options', 'functions','global_custom_options');
//     }
//     add_action('admin_menu', 'add_global_custom_options');
// }


add_action('admin_menu', 'cgp_opcion');

//ADD GLOBAL OPTIONS
if(!function_exists('cgp_opcion')){
    function cgp_opcion(){
        add_options_page('Global Custom Options', 'Global Custom Options', 'manage_options', 'functions','global_custom_options');
    }
    
}


function global_custom_options () 
{ ?>
  <div class="wrap">
    <h2>Global Custom Options</h2>
    <form method="post" action="options.php">
	 	 <?php	wp_nonce_field('update-options') ?>
	 	  <p><strong>General:</strong><br	/>
	 	 	 <input	type="text" name="generalid" size="45" value="<?php	echo get_option('generalid'); ?>" />
          </p>
	 	  
        <p><input type="submit" name="Submit"	value="Modificar" /></p>

        <input type="hidden" name="action" value="update" />
        <input type="hidden"	name="page_options" value="generalid" />
    </form>
  </div>
<?php } 

//ADD CUSTOM IMAGE SIZE
if(!function_exists('ns_add_image_size')){
    function ns_add_image_size(){
        add_image_size('custom-medium',         300,     9999);      
        add_image_size('custom-tablet',         600,     9999);      
        add_image_size('custom-large',          1200,    1200, true);      
        add_image_size('custom-large-crop',     1600,    9999);      
        add_image_size('custom-full',           2500,    9999);      
    }
    add_action('after_setup_theme', 'ns_add_image_size');
}

//DIABLE GUTENBERG EDITOR
add_filter('use_block_editor_for_post', '__return_false', 10);
add_filter('use_block_editor_for_post_type', '__return_false', 10);

//ADD REGISTER MENUS BASICS
if(!function_exists('ns_custom_navigation_menus')){
    function ns_custom_navigation_menus(){
       $locations = array(
        'header_menu'       => __( 'Header Menu', 'wp-ns-podcast'),
        'footer_menu'       => __( 'Footer Menu', 'wp-ns-podcast')
       );   
       register_nav_menus( $locations );
    }
    add_action('init', 'ns_custom_navigation_menus');
}

//CREATE MY CUSTOM POST TYPE
if(!function_exists('ns_register_custom_post_type')){
    function ns_register_custom_post_type(){
       //CPT PODCAST
       $singular_name   = __('Podcast','wp-ns-podcast');
       $plural_name     = __('Podcasts','wp-ns-podcast');
       $slug_name   = __('cpt-podcast','wp-ns-podcast');

       register_post_type( $slug_name, array(
        'label'             => $singular_name,
        'public'            => true,
        'capability_type'   => 'post',
        'map_meta_cap'      => true,
        'has_archive'       => false,
        'query_var'         => $slug_name,
        'supports'          => array('title', 'thumbnail', 'revisions'),
        'labels'            => ns_get_custom_post_type_labels( $singular_name, $plural_name),
        'menu_icon'         => 'dashicons-media-audio',
        'show_in_rest'      => true
       ));
    }
    add_action('init', 'ns_register_custom_post_type');
}

//LABELS FOR CPT PODCAST
if(!function_exists('ns_get_custom_post_type_labels')){
    function ns_get_custom_post_type_labels($singular, $plural){
        $labels = array(
            'name'                  => $plural,
            'singular_name'         => $singular,
            'menu_name'             => $plural,
            'add_new'               => sprintf( __('Add %s', 'wp-ns-podcast'), $singular),
            'add_new_item'          => sprintf( __('Add new %s', 'wp-ns-podcast'), $singular),
            'edit'                  => __('Edit', 'wp-ns-podcast'),
            'edit_item'             => sprintf( __('Edit %s', 'wp-ns-podcast'), $singular),
            'new_item'              => sprintf( __('New %s', 'wp-ns-podcast'), $singular),
            'view'                  => sprintf( __('View %s', 'wp-ns-podcast'), $singular),
            'view_item'             => sprintf( __('View %s', 'wp-ns-podcast'), $singular),
            'search_items'          => sprintf( __('Search %s', 'wp-ns-podcast'), $plural),
            'not_found'             => sprintf( __('%s not found', 'wp-ns-podcast'), $plural),
            'not_found_in_trash'    => sprintf( __('%s not found in trash', 'wp-ns-podcast'), $plural),
            'parent'                => sprintf( __('Parent %s', 'wp-ns-podcast'), $singular)
        );     
        return $labels;
    }
}

