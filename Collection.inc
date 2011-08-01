<?php

// $Id$

/**
 * @file
 *
 */
class Collection {
  const mods = 'http://www.loc.gov/standards/mods/v3';
  const xlink = 'http://www.w3.org/1999/xlink';
  const xsi = 'http://www.w3.org/2001/XMLSchema-instance';
  const xmlns = 'http://www.w3.org/2000/xmlns/';
  /**
   * The pid of this Collection.
   * 
   * @var string
   */
  protected $pid;
  /**
   * This collections fedora object.
   * @var Fedora_Item
   */
  protected $item;
  /**
   * FOXML repersention of the Fedora Object identified by $pid.
   *
   * Access through the function AjaxHandler::getFoxmlDocument().
   * Do not access directly as it may not exist.
   *
   * @var DOMDocument
   */
  protected $foxml;
  /**
   * XPath for the FOXML document identified by $foxml.
   *
   * Access through the function AjaxHandler::getFoxmlXPath().
   * Do not directly as it may not exist.
   *
   * @var DOMDocument
   */
  protected $xpath;
  /**
   *
   * @var <type>
   */
  protected $metadata;
  /**
   *
   * @var <type>
   */
  protected $metadataPath;
  protected $solr;

  /**
   *
   * @param string $pid
   */
  public function __construct($pid) {
    module_load_include('inc', 'fedora_repository', 'api/fedora_item');
    $this->pid = $pid;
    $this->item = new Fedora_Item($pid);
  }

  /**
   *
   * @return array
   */
  public function getMembers() {
    global $base_url;
    $start = isset($_REQUEST['start']) ? $_REQUEST['start'] : 0;
    $limit = isset($_REQUEST['limit']) ? $_REQUEST['limit'] : 7;
    $filter = isset($_REQUEST['filter']) ? $_REQUEST['filter'] : 'all';
    $sort = isset($_REQUEST['sort']) ? $_REQUEST['sort'] : 'alpha-asc';
    $search_text = isset($_REQUEST['search_text']) ? $_REQUEST['search_text'] : '';
    switch ($filter) {
      case 'collections':
        $data = $this->getMemberCollections();
        list($data, $count) = $this->refineSearch($data, $start, $limit, $sort, $search_text);
        $this->populateResults($data);
        break;
      case 'objects':
        $data = $this->getMemberObjects();
        list($data, $count) = $this->refineSearch($data, $start, $limit, $sort, $search_text);
        $this->populateResults($data);
        break;
      case 'all':
      default:
        $data = $this->getAllMembers();
        list($data, $count) = $this->refineSearch($data, $start, $limit, $sort, $search_text);
        $this->populateResults($data);
        break;
    }
    return array($data, $count);
  }

  /**
   *
   * @return array
   */
  private function getAllMembers() {
    $query = 'select $object $title $model $parent_model $created from <#ri>
                             where ($object <info:fedora/fedora-system:def/model#label> $title
                             and $object <fedora-model:hasModel> $model
                             and $object <fedora-model:createdDate> $created
                             and $model <fedora-model:hasModel> $parent_model
                             and $object <fedora-model:state> <info:fedora/fedora-system:def/model#Active>
                             and ($object <fedora-rels-ext:isMemberOfCollection> <info:fedora/' . $this->pid . '>
                             or $object <fedora-rels-ext:isMemberOf> <info:fedora/' . $this->pid . '>))
                             minus $model <mulgara:is> <info:fedora/fedora-system:FedoraObject-3.0>  
                             minus $parent_model <mulgara:is> <info:fedora/fedora-system:FedoraObject-3.0>
                             order by $title';
    return $this->query($query);
  }

  /**
   *
   * @return array
   */
  private function getMemberObjects() {
    $query = 'select $object $title $model $parent_model $created from <#ri>
                             where ($object <info:fedora/fedora-system:def/model#label> $title
                             and $object <fedora-model:createdDate> $created
                             and $object <fedora-model:hasModel> $model
                             and $model <fedora-model:hasModel> $parent_model
                             and $parent_model <mulgara:is> <info:fedora/fedora-system:ContentModel-3.0>
                             and $object <fedora-model:state> <info:fedora/fedora-system:def/model#Active>
                             and ($object <fedora-rels-ext:isMemberOfCollection> <info:fedora/' . $this->pid . '>
                             or $object <fedora-rels-ext:isMemberOf> <info:fedora/' . $this->pid . '>))
                             minus $model <mulgara:is> <info:fedora/fedora-system:FedoraObject-3.0>  
                             minus $parent_model <mulgara:is> <info:fedora/fedora-system:FedoraObject-3.0>
                             order by $title';
    return $this->query($query);
  }

  /**
   *
   * @return array
   */
  private function getMemberCollections() {
    $query = 'select $object $title $model $parent_model $created from <#ri>
                             where ($object <info:fedora/fedora-system:def/model#label> $title
                             and $object <fedora-model:createdDate> $created
                             and $object <fedora-model:hasModel> $model
                             and $model <fedora-model:hasModel> $parent_model
                             and $parent_model <mulgara:is> <info:fedora/islandora:collectionCModel>
                             and $object <fedora-model:state> <info:fedora/fedora-system:def/model#Active>
                             and ($object <fedora-rels-ext:isMemberOfCollection> <info:fedora/' . $this->pid . '>
                             or $object <fedora-rels-ext:isMemberOf> <info:fedora/' . $this->pid . '>))
                             minus $model <mulgara:is> <info:fedora/fedora-system:FedoraObject-3.0>  
                             minus $parent_model <mulgara:is> <info:fedora/fedora-system:FedoraObject-3.0>
                             order by $title';
    return $this->query($query);
  }

  private function query($query) {
    global $base_url;
    module_load_include('inc', 'fedora_repository', 'CollectionClass');
    $collection_class = new CollectionClass();
    $results = $collection_class->getRelatedObjects($this->pid, 1000000, NULL, $query);
    if ($results != ' ') {
      $doc = new DOMDocument();
      $doc->loadXML(trim($results));
      $path = new DOMXPath($doc);
      $path->registerNamespace('sparql', 'http://www.w3.org/2001/sw/DataAccess/rf1/result');
      $query_results = $path->query('//sparql:result');
      if ($query_results->length > 0) {
        $count = $query_results->length;
        $returns = array();
        for ($i = 0; $i < $count; $i++) {
          $result = $query_results->item($i);
          $pid = substr($path->query('sparql:object/@uri', $result)->item(0)->value, 12); // 12 characteres in "info:fedora/"
          $label = $path->query('sparql:title', $result)->item(0)->textContent;
          $created = $path->query('sparql:created', $result)->item(0)->textContent;
          $parent_model = substr($path->query('sparql:parent_model/@uri', $result)->item(0)->value, 12);
          /**
           * 'link' => $base_url . '/viewer/' . 'coccc:1675',
            'label' => 'Some Colorado College Object',
            'description' => 'The Colorado College Nugget, formerly the Pikes Peak Nugget from 1900-1941, was issued until 2006-2007. The 1969-1970 Nugget was issued as loose photosheets contained in a box and named the The Colorado College Nugget, formerly the Pikes Peak Nugget from 1900-1941, was issued until 2006-2007. The 1969-1970 Nugget was issued as loose photosheets contained in a box and named the The Colorado College Nugget, formerly the Pikes Peak Nugget from 1900-1941, was issued until 2006-2007. The 1969-1970 Nugget was issued as loose photosheets contained in a box and named the',
            'owner' => 'fedoraAdmin',
            'created' => '2011-06-17T15:15:57.214Z',
            'modified' => '2011-07-15T19:08:16.008Z',
            'tn' => '/' . $module_path . '/images/collection.png',
           */
          $link = $base_url . '/viewer/' . $pid;
          //$link = "$base_url/fedora/repository/$pid";
          $returns[] = array('link' => $link, 'label' => $label, 'parent_model' => $parent_model, 'created' => $created);
        }
        return $returns;
      }
    }
    return array();
  }

  /**
   * 
   */
  private function isCollection(&$fedora_item) {
    $model_pid = $this->getModelPid($fedora_item);
    $model = new Fedora_Item($model_pid);
    $parent_model_pid = $this->getModelPid($model);
    return $parent_model_pid == 'islandora:collectionCModel';
  }

  private function getModelPid(&$fedora_item) {
    $rels_ext = $fedora_item->get_datastream_dissemination('RELS-EXT');
    $doc = new DOMDocument();
    $doc->loadXML($rels_ext);
    $xpath = new DOMXPath($doc);
    $xpath->registerNamespace('rdf', "http://www.w3.org/1999/02/22-rdf-syntax-ns#");
    $xpath->registerNamespace('fedora-model', "info:fedora/fedora-system:def/model#");
    $results = $xpath->query('/rdf:RDF/rdf:Description/fedora-model:hasModel/@rdf:resource');
    return substr($results->item(0)->value, 12); // 12 characteres in "info:fedora/"
  }

  /**
   *
   * @return array
   */
  private function getTitleAndDescriptionFromMods(&$fedora_item) {
    $mods = $fedora_item->get_datastream_dissemination('MODS');
    if ($mods && is_string($mods) && trim($mods) != '') {
      $doc = new DOMDocument();
      $doc->loadXML($mods);
      $root = &$doc->documentElement;
      $root->setAttributeNS(self::xmlns, 'xmlns', self::mods);
      $root->setAttributeNS(self::xmlns, 'xmlns:mods', self::mods);
      $root->setAttributeNS(self::xmlns, 'xmlns:xlink', self::xlink);
      $root->setAttributeNS(self::xmlns, 'xmlns:xsi', self::xsi);
      $xml = $doc->saveXML();
      $doc->loadXML($xml); // Sucha a terrible api...
      $xpath = new DOMXPath($doc);
      $xpath->registerNamespace('mods', 'http://www.loc.gov/standards/mods/v3');
      $title = '';
      $description = '';
      $result = $xpath->query('/mods:mods/mods:titleInfo[not(@type)]/mods:title');
      if ($result && $result->length > 0) {
        $title = $result->item(0)->textContent;
        $result = $xpath->query("/mods:mods/mods:titleInfo[@type='alternative']/mods:title");
        if ($result && $result->length > 0) {
          $title = "$title: {$result->item(0)->textContent}";
        }
      }
      $result = $xpath->query('/mods:mods/mods:abstract');
      if ($result && $result->length > 0) {
        $description = $result->item(0)->textContent;
      }
      return array($title, $description);
    }
    return FALSE;
  }

  private function getTitleAndDescriptionFromDC(&$fedora_item) {
    $dc = $fedora_item->get_datastream_dissemination('DC');
    if ($dc && is_string($dc) && trim($dc) != '') {
      $doc = new DOMDocument();
      $doc->loadXML($dc);
      $xpath = new DOMXPath($doc);
      $title = '';
      $description = '';
      $result = $xpath->query('//dc:title');
      if ($result && $result->length > 0) {
        $title = $result->item(0)->textContent;
      }
      $result = $xpath->query('//dc:description');
      if ($result && $result->length > 0) {
        $description = $result->item(0)->textContent;
      }
      return array($title, $description);
    }
    return FALSE;
  }

  private function refineSearch($data, $offset, $limit, $sort, $search_text) {
    if (isset($search_text) && trim($search_text) != '') {
      $data = array_filter($data, function ($item) use ($search_text) {
            return preg_match("/^.*{$search_text}.*/i", $item['title']) != 0;
          });
      $this->sort($data, $sort);
      $count = count($data);
      $data = array_slice($data, $offset, $limit);
      return array($data, $count);
    }
    else {
      $this->sort($data, $sort);
      $count = count($data);
      $data = array_slice($data, $offset, $limit);
      return array($data, $count);
    }
  }

  private function sort(array &$data, $sort) {
    switch ($sort) {
      case 'alpha-desc':
        usort($data, array($this, 'alpha_desc_sort'));
        break;
      case 'date-newest':
        usort($data, array($this, 'date_newest_sort'));
        break;
      case 'date-oldest':
        usort($data, array($this, 'date_oldest_sort'));
        break;
      case 'alpha-asc':
      default:
        usort($data, array($this, 'alpha_asc_sort'));
        break;
    }
  }

  private function alpha_asc_sort($a, $b) {
    return strcmp($a['title'], $b['title']);
  }

  private function alpha_desc_sort($a, $b) {
    return strcmp($b['title'], $a['title']);
  }

  private function date_newest_sort($a, $b) {
    $a = strtotime($a['created']);
    $b = strtotime($b['created']);
    if ($a == $b) {
      return 0;
    }
    return ($a > $b) ? -1 : 1;
  }

  private function date_oldest_sort($a, $b) {
    $a = strtotime($a['created']);
    $b = strtotime($b['created']);
    if ($a == $b) {
      return 0;
    }
    return ($a < $b) ? -1 : 1;
  }

  private function count($query) {
    module_load_include('inc', 'fedora_repository', 'CollectionClass');
    $collection_class = new CollectionClass();
    $results = $collection_class->getRelatedObjects($this->pid, $limit, $offset, $query);
    if ($results != ' ') {
      $doc = new DOMDocument();
      $doc->loadXML(trim($results));
      $path = new DOMXPath($doc);
      $path->registerNamespace('sparql', 'http://www.w3.org/2001/sw/DataAccess/rf1/result');
      return $path->evaluate('count(//sparql:result)');
    }
    return 0;
  }

  private function populateResults(&$results) {
    global $base_url;
    $module_path = drupal_get_path('module', 'content_model_viewer');
    $image_path = '/' . $module_path . '/images';
    foreach ($results as &$result) {
      $pid = $result['pid'];
      $parent_model = $result['parent_model'];
      unset($result['parent_model']); // Don't need to return this info to javascript...
      $item = new Fedora_Item($pid);
      $result['description'] = "Default Description, Check this object's metadata and ensure a description is present.";
      if ($info = $this->getTitleAndDescriptionFromMods($item)) {
        list($mods_title, $mods_description) = $info;
        if($mods_description != '') {
          $result['description'] = $mods_description;
        }
      }
      else if ($info = $this->getTitleAndDescriptionFromDC($item)) {
        list($dc_title, $dc_description) = $info;
        $result['description'] = $dc_description != '' ? $dc_description : $description;
        if($dc_description != '') {
          $result['description'] = $dc_description;
        }
      }
      $result['link'] = "$base_url/fedora/repository/$pid";
      if (isset($item->datastreams['TN'])) {
        $result['tn'] = "$base_url/fedora/repository/$pid/TN";
      }
      else {
        $result['tn'] = $image_path . '/object.png';
      }
      if ($parent_model == 'islandora:collectionCModel') {
        $result['tn'] = $image_path . '/collection.png';
      }
    }
  }

  private function getSolr() {
    if (empty($this->solr)) {
      module_load_include('php', 'islandora_solr_search', 'Solr/Service');
      $host = variable_get('islandora_solr_search_block_host', 'localhost');
      $port = variable_get('islandora_solr_search_block_port', '8080');
      $app_name = variable_get('islandora_solr_search_block_app_name', 'solr');
      $this->solr = new Apache_Solr_Service($host, $port, '/' . $app_name . '/');
    }
    return $this->solr;
  }

  public function querySolr($query) {
    $additional_params = array(
      'facet' => 'false',
      'qt' => variable_get("islandora_solr_search_block_request_handler", t("standard"))
    );
    $solr = $this->getSolr();
    $query = $string = trim(strtolower($query));
    $query = $solr->escape($query);
    try {
      $results = $solr->search($query, 0, 10, $additional_params);
    } catch (Exception $e) {
      drupal_set_message(t('error searching ') . $e->getMessage());
    }
    if (empty($results)) {
      drupal_set_message(t('Error searching solr index. Is the solr search block configured properly?'), 'error');
      return ' ';
    }
    var_dump($results);
  }

  /**
   * Get the label of this collection.
   * 
   * @return string
   */
  public function getLabel() {
    return $this->item->objectProfile->objLabel;
  }

  /**
   * Get the description of this collection.
   *
   * @return string
   */
  public function getDescription() {
    if ($this->hasMetadata()) {
      $xpath = $this->getMetadataXPath();
      $results = $xpath->query('/mods:mods/mods:abstract');
      if ($results && $results->length > 0) {
        return $results->item(0)->textContent;
      }
    }
    return NULL;
  }

  /**
   * Returns true if this collection has metadata.
   *
   * @return boolean
   */
  public function hasMetadata() {
    if (isset($this->metadata)) {
      return true;
    }
    return isset($this->item->datastreams['MODS']);
  }

  /**
   *
   * @return DOMDocument
   */
  private function &getMetadata() {
    if (empty($this->metadata)) {
      $mods = $this->item->get_datastream_dissemination('MODS');
      $this->metadata = new DOMDocument();
      $this->metadata->loadXML($mods);
    }
    return $this->metadata;
  }

  /**
   * 
   */
  private function getMetadataXPath() {
    if (empty($this->metadataPath)) {
      $doc = &$this->getMetadata();
      $this->metadataPath = new DOMXPath($doc);
      $this->registerNamespaces($doc->saveXML(), $this->metadataPath);
      $this->metadataPath->registerNamespace('mods', 'http://www.loc.gov/mods/v3');
    }
    return $this->metadataPath;
  }

  /**
   * Gets this objects FOXML repersentation, as a DOMDocument.
   *
   * Creates a new DOMDocument object from this objects exported FOXML, storing it
   * as a member if it doesn't already exist.
   *
   * @return DOMDocument
   */
  private function getFoxmlDocument() {
    if (empty($this->foxml)) {
      $foxml = $this->item->export_as_foxml();
      $this->foxml = new DOMDocument();
      $this->foxml->loadXML($foxml);
      return $this->foxml;
    }
    else {
      return $this->foxml;
    }
  }

  /**
   * Get the XPath for this object FOXML repersentation.
   *
   * Creates a new DOMXPath object, storing it as a member if it doesn't already exist.
   *
   * @return DOMXPath
   *   XPath for this object FOXML repersentation.
   */
  private function getFoxmlXPath() {
    if (empty($this->xpath)) {
      $foxml = $this->getFoxmlDocument();
      $this->xpath = new DOMXPath($foxml);
      $this->registerNamespaces($foxml->saveXML(), $this->xpath);
      return $this->xpath;
    }
    else {
      return $this->xpath;
    }
  }

  /**
   * Registers all namespaces found in the foxml document.
   *
   * @param string $foxml
   *   XML string of the exported fedora objects foxml.
   */
  private function registerNamespaces($doc, &$path) {
    $simple = new SimpleXMLElement($doc);
    $names = $simple->getNamespaces(TRUE);
    foreach ($names as $prefix => $uri) {
      $path->registerNamespace($prefix, $uri);
    }
  }

}