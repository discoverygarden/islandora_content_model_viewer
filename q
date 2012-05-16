commit 3d9ac8c782f54b279b27c914a0d73fae4b485fb9
Merge: eff252c 34bf55b
Author: islandora <islandora@Islandora.dgi>
Date:   Fri May 11 09:38:58 2012 -0300

    Merge branch 'purge' of github.com:discoverygarden/islandora_content_model_viewer into purge

commit 34bf55b85d77700a64df320b8803e8f1bc5f9a03
Author: David John Evans <david@djevans.info>
Date:   Fri May 11 13:36:50 2012 +0100

    Corrected XPath in RELS-INT call for thumbnails

commit 703eb47c4d19506267dccba8f9688bcce23d496c
Author: David John Evans <david@djevans.info>
Date:   Tue May 8 12:34:30 2012 +0100

    Check for datastream state set to Active in getViewDownloadPermissions()

commit eff252c11d1d09381c3d7c5d80da9c9056bf99df
Merge: 7d72bbb 5bc64ea
Author: islandora <islandora@Islandora.dgi>
Date:   Sat May 5 17:54:23 2012 -0300

    Merge branch 'purge' of github.com:discoverygarden/islandora_content_model_viewer into purge

commit 5bc64ea2eb4710f8e8c8286c43e9cc10da89af65
Author: David John Evans <david@djevans.info>
Date:   Sat May 5 21:53:24 2012 +0100

    Allowed Deleted datastreams in datagrid validation function

commit 7d72bbb85604a33158b335c7e1d275b607b0f155
Merge: 239b169 3167978
Author: islandora <islandora@Islandora.dgi>
Date:   Sat May 5 17:36:57 2012 -0300

    Merge branch 'purge' of github.com:discoverygarden/islandora_content_model_viewer into purge

commit 3167978b43138beef867c5411ada1c581f873daf
Author: David John Evans <david@djevans.info>
Date:   Sat May 5 21:24:23 2012 +0100

    Improve readability of purge datastream test

commit 42fb9360096e514b52aa3b10fdfc16a2aca157ff
Author: David John Evans <david@djevans.info>
Date:   Sat May 5 21:18:52 2012 +0100

    Cleaned up handler logic

commit 7e86bd58cbd1615c9ddc1481c54a7767c519bc6a
Author: David John Evans <david@djevans.info>
Date:   Sat May 5 17:39:34 2012 +0100

    Add beforeedit handler to datastream grid panel

commit 86e23b342fa94ec638c6994a05a052105b149c32
Author: David John Evans <david@djevans.info>
Date:   Sat May 5 00:01:28 2012 +0100

    Add Deleted as a state option for datastreams in Manage tab; disable purge object button depending on permissions

commit 88f37fe070048f6d927a3fac9dbbb641e264e617
Author: David John Evans <david@djevans.info>
Date:   Fri May 4 23:57:17 2012 +0100

    Pass purge object permission status into JS Drupal.settings

commit 779cededb105613e4b00c1640f394e7c470f29d6
Author: David John Evans <david@djevans.info>
Date:   Fri May 4 23:55:31 2012 +0100

    Prevent changing the state of protected (metadata) datastreams to Inactive or Deleted

commit 239b16956c918dcd4c3bf7bafb8fea47951b00e5
Merge: ea1407b d0abb6a
Author: islandora <islandora@Islandora.dgi>
Date:   Thu May 3 19:03:53 2012 -0300

    Merge branch 'purge' of github.com:discoverygarden/islandora_content_model_viewer into purge

commit d0abb6a2ad82b1d2da8d94761b70639d931004a1
Author: David John Evans <david@djevans.info>
Date:   Thu May 3 22:55:53 2012 +0100

    Add purge attribute to datastream information read as JSON

commit ea1407baa655de31a2c0f9d91ad233cc489432ce
Merge: 0e4a045 4a9e89b
Author: David John Evans <david@djevans.info>
Date:   Fri Apr 27 07:10:59 2012 -0700

    Merge pull request #2 from discoverygarden/purge
    
    Purge

commit 0e4a04526ebbbf89711814998bad5a118eeb8764
Merge: 74be93c 2e6df1b
Author: Jonathan Green <jonathan@discoverygarden.ca>
Date:   Fri Apr 27 05:01:05 2012 -0700

    Merge pull request #1 from discoverygarden/rels-int
    
    Fixed datastream check in derived-view lookup function

commit 4a9e89b036b39a0eb645c50d8555ab6562ebc531
Author: David John Evans <david@djevans.info>
Date:   Thu Apr 19 23:26:13 2012 +0100

    Redirect to fedora/repository after purging an object

commit 8e83b004fce250255515c29f599d9e3e18247360
Author: David John Evans <david@djevans.info>
Date:   Thu Apr 19 23:12:24 2012 +0100

    Corrected XACML datastream IDs

commit 8813bc225f0806fd6e2e655581a9da41eb981865
Author: David John Evans <david@djevans.info>
Date:   Thu Apr 19 22:48:09 2012 +0100

    Prepend Drupal.settings.basePath to XACML URL

commit f05c168a926e26e8d29aec4b2d759ecc0f145679
Author: David John Evans <david@djevans.info>
Date:   Thu Apr 19 22:31:50 2012 +0100

    Syntax error fix

commit b417d7f9adec96a2421a4733108a7fd825f3e2a5
Author: David John Evans <david@djevans.info>
Date:   Thu Apr 19 22:26:33 2012 +0100

    Open XACML Editor in the same window

commit 4704ecc130284f768e158a2f5e0d8386124b41e8
Author: David John Evans <david@djevans.info>
Date:   Thu Apr 19 22:26:06 2012 +0100

    Read content model information in to properties

commit d098e5feac6554d3cabb4b0b435d928cf183a045
Author: David John Evans <david@djevans.info>
Date:   Thu Apr 19 22:03:56 2012 +0100

    Print model info in div#properties

commit 8b8fded57845e1196d16e4a0a67b426e4beebd5d
Author: David John Evans <david@djevans.info>
Date:   Thu Apr 19 22:01:26 2012 +0100

    Added models to theming variables

commit e6c8b6a62a31dc917c1d856bbbf227f84c129011
Author: David John Evans <david@djevans.info>
Date:   Thu Apr 19 12:56:56 2012 +0100

    Improved status messages

commit 521aaee2506731aa228bf8ad46ad1290b85a813d
Author: David John Evans <david@djevans.info>
Date:   Thu Apr 19 11:12:45 2012 +0100

    Experimental handler for Purge Object button

commit 2e6df1b1e62faa7d590d5a1dca3f41cb4a975149
Author: David John Evans <david@djevans.info>
Date:   Thu Apr 12 21:43:21 2012 +0100

    Fixed datastream check in derived-view lookup function

commit 74be93c9448911e84270d6f6ec7dd9f42874e01d
Merge: 00db4bd a2238ab
Author: Ben Woodhead <bwoodhead@upei.ca>
Date:   Mon Dec 5 08:27:44 2011 -0800

    Merge pull request #2 from nigelgbanks/6.x
    
    Added the ability to set the size of the viewer from a config panel in t...

commit a2238ab3d6932bde68424a5e658b711b29372b22
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Dec 5 12:22:19 2011 -0400

    Added the ability to set the size of the viewer from a config panel in the admin section.

commit 00db4bdb5cbca9ff5227f37cb7db02e9ca9d64c6
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Dec 5 11:39:34 2011 -0400

    Removed use of symlink for windows users.

commit 3db2f40af8fc22ac06709da50e2edde244fd6558
Merge: 72ed223 c983e6e
Author: Ben Woodhead <bwoodhead@upei.ca>
Date:   Fri Nov 18 12:36:18 2011 -0800

    Merge pull request #1 from adam-vessey/6.x
    
    Make it work with datastream calls (those deferred to Islandora)

commit c983e6ea605811ab4204e607e3da0feab7bdea48
Author: Adam <adam.vessey@gmail.com>
Date:   Fri Nov 18 16:14:58 2011 -0400

    Make it work with datastream calls (those deferred to Islandora)

commit 72ed223201634fa50f3649245f4e007557fd8587
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Nov 14 12:37:05 2011 -0400

    Fixed flexpaper viewer incorrect url.

commit 31b02b3f7b0eeca8ca69c6a413afe6d38607a8d5
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Nov 14 08:28:05 2011 -0400

    Added a text viewer.

commit 4f720830e5cab72cd5c47e3dabd099879f51ebae
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Nov 14 08:27:53 2011 -0400

    Added bread crumbs

commit a4b6fee6124a387217d52af3f5be3d08441e6354
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Oct 26 12:33:28 2011 +0100

    Made the Content Model Viewer opt-in.

commit ed29bf4929b1f107a976f422b7c39b8a0c93312e
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Oct 24 13:24:13 2011 +0100

    Fixed collection icon urls.

commit 6518c6ee931b10b26eaff44b68fde4f8568f5552
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Oct 24 13:14:31 2011 +0100

    Fixed collection icon urls.

commit 9f05e99658e22a25d07cbfc3965a1f8d2c51f6d0
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Oct 24 13:10:08 2011 +0100

    ooops

commit 27872defbb0aa2c15363ac01c7dd5bb1d6b76dc8
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Oct 24 13:06:43 2011 +0100

    More url fixes.

commit 9beb6eda2d65d8f6d22181157bc256ae032f9418
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Oct 24 13:03:17 2011 +0100

    Fix for thumbnails not rendering for, sites with multisite style urls.

commit b56af391b77d09b2c2e05e96f79b08cbc5ba41f5
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Fri Oct 14 14:28:10 2011 +0200

    Fix for missing images in basic image viewer.

commit 657a5afa60012b0cccc94343a79a38eeeb32e22f
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Thu Oct 13 21:50:09 2011 +0200

    Fix for non viewable swf files in the flexpaper viewer, cause be a bug in islandora.

commit c5fbbe5eee73ad84f926e71362a163c639d61570
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Thu Oct 13 21:18:11 2011 +0200

    Fix for database install errors.

commit ae86b18b8e72b21532504befdcb4c462b904bfc1
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Thu Oct 13 19:18:05 2011 +0200

    removed test.

commit 4fc63cb5ae92e7b2da8b2135009624099dad8b63
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Thu Oct 13 19:16:09 2011 +0200

    test

commit 049103199184095b21b8df96f11b7da10f5331d8
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Thu Oct 13 18:48:53 2011 +0200

    Fix for uneeded table clearing.

commit 93ca71263a96c3a1abbf3e2afdeb5557fa5e813b
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Thu Oct 13 18:39:00 2011 +0200

    Fix missing {} in sql query.

commit 315a7a095ae9f7c84b8d763ded802813c250ccfa
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Thu Oct 13 18:22:55 2011 +0200

    Added application/shockwave-flash to the list of mimetypes supported by flexpaper.

commit 7bbecf27321fa60da33de5c6128bce4bb19d7b18
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Thu Oct 13 18:16:53 2011 +0200

    Support for an older version of islandora.

commit 126c4743c48d1e35180291e28ef2bc5cdb40ecab
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Oct 11 18:07:45 2011 +0200

    Cosmetic fixes

commit ede2d9306e44caeb7aa50cc97a620011d6dc58d2
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Oct 11 17:28:18 2011 +0200

    Fixed non scrolling overview panel.

commit 996aaea53bd1f79a017068bd73665b8ee098d2d8
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Oct 11 01:11:45 2011 +0200

    Fix for viewing datastreams no listed but viewable by redirect.

commit 40b8a9a7412183ba146847dfa88892643b1bb997
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Oct 11 01:03:38 2011 +0200

    Revert last commit

commit b3246de9fe8b8089b7311b165cd98029805c9301
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Oct 11 00:47:55 2011 +0200

    Added missing str replaces.

commit f3e8d93957d5cbdac4fcdd6987feffa6d0c5c346
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Oct 11 00:14:29 2011 +0200

    Fix for capitalization bug.

commit 51188a1e487404a9bd4c8baeff26dd4e2f6c9e63
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Oct 10 12:11:55 2011 +0200

    Hide the manage panel for users without permissions.

commit 706cb3010934bac2b53bc4103df4346ec8860044
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Oct 10 05:09:31 2011 +0200

    Fix for missing file.

commit 29d56b1a525a2472a12b58afe6299f9deeb0e20b
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Oct 10 05:08:33 2011 +0200

    Fix for missing file.

commit f2dd63418c8f846a0975d5635cd7746dde93102e
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Oct 10 04:56:44 2011 +0200

    Now overwrites islandoras menus to provide a nicer interface.

commit a6326b0b661d918fed93dedae0b1cde866c0cb51
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Sun Oct 9 18:07:04 2011 +0200

    Now reset the the Drupal.settings properties on every Overview panel load.

commit d72faed5c7e6e83d947103366d2d421a7fe36634
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Fri Oct 7 20:01:04 2011 +0200

    Check the rels-int for thumbnails.

commit 36498dad5cdaa0f25a0ad21c03c5a379aa2b5f08
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Fri Oct 7 19:47:24 2011 +0200

    Datastreams now show proper mime-types

commit 6eec3229b7124cb1511be8e4d52a70baa8fc4541
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Fri Oct 7 19:21:43 2011 +0200

    Files panel for the overview now only shows if there are datastream, the views file panel always shows, couldn't find my way around a bug so that it would have the same behavoir as the overviewpanel, not a big deal at the moment but something to address later.

commit 1453424acffa6a7a1d4fa39639bd45591d5a54fa
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Fri Oct 7 11:46:57 2011 +0200

    Fix for undefined index warning.

commit 6ac1d7957a7259462b3d055bc2de091cbfbd9fc8
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Oct 5 15:46:35 2011 +0200

    It didn't look good on the demo site so hopefully this will be the last of the changes.

commit 36703d3d93a70add0b30ea9059688ef08b43b5fb
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Oct 5 15:20:07 2011 +0200

    Some more adjustments to make the collections render more nicely.

commit fdcabbc3ab51119aaef4f6e89ec55e6e6844feda
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Oct 5 14:06:58 2011 +0200

    Some cleanup for the viewer.

commit 06125339bf9b3f34c4acc115c356cd17f2373070
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Oct 5 13:50:38 2011 +0200

    Limited the collection panel to 5 items, and set a default size for each.

commit 5a3b57a5b4831b91fc43a37397b8831cd410630a
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Oct 5 13:41:13 2011 +0200

    First pass attempt to get a somewhat valid description for the object.

commit 7423dc1b5fcbdd3662532e2af50ed949d71750c4
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Oct 4 16:01:53 2011 +0200

    Fixed table prefixs.

commit 267d5ad740282f7ee2f994fc5e5f221bb4772d2e
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Oct 4 15:49:55 2011 +0200

    Fixes for dealing with table prefixes.

commit 254d4d1877ed0d0ec375cbc38fcc6f02cee13f93
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Oct 4 15:42:22 2011 +0200

    Potential fix for install woes.

commit cef03ae563272dc7d34b899e075895dc3e8d8246
Merge: 0d440c4 3d2dc62
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Oct 4 12:28:22 2011 +0200

    Merge branch '6.x' of github.com:nigelgbanks/content_model_viewer into 6.x

commit 0d440c416088792cf25332c19f9f32febabaa556
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Oct 4 12:27:34 2011 +0200

    Added additional information to an error message.

commit 3d2dc62cb0022ddbfaa452c3eb64d609d3cdccda
Merge: 1255891 6b54617
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Sep 28 16:14:07 2011 -0700

    Merge pull request #2 from adam-vessey/6.x
    
    Add missing dependency.

commit 6b54617107d1635b02246dde364cf92777557149
Author: Adam <adam.vessey@gmail.com>
Date:   Wed Sep 28 15:15:57 2011 -0300

    Add missing dependency.
    
    Encountered at line 798 of content_model_viewer.module, couldn't
    find the class 'IngestObjectMetadataForm', which is in
    'IngestObjectMetadataFrom.inc' in the module
    islandora_content_model_forms...  So, yeah.  Need it installed.

commit 12558910ccb430a8fe4c8c8f664ade610cfa7eae
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Sat Sep 24 22:38:53 2011 +0100

    Fixed the incorrect ordering of Date Created sorts on the collection panel.

commit de5fe98628b8b755bdbc7ee0881cd7367d781733
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Thu Sep 22 17:05:19 2011 +0100

    Changed the overview panel. So now we can execute a javascript function after rendering the data required.

commit e54c8ae4a2fcfebdc675485b8967ce32c9a72114
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Sep 21 17:12:13 2011 +0100

    Caught another case where the collection panel should be shown.

commit fa945c95f804214ad3a8bc924052cba20dd7daef
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Sep 19 16:25:44 2011 +0100

    Fixed mime type not being correctly identified for uploaded files.

commit 55c4dbf17630e3602ce4ce601979b682d672f9e2
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Sep 19 14:54:42 2011 +0100

    Ensured the theme preprocess function can be accessed.

commit 36771991fa1dd2e1bf9622afd7a7c7646c769071
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Fri Sep 16 17:02:37 2011 +0100

    Fix for queries where the parent model is 2 layers deep.

commit bf73a5fb11a22c9f533c91b756fb88bafd86713f
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Sep 14 18:26:02 2011 +0100

    Switched back to the basic for now.

commit e313fb6e03ed6ff15ebdd27e308de48d4eecfd30
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Sep 14 18:16:23 2011 +0100

    Opps

commit 21eab188a4463f2e2e0f564808ccfc65b449e5c2
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Sep 14 18:14:35 2011 +0100

    Test for Djatoka Viewer.

commit b29395f8c86ad96472ef63f8403c14c34a6423a8
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Sep 14 18:09:41 2011 +0100

    Created basic image viewer, fixed bug were non xml data was being incorrectly modified when changing the mime type, also fixed a bug where managed data was losing its mime type.

commit 10f14e15ffdc1e22c1f00e85a3c00113d26fb3d0
Merge: 5e0750f 92d318c
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Sep 14 16:47:06 2011 +0100

    Merge branch '6.x' of github.com:nigelgbanks/content_model_viewer into 6.x

commit 5e0750fb13fff01be5776a525fb44e882ecb4b2e
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Sep 14 16:30:28 2011 +0100

    Fix repeating elements in the collection panel.

commit 92d318c089146f59a827b43739e0090338091ece
Merge: ac9ae4c b3a4a3e
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Sun Sep 11 09:10:06 2011 -0700

    Merge pull request #1 from ppound/6.x-si
    
    updated the way we check if an object is a collection

commit b3a4a3e55bd213f0951d3880433c45566f9f4353
Author: ppound <paul.pound@gmail.com>
Date:   Sat Sep 10 13:55:35 2011 -0300

    updated the way we check if an object is a collection

commit ac9ae4ca4507298119c691ad69458c838ef5a646
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Fri Sep 9 17:45:10 2011 +0100

    Configured the viewer to allow file upload fields in the ingest form.

commit 84dd0721e0869a2e6737b60d083d171e2e51fd3f
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Thu Sep 8 13:38:20 2011 +0100

    Can now change the mime types of datastreams, and cleaned up the datastream grid a bit.

commit 5c386a74255685e0639e4e58aa412ce83711bc0d
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Thu Sep 8 13:32:43 2011 +0100

    Can now change the Label/State of a datastream.

commit 2a6d51c0ee7890eae9080f8b4adc5011332c320a
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Sep 7 22:56:40 2011 +0100

    Fixed the manage datastreams section of the viewer so that state/create are properly listed.

commit a32e2417fb76c14fa40eed076792569e17d517d6
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Sep 7 22:30:10 2011 +0100

    Fixed ahah issues, which we're being caused by behaviors not being reattached.

commit 2d53d432aa6a25d41eebd5097ae9aad14ba58e9c
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Sep 7 22:16:29 2011 +0100

    Partially fixed form issues, it is now rendering correctly, but AHAH still fails, and a submit is triggered.

commit 8dc1e9e906eaeadc6bd2e70b358e52c2e0c53699
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Sep 7 21:25:30 2011 +0100

    Made the XML viewer scrollable.

commit 3a632d7426f9a09f8a45049de6292ab36735299d
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Sep 7 21:14:35 2011 +0100

    Added a 'add to collection' button its partially working, objects are being created in the wrong namespace

commit 404fc52feb72c7199bfaafa0af621b34593ad9fa
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Sep 7 21:01:27 2011 +0100

    The Edit button now correctly links to the edit metadata form. Objects can edit there data.

commit 173d009d9e07f5c1d2efca156f70c7fa2c1b5461
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Sep 7 18:31:04 2011 +0100

    Fixed missing ']' in default setting, fixed the display of select boxes in the viewer.

commit 881973a95f36bbf4a159bc0a4ea35a5683eb50b0
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Sep 7 18:24:06 2011 +0100

    Added default setting to redirect viewing the PDF to SWF files.

commit fe9ac166a4681eb3b733bfee5956a804d16b4e52
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Sep 7 18:09:45 2011 +0100

    Cleaned up duplicate datastream/datastreamproperties classes so that only one exists.

commit 34db0d84aa20a0dbab1f32a0a258d4e96940b140
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Sep 7 18:02:53 2011 +0100

    Added Comments and cleaned up the code a bit.

commit 7788b0b53ca58d57d1b05feb4ee5bf8a97801960
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Sep 7 17:20:27 2011 +0100

    Fixed redirects for DSID rule types. RELS-INT types have yet to be properly tested.

commit 230805b42ba6c367582ce9d6dd935de1d882cc9e
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Fri Sep 2 17:05:58 2011 +0100

    Added settings for redirecting views to derived datastream types.

commit ddce5ea77700f353b1c62b72f5a0c63560511807
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Fri Sep 2 12:52:04 2011 +0100

    Fix for a warning.

commit 6c3a353993f247bec07f16a6d12d68f8bfd5c18b
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Fri Sep 2 12:44:49 2011 +0100

    Committing local changes to view on COH server.

commit b0a656e522ca46d19046161442890105f4ca9d86
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Thu Sep 1 13:13:54 2011 +0100

    Fixed XML files, not showing after viewering PDF's. Provided the ability to provided regex or exact.

commit 5d58c76494f7d184c54eb1093f541258e193737b
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Aug 31 17:46:09 2011 +0100

    A good start on making viewers plug'n play, also the xml viewer is now working.

commit 02df76e6df52baf05dc1316462661cad4f7e1ee1
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Aug 31 15:47:03 2011 +0100

    Settings now working for display, need to hook in viewers.

commit e20c0c900058066daa8113decbbe86df954a9db8
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Aug 30 14:16:23 2011 +0100

    Cleanup, removed unused functions.

commit 3947d4cdc837175c9d8bf27203709d0a41023063
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Aug 30 14:12:01 2011 +0100

    Fixed the setting of default properties so that it was model specific.

commit d15fd758c1ccfa3d69895ccdec5b8b1c24e519ee
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Aug 29 21:08:24 2011 +0100

    Finished the default settings screen.

commit 5fb298f17af3ea5b0cb03ef41c7f9ccd7f62121f
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Aug 29 13:43:21 2011 +0100

    Attempted to use orderable tables for creating datastream rules, but in the end this interface seems to complicated for users. I will seperate the idea's of creating rules to have restrictions based on the mime type and the pid to be different.

commit b4366cf2087ef5386e0dc20482b7103c5af3f969
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Fri Aug 26 14:03:05 2011 +0100

    Fixes for rules going into the wrong tables..

commit 5a3b8098fff6b26f5a7b22a6b910301749a4ab53
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Fri Aug 26 14:02:03 2011 +0100

    Custom settings page.

commit 43c427f06c8a185a6ddfbcfe3d47650f67350206
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Fri Aug 26 12:56:20 2011 +0100

    Cleaned up and working, now to add the theme for a specific models customization.

commit 7e7dc81876359f6e5c982867e57e5289043dac00
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Fri Aug 26 12:11:56 2011 +0100

    Don't want to lose changes before refactoring.

commit ffe9ef96d1dfe86b88b65c21bdad0ad4c0a08774
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Thu Aug 25 23:00:45 2011 +0100

    Can now delete settings.

commit 280b37d7e69fc6819af87a91170cb009fc32157a
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Thu Aug 25 19:34:52 2011 +0100

    Can now add new models.

commit f108594c98d804985d7d4c511b50a74a8799584e
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Thu Aug 25 16:50:07 2011 +0100

    Database for storing rules is set up with the proper constraints, such that rules for each model will be deleted when the model is removed.

commit 339ff62c547ea84efe85432614053a1168d29380
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Aug 23 17:05:56 2011 +0100

    More progress made on the settings screen.

commit 8ab14cd8be8cb914bfbcafa424cea8136767819a
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Aug 23 15:08:33 2011 +0100

    Sorting/filtering works now, a bit of css work is need to align the buttons.

commit 6e706152879606f4c2bb7e7bdc7ebb7a138f7ade
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Aug 23 14:19:28 2011 +0100

    Things are working but multi-sort doesn't really make sense in this context I'm going to remove it.

commit cb57d119da22d2f783c23e316a6d742b8ee94ac6
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Aug 23 14:04:49 2011 +0100

    Search filter is working but hard coded, The sort fields are also working but again hard coded.

commit c46296a846f3d51a1169135c7fff7639c21236d7
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Aug 23 10:50:35 2011 +0100

    Initial work on getting a setting page set up.

commit b1c2c1847fb88fd76c8e36cc562fe1ec98e5b767
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Aug 3 20:57:52 2011 -0300

    Removed uneeded file property for theme hook.

commit b4baa22d35b7fe8e8e40e2dcf7c1b1209a1f7581
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Aug 1 17:14:00 2011 -0300

    Fix so only SWF\'s can be viewed.

commit 250b190c8d33f1841377a74148ae35cef31d8717
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Aug 1 17:09:25 2011 -0300

    Fix disable for unviewable datastreams/downloads.

commit 3cbfb0849dcfe3585a969dd255ea1dd50445c304
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Aug 1 16:04:36 2011 -0300

    Fixed cases issue that prevents icons from appearing.

commit 3905cbb587a8f34b9a95cdc2340987281d60e0dd
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Aug 1 16:00:34 2011 -0300

    Changed the order of tab panels so that Collection appears first.

commit 1211dafbf2f884b134242f6f7ede61177c067338
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Aug 1 15:57:42 2011 -0300

    Fixed exception that only occured on the server.

commit d0af2fd901562d8785a098a90fa43443224b8fe0
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Aug 1 15:42:49 2011 -0300

    Fix viewer url.

commit c57960f03ee995d61277f58e5590205658c1c3a2
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Aug 1 14:35:01 2011 -0300

    Added Title Element to view. Hiding previous rendered islandora stuff.

commit 09e0f102a89e929c46c65cdc50824f1392f99950
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Aug 1 14:11:25 2011 -0300

    Adding hook for islandora to render the viewer

commit bbcfa974daefb37090ba8b56d25a46977760c2a4
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Aug 1 13:54:21 2011 -0300

    No longer show the collection tab if the object has no members.

commit fe8dae4994dcf6444d725f6c3b3479fe908def2b
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Aug 1 13:22:26 2011 -0300

    Implemented the default content model viewer.

commit 533a1421793b03885ecd2723a1271d20715fee2f
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Aug 1 11:44:34 2011 -0300

    Started to implement the Model systems.

commit a3a18c4b7437d88769477b9a08f6afb4abbee8cc
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Aug 1 10:41:38 2011 -0300

    Cleaned up the code a bit.

commit 83403468ca43dabb42facc52c298dfedd5a731d6
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Aug 1 09:17:08 2011 -0300

    Hooking up old Collection viewer.

commit 71d2e2cb94ff8865b04fecd46fd44f448d85b5b9
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Fri Jul 29 18:21:17 2011 -0300

    Server side work on control what datastreams are viewable.

commit 91f8f057e236a5667bf4899246fbc3f5d58ce4a4
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Fri Jul 29 17:51:09 2011 -0300

    Changed the page size of the store for collection members, other cosmetic changes.

commit f740e7c155e01d565cc1b80695d0269b9b10343a
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Fri Jul 29 17:44:58 2011 -0300

    Collections are now rendering correctly.

commit 9106d3e8940c124923a4e3d25ee6dcd5d9000b1f
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Fri Jul 29 15:49:17 2011 -0300

    Resized textfields to fit in the view.

commit 815e99703f56e5a4531f7a900597b91a701ef9a6
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Fri Jul 29 15:47:55 2011 -0300

    View/Download is working from the Overview and Viewer TabPanels.

commit e877c6e2b73d2817baffbb07c80aa5af187d8e08
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Fri Jul 29 15:24:45 2011 -0300

    No longer needed now that it is done inline on each of its respective panels.

commit 9ed2daf7c39eecadc0a682540f1dd759d44547b7
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Fri Jul 29 15:24:10 2011 -0300

    Seems there is a bug in defining a new class that contains docks, where in they don\'t get render if they belong to more than one panel, even though they are seperate instances. Now each Files panel is a seperate inline panel for viewer and overview panels. Ugly but it gets around this issue,.

commit 92c562195d71c97aa192d21105b8ae9ca12eb645
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Fri Jul 29 10:33:25 2011 -0300

    Can now launch viewer from the manage page, focus will automatically shift to the viewer panel.

commit 23bd62a2a37400fb28d85bef7409cde2399cd8be
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Fri Jul 29 10:01:13 2011 -0300

    Implemented viewer, for flexpaper and html will be load via ajax after which some defined javascript function associated with viewing will run to complete the rendering of the viewer.

commit 9dc0974e67f5d2448ed5fbd6692ae75b89cd1c9b
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Thu Jul 28 21:37:57 2011 -0300

    Initial stages of fleshing the viewer out.

commit 9a3dcf2ed7906d9f1cf7500b4c63e5db7898d3fb
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Thu Jul 28 18:19:39 2011 -0300

    Decreased width so it would look correctly on Smithsonian\'s site.

commit f85f9878ad76ec12c15bce102b1815643e5736ce
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Thu Jul 28 17:22:37 2011 -0300

    Fixed adding elements after adding fails.

commit a23729028f83a4dc8100382124c1b8328d15f77d
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Thu Jul 28 17:01:53 2011 -0300

    Fixed object properties load to show the loading message.

commit 2bc7418b13c9aa0b5fa0f118688c0c656ca96d84
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Thu Jul 28 11:04:49 2011 -0300

    Fixed downloads. and Removing datastreams.

commit 10d0bfbfb48edb7b7c16e20edc3b57b88b8a477a
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Jul 27 16:23:01 2011 -0300

    Add datastream implementation, need to hook into it server side now.

commit 8502488c43603fb6ab53f562a740f1afde824c79
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Jul 25 14:53:31 2011 -0300

    Started work on custom fileupload field that won't show the fake path nonsense.

commit 4b6008eaef8be38ac6532462f37095f1b106e5e3
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Jul 25 14:38:35 2011 -0300

    Begining work on uploading datastreams, and other buttons on the datastreams grid.

commit 14a3b3b5c2230a99cb73fde1fc7e9d2cdecbd8c7
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Jul 25 13:30:51 2011 -0300

    Removed uneed panel, grid now doesn't resize on page change.

commit d3549b29a67bb1fb27406f9550ca43f54ea85135
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Jul 25 13:24:08 2011 -0300

    Fixes changed to row edit.

commit 842379425e97757bf66217bce26a6a6f4856cd54
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Jul 25 13:01:50 2011 -0300

    Changing form properties works. 100%

commit 69da9f4aecf7e46698b97542dd2e75786707ed0d
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Jul 25 09:36:19 2011 -0300

    Set positions for elements and such.

commit b4ee565e913c1f79df216bc96bbfdc12d296a60e
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Jul 25 09:27:29 2011 -0300

    More work on the management panel, object properties specifically.

commit dfadd4f3ffacf6ae5c43c9ba25cb41fb945aa347
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Sat Jul 23 08:52:17 2011 -0300

    Fixed issues with datastream modification.

commit 381adc9f7a4fad2a056ab064adfeee83dcb0993c
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Fri Jul 22 10:21:09 2011 -0300

    Added images and implemented, the datastreams management panel.

commit 4a50cc9ceadb61dad425b21092d8f4162b7fb5b5
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Thu Jul 21 08:12:47 2011 -0300

    More implementation details.

commit 643bd7dafdc4270437ce81a7dbdead88a80a9911
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Jul 20 08:14:46 2011 -0300

    Added bases for viewers and the Javascript tabs. Tabs now show.

commit d00d9027c3cb32f2edbb2c5a065aed58ae2b1ef3
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Jul 20 06:56:11 2011 -0300

    Fleshing out some of the structure of the Content Model Classes.

commit 1ec5f18a35b412be7cdd5c903795c7672c1b2c8e
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Jul 20 06:07:45 2011 -0300

    Changed the name of DefaultModel to DefaultModelViewer

commit fc47fcbe011c05390dfa94a2219a5f956dade103
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Wed Jul 20 06:00:12 2011 -0300

    Some clean up and comments.

commit 799f97216bc0cd1ccd634cabb1a867a124f3923d
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Jul 19 17:40:08 2011 -0300

    Some fixes Downloading files is now implemented and tested.

commit 4cfaeeb76a3f0e64efaadbdb5f50a74cca8102cb
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Jul 19 16:14:26 2011 -0300

    Wrapped string in t() functions. Implemented get/set for datastreams properties (partially). Fixed a bug with get/set object properties.

commit 16f51d3e0c46a59b08b25f3c31774378216d9323
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Jul 19 16:05:20 2011 -0300

    Added code for getting/setting an objects properties.

commit 7ee0a40c36c7f8129b5491a6ed59299dec362431
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Jul 19 15:50:29 2011 -0300

    Added some code for purgeing objects

commit 0fb9b70a7af8a05e74584131532598a8ea7cf369
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Jul 19 15:42:55 2011 -0300

    Added code for adding datastreams.

commit 7e05cd4fa62762c60167f7d87a96722c16e792fb
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Jul 19 15:37:02 2011 -0300

    Added code for purging datastreams.

commit 45f587e12897efe058a1748d8cf724cc84f25580
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Jul 19 15:32:53 2011 -0300

    Added placeholder files for where the content model\'s will be implemented

commit 966909f934108e23f5df3f6b56b27c5e78848033
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Jul 19 15:32:18 2011 -0300

    Added a class for getting/setting a fedora object datastream  properties.

commit 0d47d68a1b5b330646a4c3ace007521d5070a701
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Jul 19 15:17:32 2011 -0300

    Added a class for getting/setting a fedora objects properties.

commit a021ce13c63db8080079dd49d5358637ae67ca78
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Jul 19 14:29:31 2011 -0300

    Added ExtJS 4.0 lib to the viewer.

commit a881fd4b2e3087a4ae14574bc7b4fbf74ffb5ea4
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Jul 19 14:26:25 2011 -0300

    Specified the required urls and callbacks for the viewer to function.

commit fc35ce19cb358e72243448760ea0b8aa30b3ecb4
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Tue Jul 19 09:30:11 2011 -0300

    Added info and module files.

commit 180fc35950f19b8576a8f0a91e4756effd5732e3
Author: Nigel Banks <nigel.g.banks@gmail.com>
Date:   Mon Jul 18 14:55:00 2011 -0300

    First Commit.
