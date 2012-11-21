{
   "manifest_version": 1,
   "minimum_chrome_version": "17.0.0.0",
   "content_scripts": [ {
      "js": [ "registry.js",
              "convert.js",
              "helper.js",
              "xmlhttprequest.js",
              "content.js" ],
      "matches": [ "file://*", "http://*/*", "https://*/*" ],
      "run_at": "document_start",
      "all_frames": true
   } ],
   "browser_action": {
      "default_icon": "images/icon_grey.png",
      "default_title": "Tampermonkey",
      "default_popup": "action.html"
   },
   "icons": { "32": "images/icon.png",
   	      "48": "images/icon48.png",
       	     "128": "images/icon128.png" },
   "name": "Tampermonkey Legacy",
   "version": "2.5.0",
   "description": "the most popular userscript manager for Google Chrome",
   "update_url": "https://ssl-id.de/tampermonkey.net/crx/tm_legacy.xml",
   "default_locale": "en",
   "background_page": "background.html",
   "options_page": "options.html",
   "permissions": [ "notifications", 
                    "unlimited_storage", 
                    "tabs", 
                    "management", 
                    "webNavigation", 
                    "webRequest", "webRequestBlocking",
                    "<all_urls>" ],
   "optional_permissions" : [ "contentSettings" ]
}
