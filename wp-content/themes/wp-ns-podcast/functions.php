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
    add_action ('after_setup_theme', 'ns_theme_setup');
}