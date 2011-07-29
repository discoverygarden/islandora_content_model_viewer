<?php

// $Id$

/**
 * @file
 *
 */
module_load_include('inc', 'content_model_viewer', 'AbstractViewer');

/**
 * Default viewer for a datastream if none is defined this will be used as a backup.
 * 
 * Creates an iframe and has fedora attempt to render the resource.
 */
class FlexPaperViewer extends AbstractViewer {

  /**
   * Include the required javascript.
   */
  public function addRequiredResources() {
    global $base_url;
    $module_path = drupal_get_path('module', 'content_model_viewer');
    $js_path = $module_path . '/js';
    drupal_add_js("sites/all/libraries/flexpaper/js/flexpaper_flash.js");
    drupal_add_js("sites/all/libraries/swfobject/swfobject.js");
    drupal_add_js($js_path . '/Flexpaper.js');
  }

  /**
   * Renders the html needed for the viewer.
   * 
   * @param string $pid
   * @param string $dsid
   * 
   * @return string
   */
  public function render($pid, $dsid) {
    return '<div id="playerFlexPaper"></div>';
  }

}