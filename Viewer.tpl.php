<div id="content-model-viewer">
  <h1><?php print $label; ?></h1>
  <br/>
  <div style="display:none" id="properties">
    <div id="pid"><?php print $pid; ?></div>
    <div id="dsid"><?php print $dsid; ?></div>
    <div id="width"><?php print $width; ?></div>
    <div id="height"><?php print $height; ?></div>
    <div id="view_function"><?php print $view_function; ?></div>
    <div id="base_url"><?php print $base_url; ?></div>
    <div id="object_overview_url"><?php print check_url(url($paths['object']['overview'])); ?></div>
    <div id="object_properties_url"><?php print check_url(url($paths['object']['properties'])); ?></div>
    <div id="object_datastreams_url"><?php print check_url(url($paths['object']['datastreams'])); ?></div>
    <div id="object_members_url"><?php print check_url(url($paths['object']['members'])); ?></div>
    <div id="object_purge_url"><?php print check_url(url($paths['object']['purge'])); ?></div>
    <div id="datastream_add_url"><?php print check_url(url($paths['datastream']['add'])); ?></div>
    <div id="datastream_purge_url"><?php print check_url(url($paths['datastream']['purge'])); ?></div>
    <div id="datastream_download_url"><?php print check_url(url($paths['datastream']['download'])); ?></div>
    <div id="datastream_view_url"><?php print check_url(url($paths['datastream']['view'])); ?></div>
    <div id="datastream_properties_url"><?php print check_url(url($paths['datastream']['properties'])); ?></div>
    <div id="object_content_models"><?php print $models; ?></div>
  </div>
  <div style="display:none" id="datastream-download">
    <form id="datastream-download-form" method="GET" action="">
      <input type="submit">Download</input>
    </form>
  </div>
  <div style="display:none" id="datastream-edit">
    <form id="datastream-edit-form" method="POST" action="edit">
      <input type="hidden" name="dsid"/>
      <input type="hidden" name="action"/>
      <input type="submit">Download</input>
    </form>
  </div>
</div>